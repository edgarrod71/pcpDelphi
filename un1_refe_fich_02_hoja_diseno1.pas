{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeación y Control de la Producción                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo está protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducción no autorizada, la ingeniería inversa y la   }
{       distribución total o parcial del código contenido en este   }
{       archivo está estrictamente prohibido y podrá tener severas  }
{       consecuencias civiles y penales.                            }
{                                                                   }
{       RESTRICCIONES                                               }
{                                                                   }
{       ESTE CODIGO Y TODOS LOS ARCHIVOS RELACIONADOS               }
{       (DCU, OBJ, DLL, ETC.) SON CONFIDENCIALES Y SU               }
{       PROPIETARIO ES SOFTCONF LIMITADA.                           }
{                                                                   }
{                                                                   }
{       www.softwaredeconfianza.com                                 }
{       tecnologia@softwaredeconfianza.com                          }
{*******************************************************************
        Unit            : un1_refe_fich_02_hoja_diseno1
        Objetivo        : Ventana de edición de fichas técnicas
                          02 - HOJA DE DISEÑO
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 26-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}

unit un1_refe_fich_02_hoja_diseno1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_refe_fich_maestro1, Db, kbmMemTable, PictureContainer, DBTables,
  Placemnt, AdvPanel, dxExEdtr, dxCntner, SCLPropiedadesForm, DBActns,
  ActnList, ImgList, dxEdLib, dxDBELib, PCPFrame, SCLTabs,
  ufra_sele_refe_variacion, Boxes, PCPProceso, dxEditor, StdCtrls, SoCtrls,
  SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, EDBImage, Menus;

type
  Tfn1_refe_fich_02_hoja_diseno1 = class(Tfn1_refe_fich_maestro1)
    myTabla_AuxiliarCONS_HERR_IMAG_1: TIntegerField;
    myTabla_AuxiliarOBSE_1: TMemoField;
    myTabla_AuxiliarCONS_HERR_IMAG_2: TIntegerField;
    myTabla_AuxiliarOBSE_2: TMemoField;
    pane_frente: TPCPFrame;
    pane_obse_frente: TPCPFrame;
    pane_imag_frente: TPanel;
    imag_frente: TEDBImage;
    Splitter1: TSplitter;
    dxDBMemo2: TdxDBMemo;
    myTabla_AuxiliarIMAG_1: TBlobField;
    myTabla_AuxiliarIMAG_2: TBlobField;
    pane_espalda: TPCPFrame;
    Splitter2: TSplitter;
    pane_obse_espalda: TPCPFrame;
    dxDBMemo1: TdxDBMemo;
    pane_imag_espalda: TPanel;
    imag_espalda: TEDBImage;
    Splitter3: TSplitter;
    quer_Sele_Detalle: TQuery;
    quer_guar_detalle: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure pane_imag_frenteResize(Sender: TObject);
    procedure acti_carg_imagenExecute(Sender: TObject);
    procedure pane_imag_espaldaResize(Sender: TObject);
    procedure acti_post_loadExecute(Sender: TObject);
    procedure imag_frenteDblClick(Sender: TObject);
    procedure imag_espaldaClick(Sender: TObject);
    procedure acti_befo_postExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_fich_02_hoja_diseno1: Tfn1_refe_fich_02_hoja_diseno1;

implementation

uses _cons_pcp, _func_varias, _func_graficas, _func_pcp;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_02_hoja_diseno1.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización visual y de variables
  pane_obse_frente.Caption := cosObservaciones;
  pane_obse_espalda.Caption := cosObservaciones;
  pane_frente.Caption := cosFrente;
  pane_Espalda.Caption := cosEspalda;
  TipoFichaTecnica := ftdHojaDiseno;

  //Abrir consultas
  AbrirDataSet(myTabla_Auxiliar);
end;
{****************************************************************
Procedimiento   : acti_carg_imagenExecute
Objetivo        : Ejecuta la acción de cargar la imágen
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_02_hoja_diseno1.acti_carg_imagenExecute(
  Sender: TObject);
begin
  inherited;
  If (ActiveControl = imag_Frente) Then
  Begin
      LoadImageIntoRecord(myTabla_AuxiliarIMAG_1, 'CONS_HERR_IMAG_1');
      myTabla_AuxiliarOBSE_1.Value := ObservacionesImagenCatalogo(myTabla_Auxiliar.FieldByName('cons_herr_imag_1').asInteger);
  End
  Else
  If (ActiveControl = imag_Espalda) Then
  Begin
      LoadImageIntoRecord(myTabla_AuxiliarIMAG_2, 'CONS_HERR_IMAG_2');
      myTabla_AuxiliarOBSE_2.Value := ObservacionesImagenCatalogo(myTabla_Auxiliar.FieldByName('cons_herr_imag_2').asInteger);
  End;
end;
{****************************************************************
Procedimiento   : pane_imag_frenteResize
Objetivo        : Centrar la imágen del frente cuando cambie
                  el tamaño del contenedor
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_02_hoja_diseno1.pane_imag_frenteResize(
  Sender: TObject);
begin
  Inherited;
  //Cambiar el tamaño de la imágen del frente
  setImageSize(imag_Frente);
  CentrarControl(imag_frente);
end;

{****************************************************************
Procedimiento   : pane_imag_espaldaResize
Objetivo        : Centrar la imágen de la espalda cuando cambie
                  el tamaño del contenedor
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_02_hoja_diseno1.pane_imag_espaldaResize(
  Sender: TObject);
begin
  inherited;
  setImageSize(imag_espalda);
  CentrarControl(imag_espalda);
end;
{****************************************************************
Procedimiento   : acti_post_loadExecute
Objetivo        : Abrir los datos específicos de la ficha
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_02_hoja_diseno1.acti_post_loadExecute(
  Sender: TObject);
begin
  inherited;
  //Cargar la imágen del detalle (si está en edición)
  If (myTabla_Ventana.FieldByName('cons_refe_ficha').asInteger > 0) Then
  Begin
      With quer_sele_detalle do
      Begin
          Close;
          ParamByName('cons_refe_ficha').Value := myTabla_Ventana.FieldByName('cons_refe_ficha').asInteger;
          Open;
          myTabla_auxiliar.LoadFromDataSet(quer_Sele_Detalle, [mtcpoAppend]);
          //Si hay registros, llamar la imágen
          if (myTabla_Auxiliar.RecordCount > 0) Then
          Begin
              if not (myTabla_Auxiliar.State in [dsInsert, dsEdit]) Then
                 myTabla_Auxiliar.Edit;
              //Llamar la imágen del frente
              UltimaImagen := myTabla_Auxiliar.FieldByName('cons_herr_imag_1').asInteger;
              LoadImageIntoRecord(myTabla_AuxiliarIMAG_1, 'cons_herr_imag_1');
              //Llamar la imágen de la espalda
              UltimaImagen := myTabla_Auxiliar.FieldByName('cons_herr_imag_2').asInteger;
              LoadImageIntoRecord(myTabla_AuxiliarIMAG_2, 'cons_herr_imag_2');
              //Limpiar la imágen
              UltimaImagen := -1;
              CheckAndPostDataSet(myTabla_Ventana);
          End;
          Close;
      End;
  End;

end;

procedure Tfn1_refe_fich_02_hoja_diseno1.imag_frenteDblClick(
  Sender: TObject);
begin
  inherited;
  if Assigned(acti_carg_imagen.OnExecute) Then
       acti_carg_imagen.Execute;
end;

procedure Tfn1_refe_fich_02_hoja_diseno1.imag_espaldaClick(
  Sender: TObject);
begin
  inherited;
  if Assigned(acti_carg_imagen.OnExecute) Then
       acti_carg_imagen.Execute;
end;
{****************************************************************
Procedimiento   : acti_befo_postExecute
Objetivo        : Guardar los datos específicos de la ficha técnica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_02_hoja_diseno1.acti_befo_postExecute(
  Sender: TObject);
begin
  inherited;
  if Loading Then Exit;
  //Guardar el detalle
  CheckAndPostDataSet(myTabla_Auxiliar);
  //Guardar la tabla en la BD
  Try
        if (myTabla_Auxiliar.RecordCount > 0) Then
           quer_guar_detalle.ExecSQL;
  Except
     on E:Exception do
     Begin
       EjecutarMensajeError(e.Message);
       Raise;
     End;
  End;

end;

end.

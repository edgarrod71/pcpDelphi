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
        Unit            : un1_refe_fich_edic_02_hoja_diseno
        Objetivo        : Ventana de edición de fichas técnicas
                          02 - HOJA DE DISEÑO
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 02-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit un1_refe_fich_edic_02_hoja_diseno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_refe_fich_00Edicion, Db, DBTables, dxCntner, dxEditor, dxEdLib,
  dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, Boxes, PCPFrame,
  EDBImage, dxExEdtr, ufra_fotografiaDB, ActnList, kbmMemTable, SCLShape,
  ufra_mens_atencion;

type
  Tfn1_refe_fich_edic_02_hoja_diseno = class(Tfn1_refe_fich_00Edicion)
    pane_frente: TPCPFrame;
    pane_imag_frente: TPanel;
    pane_espalda: TPCPFrame;
    pane_imag_espalda: TPanel;
    imag_frente: Tffra_fotografiaDB;
    imag_espalda: Tffra_fotografiaDB;
    padr_tabl_fich_DetallesOBSE_1: TMemoField;
    padr_tabl_fich_DetallesOBSE_2: TMemoField;
    padr_tabl_fich_DetallesIMAG_1: TBlobField;
    padr_tabl_fich_DetallesIMAG_1_SMALL: TBlobField;
    padr_tabl_fich_DetallesIMAG_2: TBlobField;
    padr_tabl_fich_DetallesIMAG_2_SMALL: TBlobField;
    SCLShape1: TSCLShape;
    pane_obse_frente: TPCPFrame;
    edit_frente: TdxDBMemo;
    pane_obse_espalda: TPCPFrame;
    edit_espalda: TdxDBMemo;
    SCLShape2: TSCLShape;
    labe_obse_frente: TLabel;
    labe_obse_espalda: TLabel;
    quer_Sele_Detalle: TQuery;
    quer_guar_detalle: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure pane_imag_frenteResize(Sender: TObject);
    procedure pane_imag_espaldaResize(Sender: TObject);
    procedure padr_acti_AfterPostExecute(Sender: TObject);
    procedure padr_acti_AfterEjecutarExecute(Sender: TObject);
    procedure padr_tabl_fich_DetallesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_fich_edic_02_hoja_diseno: Tfn1_refe_fich_edic_02_hoja_diseno;

implementation

uses _cons_pcp, _func_varias, un1_refe_fich_funciones, _func_pcp,
  _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_02_hoja_diseno.FormCreate(Sender: TObject);
begin
  inherited;
  TipoFicha := ftdHojaDiseno;
  //Inicialización visual y de variables
  pane_obse_frente.Caption := cosObservaciones;
  pane_obse_espalda.Caption := cosObservaciones;
  pane_frente.Caption := cosFrente;
  pane_Espalda.Caption := cosEspalda;
  labe_obse_frente.Caption := cosObservaciones;
  labe_obse_espalda.Caption := cosObservaciones;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : pane_imag_frenteResize
Objetivo        : Dar el tamaño y centrar la imágen del frente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_02_hoja_diseno.pane_imag_frenteResize(
  Sender: TObject);
begin
  inherited;
  //Cambiar el tamaño de la imágen del frente
  setTamanoImagen(imag_Frente, TipoFicha);
  CentrarControl(imag_frente);
  //edit_Frente.Width := imag_frente.Width;
  //edit_Frente.Left := imag_frente.Left;
  //labe_obse_frente.Left := imag_frente.Left;
end;
{****************************************************************
Procedimiento   : pane_imag_espaldaResize
Objetivo        : Dar el tamaño y centrar la imágen de la espalda
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_02_hoja_diseno.pane_imag_espaldaResize(
  Sender: TObject);
begin
  setTamanoImagen(imag_espalda, TipoFicha);
  CentrarControl(imag_espalda);
  //edit_espalda.Width := imag_espalda.Width;
  //edit_espalda.Left := imag_espalda.Left;
  //labe_obse_espalda.Left := imag_espalda.Left;
end;
{****************************************************************
Procedimiento   : padr_acti_AfterPostExecute
Objetivo        : Guardar el detalle de la ficha técnica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_02_hoja_diseno.padr_acti_AfterPostExecute(
  Sender: TObject);
begin
  inherited;
  //Guardar el registro del detalle
  if Loading Then Exit;
  //Guardar el detalle
  CheckAndPostDataSet(padr_tabl_fich_Detalles);
  //Guardar la tabla en la BD
  Try
        if (padr_tabl_fich_Detalles.RecordCount > 0) Then
           quer_guar_detalle.ExecSQL;
  Except
     on E:Exception do
     Begin
       EjecutarMensajeError(e.Message);
       Raise;
     End;
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_AfterEjecutarExecute
Objetivo        : Abrir el detalle de la ficha técnica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_02_hoja_diseno.padr_acti_AfterEjecutarExecute(
  Sender: TObject);
begin
  inherited;
  //Cargar las imágenes del detalle (si hay consecutivo de la ficha)
  if (padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger > 0) Then
  Begin
      With quer_sele_detalle do
      Begin
          Close;
          ParamByName('cons_Refe_ficha').Value := padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger;
          Open;
          padr_tabl_fich_Detalles.LoadFromDataSet(quer_Sele_Detalle, [mtcpoAppend]);
          //Si hay registros, llamar la imágen
          CheckAndPostDataSet(padr_tabl_fich_tecnicas);
          Close;
      End;
  End;
end;
{****************************************************************
Procedimiento   : padr_tabl_fich_DetallesBeforePost
Objetivo        : Preparar el registro de detalle para guardarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_02_hoja_diseno.padr_tabl_fich_DetallesBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Crear las imágenes SMALL
  EDBImageToBlobField(imag_frente.fram_fotografia, padr_tabl_fich_DetallesIMAG_1_SMALL, coiTamanoVistasPrevias, coiTamanoVistasPrevias);
  EDBImageToBlobField(imag_espalda.fram_fotografia, padr_tabl_fich_DetallesIMAG_2_SMALL, coiTamanoVistasPrevias, coiTamanoVistasPrevias);
end;
end.

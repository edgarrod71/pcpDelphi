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
        Unit            : un1_refe_cata_imagenes1
        Objetivo        : Ventana para la edición de imágenes
                          del catálogo del usuario
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 19-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}

unit un1_refe_cata_imagenes1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit,
  SCLTabs, ufra_fotografiaDB, PCPFrame, kbmMemTable;

type
  Tfn1_refe_cata_imagenes1 = class(T_fvent_modal)
    Tabla_VentanaCONS_HERR_IMAGEN: TIntegerField;
    Tabla_VentanaCONS_HERR_IMAG_CATEGORIA: TIntegerField;
    Tabla_VentanaCONS_HERR_IMAG_VISTA: TIntegerField;
    Tabla_VentanaNOMB_HERR_IMAGEN: TStringField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    Tabla_VentanaCONS_REFE_ESTILO: TIntegerField;
    Tabla_VentanaCONS_REFE_MARCA: TIntegerField;
    Tabla_VentanaCONS_REFE_TEMPORADA: TIntegerField;
    Tabla_VentanaOBSERVACIONES: TMemoField;
    Tabla_VentanaPALA_CLAVES: TStringField;
    page: TSCLPageControl;
    page_foto: TSCLTabSheet;
    page_otros: TSCLTabSheet;
    pane_fotografia: TPanel;
    fram_fotografia: Tffra_fotografiaDB;
    Panel2: TPanel;
    dxDBEdit1: TdxDBEdit;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    pane_referencias: TPCPFrame;
    SCLDBLabel5: TSCLDBLabel;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    SCLDBLabel6: TSCLDBLabel;
    PCPLookUpComboEdit3: TPCPLookUpComboEdit;
    SCLDBLabel7: TSCLDBLabel;
    PCPLookUpComboEdit4: TPCPLookUpComboEdit;
    PCPFrame1: TPCPFrame;
    dxDBMemo1: TdxDBMemo;
    PCPFrame2: TPCPFrame;
    dxDBMemo2: TdxDBMemo;
    quer_vistas: TQuery;
    data_Vistas: TDataSource;
    quer_refe_marcas: TQuery;
    data_Refe_marcas: TDataSource;
    quer_refe_estilos: TQuery;
    data_refe_estilo: TDataSource;
    quer_Refe_temporadas: TQuery;
    data_refe_temporadas: TDataSource;
    PCPFrame3: TPCPFrame;
    myTabla_Ventana: TkbmMemTable;
    myTabla_VentanaCONS_HERR_IMAGEN: TIntegerField;
    myTabla_VentanaCONS_HERR_IMAG_CATEGORIA: TIntegerField;
    myTabla_VentanaCONS_HERR_IMAG_VISTA: TIntegerField;
    myTabla_VentanaNOMB_HERR_IMAGEN: TStringField;
    myTabla_VentanaIMAGEN: TBlobField;
    myTabla_VentanaAJUS_IMAGEN: TIntegerField;
    myTabla_VentanaCONS_REFE_ESTILO: TIntegerField;
    myTabla_VentanaCONS_REFE_MARCA: TIntegerField;
    myTabla_VentanaCONS_REFE_TEMPORADA: TIntegerField;
    myTabla_VentanaOBSERVACIONES: TMemoField;
    myTabla_VentanaPALA_CLAVES: TStringField;
    quer_Select: TQuery;
    quer_inse_update: TQuery;
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure pane_fotografiaResize(Sender: TObject);
    procedure myTabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure myTabla_VentanaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    var_Cons_imagen     : Integer;
    var_Resultado       : Boolean;
    var_Cons_Categoria  : Integer;
    var_cons_Catalogo   : Integer;
    var_Alto : Integer;
    var_Ancho : Integer;
    var_LoadingForEdit  : Boolean;
    Procedure doResize;
  public
    { Public declarations }

    Function Ejecutar(peCons_imagen, peCons_catalogo, peCons_Categoria : Integer; peCategoria : String; peDataSet : TDataSet;
        peAncho, peAlto : Integer) : Boolean;
  end;

var
  fn1_refe_cata_imagenes1: Tfn1_refe_cata_imagenes1;

implementation

uses _cons_pcp, _func_pcp, _func_varias, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Función general de ejecución de la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function Tfn1_refe_cata_imagenes1.Ejecutar(peCons_imagen, peCons_catalogo, peCons_Categoria : Integer; peCategoria : String; peDataSet : TDataSet;
        peAncho, peAlto : Integer) : Boolean;
Begin
    Result := False;
    //Validar
    if (peDataSet = Nil) or (Not peDataSet.Active) Then
    Begin
        Close;
        Exit;
    End;
    //Cancelar la edición del enviante
    if (peDataSet.State in [DsInsert, dsEdit]) Then
       peDataSet.Cancel;
    //Guardar el consecutivo de la imagen (Consecutivo = 0 -> inserción)
    var_Cons_Imagen := peCons_imagen;
    var_Cons_Categoria := peCons_Categoria;
    var_cons_Catalogo   := peCons_Catalogo;
    //Caption
    If (var_Cons_Imagen = 0) Then
    Begin
       Caption := Format(cosAccionCatalogoDeImagenes, [Format(cosAdicionando, ['']), peCategoria]);
       Data_Ventana.DataSet.Insert;
    End
    Else
    Begin
       Caption := Format(cosAccionCatalogoDeImagenes, [cosEditando, peCategoria]);
       //Ubicar el registro
       With quer_select do
       Begin
            Close;
            ParamByName('cons_herr_imagen').Value := IntToStr(peCons_Imagen);
            var_LoadingForEdit := True;
            myTabla_Ventana.LoadFromDataSet(quer_Select, [mtcpoAppend]);
            var_LoadingForEdit := False;
            Close;
       End;
       Data_Ventana.DataSet.Edit;
    End;
    //Asignar el DS
    var_Resultado := False;
    //Si está insertando, valores predeterminados de la referencia
    if (var_Cons_Imagen = 0) Then
    Begin
        Data_Ventana.DataSet.FieldByName('cons_refe_estilo').Value := 0;
        Data_Ventana.DataSet.FieldByName('cons_refe_marca').Value := 0;
        Data_Ventana.DataSet.FieldByName('cons_refe_temporada').Value := 0;
    End;
    //Ancho y Alto
    var_Ancho := peAncho;
    var_Alto := peAlto;
    //Tipo de catálogo
    pane_referencias.Visible := (peCons_Catalogo = ciReferencias);

    Case peCons_Catalogo of
        ciReferencias : Begin
            AbrirDataSet(quer_refe_estilos);
            AbrirDataSet(quer_refe_marcas);
            AbrirDataSet(quer_refe_temporadas);
        End;
    End;
    doResize;
    //Mostrar ventana
    ShowModal;
    Result := var_Resultado;
End;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Ejecutar la acción CANCELAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes1.padr_acti_cancelarExecute(
  Sender: TObject);
begin
  //inherited;
  if (Confirmar(cosDeseaCancelar) = mrYes) Then
  Begin
      //Deshabilitar el cambio de registro
      data_Ventana.Enabled := False;
      //Cerrar
      data_Ventana.DataSet.Cancel;
      var_Resultado := False;
      Close;
  End;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes1.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializacion visual
  var_Ancho := 0;
  var_Alto := 0;
  var_LoadingForEdit := False;
  //Abrir consultas
  AbrirDataSet(quer_vistas);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Ejecutar la acción ACEPTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes1.padr_acti_aceptarExecute(
  Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(data_Ventana.DataSet);
  var_Resultado := True;
  Close;
end;

{****************************************************************
Procedimiento   : doResize
Objetivo        : Da el tamaño al contenedor de la imágen
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure Tfn1_refe_cata_imagenes1.doResize;
var
        var_abajo       : Integer;
Begin
        //Validar
        if (var_Ancho = 0) or (var_Alto = 0) Then Exit;
        //parte inferior del frame que afecta el alto
        var_abajo := fram_fotografia.fram_pane_stretch.Height;
        Try
            //Comparar el alto y el ancho
            if (var_Ancho > var_Alto) then
            Begin
                fram_fotografia.Width := pane_fotografia.Width - var_abajo - pane_fotografia.BorderWidth;
                fram_fotografia.Height := Trunc((fram_fotografia.Width) * (var_ancho / var_alto));
            End
            Else
            Begin
                fram_fotografia.Height := pane_fotografia.Height - pane_fotografia.BorderWidth;
                fram_fotografia.Width := Trunc((fram_fotografia.Height - var_abajo) * (var_ancho / var_alto));
            End;
            //Centrarlo
            fram_fotografia.Left := pane_Fotografia.BorderWidth + ((pane_fotografia.Width div 2) - (fram_fotografia.Width div 2));
            fram_fotografia.Top := pane_Fotografia.BorderWidth + ((pane_fotografia.Height div 2) - (fram_fotografia.Height div 2));
            //Validar el centrado
            if fram_fotografia.Top < 0 then fram_fotografia.Top := 15;
            if fram_fotografia.Left < 0 then fram_fotografia.Left := 15;
        Finally
        End;
End;

{****************************************************************
Procedimiento   : pane_fotografiaResize
Objetivo        : Ajustar la imágen al cambiar el tamaño del panel
                  que la contiene
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes1.pane_fotografiaResize(Sender: TObject);
begin
  inherited;
  doResize;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterInsert
Objetivo        : Inicializar el registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes1.myTabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With myTabla_ventana do
  Begin
      //Valores predeterminados
      FieldByName('AJUS_IMAGEN').Value := 1;
      FieldByName('CONS_HERR_IMAG_CATEGORIA').Value := var_Cons_Categoria;
  End;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaBeforePost
Objetivo        : Generar el registro en la base de datos real
                  descargando desde la temporal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_cata_imagenes1.myTabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Insertar o actualizar (cuando no se está cargando del DataSet consulta)        
  if not var_LoadingForEdit Then
  Begin
      ValidarDatosDataSet(myTabla_ventana);
      quer_inse_update.ExecSQL;
  End;
end;

end.


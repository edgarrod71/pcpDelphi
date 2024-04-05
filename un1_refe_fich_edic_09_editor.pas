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
        Unit            : un1_refe_fich_edic_09_editor
        Objetivo        : Ventana de edición de los detalles
                          de una ficha técnica
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 03-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit un1_refe_fich_edic_09_editor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, kbmMemTable, ExtCtrls, ufra_fotografiaDB, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, Boxes, PCPFrame, ufra_mens_atencion,
  DBTables, StdCtrls, JvExControls, JvComponent, JvImageSquare;

type
  Tfn1_refe_fich_edic_09_editor = class(TForm)
    tabl_ventana: TkbmMemTable;
    data_Ventana: TDataSource;
    pane_superior: TPCPFrame;
    pane_titulo: Tffra_mens_atencion;
    pane_cont_imagen: TPanel;
    pane_imagen: Tffra_fotografiaDB;
    quer_sele_ficha: TQuery;
    shap_1: TShape;
    labe_prep_eliminar: TLabel;
    imag_prep_eliminar: TJvImageSquare;
    quer_guar_ficha: TQuery;
    quer_elim_ficha: TQuery;
    tabl_ventanaCONS_REFE_FICH_DETALLE: TIntegerField;
    tabl_ventanaCONS_REFE_FICHA: TIntegerField;
    tabl_ventanaIMAG_1: TBlobField;
    tabl_ventanaIMAG_1_SMALL: TBlobField;
    pane_nombre: TPanel;
    Label1: TLabel;
    edit_nombre: TdxDBEdit;
    pane_eliminar: TPanel;
    chec_eliminar: TdxCheckEdit;
    tabl_ventanaNOMB_IMAGEN: TStringField;
    procedure tabl_ventanaBeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure pane_cont_imagenResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure chec_eliminarChange(Sender: TObject);
    procedure data_VentanaStateChange(Sender: TObject);
    procedure tabl_ventanaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    var_Seleccionada    : Boolean;
    var_MasterDataSet   : TDataSet;
    var_Loading : Boolean;
    var_Saving : Boolean;
  public
        Procedure SetTitulo (peTitulo : String);
        Procedure Ejecutar(peCons_Refe_Fich_Detalle, peCons_Refe_Ficha : Integer);
        Property Seleccionada : Boolean Read var_Seleccionada Write var_Seleccionada;
        Property MasterDataSet : TDataSet Read var_MasterDataSet Write var_MasterDataSet;
        Procedure Guardar;
  end;
var
  fn1_refe_fich_edic_09_editor: Tfn1_refe_fich_edic_09_editor;

implementation

uses un1_refe_fich_funciones, _func_varias, _cons_pcp, _cons_colores, _MDI,
  _func_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_09_editor.FormCreate(Sender: TObject);
begin
        //Inicialización visual y de variables
        pane_Titulo.SetHardColors(False);
        AutoHints(Self);
        var_Seleccionada := False;
        var_MasterDataSet := Nil;
        var_loading := False;
        var_Saving := False;
        Shap_1.Brush.Color := clLineaGradiente;
        //Abrir las consultas
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : tabl_ventanaBeforeInsert
Objetivo        : Permitir un solo registro en la tabla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_09_editor.tabl_ventanaBeforeInsert(
  DataSet: TDataSet);
begin
        if tabl_ventana.RecordCount >= 1 Then Abort;
end;

{****************************************************************
Procedimiento   : pane_cont_imagenResize
Objetivo        : Cambiar el tamaño de la imágen al modificar
                  el tamaño del panel que la contiene
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_09_editor.pane_cont_imagenResize(
  Sender: TObject);
begin
  setTamanoImagen(pane_imagen, ftdEspecificacionesConstruccion);
  CentrarControl(pane_imagen);
end;
{****************************************************************
Procedimiento   : FormClose
Objetivo        : Liberar la ventana al cerrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_09_editor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Release;
end;
{****************************************************************
Procedimiento   : SetTitulo
Objetivo        : Asigna el título a la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Tfn1_refe_fich_edic_09_editor.SetTitulo (peTitulo : String);
Begin
    pane_Titulo.SetCaption(peTitulo);
End;
{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Cambiar el color del título al activar el form
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_09_editor.FormActivate(Sender: TObject);
begin
        pane_titulo.SetWarningColors(False);
        var_Seleccionada := True;
end;
{****************************************************************
Procedimiento   : FormDeactivate
Objetivo        : Cambiar el color del título al desactivar el form
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_09_editor.FormDeactivate(Sender: TObject);
begin
        pane_titulo.SetHardColors(False);
        var_Seleccionada := False;
end;
{****************************************************************
Procedimiento   : doEjecutar
Objetivo        : Ejecuta la ventana con los consecutivos correspondientes
                  Casos de peCons_Refe_Fich_Detalle
                         0 -> nuevo
                        >0 -> modificación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Tfn1_refe_fich_edic_09_editor.Ejecutar(peCons_Refe_Fich_Detalle, peCons_Refe_Ficha : Integer);
Begin
     var_Loading := True;
     With tabl_ventana do
     Begin
           //Re-Abrir la tabla temporal
           if Active Then Close;
           AbrirDataSet(tabl_ventana);
           //Consecutivo = 0 -> registro nuevo
           if peCons_refe_fich_Detalle = 0 Then
           Begin
               Insert;
               FieldByName('cons_refe_fich_Detalle').Value := 0;
               FieldByName('cons_Refe_ficha').Value := peCons_Refe_ficha;
           End
           //Consecutivo > 0 -> existe, consultarlo en la base de datos
           Else
           if peCons_Refe_fich_Detalle > 0 Then
           Begin
                quer_sele_Ficha.Close;
                quer_sele_Ficha.ParamByName('cons_Refe_fich_detalle').Value := peCons_refe_Fich_detalle;
                quer_sele_Ficha.Open;
                LoadFromDataSet(quer_sele_ficha, [mtcpoAppend]);
           End;
           //Verificar que quede guardado
           CheckAndPostDataSet(tabl_Ventana);
     End;
     var_Loading := False;
End;
{****************************************************************
Procedimiento   : chec_eliminarChange
Objetivo        : Marca el registro para eliminarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_09_editor.chec_eliminarChange(
  Sender: TObject);
begin
        //Cambiar el estado y color de los controles
        pane_imagen.Visible := Not Chec_Eliminar.Checked;
        pane_nombre.Visible := Not Chec_Eliminar.Checked;
        shap_1.Visible := Chec_Eliminar.Checked;
        labe_prep_eliminar.Visible := chec_eliminar.Checked;
        imag_prep_eliminar.Visible := chec_eliminar.Checked;
        CheckAndEditDataSet(tabl_Ventana);
end;
{****************************************************************
Procedimiento   : data_VentanaStateChange
Objetivo        : Cambiar el estado de la tabla maestra
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_09_editor.data_VentanaStateChange(
  Sender: TObject);
begin
     //Validar
     if var_Loading Then Exit;
     if var_Saving Then Exit;
     if var_MasterDataSet = Nil Then Exit;
     //Cambiar el estado de la tabla maestra
     if (tabl_Ventana.State in [dsInsert, dsEdit]) Then
        CheckAndEditDataSet(var_MasterDataSet);
end;
{****************************************************************
Procedimiento   : Guardar
Objetivo        : Guardar los datos en la BD
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Tfn1_refe_fich_edic_09_editor.Guardar;
Begin
    var_Saving := True;
    //Verificar el consecutivo
    if (var_MasterDataSet = Nil) Then
       Raise Exception.Create(Format(cosErrorFuenteDatosNoValida, [tabl_Ventana.Name]));
    CheckAndEditDataSet(tabl_ventana);
    tabl_Ventana.FieldByName('cons_Refe_ficha').Value := var_MasterDataSet.FieldByName('cons_Refe_ficha').asInteger;
    if (tabl_Ventana.FieldByName('cons_refe_fich_detalle').asInteger = 0) Then
        //Generar el consecutivo
        tabl_Ventana.FieldByName('cons_Refe_fich_Detalle').Value := GenerarSecuencia('PCP_REFE_FICH_09_ESPE_PRES', 'CONS_REFE_FICH_DETALLE');
    //Registro del padre
    //Verificar el estado de la tabla
    CheckAndPostDataSet(tabl_Ventana);
    //Ejecutar el SP
    If chec_Eliminar.Checked Then
        quer_elim_ficha.ExecSQL
    Else
        quer_guar_ficha.ExecSQL;
    var_Saving := False;
End;
{****************************************************************
Procedimiento   : tabl_ventanaBeforePost
Objetivo        : Crear la imágen pequeña
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_09_editor.tabl_ventanaBeforePost(
  DataSet: TDataSet);
begin
  //Crear las imágenes SMALL
  EDBImageToBlobField(pane_imagen.fram_fotografia, tabl_ventanaIMAG_1_SMALL , coiTamanoVistasPrevias, coiTamanoVistasPrevias);
end;

end.


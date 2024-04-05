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
        Unit            : un1_form_pago_diferencial1
        Objetivo        : Parametrización de la forma de pago
                          diferencial (detalle)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 05 de 2005
        Versión         : pcp4.0.0.14
*******************************************************************}
unit un1_form_pago_diferencial1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPFrame, dxTL, dxDBCtrl, dxDBGrid, SCLDBGrid,
  dxDBTLCl, dxGrClms, Menus, dfsSplitter, PCPProceso, TeEngine,
  TeeProcs, Chart, Series, DBChart;

type
  Tfn1_form_pago_diferencial1 = class(T_fvent_modal)
    Tabla_VentanaCONS_FORM_PAGO_DIFERENCIAL: TIntegerField;
    Tabla_VentanaCODI_FORM_PAGO_DIFERENCIAL: TStringField;
    Tabla_VentanaNOMB_FORM_PAGO_DIFERENCIAL: TStringField;
    Tabla_VentanaESTA_ACTIVO: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Panel1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBMemo1: TdxDBEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    pane_Detalle: TPCPFrame;
    quer_detalle: TQuery;
    data_detalle: TDataSource;
    quer_detalleRANG_INICIAL: TFloatField;
    quer_detalleRANG_FINAL: TFloatField;
    quer_detalleVALO_HORA_PRODUCCION: TFloatField;
    quer_detalleFECH_SISTEMA: TDateTimeField;
    quer_detalleUSUA_SISTEMA: TStringField;
    quer_detalleCONS_FORM_PAGO_DIFERENCIAL: TIntegerField;
    TBXDock1: TTBXDock;
    menu_detalle: TTBXToolbar;
    acti_ventana: TActionList;
    acti_rang_nuevo: TAction;
    acti_rang_modificar: TAction;
    acti_rang_eliminar: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    pop_detalle: TTBXPopupMenu;
    quer_eliminar: TQuery;
    PCPFrame1: TPCPFrame;
    Grid: TSCLDBGrid;
    GridCONS_FORM_PAGO_DIFERENCIAL: TdxDBGridMaskColumn;
    GridRANG_INICIAL: TdxDBGridMaskColumn;
    GridRANG_FINAL: TdxDBGridMaskColumn;
    GridVALO_HORA_PRODUCCION: TdxDBGridMaskColumn;
    GridFECH_SISTEMA: TdxDBGridDateColumn;
    GridUSUA_SISTEMA: TdxDBGridMaskColumn;
    PCPFrame2: TPCPFrame;
    dfsSplitter1: TdfsSplitter;
    dbch: TDBChart;
    Series1: TFastLineSeries;
    procedure data_ventanaStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acti_rang_nuevoExecute(Sender: TObject);
    procedure acti_rang_modificarExecute(Sender: TObject);
    procedure acti_rang_modificarUpdate(Sender: TObject);
    procedure acti_rang_eliminarExecute(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure acti_rang_eliminarUpdate(Sender: TObject);
    procedure Tabla_VentanaAfterPost(DataSet: TDataSet);
    procedure quer_detalleAfterOpen(DataSet: TDataSet);
    procedure dxDBEdit1Change(Sender: TObject);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    var_curr_cons       : Integer;
  public
    { Public declarations }
  end;

var
  fn1_form_pago_diferencial1: Tfn1_form_pago_diferencial1;

implementation

uses _MDI, _func_varias, un1_form_pago_diferencial2, _cons_pcp,
  _cons_colores, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles al cambiar el estado
                  de la tabla principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial1.data_ventanaStateChange(
  Sender: TObject);
begin
  inherited;
  pane_detalle.Visible := (tabla_ventana.Active) and (tabla_Ventana.State <> dsInsert);
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial1.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar las variables
  var_curr_cons := -1;
  //Abrir las consultas adicionales
  AbrirDataSet(quer_detalle);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : acti_rang_nuevoExecute
Objetivo        : Crear un nuevo rango
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial1.acti_rang_nuevoExecute(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfn1_form_pago_diferencial2, fn1_form_pago_diferencial2);
  fn1_form_pago_diferencial2.doEjecutarVentana(
    quer_Detalle,
    Tabla_ventana.FieldByName('cons_form_pago_diferencial').asInteger,
    Tabla_Ventana.FieldByName('codi_form_pago_diferencial').asString,
    taInsert);
  RefreshDataSet(quer_Detalle);
//  dbch.SeriesList.Series[0].RefreshSeries;
end;
{****************************************************************
Procedimiento   : acti_rang_modificarExecute
Objetivo        : Modificar el registro seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial1.acti_rang_modificarExecute(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfn1_form_pago_diferencial2, fn1_form_pago_diferencial2);
  fn1_form_pago_diferencial2.doEjecutarVentana(
    quer_Detalle,
    Tabla_ventana.FieldByName('CONS_FORM_PAGO_DIFERENCIAL').asInteger,
    Tabla_Ventana.FieldByName('CODI_FORM_PAGO_DIFERENCIAL').asString,
    taEdit,
    quer_detalle.FieldByName('rang_inicial').asFloat,
    quer_detalle.FieldByName('rang_final').asFloat,
    quer_detalle.FieldByName('VALO_HORA_PRODUCCION').asFloat);
  RefreshDataSet(quer_Detalle);
//  dbch.SeriesList.Series[0].RefreshSeries;
end;
{****************************************************************
Procedimiento   : acti_rang_modificarUpdate
Objetivo        : Actualizar la acción de modificación cuando
                  se requiera
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial1.acti_rang_modificarUpdate(
  Sender: TObject);
begin
  inherited;
  acti_rang_modificar.Enabled := (quer_detalle.Active) and (quer_detalle.RecordCount > 0);
end;
{****************************************************************
Procedimiento   : acti_rang_eliminarExecute
Objetivo        : Eliminar el rango seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial1.acti_rang_eliminarExecute(
  Sender: TObject);
begin
  inherited;
  If (Confirmar(cosDeseaEliminar) = mrYes) Then
  Begin
       quer_eliminar.ExecSQL;
       RefreshDataSet(quer_detalle);
//       dbch.SeriesList.Series[0].RefreshSeries;
  End;
end;
{****************************************************************
Procedimiento   : GridDblClick
Objetivo        : Controlar el DBLClick sobre la tabla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial1.GridDblClick(Sender: TObject);
begin
  inherited;
  if acti_rang_modificar.Enabled then acti_rang_modificar.Execute
  else
  if acti_rang_nuevo.Enabled Then acti_rang_nuevo.Execute;
end;
{****************************************************************
Procedimiento   : acti_rang_eliminarUpdate
Objetivo        : Actualizar la acción de eliminación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial1.acti_rang_eliminarUpdate(
  Sender: TObject);
begin
  inherited;
  acti_rang_eliminar.Enabled := (quer_detalle.Active) and (quer_detalle.RecordCount > 0);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterPost
Objetivo        : Actualizar la consulta de detalle
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_diferencial1.Tabla_VentanaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  RefreshDataSet(quer_Detalle);
end;
{****************************************************************
Procedimiento   : quer_detalleAfterOpen
Objetivo        : Actualizar la gráfica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_diferencial1.quer_detalleAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  dbch.SeriesList[0].RefreshSeries;
end;

procedure Tfn1_form_pago_diferencial1.dxDBEdit1Change(Sender: TObject);
begin
  inherited;
  dbch.Update;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterScroll
Objetivo        : Actualizar la gráfica cuando cambie el registro
                  activo en el maestro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_form_pago_diferencial1.Tabla_VentanaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  //Verificar si se puede actualizar
  if Not tabla_ventana.Active Then Exit;
  if (tabla_ventana.State = dsInsert) Then Exit;
  //Verificar si se requiere actualizar
  if (var_curr_cons <> tabla_Ventana.FieldByName('cons_form_pago_diferencial').asInteger) then
  Begin
        //Actualizar la gráfica
        RefreshDataSet(quer_Detalle);
        //Hacer la var igual al actual para que no se ejecute cada sec
        var_curr_cons := tabla_Ventana.FieldByName('cons_form_pago_diferencial').asInteger;
  End;
end;

end.

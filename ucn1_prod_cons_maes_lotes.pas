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
        Unit            : ucn1_prod_cons_maes_lotes
        Objetivo        : Maestro general de lotesde producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 11 de 2004
        Versión         : pcp4006
*******************************************************************}
unit ucn1_prod_cons_maes_lotes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, dxDBTLCl, dxGrClms, ufra_historialDB, Boxes,
  PCPFrame, StdCtrls, SohoBtns, SCLButton, dxEditor, dxEdLib, dxDBELib,
  RxLookup, PCPLookUpComboEdit, SoCtrls, SCLDBLabel, TBXButtonSCL,
  ufra_edit_reportes;

type
  Tfcn1_prod_cons_maes_lotes = class(T_fvent_child)
    consultaCONS_PROD_ORDEN: TIntegerField;
    consultaNUME_PROD_ORDEN: TStringField;
    consultaCONS_PROD_LOTE: TIntegerField;
    consultaNUME_LOTE: TIntegerField;
    consultaANULADA: TIntegerField;
    consultaFECH_CREACION: TDateTimeField;
    consultaUSUA_CREACION: TStringField;
    consultaCONS_REFERENCIA: TIntegerField;
    consultaCODI_REFERENCIA: TStringField;
    consultaNOMB_REFERENCIA: TStringField;
    consultaCODI_INTE_REFERENCIA: TStringField;
    consultaUNIDADES: TIntegerField;
    consultaNOMB_PROC_FINALIZADO: TStringField;
    consultaNOMB_PROC_ACTUAL: TStringField;
    consultaFECH_FINA_PROC_FINALIZADO: TDateTimeField;
    consultaFECH_ESTI_PROC_FINALIZADO: TDateTimeField;
    consultaFECH_ESTI_FINALIZACION: TDateTimeField;
    consultaDIFE_DIAS: TIntegerField;
    padr_gridCONS_PROD_ORDEN: TdxDBGridMaskColumn;
    padr_gridNUME_PROD_ORDEN: TdxDBGridMaskColumn;
    padr_gridCONS_PROD_LOTE: TdxDBGridMaskColumn;
    padr_gridNUME_LOTE: TdxDBGridMaskColumn;
    padr_gridFECH_CREACION: TdxDBGridDateColumn;
    padr_gridUSUA_CREACION: TdxDBGridMaskColumn;
    padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridUNIDADES: TdxDBGridMaskColumn;
    padr_gridFECH_ESTI_FINALIZACION: TdxDBGridDateColumn;
    padr_gridNOMB_PROC_FINALIZADO: TdxDBGridMaskColumn;
    padr_gridNOMB_PROC_ACTUAL: TdxDBGridMaskColumn;
    padr_gridFECH_FINA_PROC_FINALIZADO: TdxDBGridDateColumn;
    padr_gridFECH_ESTI_PROC_FINALIZADO: TdxDBGridDateColumn;
    padr_gridDIFE_DIAS: TdxDBGridMaskColumn;
    quer_eliminar: TQuery;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXSubmenuItem2: TTBXSubmenuItem;
    acti_ventana: TActionList;
    acti_camb_finalizada: TAction;
    boto_Finalizar: TTBXItem;
    TBXItem2: TTBXItem;
    quer_anular: TQuery;
    quer_finalizar: TQuery;
    tabl_historial: TTable;
    tabl_historialCONS_ANOTACION: TIntegerField;
    tabl_historialCONS_PROD_ORDEN: TIntegerField;
    tabl_historialTEXT_ANOTACION: TStringField;
    tabl_historialFECH_SISTEMA: TDateTimeField;
    tabl_historialUSUA_SISTEMA: TStringField;
    pane_historial: TPCPFrame;
    fram_historial: Tffra_historialDB;
    dfsSplitter1: TdfsSplitter;
    consultaFINALIZADO: TIntegerField;
    padr_gridANULADA: TdxDBGridImageColumn;
    padr_gridFINALIZADO: TdxDBGridImageColumn;
    quer_prod_ordenes: TQuery;
    data_prod_ordenes: TDataSource;
    PCPFrame1: TPCPFrame;
    SCLDBLabel2: TSCLDBLabel;
    comb_nume_orden: TPCPLookUpComboEdit;
    SCLButton1: TTBXButtonSCL;
    procedure FormShow(Sender: TObject);
    procedure padr_acti_eliminarUpdate(Sender: TObject);
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure acti_ventanaUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure acti_camb_finalizadaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure consultaBeforeOpen(DataSet: TDataSet);
    procedure comb_nume_ordenChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcn1_prod_cons_maes_lotes: Tfcn1_prod_cons_maes_lotes;

implementation

uses _MDI, _cons_pcp, _func_pcp, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 10 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfcn1_prod_cons_maes_lotes.FormShow(Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarUpdate
Objetivo        : Actualizar el estado de la acción Eliminar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfcn1_prod_cons_maes_lotes.padr_acti_eliminarUpdate(
  Sender: TObject);
begin
  inherited;
  padr_acti_eliminar.Enabled := (Consulta.Active) and (Consulta.RecordCount >0)
    and (padr_grid.SelectedCount > 0);
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Ejecutar la acción de eliminar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfcn1_prod_cons_maes_lotes.padr_acti_eliminarExecute(
  Sender: TObject);
Var
    vFila   : Integer;
    varCons_lote    : Integer;
begin
  //inherited;
  if Confirmar(cosDeseaEliminar) = mrYes then
    Begin
        Try
            StartDBTransaction;
            Consulta.DisableControls;
            ProgresoBarraEstado(cosTrabajando);
            //Recorrer el GRID
            For vFila := 1 to padr_grid.Count do
              Begin
                    If padr_grid.Items[vFila - 1].Selected Then
                      Begin
                          varCons_lote := StrToInt(padr_grid.Items[vFila - 1].Strings[padr_grid.ColumnByFieldName('cons_prod_lote').Index]);
                          quer_eliminar.ParamByName('pe_cons_prod_lote').Value := varCons_lote;
                          quer_eliminar.ExecSQL;
                      End;
              End;
            CommitDBWork;
            EjecutarMensaje(cosProcesoConExito, mtInformation, [mbOk], 0);
        Except
             On e:Exception do
               Begin
                  RollBackDBWork;
                  EjecutarMensajeError(e.Message);
               End;
        End;
        ProgresoBarraEstado;
        RefreshDataSet(Consulta);
        Consulta.EnableControls;
    End;
end;
{****************************************************************
Procedimiento   : acti_ventanaUpdate
Objetivo        : Actualizar el estado de las acciones de la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfcn1_prod_cons_maes_lotes.acti_ventanaUpdate(
  Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  acti_camb_finalizada.Enabled := (consulta.Active) and (Consulta.RecordCount > 0) and
        (padr_grid.SelectedCount = 1);
end;

procedure Tfcn1_prod_cons_maes_lotes.acti_camb_finalizadaExecute(
  Sender: TObject);
var
    var_esta_actual : String;
    var_esta_nuevo  : String;
    var_finalizada     : Integer;
    var_cons_prod_lote  : Integer;
begin
  inherited;
  var_cons_prod_lote := consulta.FieldByName('cons_prod_lote').asInteger;
  //Identificar el estado
  if (consulta.FieldByName('finalizado').AsInteger = 1) Then
    Begin
       var_esta_actual := cosfinalizado;
       var_esta_nuevo := cosActivo;
       var_finalizada := -1;
    End
  Else
    Begin
       var_esta_actual := cosActivo;
       var_esta_nuevo := cosfinalizado;
       var_finalizada := 1;
    End;
  If Confirmar(Format(cosCambiarEstado,[var_esta_actual, var_Esta_nuevo]))=mrYes then
    Begin
        quer_finalizar.ParamByName('pe_finalizada').Value := var_finalizada;
        quer_finalizar.ParamByName('pe_cons_prod_lote').Value := consulta.FieldByName('cons_prod_lote').AsInteger;
        quer_finalizar.ExecSQL;
        EjecutarMensaje(cosProcesoConExito, mtInformation, [mbok], 0);
        RefreshDataSet(Consulta);
        Consulta.Locate('cons_prod_lote', var_cons_prod_lote, []);
    End;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfcn1_prod_cons_maes_lotes.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  pane_historial.Visible := AbrirDataSet(tabl_historial);
  AbrirDataSet(quer_prod_ordenes);
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : consultaBeforeOpen
Objetivo        : Preparar el filtro de la consulta antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfcn1_prod_cons_maes_lotes.consultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  //Comprobar el texto del combo
  Consulta.Filtered := (comb_nume_orden.Text <> '');
  if (comb_nume_orden.Text <> '') then
     Consulta.Filter := 'cons_prod_orden = ' + IntToStr(comb_nume_orden.KeyValue);
end;
{****************************************************************
Procedimiento   : comb_nume_ordenChange
Objetivo        : Actualizar la consulta cuando cambie el filtro del combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfcn1_prod_cons_maes_lotes.comb_nume_ordenChange(
  Sender: TObject);
begin
  inherited;
  RefreshDataSet(Consulta);
end;

end.

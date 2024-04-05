unit UN1_Para_Improductivos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, AdvPanel, dxExEdtr, dxCntner, Db, DBTables, RxLookup,
  PCPLookUpComboEdit, dxEdLib, dxDBELib, PictureContainer, 
  SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor, StdCtrls,
  SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, Boxes,
  PCPProceso, PCPFrame, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl,
  SCLDBGrid, Menus, ufra_mens_atencion, DBCtrls;

  
type
  TFN1_Para_Improductivos1 = class(T_fvent_modal)
    Tabla_VentanaCONS_IMPRODUCTIVO: TIntegerField;
    Tabla_VentanaCODI_IMPRODUCTIVO: TStringField;
    Tabla_VentanaCONS_IMPR_FAMILIA: TIntegerField;
    Tabla_VentanaNOMB_IMPRODUCTIVO: TStringField;
    Tabla_VentanaACTIVO: TIntegerField;
    Tabla_VentanaDESC_INCENTIVOS: TIntegerField;
    Tabla_VentanaDESC_EFICIENCIA: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    TFamilias: TTable;
    DSFamilias: TDataSource;
    Tabla_VentanaPORCENTAJE: TFloatField;
    Panel1: TPCPFrame;
    SCLDBLabel2: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    SCLDBLabel1: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel4: TSCLDBLabel;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    pane_Sub: TPCPFrame;
    TBXDock1: TTBXDock;
    Acciones: TActionList;
    acti_subp_nuevo: TAction;
    acti_subp_edit: TAction;
    acti_subp_eliminar: TAction;
    Tabla_VentanaADICIONAL_1: TStringField;
    TBXToolbar1: TTBXToolbar;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    pane: TPanel;
    padr_grid: TSCLDBGrid;
    padr_gridCONS_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridCODI_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridNOMB_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    padr_gridPORCENTAJE: TdxDBGridColumn;
    padr_gridACTIVO: TdxDBGridCheckColumn;
    padr_gridDESC_INCENTIVOS: TdxDBGridCheckColumn;
    padr_gridDESC_EFICIENCIA: TdxDBGridCheckColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    tabl_subimproductivos: TTable;
    tabl_subimproductivosCONS_SUB_IMPRODUCTIVO: TIntegerField;
    tabl_subimproductivosCONS_IMPRODUCTIVO: TIntegerField;
    tabl_subimproductivosCODI_SUB_IMPRODUCTIVO: TStringField;
    tabl_subimproductivosNOMB_SUB_IMPRODUCTIVO: TStringField;
    tabl_subimproductivosDESCRIPCION: TStringField;
    tabl_subimproductivosDESC_INCENTIVOS: TIntegerField;
    tabl_subimproductivosDESC_EFICIENCIA: TIntegerField;
    tabl_subimproductivosACTIVO: TIntegerField;
    tabl_subimproductivosPORCENTAJE: TFloatField;
    tabl_subimproductivosADICIONAL_1: TStringField;
    data_subimproductivos: TDataSource;
    tabl_subimproductivosAPLI_SUB_IMPRODUCTIVO: TStringField;
    tabl_subimproductivosFECH_SISTEMA: TDateTimeField;
    tabl_subimproductivosUSUA_SISTEMA: TStringField;
    pop_sub_improductivos: TTBXPopupMenu;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    padr_gridDESCRIPCION: TdxDBGridBlobColumn;
    Tabla_VentanaCONS_VALO_HORA: TIntegerField;
    Tabla_VentanaCONS_VALO_MINIMO: TIntegerField;
    quer_valo_hora: TQuery;
    data_valo_hora: TDataSource;
    quer_valo_minimo: TQuery;
    data_valo_minimo: TDataSource;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    DBText2: TDBText;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    DBText1: TDBText;
    comb_pago_minimo: TPCPLookUpComboEdit;
    valo_2: TdxDBCurrencyEdit;
    pane_hide_valo_minimo: TPanel;
    mens_valo_minimo: Tffra_mens_atencion;
    comb_pago_hora: TPCPLookUpComboEdit;
    valo_1: TdxDBCurrencyEdit;
    SCLDBLabel5: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    Tabla_VentanaVALO_HORA: TFloatField;
    Tabla_VentanaVALO_MINIMO: TFloatField;
    mens_valo_hora: Tffra_mens_atencion;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure acti_subp_nuevoExecute(Sender: TObject);
    procedure acti_subp_editExecute(Sender: TObject);
    procedure acti_subp_eliminarExecute(Sender: TObject);
    procedure acti_subp_eliminarUpdate(Sender: TObject);
    procedure tabl_subimproductivosBeforePost(DataSet: TDataSet);
    procedure padr_gridDblClick(Sender: TObject);
    procedure padr_gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);
    procedure Tabla_VentanaAfterPost(DataSet: TDataSet);
    procedure Tabla_VentanaAfterCancel(DataSet: TDataSet);
    procedure Tabla_VentanaAfterDelete(DataSet: TDataSet);
    procedure tabl_subimproductivosAfterInsert(DataSet: TDataSet);
    procedure comb_pago_minimoChange(Sender: TObject);
    procedure comb_pago_horaChange(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Improductivos1: TFN1_Para_Improductivos1;

implementation

uses _MDI, un1_para_sub_Improductivos_Edit, _func_varias, _cons_pcp,
  _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 5 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Improductivos1.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización visual
  mens_valo_hora.SetNormalColors(false);
  mens_valo_minimo.SetNormalColors(false);
  //Abrir las consultas
  AbrirDataSet(TFamilias);
  AbrirDataSet(tabl_subimproductivos);
  AbrirDataSet(quer_valo_hora);
  AbrirDataSet(quer_valo_minimo);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Inicializar el registro del improductivo luego de crearlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 02 de 2004
Versión         : pcp4003
*****************************************************************}
procedure TFN1_Para_Improductivos1.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Valores por defecto del registro
  With tabla_ventana do
    Begin
         FieldByName('activo').Value := 1;
         FieldByName('desc_incentivos').Value := 1;
         FieldByName('desc_eficiencia').Value := 1;
    End;
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar el estado de los controles de
                  la ventana al cambiar
                  el estado de la tabla principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.data_ventanaStateChange(
  Sender: TObject);
begin
  inherited;
  //Mostrar ocultar los subimproductivos
  pane_sub.Visible := (tabla_Ventana.Active) and (Tabla_Ventana.State <> dsInsert);
end;
{****************************************************************
Procedimiento   : acti_subp_nuevoExecute
Objetivo        : Crear un nuevo paro improductivo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.acti_subp_nuevoExecute(Sender: TObject);
begin
  inherited;
  tabl_subimproductivos.Insert;
  Application.CreateForm(Tfun1_para_sub_Improductivos_Edit, fun1_para_sub_Improductivos_Edit);
  fun1_para_sub_Improductivos_Edit.SetDataSet(tabl_subImproductivos);
  fun1_para_sub_Improductivos_Edit.ShowModal;
  tabl_subimproductivos.Refresh;
end;
{****************************************************************
Procedimiento   : acti_subp_editExecute
Objetivo        : Editar el subimproductivo seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.acti_subp_editExecute(Sender: TObject);
begin
  inherited;
  tabl_subimproductivos.Edit;
  Application.CreateForm(Tfun1_para_sub_Improductivos_Edit, fun1_para_sub_Improductivos_Edit);
  fun1_para_sub_Improductivos_Edit.SetDataSet(tabl_subImproductivos);
  fun1_para_sub_Improductivos_Edit.ShowModal;
  tabl_subimproductivos.Refresh;
end;
{****************************************************************
Procedimiento   : acti_subp_eliminarExecute
Objetivo        : Eliminar el subimproductivo seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.acti_subp_eliminarExecute(
  Sender: TObject);
begin
  inherited;
  //Validar
  if (tabl_subimproductivos.RecordCount = 0) Then Exit;
  If (Confirmar(cosDeseaEliminar) = mrYes) Then
        tabl_subimproductivos.Delete;
end;
{****************************************************************
Procedimiento   : acti_subp_eliminarUpdate
Objetivo        : Actualizar el estado de la acción ELIMINAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.acti_subp_eliminarUpdate(
  Sender: TObject);
begin
  inherited;
  acti_Subp_Eliminar.Enabled := (tabl_subimproductivos.Active) and (tabl_subimproductivos.recordCount > 0);
end;
{****************************************************************
Procedimiento   : tabl_subimproductivosBeforePost
Objetivo        : Generar la secuencia del subimproductivo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.tabl_subimproductivosBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if (Tabl_SubImproductivos.State = dsInsert) Then
     GenerarSecuencia(tabl_SubImproductivos);
  tabl_subImproductivos.FieldByName('cons_improductivo').Value := tabla_ventana.FieldByName('cons_improductivo').asInteger;
end;
{****************************************************************
Procedimiento   : padr_gridDblClick
Objetivo        : Abrir la ventana de edición del subimproductivo
                  con doble click
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.padr_gridDblClick(Sender: TObject);
begin
  inherited;
  acti_subp_edit.Execute;
end;
{****************************************************************
Procedimiento   : padr_gridKeyDown
Objetivo        : Controlar las pulsaciones en el grid de subimproductivos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.padr_gridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Abrir con ENTER
  If (Key = vk_Return) then
        acti_subp_edit.Execute;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterScroll
Objetivo        : Filtrar la tabla de detalle al cambiar el registro maestro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.Tabla_VentanaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if not tabla_ventana.Active then Exit;
  tabl_subImproductivos.Filter := 'cons_improductivo = ' + IntToStr(tabla_ventana.FieldByName('cons_improductivo').asInteger);
  comb_pago_horaChange(Self);
  comb_pago_minimoChange(Self);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterPost
Objetivo        : Actualizar los datos luego de guardar el maestro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.Tabla_VentanaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //Actualizar el filtro del detalle
  Tabla_VentanaAfterScroll(DataSet);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterCancel
Objetivo        : Actualizar el filtro del detalle luego de cancelar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.Tabla_VentanaAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
  //Actualizar el filtro del detalle
  Tabla_VentanaAfterScroll(DataSet);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterDelete
Objetivo        : Actualizar el filtro del detalle luego de eliminar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.Tabla_VentanaAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  //Actualizar el filtro del detalle
  Tabla_VentanaAfterScroll(DataSet);
end;
{****************************************************************
Procedimiento   : tabl_subimproductivosAfterInsert
Objetivo        : Generar el consecutivo del maestro al crear el detalle
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Para_Improductivos1.tabl_subimproductivosAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  tabl_subImproductivos.FieldByName('cons_improductivo').Value := tabla_ventana.FieldByName('cons_improductivo').asInteger;
end;
{****************************************************************
Procedimiento   : comb_pago_minimoChange
Objetivo        : Actualizar el pago mínimo al cambiar la selección
                  en el combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure TFN1_Para_Improductivos1.comb_pago_minimoChange(Sender: TObject);
begin
  inherited;
  mens_valo_minimo.Visible := not comb_pago_minimo.EstaVacio;
  valo_2.Enabled := False;
  pane_hide_valo_minimo.Visible := True;
  if not comb_pago_minimo.EstaVacio Then
  Begin
     //Valor específico
     if (comb_pago_minimo.KeyValue = 0) Then
     Begin
         valo_2.Enabled := True;
         pane_hide_valo_minimo.Visible := False;
     End
     Else
        pane_hide_valo_minimo.Visible := (quer_Valo_minimo.FieldByName('calculado').asInteger = 1);
  End;
  //Si no esta en edición, salir
  if Not (Tabla_Ventana.State in [dsEdit, dsInsert]) Then Exit;
  If not comb_pago_minimo.EstaVacio Then
  Begin
     //Escribir el valor de la selección en el parámetro
     if (comb_pago_minimo.KeyValue <> 0) Then //-->Valor personalizado específico
        tabla_Ventana.FieldByName('VALO_MINIMO').Value := quer_valo_minimo.FieldByName('VALO_HORA_MINIMO').asFloat
  End
  Else
    //Valor cero en el parámetro
    tabla_Ventana.FieldByName('VALO_MINIMO').Value := 0;
end;
{****************************************************************
Procedimiento   : comb_pago_horaChange
Objetivo        : Actualziar el valor hora producción al cambiar
                  la selección en el combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure TFN1_Para_Improductivos1.comb_pago_horaChange(Sender: TObject);
begin
  inherited;
  mens_valo_hora.Visible := not comb_pago_hora.EstaVacio;
  valo_1.Enabled := False;
  mens_valo_hora.Visible := True;
  if not comb_pago_hora.EstaVacio Then Begin
     //Valor específico
     if (comb_pago_hora.KeyValue = 0) Then Begin
         valo_1.Enabled := True;
         mens_valo_hora.Visible := False;
     End
     Else
        mens_valo_hora.Visible := (quer_Valo_hora.FieldByName('calculado').asInteger = 1);
  End;
  if Not (Tabla_Ventana.State in [dsEdit, dsInsert]) Then Exit;
  //Si no es un ComboBox - Salir
  If not comb_pago_hora.EstaVacio Then
  Begin
     //Escribir el valor de la selección en el parámetro
     if (comb_pago_hora.KeyValue <> 0) Then //-->Valor personalizado específico
        tabla_Ventana.FieldByName('VALO_HORA').Value := quer_valo_hora.FieldByName('VALO_HORA_PRODUCCION').asFloat
  End
  Else
    //Valor cero en el parámetro
    tabla_Ventana.FieldByName('VALO_HORA').Value := 0;

end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Actualizar datos antes de guardar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure TFN1_Para_Improductivos1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  With tabla_Ventana do
  Begin
    //Valor hora producción en cero
    if VarIsNull(FieldByName('valo_hora').Value) Then
        FieldByName('valo_hora').Value := 0;
    //Valor hora mínimo en cero
    if VarIsNull(FieldByName('valo_minimo').Value) Then
        FieldByName('valo_minimo').Value := 0;
  End;
end;

end.

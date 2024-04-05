unit un2_come_vendedores2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  Menus, TB2Item, TBX, Db, ufra_historialDB, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, dxCntner, ExtCtrls, dfsSplitter, dxEdLib, dxDBELib,
  ufra_ubic_regional, PCPFrame, SCLTabs, SCLPropiedadesForm, DBActns,
  ActnList, ImgList, Boxes, PCPProceso, dxEditor, StdCtrls, SoCtrls,
  SCLDBLabel, TB2Dock, TB2Toolbar;

  
type
  Tfn2_come_vendedores2 = class(T_fvent_modal)
    page: TSCLPageControl;
    page_datos: TSCLTabSheet;
    page_ubicacion: TSCLTabSheet;
    Panel1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    page_historial: TSCLTabSheet;
    PCPFrame1: TPCPFrame;
    PCPFrame2: TPCPFrame;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    SCLDBLabel13: TSCLDBLabel;
    SCLDBLabel14: TSCLDBLabel;
    SCLDBLabel15: TSCLDBLabel;
    Panel2: TPanel;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    PCPFrame3: TPCPFrame;
    dfsSplitter1: TdfsSplitter;
    PCPFrame4: TPCPFrame;
    TBXDock1: TTBXDock;
    Panel3: TPanel;
    Panel4: TPanel;
    grid_disponibles: TdxDBGrid;
    Tabla_VentanaCONS_COME_VENDEDOR: TIntegerField;
    Tabla_VentanaCODI_COME_VENDEDOR: TStringField;
    Tabla_VentanaIDEN_COME_VENDEDOR: TStringField;
    Tabla_VentanaNOMB_COME_VENDEDOR: TStringField;
    Tabla_VentanaCONS_PAIS: TIntegerField;
    Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField;
    Tabla_VentanaCONS_CIUDAD: TIntegerField;
    Tabla_VentanaDIRECCION: TStringField;
    Tabla_VentanaAPAR_AEREO: TStringField;
    Tabla_VentanaTELEFONO1: TStringField;
    Tabla_VentanaTELEFONO2: TStringField;
    Tabla_VentanaTELEFONO3: TStringField;
    Tabla_VentanaTELE_FAX: TStringField;
    Tabla_VentanaTELE_MOVIL: TStringField;
    Tabla_VentanaCORR_ELECTRONICO: TStringField;
    Tabla_VentanaPAGI_WEB: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    fram_ubic_regional: Tffra_ubic_regional;
    quer_subz_disponibles: TQuery;
    quer_subz_disponiblesCONS_COME_ZONA_DETALLE: TIntegerField;
    quer_subz_disponiblesNOMB_COME_ZONA_DETALLE: TStringField;
    quer_subz_disponiblesCONS_COME_ZONA: TIntegerField;
    quer_subz_disponiblesNOMB_COME_ZONA: TStringField;
    data_subz_disponibles: TDataSource;
    grid_disponiblesCONS_COME_ZONA: TdxDBGridMaskColumn;
    grid_disponiblesCODI_COME_ZONA: TdxDBGridMaskColumn;
    grid_disponiblesNOMB_COME_ZONA: TdxDBGridMaskColumn;
    grid_disponiblesCONS_COME_ZONA_DETALLE: TdxDBGridMaskColumn;
    grid_disponiblesCODI_COME_ZONA_DETALLE: TdxDBGridMaskColumn;
    grid_disponiblesNOMB_COME_ZONA_DETALLE: TdxDBGridMaskColumn;
    grid_disponiblesFECH_SISTEMA: TdxDBGridMaskColumn;
    grid_disponiblesUSUA_SISTEMA: TdxDBGridMaskColumn;
    grid_asignadas: TdxDBGrid;
    tabl_subz_asignadas: TTable;
    data_subz_asignadas: TDataSource;
    tabl_subz_asignadasCONS_COME_VEND_ZONA: TIntegerField;
    tabl_subz_asignadasCONS_COME_VENDEDOR: TIntegerField;
    tabl_subz_asignadasCONS_COME_ZONA: TIntegerField;
    tabl_subz_asignadasCONS_COME_ZONA_DETALLE: TIntegerField;
    tabl_subz_asignadasFECH_SISTEMA: TDateTimeField;
    tabl_subz_asignadasUSUA_SISTEMA: TStringField;
    quer_subz_auxiliar: TQuery;
    quer_subz_auxiliarCONS_COME_ZONA_DETALLE: TIntegerField;
    quer_subz_auxiliarNOMB_COME_ZONA: TStringField;
    quer_subz_auxiliarNOMB_COME_ZONA_DETALLE: TStringField;
    tabl_subz_asignadasNOMB_COME_ZONA: TStringField;
    tabl_subz_asignadasNOMB_COME_ZONA_DETALLE: TStringField;
    grid_asignadasCONS_COME_VEND_ZONA: TdxDBGridMaskColumn;
    grid_asignadasCONS_COME_VENDEDOR: TdxDBGridMaskColumn;
    grid_asignadasCONS_COME_ZONA: TdxDBGridMaskColumn;
    grid_asignadasNOMB_COME_ZONA: TdxDBGridLookupColumn;
    grid_asignadasCONS_COME_ZONA_DETALLE: TdxDBGridMaskColumn;
    grid_asignadasNOMB_COME_ZONA_DETALLE: TdxDBGridLookupColumn;
    grid_asignadasFECH_SISTEMA: TdxDBGridDateColumn;
    grid_asignadasUSUA_SISTEMA: TdxDBGridMaskColumn;
    acti_Ventana: TActionList;
    acti_asignar: TAction;
    acti_actualizar: TAction;
    acti_eliminar: TAction;
    acti_ir_zonas: TAction;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    pop_grid_1: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem7: TTBXItem;
    pop_grid_2: TTBXPopupMenu;
    TBXItem8: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXItem9: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    TBXItem10: TTBXItem;
    ffra_historialDB1: Tffra_historialDB;
    tabl_historial: TTable;
    procedure Tabla_VentanaCODI_COME_VENDEDORChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure tabl_subz_asignadasBeforePost(DataSet: TDataSet);
    procedure acti_actualizarExecute(Sender: TObject);
    procedure acti_VentanaUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure acti_asignarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure acti_ir_zonasExecute(Sender: TObject);
    procedure tabl_historialBeforePost(DataSet: TDataSet);
    procedure data_ventanaStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_come_vendedores2: Tfn2_come_vendedores2;

implementation

uses _MDI, _cons_pcp, _func_varias, un2_come_zonas, un2_come_zonas2,
  _func_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : Tabla_VentanaCODI_COME_VENDEDORChange
Objetivo        : Asignar el código al número de identificación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_vendedores2.Tabla_VentanaCODI_COME_VENDEDORChange(
  Sender: TField);
begin
  inherited;
  //Asignar el código al número de identificación
  With tabla_ventana do
  Begin
       If (FieldByName('IDEN_COME_VENDEDOR').AsString='') Then
        FieldByName('IDEN_COME_VENDEDOR').Value := FieldByName('CODI_COME_VENDEDOR').AsString;
  End;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_vendedores2.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar los controles
  page.ActivePage := page_datos;
  ColorGrid(Grid_Disponibles);
  ColorGrid(Grid_Asignadas);
  //Abrir consultas
  InicializarFrame(fram_ubic_regional);
  quer_subz_disponibles.Prepare;
  page_ubicacion.TabVisible := AbrirDataSet(quer_subz_disponibles) and
                               AbrirDataSet(tabl_subz_asignadas);
  page_historial.TabVisible := AbrirDataSet(tabl_historial);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : tabl_subz_asignadasBeforePost
Objetivo        : Generar la secuencia del registro de subzona asignada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_vendedores2.tabl_subz_asignadasBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  GenerarSecuencia(tabl_subz_asignadas);
end;
{****************************************************************
Procedimiento   : acti_actualizarExecute
Objetivo        : Actualizar la vista de zonas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_vendedores2.acti_actualizarExecute(Sender: TObject);
begin
  inherited;
  RefreshDataSet(quer_subz_disponibles);
  RefreshDataSet(tabl_subz_asignadas);
end;
{****************************************************************
Procedimiento   : acti_VentanaUpdate
Objetivo        : Actualizar el estado de las acciones propias
                  de la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_vendedores2.acti_VentanaUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  acti_Asignar.Enabled := (quer_subz_disponibles.Active) and (quer_subz_disponibles.RecordCount>0) and
                (tabl_subz_asignadas.Active);
  acti_eliminar.Enabled := (tabl_subz_asignadas.Active) and (tabl_subz_asignadas.RecordCount>0);
end;

procedure Tfn2_come_vendedores2.acti_asignarExecute(Sender: TObject);
Var
        var_i : Integer;
begin
  inherited;
  //Recorrer el grid de disponibles
  With grid_disponibles do
  Begin
      For var_i :=1 to Count do
      Begin
           //Verificar si está seleccionado 
           If Items[var_i - 1].Selected Then
           Begin
                With tabl_subz_asignadas do
                Begin
                    Try
                        //Insertar el registro (asignar la zona)    
                        Insert;
                        FieldbyName('cons_come_zona').Value := Items[var_i - 1].Values[FindColumnByFieldName('cons_come_zona').Index];
                        FieldbyName('cons_come_zona_detalle').Value := Items[var_i - 1].Values[FindColumnByFieldName('cons_come_zona_detalle').Index];
                        Post;
                    Except
                        On e:Exception do
                        Begin
                            //Cancelar si falla
                            If (State = dsInsert) Then Cancel;
                            EjecutarMensajeError(e.Message);
                        End;
                    End;
                End;
           End;
      End;
      //Actualizar la vista de subzonas disponibles
      RefreshQuery(quer_subz_disponibles);
  End;
end;
{****************************************************************
Procedimiento   : FormDestroy
Objetivo        : Manipular los objetos que necesiten cambios
                  antes de destruir la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_vendedores2.FormDestroy(Sender: TObject);
begin
  inherited;
  //Unprepare Querys
  With quer_subz_disponibles Do
  Begin
        Close;
        UnPrepare;
  End;
end;
{****************************************************************
Procedimiento   : acti_eliminarExecute
Objetivo        : Ejecutar la acción de eliminar las subzonas
                  seleccionadas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_vendedores2.acti_eliminarExecute(Sender: TObject);
begin
  inherited;
  //Confirmar con el usuario
  If Confirmar(cosDeseaEliminar) = mrYes then
  Begin         
       //eliminar 
       grid_asignadas.DeleteSelection;
       //Actualizar consulta de disponibles
       RefreshQuery(quer_subz_disponibles); 
  End;
end;
{****************************************************************
Procedimiento   : acti_ir_zonasExecute
Objetivo        : Abrir el módulo de codificación de zonas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_vendedores2.acti_ir_zonasExecute(Sender: TObject);
begin
  inherited;
  AbrirModulo(Tfn2_come_zonas, fsMDIChild, Tfn2_come_zonas2);
end;
{****************************************************************
Procedimiento   : tabl_historialBeforePost
Objetivo        : Generar la secuencia de identificación del registro
                  de la tabla de historial
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_vendedores2.tabl_historialBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  GenerarSecuencia(tabl_historial);
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles de la ventana
                  cuando cambie el estado de la tabla maestra (vendedores)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_vendedores2.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
  page_ubicacion.TabVisible := (tabla_Ventana.State<>dsInsert) and (quer_subz_disponibles.Active) and
                        (tabl_subz_asignadas.Active);
  page_historial.TabVisible := (tabla_ventana.State<>dsInsert) and (tabl_Historial.Active);
end;

end.

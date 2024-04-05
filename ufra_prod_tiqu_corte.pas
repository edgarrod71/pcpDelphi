unit ufra_prod_tiqu_corte;

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
        Unit            : ufra_prod_tiqu_corte
        Objetivo        : Frame para la distribución de paquetes
                          de corte y la impresión de tiqutes de control.
                          El PROCESO ACTUAL ES 4 = TIQUETES DE CORTE
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 25 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, TB2Item, TBX, AsgFindDialog, DBTables, DBActns, ActnList, Db,
  RxMemDS, ufra_prod_resp_lote_proceso, Grids, BaseGrid, AdvGrid, AdvCGrid,
  SCLColumnGrid, dxEditor, dxExEdtr, dxEdLib, dxDBELib, dxCntner, StdCtrls,
  SoCtrls, SCLDBLabel, ufra_refe_material, ufra_prod_sele_lote, ExtCtrls,
  TB2Dock, TB2Toolbar, SCLTabs;

  
type
  Tffra_prod_tiqu_corte = class(TFrame)
    myTabla_Ventana: TRxMemoryData;
    myData_Ventana: TDataSource;
    myTabla_Ventanacons_prod_orden: TIntegerField;
    myTabla_Ventanacons_prod_lote: TIntegerField;
    myTabla_Ventanacons_refe_material: TIntegerField;
    myTabla_Ventanacons_proceso: TIntegerField;
    tabl_guardar: TRxMemoryData;
    data_guardar: TDataSource;
    tabl_prod_ordenes: TTable;
    tabl_prod_ordenesCONS_PROD_ORDEN: TIntegerField;
    tabl_prod_ordenesNUME_PROD_ORDEN: TStringField;
    tabl_prod_ordenesCONT_POR_LOTES: TIntegerField;
    tabl_prod_ordenesANULADA: TIntegerField;
    tabl_prod_ordenesFECH_SISTEMA: TDateTimeField;
    tabl_prod_ordenesUSUA_SISTEMA: TStringField;
    data_prod_ordenes: TDataSource;
    acti_Frame: TActionList;
    acti_cancelar: TDataSetCancel;
    acti_guardar: TDataSetPost;
    acti_carg_listado: TAction;
    quer_lote_capas: TQuery;
    quer_lote_tallas: TQuery;
    data_lote_capa: TDataSource;
    data_lote_tallas: TDataSource;
    myTabla_Ventanacons_proc_anterior: TIntegerField;
    quer_procesos: TQuery;
    quer_cort_unid_medida: TQuery;
    myTabla_Ventanacant_paqu_corte: TIntegerField;
    myTabla_Ventanacant_paqu_cort_agrupar: TIntegerField;
    quer_oper_llamar: TQuery;
    myTabla_Ventanacons_refe_variacion: TIntegerField;
    quer_upda_capas: TQuery;
    quer_sele_corte: TQuery;
    quer_inse_corte: TQuery;
    acti_insertar: TAction;
    acti_adicionar: TAction;
    acti_eliminar: TAction;
    acti_move_arriba: TAction;
    acti_move_abajo: TAction;
    acti_buscar: TAction;
    grid_find: TAdvGridFindDialog;
    pop_grid: TTBXPopupMenu;
    TBXItem9: TTBXItem;
    TBXItem10: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem11: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXItem12: TTBXItem;
    TBXItem13: TTBXItem;
    TBXItem14: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    TBXItem15: TTBXItem;
    TBXItem16: TTBXItem;
    quer_dele_corte: TQuery;
    acti_impr_tiquetes: TAction;
    page: TSCLPageControl;
    page_informacion: TSCLTabSheet;
    page_avance: TSCLTabSheet;
    fram_avance: Tffra_prod_resp_lote_proceso;
    TBDock1: TTBDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem8: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem6: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    TBXItem17: TTBXItem;
    TBXItem3: TTBXItem;
    pane_seleccion: TPanel;
    Bevel1: TBevel;
    fram_lote: Tffra_prod_sele_lote;
    fram_refe_material: Tffra_refe_material;
    pane_info: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    edit_tama_paquete: TdxDBSpinEdit;
    dxDBEdit3: TdxDBEdit;
    pane_grid: TPanel;
    grid: TSCLColumnGrid;
    procedure myTabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure data_prod_ordenesDataChange(Sender: TObject; Field: TField);
    procedure data_guardarDataChange(Sender: TObject; Field: TField);
    procedure gridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure acti_FrameUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure acti_carg_listadoExecute(Sender: TObject);
    procedure doCambiarSeleccion(Sender: TObject);
    procedure quer_procesosAfterOpen(DataSet: TDataSet);
    procedure quer_cort_unid_medidaAfterOpen(DataSet: TDataSet);
    procedure doLlamarOperacionesReferencia(Sender: TObject);
    procedure doHacerCalculos(Sender: TObject);
    procedure acti_guardarExecute(Sender: TObject);
    procedure doIniciarEdicion(Sender: TObject);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tabl_guardarBeforePost(DataSet: TDataSet);
    procedure acti_cancelarExecute(Sender: TObject);
    procedure doLlamarCorte(Sender: TObject);
    procedure acti_insertarExecute(Sender: TObject);
    procedure acti_adicionarExecute(Sender: TObject);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure acti_move_arribaExecute(Sender: TObject);
    procedure acti_move_abajoExecute(Sender: TObject);
    procedure acti_buscarExecute(Sender: TObject);
    procedure doCambiarPaquete(Sender: TObject);
    procedure acti_impr_tiquetesExecute(Sender: TObject);
    procedure data_guardarStateChange(Sender: TObject);
    procedure fram_lotecomb_nume_loteChange(Sender: TObject);
  private
    { Private declarations }
    fProcesoActual        : Integer;
    var_llamando        : Boolean;
    Procedure SetProcesoActual(Value : Integer);
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Procedure SetDataSet(aDataSet : TDataSet);
    Property ProcesoActual : Integer Read fProcesoActual Write SetProcesoActual;
    Function DatosValidos : Boolean;
  end;

Const
        cProcesoAnterior = 1; //Consecutivo del proceso anterior para consultas

implementation

uses _func_varias, _MDI, _cons_pcp, _func_pcp, uwn1_prod_cort_impr_tiquetes;

{$R *.DFM}
// Procedimientos coumnes frames de ordenes de produccion
//....................................................................

{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_tiqu_corte.Create(Owner : TComponent);
Begin
    //Heredar la creación    
    Inherited Create(Owner);
    //Inicializar los controles de la ventana
    AutoHints(Self);
    page.ActivePage := page_informacion;
    With grid do
    Begin
        SetTotalColumn(Columns[ColumnByName['CANT_TOTAL'].Index]);
        SetTotalColumn(Columns[ColumnByName['NUME_TIQUETES'].Index]);
        SetTotalColumn(Columns[ColumnByName['TIEM_OPERACION'].Index]);
        ColumnByName['TIEM_OPERACION'].ReadOnly := False;
    End;
    InicializarADVFindDialog(grid_find);
    var_llamando := False;
    //Abrir la tabla temporal y generar un registro
    mytabla_ventana.Open;
    mytabla_ventana.Insert;
    SetProcesoActual(4);
    mytabla_ventana.Post;
    //Abrir la tabla temporal para controlar los cambios
    tabl_guardar.open;
    //Abrir las consultas de los frames
    AbrirDataSet(fram_lote.quer_lotes);
    AbrirDataSet(fram_refe_material.quer_refe_materiales);
    AbrirDataSet(quer_lote_capas);
    AbrirDataSet(quer_lote_tallas);
    AbrirDataSet(quer_procesos);
    AbrirDataSet(quer_cort_unid_medida);
End;
{****************************************************************
Procedimiento   : SetProcesoActual
Objetivo        : Asigna el valor del proceso actual a la cual
                  pertenece o ejecuta el frame.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_tiqu_corte.SetProcesoActual(Value : Integer);
Begin
    fProcesoActual := Value;
    //Asignar a la tabla de la ventana
    With myTabla_Ventana do
    Begin
        //Si está cerrada, no cambiar
        If Not (Active) Then Exit;
        //Si no está en edición, editar
        If Not (State in [dsEdit, dsInsert]) Then
                Edit;
        FieldByName('cons_proceso').Value := fProcesoActual;
    End;
End;
{****************************************************************
Procedimiento   : SetDataSet
Objetivo        : Asignar un dataSet a la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_tiqu_corte.SetDataSet(aDataSet : TDataSet);
Begin
     //Asignar el dataset
     data_prod_ordenes.DataSet := aDataSet;
     //Validar el dataSet
     If aDataSet = Nil then Exit;
End;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterInsert
Objetivo        : Inicializar los campos luego de insertar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.myTabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
        With myTabla_ventana do
        Begin
             FieldByName('cons_proceso').Value := fProcesoActual;
             FieldByName('cons_proc_anterior').Value := cProcesoAnterior;
        End;
end;
{****************************************************************
Procedimiento   : data_prod_ordenesDataChange
Objetivo        : Actualizar los controles cuando cambien los
                  datos del maestro de órdenes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.data_prod_ordenesDataChange(
  Sender: TObject; Field: TField);
var
        var_cons_prod_orden     : Integer;
begin
        //Conseguir el número de la orden
        With data_prod_ordenes do
             if (DataSet = Nil) or (Not DataSet.Active) or (DataSet.RecordCount = 0) Then
                var_cons_prod_orden := -1
             else
                var_cons_prod_orden := DataSet.FieldByName('cons_prod_orden').Value;
        //Actualizar myTabla_Ventana
        if (myTabla_ventana.State in [dsInsert, dsEdit]) Then 
                myTabla_Ventana.Cancel;
        myTabla_ventana.Edit;
        myTabla_Ventana.FieldByName('cons_prod_orden').Value := var_cons_prod_orden;
        myTabla_ventana.FieldByName('cons_prod_lote').Clear;
        myTabla_ventana.FieldByName('cons_refe_material').Clear;
        //Abrir la consulta de materiales
        if not fram_refe_material.quer_refe_materiales.Active then
          AbrirDataSet(fram_refe_material.quer_refe_materiales);
        //xxxxxxxLlamar lo propio del frame
        
end;
{****************************************************************
Procedimiento   : DatosValidos
Objetivo        : Verificar si los datos del frame son 
                  válidos para ejecutar las acciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Function Tffra_prod_tiqu_corte.DatosValidos : Boolean;
Begin
        Result := (fram_lote.comb_nume_lote.Text <> '') and 
                   (fram_refe_material.fram_comb_codi_material.Text <> '');
End;
// Procedimientos específicos del frame
//....................................................................
{****************************************************************
Procedimiento   : data_guardarDataChange
Objetivo        : Actualizar los controles al iniciar la edición
                  de la info de corte
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.data_guardarDataChange(Sender: TObject;
  Field: TField);
begin
end;
{****************************************************************
Procedimiento   : gridGetAlignment
Objetivo        : Centrar los títulos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.gridGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  With Grid do
  Begin
      //Centrar los títulos
      If (ARow = 0) Then hAlign := taCenter;
  End;
end;
{****************************************************************
Procedimiento   : acti_FrameUpdate
Objetivo        : Actualizar el estado de las acciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.acti_FrameUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
        acti_carg_listado.Enabled := DatosValidos;
        acti_guardar.Enabled := (tabl_guardar.State in [dsEdit, dsInsert]) and (DatosValidos);
        acti_cancelar.Enabled := (tabl_guardar.State in [dsEdit, dsInsert]) and (DatosValidos);
        acti_eliminar.enabled := (DatosValidos) and (Grid.RowCount > 1);
        acti_insertar.Enabled := DatosValidos;
        acti_adicionar.Enabled := DatosValidos;
        acti_buscar.Enabled := DatosValidos;
        acti_move_arriba.Enabled := Not((grid.Selection.Top<=1) or (Grid.RowCount<=1) and (DatosValidos));
        acti_move_abajo.Enabled := Not ((grid.Selection.Bottom=Grid.RowCount-1) or (Grid.RowCount<=1) and (DatosValidos));
        acti_impr_tiquetes.Enabled :=  (DatosValidos) and (Not(tabl_guardar.State in [dsEdit, dsInsert]));
end;
{****************************************************************
Procedimiento   : acti_carg_listadoExecute
Objetivo        : Cargar las operaciones de la referencia
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.acti_carg_listadoExecute(Sender: TObject);
begin
        //Confirmar que el usuario quiere esto
        if Confirmar(cosDeseaLlamarOperaciones) = mrNo then Exit;
        //Abrir la consulta
        doLlamarOperacionesReferencia(Sender);
end;
{****************************************************************
Procedimiento   : doCambiarSeleccion
Objetivo        : Actualizar los controles cuando cambia la selección activa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 28 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_prod_tiqu_corte.doCambiarSeleccion(
  Sender: TObject);
begin
        //Actualizar
        var_llamando := True;
        With myTabla_Ventana do
        Begin
            if (State in [dsEdit, dsInsert]) Then
            Begin
                //Asignar los tamaños del paquete
                FieldByName('cant_paqu_corte').Value := fram_lote.quer_lotes.FieldByName('cant_paqu_corte').AsInteger;
                FieldByName('cant_paqu_cort_agrupar').Value := fram_lote.quer_lotes.FieldByName('cant_paqu_cort_agrupar').AsInteger;
                FieldByName('cons_refe_variacion').Value := fram_refe_material.quer_refe_materiales.parambyname('cons_Refe_variacion').asInteger;
                //Guardar para que se actualicen los datos
                Post;
            End;
        End;
        doLlamarCorte(Sender);
        var_llamando := False;
        if fram_avance.Visible then fram_avance.doEjecutarFrame(myTabla_ventana.FieldByName('cons_prod_lote').asInteger,
                fProcesoActual);
        
end;
{****************************************************************
Procedimiento   : quer_procesosAfterOpen
Objetivo        : Cargar los items del combo de procesos del grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.quer_procesosAfterOpen(DataSet: TDataSet);
begin
  //Llenar el combo de procesos
  With Grid.ColumnByName['PROCESO'], quer_procesos do
  Begin
      ComboItems.Clear;
      While not EOF do
      Begin
           ComboItems.Add(FieldByName('nomb_proceso').AsString);
           Next;
      End;
  End;

end;
{****************************************************************
Procedimiento   : quer_cort_unid_medidaAfterOpen
Objetivo        : Cargar los items del combo de unidades de medida
                  del grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.quer_cort_unid_medidaAfterOpen(
  DataSet: TDataSet);
begin
  //Llenar el combo de procesos
  With Grid.ColumnByName['UNID_MEDIDA'], quer_cort_unid_medida do
  Begin
      ComboItems.Clear;
      While not EOF do
      Begin
           ComboItems.Add(FieldByName('nomb_cort_unid_medida').AsString);
           Next;
      End;
  End;
end;
{****************************************************************
Procedimiento   : doLlamarOperacionesReferencia
Objetivo        : Llamar las operaciones de la referencia
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.doLlamarOperacionesReferencia(Sender: TObject);
Var
        var_auxi_integer        : Integer;
        quer_llamar             : TQuery;
begin
  inherited;
  //Iniciar la edicion
  doIniciarEdicion(Sender);
  //Validar el grid
  LimpiarGrid(Grid, 1);
  Grid.RowCount := 1;
  quer_oper_llamar.Close;                                                      
  //Parametros de la consulta
   quer_llamar := quer_oper_llamar;
   if Not (myTabla_Ventana).Active then Exit;
   quer_llamar.ParamByName('cons_refe_variacion').Value := myTabla_Ventana.FieldbyName('cons_refe_variacion').AsString;
   quer_llamar.ParamByName('cons_refe_material').Value := myTabla_Ventana.FieldbyName('cons_refe_material').AsString;
  //Llamar los datos
  Try
      With quer_llamar, Grid do
      Begin
           AbrirDataSet(quer_llamar);
           //Numero de registros
           RowCount := RecordCount + 1;
           //Mostrar los valores
           For var_auxi_integer := 1 to RowCount - 1 do
           Begin
                    If RowCount>coiContadorMinimoBarraProgreso Then    
                        ProgresoBarraEstado(cosConsultando,var_auxi_integer,RowCount-1); 
                    If quer_procesos.Locate('cons_proceso', FieldByName('cons_proceso').AsInteger, []) Then
                          Cells[columnByName['PROCESO'].index, var_auxi_integer] := quer_procesos.FieldByName('nomb_proceso').asString;
                    Cells[columnByName['CODI_OPERACION'].index, var_auxi_integer] := FieldByName('codi_operacion').asString;
                    Cells[columnByName['NOMB_OPERACION'].index, var_auxi_integer] := FieldByName('nomb_operacion').asString;
                    If quer_cort_unid_medida.Locate('cons_cort_unid_medida', FieldByName('cons_cort_unid_medida').AsInteger, []) Then
                          Cells[columnByName['UNID_MEDIDA'].index, var_auxi_integer] := quer_cort_unid_medida.FieldByName('nomb_cort_unid_medida').asString;
                    Cells[columnByName['TIEM_OPERACION'].index, var_auxi_integer] := FormatFloat(FormatoFloat(False),(FieldByName('tiem_operacion').asFloat));
                    Next;
           End;
      End;
  Except
        on E:Exception do
        Begin
            ProgresoBarraEstado(cosOcurrioUnError);
            EjecutarMensajeError(e.message);
        End;
  End;
  quer_llamar.Close;
  ProgresoBarraEstado;
  DoHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : doHacerCalculos
Objetivo        : Hacer los calculos de la matriz
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.doHacerCalculos(Sender: TObject);
Var
        var_fila   : Integer;
        var_tiempo      : Float;
        var_tipo_unid_medi_corte : TUnid_medi_paqu_corte;
        var_capas       : Integer;
        var_tallas      : Integer;
        var_paquetes    : Integer;
begin
  inherited;
  Grid.AutoNumberCol(0);
  With Grid do
  Begin
        //Inicializar las variables
        var_capas := quer_lote_capas.FieldByName('capas').asInteger;
        var_tallas := quer_lote_tallas.FieldByName('cant_tallas').asInteger;
        var_paquetes := Edit_tama_paquete.IntValue;
        //Recorrer el grid
        For var_fila := 1 to RowCount-1 do
        Begin
             //Verificar que tenga proceso
             if Cells[ColumnByName['PROCESO'].Index, var_fila] = '' Then
               If ColumnByName['PROCESO'].ComboItems.Count>0 Then
                Cells[ColumnByName['PROCESO'].Index, var_fila] := ColumnByName['PROCESO'].ComboItems.Strings[0];
             //Verificar que tenga unidad de medida   
             if Cells[ColumnByName['UNID_MEDIDA'].Index, var_fila] = '' Then
               If ColumnByName['UNID_MEDIDA'].ComboItems.Count>0 Then
                Cells[ColumnByName['UNID_MEDIDA'].Index, var_fila] := ColumnByName['UNID_MEDIDA'].ComboItems.Strings[0];
             //Validar el tiempo
             Try
                var_tiempo := StrToFloat(Cells[ColumnByName['TIEM_OPERACION'].Index, var_fila]);
             Except    
                var_tiempo := 0;
             End;
             Cells[ColumnByName['TIEM_OPERACION'].Index, var_fila] := FormatFloat(FormatoFloat(false), var_tiempo);
             //Identificar el tipo de unidad de medida de los pquetes de corte
             var_tipo_unid_medi_corte := func_tipo_unid_medi_corte(Cells[ColumnByName['UNID_MEDIDA'].Index, var_fila]);
             //CANT_TOTAL
             Try
                  Case var_tipo_unid_medi_corte of
                     umpcNoAsignado  : Abort;
                     umpcBloques, umpcTallas, umpcBloquesCP
                                : Cells[ColumnByName['CANT_TOTAL'].Index, var_fila] := intToStr(var_tallas);
                     umpcCapas  : Cells[ColumnByName['CANT_TOTAL'].Index, var_fila] := IntToStr(var_capas);
                     umpcPaquetes : Cells[ColumnByName['CANT_TOTAL'].Index, var_fila] := IntToStr(
                       (var_tallas*var_capas) div var_paquetes);
                  End;
             Except
                Cells[ColumnByName['CANT_TOTAL'].Index, var_fila] := '0';
             End;     
             //PUESTOS
             if (Cells[ColumnByName['PUESTOS'].Index, var_fila] = '0') or
                (Cells[ColumnByName['PUESTOS'].Index, var_fila] = '') Then
               Cells[ColumnByName['PUESTOS'].Index, var_fila] := '1';
             //UNID_POR_TIQUETE
             Try
                 if var_tipo_unid_medi_corte = umpcCapas then
                 Cells[ColumnByName['UNID_POR_TIQUETE'].Index, var_fila] := FormatFloat('0',var_paquetes)
                 Else if (Cells[ColumnByName['UNID_POR_TIQUETE'].Index, var_fila] = '') Then
                        Cells[ColumnByName['UNID_POR_TIQUETE'].Index, var_fila] := '1';
             Except
                Cells[ColumnByName['UNID_POR_TIQUETE'].Index, var_fila] := '1';
             End;
             //8 - NUME_TIQUETES
             Try
                Case var_tipo_unid_medi_corte of
                   umpcNoAsignado : Abort;
                   umpcCapas : Cells[ColumnByName['NUME_TIQUETES'].Index, var_fila] := FormatFloat('0',(var_capas/var_paquetes)*StrToFloat(Cells[ColumnByName['PUESTOS'].Index, var_fila]));
                   umpcTallas, umpcBloques, umpcBloquesCP : Cells[ColumnByName['NUME_TIQUETES'].Index, var_fila]  := FormatFloat('0',var_tallas);
                   umpcPaquetes : Cells[ColumnByName['NUME_TIQUETES'].Index, var_fila]  := IntToStr((var_tallas*var_capas) div var_paquetes);
                   {grid_operaciones.Cells[8,i] := IntToStr((StrToInt(grid_operaciones.Cells[5,i]) div StrToInt(grid_operaciones.Cells[7,i]))
                         *StrToInt(grid_operaciones.Cells[6,i]));}
                End;
             Except
                Cells[ColumnByName['NUME_TIQUETES'].Index, var_fila]  := '0';
             End;
             //10 - TIEM_TOTAL
            Try
                Case var_tipo_unid_medi_corte of
                   umpcNoAsignado  : Abort;
                   //umpcapas  : grid_operaciones.Cells[10,i] := FormatFloat('0.000',StrToFloat(grid_operaciones.Cells[9,i])*edit_tama_paquete.AsInteger);
                   //tumTallas : grid_operaciones.Cells[10,i] := FormatFloat('0.000',StrToFloat(grid_operaciones.Cells[9,i])*edit_nume_tallas.AsInteger);
                   umpcBloquesCP : Cells[ColumnByName['TIEM_TOTAL'].Index, var_fila] :=
                        FormatFloat('0.000',StrToFloat(Cells[ColumnByName['TIEM_OPERACION'].Index, var_fila])*var_capas*StrToFloat(Cells[ColumnByName['UNID_POR_TIQUETE'].Index, var_fila]));
                   umpcTallas,umpcCapas, umpcPaquetes, umpcBloques 
                                : Cells[ColumnByName['TIEM_TOTAL'].Index, var_fila] := FormatFloat('0.000', StrToFloat(Cells[ColumnByName['TIEM_OPERACION'].Index, var_fila])*StrToFloat(Cells[ColumnByName['UNID_POR_TIQUETE'].Index, var_fila]));
                End;
            Except
              Cells[ColumnByName['TIEM_TOTAL'].Index, var_fila] := '0.000';
            End;             
        End;
  End;
end;
{****************************************************************
Procedimiento   : acti_guardarExecute
Objetivo        : Ejecutar la acción de guardar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.acti_guardarExecute(Sender: TObject);
begin
        tabl_guardar.Post;
end;
{****************************************************************
Procedimiento   : doIniciarEdicion
Objetivo        : Simular el inicio de la edición de datos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.doIniciarEdicion(Sender: TObject);
begin
  If not (tabl_guardar.State in [dsInsert, dsEdit]) Then
        tabl_guardar.Edit;
end;
{****************************************************************
Procedimiento   : gridKeyDown
Objetivo        : Controlar las pulsaciones sobre el grid (teclas)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Iniciar la edicion
  if Not (Key in [vk_up, vk_left, vk_down, vk_right]) Then
  Begin
        doIniciarEdicion(Sender);
  End;
  //Recalcular
  if (key = vk_return) Then
        doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : tabl_guardarBeforePost
Objetivo        : Guardar el listado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.tabl_guardarBeforePost(DataSet: TDataSet);
Var
        var_fila        : Integer;
begin
      if var_llamando then exit;
      Try
              //Iniciar la transacción
              StartDBTransaction;
              //Guardar la tabla ventana
              CheckAndPostDataSet(myTabla_Ventana);
              //Hacer los calculos
              doHacerCalculos(Self);
              //Actualizar el número de capas
              quer_upda_capas.ExecSQL;
              RefreshDataSet(fram_lote.quer_lotes);
              //Eliminar los existentes
              quer_dele_Corte.ExecSQL;
              With quer_inse_corte, grid do
              Begin
                    For var_fila := 1 to RowCount-1 do
                    Begin
                         ProgresoBarraEstado(cosGuardando, var_fila, RowCount - 1);
                         ParamByName('cons_prod_lote').Value := mytabla_ventana.FieldByName('cons_prod_lote').asInteger;
                         ParamByName('cons_refe_material').Value := mytabla_ventana.FieldByName('cons_refe_material').asInteger;
                         ParamByName('secu_operacion').Value := var_fila;
                         If quer_procesos.Locate('nomb_proceso', Cells[ColumnByName['PROCESO'].Index, var_fila], []) Then
                                ParamByName('cons_proceso').Value := quer_procesos.FieldByName('cons_proceso').AsInteger
                         Else
                                ParamByName('cons_proceso').Value := 0;
                         ParamByName('codi_operacion').Value := Cells[ColumnByName['CODI_OPERACION'].Index, var_fila];
                         ParamByName('nomb_operacion').Value := Cells[ColumnByName['NOMB_OPERACION'].Index, var_fila];
                         If quer_cort_unid_medida.Locate('nomb_cort_unid_medida', Cells[ColumnByName['UNID_MEDIDA'].Index, var_fila], []) Then
                                ParamByName('cons_cort_unid_medida').Value := quer_cort_unid_medida.FieldByName('cons_cort_unid_medida').AsInteger
                         Else
                                ParamByName('cons_cort_unid_medida').Value := 0;
                         Try
                                ParamByName('puestos').Value := StrToInt(Cells[ColumnByName['PUESTOS'].Index, var_fila]);
                         Except
                                ParamByName('puestos').Value := 1;
                         End;
                         Try
                                ParamByName('unid_por_tiquete').Value := StrToInt(Cells[ColumnByName['UNID_POR_TIQUETE'].Index, var_fila]);
                         Except
                                ParamByName('unid_por_tiquete').Value := 1;
                         End;
                         Try
                                ParamByName('nume_tiquetes').Value := StrToInt(Cells[ColumnByName['NUME_TIQUETES'].Index, var_fila]);
                         Except
                                ParamByName('nume_tiquetes').Value := 0;
                         End;
                         ParamByName('tiem_operacion').Value := StrToFloat(Cells[ColumnByName['TIEM_OPERACION'].Index, var_fila]);
                         ParamByName('tiem_total').Value := StrToFloat(Cells[ColumnByName['TIEM_TOTAL'].Index, var_fila]);
                         ExecSQL;
                   End;
               End;
              //Guardar los cambios
              CommitDBWork;
      Except
           //Error
           on E:Exception do
           Begin
                //Cancelar la transacción
                RollBackDBWork;
                //Mostrar mensaje de error
                ProgresoBarraEstado(cosOcurrioUnError);
                EjecutarMensajeError(e.Message +#13+ cosErrorEnOperacionNo+IntToStr(var_fila));
                //Abortar la operacion de guardado
                ProgresoBarraEstado;
                Abort;
           End;
      End;   
      //Actualizar las consultas
      RefreshDataSet(fram_lote.quer_lotes);           
      ProgresoBarraEstado;
end;
{****************************************************************
Procedimiento   : acti_cancelarExecute
Objetivo        : Ejecutar la acción de cancelar los cambios
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.acti_cancelarExecute(Sender: TObject);
begin
        if Confirmar(cosDeseaCancelar)=mrNo then Exit;
        tabl_guardar.Cancel;
        //Llamar los datos
        doCambiarSeleccion(Sender);
end;
{****************************************************************
Procedimiento   : doLlamarCorte
Objetivo        : Llamar las operaciones guardadas para este corte
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.doLlamarCorte(Sender: TObject);
Var
        var_auxi_integer        : Integer;
begin
  inherited;
  var_llamando := True;
  //Validar el grid
  LimpiarGrid(Grid, 1);
  Grid.RowCount := 1;
  //Verificar que los datos sean validos para llamar las op
  fram_avance.visible := fram_lote.comb_nume_lote.Text <> '';
  if (fram_refe_material.fram_comb_codi_material.Text = '') or
      (fram_refe_material.fram_comb_nomb_material.Text = '') or
      (fram_lote.comb_nume_lote.Text = '') Then
    Begin
       var_llamando := False;
       Exit;
    End;
  quer_sele_Corte.Close;
  //Parametros de la consulta
   if Not (myTabla_Ventana).Active then Exit;
  //Llamar los datos
  Try
      With quer_sele_corte, Grid do
      Begin
           AbrirDataSet(quer_sele_corte);
           //Numero de registros
           RowCount := RecordCount + 1;
           //Mostrar los valores
           For var_auxi_integer := 1 to RowCount - 1 do
           Begin
                    If RowCount>coiContadorMinimoBarraProgreso Then    
                        ProgresoBarraEstado(cosConsultando,var_auxi_integer,RowCount-1); 
                    If quer_procesos.Locate('cons_proceso', FieldByName('cons_proceso').AsInteger, []) Then
                          Cells[columnByName['PROCESO'].index, var_auxi_integer] := quer_procesos.FieldByName('nomb_proceso').asString;
                    Cells[columnByName['CODI_OPERACION'].index, var_auxi_integer] := FieldByName('codi_operacion').asString;
                    Cells[columnByName['NOMB_OPERACION'].index, var_auxi_integer] := FieldByName('nomb_operacion').asString;
                    If quer_cort_unid_medida.Locate('cons_cort_unid_medida', FieldByName('cons_cort_unid_medida').AsInteger, []) Then
                          Cells[columnByName['UNID_MEDIDA'].index, var_auxi_integer] := quer_cort_unid_medida.FieldByName('nomb_cort_unid_medida').asString;
                    Cells[columnByName['TIEM_OPERACION'].index, var_auxi_integer] := FormatFloat(FormatoFloat(False),(FieldByName('tiem_operacion').asFloat));
                    Cells[columnByName['PUESTOS'].index, var_auxi_integer] := FieldByName('PUESTOS').asString;
                    Cells[columnByName['UNID_POR_TIQUETE'].index, var_auxi_integer] := FieldByName('UNID_POR_TIQUETE').asString;
                    Next;
           End;
      End;
  Except
        on E:Exception do
        Begin
            ProgresoBarraEstado(cosOcurrioUnError);
            EjecutarMensajeError(e.message);
        End;
  End;
  quer_sele_corte.Close;
  ProgresoBarraEstado;
  DoHacerCalculos(Sender);
  var_llamando := False;
end;
{****************************************************************
Procedimiento   : acti_insertarExecute
Objetivo        : Insertar una fila
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.acti_insertarExecute(Sender: TObject);
begin
  //Si solamente está el título, adicionar
  If Grid.RowCount <= 1 Then
        acti_AdicionarExecute(Sender)      
  //Insertar
  Else
        Grid.InsertRows(grid.Selection.Top, grid.selection.bottom - grid.Selection.Top + 1);
  DoIniciarEdicion(Sender);
  DoHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_adicionarExecute
Objetivo        : Adicionar una fila al final
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.acti_adicionarExecute(Sender: TObject);
begin
  Grid.InsertRows(grid.RowCount, 1);
  Grid.Row := Grid.RowCount - 1;
  DoIniciarEdicion(Sender);
  DoHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_eliminarExecute
Objetivo        : Eliminar la operación seleccionada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.acti_eliminarExecute(Sender: TObject);
begin
  If Confirmar(cosDeseaEliminar) = mrYes then
  Begin
      Update;
      If (Grid.Selection.Bottom - Grid.Selection.Top + 1)>50
        Then ProgresoBarraEstado(Format(cosEliminando,['']));  
      Grid.RemoveRows(Grid.Selection.Top, Grid.Selection.Bottom - Grid.Selection.Top + 1);
      ProgresoBarraEstado;
  End;
  DoIniciarEdicion(Sender);
  doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_move_arribaExecute
Objetivo        : Mover la fila seleccionada hacia arriba
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.acti_move_arribaExecute(Sender: TObject);
begin
  If (grid.Selection.Top<=1) or (Grid.RowCount<=1) Then Exit; 
  Grid.MoveRow(grid.row, grid.row - 1);
  Grid.Row := Grid.Row - 1;
  doIniciarEdicion(Sender);
  doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_move_abajoExecute
Objetivo        : Mover la fila seleccionada hacia abajo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.acti_move_abajoExecute(Sender: TObject);
begin
  If (grid.Selection.Bottom=Grid.RowCount-1) or (Grid.RowCount<=1) Then Exit;
  Grid.MoveRow(grid.row, grid.row + 1);
  Grid.Row := Grid.Row + 1;
  doIniciarEdicion(Sender);
  doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_buscarExecute
Objetivo        : Ejecutar la acción de buscar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.acti_buscarExecute(Sender: TObject);
begin
  grid_find.Execute;
end;
{****************************************************************
Procedimiento   : doCambiarPaquete
Objetivo        : Actualizar el número de unidades por paquete
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_tiqu_corte.doCambiarPaquete(Sender: TObject);
begin
     if var_llamando then exit;
     doIniciarEdicion(Sender);
     doHacerCalculos(Sender);
end;

procedure Tffra_prod_tiqu_corte.acti_impr_tiquetesExecute(Sender: TObject);
begin
  Application.CreateForm(Tfwn1_prod_cort_impr_tiquetes, fwn1_prod_cort_impr_tiquetes);
  fwn1_prod_cort_impr_tiquetes.doEjectutarWizard(myTabla_ventana.FieldByName('cons_prod_lote').asInteger,
                myTabla_ventana.FieldByName('cons_refe_material').asInteger,
                fram_refe_material.quer_refe_materiales.FieldByName('cons_mate_referencia').asInteger);
end;
procedure Tffra_prod_tiqu_corte.data_guardarStateChange(Sender: TObject);
begin
        With tabl_guardar do
        Begin
            //No permitir cambiar lote o material si está editando
            SetControlEnabled(pane_seleccion, Not(State in [dsEdit, dsInsert]));
        End;
end;
{****************************************************************
Procedimiento   : fram_lotecomb_nume_loteChange
Objetivo        : Actualizar los controles dependientes del lote
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_tiqu_corte.fram_lotecomb_nume_loteChange(
  Sender: TObject);
begin
  //Actualizar el panel de avance
  fram_avance.Visible := Not(fram_refe_material.fram_comb_codi_material.EstaVacio) and
            Not(fram_lote.comb_nume_lote.EstaVacio);
  if fram_avance.Visible then
     fram_avance.doEjecutarFrame(myTabla_ventana.FieldByName('cons_prod_lote').asInteger,
                fProcesoActual);
end;

end.

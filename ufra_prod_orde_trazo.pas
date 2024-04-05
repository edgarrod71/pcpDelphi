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
        Unit            : ufra_prod_orde_trazo
        Objetivo        : Frame de loteo de ordenes de trazo
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Octubre 20 de 2004
        Versión         : pcp4003
*******************************************************************}

unit ufra_prod_orde_trazo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Menus, Controls, Forms, Dialogs, ufra_prod_espi_totales,
  Db, TB2Item, TBX, DBActns, ActnList, DBTables, RxMemDS, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ufra_prod_sele_lote, ufra_refe_material, ufra_prod_sele_espiga, TB2Dock,
  TB2Toolbar, ufra_prod_resp_lote_proceso, Grids, BaseGrid, AdvGrid,
  AdvCGrid, SCLColumnGrid, ExtCtrls, ufra_mens_atencion,
  ufra_prod_orde_unidades, Boxes, PCPFrame, dfsSplitter, SCLTabs,
  TBXDkPanels, TBXButtonSCL, kbmMemTable;

type
  Tffra_prod_orde_trazo = class(TFrame)
    tabl_prod_ordenes: TTable;
    data_prod_ordenes: TDataSource;
    myTabla_Ventana: TRxMemoryData;
    myData_Ventana: TDataSource;
    quer_inse_espiga: TQuery;
    myTabla_Ventanacons_refe_material: TIntegerField;
    myTabla_Ventanacons_prod_orden: TIntegerField;
    myTabla_Ventanacons_proceso: TIntegerField;
    myTabla_Ventananume_lote: TIntegerField;
    myTabla_Ventanacons_prod_espiga: TIntegerField;
    myTabla_Ventanacons_prod_lote: TIntegerField;
    acti_espigas: TActionList;
    acti_nuev_espiga: TAction;
    quer_elim_espiga: TQuery;
    acti_elim_espiga: TAction;
    acti_cancelar: TDataSetCancel;
    acti_guardar: TDataSetPost;
    tabl_guardar: TRxMemoryData;
    data_guardar: TDataSource;
    quer_dele_unidades: TQuery;
    quer_sele_capas: TQuery;
    quer_dele_capas: TQuery;
    quer_inse_capas: TQuery;
    quer_sele_unidades: TQuery;
    quer_inse_unidades: TQuery;
    acti_ver_totales: TAction;
    page: TSCLPageControl;
    page_proceso: TSCLTabSheet;
    page_avance: TSCLTabSheet;
    fram_unidades: TPCPFrame;
    fram_orde_unidades: Tffra_prod_orde_unidades;
    fram_splitter: TdfsSplitter;
    fram_pane_lotes: TPCPFrame;
    fram_mens_material: Tffra_mens_atencion;
    pane_grids: TPanel;
    dfsSplitter2: TdfsSplitter;
    grid: TSCLColumnGrid;
    grid_unidades: TSCLColumnGrid;
    fram_avance: Tffra_prod_resp_lote_proceso;
    acti_lote_nuevo: TAction;
    acti_lote_eliminar: TAction;
    quer_lote_nuevo: TQuery;
    quer_lote_eliminar: TQuery;
    page_tota_lote: TSCLTabSheet;
    quer_lote_totales: TQuery;
    scro_tota_lotes: TScrollBox;
    padr_page_lotes: TSCLPageControl;
    dxTabSheet1: TSCLTabSheet;
    acti_tabs: TActionList;
    fram_pop_lotes: TTBXPopupMenu;
    tabl_lotes: TRxMemoryData;
    fram_nume_lote: Tffra_mens_atencion;
    quer_faltantes: TQuery;
    fram_dock_lotes: TTBXDock;
    fram_tool_lotes: TTBXToolbar;
    fram_cont_lote_refe_material: TTBControlItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBControlItem1: TTBControlItem;
    TBXItem8: TTBXItem;
    TBXItem7: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    fram_refe_material: Tffra_refe_material;
    fram_lote: Tffra_prod_sele_lote;
    TBXToolbar1: TTBXToolbar;
    TBControlItem2: TTBControlItem;
    TBXItem3: TTBXItem;
    TBXItem2: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    fram_boto_lote_volv_llamar: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    TBControlItem3: TTBControlItem;
    fram_espigas: Tffra_prod_sele_espiga;
    fram_aten_lote_finalizado: Tffra_mens_atencion;
    acti_sugerir: TAction;
    TBXItem10: TTBXItem;
    TBXItem9: TTBXItem;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    TBXItem13: TTBXItem;
    TBXItem14: TTBXItem;
    TBXSeparatorItem10: TTBXSeparatorItem;
    TBXItem15: TTBXItem;
    TBXSeparatorItem11: TTBXSeparatorItem;
    TBXItem16: TTBXItem;
    TBXItem17: TTBXItem;
    TBXItem18: TTBXItem;
    TBXSeparatorItem12: TTBXSeparatorItem;
    quer_upda_capa_simulacion: TQuery;
    pane_material: Tffra_mens_atencion;
    TBControlItem4: TTBControlItem;
    fram_labe_consumo: TSCLDBLabel;
    TBControlItem5: TTBControlItem;
    edit_consumo: TdxDBCurrencyEdit;
    TBXSeparatorItem2: TTBXSeparatorItem;
    acti_impr_todo: TAction;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXItem1: TTBXItem;
    grid_impresion: TSCLColumnGrid;
    tabl_info_detalle: TTable;
    tabl_info_detalleCONS_PROD_LOTE: TIntegerField;
    tabl_info_detalleCONS_REGISTRO: TIntegerField;
    tabl_info_detalleNOMB_COLOR: TStringField;
    tabl_info_detalleTALL1: TStringField;
    tabl_info_detalleTALL2: TStringField;
    tabl_info_detalleTALL3: TStringField;
    tabl_info_detalleTALL4: TStringField;
    tabl_info_detalleTALL5: TStringField;
    tabl_info_detalleTALL6: TStringField;
    tabl_info_detalleTALL7: TStringField;
    tabl_info_detalleTALL8: TStringField;
    tabl_info_detalleTALL9: TStringField;
    tabl_info_detalleTALL10: TStringField;
    tabl_info_detalleTALL11: TStringField;
    tabl_info_detalleTALL12: TStringField;
    tabl_info_detalleTALL13: TStringField;
    tabl_info_detalleTALL14: TStringField;
    tabl_info_detalleTALL15: TStringField;
    tabl_info_detalleTALL16: TStringField;
    tabl_info_detalleTALL17: TStringField;
    tabl_info_detalleTALL18: TStringField;
    tabl_info_detalleTOTAL: TStringField;
    tabl_informe: TTable;
    tabl_informecons_prod_lote: TIntegerField;
    tabl_informeNOMB_PROD_LOTE: TStringField;
    tabl_informeUNIDADES: TStringField;
    acti_impr_form_liqu_unid_cortadas: TAction;
    TBXItem19: TTBXItem;
    acti_impr_espigas: TAction;
    TBXItem20: TTBXItem;
    grid_repo_espigas: TSCLColumnGrid;
    quer_repo_sele_unidades: TQuery;
    quer_repo_espigas: TQuery;
    tabl_info_espigas: TTable;
    tabl_info_espigascons_prod_lote: TIntegerField;
    tabl_info_espigascons_prod_espiga: TIntegerField;
    tabl_info_detalleCONS_PROD_ESPIGA: TIntegerField;
    quer_repo_Sele_Capas: TQuery;
    tabl_info_espigasnomb_prod_espiga: TStringField;
    tabl_info_espigasnomb_prod_lote: TStringField;
    pop_unidades: TTBXPopupMenu;
    chec_unid_diferencia: TTBXItem;
    chec_unid_loteadas: TTBXItem;
    tabl_auxi_impresion: TkbmMemTable;
    tabl_auxi_impresioncons_tabla: TIntegerField;
    tabl_auxi_impresionnomb_tabla: TStringField;
    procedure gridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure data_prod_ordenesDataChange(Sender: TObject; Field: TField);
    procedure doLlamarEspigas(Sender: TObject);
    procedure doMostrarGrid(
      Sender: TObject);
    procedure myTabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure doHacerCalculos(Sender: TObject);
    procedure gridCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure gridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure fram_espigasquer_espigasBeforeOpen(DataSet: TDataSet);
    procedure acti_nuev_espigaExecute(Sender: TObject);
    procedure acti_nuev_espigaUpdate(Sender: TObject);
    procedure acti_elim_espigaExecute(Sender: TObject);
    procedure acti_elim_espigaUpdate(Sender: TObject);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tabl_guardarBeforePost(DataSet: TDataSet);
    procedure acti_guardarExecute(Sender: TObject);
    procedure acti_cancelarExecute(Sender: TObject);
    procedure data_guardarStateChange(Sender: TObject);
    procedure tabl_guardarAfterCancel(DataSet: TDataSet);
    procedure grid_unidadesCanEditCell(Sender: TObject; ARow,
      ACol: Integer; var CanEdit: Boolean);
    procedure grid_unidadesGetCellColor(Sender: TObject; ARow,
      ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure acti_ver_totalesExecute(Sender: TObject);
    procedure acti_ver_totalesUpdate(Sender: TObject);
    procedure quer_sele_unid_faltantesBeforeOpen(DataSet: TDataSet);
    procedure doActualizarLote(Sender: TObject);
    procedure acti_lote_nuevoExecute(Sender: TObject);
    procedure acti_lote_eliminarExecute(Sender: TObject);
    procedure acti_lote_nuevoUpdate(Sender: TObject);
    procedure acti_lote_eliminarUpdate(Sender: TObject);
    procedure fram_espigascomb_espigaChange(Sender: TObject);
    procedure fram_refe_materialfram_comb_codi_materialChange(
      Sender: TObject);
    procedure doActualizarPageTotales(Sender: TObject);
    procedure fram_aten_lote_finalizadofram_labelClick(Sender: TObject);
    procedure doLoadPageLotes(Sender: TObject);
    procedure padr_page_lotesChange(Sender: TObject);
    procedure doUbicarPaginaLote(Sender: TObject);
    procedure doCambiarPaginaAccion(Sender: TObject);
    procedure doLlamarUnidadesLoteadas(Sender: TObject);
    procedure fram_orde_unidadesgridGetCellColor(Sender: TObject; ARow,
      ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure gridGridHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: String);
    procedure doCalcularUnidadesFaltantes(Sender: TObject);
    procedure acti_sugerirExecute(Sender: TObject);
    procedure acti_impr_todoExecute(Sender: TObject);
    procedure acti_impr_todoUpdate(Sender: TObject);
    procedure acti_impr_form_liqu_unid_cortadasExecute(Sender: TObject);
    procedure acti_impr_espigasExecute(Sender: TObject);
    procedure grid_repo_espigasDblClick(Sender: TObject);
    procedure padr_page_lotesChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure botoClick(Sender: TObject);
  private
    { Private declarations }
    fProcesoActual        : Integer;
    varDestruyendoPaginas   : Boolean;
    varCambiandoLote        : Boolean;
    varItemsFijosPopGrid    : Integer;
    var_simu_total  :   Boolean;
    Procedure SetProcesoActual(Value : Integer);
    Procedure doPrepararTablasReporteUnidades(peCon_Valores : Boolean);
    Procedure doPrepararTablaSeleccionLotes;
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Procedure SetDataSet(aDataSet : TDataSet);
    Property ProcesoActual : Integer Read fProcesoActual Write SetProcesoActual;
    Function ColumnaGridUnidades(peTagColumnaGrid : Integer) : Integer;
  end;


Const
        coi_nume_fila_total = 3;  //Numero de filas adicionales para totales en el grid de planeación de lotes
        coi_nume_fila_simulacion = 3; //Numero de filas adicionales para la simulación de capas en el grid de planeación de lotes
        //Ubicación de las filas (simulación) (de arriba hacia abajo)
        coi_fila_simu_otro_lotes = 1;
        coi_fila_simu_requerido = 2;
        coi_fila_simu_capas = 3;
        //Ubicación de las filas (Totales) (de abajo hacia arriba)
        coi_fila_tota_diferencia = 1;
        coi_fila_tota_este_lote = 2;
        coi_fila_tota_tallas = 3;
        
        
  
implementation

uses _func_varias, _cons_pcp, _MDI, _func_pcp, un1_prod_orde_traz_total,
  ufra_prod_orde_unid_lote, _cons_colores, _vari_pcp, urn1_prod_orde_trazo,
  urn1_prod_orde_traz_liqu_unidades, _func_grids,
  urn1_prod_orde_Traz_espigas;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_orde_trazo.Create(Owner : TComponent);
Begin
    //Heredar la creación
    Inherited Create(Owner);
    varDestruyendoPaginas := False;
    varItemsFijosPopGrid := fram_pop_lotes.Items.Count;
    varCambiandoLote := False;
    var_simu_total := True;
    SetProcesoActual(1);
    page.ActivePage := page_proceso;
    page_tota_lote.TabVisible := False;
    AutoHints(Self);
    //Colores
    pane_material.SetHardColors;
    fram_nume_lote.SetHardColors;
    fram_aten_lote_finalizado.SetWarningColors;
    fram_mens_material.SetWarningColors;
    //Abrir la tabla temporal y generar un registro
    mytabla_ventana.Open;
    mytabla_ventana.Insert;
    mytabla_ventana.Post;
    //Abrir la tabla temporal para controlar los cambios
    tabl_guardar.open;
    //Inicializar los registros propios
    fram_orde_unidades.CanEdit := False;
End;

{****************************************************************
Procedimiento   : SetProcesoActual
Objetivo        : Asigna el valor del proceso actual a la cual
                  pertenece o ejecuta el frame.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_orde_trazo.SetProcesoActual(Value : Integer);
Begin
    fProcesoActual := Value;
    //Asignar la etapa a los query
    //fram_orde_unidades.quer_elim_unidades.paramByName('cons_proceso').Value := Value;
    //fram_orde_unidades.quer_inse_unidades.ParamByName('cons_proceso').Value := Value;
End;
{****************************************************************
Procedimiento   : gridGetAlignment
Objetivo        : Centrar los titulos del grid de loteo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.gridGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  With Grid do
  Begin
      //Centrar los títulos
      If (ARow = 0) Then hAlign := taCenter;
  End;
end;

{****************************************************************
Procedimiento   : SetDataSet
Objetivo        : Asignar un dataSet a la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_orde_trazo.SetDataSet(aDataSet : TDataSet);
Begin
     //Asignar el dataset
     data_prod_ordenes.DataSet := aDataSet;
     //Validar el dataSet
     If aDataSet = Nil then Exit;
End;
{****************************************************************
Procedimiento   : data_prod_ordenesDataChange
Objetivo        : Actualizar la ventana cuando cambie
                  el registro actual
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.data_prod_ordenesDataChange(
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
        myTabla_ventana.FieldByName('cons_prod_espiga').Clear;
        //Abrir la consulta de materiales
        if not fram_refe_material.quer_refe_materiales.Active then
          AbrirDataSet(fram_refe_material.quer_refe_materiales);
        //Llamar las unidades
        fram_orde_unidades.DoEjecutarFrame(var_cons_prod_orden);
        //Llamar espigas
        doLlamarEspigas(Sender);
        //Insertar las columnas adicionales en el Grid de unidades de la orden
        fram_orde_unidades.doColumnaAdicional(Sender);
end;
{****************************************************************
Procedimiento   : doLlamarEspigas
Objetivo        : Llamar la asignación por espigas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.doLlamarEspigas(Sender: TObject);
Var     
        var_colu        : Integer;
        var_fila        : Integer;
        var_existe      : Boolean;
begin
  inherited;
  //Seleccionar GRID
  Try
        With Grid do
        Begin
              //Inicializar los grid
              //Grid de loteo
              LimpiarGrid(Grid, 1);
              Grid.RowCount :=  1 + coi_nume_fila_simulacion;
              //Destruir las columnas adicionales
              For var_colu := ColumnByName['LARGO'].Index + 1 to ColCount - 1 do
                Columns[ColumnByName['LARGO'].Index + 1].Destroy;
              //Grid de unidades totales
              With grid_unidades do
              Begin
                  LimpiarGrid(Grid_Unidades, 1);
                  RowCount := 1;
                  //Destruir las columnas adicionales
                  For var_colu := ColumnByName['LARGO'].Index + 1 to ColCount - 1 do
                    Columns[ColumnByName['LARGO'].Index + 1].Destroy;
              End;
              //Llamar las tallas
              for var_colu := 1 To fram_orde_unidades.nume_tallas   do
              Begin
                         //Si no es una columna de faltante de la talla, insertarla
                         if (fram_orde_unidades.Grid.Columns[var_colu + fram_orde_unidades.grid.ColumnByName['UNIDADES'].Index].Tag > -1) Then
                           Begin
                             //Insertar la talla en el loteo
                             ColCount := ColCount + 1;
                             Columns[ColCount - 1].Header :=
                                    fram_orde_unidades.grid.Columns[fram_orde_unidades.grid.ColumnByName['UNIDADES'].Index + var_colu].Header;
                             Columns[ColCount - 1].Tag :=
                                    fram_orde_unidades.grid.Columns[fram_orde_unidades.grid.ColumnByName['UNIDADES'].Index + var_colu].Tag;
                             Columns[ColCount - 1].Alignment := taRightJustify;
                             Columns[ColCount - 1].Editor := edPositiveNumeric;
                           End;
              End;
              //Agregar una columna para el total de tallas
              ColCount := ColCount + 1;
              Columns[ColCount - 1].Header := cosTotal;
              Columns[ColCount - 1].Alignment := taRightJustify;
              SetTotalColumn(Columns[ColCount - 1]);
              //Crear las filas de los colores, de acuerdo con la matriz de unidades
              For var_fila := 1 to fram_orde_unidades.Grid.RowCount - 2 do
              Begin
                        //Insertar el color
                        RowCount := RowCount + 1;
                        Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - 1] :=
                            fram_orde_unidades.Grid.Cells[fram_orde_unidades.Grid.ColumnByName['NOMB_COLOR'].Index, var_fila];
                        Cells[ColumnByName['CONS_REFE_COLOR'].Index, RowCount - 1] :=
                            fram_orde_unidades.Grid.Cells[fram_orde_unidades.Grid.ColumnByName['CONS_REFE_COLOR'].Index, var_fila];
              End;
              //Abrir la consulta de adicionales (capas)
              With quer_sele_capas do
              Begin
                   if active then close;
                   Open;
                   While not eof do
                   Begin
                           //Buscar la fila (pero en el grid superior)
                           var_fila := coi_nume_fila_simulacion + 1;
                           var_existe := False;
                           Repeat
                                 if (Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila] <> '') Then
                                    if (StrToInt(Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila])=FieldByName('cons_refe_color').AsInteger) Then
                                            var_existe := True
                                    Else
                                            inc(var_fila);
                           Until (var_fila > RowCount - 1) or (var_existe);
                           //Si existe, escribir el valor
                           if var_existe then
                              Cells[ColumnByName['CAPAS'].Index, var_fila] := FieldByName('capas').asString;
                           //Siguiente registro
                           Next;
                   End;
                   Close;
              End;
              //Llamar las unidades loteadas
              With quer_sele_unidades do
              Begin
                   If Active then Close;
                   Open;
                   While not eof do
                   Begin
                       //Buscar la columna
                       var_colu := ColumnByName['LARGO'].Index + 1;
                       var_existe := False;
                       Repeat
                             if Columns[var_colu].Tag = FieldByName('cons_grup_tall_detalle').AsInteger then
                                var_existe := True
                             Else
                                inc(var_colu);
                       Until (var_colu >= ColCount - 1) or (var_existe);
                       if var_existe then
                       Begin
                           //Buscar la fila
                           var_fila := coi_nume_fila_simulacion + 1;
                           var_existe := False;
                           Repeat
                                 if (Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila] <> '') Then
                                    if (StrToInt(Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila])=FieldByName('cons_refe_color').AsInteger) Then
                                            var_existe := True
                                    Else
                                            inc(var_fila);
                           Until (var_fila > RowCount - 1) or (var_existe);
                           //Si existe, escribir el valor
                           if var_existe then
                                    Cells[var_colu, var_fila] := IntToStr(FieldByName('cant_tallas').AsInteger);
                           //Siguiente registro
                       End;
                       Next;
                   End;
                   Close;
              End;
              //Adicionar las filas para los totales
              RowCount := RowCount + coi_nume_fila_total;
              //Titulos de las filas adicionales (de Simulacion)
              Cells[ColumnByName['NOMB_COLOR'].Index, coi_fila_simu_requerido] := cosTotalRequerido;
              Cells[ColumnByName['NOMB_COLOR'].Index, coi_fila_simu_capas] := cosProporcion;
              Cells[ColumnByName['NOMB_COLOR'].Index, coi_fila_simu_otro_lotes] := cosTotalOtrosLotes;
              //Titulos de las filas adicionales (de Totales)
              Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - coi_fila_tota_tallas] := cosTotalTallas;
              Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - coi_fila_tota_este_lote] := cosTotalEsteLote;
              Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - coi_fila_tota_diferencia] := cosDiferencia;
              //Dar formato al grid de unidades totales
              With grid_unidades do
              Begin
                  //Cargar los colores
                  for var_fila := coi_nume_fila_simulacion + 1 to Grid.RowCount - 1 - coi_nume_fila_total do
                  Begin
                       //Incrementar
                       RowCount := RowCount + 1;
                       //Escribir el color
                       Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - 1] := Grid.Cells[ColumnByName['NOMB_COLOR'].Index, var_fila];
                  End;
                  //Insertar una fila para totales
                  RowCount := RowCount + 1;
                  Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - 1] := cosTotal;
                  //Cargar las tallas
                  for var_colu := grid.ColumnByName['LARGO'].Index + 1 to Grid.ColCount - 1 do
                  Begin
                       //Incrementar
                       ColCount := ColCount + 1;
                       //Alineación de los números
                       Columns[ColCount - 1].Alignment := taRightJustify;
                       //Escribir el titulo
                       Cells[ColCount - 1, 0] := grid.Cells[var_colu, 0];
                       //Guardar el Tag
                       Columns[ColCount - 1].Tag := grid.Columns[var_colu].Tag;
                  End;
                  //Cambiar el titulo de los totales
                  Cells[ColCount - 1, 0] := cosTotal;
              End;
              //Escribir el número de capas de la simulación
              Cells[Grid.ColumnByName['CAPAS'].Index, coi_fila_simu_capas] := fram_espigas.quer_espigas.FieldByName('capa_simulacion').asString;
              //Recalcular la matriz
              DoHacerCalculos(Sender);
        End;
  Except
       //Error
       On e : Exception do
       Begin
            EjecutarMensajeError(e.Message);
       End;
  End;
end;
{****************************************************************
Procedimiento   : doMostrarGrid
Objetivo        : Verificar si se puede mostrar el grid
                  del loteo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.doMostrarGrid(
  Sender: TObject);
begin
  //Seleccionar la primera espiga, si es exisete
  if (fram_refe_material.fram_comb_nomb_material.Text <> '') and (fram_lote.comb_nume_lote.text <> '')
    and (fram_espigas.quer_espigas.RecordCount > 0) Then
      fram_espigas.comb_espiga.keyValue := fram_espigas.quer_espigas.FieldByName('cons_prod_espiga').asInteger;
  //Mostrar el grid de espigas solo si hay material seleccionado
  pane_Grids.Visible := (fram_refe_material.fram_comb_nomb_material.Text <> '') and (fram_lote.comb_nume_lote.text <> '') and
                (fram_espigas.comb_espiga.text <> '');
  fram_mens_material.Visible := not pane_Grids.Visible;
  fram_avance.visible := (fram_lote.comb_nume_lote.text <> '');
  padr_page_lotes.Visible := (fram_refe_material.fram_comb_nomb_material.Text <> '');
  //Si hay material y lotes, pero el lote es vacío, seleccionar un lote
  if (fram_refe_material.fram_comb_nomb_material.Text <> '')
    and (fram_lote.quer_lotes.Active)
    and (fram_lote.quer_lotes.RecordCount > 0)
    and (fram_lote.comb_nume_lote.EstaVacio) then
    Begin
       fram_lote.quer_lotes.First;
       fram_lote.comb_nume_lote.KeyValue := fram_lote.quer_lotes.FieldByName('cons_prod_lote').asInteger;
       doActualizarLote(Sender);
       Exit;
    End;
  //Actualizar la tabla temporal
  if (myTabla_ventana.State in [dsEdit, dsInsert]) Then myTabla_Ventana.Post;
  //Llamar los datos guardado
  if pane_Grids.Visible then
            doLlamarEspigas(Sender);
  if fram_avance.Visible then fram_avance.doEjecutarFrame(myTabla_ventana.FieldByName('cons_prod_lote').asInteger,
                fProcesoActual);
  //Tab de totales por lote
  page_tota_lote.TabVisible := (fram_refe_material.fram_comb_nomb_material.Text <> '');
  //Panel de aviso de panel finalizado
  fram_aten_lote_finalizado.Visible := (fram_avance.edit_avance.Value = 100);
  //Calcular las unidades faltantes de la orden
  doCalcularUnidadesFaltantes(Sender);
  //Hacer la ultima columna totales
  SetTotalColumn(Grid.Columns[Grid.ColCount - 1]);
end;

procedure Tffra_prod_orde_trazo.myTabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
        //Asignar el número de la orden
        if (data_prod_ordenes.DataSet = Nil) and (Not data_prod_ordenes.DataSet.Active) Then
        myTabla_Ventana.FieldByName('cons_prod_orden').Value := data_prod_ordenes.DataSet.FieldByName('cons_prod_orden').AsInteger;
        //Asignar el proceso
        myTabla_ventana.FieldByName('cons_proceso').Value := fProcesoActual;
end;
{****************************************************************
Procedimiento   : doHacerCalculos
Objetivo        : Hacer los cálculos del loteo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.doHacerCalculos(Sender: TObject);
Var
        var_fila : Integer;
        var_tota_tallas : Integer;
        var_tota_unidades : Integer;
        var_colu        : Integer;
        var_faltante    : Integer;
        var_capas       : Integer;
        var_tallas      : Integer;
        var_unidades    : Integer;
        var_capa_color  : Integer;
        var_i   : Integer;
        var_float   : Float;
        var_tota_faltante : Integer;
begin
  inherited;
  With Grid do
  Begin
        //Número de capas para la simulación
//        Cells[ColumnByName['CAPAS'].Index, coi_fila_simu_capas] := tabla_ventana.FieldByName('capas').AsString;
        //Valor de la fila de requeridos
        var_tota_tallas := 0;
        var_tota_unidades := 0;
        var_tota_faltante := 0;
        var_i   := 0;
        For var_colu := ColumnByName['LARGO'].Index + 1 to ColCount - 2 do
        Begin
                //Unidades requeridas
                Try
                   var_unidades := StrToInt(fram_orde_unidades.grid.cells[(var_colu + (var_i)), fram_orde_unidades.grid.RowCount -1]);
                Except
                   var_unidades := 0;
                End;
                //Faltante de la orden
                Try
                   var_faltante := StrToInt(fram_orde_unidades.grid.cells[(var_colu + (var_i + 1)), fram_orde_unidades.grid.RowCount -1]);
                Except
                   var_faltante := 0;
                End;
                //Incrementar la variable auxiliar para no tomar la columna de faltantes
                Var_i := var_i + 1;
                //Escribir el total requerido
                Cells[var_colu, coi_fila_simu_otro_lotes] := IntToStr(var_unidades - var_faltante);

                Cells[var_colu, coi_fila_simu_requerido] := IntToStr(var_faltante);
                //Sumarlos
                var_tota_tallas := var_tota_tallas + var_unidades - var_faltante;
                var_tota_unidades := var_tota_unidades + var_unidades;
                var_tota_faltante := var_tota_faltante + var_faltante;
        End;
        //Escribir los totales
        Cells[ColCount - 1, coi_fila_simu_otro_lotes] := IntToStr(var_tota_tallas);
        Cells[ColCount - 1, coi_fila_simu_requerido] := IntToStr(var_tota_faltante);
        //Calcular el número de capas (de la simulacion)
        Try
            var_capas := StrToInt(Cells[ColumnByName['CAPAS'].Index, coi_fila_simu_capas]);
        Except
            var_capas := 0;
        End;
        //TotaLes por Lote (número de tallas)
        for var_fila := 1 + coi_nume_fila_simulacion to RowCount - 1 - coi_nume_fila_total do
        Begin
            //Calcular el número de tallas
            var_tota_Tallas := 0;
            //Calcular el número de capas del color
            Try
                var_capa_color := StrToInt(Cells[ColumnByName['CAPAS'].Index, var_fila]);
            Except
                var_capa_color := 0;
            End;
            For var_colu := ColumnByName['LARGO'].Index + 1 to ColCount - 2 do
            Begin
                 //Validar que la celda no esté vacía
                 if Cells[var_colu, var_fila] <> ''  Then
                 Try
                     var_tota_tallas := var_tota_tallas + StrToInt(Cells[var_colu, var_fila]);
                 Except
                 End;
                 //Escribir el total en el grid de unidades totales
                 Try
                        var_unidades := StrToInt(Cells[var_colu, var_fila]);
                 Except
                        var_unidades := 0;
                 End;
                 //RC13-UNIDADES LOTEADAS COMO FALTANTE DE LA ORDEN
                 If chec_unid_diferencia.Checked Then
                 Begin
                   Try
                       var_faltante := StrToInt(fram_orde_unidades.grid.Cells[var_colu + (var_colu - (fram_orde_unidades.grid.ColumnByName['UNIDADES'].Index + 1)) + 1, var_fila - coi_nume_fila_simulacion]);
                   Except
                       var_faltante := 0;
                   End;
                   Grid_unidades.Cells[var_colu - ColumnByName['LARGO'].Index + grid_unidades.ColumnByName['LARGO'].Index,
                            var_fila - coi_nume_fila_simulacion] := IntToStr(var_faltante  - (var_capa_color * var_unidades));
                 End
                 Else
                 Begin
                   chec_unid_loteadas.Checked := True;
                   Grid_unidades.Cells[var_colu - ColumnByName['LARGO'].Index + grid_unidades.ColumnByName['LARGO'].Index,
                          var_fila - coi_nume_fila_simulacion] := IntToStr(var_capa_color * var_unidades);
                 End;
            End;
            //Escribir el no. de tallas
            Cells[ColCount - 1, var_fila] := IntToStr(var_tota_tallas);
            //Calcular los largos
            Cells[ColumnByName['LARGO'].Index, var_fila] :=
                FormatFloat('0.00', var_tota_tallas * fram_refe_material.quer_refe_materiales.FieldByName('consumo').asFloat);
            //Calcular la fila de simulación
            for var_colu := ColumnByName['LARGO'].Index + 1 to ColCount - 1 do
            Begin
                //Obtener el número de unidades
                Try
                        var_i := StrToInt(Cells[var_colu, coi_fila_simu_requerido]);
                Except
                        var_i := 0;
                End;
                if var_capas > 0 Then
                        Cells[var_colu, coi_fila_simu_capas] := FormatFloat('0.00', var_i / var_capas)
                Else
                        Cells[var_colu, coi_fila_simu_capas] := '0.00';
            End;
        End;
        //Calcular las filas de totales
        For var_colu := ColumnByName['LARGO'].Index + 1 to ColCount - 1 do
        Begin
                var_tota_tallas := 0;
                var_tota_unidades := 0;
                For var_fila := coi_nume_fila_simulacion + 1 to RowCount - 1 - coi_nume_fila_total do
                Begin
                     //Validar que la celda no esté vacía
                     if Cells[var_colu, var_fila] <> ''  Then
                     Begin
                           //Calcular las capas del lote
                           Try
                               var_capas := StrToInt(Cells[ColumnByName['CAPAS'].Index, var_fila]);
                           Except
                                var_capas := 0;
                           End;
                           //Calcular tallas
                           Try
                               var_tallas := StrToInt(Cells[var_colu, var_fila]);
                           Except
                                var_tallas := 0;
                           End;
                           //Incrementar las tallas
                           var_tota_tallas := var_tota_tallas + var_tallas;
                           //Incrementar las unidades
                           var_tota_unidades := var_tota_unidades + (var_capas * var_tallas);
                     End;
                End;
                Cells[var_colu, RowCount - 3] := IntToStr(var_tota_tallas);
                Cells[var_colu, RowCount - 2] := IntToStr(var_tota_unidades);
                Try
                        Cells[var_colu, RowCount - 1] := IntToStr(var_tota_unidades - StrToInt(Cells[var_colu, coi_fila_simu_requerido]));
                Except
                        Cells[var_colu, RowCount - 1] :=  '0';
                End;
        End;
        //Calcular el largo total del trazo
        var_float := 0;
        For var_fila := coi_nume_fila_simulacion + 1 to RowCount - coi_nume_fila_total - 1 do
           Try
               var_float := var_float + StrToFloat(Cells[ColumnByName['LARGO'].Index, var_fila]);
           Except
           End;
        Cells[ColumnByName['LARGO'].Index, RowCount - coi_fila_tota_este_lote] := FormatFloat(',0.00', var_float);
        //Totalizar el grid de unidades
        totalizarGrid(grid_Unidades, Grid_unidades.ColumnByName['LARGO'].Index, 1);
  End;
end;
{****************************************************************
Procedimiento   : gridCanEditCell
Objetivo        : Controlar la edición de las celdas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.gridCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
  CanEdit := ((Grid.RowCount >= 2 + coi_nume_fila_simulacion + coi_nume_fila_total) and
                (Grid.Row >= coi_nume_fila_simulacion + 1) and (Grid.Row <= Grid.RowCount - 1 - coi_nume_fila_total))
                or ((ARow = coi_fila_simu_capas) and (Acol = Grid.ColumnByName['CAPAS'].Index))
                and (fram_avance.edit_avance.value <> 100);
end;
{****************************************************************
Procedimiento   : gridGetCellColor
Objetivo        : Dar color a las celdas de espigas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.gridGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
Var
        var_integer : Integer;
        var_colu    : Integer;
begin
  inherited;
  With grid do
  Begin
      //Color diferente a a las celdas no editables
      If (Acol >= ColumnByName['CAPAS'].Index) and
         Not ((ARow > coi_nume_fila_simulacion ) and (ARow < RowCount  - coi_nume_fila_total))
           and (ARow > 0) Then
                aBrush.Color := cocXP;
      //Negrilla en las capas
      if acol = ColumnByName['CAPAS'].Index then aFont.Style := [fsBold];
      //Azul en el requerido y el loteado
      If (ARow = coi_fila_simu_requerido) or (aRow = RowCount - coi_fila_tota_este_lote) Then
        aFont.Color := cocTotalText;
      //Diferencia
      If (ARow = RowCount - 1) and (Cells[ACol, aRow] <> '') Then
      Begin
          Try
                var_integer := StrToInt(Cells[ACol, aRow]) ;
          Except
                var_integer := 0;
          End;
          If var_integer < 0 Then aBrush.Color := clRed
          else if var_integer> 0 Then aBrush.Color := clGreen;
          if var_integer <> 0 Then aFont.Color := clWhite;
      End;
      //Color en las celdas en las que no faltan unidades
      if (aCol > ColumnByName['LARGO'].Index) and (ACol < ColCount - 1) and
         ((ARow > coi_nume_fila_simulacion ) and (ARow < RowCount  - coi_nume_fila_total)) Then
        Begin
            //Buscar la columna en las unidades
            var_colu := -1;
            For var_integer := fram_orde_unidades.Grid.ColumnByName['UNIDADES'].Index + 1 to
               fram_orde_unidades.Grid.ColCount - 2 do
               Begin
                   if (fram_orde_unidades.Grid.columns[var_integer].Tag = (Columns[aCol].Tag * -1)) Then
                     Begin
                         var_colu := var_integer;
                         Break;
                     End;
               End;
             //Verificar si la columna fue encontrada
             if var_colu > -1 then
                //Verificar si tiene unidades pendientes
                if (fram_orde_unidades.Grid.Cells[var_colu, aRow - coi_nume_fila_simulacion] = '') Then
                  aBrush.Color := cocXP
        End;
  End;
end;
{****************************************************************
Procedimiento   : fram_espigasquer_espigasBeforeOpen
Objetivo        : Generar los parámetros de la tabla de espigas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.fram_espigasquer_espigasBeforeOpen(
  DataSet: TDataSet);
begin
        //Asignar los parámetros
        With fram_espigas.quer_espigas do
        Begin
             paramByName('cons_prod_lote').Value :=myTabla_ventana.FieldByName('cons_prod_lote').AsInteger;
             paramByName('cons_refe_material').Value := myTabla_Ventana.FieldByName('cons_refe_material').AsInteger;
             paramByName('cons_proceso').Value := fProcesoActual;
        End;
end;
{****************************************************************
Procedimiento   : acti_nuev_espigaExecute
Objetivo        : Crear una nueva espiga
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_nuev_espigaExecute(Sender: TObject);
begin
        //Asignar los parámetros
        With quer_inse_espiga do
        Begin
             paramByName('cons_prod_lote').Value :=myTabla_ventana.FieldByName('cons_prod_lote').AsInteger;
             paramByName('cons_refe_material').Value := myTabla_Ventana.FieldByName('cons_refe_material').AsInteger;
             paramByName('cons_proceso').Value := fProcesoActual;
             ExecSQL;
        End;
        RefreshDataSet(fram_espigas.quer_espigas);
        fram_espigas.quer_espigas.Last;
        fram_espigas.comb_espiga.keyValue := fram_espigas.quer_espigas.FieldByName('cons_prod_espiga').asInteger;
        //Actualizar el grid
        doMostrarGrid(Sender);
end;
{****************************************************************
Procedimiento   : acti_nuev_espigaUpdate
Objetivo        : ctualizar el estado de la acción de nueva espiga
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_nuev_espigaUpdate(Sender: TObject);
begin
        acti_nuev_espiga.Enabled := (fram_refe_material.fram_comb_nomb_material.Text <> '') and (fram_lote.comb_nume_lote.text <> '') and
                                (fram_avance.edit_avance.value <> 100);
end;
{****************************************************************
Procedimiento   : acti_elim_espigaExecute
Objetivo        : Ejecutar la acción de eliminar espiga
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_elim_espigaExecute(Sender: TObject);
begin
        if confirmar(cosDeseaEliminar)=mrNo then Exit;
        With quer_elim_espiga do
        Begin
            Try
                StartDBTransaction;
                ExecSQL;
                CommitDBWork;
                //Reubicar el registro
                RefreshDataSet(fram_espigas.quer_espigas);
                fram_espigas.quer_espigas.First;
                if fram_espigas.quer_espigas.recordcount > 0 Then
                  fram_espigas.comb_espiga.keyValue := fram_espigas.quer_espigas.FieldByName('cons_prod_espiga').asInteger;
            Except
                On e:Exception do
                Begin
                    RollBackDBWork;
                    EjecutarMensajeError(e.message)
                End;
            End;
        End;
        //Actualizar el grid
        doMostrarGrid(Sender);
end;
{****************************************************************
Procedimiento   : acti_elim_espigaUpdate
Objetivo        : Ejecutar la acción de actualizar el estado
                  de la acción eliminar espiga
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_elim_espigaUpdate(Sender: TObject);
begin
        acti_elim_espiga.enabled := (fram_espigas.quer_espigas.RecordCount > 0) and
                    (fram_avance.edit_avance.value <> 100);
end;
{****************************************************************
Procedimiento   : gridKeyDown
Objetivo        : Controlar las pulsaciones en el grid de loteo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  //Iniciar la edicion
  if Not (Key in [vk_up, vk_left, vk_down, vk_right]) Then
  Begin
        //Verificar que no se haya finalizado la tarea
        if (fram_avance.edit_avance.value <> 100) Then
          If not (tabl_guardar.State in [dsInsert, dsEdit]) Then
                tabl_guardar.Edit;
  End;
  if key = vk_Return then
  Begin
      //RC13 -- Sugeridos por cada entrepierna
      With Grid do
      Begin
          if ((Row > coi_nume_fila_simulacion) and (Row < RowCount - coi_nume_fila_total))
             and (Col = ColumnByName['CAPAS'].Index) Then
          Begin
              //Preguntar al usuario si desea que se ejecute la actualización
              if (Confirmar(cosSimularCapas) = mrYes) Then
              Begin
                  Try
                    var_simu_total := False;
                    if acti_sugerir.Enabled then
                        acti_sugerir.Execute;
                  Except
                      on E:Exception do
                        EjecutarMensajeError(e.Message);
                  End;
                  var_simu_total := True;
              End;
          End;
      End;
      //Hacer calculos
      doHacerCalculos(Sender);
  End;
End;
{****************************************************************
Procedimiento   : tabl_guardarBeforePost
Objetivo        : Guardar las espigas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.tabl_guardarBeforePost(DataSet: TDataSet);
Var
        var_fila        : Integer;      
        var_colu        : Integer;
        var_capas       : Integer;
        var_cant_tallas : Integer;
begin
        Try
                StartDBTransaction;
                doHacerCalculos(Self);
                //--------------------CAPAS------------------------------
                With grid, quer_inse_capas do
                Begin
                      //Eliminar
                      ProgresoBarraEstado(cosEliminando);
                      quer_dele_capas.ExecSQL;
                      //Insertar
                      ProgresoBarraEstado(cosGuardando);
                      For var_fila := coi_nume_fila_simulacion + 1 to  RowCount - coi_nume_fila_total - 1 do
                      Begin
                           //Convertir las capas
                           Try
                              var_capas := StrToInt(Cells[ColumnByName['CAPAS'].Index, var_fila]);
                           Except
                              var_capas := 0;
                           End;
                           //Si tiene capas, guardarlo
                           if var_capas > 0 Then
                           Begin
                                paramByName('cons_prod_espiga').Value := myTabla_Ventana.FieldByName('CONS_PROD_ESPIGA').asInteger;
                                paramByName('cons_refe_color').AsString := Cells[ColumnByName['CONS_REFE_COLOR'].index, var_fila];
                                paramByName('capas').Value := var_Capas;
                                ExecSQL;
                           End;
                      End;
                End;
                //------------------TALLAS Y UNIDADES-----------------------
                With grid,  quer_inse_unidades do
                Begin
                     //Eliminar
                     ProgresoBarraEstado(cosEliminando);
                     quer_dele_unidades.ExecSQL;
                     //Insertar las unidades
                      ProgresoBarraEstado(cosGuardando);
                      For var_fila := coi_nume_fila_simulacion + 1 to  RowCount - coi_nume_fila_total - 1 do
                      Begin
                           //Convertir las capas
                           Try
                              var_capas := StrToInt(Cells[ColumnByName['CAPAS'].Index, var_fila]);
                           Except
                              var_capas := 0;
                           End;
                           //Recorrer las columnas (Tallas)
                           For var_colu := ColumnByName['LARGO'].Index + 1 to ColCount - 2 do
                           Begin
                                   //Obtener el número de tallas loteadas
                                   Try
                                       var_cant_tallas := StrToInt(Cells[var_colu, var_fila]);
                                   Except
                                       var_cant_tallas := 0;
                                   End;
                                   //Si tiene tallas, guardarlo
                                   if var_cant_tallas > 0 Then
                                   Begin
                                        paramByName('cons_prod_espiga').Value := myTabla_Ventana.FieldByName('CONS_PROD_ESPIGA').asInteger;
                                        paramByName('cons_refe_color').AsString := Cells[ColumnByName['CONS_REFE_COLOR'].index, var_fila];
                                        paramByName('cons_grup_tall_detalle').Value := Columns[var_colu].Tag;
                                        paramByName('cant_tallas').Value := var_cant_tallas;
                                        paramByName('cant_unidades').Value := var_cant_tallas * var_Capas;
                                        ExecSQL;
                                   End;
                           End;
                      End;
                      //Capas por defecto
                      With quer_upda_capa_simulacion do
                        Begin
                            If (Cells[ColumnByName['CAPAS'].Index, coi_fila_simu_capas] <> '') Then
                              ParamByName('capa_simulacion').Value := StrToInt(Cells[ColumnByName['CAPAS'].Index, coi_fila_simu_capas])
                            Else
                              ParamByName('capa_simulacion').Value := 0;
                            ExecSQL;
                        End;
                      //Actualizar la consulta de capas
                      RefreshDataSet(fram_espigas.quer_Espigas);  
                End;
                ProgresoBarraEstado(cosCommiting);
                CommitDBWork;
                //Restituir el estado
                ProgresoBarraEstado;
        Except
               on e:Exception do
               Begin
                    ProgresoBarraEstado(cosRollingBack);
                    RollBackDBWork;
                    EjecutarMensajeError(e.Message);
                    //Restituir el estado
                    ProgresoBarraEstado;
                    //Cancelar el guardado
                    Abort;
               End;
        End;
end;
{****************************************************************
Procedimiento   : acti_guardarExecute
Objetivo        : Ejecutar la acción de guardar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_guardarExecute(Sender: TObject);
begin
        //Verificar que se pueda guardar
        if (fram_refe_material.fram_comb_nomb_material.Text <> '') and (fram_lote.comb_nume_lote.text <> '') and
                (fram_espigas.comb_espiga.text <> '') Then
                        tabl_guardar.post
        Else
                EjecutarMensajeError(cosErrorDatosNoValidos);                
end;
{****************************************************************
Procedimiento   : acti_cancelarExecute
Objetivo        : Ejecutar la acción de cancelar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_cancelarExecute(Sender: TObject);
begin
        if confirmar(cosDeseaCancelar)=mrYes then
          tabl_guardar.Cancel;
end;
{****************************************************************
Procedimiento   : data_guardarStateChange
Objetivo        : Actualizar el estado de las acciones asociadas
                  a la tabla del guardado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.data_guardarStateChange(Sender: TObject);
begin
        acti_guardar.enabled := (tabl_guardar.State in [dsEdit, dsInsert]);
        acti_cancelar.enabled := (tabl_guardar.State in [dsEdit, dsInsert]);
end;
{****************************************************************
Procedimiento   : tabl_guardarAfterCancel
Objetivo        : Llamar de nuevo los datos, despues de cancelar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.tabl_guardarAfterCancel(DataSet: TDataSet);
begin
        doLlamarEspigas(Self);
end;
{****************************************************************
Procedimiento   : grid_unidadesCanEditCell
Objetivo        : Restringir la edición de celdas en el grid
                  de unidades del lote
                  
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.grid_unidadesCanEditCell(Sender: TObject;
  ARow, ACol: Integer; var CanEdit: Boolean);
begin
        //Ninguna celda es editable
        CanEdit := False;
end;

procedure Tffra_prod_orde_trazo.grid_unidadesGetCellColor(Sender: TObject;
  ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush;
  AFont: TFont);
Var
    var_colu    : Integer;
    var_unid_faltantes  : Integer;
    var_unid_existentes : Integer;
begin
    With Grid_unidades do
    Begin
        //Color de los totales
        If ((aCol = ColCount - 1) and (ARow > 0)) or
            ((aCol > ColumnByName['LARGO'].Index) and (aRow = RowCount - 1)) Then
        Begin
            aFont.Color := cocTotalText;
            aBrush.Color := cocTotal;
        End;
        //Buscar las unidades diferentes
        if (aCol > ColumnByName['LARGO'].Index) and (aCol < ColCount - 1) and
            (aRow > 0) and (aRow < RowCount - 1) then
           Begin

              //Unidades loteadas
              If (Cells[aCol, aRow] <> '') Then
                 Try
                    var_unid_existentes := StrToInt(Cells[aCol, aRow]);
                 Except
                    var_unid_existentes := 0;
                 End
              Else
                var_unid_existentes := 0;
              if chec_unid_diferencia.Checked Then
              Begin
                      //Dar color de acuerdo a la diferencia
                      if (var_unid_existentes = 0) Then
                          aFont.Color := clWhite
                      Else
                          if (var_unid_existentes < 0) Then aBrush.Color := clGreen
                          Else if (var_unid_existentes > 0) Then aBrush.Color := clRed;
              End
              Else
              Begin
                    var_colu := ColumnaGridUnidades(Columns[aCol].Tag);
                    if (var_colu > -1) Then
                      Begin
                          //Calcular las unidades faltantes
                          if (fram_orde_unidades.Grid.Cells[var_colu, aRow] <> '') Then
                             Try
                                var_unid_faltantes := StrToInt(fram_orde_unidades.Grid.Cells[var_colu, aRow]);
                             Except
                                var_unid_faltantes := 0;
                             End
                          Else
                             var_unid_faltantes := 0;
                          //Dar color de acuerdo a la diferencia
                          if (var_unid_existentes <> var_unid_faltantes) Then
                            Begin
                              aFont.Color := clWhite;
                              if (var_unid_existentes > var_unid_faltantes) Then aBrush.Color := clGreen
                              Else if (var_unid_existentes < var_unid_faltantes) Then aBrush.Color := clRed;
                            End;
                      End;
              End;
           End;
    End;
end;

procedure Tffra_prod_orde_trazo.acti_ver_totalesExecute(Sender: TObject);
begin
  Application.CreateForm(Tfn1_prod_orde_traz_total, fn1_prod_orde_traz_total);
  With fn1_prod_orde_traz_total do
  Begin
        FormStyle := fsNormal;
        WindowState := wsNormal;
        Visible := False;
        fram_unid_lote.DoEjecutarFrame(myTabla_ventana.FieldByName('cons_prod_orden').AsInteger,
                                       myTabla_ventana.FieldByName('cons_prod_lote').AsInteger,
                                       myTabla_ventana.FieldByName('cons_refe_material').AsInteger,
                                       fProcesoActual);
        ShowModal;
  End;
end;
{****************************************************************
Procedimiento   : acti_ver_totalesUpdate
Objetivo        : Actualizar el estado de la acción de totalizar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_ver_totalesUpdate(Sender: TObject);
begin
        acti_ver_totales.Enabled := (fram_refe_material.fram_comb_nomb_material.Text <> '') and (fram_lote.comb_nume_lote.text <> '');
end;
{****************************************************************
Procedimiento   : quer_sele_unid_faltantesBeforeOpen
Objetivo        : Asignar los parametros a la consulta de unidades
                  ya loteadas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_trazo.quer_sele_unid_faltantesBeforeOpen(
  DataSet: TDataSet);
begin
end;
{****************************************************************
Procedimiento   : fram_lotecomb_nume_loteChange
Objetivo        : Actualizar los controles cuando cambie el lote
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 15 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_prod_orde_trazo.doActualizarLote(
  Sender: TObject);
Var
    var_point   : TPoint;
begin
    //Guardar la tabla de memoria
    if (myTabla_Ventana.State in [dsInsert, dsEdit]) then
        myTabla_ventana.Post;
    //Guardar la posición anterior
    var_point.x := Grid.Col;
    var_point.y := Grid.Row;
    //Llamar las unidades
    doMostrarGrid(Sender);
    //Ubicar el tab seleccionado
    doUbicarPaginaLote(Sender);
    //Reubicar el cursor
    Try
        Grid.Col := var_point.x;
        Grid.Row := var_point.y;
    Except
    End;
    //Recalcular las unidades faltantes
    doCalcularUnidadesFaltantes(Sender);
    //Recalcular el Grid
    doHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : acti_lote_nuevoExecute
Objetivo        : Crear un nuevo lote para la orden actual
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 20 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_lote_nuevoExecute(Sender: TObject);
begin
    //Ejecutar el query de creación del lote
    quer_lote_nuevo.ExecSQL;
    //Actualizar el frame de lotes
    RefreshQuery(fram_lote.quer_lotes);
    //Ubicar el ultimo lote (se asume que es el nuevo)
    fram_lote.quer_lotes.First;
    VarCambiandoLote := False;
    doLoadPageLotes(Sender);
    fram_lote.quer_lotes.Last;
    fram_lote.comb_nume_lote.keyValue := fram_lote.quer_lotes.FieldByName('cons_prod_lote').asInteger;
    doActualizarLote(Sender);
    //Luego de insertar un lote, crearle una espiga por defecto
    acti_nuev_espiga.Execute;
    doUbicarPaginaLote(Sender);
end;
{****************************************************************
Procedimiento   : acti_lote_eliminarExecute
Objetivo        : Ejecuta la acción de eliminar el lote seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 20 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_lote_eliminarExecute(Sender: TObject);
begin
    If (Confirmar(cosDeseaEliminar) = mrYes) Then
      Begin
          quer_lote_eliminar.ExecSQL;
          //Actualizar el frame de lotes
          RefreshQuery(fram_lote.quer_lotes);
          varCambiandoLote := False;
          doLoadPageLotes(Sender);
          //Si hay lotes, ubicar el primero
          if (fram_lote.quer_lotes.RecordCount > 0) Then
             fram_lote.comb_nume_lote.keyValue := fram_lote.quer_lotes.FieldByName('cons_prod_lote').asInteger
          Else
             fram_lote.comb_nume_lote.ClearValue;
      End;
    doMostrarGrid(Sender);
    doUbicarPaginaLote(Sender);
end;
{****************************************************************
Procedimiento   : acti_lote_nuevoUpdate
Objetivo        : Actualizar la acción de adicionar lote
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 20 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_lote_nuevoUpdate(Sender: TObject);
begin
        acti_lote_nuevo.Enabled := (fram_lote.quer_lotes.Active) and (tabl_guardar.Active) and Not(tabl_guardar.State in [dsInsert, dsEdit]);
end;
{****************************************************************
Procedimiento   : acti_lote_eliminarUpdate
Objetivo        : Actualizar la acción de eliminar lote
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 20 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_lote_eliminarUpdate(Sender: TObject);
begin
        acti_lote_eliminar.Enabled := (fram_lote.quer_lotes.Active) and (fram_lote.quer_lotes.RecordCount > 0) and 
                    (tabl_guardar.Active) and Not(tabl_guardar.State in [dsInsert, dsEdit]) and
                    (fram_avance.edit_avance.value <> 100);
End;
{****************************************************************
Procedimiento   : fram_espigascomb_espigaChange
Objetivo        : Actualizar el grid de espigas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 20 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_prod_orde_trazo.fram_espigascomb_espigaChange(
  Sender: TObject);
begin
    //Si no hay espiga, salir
    if fram_espigas.comb_espiga.Text = '' Then Exit;
    //Guardar los cambios en la tabla de memoria
    if (myTabla_ventana.State in [dsEdit, dsInsert]) then
        myTabla_ventana.Post;
    //Actualizar el grid de espigas
    doMostrarGrid(Sender);
    //Recalcular las unidades faltantes
    doCalcularUnidadesFaltantes(Sender);
    //Recalcular
    doHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : fram_refe_materialfram_comb_codi_materialChange
Objetivo        : Guarda los cambios en la tabla de memoria cuando
                  cambie el material seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 20 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_prod_orde_trazo.fram_refe_materialfram_comb_codi_materialChange(
  Sender: TObject);
begin
    //Guardar la tabla de memoria
    if (myTabla_Ventana.State in [dsInsert, dsEdit]) then
        myTabla_ventana.Post;
    fram_lote.comb_nume_lote.ClearValue;
    if (fram_lote.quer_lotes.Active) then fram_lote.quer_lotes.First;
    DoMostrarGrid(Sender);
    varCambiandoLote := False;
    doLoadPageLotes(Sender);
end;
{****************************************************************
Procedimiento   : doActualizarPageTotales
Objetivo        : Actualiza la página de totales
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 21 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_prod_orde_trazo.doActualizarPageTotales(Sender: TObject);
var
    var_i   : Integer;
    var_pcpFrame    : TPCPFrame;
    var_fram_prod_orde_unid_lote    : Tffra_prod_orde_unid_lote;
    var_fram_espi_totales   : tffra_prod_espi_totales;
    var_dfsSplitter : TdfsSplitter;
begin
    ProgresoBarraEstado(cosTrabajando);
    scro_tota_lotes.Visible := False;
    //Destruir los componentes que existan
    For var_i := 1 to scro_tota_lotes.ControlCount do
      scro_tota_lotes.Controls[0].Destroy;
    //Frame de unidades totales de la orden de trazo y corte
    var_i := 0;
    var_pcpFrame := tPCPFrame.Create(Self);
    //Propiedades del frame
    var_pcpFrame.Name := 'tmp_fram_lote_'+IntToStr(var_i);
    var_pcpFrame.Parent:= scro_tota_lotes;
    var_pcpFrame.align := alTop;
    var_pcpFrame.BevelOuter := bvNone;
    var_pcpFrame.BorderWidthIn := 4;
    var_pcpFrame.Caption := cosTotalLoteado;
    var_pcpFrame.FlatBorder := True;
    var_pcpFrame.Top := 64000;
    //Crear el frame
    var_fram_espi_totales := tffra_prod_espi_totales.Create(Self);
    var_fram_espi_totales.parent := var_PCPFrame;
    var_fram_espi_totales.Align := alClient;
    var_fram_espi_totales.name := 'tmp_fram_lote_unid_'+IntToStr(var_i);
    var_fram_espi_totales.doEjecutarFrame(MyTabla_Ventana.FieldByName('cons_prod_orden').asInteger,
            myTabla_Ventana.FieldByName('cons_Refe_material').asInteger);
    //Crear el Splitter
    var_dfsSplitter := TdfsSplitter.Create(Self);
    var_dfsSplitter.Name := 'tmp_fram_lote_spli_'+intToStr(var_i);
    var_dfsSplitter.Align := alTop;
    var_dfsSplitter.Parent := scro_Tota_lotes;
    var_dfsSplitter.top := 64000;
    var_dfsSplitter.MinSize := 20;
    //Abrir la consulta de lotes
    quer_lote_totales.Close;
    quer_lote_totales.open;
    //Crear tantos frames como lotes existan
    For var_i := 1 to quer_lote_totales.RecordCount do
      Begin
            var_pcpFrame := tPCPFrame.Create(Self);
            //Propiedades del frame
            var_pcpFrame.Name := 'tmp_fram_lote_'+IntToStr(var_i);
            var_pcpFrame.Parent:= scro_tota_lotes;
            var_pcpFrame.align := alTop;
            var_pcpFrame.BevelOuter := bvNone;
            var_pcpFrame.BorderWidthIn := 4;
            var_pcpFrame.Caption := Format(cosLoteNo, [quer_lote_totales.FieldByName('nume_lote').asString]);
            var_pcpFrame.FlatBorder := True;
            var_pcpFrame.Top := 64000;
            //Crear el frame
            var_fram_prod_orde_unid_lote := Tffra_prod_orde_unid_lote.Create(Self);
            var_fram_prod_orde_unid_lote.parent := var_PCPFrame;
            var_fram_prod_orde_unid_lote.Align := alClient;
            var_fram_prod_orde_unid_lote.name := 'tmp_fram_lote_unid_'+IntToStr(var_i);
            var_fram_prod_orde_unid_lote.doEjecutarFrame(MyTabla_Ventana.FieldByName('cons_prod_orden').asInteger,
                    quer_lote_totales.FieldByName('cons_prod_lote').asInteger,
                    myTabla_Ventana.FieldByName('cons_Refe_material').asInteger, fProcesoActual);
            If Not quer_lote_totales.Eof then
            Begin
                //Crear el Splitter
                var_dfsSplitter := TdfsSplitter.Create(Self);
                var_dfsSplitter.Name := 'tmp_fram_lote_spli_'+intToStr(var_i);
                var_dfsSplitter.Align := alTop;
                var_dfsSplitter.Parent := scro_Tota_lotes;
                var_dfsSplitter.top := 64000;
                var_dfsSplitter.MinSize := 20;
            End;
            //Siguiente lote
            quer_lote_totales.Next;
      End;
      quer_lote_totales.Close;
      scro_tota_lotes.Visible := True;
      ProgresoBarraEstado;
end;
{****************************************************************
Procedimiento   : fram_aten_lote_finalizadofram_labelClick
Objetivo        : Mostrar la página de avance
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 21 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tffra_prod_orde_trazo.fram_aten_lote_finalizadofram_labelClick(
  Sender: TObject);
begin
    page.ActivePage := page_avance;
end;
{****************************************************************
Procedimiento   : doLoadPageLotes
Objetivo        : Mostrar los lotes disponibles en un TAB
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 12 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_prod_orde_trazo.doLoadPageLotes(Sender: TObject);
Var
     var_i  : Integer;
     var_tabSheet   : TSCLTabSheet;
     var_action     : TAction;
     var_tbxItem    : TTBXItem;

begin
     if varCambiandoLote then Exit;
     varDestruyendoPaginas := True;
     tabl_lotes.Close;
     tabl_lotes.Open;
     tabl_lotes.LoadFromDataSet(fram_lote.quer_lotes, fram_lote.quer_lotes.RecordCount, lmCopy);
     Try
         //Destriur los existentes
         for var_i := 1 to padr_page_lotes.PageCount do
           padr_page_lotes.Pages[0].Destroy;
         //Eliminar las acciones
         for var_i := 1 to acti_tabs.ActionCount do
            acti_tabs.actions[0].Destroy;
         //Eliminar los menus - Diferentes a los iniciales
         For var_i := varItemsFijosPopGrid to fram_pop_lotes.Items.Count do
            fram_pop_lotes.Items.Delete(fram_pop_lotes.Items.Count - 1);
         //Crear las páginas de los lotes y las acciones
         tabl_lotes.First;
         for var_i := 1 to tabl_lotes.RecordCount do
            Begin
                 //Pagina
                 var_tabSheet := TSCLTabSheet.Create(padr_page_lotes);
                 var_tabSheet.PageControl := padr_page_lotes;
                 var_tabSheet.Caption := Format(cosLoteNo, [IntToStr(var_i)]);
                 var_tabSheet.Tag := tabl_lotes.FieldByName('cons_prod_lote').asInteger;
                 //Acction
                 var_action := TAction.Create(acti_tabs);
                 var_action.Caption := var_tabSheet.Caption;
                 var_action.ShortCut := TextToShortCut('CTRL+'+IntToStr(var_i));
                 var_action.OnExecute := doCambiarPaginaAccion;
                 var_action.Tag := var_i - 1;
                 //Insertar el item del menú
                 var_tbxItem := TTBXItem.Create(Nil);
                 var_tbxItem.Action := var_action;
                 fram_pop_lotes.Items.Add(var_tbxItem);
                 //Siguiente registro
                 tabl_lotes.Next;
            End;
     Except
        On E:Exception do EjecutarMensajeError(e.Message);
     End;
     tabl_lotes.Close;
     varDestruyendoPaginas := False;
end;
{****************************************************************
Procedimiento   : padr_page_lotesChange
Objetivo        : Actualizar el lote cuando
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 12 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_prod_orde_trazo.padr_page_lotesChange(Sender: TObject);
begin
    varCambiandoLote := True;
    //Si las páginas se están destruyendo, no ejecutar
    if varDestruyendoPaginas Then Exit;
    //If padr_page_lotes.ActivePage = Nil then Exit;
    //Si no hay páginas, salir
    if (padr_page_lotes.PageCount = 0) Then Exit;
    //Cambiar de lote
    fram_lote.quer_lotes.Locate('cons_prod_lote', padr_page_lotes.ActivePage.Tag, []);
    fram_lote.comb_nume_lote.keyValue := padr_page_lotes.ActivePage.Tag;
    varCambiandoLote := False;
    doActualizarLote(Sender);
    doHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : doUbicarPaginaLote
Objetivo        : Ubica la página del lote seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 12 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_prod_orde_trazo.doUbicarPaginaLote(Sender: TObject);
Var
    var_i   : Integer;
begin
     //Verificar que haya lote
     if (fram_lote.comb_nume_lote.EstaVacio) then Exit;
     For var_i := 1 to padr_page_lotes.PageCount do
        if padr_page_lotes.Pages[var_i - 1].Tag = fram_lote.comb_nume_lote.KeyValue then
          Begin
            padr_page_lotes.ActivePage := padr_page_lotes.Pages[var_i - 1];
            Exit;
          End;
end;

procedure Tffra_prod_orde_trazo.doCambiarPaginaAccion(Sender: TObject);
begin
    if (Sender is TAction) then
      Try
        CheckAndPostDataSet(tabl_guardar);
        padr_page_lotes.ActivePageIndex := (Sender as TAction).Tag;
      Except
      End;
end;
{****************************************************************
Procedimiento   : doLlamarUnidadesLoteadas
Objetivo        : Mostrar las unidades ya loteadas en el grid de unidades
                  programadas de la orden de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 19 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_prod_orde_trazo.doLlamarUnidadesLoteadas(Sender: TObject);
Begin
    Inherited;
    //Se pasó el procedimiento al FRAME
end;
{****************************************************************
Procedimiento   : fram_orde_unidadesgridGetCellColor
Objetivo        : Configurar el color de las celdas del grid de unidades
                  de la orden de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 19 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_prod_orde_trazo.fram_orde_unidadesgridGetCellColor(
  Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState;
  ABrush: TBrush; AFont: TFont);
begin
  fram_orde_unidades.gridGetCellColor(Sender, ARow, ACol, AState,
  ABrush, AFont);
  With fram_orde_unidades.Grid do
    Begin
        //Mostrar en ZEBRA las columnas de faltante
        if (Columns[aCol].Tag < 0) Then
          Begin
            //No pintar si es la fila de totales o la de títulos
            if Not(ARow in [0, RowCount - 1]) Then
              Begin
                aBrush.Color := clInicioGradienteWarning;
                aFont.Color := clTextoGradienteWarning;
              End;
            if (Cells[aCol, aRow] <> '') Then
               aFont.Style := [fsBold];
          End;
        //Si la celda de la derecha está seleccionada, seleccionar esta
        if (Columns[aCol].Tag > 0) and
          (Row = aRow) and (Col = aCol + 1) then
          Begin
             aBrush.Color := clHighlight;
             aFont.Color := clHighlightText;
          End;
        //Texto blanco activeCell
        if (Columns[aCol].Tag > 0) and
          (Row = 0) and (Col = aCol + 1) then
             aFont.Color := clTextoGradienteHard;
    End;
end;
{****************************************************************
Procedimiento   : gridSelectCell
Objetivo        : Sincronizar la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 19 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_prod_orde_trazo.gridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
    var_colu    : Integer;
begin
    //Posición del grid superior
    Try
      With Grid do
        Begin
          //Verificar si es de unidades para posicionar el grid de totales
          If (ACol > ColumnByName['LARGO'].Index) and (ACol < ColCount - 1) Then
            Begin
              //Buscar la columna por el tag
              For var_colu := fram_orde_unidades.Grid.ColumnByName['UNIDADES'].Index + 1 to fram_orde_unidades.Grid.ColCount - 1 do
                Begin
                     if (fram_orde_unidades.grid.Columns[var_colu].Tag = (Columns[aCol].Tag * -1)) then
                       Begin
                           //Si la encuentra, ubicar el cursor
                           fram_orde_unidades.Grid.Col := var_colu;
                           //Salir del ciclo
                           Break;
                       End;
                End;
            End;
          //Posicionar la fila
          if (aRow > coi_nume_fila_simulacion) and (aRow < RowCount - coi_nume_fila_total) then
             fram_orde_unidades.grid.Row := aRow - coi_nume_fila_simulacion;
          //Repintar el frame de unidades
          fram_orde_unidades.grid.Repaint;
        End;
    Except
    End;
    //Posición del grid de subtotal del lote
    Try
      With Grid do
        Begin
          //Verificar si es de unidades para posicionar el grid de totales
          If (ACol > ColumnByName['LARGO'].Index) and (ACol < ColCount - 1) Then
            grid_unidades.Col := aCol - ColumnByName['LARGO'].Index + grid_unidades.ColumnByName['LARGO'].Index;
          //Posicionar la fila
          if (aRow > coi_nume_fila_simulacion) and (aRow < RowCount - coi_nume_fila_total) then
             grid_unidades.Row := aRow - coi_nume_fila_simulacion;
        End;
    Except
    End;
    //Recalcular
    doHacerCalculos(Sender);
end;

procedure Tffra_prod_orde_trazo.gridGridHint(Sender: TObject; ARow,
  ACol: Integer; var hintstr: String);
begin
end;
{****************************************************************
Procedimiento   : doCalcularUnidadesFaltantes
Objetivo        : Mostrar las unidades ya loteadas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 20 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_prod_orde_trazo.doCalcularUnidadesFaltantes(Sender: TObject);
var
    var_fila    : Integer;
    var_colu    : Integer;
    var_unid_planeadas  : Integer;
begin
      //Vefiricar que los datos sean validos
      if (Not myTabla_Ventana.Active) then Exit;
      With fram_orde_unidades.Grid do
        Begin
            //---> Limpiar las unidades existentes
            For var_colu := ColumnByName['UNIDADES'].Index + 1 to ColCount - 1 do
                   //Verificar si el TAG de la columna es negativo
                   If (Columns[var_colu].Tag < 0) Then
                       //Recorrer las filas y borrarlas
                       For var_fila := 1 to RowCount - 1 do
                            Cells[var_colu, var_fila] := '';
            //---> Mostrar las unidades encontradas en la consulta
            With quer_faltantes do
              Begin
                   //Abrir la consulta
                   If active then close;
                   Open;
                   //Recorrer el grid de unidades
                   For var_colu := ColumnByName['UNIDADES'].Index + 1 To ColCount -2 do
                     Begin
                         if (Columns[Var_colu].Tag < 0) Then
                           Begin
                             //Recorrer las filas
                             For var_fila := 1 to RowCount - 2 do
                               Begin
                                     //Unidades planeadas
                                     var_unid_planeadas := 0;
                                     if (Cells[var_colu - 1, var_fila] <> '') Then
                                       Try
                                          var_unid_planeadas := StrToInt(Cells[var_colu - 1, var_fila]);
                                       Except
                                       End;
                                     //Buscar el registro de las unidades hechas
                                     if Locate('cons_grup_tall_detalle;cons_Refe_color',
                                        VarArrayOf([(Columns[var_colu].Tag * -1), StrToInt(Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila])]),
                                        []) Then
                                        Begin
                                            if ((var_unid_planeadas - FieldByName('cant_unidades').asInteger) <> 0) Then
                                              Cells[Var_colu, var_fila] := IntToStr(var_unid_planeadas - FieldByName('cant_unidades').asInteger)
                                            Else
                                              Cells[Var_colu, var_fila] := '';
                                        End
                                     Else
                                        if var_unid_planeadas > 0 then
                                            Cells[Var_colu, var_fila] := IntToStr(var_unid_planeadas)
                                        Else
                                            Cells[Var_colu, var_fila] := '';
                               End;
                             End;
                     End;
                   Close;
                   //Calcular los totales por columna en el grid
                   For var_colu := ColumnByName['UNIDADES'].Index + 1 to ColCount - 1 do
                     if Columns[var_colu].Tag < 0 Then
                       Begin
                           var_unid_planeadas := 0;
                           For var_fila := 1 to RowCount - 2 do
                             Begin
                                 Try
                                    var_unid_planeadas := var_unid_planeadas + StrToInt(Cells[var_colu, var_fila]);
                                 Except
                                 End;
                             End;
                           Cells[var_colu, RowCount - 1] := IntToStr(var_unid_planeadas);
                       End;
              End;
        End;
end;
{****************************************************************
Procedimiento   : acti_sugerirExecute
Objetivo        : Ejecutar la acción de sugerir las tallas en las
                  unidades
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 25 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_sugerirExecute(Sender: TObject);
Var
    var_capas   : Integer;
    var_fila    : Integer;
    var_colu    : Integer;
    var_auxi    : Integer;
    var_unid_requeridas : Integer;
    var_reemplazar  : Boolean;
    var_colu2   : Integer;
    var_sugerido    : Float;
    var_fila_inicial    : Integer;
    var_fila_final  : Integer;
begin
    With grid do
      Begin
        //Numero de capas
        if var_simu_total Then
        Begin
              //Numero de capas en la simulación
              var_capas := 0;
              If (Cells[ColumnByName['CAPAS'].Index, coi_fila_simu_capas] <> '') Then
                Try
                    var_capas := StrToInt(Cells[ColumnByName['CAPAS'].Index, coi_fila_simu_capas]);
                Except
                    var_capas := 0;
                End;
              //Pedir el sugerido de capas
              var_capas := pcpInputForm(cosEditando, cosCapasSugeridas, tvInteger, var_capas);
              //Si las capas no son válidas, abortar
              If var_capas <= 0 Then
                Begin
                    EjecutarMensajeError(cosCapasSugeridasNoValidas);
                    Exit;
                End;
              //Escribir el nuevo número de capas
              Cells[ColumnByName['CAPAS'].Index, coi_fila_simu_capas] := IntToStr(var_capas);
              var_reemplazar := True;
              //Buscar si existe alguna fila (color) con capas estimadas
              var_auxi := -1;
              For var_fila := coi_nume_fila_simulacion + 1 to RowCount - coi_nume_fila_total - 1 do
                Begin
                   if (Cells[ColumnByName['CAPAS'].index, var_fila] <> '') Then
                    Begin
                         var_auxi := var_fila;
                         Break;
                    End;
                End;
              //Si encontró alguna, mostrar el mensaje
              If (var_auxi > -1) then
                  var_reemplazar := (Confirmar(cosCapasReemplazar) = mrYes);
              //Si se desea reemplazar, escribir las nuevas unidades
              if (var_reemplazar) Then
                    For var_fila := coi_nume_fila_simulacion + 1 to RowCount - coi_nume_fila_total - 1 do
                      Cells[ColumnByName['CAPAS'].Index, var_fila] := IntToStr(var_capas);
        End
        Else
        Begin
              Try
                var_capas := StrToInt(Cells[ColumnByName['CAPAS'].Index, Row]);
              Except
                var_capas   := 0;
              End;
        End;
        //RC13 - Sugerido para una sola
        If var_simu_total Then
        Begin
            var_fila_inicial := coi_nume_fila_simulacion + 1;
            var_fila_final := RowCount - coi_nume_fila_total - 1;
        End
        Else
        Begin
            var_fila_inicial := Grid.Row;
            var_fila_final  := Grid.Row;
        End;
        //Recorrer el grid, recalculando las unidades
        For var_colu := ColumnByName['LARGO'].Index + 1 to ColCount - 2 do
          Begin
              //Consultar la columna en el grid de unidades
              var_colu2 := ColumnaGridUnidades(Columns[var_colu].Tag);
              if var_colu2 > 0 Then
                Begin
                  //Recorrer las filas
                  For var_fila := var_fila_inicial to var_fila_final do
                    Begin
                         //Consultar las unidades requeridas
                         If (fram_orde_unidades.Grid.Cells[var_colu2, var_fila - coi_nume_fila_simulacion] = '') Then
                            var_unid_requeridas := 0
                         Else
                            Try
                                var_unid_requeridas := StrToInt(fram_orde_unidades.Grid.Cells[var_colu2, var_fila - coi_nume_fila_simulacion]);
                            Except
                                var_unid_requeridas := 0;
                            End;
                         //Calcular el sugerido
                         Try
                             var_sugerido := var_unid_Requeridas / var_capas;
                         Except
                             var_sugerido := 0;
                         End;
                         if (Var_sugerido = 0) Then
                            Cells[Var_colu, var_fila] := ''
                         Else
                            Cells[var_colu, var_fila] := FormatFloat('0', Int(var_sugerido));
                    End;
                End;
          End;
      End;
      //Iniciar la edición
      If not (tabl_guardar.State in [dsInsert, dsEdit]) Then
            tabl_guardar.Edit;
      //Recalcular
      DoHacerCalculos(Sender);
end;

{****************************************************************
Procedimiento   : ColumnaGridUnidades
Objetivo        : Devuelve el número de columna correspondiente
                  en el grid de unidades a una columna del grid
                  de espigas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 25 de 2004
Versión         : pcp4006
*****************************************************************}
Function Tffra_prod_orde_trazo.ColumnaGridUnidades(peTagColumnaGrid : Integer) : Integer;
var
    var_colu : Integer;
Begin
    //Asumir que no existe, devuelve - 1
    Result := -1;
    With fram_orde_unidades.Grid do
        //Buscar la columna
        For var_colu := ColumnByName['UNIDADES'].Index + 1 to ColCount - 1 do
          If (Columns[var_colu].Tag < 0) and (Columns[var_colu].Tag = peTagColumnaGrid * -1) Then
            Begin
               Result := var_colu;
               Break;
            End;
End;
{****************************************************************
Procedimiento   : acti_impr_todoExecute
Objetivo        : Imprimir el reporte completo de la orden de trazo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 30 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_impr_todoExecute(Sender: TObject);
begin
    ProgresoBarraEstado(cosTrabajando);
    doPrepararTablaSeleccionLotes;
//    doEjecutarDialogoAbrirComboDataSet(cosRangoDeImpresion, tabl_auxi_impresion, 'cons_tabla', 'nomb_tabla');
//    ShowMessage(tabl_auxi_impresion.FieldByName('nomb_tabla').asString);
    doPrepararTablasReporteUnidades(True);
    //Generar el informe
    Application.CreateForm(Trn1_prod_orde_trazo, rn1_prod_orde_trazo);
    rn1_prod_orde_trazo.DoEjecutarInforme(myTabla_Ventana.FieldByName('cons_prod_orden').asInteger,
            myTabla_Ventana.FieldByName('cons_Refe_material').asInteger);
end;

{****************************************************************
Procedimiento   : acti_impr_todoUpdate
Objetivo        : Actualizar el estado de las acción de imprimir todo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 30 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_impr_todoUpdate(Sender: TObject);
begin
    acti_impr_todo.Enabled := (Not fram_refe_material.fram_comb_codi_material.EstaVacio) and Not(tabl_guardar.State in [dsInsert, dsEdit]);
end;
{****************************************************************
Procedimiento   : doPrepararTablasReporteUnidades
Objetivo        : Prepara las tabalas locales para el reporte
                  de la orden de corte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 30 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
Procedure Tffra_prod_orde_trazo.doPrepararTablasReporteUnidades(peCon_Valores : Boolean);
Var
    var_i   : Integer;
    var_fram_prod_orde_unid_lote    : Tffra_prod_orde_unid_lote;
    var_fram_espi_totales   : tffra_prod_espi_totales;
    var_componente  : TComponent;
    var_fila    : Integer;
    var_colu    : Integer;
begin
    ProgresoBarraEstado(cosTrabajando);
   Try
    //Preparar las tablas temporales
    With tabl_informe do Begin
      Close;
      CreateTable;
      Open;
    End;
    With tabl_info_detalle do Begin
      Close;
      CreateTable;
      Open;
    End;
    if peCon_Valores then Begin
        //Ver Crear los totales
        var_i := 0;
        Try
            //Crear el frame
            var_fram_espi_totales := tffra_prod_espi_totales.Create(Self);
            var_fram_espi_totales.name := 'tmp_impresion_'+IntToStr(var_i);
            var_fram_espi_totales.doEjecutarFrame(MyTabla_Ventana.FieldByName('cons_prod_orden').asInteger,
                    myTabla_Ventana.FieldByName('cons_Refe_material').asInteger,
                    var_pathLocal + 'tmpLoteoProduccion' + IntToStr(var_i));
            LimpiarGrid(Grid_Impresion);
            Grid_Impresion.LoadFromFile(var_pathLocal + 'tmpLoteoProduccion' + IntToStr(var_i));
            //Crear el maestro para el total del lote
            With tabl_informe do Begin
              Insert;
              FieldByName('cons_prod_lote').Value := var_i;
              FieldByName('nomb_prod_lote').Value := cosTotalLoteado;
              Post;
            End;
            //Cargar en la tabla del informe
            With Grid_impresion, tabl_info_detalle do
            Begin
                 For var_fila := 0 to RowCount - 1 do
                 Begin
                     //Insertar el registro
                     Insert;
                     FieldByName('cons_prod_lote').Value := var_i;
                     FieldByName('cons_registro').Value := var_fila;
                     if var_fila > 0 Then //Para omitir el titulo
                        FieldByName('nomb_color').Value := Cells[0, var_fila];
                     if (peCon_Valores) or (var_fila = 0) then
                         Begin
                         For var_colu := 4 to ColCount - 2 do
                            FieldByName('tall'+IntToStr(var_colu - 3)).Value := Cells[var_colu, var_fila];
                         //Total del color
                         FieldByName('total').Value := Cells[ColCount - 1, var_fila];
                     End;
                     //Guardar el registro
                     Post;
                 End;
            End;
        Finally
            var_componente := FindComponent('tmp_impresion_'+IntToStr(var_i));
            if (var_componente <> Nil) then var_componente.Free;
        End;
    End;
    //Abrir la consulta de lotes
    quer_lote_totales.Close;
    quer_lote_totales.open;
    //Crear tantos frames como lotes existan
    For var_i := 1 to quer_lote_totales.RecordCount do
      Begin
            Try
                //Crear el frame y guardar el resultado
                var_fram_prod_orde_unid_lote := Tffra_prod_orde_unid_lote.Create(Self);
                var_fram_prod_orde_unid_lote.name := 'tmp_impresion_'+IntToStr(var_i);
                var_fram_prod_orde_unid_lote.doEjecutarFrame(MyTabla_Ventana.FieldByName('cons_prod_orden').asInteger,
                        quer_lote_totales.FieldByName('cons_prod_lote').asInteger,
                        myTabla_Ventana.FieldByName('cons_Refe_material').asInteger, fProcesoActual,
                        var_pathLocal+'tmpLoteoProduccion'+IntToStr(var_i));
                //Llamar en el grid local
                LimpiarGrid(Grid_Impresion);
                Grid_Impresion.LoadFromFile(var_pathLocal+'tmpLoteoProduccion'+IntToStr(var_i));
                //Crear el maestro para el total del lote
                With tabl_informe do
                Begin
                    Insert;
                    FieldByName('cons_prod_lote').Value := var_i;
                    FieldByName('nomb_prod_lote').Value := Format(cosLoteNo, [quer_lote_totales.FieldByName('nume_lote').asString]);
                    Post;
                End;
                //Cargar en la tabla del informe
                With Grid_impresion, tabl_info_detalle do
                Begin
                     For var_fila := 0 to RowCount - 1 do
                     Begin
                         //Insertar el registro
                         Insert;
                         FieldByName('cons_prod_lote').Value := var_i;
                         FieldByName('cons_registro').Value := var_fila;
                         if var_fila > 0 Then //Para omitir el titulo
                            FieldByName('nomb_color').Value := Cells[0, var_fila];
                         if (peCon_Valores) or (var_fila = 0) then
                         Begin
                             For var_colu := 4 to ColCount - 2 do
                                FieldByName('tall'+IntToStr(var_colu - 3)).Value := Cells[var_colu, var_fila];
                             //Total del color
                             FieldByName('total').Value := Cells[ColCount - 1, var_fila];
                         End;
                         //Guardar el registro
                         Post;
                     End;
                End;
            Finally
                //Liberar los componentes creados
                var_componente := FindComponent('tmp_impresion_'+IntToStr(var_i));
                if (var_componente <> Nil) then var_componente.Free;
            End;
            //Siguiente lote
            quer_lote_totales.Next;
      End;
      quer_lote_totales.Close;
    Except
        on e:Exception do
            EjecutarMensajeError(e.Message);
    End;
    //Cerrar las consultas
    tabl_informe.Close;
    tabl_info_detalle.Close;
    quer_lote_totales.Close;
    //Dar por finalizado
    ProgresoBarraEstado;
End;
{****************************************************************
Procedimiento   : acti_impr_form_liqu_unid_cortadasExecute
Objetivo        : Imprimir el formato para la liquidación
                  manual de unidades cortadas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 30 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_impr_form_liqu_unid_cortadasExecute(
  Sender: TObject);
begin
    ProgresoBarraEstado(cosTrabajando);
    doPrepararTablasReporteUnidades(False);
    //Generar el informe
    Application.CreateForm(Trn1_prod_orde_traz_liqu_unidades, rn1_prod_orde_traz_liqu_unidades);
    rn1_prod_orde_traz_liqu_unidades.DoEjecutarInforme(myTabla_Ventana.FieldByName('cons_prod_orden').asInteger,
            myTabla_Ventana.FieldByName('cons_Refe_material').asInteger);
end;
{****************************************************************
Procedimiento   : acti_impr_espigasExecute
Objetivo        : Imprimir las espigas de la orden
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 30 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_orde_trazo.acti_impr_espigasExecute(Sender: TObject);
Var
        var_colu        : Integer;
        var_fila        : Integer;
        var_ancho       : Float;
        var_tota_ancho  : Float;
        var_tota_Tallas : Float;
        var_capas       : Integer;
        var_unidades    : Integer;
        var_tota_unidades   : Integer;
        var_gran_tota_unidades  : Integer;
        var_i           : Integer;
begin
  inherited;
  ProgresoBarraEstado(cosTrabajando);
  Try
        //Preparar las tablas temporales
        With tabl_informe do
        Begin
            Close;
            CreateTable;
            Open;
        End;
        With tabl_info_espigas do
        Begin
            Close;
            CreateTable;
            Open;
        End;
        With tabl_info_detalle do
        Begin
            Close;
            CreateTable;
            Open;
        End;
        With quer_repo_espigas do
        Begin
            ParamByName('cons_refe_material').Value := myTabla_ventana.FieldByName('cons_Refe_material').asInteger;
            ParamByName('cons_proceso').Value := myTabla_ventana.FieldByName('cons_proceso').asInteger;
        End;
        //Abrir la consulta de lotes
        quer_lote_totales.Close;
        quer_lote_totales.open;
        //Crear tantos frames como lotes existan
        For var_i := 1 to quer_lote_totales.RecordCount do
        Begin
            //Abrir la consulta de espigas de este lote
            With quer_repo_Espigas do
            Begin
                Close;
                ParamByName('cons_prod_lote').Value := quer_lote_totales.FieldByName('cons_prod_lote').asInteger;
                Open;
            End;
            While not quer_repo_Espigas.Eof do
            Begin
                //Insertar la espiga
                With tabl_info_espigas do
                Begin
                    Insert;
                    FieldByName('cons_prod_lote').Value := Var_i;
                    FieldByName('nomb_prod_lote').Value := Format(cosLoteNo, [quer_lote_totales.FieldByName('nume_lote').asString]);
                    FieldByName('cons_prod_espiga').Value := quer_repo_Espigas.FieldByName('cons_prod_espiga').asInteger;
                    FieldByName('nomb_prod_espiga').Value := Format(cosEspigaNo, [quer_repo_Espigas.FieldByName('nume_espiga').asString]);
                    Post;
                End;
                With grid_repo_espigas do
                Begin
                      //Grid de loteo
                      LimpiarGrid(grid_repo_espigas, 1);
                      grid_repo_espigas.RowCount :=  1;
                      //Destruir las columnas adicionales
                      For var_colu := ColumnByName['LARGO'].Index + 1 to ColCount - 1 do
                        Columns[ColumnByName['LARGO'].Index + 1].Destroy;
                      //Llamar las tallas
                      for var_colu := 1 To fram_orde_unidades.nume_tallas   do
                      Begin
                         //Si no es una columna de faltante de la talla, insertarla
                         if (fram_orde_unidades.Grid.Columns[var_colu + fram_orde_unidades.grid.ColumnByName['UNIDADES'].Index].Tag > -1) Then
                           Begin
                             //Insertar la talla en el loteo
                             ColCount := ColCount + 1;
                             Columns[ColCount - 1].Header :=
                                    fram_orde_unidades.grid.Columns[fram_orde_unidades.grid.ColumnByName['UNIDADES'].Index + var_colu].Header;
                             Columns[ColCount - 1].Tag :=
                                    fram_orde_unidades.grid.Columns[fram_orde_unidades.grid.ColumnByName['UNIDADES'].Index + var_colu].Tag;
                           End;
                      End;
                      //Agregar una columna para el total de tallas
                      ColCount := ColCount + 1;
                      Columns[ColCount - 1].Header := cosTotal;
                      //Crear las filas de los colores, de acuerdo con la matriz de unidades
                      For var_fila := 1 to fram_orde_unidades.Grid.RowCount - 1 do
                      Begin
                          //Insertar el color
                          RowCount := RowCount + 1;
                          Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - 1] :=
                              fram_orde_unidades.Grid.Cells[fram_orde_unidades.Grid.ColumnByName['NOMB_COLOR'].Index, var_fila];
                          Cells[ColumnByName['CONS_REFE_COLOR'].Index, RowCount - 1] :=
                              fram_orde_unidades.Grid.Cells[fram_orde_unidades.Grid.ColumnByName['CONS_REFE_COLOR'].Index, var_fila];
                      End;
                      //Agregar una fila para el total en unidades
                      Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - 1] := cosTotalTallas;
                      RowCount := RowCount + 1;
                      Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - 1] := cosTotalEsteLote;
                      //Abrir la consulta de adicionales (capas)
                      With quer_repo_sele_capas do
                      Begin
                           if active then close;
                           ParamByName('cons_prod_espiga').Value := quer_repo_espigas.FieldByName('cons_prod_espiga').asInteger;
                           Open;
                           While not eof do
                           Begin
                                   //Buscar la fila y columna
                                   var_fila := GridBuscarValorColumna(grid_repo_espigas, ColumnByName['CONS_REFE_COLOR'].Index,
                                          FieldByName('cons_refe_color').AsString, 1, RowCount - 1);
                                   //Escribir el número de capas
                                   Cells[ColumnByName['CAPAS'].Index, var_fila] := FieldByName('capas').asString;
                                   //Siguiente registro
                                   Next;
                           End;
                           Close;
                      End;
                      //Llamar las unidades loteadas
                      With quer_repo_sele_unidades do
                      Begin
                           If Active then Close;
                           ParamByName('cons_prod_espiga').Value := quer_repo_espigas.FieldByName('cons_prod_espiga').asInteger;
                           Open;
                           While not eof do
                           Begin
                               //Buscar la columna
                               var_colu := GridBuscarTag(grid_repo_espigas, FieldByName('cons_grup_tall_detalle').asInteger,
                                    ColumnByName['LARGO'].Index + 1, ColCount - 1);
                               var_fila := GridBuscarValorColumna(grid_repo_espigas, ColumnByName['CONS_REFE_COLOR'].Index,
                                     FieldByName('cons_refe_color').AsString, 1, RowCount - 1);
                               Cells[var_colu, var_fila] := IntToStr(FieldByName('cant_tallas').AsInteger);
                               //Siguiente registro
                               Next;
                           End;
                           Close;
                           //Totalizar las tallas
                           TotalizarGrid(grid_repo_espigas, ColumnByName['LARGO'].Index + 1, 1, ColCount - 2, RowCount - 3,
                                ColCount - 1, RowCount - 2);
                           //Calcular los anchos
                           var_tota_ancho := 0;
                           For var_Fila := 1 to RowCount - 3 do
                           Begin
                              var_tota_tallas := StrToInt(Cells[ColCount - 1, var_fila]);
                              var_ancho := var_tota_tallas * fram_refe_material.quer_refe_materiales.FieldByName('consumo').asFloat;
                              var_tota_ancho := var_tota_ancho + var_ancho;
                              //Calcular los largos
                              Cells[ColumnByName['LARGO'].Index, var_fila] := FormatFloat('0.00', var_ancho);
                           End;
                           Cells[ColumnByName['LARGO'].Index, RowCount - 1] := FormatFloat('0.00', var_tota_ancho);
                           //Calcular el total de undades
                           var_tota_unidades := 0;
                           var_gran_tota_unidades := 0;
                           For var_colu := ColumnByName['LARGO'].Index + 1 to ColCount - 2 do
                           Begin
                               var_tota_unidades := 0;
                               For var_fila := 1 to RowCount - 3 do
                               Begin
                                   //Verificar que la celda no esté vacía
                                   If (Cells[var_colu, var_fila] <> '') Then
                                   Begin
                                       //Obtener las capas
                                       Try
                                           var_capas := StrToInt(Cells[ColumnByName['CAPAS'].Index, var_fila]);
                                       Except
                                           var_capas := 0;
                                       End;
                                       //Si las capas son validas sumarlas
                                       if var_capas > 0 Then
                                       Begin
                                            var_unidades := var_capas * StrToInt(Cells[var_colu, var_fila]);
                                            var_tota_unidades := var_tota_unidades + var_unidades;
                                       End;
                                   End;
                               End;
                               //Escribir el total de la talla
                               Cells[var_colu, rowCount - 1] := IntToStr(var_tota_unidades);
                               var_gran_tota_unidades := var_gran_tota_unidades + var_tota_unidades;
                           End;
                           //Escribir el total de unidades de la espiga
                           Cells[ColCount - 1, rowCount - 1] := IntToStr(var_gran_tota_unidades);
                      End;
                      //Guardar el grid en la tabla de unidades del reporte
                      With tabl_info_Detalle do
                      Begin
                         For var_fila := 0 to RowCount - 1 do
                         Begin
                             //Insertar el registro
                             Insert;
                             FieldByName('cons_prod_lote').Value := var_i;
                             FieldByName('cons_prod_espiga').Value := quer_repo_espigas.FieldByName('cons_prod_Espiga').asInteger;
                             FieldByName('cons_registro').Value := var_fila;
                             if var_fila > 0 Then //Para omitir el titulo
                                FieldByName('nomb_color').Value := Cells[0, var_fila];
                             For var_colu := ColumnByName['CAPAS'].Index to ColCount - 2 do
                                FieldByName('tall'+IntToStr(var_colu - 1)).Value := Cells[var_colu, var_fila];
                             //Total del color
                             FieldByName('total').Value := Cells[ColCount - 1, var_fila];
                             //Guardar el registro
                             Post;
                         End;
                      End;
                End;
                quer_repo_Espigas.Next;
            End;
            quer_lote_totales.Next;
        End;
  Except
       //Error
       On e : Exception do
       Begin
            EjecutarMensajeError(e.Message);
       End;
  End;
  quer_lote_totales.Close;
  quer_repo_Espigas.Close;
  quer_repo_sele_unidades.Close;
  tabl_informe.Close;
  tabl_info_espigas.Close;
  tabl_info_detalle.Close;
  //Mostrar el informe en pantalla
  Application.CreateForm(Trn1_prod_orde_Traz_espigas, rn1_prod_orde_Traz_espigas);
  rn1_prod_orde_Traz_espigas.DoEjecutarInforme(myTabla_Ventana.FieldByName('cons_prod_orden').asInteger,
            myTabla_Ventana.FieldByName('cons_Refe_material').asInteger);
end;

procedure Tffra_prod_orde_trazo.grid_repo_espigasDblClick(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : padr_page_lotesPageChanging
Objetivo        : Evita que se cambie de lote sin guardar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 16 de 2004
Versión         : pcp4.0.0.13
*****************************************************************}
procedure Tffra_prod_orde_trazo.padr_page_lotesChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
    if (tabl_guardar.State in [DsInsert, dsEdit]) Then
    Begin
        AllowChange := False;
        tabl_guardar.Post;
        AllowChange := True;
    End;

end;

procedure Tffra_prod_orde_trazo.botoClick(Sender: TObject);
begin
{        fram_orde_unidades.doEjecutarFrame(myTabla_Ventana.FieldByName('cons_prod_orden').asInteger);
        //boto.checked := Not boto.Checked;
        if boto.Checked then
           fram_orde_unidades.doColumnaAdicional(Sender);}
end;
{****************************************************************
Procedimiento   : doPrepararTablaSeleccionLotes
Objetivo        : Crear la tabla auxiliar para la impresión
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Tffra_prod_orde_trazo.doPrepararTablaSeleccionLotes;
var
        var_i   : Integer;
Begin
    tabl_auxi_impresion.Close;
    tabl_auxi_impresion.Open;
    //Registro en cero
    With tabl_auxi_impresion do
    Begin
        Insert;
        FieldByName('cons_tabla').Value := 0;
        FieldByName('nomb_tabla').Value := cosTodosLosLotes;
        Post;
        For var_i := 1 to fram_lote.quer_lotes.RecordCount do
        begin
            Insert;
            FieldByName('cons_tabla').Value := var_i;
            FieldByName('nomb_tabla').Value := cosLote + ' ' + intToStr(var_i);
            Post;
        End;
        Sort([]);
    End;

End;


end.


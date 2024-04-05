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
        Unit            : ufra_prod_list_oper_costura
        Objetivo        : Listado de operaciones de costura
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 10 de 2004
        Versión         : pcp4006
*******************************************************************}

unit ufra_prod_list_oper_costura;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, dxTL,
  Db, DBTables, RxMemDS, TBX, Menus, TB2Item, AsgFindDialog, dxEditor,
  StdActns, ActnList, ufra_prod_resp_lote_proceso, Grids, BaseGrid,
  AdvGrid, AdvCGrid, SCLColumnGrid, dxExEdtr, dxEdLib, dxCntner,
  TBXExtItems, TB2Dock, TB2Toolbar, SCLTabs;

  
type
  Tffra_prod_list_oper_costura = class(TFrame)
    acci_ventana: TActionList;
    acti_insertar: TAction;
    acti_adicionar: TAction;
    acti_eliminar: TAction;
    acti_move_arriba: TAction;
    acti_move_abajo: TAction;
    acti_copiar: TdxEditCopy;
    acti_cortar: TdxEditCut;
    acti_pegar: TdxEditPaste;
    acti_sele_todos: TAction;
    acti_buscar: TAction;
    grid_find: TAdvGridFindDialog;
    pop_grid: TTBXPopupMenu;
    TBXItem3: TTBXItem;
    TBXItem9: TTBXItem;
    TBXItem10: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem13: TTBXItem;
    TBXItem14: TTBXItem;
    TBXItem15: TTBXItem;
    TBXItem16: TTBXItem;
    TBXItem22: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    TBXVisibilityToggleItem1: TTBXVisibilityToggleItem;
    myTabla_Ventana: TRxMemoryData;
    quer_operaciones: TQuery;
    quer_procesos: TQuery;
    quer_oper_tipos: TQuery;
    quer_operacionesCODI_PROCESO: TStringField;
    quer_operacionesCONS_OPER_COSTURA: TIntegerField;
    quer_operacionesCONS_PROCESO: TIntegerField;
    quer_operacionesCONS_OPER_COST_TIPO: TIntegerField;
    quer_operacionesCONS_COMP_GRUPO: TIntegerField;
    quer_operacionesCODI_OPER_COSTURA: TStringField;
    quer_operacionesNOMB_OPER_COSTURA: TStringField;
    quer_operacionesPUNT_POR_CENTIMETRO: TFloatField;
    quer_operacionesCONS_RECU_FAMILIA: TIntegerField;
    quer_operacionesREVO_POR_MINUTO: TIntegerField;
    quer_operacionesTIEM_CRONOMETRO: TIntegerField;
    quer_operacionesCODI_OPER_COST_TIPO: TStringField;
    quer_operacionesTIEM_ASIGNADO: TFloatField;
    quer_recu_familias: TQuery;
    quer_operacionesCODI_RECU_FAMILIA: TStringField;
    acti_fila_titulo: TAction;
    acti_fila_operacion: TAction;
    acti_ver_analisis: TAction;
    pop_operacion: TTBXPopupMenu;
    TBXItem21: TTBXItem;
    TBXItem23: TTBXItem;
    TBXItem24: TTBXItem;
    TBXSeparatorItem10: TTBXSeparatorItem;
    quer_oper_llamar: TQuery;
    quer_eliminar: TQuery;
    quer_oper_guardar: TQuery;
    acti_volv_llamar: TAction;
    TBXItem29: TTBXItem;
    TBXSeparatorItem14: TTBXSeparatorItem;
    quer_comp_grupos: TQuery;
    quer_operacionesCODI_COMP_GRUPO: TStringField;
    page: TSCLPageControl;
    page_operaciones: TSCLTabSheet;
    TBXDock2: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    fram_boto_volv_llamar: TTBXItem;
    fram_boto_sepa_2: TTBXSeparatorItem;
    fram_boto_insertar: TTBXItem;
    fram_boto_adicionar: TTBXItem;
    fram_boto_eliminar: TTBXItem;
    fram_boto_sepa_3: TTBXSeparatorItem;
    fram_boto_move_arriba: TTBXItem;
    fram_boto_move_abajo: TTBXItem;
    fram_boto_sepa_5: TTBXSeparatorItem;
    fram_boto_busc_tabla: TTBXItem;
    fram_boto_sele_todo: TTBXItem;
    fram_boto_sepa_6: TTBXSeparatorItem;
    fram_boto_copiar: TTBXItem;
    fram_boto_cortar: TTBXItem;
    fram_boto_pegar: TTBXItem;
    TBXDock1: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    TBXLabelItem4: TTBXLabelItem;
    TBControlItem4: TTBControlItem;
    TBXSeparatorItem12: TTBXSeparatorItem;
    TBXLabelItem1: TTBXLabelItem;
    TBControlItem1: TTBControlItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXLabelItem3: TTBXLabelItem;
    TBControlItem3: TTBControlItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    TBXLabelItem2: TTBXLabelItem;
    TBControlItem2: TTBControlItem;
    edit_tota_filas: TdxCurrencyEdit;
    edit_tiem_total: TdxCurrencyEdit;
    edit_tota_operaciones: TdxCurrencyEdit;
    edit_oper_seleccionada: TdxSpinEdit;
    myData_Ventana: TDataSource;
    tabl_guardar: TRxMemoryData;
    data_guardar: TDataSource;
    myTabla_Ventanacons_prod_lote: TIntegerField;
    acti_guardar: TAction;
    acti_cancelar: TAction;
    fram_boto_cancelar: TTBXItem;
    fram_boto_guardar: TTBXItem;
    fram_boto_sepa_1: TTBXSeparatorItem;
    quer_refe_oper_llamar: TQuery;
    myTabla_Ventanacons_prod_orden: TIntegerField;
    acti_llama_oper_referencia: TAction;
    fram_boto_cargar: TTBXItem;
    grid: TSCLColumnGrid;
    fram_boto_busc_operaciones: TTBXSubmenuItem;
    acti_busc_oper_cst: TAction;
    fram_boto_busc_oper_cst2: TTBXItem;
    page_avance: TSCLTabSheet;
    fram_avance: Tffra_prod_resp_lote_proceso;
    myTabla_Ventanacons_proceso: TIntegerField;
    TBXLabelItem5: TTBXLabelItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBControlItem5: TTBControlItem;
    edit_cost_total: TdxCurrencyEdit;
    quer_operacionesCOST_OPERACION: TFloatField;
    padr_pop_punt_control: TTBXPopupMenu;
    padr_item_punt_cont_eliminar: TTBXItem;
    padr_item_punt_cont_elim_todos: TTBXItem;
    padr_sepa_punt_control: TTBXSeparatorItem;
    padr_sepa_punt_cont_2: TTBXSeparatorItem;
    quer_punt_control: TQuery;
    procedure comb_codi_ReferenciaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acti_copiarExecute(Sender: TObject);
    procedure acti_cortarExecute(Sender: TObject);
    procedure acti_pegarExecute(Sender: TObject);
    procedure doIniciarEdicion(Sender: TObject);
    procedure doHacerCalculos(Sender: TADVColumnGrid);
    procedure doRenumerar(Sender: TADVColumnGrid);
    procedure acti_insertarExecute(Sender: TObject);
    procedure acti_adicionarExecute(Sender: TObject);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure acti_move_arribaExecute(Sender: TObject);
    procedure acti_move_abajoExecute(Sender: TObject);
    procedure acti_sele_todosExecute(Sender: TObject);
    procedure acti_buscarExecute(Sender: TObject);
    procedure acci_ventanaUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure gridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure gridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure doTitulo(Sender: TADVColumnGrid; nume_operacion : Integer);
    procedure unDoTitulo(Sender: TADVColumnGrid; nume_operacion : Integer);
    procedure gridCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure gridClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure gridCustomCellDraw(Sender: TObject; Canvas: TCanvas; ACol,
      ARow: Integer; AState: TGridDrawState; ARect: TRect;
      Printing: Boolean);
    procedure doCalcularOperacion(Sender: TADVColumnGrid; nume_operacion : Integer; codi_operacion : String;
        CambiarNombre : Boolean = True);
    procedure acti_ver_titulosExecute(Sender: TObject);
    Procedure doActualizarEsTitulo
        (Sender : TADVColumnGrid; aRow : Integer; esTitulo : Integer = 0);
    procedure acti_fila_tituloExecute(Sender: TObject);
    procedure acti_fila_operacionExecute(Sender: TObject);
    procedure doLlamarDatos(Sender: TQuery);
    procedure doGuardar(DataSet: TDataSet);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure acti_undoExecute(Sender: TObject);
    procedure acti_volv_llamarExecute(Sender: TObject);
    procedure padr_gridChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure pane_importarVisibleChanged(Sender: TObject);
    procedure acti_impo_sele_todosExecute(Sender: TObject);
    procedure acti_impo_importarExecute(Sender: TObject);
    procedure edit_oper_seleccionadaExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure eventosEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure padr_acti_actualizarClick(Sender: TObject);
    procedure pane_actualizarAnchorClick(Sender: TObject; Anchor: String);
    procedure fram_sele_componentesquer_comp_impo_imagenesAfterScroll(
      DataSet: TDataSet);
    procedure boto_impo_cerrarClick(Sender: TObject);
    procedure acti_guardarExecute(Sender: TObject);
    procedure acti_cancelarExecute(Sender: TObject);
    procedure acti_llama_oper_referenciaExecute(Sender: TObject);
    procedure acti_busc_oper_cstExecute(Sender: TObject);
    procedure padr_item_punt_cont_eliminarClick(Sender: TObject);
    procedure padr_pop_punt_controlPopup(Sender: TObject);
    procedure padr_item_punt_cont_elim_todosClick(Sender: TObject);
    procedure pop_operacionPopup(Sender: TObject);

  private
    { Private declarations }
    var_OmitirCalculos  : Boolean;
    var_llamando        : Boolean;
    fProcesoActual        : Integer;
    Procedure SetProcesoActual(Value : Integer);
    Procedure SetPuntoDeControl(Sender : TObject);
    Procedure AsignarPuntoDeControl(peCons_punt_control, peFila : Integer; peLimpiar : Boolean = True);
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;

    Procedure doEjecutarFrame(cons_prod_orden, cons_prod_lote : Integer);
    Property ProcesoActual : Integer Read fProcesoActual Write SetProcesoActual;
  end;

ResourceString
cosSECU_OPER_TITULO             = 'La operación es un título';
cosSECU_OPER_CRONOMETRO         = 'La operación tiene un tiempo por estudio de cronómetro';
cosSECU_OPER_WARNING            = 'La operación está en blanco';
cosSECU_OPER_ERROR              = 'El código de la operación NO EXISTE';
  
var
  fn1_meto_refe_list_operaciones: Tffra_prod_list_oper_costura;

implementation

uses _func_varias, _cons_pcp, _MDI, _func_pcp, _vari_pcp, _cons_colores,
  _vent_child, un1_meto_estandar;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_list_oper_costura.Create(Owner : TComponent);
begin
  Inherited Create(Owner);
  SetTotalColumn(grid.ColumnByName['gridTIEMPO']);
  SetTotalColumn(grid.ColumnByName['gridPH']);
  SetTotalColumn(grid.ColumnByName['gridPUNT_CONTROL']);
  grid.ColumnByName['gridCOST_OPERACION'].Font.Color := clTotales;
  grid.ColumnByName['gridCOST_OPERACION'].Color := clFondoTotales;
  grid.cells[Grid.ColumnByName['gridCOST_OPERACION'].Index, 0] := cosValor + _fmdi.tabl_configuracion.FieldByName('simb_moneda').asString;
  page.ActivePage := page_operaciones;
  var_OmitirCalculos := False;
  InicializarADVFindDialog(grid_find);
  SetProcesoActual(10);
{  With Grid Do
  Begin
        HideColumn(ColumnByName['gridTIEM_CRONOMETRO'].Index);
  End;}
  //Abrir las consultas
  With myTabla_Ventana do
  Begin
      Open;
      Insert;
      Post;
  End;
  var_llamando := True;
  With tabl_guardar do
  Begin
      Open;
      Insert;
      Post;
  End;
  var_llamando := False;
  AbrirDataSet(quer_procesos);
  AbrirDataSet(quer_oper_Tipos);
  AbrirDataSet(quer_recu_familias);
  AbrirDataSet(quer_operaciones);
  AbrirDataSet(quer_punt_control);
end;
{****************************************************************
Procedimiento   : comb_codi_referenciaChange
Objetivo        : Actualizar los controles de la ventana cuando
                  cambie la selección activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.comb_codi_ReferenciaChange(
  Sender: TObject);
begin

end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana al mostrarla
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.FormShow(Sender: TObject);
begin

end;
{****************************************************************
Procedimiento   : acti_copiarExecute
Objetivo        : Ejecuta la acción de copiar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_copiarExecute(
  Sender: TObject);
{Var
        var_auxi_integer        : Integer;
        var_auxi_integer2       : Integer;
        var_columna             : Integer;}
begin
    //Si está en edición, copiar el texto
    If Grid.EditMode Then
       Inherited
    //Copiar las celdas completas
    Else
    Begin
        { GridCopy.Clear;
         GridCopy.RowCount := (Grid.Selection.bottom - Grid.Selection.Top + 1);
         var_auxi_integer2 := 0;
         For var_auxi_integer := Grid.Selection.Top to Grid.Selection.Bottom do
         Begin
                //Copiar
                For var_columna := 1 to Grid.ColCount  do
                   GridCopy.Cells[var_columna - 1, var_auxi_integer2] := Grid.Cells[var_columna - 1, var_auxi_integer];
                //Incrementar el contador
                var_auxi_integer2 := var_auxi_integer2 + 1;
         End;  }
         Grid.CopiarSeleccion;
    End;
end;
{****************************************************************
Procedimiento   : acti_cortarExecute
Objetivo        : Ejecuta la acción de cortar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_cortarExecute(
  Sender: TObject);
{Var
        var_row_inicial  : Integer;}
begin
  //Si está editanto, cortar
  If Grid.EditMode then
     inherited
  Else
  Begin
     { var_omitirCalculos := True;
      //Guardar el valor del row inicial
      var_row_inicial := Grid.Selection.Top;  
      //Copiar
      acti_CopiarExecute(Sender);
      //Eliminar
      If (Grid.Selection.Bottom - Grid.Selection.Top + 1)>coiContadorMinimoBarraProgreso Then
                ProgresoBarraEstado(Format(cosEliminando,['']));  
      Grid.RemoveRows(Grid.Selection.Top, Grid.Selection.Bottom - Grid.Selection.Top + 1);
      ProgresoBarraEstado;
      var_omitirCalculos := False;
      if Not var_OmitirCalculos then DoHacerCalculos(Grid);
      If Grid.RowCount=0 Then Exit;
      if var_row_inicial>grid.RowCount-1 Then grid.Row := grid.RowCount -1
      Else Grid.Row := var_row_inicial;   }
      grid.CortarSeleccion;
      doIniciarEdicion(Sender);
      doHacerCalculos(Grid);

  End;
end;
{****************************************************************
Procedimiento   : acti_pegarExecute
Objetivo        : Ejecuta la acción de pegar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_pegarExecute(
  Sender: TObject);
{Var
        var_auxi_integer        : Integer;
        var_row_original        : Integer;}
begin
    //Si está en pegar el texto, copiar el texto
    If Grid.EditMode Then
       Inherited
    //Copiar las celdas completas
    Else
    Begin               
         //Pegar los valores
         {Grid.DefaultDrawing := False;
         var_row_original := grid.Row;
         For var_auxi_integer := gridCopy.RowCount downto 1 do
         Begin
                If (GridCopy.RowCount>coiContadorMinimoBarraProgreso) Then
                        ProgresoBarraEstado(cosTrabajando ,gridCopy.RowCount-var_auxi_integer+1, gridCopy.RowCount);
                //Insertar
                acti_insertarExecute(Sender); 
                Grid.Rows[var_row_original] := GridCopy.Rows[var_auxi_integer-1];
         End;
         Grid.Row := var_row_original;
         doIniciarEdicion(Sender);
         if Not var_OmitirCalculos Then doHacerCalculos(Grid);
         ProgresoBarraEstado;
         Grid.DefaultDrawing := True;  }
         grid.PegarSeleccion;
         doIniciarEdicion(Sender);
         doHacerCalculos(Grid);
         DarFoco(Grid);
    End;
end;
{****************************************************************
Procedimiento   : doIniciarEdicion
Objetivo        : Cambia al estado de edición la consulta principal
                  de la ventna
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.doIniciarEdicion(
  Sender: TObject);
begin

  if not (tabl_guardar.State in  [dsEdit, dsInsert]) Then
     tabl_guardar.Edit;
end;
{****************************************************************
Procedimiento   : doHacerCalculos
Objetivo        : Realiza los calculos de los tiempos en la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.doHacerCalculos(
  Sender: TADVColumnGrid);
Var
   var_i        : Integer;
   var_tiempo   : Float;
   var_frecuencia       : Float;
   var_rpm      : Integer;
   var_ppc       : Integer;
   var_tiem_titulo      : Float;
   var_tiem_total       : Float;
   var_costo    : Float;
   var_cost_titulo  : Float;
   var_cost_total   : Float;

begin
  inherited;
  doRenumerar(Sender);
  With Sender Do
  Begin
      var_tiem_titulo := 0;
      var_tiem_total := 0;
      var_cost_titulo   := 0;
      var_cost_total    := 0;
      //Recorrer hacia arriba para ir calculando el total de los titulos
      For var_i := RowCount -1  DownTo 1 do
      Begin
           //Si no es titulo, validar los datos generales
           If Cells[ColumnByName['gridES_TITULO'].Index, var_i] <> '1' Then
           Begin
                     //Validar la FRECUENCIA
                     Try
                        var_frecuencia := StrToFloat(Cells[ColumnByName['gridFRECUENCIA'].Index, var_i]);
                     Except
                        var_frecuencia := 1;
                     End;
                     Cells[ColumnByName['gridFRECUENCIA'].Index, var_i] := FormatFloat(FormatoFloat(False), var_Frecuencia);
                     //Validar las PUNTADAS POR CENTIMETRO
                     Try
                        var_PPC := StrToInt(Cells[ColumnByName['gridPPC'].Index, var_i]);
                     Except
                        var_PPC := 0;
                     End;
                     Cells[ColumnByName['gridPPC'].Index, var_i] := FormatFloat(',0', var_ppc);
                     //Validar las RPM
                     Try
                        var_RPM := StrToInt(Cells[ColumnByName['gridRPM'].Index, var_i]);
                     Except
                        var_RPM := 0;
                     End;
                     Cells[ColumnByName['gridRPM'].Index, var_i] := FormatFloat(',0', var_rpm);
                     //Validar el TIEMPO
                     Try
                        //Recalcular el tiempo
                        doCalcularOperacion(Sender, var_i, Cells[ColumnByName['gridCODIGO'].Index, var_i], False);
                        var_TIEMPO := StrToFloat(Cells[ColumnByName['gridTIEMPO'].Index, var_i]);
                     Except
                        var_TIEMPO := 0;
                     End;
                     //Multiplicar por la frecuencia
                     var_tiempo := var_tiempo * var_frecuencia;
                     //Asignar el tiempo al titulo activo
                     var_tiem_titulo := var_tiem_titulo + var_tiempo;
                     //Sumar el tiempo al total
                     var_tiem_total := var_tiem_total + var_tiempo;
                     //RC13 ------------------------------------------
                     //Validar el costo
                     Try
                        var_costo := StrToFloat(Cells[ColumnByName['gridCOST_OPERACION'].Index, var_i]);   
                     Except
                        var_costo := 0;
                     End;
                     //Multiplicar por la frecuencia
                     var_costo := var_costo * var_frecuencia;
                     //Asignar el costo al titulo activo
                     var_cost_titulo := var_cost_titulo + var_costo;
                     //Sumar el costo al total
                     var_cost_total := var_cost_total + var_costo;
                     //Calcular la PH
                     if (var_tiempo > 0) Then
                         Cells[ColumnByName['gridPH'].Index, var_i] := FormatFloat('0', 60/var_tiempo)
                     Else
                         Cells[ColumnByName['gridPH'].Index, var_i] := FormatFloat('0', 0);

           End
           Else
           // Es Un titulo
           Begin
                    var_tiempo := var_tiem_titulo;
                    var_tiem_titulo := 0;
                    var_costo := var_cost_titulo;
                    var_cost_titulo := 0;
           End;
           //Escribirlos
           Cells[ColumnByName['gridTIEMPO'].Index, var_i] := FormatFloat(FormatoFloat(False), var_tiempo);
           //Calcular la PH
           if (var_tiempo > 0) Then
               Cells[ColumnByName['gridPH'].Index, var_i] := FormatFloat('0', 60/var_tiempo)
           Else
               Cells[ColumnByName['gridPH'].Index, var_i] := FormatFloat('0', 0);
           //RC13-costo
           Cells[ColumnByName['gridCOST_OPERACION'].Index, var_i] := FormatFloat(FormatoFloat(False), var_costo);
      End;
      if (Sender = Grid) Then
      Begin
          edit_tiem_total.Value := var_tiem_total;
          edit_Cost_total.Value := var_cost_total;
      End;
  End;

end;
{****************************************************************
Procedimiento   : doRenumerar
Objetivo        : Renumerar las operaciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.doRenumerar(
  Sender: TADVColumnGrid);
Var
        var_i   : Integer;
        var_colu_titulo : Integer;
        var_nume_operaciones    : Integer;
begin
  
  var_nume_operaciones := 0;
  //Numerar la columna 1
  Sender.AutoNumberCol(0);
  edit_tota_filas.Value := Grid.RowCount - 1;
  edit_oper_seleccionada.MaxValue := grid.RowCount - 1;
  edit_oper_seleccionada.Enabled := (Grid.RowCount>1);
  If var_OmitirCalculos then Exit;
  //Reagrupar titulos
  var_colu_titulo := Sender.ColumnByName['gridES_TITULO'].Index;
  For var_i := 1 to Sender.RowCount -1 do
  Begin
       If Sender.Cells[var_colu_titulo, var_i] = '1' Then
          doTitulo(Sender, var_i)
       Else
       Begin
          UnDoTitulo(Sender, var_i);
          //Incrementar el contador de operaciones
          Inc(var_nume_operaciones);
       End;
  End;
  edit_tota_operaciones.Value := var_nume_operaciones;
end;
{****************************************************************
Procedimiento   : acti_insertarExecute
Objetivo        : Ejecutar la acción de insertar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_insertarExecute(
  Sender: TObject);
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
Objetivo        : Ejecutar la acción de adicionar operaciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_adicionarExecute(
  Sender: TObject);
begin
  
  Grid.InsertRows(grid.RowCount, 1);
  Grid.Row := Grid.RowCount - 1;
  DoIniciarEdicion(Sender);
  DoHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_eliminarExecute
Objetivo        : Ejecutar la acción de eliminar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_eliminarExecute(
  Sender: TObject);
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
Objetivo        : Ejecutar la acción de mover hacia arriba
                  las operaciones seleccionadas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_move_arribaExecute(
  Sender: TObject);
{Var
        var_inic_top, var_inic_bottom : Integer;}
begin

{  var_OmitirCalculos := True;
  If (grid.Selection.Top<=1) or (Grid.RowCount<=1) Then Exit;
  //Seleccion inicial
  var_inic_top := Grid.Selection.Top;
  var_inic_bottom := Grid.Selection.Bottom;
  //Cortarla
  acti_cortarExecute(Sender);
  //Seleccion anterior
  Grid.Row := var_inic_top - 1;
  //Pegar
  acti_pegarExecute(Sender);
  Grid.SelectRows(var_inic_top - 1, var_inic_bottom - var_inic_top + 1);
  var_OmitirCalculos := False;
  doHacerCalculos(Grid);}
  Grid.MoverHaciaArriba;
  DoIniciarEdicion(Sender);
  doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_move_abajoExecute
Objetivo        : Ejecutar la acción de mover hacia abajo
                  las operaciones seleccionadas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_move_abajoExecute(
  Sender: TObject);
{Var
        var_inic_top, var_inic_bottom : Integer;
        var_is_last_row : Boolean;         }
begin
{
  var_OmitirCalculos := True;
  If (grid.Selection.Bottom=Grid.RowCount-1) or (Grid.RowCount<=1) Then Exit;
  //Seleccion inicial
  var_inic_top := Grid.Selection.Top;
  var_inic_bottom := Grid.Selection.Bottom;
  var_is_last_row := (Grid.Selection.Bottom = Grid.RowCount - 2);
  //Cortarla
  acti_cortarExecute(Sender);
  //Validar la última fila
  if var_is_last_row then 
        grid.rowCount := Grid.RowCount + 1;
  //Seleccion anterior
  if var_inic_top<grid.RowCount - 1 then
      Grid.Row := var_inic_top + 1
  Else
      Grid.Row := Grid.RowCount - 1;  
  //Pegar
  acti_pegarExecute(Sender);
  //Si es la última, eliminarla
  if var_is_last_row then Grid.RemoveRows(Grid.RowCount - 1, 1);
  Grid.SelectRows(var_inic_top + 1, var_inic_bottom - var_inic_top + 1);
  var_OmitirCalculos := False;
  doHacerCalculos(Grid);        }
  Grid.MoverHaciaAbajo;
  DoIniciarEdicion(Sender);
  doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_sele_todosExecute
Objetivo        : Seleccionar todas las operaciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_sele_todosExecute(
  Sender: TObject);
begin
  
  //Seleccionar todos los elementos
  grid.SelectRows(1,grid.RowCount-1);
end;
{****************************************************************
Procedimiento   : acti_buscarExecute
Objetivo        : Ejecutar el dialogo de búsquedas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_buscarExecute(
  Sender: TObject);
begin
  
  grid_find.Execute;
end;
{****************************************************************
Procedimiento   : acci_ventanaUpdate
Objetivo        : Actualizar el estado de las acciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acci_ventanaUpdate(
  Action: TBasicAction; var Handled: Boolean);
begin
  acti_guardar.Enabled := (tabl_guardar.State in [dsEdit, dsInsert]);
  acti_cancelar.Enabled := (tabl_guardar.State in [dsEdit, dsInsert]);
  acti_copiar.Enabled := True;
  acti_pegar.Enabled := True;
  acti_cortar.Enabled := True;
  acti_llama_oper_referencia.Enabled := (myTabla_ventana.FieldByName('cons_prod_lote').asInteger > 0);
  acti_move_arriba.Enabled := Not((grid.Selection.Top<=1) or (Grid.RowCount<=1)); 
  acti_move_abajo.Enabled := Not ((grid.Selection.Bottom=Grid.RowCount-1) or (Grid.RowCount<=1));
//  acti_undo.Enabled := my.PosicionActual>0;
end;
{****************************************************************
Procedimiento   : gridGetCellColor
Objetivo        : Asignar el color de las celdas al pintarlas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.gridGetCellColor(Sender: TObject;
  ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush;
  AFont: TFont);
begin
  
  With (Sender as TADVColumnGrid) do
  Begin
        //Titulos
        if (aRow>0) and (aCol>0) and (Cells[ColumnByName['gridES_TITULO'].Index, aRow] = '1') Then
        Begin
           aBrush.Color := clBtnFace;
           aFont.Style := [fsBold];
        End;
  End;
end;
{****************************************************************
Procedimiento   : gridGetAlignment
Objetivo        : Alineación de las celdas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.gridGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  
  //Centrar titulos
  if aRow = 0 then hAlign := taCenter;
  if (aCol = 0) and (aRow>0) Then hAlign := taRightJustify;
  With (Sender as TADVColumnGrid) Do
  Begin 
       //Centrar operaciones de título
       If (Cells[ColumnByName['gridES_TITULO'].Index, aRow]='1') and
          (aCol > 1) and (ACol < ColumnByName['gridTIEMPO'].Index) Then 
                hAlign := taCenter;
  End;
end;
{****************************************************************
Procedimiento   : gridKeyDown
Objetivo        : Asignar y ejecutar eventos cuando se presione
                  una tecla en el grid principal
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.gridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
        var_codi_cst    : String;
begin
  
  //Iniciar la edicion
  if Not (Key in [vk_up, vk_left, vk_down, vk_right]) Then
  Begin
        doIniciarEdicion(Sender);
  End;
  if (key = vk_return) Then
  Begin
        //Si está en la columna del código, calcular el valor del codigo 
        If (Grid.Col = grid.ColumnByName['gridCODIGO'].Index) Then
           doCalcularOperacion(Grid, grid.Row, Grid.Cells[grid.ColumnByName['gridCODIGO'].Index, Grid.Row]);
        //Hacer los calculos
        doHacerCalculos(Grid);
        Grid.Repaint;
  End;
end;
{****************************************************************
Procedimiento   : doTitulo
Objetivo        : Convierte una fila en un título
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.doTitulo(
  Sender: TADVColumnGrid; nume_operacion : Integer);
begin

  //Validar
  //Validar
  If (Sender = Nil) or (Sender.RowCount<=1) or (nume_operacion<1)
     or (nume_operacion>Sender.RowCount-1) Then Exit;
  //Unir las celdas
  Sender.MergeCells(2, nume_operacion, Sender.ColumnByName['gridTIEMPO'].Index - 2,  1);
end;
{****************************************************************
Procedimiento   : unDoTitulo
Objetivo        : Elimina el título de una fila
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.unDoTitulo(
  Sender: TADVColumnGrid; nume_operacion : Integer);
begin
  
  //Validar
  If (Sender = Nil) or (Sender.RowCount<=1) or (nume_operacion<1)
     or (nume_operacion>Sender.RowCount-1) Then Exit;
  //Unir las celdas
  Sender.splitcells(2, nume_operacion);
end;
{****************************************************************
Procedimiento   : gridCanEditCell
Objetivo        : Evaluar cuando se pueden editar las operaciones del 
                  grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.gridCanEditCell(Sender: TObject;
  ARow, ACol: Integer; var CanEdit: Boolean);
begin
  
  if (Grid.Cells[Grid.ColumnByName['gridES_TITULO'].Index, aRow] = '1') and
       (aCol<=Grid.ColumnByName['gridFRECUENCIA'].Index) Then  
          CanEdit := True;
end;
{****************************************************************
Procedimiento   : gridClickCell
Objetivo        : Capturar el click con el botón izquierdo del ratón
                  sobre una operación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.gridClickCell(Sender: TObject;
  ARow, ACol: Integer);
Begin
{     With Grid do
     Begin
         //ES_TITULO
         if (aRow>0) and (aCol = ColumnByName['gridES_TITULO'].Index) Then
         Begin
                //Asignar la fila activa al TAG de las acciones
                acti_fila_titulo.Tag := aRow;
                acti_fila_operacion.Tag := aRow;
                acti_ver_analisis.Tag := aRow;
                pop_operacion.PopUp(Mouse.CursorPos.x, Mouse.CursorPos.y);
         End;
     End;}
end;
{****************************************************************
Procedimiento   : gridCustomCellDraw
Objetivo        : Pintar manualmente las celdas que lo requieren
                  por ej : Checked
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.gridCustomCellDraw(
  Sender: TObject; Canvas: TCanvas; ACol, ARow: Integer;
  AState: TGridDrawState; ARect: TRect; Printing: Boolean);
begin
  If var_OmitirCalculos Then Exit;
  With (Sender as TSCLColumnGrid) do
  Begin
      If ((aRow>0)) and (aCol = ColumnByName['gridES_TITULO'].Index) then
      Begin
            //Borrar
            Canvas.Brush.Color := clWhite;
            //Rectangulo
            Canvas.Brush.Style := bsSolid;
            aRect.Top := aRect.Top - 1;
            Canvas.Pen.Color := clLineaGradiente;
            Canvas.Rectangle(aRect);
            aRect.Top := aRect.Top + 1;
            //Checked
            if (Cells[ColumnByName['gridES_TITULO'].Index, aRow] = '1') then
            Begin
                  _fmdi.imag_varias.Draw(Canvas, (ARect.Right + ARect.Left) div 2 - 8, ARect.Top, 9);
            End
            //Unchecked
            else
            Begin
                //Indicar si es un tiempo cronómetro
                if (Cells[ColumnByName['gridTIEM_CRONOMETRO'].Index, aRow] = '1') Then           
                Begin
                  _fmdi.imag_varias.Draw(Canvas, (ARect.Right + ARect.Left) div 2 - 8, ARect.Top, 7);
                  //AddComment(aCol, aRow, cosSECU_OPER_CRONOMETRO);
                End
                Else
                //Si el código esta vacio
                if (Cells[ColumnByName['gridCODIGO'].Index, aRow] = '') Then  
                Begin         
                  _fmdi.imag_varias.Draw(Canvas, (ARect.Right + ARect.Left) div 2 - 8, ARect.Top, 5);
                  //AddComment(aCol, aRow, cosSECU_OPER_WARNING);
                End
                Else
                Begin
                    //Codigo errado
                   if Cells[ColumnByName['gridPROCESO'].Index, aRow] = '' Then 
                    _fmdi.imag_varias.Draw(Canvas, (ARect.Right + ARect.Left) div 2 - 8, ARect.Top, 4);
                    //AddComment(aCol, aRow, cosSECU_OPER_ERROR);;
                End;
            End;
      End;
  End;     
end;
{****************************************************************
Procedimiento   : doCalcularOperacion
Objetivo        : Calcular los datos de una operación dada
                  calcula también los tiempos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.doCalcularOperacion(
  Sender: TADVColumnGrid; nume_operacion : Integer; codi_operacion : String; 
        CambiarNombre : Boolean = True);
Var
        var_codi_existe : Boolean;
begin
  inherited;
  //Validar
  If (Sender = Nil) or (nume_operacion<1) or
     (nume_operacion>Sender.RowCount-1) Then Exit;

  With Sender Do
  Begin
        //Cambiar el codigo
        Cells[ColumnByName['gridCODIGO'].Index, nume_operacion] :=
            UpperCase(Cells[ColumnByName['gridCODIGO'].Index, nume_operacion]);
        //Verificar si el codigo existe
        If codi_operacion = '' Then var_codi_existe := False
        Else var_codi_existe := quer_operaciones.Locate('codi_oper_costura', codi_operacion, []);
        //Si no existe el codigo, borrar los datos
        if Not var_codi_existe then
        Begin
             Cells[ColumnByName['gridPROCESO'].Index, nume_operacion] := '';
             Cells[ColumnByName['gridCOMPONENTE'].Index, nume_operacion] := '';
             Cells[ColumnByName['gridOPERACION'].Index, nume_operacion] := '';
             Cells[ColumnByName['gridTIEMPO'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),0);
             Cells[ColumnByName['gridFRECUENCIA'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),1);
             Cells[ColumnByName['gridTIPO_MAQUINA'].Index, nume_operacion] := '';
             Cells[ColumnByName['gridPPC'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),0);
             Cells[ColumnByName['gridRPM'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),0);
             Cells[ColumnByName['gridCOST_OPERACION'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),0);
             If CambiarNombre Then
                //Si el código es vacio, borrar el nombre
                if codi_operacion = '' Then
                    Cells[ColumnByName['gridNOMB_OPERACION'].Index, nume_operacion] := ''
                //No existe
                Else
                    Cells[ColumnByName['gridNOMB_OPERACION'].Index, nume_operacion] := cosOperacionNoExiste;
             Cells[ColumnByName['gridTIEM_CRONOMETRO'].Index, nume_operacion] := '-1';
        End
        Else
        Begin
             Cells[ColumnByName['gridPROCESO'].Index, nume_operacion] := quer_operaciones.FieldByName('codi_proceso').AsString;
             Cells[ColumnByName['gridCOMPONENTE'].Index, nume_operacion] := quer_operaciones.FieldByName('codi_comp_grupo').AsString;
             Cells[ColumnByName['gridOPERACION'].Index, nume_operacion] := quer_operaciones.FieldByName('codi_oper_cost_tipo').AsString;
             Cells[ColumnByName['gridTIPO_MAQUINA'].Index, nume_operacion] := quer_operaciones.FieldByName('codi_Recu_familia').AsString;
             Cells[ColumnByName['gridPPC'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),quer_operaciones.FieldByName('punt_por_centimetro').AsFloat);
             Cells[ColumnByName['gridRPM'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),quer_operaciones.FieldByName('revo_por_minuto').AsFloat);
             If CambiarNombre Then
                    Cells[ColumnByName['gridNOMB_OPERACION'].Index, nume_operacion] := quer_operaciones.FieldByName('nomb_oper_costura').AsString;
             Cells[ColumnByName['gridTIEM_CRONOMETRO'].Index, nume_operacion] := quer_operaciones.FieldByName('tiem_cronometro').AsString;
             //RC13 - COSTO
             if (tabl_guardar.State in [DsEdit, dsInsert]) Then
             Begin
               Cells[ColumnByName['gridTIEMPO'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),
                quer_operaciones.FieldByName('tiem_asignado').AsFloat * _fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_unid_medi_factor').AsFloat);
               Cells[ColumnByName['gridCOST_OPERACION'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),
                  quer_operaciones.FieldByName('COST_OPERACION').AsFloat);
             End;
        End;
  End;
end;
{****************************************************************
Procedimiento   : doActualizarVerSolamenteTitulos
Objetivo        : Muestra sólamente los titulos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_ver_titulosExecute(
  Sender: TObject);
begin
end;


{****************************************************************
Procedimiento   : doActualizarEsTitulo
Objetivo        : Actualiza la columna de titulos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_list_oper_costura.doActualizarEsTitulo
        (Sender : TADVColumnGrid; aRow : Integer; esTitulo : Integer = 0);
Var
        var_i   : Integer;
        var_titulo      : String;
begin
  
  With Sender  do
  Begin
        //Llevar el index a una variable
        var_i := ColumnByName['gridES_TITULO'].Index;
        //Parametro de titulo enviado por el usuario
        if (esTitulo <> 0) Then Cells[var_i, aRow] := IntToStr(esTitulo);
        //Si no es título (UnCheck)
        If (Cells[var_i, aRow] = '-1') or
           (Cells[var_i, aRow] = '') Then
        //Titulo (Check)
        Begin
           Cells[var_i, aRow] := '1';
           //Colocar el titulo
           var_Titulo := Cells[ColumnByName['gridNOMB_OPERACION'].Index, aRow];
           doTitulo(Sender as TADVColumnGrid, aRow);
           doHacerCalculos(Sender as TADVColumnGrid);
           Cells[ColumnByName['gridNOMB_OPERACION'].Index, aRow] := var_Titulo;
        End
        Else
        //UnDoTitulo
        Begin
           Cells[var_i, aRow] := '-1';
           UnDoTitulo(Sender as TADVColumnGrid, aRow);
           //Limpiar y asignar el titulo al nombre de la operacion
           var_Titulo := Cells[ColumnByName['gridNOMB_OPERACION'].Index, aRow];
           ClearRows(aRow, 1);
           doHacerCalculos(Sender as TADVColumnGrid);
           Cells[ColumnByName['gridNOMB_OPERACION'].Index, aRow] := var_Titulo;
        End;
  End;
End;
{****************************************************************
Procedimiento   : acti_fila_tituloExecute
Objetivo        : Mostrar una fila como título
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_fila_tituloExecute(
  Sender: TObject);
begin
  doActualizarEsTitulo(Grid, (Sender as TAction).Tag, -1);
end;
{****************************************************************
Procedimiento   : acti_fila_operacionExecute
Objetivo        : Mostrar una fila como operación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_fila_operacionExecute(
  Sender: TObject);
begin
  
  doActualizarEsTitulo(Grid, (Sender as TAction).Tag, 1);
end;
{****************************************************************
Procedimiento   : doLlamarDatos
Objetivo        : Llamar los datos de una variación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.doLlamarDatos(
  Sender: TQuery);
Var
        var_auxi_integer        : Integer;
begin
  //Validar el grid
  var_OmitirCalculos := True;
  grid.SplitAllCells;
  LimpiarGrid(Grid);
  Grid.RowCount := 1;
  if Grid=Nil then Exit;
  quer_oper_llamar.Close;
  //Parametros de la consulta
  if Not (myTabla_Ventana.Active) then Exit;
  //Llamar los datos
  Try
      With Sender, Grid do
      Begin
           AbrirDataSet(Sender); 
           //Numero de registros
           RowCount := RecordCount + 1;
           //Mostrar los valores
           For var_auxi_integer := 1 to RowCount - 1 do
           Begin
                    If RowCount>coiContadorMinimoBarraProgreso Then    
                        ProgresoBarraEstado(cosConsultando,var_auxi_integer,RowCount-1); 
                    Cells[columnByName['gridES_TITULO'].index, var_auxi_integer] := FieldByName('es_titulo').AsString;
                    Cells[columnByName['gridCODIGO'].index, var_auxi_integer] := FieldByName('codi_oper_costura').asString;
                    Cells[columnByName['gridNOMB_OPERACION'].index, var_auxi_integer] := FieldByName('nomb_oper_costura').asString;
                    Cells[columnByName['gridFRECUENCIA'].index, var_auxi_integer] := FormatFloat(FormatoFloat(False),(FieldByName('frecuencia').asFloat));
                    Cells[columnByName['gridTIEMPO'].index, var_auxi_integer] := FormatFloat(FormatoFloat(False),(FieldByName('TIEMPO').asFloat));
                    Cells[columnByName['gridCOST_OPERACION'].index, var_auxi_integer] := FormatFloat(FormatoFloat(False),(FieldByName('COST_OPERACION').asFloat));
                    AsignarPuntoDeControl(FieldByName('cons_punt_control').asInteger, var_auxi_integer, False);
                    //Traer los datos del codigo (si no es titulo)
                    If FieldByName('es_titulo').AsInteger<>1 Then
                        doCalcularOperacion(Grid, var_auxi_integer, FieldByName('codi_oper_costura').asString, False)
                    Else
                        Cells[columnByName['gridPROCESO'].index, var_auxi_integer] := FieldByName('nomb_oper_costura').asString;
                    //Siguiente registro
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
  Sender.Close;
  ProgresoBarraEstado;
  var_OmitirCalculos := False;
  DoHacerCalculos(Grid);
  fram_avance.doEjecutarFrame(myTabla_ventana.FieldByName('cons_prod_lote').asInteger,
          fProcesoActual);
end;

procedure Tffra_prod_list_oper_costura.doGuardar(
  DataSet: TDataSet);
Var
        var_auxi_integer        : Integer;
        var_codi_operacion      : String;
        var_cons_variacion      : Integer;
        var_es_titulo           : Integer;
begin
  if var_llamando then exit;
  //Guardar las cambios realizados al listado de elementos
  Try
       Update;
       //Iniciar la transaccion
       ProgresoBarraEstado(cosTrabajando);
       StartDBTransaction;
       doHacerCalculos(Grid);
       //Eliminar los registros actuales
       quer_eliminar.ExecSQL;
       //Guardar
       With quer_oper_guardar, grid do
       Begin
            For var_auxi_integer := 1 to RowCount-1 do
            Begin
                 ProgresoBarraEstado(cosGuardando, var_auxi_integer, RowCount - 1);
                 //Ver si es un titulo
                 if (Cells[ColumnByName['gridES_TITULO'].Index, var_auxi_integer] = '1') Then var_es_titulo := 1
                 else var_es_titulo := -1;
                 ParamByName('cons_prod_lote').Value := mytabla_ventana.FieldByName('cons_prod_lote').asInteger;
                 ParamByName('secu_operacion').Value := var_auxi_integer;
                 if var_es_titulo = -1 Then
                 Begin
                        ParamByName('codi_oper_costura').Value := Cells[ColumnByName['gridCODIGO'].Index, var_auxi_integer];
                        ParamByName('frecuencia').Value := StrToFloat(Cells[ColumnByName['gridFRECUENCIA'].Index, var_auxi_integer]);
                        ParamByName('nomb_oper_costura').Value := Cells[ColumnByName['gridNOMB_OPERACION'].Index, var_auxi_integer];
                 End
                 Else
                 Begin
                        ParamByName('codi_oper_costura').Value := '';
                        ParamByName('frecuencia').Value := 1;
                        ParamByName('nomb_oper_costura').Value := Cells[ColumnByName['gridPROCESO'].Index, var_auxi_integer];
                 End;
                 ParamByName('tiempo').Value := StrToFloat(Cells[ColumnByName['gridTIEMPO'].Index, var_auxi_integer]);
                 ParamByName('cost_operacion').Value := StrToFloat(Cells[ColumnByName['gridCOST_OPERACION'].Index, var_auxi_integer]);
                 ParamByName('es_titulo').Value := var_es_titulo;
                 ParamByName('cons_punt_control').Clear;
                 if (Cells[ColumnByName['gridPUNT_CONTROL'].Index, var_auxi_integer] <> '') Then
                    if quer_punt_control.locate('codi_punt_control', Cells[ColumnByName['gridPUNT_CONTROL'].Index, var_auxi_integer], []) Then
                        ParamByName('cons_punt_control').Value := quer_punt_Control.FieldByName('cons_punt_control').asInteger;
                 ExecSQL;       
           End;
        End;
       //Hacer permanentes los cambios
       ProgresoBarraEstado(cosCommiting);
       CommitDBWork;
  Except
     On E:Exception do
     Begin
        //Deshacer los cambios
        ProgresoBarraEstado(cosRollingBack);
        RollBackDBWork;
        //Mensaje
        ProgresoBarraEstado(cosOcurrioUnError);
        EjecutarMensajeError(e.Message+#13+#13+
                cosErrorEnOperacionNo+IntToStr(var_auxi_integer));
        //Abortar la operacion de guardado
        ProgresoBarraEstado;
        Abort;
     End;
  End;
  ProgresoBarraEstado;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterPost
Objetivo        : Actualizar los controles de la ventana
                  una vez guardados los cambios
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.gridSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  //Actualizar el control de la operación actual
  edit_oper_seleccionada.Value := aRow;
end;

procedure Tffra_prod_list_oper_costura.acti_undoExecute(
  Sender: TObject);
begin
  
//  my.doUndo;
//  DoHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_volv_llamarExecute
Objetivo        : Volver a llamar los datos guardados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_volv_llamarExecute(
  Sender: TObject);
begin
  doLlamarDatos(quer_oper_llamar);
end;
{****************************************************************
Procedimiento   : padr_gridChangeNode
Objetivo        : Actualizar la lista de las operaciones para 
                  el componente seleccionado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.padr_gridChangeNode(
  Sender: TObject; OldNode, Node: TdxTreeListNode);
begin
end;
{****************************************************************
Procedimiento   : pane_importarVisibleChanged
Objetivo        : Actualizar los controles cuando el panel 
                  de importar cambie su estado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.pane_importarVisibleChanged(
  Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : acti_impo_sele_todosExecute
Objetivo        : Seleccionar todas las operaciones del grid de importación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_impo_sele_todosExecute(
  Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : acti_impo_importarExecute
Objetivo        : Ejecutar la acción de importar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_impo_importarExecute(
  Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : edit_oper_seleccionadaExit
Objetivo        : Posicionar el cursor en la fila seleccionada
                  en el indicador de operacion actual
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.edit_oper_seleccionadaExit(
  Sender: TObject);
begin
  
  //Abortar si se está omitiendo
  if var_omitirCalculos then Exit;
  //Descartar si son la misma
  if edit_oper_seleccionada.Value = grid.Row then Exit;
  //Validar la selección
  if (edit_oper_seleccionada.Value > grid.RowCount - 1) and (edit_oper_seleccionada.Value > 0) then
     edit_oper_seleccionada.Value := grid.Row
  Else
  //Ubicarla
     grid.Row := Trunc(edit_oper_seleccionada.Value);
end;
{****************************************************************
Procedimiento   : FormDestroy
Objetivo        : Liberara componentes y acciones antes de destruir
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.FormDestroy(Sender: TObject);
begin
  
end;
{****************************************************************
Procedimiento   : eventosEventAlert
Objetivo        : Alertar de los cambios ucurridos en la base de
                  datos en los que intervenga un disparador
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.eventosEventAlert(
  Sender: TObject; EventName: String; EventCount: Integer;
  var CancelAlerts: Boolean);
begin
  
  If UpperCase(EventName) = 'EVE_PCP_ACTU_CST' Then
  Begin
     //Actualizar la consulta de operaciones
     RefreshDataSet(quer_operaciones);
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_actualizarClick
Objetivo        : Ejecutar la acción de actualización
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.padr_acti_actualizarClick(
  Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : pane_actualizarAnchorClick
Objetivo        : Actualizar las consulta cuando se de click
                  en el panel de actualización requerida
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.pane_actualizarAnchorClick(
  Sender: TObject; Anchor: String);
begin
end;
{****************************************************************
Procedimiento   : fram_list_referenciaspadr_gridChangeNode
Objetivo        : Actualizar la referencia activa cuando cambie el nodo de la
                  búsqueda
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.fram_sele_componentesquer_comp_impo_imagenesAfterScroll(
  DataSet: TDataSet);
begin
end;
{****************************************************************
Procedimiento   : boto_impo_cerrarClick
Objetivo        : Cerrar la ventana de importación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_list_oper_costura.boto_impo_cerrarClick(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : tabl_historialBeforePost
Objetivo        : Generar la secuencia del registro de historial
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_list_oper_costura.doEjecutarFrame(cons_prod_orden, cons_prod_lote : Integer);
Begin
    With myTabla_ventana do
    Begin
         if not active then open;
         if Not(state in [dsEdit, dsInsert]) Then
                Edit;
         FieldByName('cons_prod_orden').Value := cons_prod_orden;
         FieldByName('cons_prod_lote').Value := cons_prod_lote;
         doLlamarDatos(quer_oper_llamar);
    End;
End;

procedure Tffra_prod_list_oper_costura.acti_guardarExecute(
  Sender: TObject);
begin
        tabl_guardar.post;
end;

procedure Tffra_prod_list_oper_costura.acti_cancelarExecute(
  Sender: TObject);
begin
        if confirmar(cosDeseaCancelar)=MrNo then Exit;
        doLlamarDatos(quer_oper_llamar);
        tabl_guardar.cancel;
end;

procedure Tffra_prod_list_oper_costura.acti_llama_oper_referenciaExecute(
  Sender: TObject);
var
        var_cons_refe_variacion : Integer;
        var_text_refe_variacion : String;
begin
        if myTabla_Ventana.FieldByName('cons_prod_orden').asString = '' Then Exit;
        //Confirmar que el usuario quiere esto
        if Confirmar(cosDeseaLlamarOperaciones) = mrNo then Exit;
        //Solicitar el parámetro
        var_text_refe_variacion := pcpInputForm(cosSeleccioneVariacion, cosVariacionesDeLaOrden,
                     'Select cons_refe_variacion, nomb_refe_variacion from CON_PCP_PROD_ORDE_VARIACIONES('+
                        myTabla_Ventana.FieldByName('cons_prod_orden').asString+')',
                        'cons_refe_variacion', 'nomb_refe_variacion', 'data_base_pcp', -1);
        if var_text_refe_variacion = '' then Exit;
        var_cons_refe_variacion := StrToInt(var_text_refe_variacion);
        //ASIGNAR EL PARAMETRO
        quer_refe_oper_llamar.paramByName('cons_refe_variacion').Value := var_cons_refe_variacion;
        doLlamarDatos(quer_refe_oper_llamar);
        doIniciarEdicion(Sender);
        doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_busc_oper_cstExecute
Objetivo        : Abrir la ventana de búsqueda de operaciones CST
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 09 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_prod_list_oper_costura.acti_busc_oper_cstExecute(
  Sender: TObject);
var
    vcons_oper_costura  : Variant;
begin
  inherited;
  vcons_oper_costura := Crear_Forma_Child(tfn1_meto_estandar, Nil, fsNormal, tsShowModal);
  //Buscar el resultado
  If quer_operaciones.Locate('cons_oper_costura', vCons_oper_costura, []) Then
    Begin
        //Si no hay operaciones, insertar
        if Grid.RowCount = 0 Then
          Begin
            Grid.RowCount := Grid.RowCount + 1;
            Grid.Row := Grid.RowCount - 1;
          End;
        //Escribir el codigo
        Grid.Cells[grid.ColumnByName['gridCODIGO'].Index, Grid.Row] := quer_operaciones.FieldByName('codi_oper_costura').AsString;
        doIniciarEdicion(Sender);
        doCalcularOperacion(Grid, grid.Row, Grid.Cells[grid.ColumnByName['gridCODIGO'].Index, Grid.Row]);
        doHacerCalculos(Grid);
    End;
end;

{****************************************************************
Procedimiento   : SetProcesoActual
Objetivo        : Asigna el valor del proceso actual a la cual
                  pertenece o ejecuta el frame.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Noviembre 10 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_list_oper_costura.SetProcesoActual(Value : Integer);
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
Procedimiento   : padr_item_punt_cont_eliminarClick
Objetivo        : Eliminar el punto de control seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_prod_list_oper_costura.padr_item_punt_cont_eliminarClick(
  Sender: TObject);
begin
  With Grid do
  Begin
      If (RowCount <= 1) Then Exit;
      If (Row = 0) Then Exit;
      Cells[ColumnByName['gridPUNT_CONTROL'].Index, Row] := '';
      doIniciarEdicion(Sender);
  End;
end;
{****************************************************************
Procedimiento   : padr_pop_punt_controlPopup
Objetivo        : Crear dinámicamente los puntos de control
                  en el popup
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_prod_list_oper_costura.padr_pop_punt_controlPopup(
  Sender: TObject);
var
    var_i    : Integer;
    var_MenuItem       :       TTBXItem;
begin
    //Eliminar los existentes
    For var_i := 4 to padr_pop_punt_control.Items.Count do
        padr_pop_punt_control.Items.Delete(padr_pop_punt_control.Items.Count - 1);
    //Crear los p.control dinámicamente
    With quer_punt_Control do
    Begin
         if Not Active Then Exit;
         First;
         While not eof do
         Begin
               var_MenuItem := TTBXItem.Create(Nil);
               var_MenuItem.Caption := FieldByName('codi_punt_control').AsString + ' - ' + FieldByName('nomb_punt_control').asString;
               var_MenuItem.Tag := FieldByName('cons_punt_control').AsInteger;
               var_MenuItem.OnClick := SetPuntoDeControl;
               var_MenuItem.Images := _fmdi.ImagenesMenus;
               var_MenuItem.ImageIndex := 3;
               padr_pop_punt_control.Items.Add(var_MenuItem);
               Next;
         End;
    End;
end;
{****************************************************************
Procedimiento   : SetPuntoDeControl
Objetivo        : Asignar le punto de control
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_prod_list_oper_costura.SetPuntoDeControl(Sender : TObject);
Begin
        if Not (Sender is TTBXItem) Then Exit;
        If Not quer_punt_Control.Active then exit;
        AsignarPuntoDeControl((Sender as TTBXItem).Tag, Grid.Row, True);
        doIniciarEdicion(Sender);
        Grid.Repaint;
End;

{****************************************************************
Procedimiento   : AsignarPuntoDeControl
Objetivo        : Asignar el punto de control a la fila especificada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_prod_list_oper_costura.AsignarPuntoDeControl(peCons_punt_control, peFila : Integer; peLimpiar : Boolean = True);
var
        var_i   : IntegeR;
Begin
    With quer_punt_Control do
    Begin
        //Invalidar el cero
        if (peCons_punt_Control = 0) Then peCons_punt_Control := -1;
        If Locate('cons_punt_control', peCons_punt_control, []) Then
        Begin
            //Eliminar a quien tenga este punto de control
            if peLimpiar Then
            Begin
              For var_i := 1 To Grid.RowCount - 1 do
                 if (Grid.Cells[Grid.ColumnByName['gridPUNT_CONTROL'].Index, var_i] = FieldByName('codi_punt_control').asString) Then
                 Begin
                    Grid.Cells[Grid.ColumnByName['gridPUNT_CONTROL'].Index, var_i] := '';
                    Break;
                 End;
            End;
            //Asignar el punto de control
            Grid.Cells[Grid.ColumnByName['gridPUNT_CONTROL'].Index, peFila] := FieldByName('codi_punt_control').asString;
        End
        Else
            //Limpiar
            Grid.Cells[Grid.ColumnByName['gridPUNT_CONTROL'].Index, peFila] := '';
    End;
End;
{****************************************************************
Procedimiento   : padr_item_punt_cont_elim_todosClick
Objetivo        : Eliminar TODOS los puntos de control
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_prod_list_oper_costura.padr_item_punt_cont_elim_todosClick(
  Sender: TObject);
var
        var_i   : IntegeR;
begin
  inherited;
  With Grid do
  Begin
      For var_i := 1 to Grid.RowCount - 1 do
         Cells[ColumnByName['gridPUNT_CONTROL'].Index, var_i] := '';
      doIniciarEdicion(Sender);
  End;
end;
{****************************************************************
Procedimiento   : pop_operacionPopup
Objetivo        : Asignar los TAG a la selección del título
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 31-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_prod_list_oper_costura.pop_operacionPopup(Sender: TObject);
begin
  acti_fila_titulo.Tag := Grid.Row;
  acti_fila_operacion.Tag := Grid.Row;
  acti_ver_analisis.Tag := Grid.Row;
end;

end.

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
        Unit            : un1_meto_comp_list_operaciones
        Objetivo        : Listado de operaciones por componentes
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 07 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        
unit un1_meto_comp_list_operaciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, dxTL,
  _vent_modal_alone, PictureContainer, DBTables, AdvPanel, Db,
  RxMemDS, Menus, TB2Item, TBX, AsgFindDialog, dxEditor, StdActns,
  ufra_mens_atencion, TBXDkPanels, TBXButtonSCL, PCPFrame, dxExEdtr,
  dxEdLib, TBXExtItems, SCLTabs, ufra_sele_componentes, Grids, BaseGrid,
  AdvGrid, AdvCGrid, SCLColumnGrid, ExtCtrls, dfsSplitter, TB97, TB97Tlwn,
  dxCntner, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, TB2Dock, TB2Toolbar;

  
type
  Tfn1_meto_comp_list_operaciones = class(T_fvent_modal_alone)
    quer_comp_grupos: TQuery;
    data_comp_grupos: TDataSource;
    quer_comp_variaciones: TQuery;
    data_comp_variaciones: TDataSource;
    Panel2: TPanel;
    acci_ventana: TActionList;
    acti_insertar: TAction;
    acti_adicionar: TAction;
    acti_eliminar: TAction;
    acti_move_arriba: TAction;
    acti_move_abajo: TAction;
    acti_copiar: TdxEditCopy;
    acti_cortar: TdxEditCut;
    acti_pegar: TdxEditPaste;
    acti_importar: TAction;
    acti_impo_sele_todos: TAction;
    acti_impo_importar: TAction;
    acti_sele_todos: TAction;
    acti_buscar: TAction;
    page: TSCLPageControl;
    page_operaciones: TSCLTabSheet;
    dxTabSheet2: TSCLTabSheet;
    TBXDock2: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem6: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem8: TTBXItem;
    TBXItem7: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    TBXItem19: TTBXItem;
    TBXItem18: TTBXItem;
    TBXItem17: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    boto_importar: TTBXVisibilityToggleItem;
    grid: TSCLColumnGrid;
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
    TBXDock1: TTBXDock;
    TBXToolbar2: TTBXToolbar;
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
    quer_operacionesCODI_COMP_GRUPO: TStringField;
    quer_operacionesTIEM_ASIGNADO: TFloatField;
    quer_recu_familias: TQuery;
    quer_operacionesCODI_RECU_FAMILIA: TStringField;
    TBXSeparatorItem7: TTBXSeparatorItem;
    TBControlItem1: TTBControlItem;
    edit_tota_filas: TdxCurrencyEdit;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXLabelItem1: TTBXLabelItem;
    TBXLabelItem2: TTBXLabelItem;
    TBControlItem2: TTBControlItem;
    edit_tiem_total: TdxCurrencyEdit;
    TBControlItem3: TTBControlItem;
    edit_tota_operaciones: TdxCurrencyEdit;
    TBXLabelItem3: TTBXLabelItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    acti_ver_titulos: TAction;
    TBXItem20: TTBXItem;
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
    acti_undo: TAction;
    acti_volv_llamar: TAction;
    TBXItem28: TTBXItem;
    TBXSeparatorItem13: TTBXSeparatorItem;
    TBXItem29: TTBXItem;
    TBXSeparatorItem14: TTBXSeparatorItem;
    pane_importar: TToolWindow97;
    dfsSplitter3: TdfsSplitter;
    TBXDock3: TTBXDock;
    TBXToolbar3: TTBXToolbar;
    TBXItem30: TTBXItem;
    TBXItem31: TTBXItem;
    myTabla_Ventanacons_comp_grupo: TIntegerField;
    myTabla_Ventanacons_comp_variacion: TIntegerField;
    Grid_Importar: TSCLColumnGrid;
    TBControlItem4: TTBControlItem;
    edit_oper_seleccionada: TdxSpinEdit;
    TBXLabelItem4: TTBXLabelItem;
    TBXSeparatorItem12: TTBXSeparatorItem;
    Panel1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    fram_sele_comp_importar: Tffra_sele_componentes;
    boto_impo_cerrar: TTBXItem;
    pane_list_componente: TToolWindow97;
    fram_sele_componentes: Tffra_sele_componentes;
    boto_buscar: TTBXButtonSCL;
    boto_buscar2: TTBXButtonSCL;
    acti_busc_componente: TAction;
    TBXItem25: TTBXItem;
    TBXItem26: TTBXItem;
    TBXItem27: TTBXItem;
    TBXItem32: TTBXItem;
    TBXSeparatorItem11: TTBXSeparatorItem;
    pane_actualizar: Tffra_mens_atencion;
    acti_expo_XLS: TAction;
    acti_expo_HTML: TAction;
    acti_expo_TXT: TAction;
    TBXSeparatorItem15: TTBXSeparatorItem;
    TBXItem33: TTBXItem;
    TBXItem34: TTBXItem;
    TBXItem35: TTBXItem;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXItem36: TTBXItem;
    TBXItem37: TTBXItem;
    TBXItem38: TTBXItem;
    quer_operacionesAJUSTE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure comb_comp_grupoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acti_copiarExecute(Sender: TObject);
    procedure acti_cortarExecute(Sender: TObject);
    procedure acti_pegarExecute(Sender: TObject);
    procedure doIniciarEdicion(Sender: TObject);
    procedure doHacerCalculos(Sender: TSCLColumnGrid);
    procedure doRenumerar(Sender: TSCLColumnGrid);
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
    procedure doTitulo(Sender: TSCLColumnGrid; nume_operacion : Integer);
    procedure unDoTitulo(Sender: TSCLColumnGrid; nume_operacion : Integer);
    procedure gridCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure gridClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure gridCustomCellDraw(Sender: TObject; Canvas: TCanvas; ACol,
      ARow: Integer; AState: TGridDrawState; ARect: TRect;
      Printing: Boolean);
    procedure doCalcularOperacion(Sender: TSCLColumnGrid; nume_operacion : Integer; codi_operacion : String;
        CambiarNombre : Boolean = True);
    procedure doActualizarVerSolamenteTitulos(Sender: TObject);
    procedure acti_ver_titulosExecute(Sender: TObject);
    Procedure doActualizarEsTitulo
        (Sender : TSCLColumnGrid; aRow : Integer; esTitulo : Integer = 0);
    procedure acti_fila_tituloExecute(Sender: TObject);
    procedure acti_fila_operacionExecute(Sender: TObject);
    procedure doLlamarDatos(Sender: TSCLColumnGrid);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure myTabla_VentanaBeforePost(DataSet: TDataSet);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure acti_undoExecute(Sender: TObject);
    procedure acti_volv_llamarExecute(Sender: TObject);
    procedure padr_gridChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure pane_importarVisibleChanged(Sender: TObject);
    procedure acti_impo_sele_todosExecute(Sender: TObject);
    procedure doImportarDobleClick(Sender: TObject);
    procedure edit_oper_seleccionadaExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure eventosEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure padr_acti_actualizarClick(Sender: TObject);
    procedure pane_actualizarAnchorClick(Sender: TObject; Anchor: String);
    procedure fram_sele_componentegridChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure doLlamarDatosSeleccion(Sender: TObject);
    procedure fram_sele_componentequer_comp_impo_imagenesAfterScroll(
      DataSet: TDataSet);
    procedure myTabla_VentanaAfterPost(DataSet: TDataSet);
    procedure myTabla_VentanaAfterCancel(DataSet: TDataSet);
    procedure DoLlamarDatosImportar(
      DataSet: TDataSet);
    procedure fram_sele_comp_importarfram_sele_comp_gridChangeNode(
      Sender: TObject; OldNode, Node: TdxTreeListNode);
    procedure boto_impo_cerrarClick(Sender: TObject);
    procedure acti_busc_componenteExecute(Sender: TObject);
    procedure doSeleccionar(
      Sender: TObject);
    procedure fram_sele_comp_importarfram_sele_imagenDblClick(
      Sender: TObject);
    procedure acti_expo_XLSExecute(Sender: TObject);
    procedure acti_expo_htmlExecute(Sender: TObject);
    procedure acti_expo_TXTExecute(Sender: TObject);

  private
    { Private declarations }
    var_OmitirCalculos  : Boolean;
  public
    { Public declarations }
  end;

ResourceString
cosOperacionNoExiste            = 'La operación NO EXISTE';
cosErrorEnOperacionNo           = 'El error ocurrió en la operación No.';
cosSECU_OPER_TITULO             = 'La operación es un título';
cosSECU_OPER_CRONOMETRO         = 'La operación tiene un tiempo por estudio de cronómetro';
cosSECU_OPER_WARNING            = 'La operación está en blanco';
cosSECU_OPER_ERROR              = 'El código de la operación NO EXISTE';
  
var
  fn1_meto_comp_list_operaciones: Tfn1_meto_comp_list_operaciones;

implementation

uses _func_varias, _cons_pcp, _MDI, _func_pcp, _vari_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.FormCreate(Sender: TObject);
begin
  //RC20.12 Texto de las acciones de exportación
  acti_Expo_XLS.Caption := cosExportarAExcel;
  acti_Expo_HTML.Caption := cosExportarAHTML;
  acti_Expo_TXT.Caption := cosExportarATexto;
  inherited;
  //Inicializar la ventana
  var_cerr_al_cancelar := False;
  page.ActivePage := page_operaciones;
  pane_importar.BringToFront;
  With Grid Do
  Begin
        HideColumn(ColumnByName['gridTIEM_CRONOMETRO'].Index)
  End;
  With Grid_Importar Do
  Begin
        HideColumn(ColumnByName['gridTIEM_CRONOMETRO'].Index)
  End;
  var_OmitirCalculos := False;
  SetTotalColumn(grid.ColumnByName['gridTIEMPO']);
  SetTotalColumn(grid.ColumnByName['gridPH']);
  SetTotalColumn(grid_importar.ColumnByName['gridTIEMPO']);
  SetTotalColumn(grid_importar.ColumnByName['gridPH']);
  InicializarADVFindDialog(grid_find);
  AbrirDataSet(quer_comp_grupos);
  AbrirDataSet(quer_comp_variaciones);
  AbrirDataSet(quer_procesos);
  AbrirDataSet(quer_oper_Tipos);
  AbrirDataSet(quer_recu_familias);
  AbrirDataSet(quer_operaciones);
  InicializarFrame(fram_sele_componentes);
  InicializarFrame(fram_sele_comp_importar);
  //Abrir las consultas
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Actualizar los controles de la ventana
                  cuando se active
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.FormActivate(Sender: TObject);
begin
  inherited;
  //Actualizar el panel de cambio en los métodos
  pane_actualizar.Visible := var_nece_actu_operaciones;
  //Si se requiere actualizar, intentar actualizar manualmente
  If var_nece_actu_operaciones Then
        //Si no está en edición y la selección es válida
        if (myTabla_ventana.State = dsBrowse) Then
        Begin
           //Actualizar las consultas
           padr_acti_actualizar.Execute;
           //Llamar los datos guardados
           doLlamarDatos(Grid);
           //Actualizar los datos de importación
           if (pane_importar.Visible) Then doLlamarDatos(grid_importar);
        End;
  //Maximizar la ventana
  WindowState := wsMaximized;
end;
{****************************************************************
Procedimiento   : comb_comp_grupoChange
Objetivo        : Actualizar los controles de la ventana cuando         
                  cambie la selección activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.comb_comp_grupoChange(
  Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana al mostrarla
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.FormShow(Sender: TObject);
begin
  //Hacer un POST de la tabla ventana antes de mostrar      
  if not var_vent_inicializada then 
     if (myTabla_ventana.State in [dsEdit, dsInsert]) then 
        myTabla_Ventana.Post;
  inherited;
  //Actualizar el cambio de combos de selección
  comb_comp_grupoChange(Sender);
end;
{****************************************************************
Procedimiento   : acti_copiarExecute
Objetivo        : Ejecuta la acción de copiar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_copiarExecute(
  Sender: TObject);
{Var
        var_auxi_integer        : Integer;
        var_auxi_integer2       : Integer;
        var_columna             : Integer;   }
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
                For var_columna := 1 to Grid.ColCount do
                   GridCopy.Cells[var_columna - 1, var_auxi_integer2] := Grid.Cells[var_columna - 1, var_auxi_integer];
                //Incrementar el contador
                var_auxi_integer2 := var_auxi_integer2 + 1;
         End;    }
         Grid.CopiarSeleccion;
    End;
end;
{****************************************************************
Procedimiento   : acti_cortarExecute
Objetivo        : Ejecuta la acción de cortar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_cortarExecute(
  Sender: TObject);
{Var
        var_row_inicial  : Integer; }
begin
  //Si está editanto, cortar
  If Grid.EditMode then
     inherited
  Else
  Begin
      var_omitirCalculos := True;
      {//Guardar el valor del row inicial
      var_row_inicial := Grid.Selection.Top;  
      //Copiar
      acti_CopiarExecute(Sender);
      //Eliminar
      If (Grid.Selection.Bottom - Grid.Selection.Top + 1)>coiContadorMinimoBarraProgreso Then
                ProgresoBarraEstado(Format(cosEliminando,['']));  
      Grid.RemoveRows(Grid.Selection.Top, Grid.Selection.Bottom - Grid.Selection.Top + 1);
      ProgresoBarraEstado;       }
      grid.CortarSeleccion;
      var_omitirCalculos := False;
      doIniciarEdicion(Sender);
      DoHacerCalculos(Grid);
  End;
end;
{****************************************************************
Procedimiento   : acti_pegarExecute
Objetivo        : Ejecuta la acción de pegar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_pegarExecute(
  Sender: TObject);
{Var
        var_auxi_integer        : Integer;
        var_row_original        : Integer;  }
begin
    //Si está en pegar el texto, copiar el texto
    If Grid.EditMode Then
       Inherited
    //Copiar las celdas completas
    Else
    Begin               
         //Pegar los valores
         Grid.DefaultDrawing := False;
         {var_row_original := grid.Row;
         For var_auxi_integer := gridCopy.RowCount downto 1 do
         Begin
                If (GridCopy.RowCount>coiContadorMinimoBarraProgreso) Then
                        ProgresoBarraEstado(cosTrabajando ,gridCopy.RowCount-var_auxi_integer+1, gridCopy.RowCount);
                //Insertar
                acti_insertarExecute(Sender); 
                Grid.Rows[var_row_original] := GridCopy.Rows[var_auxi_integer-1];
         End;
         Grid.Row := var_row_original;  }
         Grid.PegarSeleccion;
         doIniciarEdicion(Sender);
         if Not var_OmitirCalculos Then doHacerCalculos(Grid);
         Grid.DefaultDrawing := True;
    End;
end;
{****************************************************************
Procedimiento   : doIniciarEdicion
Objetivo        : Cambia al estado de edición la consulta principal
                  de la ventna
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.doIniciarEdicion(
  Sender: TObject);
begin
  inherited;
  if not (myTabla_Ventana.State in  [dsEdit, dsInsert]) Then
     myTabla_ventana.Edit;
  //Ocultar el panel de selección del componente
  fram_sele_componentes.Enabled := False;
end;
{****************************************************************
Procedimiento   : doHacerCalculos
Objetivo        : Realiza los calculos de los tiempos en la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.doHacerCalculos(
  Sender: TSCLColumnGrid);
Var
   var_i        : Integer;
   var_tiempo   : Float;
   var_frecuencia       : Float;
   var_rpm      : Integer;
   var_ppc       : Integer;
   var_tiem_titulo      : Float;
   var_tiem_total       : Float;
   
begin
  inherited;
  doRenumerar(Sender);
  With Sender Do
  Begin
      var_tiem_titulo := 0;
      var_tiem_total := 0;
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
           End
           Else
           // Es Un titulo
           Begin
                    var_tiempo := var_tiem_titulo;
                    var_tiem_titulo := 0;
           End;
           //Escribirlos
           Cells[ColumnByName['gridTIEMPO'].Index, var_i] := FormatFloat(FormatoFloat(False), var_tiempo);
           //Calcular la PH
           Cells[ColumnByName['gridPH'].Index, var_i] := FormatFloat('0', var_tiempo/60 );
      End;
      edit_tiem_total.Value := var_tiem_total;
  End;
end;
{****************************************************************
Procedimiento   : doRenumerar
Objetivo        : Renumerar las operaciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.doRenumerar(
  Sender: TSCLColumnGrid);
Var
        var_i   : Integer;
        var_colu_titulo : Integer;
        var_nume_operaciones    : Integer;
begin
  inherited;
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
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_insertarExecute(
  Sender: TObject);
begin
  inherited;
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
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_adicionarExecute(
  Sender: TObject);
begin
  inherited;
  Grid.InsertRows(grid.RowCount, 1);
  Grid.Row := Grid.RowCount - 1;
  DoIniciarEdicion(Sender);
  DoHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_eliminarExecute
Objetivo        : Ejecutar la acción de eliminar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_eliminarExecute(
  Sender: TObject);
begin
  inherited;
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
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_move_arribaExecute(
  Sender: TObject);
{Var
        var_inic_top, var_inic_bottom : Integer;}
begin
  inherited;
  var_OmitirCalculos := True;
  If (grid.Selection.Top<=1) or (Grid.RowCount<=1) Then Exit;
  {
  //Seleccion inicial
  var_inic_top := Grid.Selection.Top;
  var_inic_bottom := Grid.Selection.Bottom;
  //Cortarla
  acti_cortarExecute(Sender);
  //Seleccion anterior
  Grid.Row := var_inic_top - 1;
  //Pegar
  acti_pegarExecute(Sender);
  Grid.SelectRows(var_inic_top - 1, var_inic_bottom - var_inic_top + 1);}
  Grid.MoverHaciaArriba;
  var_OmitirCalculos := False;
  doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_move_abajoExecute
Objetivo        : Ejecutar la acción de mover hacia abajo
                  las operaciones seleccionadas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_move_abajoExecute(
  Sender: TObject);
{Var
        var_inic_top, var_inic_bottom : Integer;
        var_is_last_row : Boolean;   }
begin
  inherited;
  var_OmitirCalculos := True;
  If (grid.Selection.Bottom=Grid.RowCount-1) or (Grid.RowCount<=1) Then Exit;
  {//Seleccion inicial
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
  Grid.SelectRows(var_inic_top + 1, var_inic_bottom - var_inic_top + 1); }
  Grid.MoverHaciaAbajo;
  var_OmitirCalculos := False;
  doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_sele_todosExecute
Objetivo        : Seleccionar todas las operaciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_sele_todosExecute(
  Sender: TObject);
begin
  inherited;
  //Seleccionar todos los elementos
  grid.SelectRows(1,grid.RowCount-1);
end;
{****************************************************************
Procedimiento   : acti_buscarExecute
Objetivo        : Ejecutar el dialogo de búsquedas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_buscarExecute(
  Sender: TObject);
begin
  inherited;
  grid_find.Execute;
end;
{****************************************************************
Procedimiento   : acci_ventanaUpdate
Objetivo        : Actualizar el estado de las acciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acci_ventanaUpdate(
  Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  acti_copiar.Enabled := True;
  acti_pegar.Enabled := True;
  acti_cortar.Enabled := True;
  acti_move_arriba.Enabled := Not((grid.Selection.Top<=1) or (Grid.RowCount<=1)); 
  acti_move_abajo.Enabled := Not ((grid.Selection.Bottom=Grid.RowCount-1) or (Grid.RowCount<=1));
//  acti_undo.Enabled := my.PosicionActual>0;
end;
{****************************************************************
Procedimiento   : gridGetCellColor
Objetivo        : Asignar el color de las celdas al pintarlas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.gridGetCellColor(Sender: TObject;
  ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush;
  AFont: TFont);
begin
  inherited;
  With (Sender as TSCLColumnGrid) do
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
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.gridGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  //Centrar titulos
  if aRow = 0 then hAlign := taCenter;
  if (aCol = 0) and (aRow>0) Then hAlign := taRightJustify;
  With (Sender as TSCLColumnGrid) Do
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
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.gridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
        var_codi_cst    : String;
begin
  inherited;
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
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.doTitulo(
  Sender: TSCLColumnGrid; nume_operacion : Integer);
begin
  inherited;
  //Validar
  If (Sender = Nil) or (Sender.RowCount<=1) or (nume_operacion<1)
     or (nume_operacion>Sender.RowCount-1) Then Exit;
  //Unir las celdas
  Sender.MergeCells(2, nume_operacion, Sender.ColCount -4 , 1);
end;
{****************************************************************
Procedimiento   : unDoTitulo
Objetivo        : Elimina el título de una fila
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.unDoTitulo(
  Sender: TSCLColumnGrid; nume_operacion : Integer);
begin
  inherited;
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
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.gridCanEditCell(Sender: TObject;
  ARow, ACol: Integer; var CanEdit: Boolean);
begin
  inherited;
  if (Grid.Cells[Grid.ColumnByName['gridES_TITULO'].Index, aRow] = '1') and
       (aCol<=Grid.ColumnByName['gridFRECUENCIA'].Index) Then  
          CanEdit := True;
end;
{****************************************************************
Procedimiento   : gridClickCell
Objetivo        : Capturar el click con el botón izquierdo del ratón
                  sobre una operación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.gridClickCell(Sender: TObject;
  ARow, ACol: Integer);
Begin
     Inherited;
     With Grid do
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
     End;
end;
{****************************************************************
Procedimiento   : gridCustomCellDraw
Objetivo        : Pintar manualmente las celdas que lo requieren
                  por ej : Checked
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.gridCustomCellDraw(
  Sender: TObject; Canvas: TCanvas; ACol, ARow: Integer;
  AState: TGridDrawState; ARect: TRect; Printing: Boolean);
begin
  inherited;
  If var_OmitirCalculos Then Exit;
  With (Sender as TSCLColumnGrid) do
  Begin
      If ((aRow>0)) and (aCol = ColumnByName['gridES_TITULO'].Index) then
      Begin
            //Borrar
            Canvas.Brush.Color := FixedColor;
            InflateRect(ARect, -2 , -2);
            Canvas.FillRect(ARect);
            //Checked
            if (Cells[ColumnByName['gridES_TITULO'].Index, aRow] = '1') then
            Begin
                  _fmdi.imag_varias.Draw(Canvas, (ARect.Right + ARect.Left) div 2 - 8, ARect.Top, 9);
                  //AddComment(aCol, aRow, cosSECU_OPER_TITULO);
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
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.doCalcularOperacion(
  Sender: TSCLColumnGrid; nume_operacion : Integer; codi_operacion : String; 
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
             Cells[ColumnByName['gridAJUSTE'].Index, nume_operacion] := '';
             Cells[ColumnByName['gridPPC'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),0);
             Cells[ColumnByName['gridRPM'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),0);
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
             Cells[ColumnByName['gridTIEMPO'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),quer_operaciones.FieldByName('tiem_asignado').AsFloat);
             Cells[ColumnByName['gridTIPO_MAQUINA'].Index, nume_operacion] := quer_operaciones.FieldByName('codi_Recu_familia').AsString;
             Cells[ColumnByName['gridAJUSTE'].Index, nume_operacion] := quer_operaciones.FieldByName('ajuste').AsString;
             Cells[ColumnByName['gridPPC'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),quer_operaciones.FieldByName('punt_por_centimetro').AsFloat);
             Cells[ColumnByName['gridRPM'].Index, nume_operacion] := FormatFloat(FormatoFloat(False),quer_operaciones.FieldByName('revo_por_minuto').AsFloat);
             If CambiarNombre Then
                    Cells[ColumnByName['gridNOMB_OPERACION'].Index, nume_operacion] := quer_operaciones.FieldByName('nomb_oper_costura').AsString;
             Cells[ColumnByName['gridTIEM_CRONOMETRO'].Index, nume_operacion] := quer_operaciones.FieldByName('tiem_cronometro').AsString;
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
procedure Tfn1_meto_comp_list_operaciones.doActualizarVerSolamenteTitulos(
  Sender: TObject);
Var
        var_i   : Integer;
begin
  inherited;
  if acti_ver_titulos.Checked then
  Begin
      //Recorrer el grid y ocultar los que no son titulo
      For var_i := 1 to Grid.RowCount - 1 do
         If (Grid.Cells[Grid.ColumnByName['gridES_TITULO'].Index, var_i] <> 'S') Then
             Grid.HideRow(var_i);
  End
  Else
        //Mostrar todos los ROW
        Grid.UnHideRowsAll;
  //Recalcular
  doHacerCalculos(Grid);
end;

procedure Tfn1_meto_comp_list_operaciones.acti_ver_titulosExecute(
  Sender: TObject);
begin
  inherited;
  //Cambiar el check de la acción
  acti_ver_titulos.Checked := Not Acti_ver_titulos.Checked;
  //Ejecutarla (mostrar Titulos/Todo)
  doActualizarVerSolamenteTitulos(Grid);
end;


{****************************************************************
Procedimiento   : doActualizarEsTitulo
Objetivo        : Actualiza la columna de titulos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure tfn1_meto_comp_list_operaciones.doActualizarEsTitulo
        (Sender : TSCLColumnGrid; aRow : Integer; esTitulo : Integer = 0);
Var
        var_i   : Integer;
        var_titulo      : String;
begin
  inherited;
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
           doTitulo(Sender as TSCLColumnGrid, aRow);
           doHacerCalculos(Sender as TSCLColumnGrid);
           Cells[ColumnByName['gridNOMB_OPERACION'].Index, aRow] := var_Titulo;
        End
        Else
        //UnDoTitulo
        Begin
           Cells[var_i, aRow] := '-1';
           UnDoTitulo(Sender as TSCLColumnGrid, aRow);
           //Limpiar y asignar el titulo al nombre de la operacion
           var_Titulo := Cells[ColumnByName['gridNOMB_OPERACION'].Index, aRow];
           ClearRows(aRow, 1);
           doHacerCalculos(Sender as TSCLColumnGrid);
           Cells[ColumnByName['gridNOMB_OPERACION'].Index, aRow] := var_Titulo;
        End;
  End;
End;
{****************************************************************
Procedimiento   : acti_fila_tituloExecute
Objetivo        : Mostrar una fila como título
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_fila_tituloExecute(
  Sender: TObject);
begin
  inherited;
  doActualizarEsTitulo(Grid, (Sender as TAction).Tag, -1);
end;
{****************************************************************
Procedimiento   : acti_fila_operacionExecute
Objetivo        : Mostrar una fila como operación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_fila_operacionExecute(
  Sender: TObject);
begin
  inherited;
  doActualizarEsTitulo(Grid, (Sender as TAction).Tag, 1);
end;
{****************************************************************
Procedimiento   : doLlamarDatos
Objetivo        : Llamar los datos de una variación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.doLlamarDatos(
  Sender: TSCLColumnGrid);
Var
        var_auxi_integer        : Integer;
begin
  inherited;
  If Not var_vent_inicializada Then Exit;
  //Validar el grid
  var_OmitirCalculos := True;
  LimpiarGrid(Sender);
  Sender.RowCount := 1;
  if Grid=Nil then Exit;
  quer_oper_llamar.Close;                                                      
  //Parametros de la consulta
  If Sender=Grid then
  Begin
           if Not (myTabla_ventana.Active) then Exit;
           quer_oper_llamar.ParamByName('cons_comp_variacion').Value := myTabla_Ventana.FieldbyName('cons_comp_variacion').asInteger
  End
  Else
  Begin
           if Not (fram_sele_comp_importar.quer_comp_impo_imagenes.Active) then Exit;
           if fram_sele_comp_importar.quer_comp_impo_imagenes.RecordCount = 0 Then Exit;
           quer_oper_llamar.ParamByName('cons_comp_variacion').Value := fram_sele_comp_importar.quer_comp_impo_imagenes.FieldbyName('cons_comp_variacion').asInteger;
  End;
  //Llamar los datos
  Try
      With quer_oper_llamar, Sender do
      Begin
           AbrirDataSet(quer_oper_llamar); 
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
                    //Traer los datos del codigo (si no es titulo)
                    If FieldByName('es_titulo').AsInteger<>1 Then
                        doCalcularOperacion(Sender, var_auxi_integer, FieldByName('codi_oper_costura').asString, False)
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
  quer_oper_llamar.Close;
  ProgresoBarraEstado;
  var_OmitirCalculos := False;
  DoHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles de la ventana cuando 
                  cambia el estado de la tabla principal
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.data_ventanaStateChange(
  Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaBeforePost
Objetivo        : Guardar y ejecutar dependencias de la tabla
                  maestra antes de guardarla
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.myTabla_VentanaBeforePost(
  DataSet: TDataSet);
Var
        var_auxi_integer        : Integer;
        var_codi_operacion      : String;
        var_cons_variacion      : Integer;
        var_es_titulo           : Integer;
begin
  inherited;  
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
                 ParamByName('cons_comp_variacion').Value := mytabla_ventana.FieldByName('cons_comp_variacion').asInteger;
                 ParamByName('secu_oper_vari_componente').Value := var_auxi_integer;
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
                 ParamByName('es_titulo').Value := var_es_titulo;
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
procedure Tfn1_meto_comp_list_operaciones.gridSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
  //Actualizar el control de la operación actual
  edit_oper_seleccionada.Value := aRow;
end;

procedure Tfn1_meto_comp_list_operaciones.acti_undoExecute(
  Sender: TObject);
begin
  inherited;
//  my.doUndo;
//  DoHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_volv_llamarExecute
Objetivo        : Volver a llamar los datos guardados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_volv_llamarExecute(
  Sender: TObject);
begin
  inherited;
  doLlamarDatos(Grid);
end;
{****************************************************************
Procedimiento   : padr_gridChangeNode
Objetivo        : Actualizar la lista de las operaciones para 
                  el componente seleccionado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.padr_gridChangeNode(
  Sender: TObject; OldNode, Node: TdxTreeListNode);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : pane_importarVisibleChanged
Objetivo        : Actualizar los controles cuando el panel 
                  de importar cambie su estado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.pane_importarVisibleChanged(
  Sender: TObject);
begin
  inherited;
  //Si esta visible, reabrir la consulta
  if pane_importar.Visible then
  Begin
        //Si no tiene filas, adicionar 1
        If grid.RowCount <= 1 then acti_adicionar.Execute;
        If not fram_sele_comp_importar.quer_comp_impo_imagenes.Active then AbrirDataSet(fram_sele_comp_importar.quer_comp_impo_imagenes);
  End;
end;
{****************************************************************
Procedimiento   : acti_impo_sele_todosExecute
Objetivo        : Seleccionar todas las operaciones del grid de importación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_impo_sele_todosExecute(
  Sender: TObject);
begin
  inherited;
  Grid_Importar.SelectRows(1,Grid_importar.RowCount-1);
end;
{****************************************************************
Procedimiento   : acti_impo_importarExecute
Objetivo        : Ejecutar la acción de importar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.doImportarDobleClick(
  Sender: TObject);
Var
        var_auxi_integer        : Integer;
        var_row_original        : Integer;
        var_col                 : Integer;
begin
    Inherited;
    //Copiar las celdas completas
    Begin               
         //Pegar los valores
         Grid.DefaultDrawing := False;
         var_row_original := grid.Row;
         For var_auxi_integer := Grid_Importar.Selection.Bottom downto Grid_Importar.Selection.Top do
         Begin
                If (Grid_Importar.Selection.Bottom-Grid_Importar.Selection.Top+1>25) Then
                        ProgresoBarraEstado(cosTrabajando ,Grid_Importar.RowCount-var_auxi_integer+1, Grid_Importar.RowCount);
                //Insertar
                acti_insertarExecute(Sender);
                For var_col := 1 to Grid_Importar.ColCount - 1 do
                   Grid.Cells[var_col, var_row_original] := Grid_Importar.Cells[var_col, var_auxi_integer];
         End;
         Grid.Row := var_row_original;
         doIniciarEdicion(Sender);
         doHacerCalculos(Grid);
         ProgresoBarraEstado;
         Grid.DefaultDrawing := True;
    End;
end;
{****************************************************************
Procedimiento   : edit_oper_seleccionadaExit
Objetivo        : Posicionar el cursor en la fila seleccionada
                  en el indicador de operacion actual
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.edit_oper_seleccionadaExit(
  Sender: TObject);
begin
  inherited;
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
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.FormDestroy(Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : eventosEventAlert
Objetivo        : Alertar de los cambios ucurridos en la base de
                  datos en los que intervenga un disparador
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.eventosEventAlert(
  Sender: TObject; EventName: String; EventCount: Integer;
  var CancelAlerts: Boolean);
begin
  inherited;
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
procedure Tfn1_meto_comp_list_operaciones.padr_acti_actualizarClick(
  Sender: TObject);
begin
  inherited;
  pane_actualizar.Visible := False;
  var_nece_actu_operaciones := False;
end;
{****************************************************************
Procedimiento   : pane_actualizarAnchorClick
Objetivo        : Actualizar las consulta cuando se de click
                  en el panel de actualización requerida
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.pane_actualizarAnchorClick(
  Sender: TObject; Anchor: String);
begin
  inherited;
  //Actualizar
  padr_acti_actualizar.Execute;
end;

procedure Tfn1_meto_comp_list_operaciones.fram_sele_componentegridChangeNode(
  Sender: TObject; OldNode, Node: TdxTreeListNode);
begin
  inherited;
  //Si es un agrupado, salir
  DoLlamarDatosSeleccion(Sender);
end;
{****************************************************************
Procedimiento   : doLlamarDatosSeleccion
Objetivo        : Llamar los datos de la selección actual
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.doLlamarDatosSeleccion(
  Sender: TObject);
begin
  inherited;
  page.Enabled := False;
  LimpiarGrid(Grid);
  With fram_sele_componentes Do
  Begin
        If Not(quer_impo_componentes.Active) or (quer_impo_componentes.RecordCount=0) Then Exit;
        if Not(quer_comp_impo_imagenes.Active) or (quer_comp_impo_imagenes.RecordCount = 0) then Exit;
        //Verificar que la tabla local esté en insert/edit
        if not (myTabla_ventana.State in [dsEdit, dsInsert]) then myTabla_ventana.Edit;
        //Valores de la selección
        myTabla_Ventana.FieldByName('cons_comp_grupo').Value := quer_impo_componentes.FieldByName('cons_comp_grupo').asInteger;
        myTabla_Ventana.FieldByName('cons_comp_variacion').Value := quer_comp_impo_imagenes.FieldByName('cons_comp_variacion').asInteger;
        doLlamarDatos(Self.Grid);
        page.Enabled := True;
  End;
end;
{****************************************************************
Procedimiento   : fram_sele_componentequer_comp_impo_imagenesAfterScroll
Objetivo        : Actualizar la variación activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.fram_sele_componentequer_comp_impo_imagenesAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  DoLlamarDatosSeleccion(Grid);
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterPost
Objetivo        : Actualizar los controles una vez guardado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.myTabla_VentanaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //Mostrar el panel de selección del componente
  fram_sele_componentes.Enabled := True;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterCancel
Objetivo        : Actualizar los controles cuando se cancele 
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.myTabla_VentanaAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
  //LLamar los datos originales
  acti_volv_llamar.Execute;
  //Mostrar el panel de selección del componente
  fram_sele_componentes.Enabled := True;
end;
{****************************************************************
Procedimiento   : DoLlamarDatosImportar
Objetivo        : Cargar los datos del componente seleccionado
                  en el grid de importación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.DoLlamarDatosImportar(
  DataSet: TDataSet);
begin
  inherited;
  DoLlamarDatos(Grid_Importar);
end;
{****************************************************************
Procedimiento   : fram_sele_comp_importarfram_sele_comp_gridChangeNode
Objetivo        : Actualizar la consulta de importación cuando cambie el 
                  registro activo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.fram_sele_comp_importarfram_sele_comp_gridChangeNode(
  Sender: TObject; OldNode, Node: TdxTreeListNode);
begin
  inherited;
  //Heredar
  fram_sele_comp_importar.fram_sele_comp_gridChangeNode(Sender,
  OldNode, Node);
  //Llamar los datos
  DoLlamarDatos(Grid_Importar);
end;
{****************************************************************
Procedimiento   : boto_impo_cerrarClick
Objetivo        : Cerrar la ventana de importación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.boto_impo_cerrarClick(
  Sender: TObject);
begin
  inherited;
  pane_importar.Visible := False;
end;
{****************************************************************
Procedimiento   : acti_busc_componenteExecute
Objetivo        : Abre la ventana de búsqueda de componentes
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_busc_componenteExecute(
  Sender: TObject);
begin
  inherited;
  pane_list_componente.Visible := True;
end;

procedure Tfn1_meto_comp_list_operaciones.doSeleccionar(
  Sender: TObject);
begin
  inherited;
  pane_list_componente.visible := False;
end;
{****************************************************************
Procedimiento   : doImportarDobleClick
Objetivo        :  Importa las operaciones seleccionadas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 19 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.fram_sele_comp_importarfram_sele_imagenDblClick(
  Sender: TObject);
begin
  inherited;
  acti_impo_sele_todos.Execute;
  acti_impo_importar.Execute;
end;

{****************************************************************
Procedimiento   : acti_expo_XLSExecute
Objetivo        : Exporta a XLS el Grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_expo_XLSExecute(
  Sender: TObject);
begin
  inherited;
  ExportarGridAExcel(Grid);
end;
{****************************************************************
Procedimiento   : acti_expo_htmlExecute
Objetivo        : Exporta a HTML el Grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_expo_htmlExecute(
  Sender: TObject);
begin
  inherited;
  ExportarGridAHTML(Grid);
end;
{****************************************************************
Procedimiento   : acti_expo_textoExecute
Objetivo        : Exporta a TXT el Grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure Tfn1_meto_comp_list_operaciones.acti_expo_TXTExecute(
  Sender: TObject);
begin
  inherited;
  ExportarGridATexto(Grid);
end;


end.

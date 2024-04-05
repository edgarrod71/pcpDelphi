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
        Unit            : uwn1_come_filt_pedidos
        Objetivo        : Asistente para el filtro de pedidos
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 26 de 2004
        Versión         : pcp4.0.0.19
*******************************************************************}
unit uwn1_come_filt_pedidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uWizard, JvWizard, JvWizardRouteMapNodes, ExtCtrls, StdCtrls,
  JvExControls, JvComponent, Boxes, PCPFrame, dxEditor, dxExEdtr, dxEdLib,
  dxCntner, ufra_sele_rang_fechas, SCLShape, dxTL, dxDBCtrl, dxDBGrid,
  SCLDBGrid, TB2Item, TBX, TB2Dock, TB2Toolbar, ActnList, Db, DBTables,
  RxMemDS, JvExExtCtrls, JvNavigationPane, ufra_filt_avanzado, TBXDkPanels,
  TBXButtonSCL, ufra_filt_avan_varios;

type
  Tfwn1_come_filt_pedidos = class(TfWizard)
    page1: TJvWizardWelcomePage;
    Label1: TLabel;
    page2: TJvWizardInteriorPage;
    Page3: TJvWizardInteriorPage;
    dock_menu: TTBXDock;
    menu: TTBXToolbar;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    acti_Ventana: TActionList;
    acti_adic_1: TAction;
    acti_adic_todos: TAction;
    acti_elim_1: TAction;
    acti_elim_todos: TAction;
    quer_referencias: TQuery;
    data_referencias: TDataSource;
    quer_referenciasCONS_REFERENCIA: TIntegerField;
    quer_referenciasCODI_REFERENCIA: TStringField;
    quer_referenciasCODI_INTE_REFERENCIA: TStringField;
    quer_referenciasNOMB_REFERENCIA: TStringField;
    tabl_filt_referencias: TRxMemoryData;
    tabl_filt_referenciascons_referencia: TIntegerField;
    data_filt_Referencias: TDataSource;
    tabl_filt_referenciascodi_referencia: TStringField;
    Page5: TJvWizardInteriorPage;
    tabl_filt_clientes: TRxMemoryData;
    tabl_filt_clientescons_tercero: TIntegerField;
    tabl_filt_clientesnomb_Tercero: TStringField;
    data_filt_clientes: TDataSource;
    quer_clientes: TQuery;
    quer_clientesCONS_TERCERO: TIntegerField;
    quer_clientesCODI_TERCERO: TStringField;
    quer_clientesNOMB_TERCERO: TStringField;
    data_clientes: TDataSource;
    Page4: TJvWizardInteriorPage;
    pane_fech_sistema: TPCPFrame;
    pane_fech_pedido: TPCPFrame;
    fram_fech_pedido: Tffra_sele_rang_fechas;
    pane_fech_entrega: TPCPFrame;
    fram_fech_entrega: Tffra_sele_rang_fechas;
    PCPFrame1: TPCPFrame;
    grid_referencias: TSCLDBGrid;
    grid_referenciasCONS_REFERENCIA: TdxDBGridMaskColumn;
    grid_referenciasCODI_REFERENCIA: TdxDBGridMaskColumn;
    grid_referenciasNOMB_REFERENCIA: TdxDBGridMaskColumn;
    grid_referenciasCODI_INTE_REFERENCIA: TdxDBGridMaskColumn;
    PCPFrame2: TPCPFrame;
    grid_filt_referencias: TSCLDBGrid;
    grid_filt_referenciascons_referencia: TdxDBGridMaskColumn;
    grid_filt_referenciascodi_referencia: TdxDBGridMaskColumn;
    PCPFrame3: TPCPFrame;
    grid_clientes: TSCLDBGrid;
    grid_clientesCONS_TERCERO: TdxDBGridMaskColumn;
    grid_clientesCODI_TERCERO: TdxDBGridMaskColumn;
    grid_clientesNOMB_TERCERO: TdxDBGridMaskColumn;
    PCPFrame4: TPCPFrame;
    grid_filt_clientes: TSCLDBGrid;
    grid_filt_clientescons_tercero: TdxDBGridMaskColumn;
    grid_filt_clientesnomb_Tercero: TdxDBGridMaskColumn;
    PCPFrame5: TPCPFrame;
    grid_variaciones: TSCLDBGrid;
    PCPFrame6: TPCPFrame;
    grid_filt_variaciones: TSCLDBGrid;
    tabl_filt_variaciones: TRxMemoryData;
    data_filt_variaciones: TDataSource;
    tabl_filt_variacionesnomb_refe_variacion: TStringField;
    quer_variaciones: TQuery;
    data_Variaciones: TDataSource;
    quer_variacionesCONS_REFE_TIPO_VARIACION: TIntegerField;
    quer_variacionesCODI_REFE_TIPO_VARIACION: TStringField;
    quer_variacionesNOMB_REFE_TIPO_VARIACION: TStringField;
    grid_variacionesCONS_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    grid_variacionesCODI_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    grid_variacionesNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    grid_filt_variacionescons_refe_variacion: TdxDBGridMaskColumn;
    grid_filt_variacionesnomb_refe_tipo_variacion: TdxDBGridMaskColumn;
    tabl_filt_variacionescons_Refe_tipo_variacion: TIntegerField;
    page6: TJvWizardInteriorPage;
    quer_campos: TQuery;
    filt_avanzados: Tffra_filt_avan_varios;
    Page7: TJvWizardInteriorPage;
    fram_fech_sistema: Tffra_sele_rang_fechas;
    procedure FormCreate(Sender: TObject);
    procedure acti_adic_1Execute(Sender: TObject);
    procedure acti_adic_todosExecute(Sender: TObject);
    procedure acti_elim_1Execute(Sender: TObject);
    procedure acti_elim_todosExecute(Sender: TObject);
    procedure padr_wizardActivePageChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure padr_wizardFinishButtonClick(Sender: TObject);
    procedure doAdicionarSpace(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure doEliminarSpace(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Function GetFilter : String;
  public
    { Public declarations }
    Function doEjecutarAsistente(
        peFech_sistema : Boolean = True;
        peFech_pedido : Boolean = True;
        peFech_entrega : Boolean = True) : String;
  end;

var
  fwn1_come_filt_pedidos: Tfwn1_come_filt_pedidos;

implementation

uses _func_varias, _MDI, _cons_colores, _func_db, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : doEjecutarAsistente
Objetivo        : Ejecuta (inicializa y muestra) el asistente 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.0.20
*****************************************************************}
Function Tfwn1_come_filt_pedidos.doEjecutarAsistente(
    peFech_sistema : Boolean = True;
    peFech_pedido : Boolean = True;
    peFech_entrega : Boolean = True) : String;
Begin
    //Inicializar
    Result := '';
    pane_fech_sistema.Visible :=  peFech_sistema;
    pane_fech_pedido.Visible :=  peFech_pedido;
    pane_fech_entrega.Visible :=  peFech_entrega;
    data_filt_Referencias.DataSet := tabl_filt_referencias;
    padr_wizard.activePage := page1;
    //Mostrar el asistente
    ShowModal;
    //Resultado
    Result := GetFilter;
End;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 26 de 2005
Versión         : pcp4.0.0.19
*****************************************************************}
procedure Tfwn1_come_filt_pedidos.FormCreate(Sender: TObject);
begin
  inherited;
  //Dar formato a las paginas
  page1.color := clFondoAplicacion;
  page2.color := clFondoAplicacion;
  page3.color := clFondoAplicacion;
  page4.color := clFondoAplicacion;
  page5.color := clFondoAplicacion;
  page6.color := clFondoAplicacion;
  ColorGrid(grid_referencias);
  ColorGrid(grid_filt_Referencias);
  ColorGrid(grid_variaciones);
  ColorGrid(grid_filt_variaciones);
  ColorGrid(grid_clientes);
  ColorGrid(grid_filt_clientes);
  //Abrir las consultas
  AbrirDataSet(quer_referencias);
  AbrirDataSet(tabl_filt_referencias);
  AbrirDataSet(quer_variaciones);
  AbrirDataSet(tabl_filt_variaciones);
  AbrirDataSet(quer_clientes);
  AbrirDataSet(tabl_filt_clientes);
  AbrirDataSet(quer_campos);

  //Abrir filtros
  filt_avanzados.doEjecutarFrame(quer_campos);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : acti_adic_1Execute
Objetivo        : Adiciona un registro de la lista 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 26 de 2005
Versión         : pcp4.0.0.19
*****************************************************************}
procedure Tfwn1_come_filt_pedidos.acti_adic_1Execute(Sender: TObject);
Var
    var_i   : Integer;
begin
  inherited;
  //Pagina de referencias
  if padr_wizard.ActivePage = Page3 Then
  Begin
       for var_i := 1 to grid_referencias.Count do
           If grid_referencias.Items[var_i - 1].Selected then
              if Not tabl_filt_referencias.Locate('cons_referencia', grid_referencias.Items[var_i - 1].Values[grid_Referencias.ColumnByFieldName('cons_Referencia').Index], []) Then
              Begin
                  tabl_filt_Referencias.Insert;
                  tabl_filt_Referencias.FieldByName('cons_Referencia').Value := grid_referencias.Items[var_i - 1].Values[grid_Referencias.ColumnByFieldName('cons_Referencia').Index];
                  tabl_filt_Referencias.FieldByName('codi_referencia').Value := grid_referencias.Items[var_i - 1].Values[grid_Referencias.ColumnByFieldName('codi_referencia').Index];
                  tabl_Filt_referencias.Post;
              End;
  End
  Else
  //Pagina de variacioens
  if padr_wizard.ActivePage = Page4 Then
  Begin
       for var_i := 1 to grid_variaciones.Count do
           If grid_variaciones.Items[var_i - 1].Selected then
              if Not tabl_filt_variaciones.Locate('cons_Refe_tipo_variacion', grid_variaciones.Items[var_i - 1].Values[grid_variaciones.ColumnByFieldName('cons_Refe_tipo_variacion').Index], []) Then
              Begin
                  tabl_filt_variaciones.Insert;
                  tabl_filt_variaciones.FieldByName('cons_Refe_tipo_variacion').Value := grid_variaciones.Items[var_i - 1].Values[grid_variaciones.ColumnByFieldName('cons_Refe_tipo_variacion').Index];
                  tabl_filt_variaciones.FieldByName('nomb_Refe_tipo_variacion').Value := grid_variaciones.Items[var_i - 1].Values[grid_variaciones.ColumnByFieldName('nomb_Refe_tipo_variacion').Index];
                  tabl_Filt_variaciones.Post;
              End;
  End
  Else
  //Pagina de clientes
  if padr_wizard.ActivePage = Page5 Then
  Begin
       for var_i := 1 to grid_clientes.Count do
           If grid_clientes.Items[var_i - 1].Selected then
              if Not tabl_filt_clientes.Locate('cons_tercero', grid_clientes.Items[var_i - 1].Values[grid_clientes.ColumnByFieldName('cons_Tercero').Index], []) Then
              Begin
                  tabl_filt_Clientes.Insert;
                  tabl_filt_Clientes.FieldByName('cons_tercero').Value := grid_clientes.Items[var_i - 1].Values[grid_clientes.ColumnByFieldName('cons_Tercero').Index];
                  tabl_filt_Clientes.FieldByName('nomb_tercero').Value := grid_clientes.Items[var_i - 1].Values[grid_clientes.ColumnByFieldName('nomb_tercero').Index];
                  tabl_Filt_Clientes.Post;
              End;
  End;
End;
{****************************************************************
Procedimiento   : acti_adic_todosExecute
Objetivo        : Adiciona todos los registros de la lista
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 26 de 2005
Versión         : pcp4.0.0.19
*****************************************************************}
procedure Tfwn1_come_filt_pedidos.acti_adic_todosExecute(Sender: TObject);
Var
    var_i   : Integer;
begin
  inherited;
  //Pagina de referencias
  if padr_wizard.ActivePage = Page3 Then
  Begin
       for var_i := 1 to grid_referencias.Count do
          if Not tabl_filt_referencias.Locate('cons_referencia', grid_referencias.Items[var_i - 1].Values[grid_Referencias.ColumnByFieldName('cons_Referencia').Index], []) Then
          Begin
              tabl_filt_Referencias.Insert;
              tabl_filt_Referencias.FieldByName('cons_Referencia').Value := grid_referencias.Items[var_i - 1].Values[grid_Referencias.ColumnByFieldName('cons_Referencia').Index];
              tabl_filt_Referencias.FieldByName('codi_referencia').Value := grid_referencias.Items[var_i - 1].Values[grid_Referencias.ColumnByFieldName('codi_referencia').Index];
              tabl_Filt_referencias.Post;
          End;
  End
  Else
  //Pagina de variacioens
  if padr_wizard.ActivePage = Page4 Then
  Begin
       for var_i := 1 to grid_variaciones.Count do
          if Not tabl_filt_variaciones.Locate('cons_Refe_tipo_variacion', grid_variaciones.Items[var_i - 1].Values[grid_variaciones.ColumnByFieldName('cons_Refe_tipo_variacion').Index], []) Then
          Begin
              tabl_filt_variaciones.Insert;
              tabl_filt_variaciones.FieldByName('cons_Refe_tipo_variacion').Value := grid_variaciones.Items[var_i - 1].Values[grid_variaciones.ColumnByFieldName('cons_Refe_tipo_variacion').Index];
              tabl_filt_variaciones.FieldByName('nomb_Refe_tipo_variacion').Value := grid_variaciones.Items[var_i - 1].Values[grid_variaciones.ColumnByFieldName('nomb_Refe_tipo_variacion').Index];
              tabl_Filt_variaciones.Post;
          End;
  End
  Else
  //Pagina de clientes
  if padr_wizard.ActivePage = Page5 Then
  Begin
       for var_i := 1 to grid_clientes.Count do
        if Not tabl_filt_clientes.Locate('cons_tercero', grid_clientes.Items[var_i - 1].Values[grid_clientes.ColumnByFieldName('cons_Tercero').Index], []) Then
        Begin
            tabl_filt_Clientes.Insert;
            tabl_filt_Clientes.FieldByName('cons_Tercero').Value := grid_clientes.Items[var_i - 1].Values[grid_clientes.ColumnByFieldName('cons_Tercero').Index];
            tabl_filt_Clientes.FieldByName('nomb_tercero').Value := grid_clientes.Items[var_i - 1].Values[grid_clientes.ColumnByFieldName('nomb_tercero').Index];
            tabl_Filt_Clientes.Post;
        End;
  End;
end;
{****************************************************************
Procedimiento   : acti_elim_1Execute
Objetivo        : Elimina un registro de la lista
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 26 de 2005
Versión         : pcp4.0.0.19
*****************************************************************}
procedure Tfwn1_come_filt_pedidos.acti_elim_1Execute(Sender: TObject);
begin
  inherited;
  //Pagina de referencias
  if padr_wizard.ActivePage = Page3 Then
  Begin
       Grid_filt_referencias.DeleteSelection;
  End
  Else
  //Pagina de Variaciones
  if padr_wizard.ActivePage = Page4 Then
  Begin
       grid_filt_variaciones.DeleteSelection;
  End
  Else
  //Pagina de Clientes
  if padr_wizard.ActivePage = Page5 Then
  Begin
       grid_filt_clientes.DeleteSelection;
  End;
end;
{****************************************************************
Procedimiento   : acti_elim_todosExecute
Objetivo        : Elimina todos los registros agregados al filtro
                  en la opción activa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.0.20
*****************************************************************}
procedure Tfwn1_come_filt_pedidos.acti_elim_todosExecute(Sender: TObject);
begin
  inherited;
  //Pagina de referencias
  if padr_wizard.ActivePage = Page3 Then
  Begin
       tabl_Filt_Referencias.Close;
       tabl_Filt_Referencias.Open;
  End
  Else
  If padr_wizard.ActivePage = Page4 Then
  //Pagina de variaciones
  Begin
        tabl_filt_variaciones.Close;
        tabl_Filt_variaciones.Open;
  End
  Else
  //Pagina de clientes
  if padr_wizard.ActivePage = Page5 Then
  Begin
       tabl_Filt_Clientes.Close;
       tabl_Filt_Clientes.Open;
  End;

end;
{****************************************************************
Procedimiento   : padr_wizardActivePageChanged
Objetivo        : Actualiza los controles al cambiar la página del asistente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.0.20
*****************************************************************}
procedure Tfwn1_come_filt_pedidos.padr_wizardActivePageChanged(
  Sender: TObject);
begin
  inherited;
  //Mostrar el menú de asignación entre las páginas
  if (padr_wizard.ActivePageIndex > 1) and
     (padr_wizard.ActivePageIndex < padr_wizard.PageCount - 2) Then
        dock_menu.parent := padr_wizard.ActivePage;
end;
{****************************************************************
Procedimiento   : FormClose
Objetivo        : No liberar la ventana al cerrarla. La debe liberar
                  la ventana que la creó
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.0.20
*****************************************************************}
procedure Tfwn1_come_filt_pedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
end;
{****************************************************************
Procedimiento   : padr_wizardFinishButtonClick
Objetivo        : Finalizar el asistente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfwn1_come_filt_pedidos.padr_wizardFinishButtonClick(
  Sender: TObject);
begin
  inherited;
  var_se_cancelo := False;
  Close;
end;
{****************************************************************
Procedimiento   : GetFilter
Objetivo        : Genera el filtro del asistente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Function Tfwn1_come_filt_pedidos.GetFilter : String;
var
    var_filt_avanzado   : String;
Begin
    //Identificar si se canceló
    if var_se_cancelo Then
    Begin
        Result := cos_se_cancelo;
        Exit;
    End;
    //Inicializar
    Result := '';
    //Fechas
    If fram_fech_sistema.chec_desde.Checked then
        Result := Result + ' and (fech_sistema >= "' + DateToSQLDate(fram_fech_sistema.comb_fech_desde.Date) + '")';
    If fram_fech_sistema.chec_hasta.Checked then
        Result := Result + ' and (fech_sistema <= "' + DateToSQLDate(fram_fech_sistema.comb_fech_hasta.Date) + '")';
    If fram_fech_pedido.chec_desde.Checked then
        Result := Result + ' and (fech_pedido >= "' + DateToSQLDate(fram_fech_pedido.comb_fech_desde.Date) + '")';
    If fram_fech_pedido.chec_hasta.Checked then
        Result := Result + ' and (fech_pedido <= "' + DateToSQLDate(fram_fech_pedido.comb_fech_hasta.Date) + '")';
    If fram_fech_entrega.chec_desde.Checked then
        Result := Result + ' and (fech_entrega >= "' + DateToSQLDate(fram_fech_entrega.comb_fech_desde.Date) + '")';
    If fram_fech_entrega.chec_hasta.Checked then
        Result := Result + ' and (fech_entrega <= "' + DateToSQLDate(fram_fech_entrega.comb_fech_hasta.Date) + '")';
    //Referencias
    var_filt_avanzado := dxDbGridSelectIn(grid_filt_referencias, 'cons_referencia', True);
    if var_filt_avanzado <> '' Then
        Result := Result + ' and (cons_referencia in (' + var_filt_avanzado + '))';
    //Variaciones
    var_filt_avanzado := dxDbGridSelectIn(grid_filt_variaciones, 'cons_refe_tipo_variacion', True);
    if var_filt_avanzado <> '' Then
        Result := Result + ' and (cons_refe_tipo_variacion in (' + var_filt_avanzado + '))';
    //Clientes
    var_filt_avanzado := dxDbGridSelectIn(grid_filt_clientes, 'cons_tercero', True);
    if var_filt_avanzado <> '' Then
        Result := Result + ' and (cons_Tercero in (' + var_filt_avanzado + '))';
    //Filtros avanzados
    var_filt_avanzado := filt_avanzados.GetFilter;
    if var_filt_avanzado <> '' Then
        Result := Result + ' and ' + var_filt_avanzado;
    //Eliminar el primer AND del filtro
    if Result <> '' Then
       Delete(Result, 1, 5);
End;
{****************************************************************
Procedimiento   : doAdicionarSpace
Objetivo        : Adiciona a la lista con el teclado (espacio)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 02 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfwn1_come_filt_pedidos.doAdicionarSpace(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_space then
    acti_adic_1.Execute;
end;
{****************************************************************
Procedimiento   : doEliminarSpace
Objetivo        : Elimina de la lista con el teclado (Espacio)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 02 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tfwn1_come_filt_pedidos.doEliminarSpace(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_space then
    acti_elim_1.Execute;
end;

end.

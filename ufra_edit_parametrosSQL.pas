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
        Unit            : ufra_edit_parametrosSQL
        Objetivo        : Frame para la edición y configuración
                          de parametros SQL
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 30-mar-2005
        Versión         : pcp4.0.20.6
*******************************************************************}unit ufra_edit_parametrosSQL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, kbmMemTable, DBTables, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, dxEdLib, dxDBELib, dxEditor, dxExEdtr, SoCtrls, SCLDBLabel,
  JvExControls, JvComponent, JvEditorCommon, JvUnicodeEditor,
  JvUnicodeHLEditor, RxLookup, PCPLookUpComboEdit, StdCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, SCLTabs, JvExExtCtrls, JvNavigationPane, ExtCtrls,
  dfsSplitter;

  
type
  Tffra_edit_parametrosSQL = class(TFrame)
    data_parametros: TDataSource;
    quer_parametros: TQuery;
    Panel1: TPanel;
    page: TSCLPageControl;
    page_Lista: TSCLTabSheet;
    Panel3: TPanel;
    lista: TdxDBMemo;
    page_busqueda: TSCLTabSheet;
    pageSQL: TSCLPageControl;
    pageSQL_edit: TSCLTabSheet;
    TBXDock2: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    boto_SQL_asistente: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    boto_SQL_Validar: TTBXItem;
    Panel4: TPanel;
    Label1: TLabel;
    comb_base_Datos: TPCPLookUpComboEdit;
    MemoSQL: TJvWideHLEditor;
    pageSQL_Opciones: TSCLTabSheet;
    Panel5: TPanel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    edit_camp_llave: TdxDBButtonEdit;
    edit_camp_busqueda: TdxDBButtonEdit;
    edit_base_datos: TdxDBEdit;
    pageSQL_VistaPrevia: TSCLTabSheet;
    grid_vist_previa: TdxDBGrid;
    page_no_mas: TSCLTabSheet;
    pane_info_na: TPanel;
    dfsSplitter1: TdfsSplitter;
    Grid: TdxDBGrid;
    Gridide: TdxDBGridMaskColumn;
    Gridnomb_campo: TdxDBGridMaskColumn;
    Gridtext_campo: TdxDBGridMaskColumn;
    Gridtipo_campo: TdxDBGridPickColumn;
    GridColumnrequerido: TdxDBGridCheckColumn;
    quer_auxiliar: TQuery;
    tabl_parametros: TkbmMemTable;
    tabl_parametroside: TIntegerField;
    tabl_parametrosnomb_campo: TStringField;
    tabl_parametrostext_campo: TStringField;
    tabl_parametrostipo_campo: TStringField;
    tabl_parametrosrequerido: TBooleanField;
    tabl_parametroslista: TStringField;
    tabl_parametrostext_SQL: TStringField;
    tabl_parametrosdata_base_name: TStringField;
    tabl_parametroscamp_busqueda: TStringField;
    tabl_parametroscamp_lista: TStringField;
    pane_info: TJvNavPanelDivider;
    procedure GridChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure GridEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure boto_SQL_asistenteClick(Sender: TObject);
    procedure boto_SQL_ValidarClick(Sender: TObject);
    procedure MemoSQLChange(Sender: TObject);
    procedure edit_camp_llaveButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure edit_camp_busquedaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    Procedure ActualizarSeleccion;
  public
    { Public declarations }
    Constructor Create(Owner : TComponent); Override;
    Procedure CargarParametros(peQuery : TQuery);
  end;

implementation

uses _func_db, _MDI, _func_varias, _cons_pcp, un0_edit_sql,
  un0_dial_sele_campos;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear e inicializar el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Constructor Tffra_edit_parametrosSQL.Create(Owner : TComponent); 
Var
    var_ft   : TTipoDeDato;
Begin
        Inherited Create(Owner);
        //Inicializar los componentes
        page.ActivePage := page_No_mas;
        page.HideTabs := True;
        pane_info.Color := clBtnShadow;
        //Abrir la consulta de parámetros
        tabl_parametros.Open;
        //Cargar la lista de tipos de datos
        For var_ft := Low(TTipoDeDato) to High(TTipoDeDato) Do
          gridTIPO_CAMPO.Items.Add(cosTipoItems[var_ft]);
End;

{****************************************************************
Procedimiento   : CargarParametros
Objetivo        : Carga los parámetros desde un Query
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_edit_parametrosSQL.CargarParametros(peQuery : TQuery);
VAR
        var_i   : Integer;
Begin
     //Validar el query de entrada
     if (peQuery = Nil) Then Exit;
     //Reabrir la tabla
     tabl_Parametros.Close;
     tabl_parametros.Open;
     //Cargar los parámetros del Query
     For var_i := 1 to peQuery.ParamCount do
     Begin
         tabl_parametros.Insert;
         tabl_parametros.FieldByName('ide').Value := var_i;
         tabl_parametros.FieldByName('nomb_campo').Value := peQuery.Params[var_i - 1].Name;
         tabl_parametros.FieldByName('text_campo').Value := peQuery.Params[var_i - 1].Name;
         tabl_parametros.FieldByName('tipo_campo').Value := cosTipoItems[DataTypeToTipoDeDato(peQuery.Params[Var_i - 1].DataType)];
         tabl_parametros.FieldByName('lista').Value := '';
         tabl_parametros.FieldByName('text_SQL').Value := '';
         tabl_parametros.FieldByName('data_base_name').Value := peQuery.DataBaseName;
         tabl_parametros.FieldByName('camp_busqueda').Value := '';
         tabl_parametros.FieldByName('camp_lista').Value := '';
         tabl_parametros.FieldByName('requerido').Value := False;
         tabl_parametros.Post;
     End;
     tabl_parametros.Sort([]);
     tabl_parametros.First;
End;
{****************************************************************
Procedimiento   : GridChangeNode
Objetivo        : Actualiza la ventana cuando cambia el nodo
                  activo en el grid de parámetros
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_parametrosSQL.GridChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
        ActualizarSeleccion;
end;
{****************************************************************
Procedimiento   : ActualizarSeleccion
Objetivo        : Actualiza el panel de valores de la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_edit_parametrosSQL.ActualizarSeleccion;
var
    var_Tipo_item : TTipoItemPanelFiltros;
begin
    if not tabl_parametros.Active Then Exit;
    //Texto
    pane_info.Color := clBtnShadow;
    pane_info.Caption := GridTipo_Campo.Field.AsString;
    //Buscar el tipo de item
    For var_Tipo_item := Low(TTipoItemPanelFiltros) to High(TTipoItemPanelFiltros) do
    Begin
        If (GridTipo_Campo.Field.AsString = cosTipoItems[var_Tipo_item]) Then
           Break;
    End;
    //Pagina
    Case var_Tipo_item of
        tipfLista : Page.ActivePage := page_Lista;
        tipfBusqueda : Begin
            Page.ActivePage := page_busqueda;
            quer_Auxiliar.Close;
            quer_Auxiliar.DataBaseName := tabl_parametros.FieldByName('data_base_name').asString;
            quer_Auxiliar.SQL.Text := tabl_parametros.FieldByName('text_SQL').asString;
            memoSQL.Lines.Clear;
            memoSQL.Lines.Assign(quer_Auxiliar.SQL);
            {comb_base_datos.KeyValue := tabl_parametros.FieldByName('data_base_name').asString;}
        End;
        Else page.ActivePage := page_No_Mas;
    End;
End;
{****************************************************************
Procedimiento   : GridEdited
Objetivo        : Actualiza la selección al editar el grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_parametrosSQL.GridEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
    ActualizarSeleccion;
end;
{****************************************************************
Procedimiento   : boto_SQL_asistenteClick
Objetivo        : Abre el diseñador de consultas SQL
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_parametrosSQL.boto_SQL_asistenteClick(Sender: TObject);
begin
    Application.CreateForm(Tfn0_edit_SQL, fn0_edit_SQL);
    if fn0_edit_SQL.Ejecutar(quer_Auxiliar) Then
    Begin
        memoSQL.Lines.Assign(quer_Auxiliar.SQL);
        MemoSQLChange(Sender);
    End;
end;
{****************************************************************
Procedimiento   : boto_SQL_ValidarClick
Objetivo        : Valida la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_parametrosSQL.boto_SQL_ValidarClick(Sender: TObject);
begin
    Try
      quer_Auxiliar.Close;
      quer_Auxiliar.Open;
      EjecutarMensaje(cosConexionExitosa, mtInformation, [mbOK], 0);
    Except
        On e:Exception do
            MessageDlg(cosConexionError+#13+e.Message, mtError, [mbOK], 0);
    End;
end;
{****************************************************************
Procedimiento   : MemoSQLChange
Objetivo        : Actualiza el SQL al cambiar el texto de la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_parametrosSQL.MemoSQLChange(Sender: TObject);
begin
    if Not(tabl_parametros.State in [dsInsert, dsEdit]) Then
        tabl_parametros.Edit;
    quer_Auxiliar.Close;
    quer_Auxiliar.Sql.Assign(MemoSQL.Lines);
    tabl_parametros.FieldByName('text_SQL').asString := quer_Auxiliar.SQL.Text;
    tabl_parametros.Post;
end;
{****************************************************************
Procedimiento   : edit_camp_llaveButtonClick
Objetivo        : Seleccionar el campo llave en parámetros de búsqueda
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_parametrosSQL.edit_camp_llaveButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
        var_camp_actual : String;
begin
        //Seleccionar el campo llave
        var_Camp_actual := edit_Camp_llave.Text;
        Application.createForm(Tfn0_dial_sele_campos, fn0_dial_sele_campos);
        fn0_dial_sele_campos.doEjecutarVentana(quer_auxiliar, var_camp_actual);
        if (var_Camp_Actual <> '') And (var_camp_actual <> edit_Camp_llave.Text) Then
        Begin
           If Not (tabl_parametros.State in [dsInsert, dsEdit]) Then
                tabl_parametros.Edit;
           tabl_parametros.FieldByName('camp_busqueda').Value := var_camp_actual;
           tabl_parametros.Post;
        End;
end;
{****************************************************************
Procedimiento   : edit_camp_busquedaButtonClick
Objetivo        : Seleccionar el campo de lista en parámetros de
                  búsqueda
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_parametrosSQL.edit_camp_busquedaButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
        var_camp_actual : String;
begin
        //Seleccionar el campo llave
        var_Camp_actual := edit_Camp_busqueda.Text;
        Application.createForm(Tfn0_dial_sele_campos, fn0_dial_sele_campos);
        fn0_dial_sele_campos.doEjecutarVentana(quer_auxiliar, var_camp_actual);
        if (var_Camp_Actual <> '') And (var_camp_actual <> edit_Camp_busqueda.Text) Then
        Begin
           If Not (tabl_parametros.State in [dsInsert, dsEdit]) Then
                tabl_parametros.Edit;
           tabl_parametros.FieldByName('camp_lista').Value := var_camp_actual;
           tabl_parametros.Post;
        End;
end;

end.

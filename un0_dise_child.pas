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
        Unit            : un1_dise_child
        Objetivo        : Ventana para el diseño de consultas Child
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Marzo 16 de 2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit un0_dise_child;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, JvComponent, JvBalloonHint, TBXDkPanels, TBXButtonSCL,
  PanelFiltros, JvExExtCtrls, JvNavigationPane, ufra_mens_atencion,
  ufra_arbo_menu, dxCntner, dxEditor, dxExEdtr, dxEdLib, ufra_edit_campos,
  ufra_edit_parametrosSQL, ufra_edit_SQL, SCLTabs, dxDBCtrl, dxDBTLCl,
  dxGrClms, Db, DBTables, TB2Item, SCLPropiedadesForm, ImgList,
  Menus, TBX, ActnList, ufra_edit_reportes, ExtCtrls, dfsSplitter, Boxes,
  PCPFrame, JvExControls, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TB2Dock, TB2Toolbar, dxDBGrid, SCLDBGrid, dxPageControl,
  JvComponentBase;


type
  TTipoInicioVentanaDiseno = (tivdEdicion, tivdEjecucion);
  Tfn0_dise_child = class(T_fvent_child)
    padr_acti_diseno: TActionList;
    padr_page_filtros: TdxTabSheet;
    padr_pane_filtros: TTBXDockablePanel;
    padr_Acti_dise_nuevo: TAction;
    padr_acti_dise_abrir: TAction;
    padr_barr_diseno: TTBXToolbar;
    padr_boto_dise_abrir: TTBXItem;
    padr_boto_dise_nuevo: TTBXItem;
    padr_acti_dise_guardar: TAction;
    padr_acti_dise_guar_como: TAction;
    padr_boto_dise_guardar: TTBXItem;
    padr_boto_dise_guar_Como: TTBXItem;
    padr_acti_dise_eliminar: TAction;
    padr_acti_dise_ejecutar: TAction;
    padr_acti_dise_actualizar: TAction;
    padr_boto_dise_eliminar: TTBXItem;
    padr_boto_dise_sepa1: TTBXSeparatorItem;
    padr_boto_dise_actualizar: TTBXItem;
    padr_boto_dise_vist_previa: TTBXItem;
    padr_boto_dise_sepa2: TTBXSeparatorItem;
    padr_acti_dise_prop_campos: TAction;
    padr_boto_dise_columnas: TTBXItem;
    padr_acti_dise_salir: TAction;
    padr_boto_dise_sepa3: TTBXSeparatorItem;
    padr_boto_dise_salir: TTBXItem;
    padr_acti_dise_SQL: TAction;
    padr_boto_dise_sql: TTBXItem;
    quer_llam_objeto: TQuery;
    padr_balon: TJvBalloonHint;
    quer_llam_parametros: TQuery;
    padr_gridColumn1: TdxDBGridDateColumn;
    quer_objeto: TQuery;
    quer_elim_parametros: TQuery;
    quer_inse_parametros: TQuery;
    padr_acti_edit_parametros: TAction;
    padr_boto_parametros: TTBXItem;
    pagina: TSCLPageControl;
    page_sql: TSCLTabSheet;
    fram_edit_SQL: Tffra_edit_sql;
    page_parametros: TSCLTabSheet;
    fram_edit_parametros: Tffra_edit_parametrosSQL;
    page_columnas: TSCLTabSheet;
    padr_pane_filt_xp: TPCPFrame;
    padr_pane_filt_1: TPanel;
    padr_titu_filtros: TJvNavPanelDivider;
    padr_filtros: TPanelFiltros;
    fram_edit_campos: Tffra_edit_campos;
    page_vist_previa: TSCLTabSheet;
    quer_elim_campos: TQuery;
    quer_inse_campos: TQuery;
    quer_llam_campos: TQuery;
    padr_acti_dise_reload: TAction;
    padr_boto_dise_update: TTBXItem;
    padr_acti_Ver_filtros_salida: TAction;
    quer_veri_nombre: TQuery;
    quer_elim_objeto: TQuery;
    quer_guar_como: TQuery;
    page_observaciones: TSCLTabSheet;
    memo_observaciones: TdxMemo;
    pane_info_Estado: Tffra_mens_atencion;
    padr_Boto_dise_observaciones: TTBXItem;
    page_ubicacion: TSCLTabSheet;
    fram_arbo_ubicacion: Tffra_arbo_menu;
    padr_boto_ubicacion: TTBXItem;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    acti_expandir: TAction;
    acti_contraer: TAction;
    padr_acti_filt_rapido: TAction;
    TBXSeparatorItem3: TTBXSeparatorItem;
    padr_pane_filt_entrada: TPanel;
    padr_pane_boto_Actualizar: TPanel;
    TBXButtonSCL1: TTBXButtonSCL;
    procedure padr_acti_actualizarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_dise_parametrosExecute(Sender: TObject);
    procedure padr_acti_dise_SQLExecute(Sender: TObject);
    procedure padr_acti_dise_prop_camposExecute(Sender: TObject);
    procedure padr_acti_dise_parametrosUpdate(Sender: TObject);
    procedure padr_acti_dise_guardarUpdate(Sender: TObject);
    procedure padr_acti_dise_guar_comoUpdate(Sender: TObject);
    procedure padr_acti_dise_guardarExecute(Sender: TObject);
    procedure fram_edit_SQLMemoSQLChange(Sender: TObject);
    procedure fram_edit_parametrosdata_parametrosStateChange(
      Sender: TObject);
    procedure padr_boto_parametrosClick(Sender: TObject);
    procedure page_columnasShow(Sender: TObject);
    procedure fram_edit_camposdata_ventanaStateChange(Sender: TObject);
    procedure padr_boto_dise_actualizarClick(Sender: TObject);
    procedure padr_acti_nuevoUpdate(Sender: TObject);
    procedure padr_acti_modificarUpdate(Sender: TObject);
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure padr_acti_nuevoExecute(Sender: TObject);
    procedure consultaAfterOpen(DataSet: TDataSet);
    procedure padr_acti_disenoUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure padr_acti_dise_reloadExecute(Sender: TObject);
    procedure padr_acti_Ver_filtros_salidaExecute(Sender: TObject);
    procedure padr_acti_dise_guar_comoExecute(Sender: TObject);
    procedure padr_Boto_dise_observacionesClick(Sender: TObject);
    procedure memo_observacionesPropertiesChange(Sender: TObject);
    procedure paginaChange(Sender: TObject);
    procedure padr_acti_dise_ejecutarUpdate(Sender: TObject);
    procedure padr_acti_dise_ejecutarExecute(Sender: TObject);
    procedure padr_boto_ubicacionClick(Sender: TObject);
    procedure fram_arbo_ubicacionlistaCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure acti_expandirExecute(Sender: TObject);
    procedure acti_contraerExecute(Sender: TObject);
    procedure acti_expandirUpdate(Sender: TObject);
    procedure fram_arbo_ubicacionlistaBeginDragNode(Sender: TObject;
      Node: TdxTreeListNode);
    procedure fram_arbo_ubicacionlistaEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure padr_acti_modificarExecute(Sender: TObject);
    procedure memo_observacionesChange(Sender: TObject);
    procedure padr_Acti_nuev_reporteExecute(Sender: TObject);
    procedure padr_acti_befo_print_fortesExecute(Sender: TObject);
  private
    { Private declarations }
    var_TipoInicioVentana : TTipoInicioVentanaDiseno;
    var_NombreModulo    : String;
    var_cons_Objeto     : Integer;
    var_modificado      : Boolean;
    var_Descripcion     : String;
    var_NombrePadre     : String;
    var_labe_asignados  : Boolean;
    Function EnDiseno : Boolean;
    Function doLlamarCampos : Boolean;
    Procedure AsignarLabelsQuery;
 public
    { Public declarations }
    Procedure Ejecutar(peTipoInicio : TTipoInicioVentanaDiseno = tivdEdicion; peNombreModulo : String = ''; peNombrePadre : String = '');Overload;
    Procedure Ejecutar(peTipoInicio : TTipoInicioVentanaDiseno = tivdEdicion; peCons_Objeto : Integer = 0; peNombrePadre : String = '');Overload;
    Procedure AplicarFiltrosResultados;
    Procedure LimpiarFiltros;
    Property TipoInicioVentana : TTipoInicioVentanaDiseno Read var_TipoInicioVentana;
    Property NombreModulo : String Read var_NombreModulo Write var_NombreModulo;
  end;

var
  fn0_dise_child: Tfn0_dise_child;

implementation


uses _func_db, _func_varias, _MDI, un0_edit_campos, un0_edit_sql, _cons_pcp,
  _func_pcp, _func_grids, _cons_colores, un0_dise_dial_guar_como, _uData,
  uInformesRL, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : padr_acti_actualizarExecute
Objetivo        : Ejecuta la acción ACTUALIZAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_actualizarExecute(Sender: TObject);
begin
  //inherited;
  If (enDiseno) Then Exit;
  Consulta.Close;
  padr_pane_filtros.Visible := False;
  //Panel de filtro de resultados
  padr_acti_Ver_filtros_salida.Visible := True;
  padr_acti_filt_rapido.Visible := True;
  padr_acti_Ver_filtros_salida.Enabled := (Not EnDiseno);
  padr_acti_filt_rapido.Enabled := (Not EnDiseno);
  padr_filtros.AsignarParametros(Consulta);
  AbrirDataSet(Consulta);
end;
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecuta la ventana de acuerdo al modo solicitado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 16 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn0_dise_child.Ejecutar(peTipoInicio : TTipoInicioVentanaDiseno = tivdEdicion;
        peNombreModulo : String = ''; peNombrePadre : String = '');
Begin
  //Asignar valores a las propiedades
  var_TipoInicioVentana := peTipoInicio;
  var_NombreModulo := peNombreModulo;
  var_NombrePadre := peNombrePadre;
  pane_info_estado.Visible := (peTipoInicio = tivdEdicion);
  //Inicializar los controles generales
  padr_barra.Visible := (peTipoInicio = tivdEjecucion);
  padr_barr_diseno.Visible := (peTipoInicio = tivdEdicion);
  pagina.Visible := (peTipoInicio = tivdEdicion);
  //Evaluar el tipo de ejecución
  Case peTipoInicio of
        tivdEdicion : Begin
             padr_grid.PopupMenu := Nil;
             padr_grid.Parent := page_vist_previa;
        End;
        tivdEjecucion : Begin
             padr_grid.PopupMenu := padr_pop_grid;
             padr_Grid.Parent := fram_pagi_lista;
        End;
  End;
  //Inicializar las variables
  var_Modificado := False;
  padr_filtros.ActualizarTamanoControles(Self);
End;
{****************************************************************
Procedimiento   : Ejecutar
Objetivo        : Ejecuta la ventana de acuerdo al modo solicitado
                  abriendo un consecutivo de consulta en la base de datos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn0_dise_child.Ejecutar(peTipoInicio : TTipoInicioVentanaDiseno = tivdEdicion; peCons_Objeto : Integer = 0;
        peNombrePadre : String = '');
var
        var_TipoDato    : TTipoDeDato;
        var_TipoDato_aux        : TTipoDeDato;
        var_item_filtro : TItemPanelFiltros;
        var_i   : Integer;
        var_cons_item_padre     : Integer;
Begin
      Try
         //Cargar el objeto
         With quer_llam_objeto do
         Begin
              var_Cons_Objeto := peCons_Objeto;
              ParamByName('cons_objeto').Value := peCons_Objeto;
              Open;
              //Parametrizar los objetos de acuerdo con la consulta
              Consulta.Close;
              Consulta.SQL.Text := FieldByName('text_SQL').asString;
              Consulta.DataBaseName := FieldByName('base_Datos').AsString;
              If Consulta.DataBaseName = '' Then
                 Consulta.DataBaseName := _fmdi.data_base_pcp.DataBaseName;
              fram_edit_SQL.OQDLG.OQBEngine.DatabaseName := Consulta.DatabaseName;
              fram_edit_SQL.auxi_query.DatabaseName := Consulta.DatabaseName;
              fram_edit_SQL.MemoSQL.Lines.Assign(Consulta.SQL);
              Self.Caption := FieldByName('nomb_objeto').asString;
              if (peTipoInicio = tivdEdicion) Then
                Self.Caption := cosDisenando + Self.Caption;
              padr_pane_titulo.LabelCaption := Self.Caption;
              var_Descripcion := FieldByName('desc_objeto').AsString;

              //Insertar el objeto en el menú
              if (peTipoInicio = tivdEdicion) Then
              Begin
                  //Buscar el consecutivo del menú padre
                  if fram_arbo_ubicacion.tabla.Locate('nomb_objeto', FieldByName('nomb_menu_padre').asString, []) Then
                        var_cons_item_padre := fram_arbo_ubicacion.tabla.FieldByName('cons_consulta').asInteger
                  Else
                        var_cons_item_padre := 0;
                  //Insertar el item al final
                  fram_arbo_ubicacion.tabla.Insert;
                  fram_arbo_ubicacion.tabla.FieldByName('cons_consulta').Value := 9999;
                  fram_arbo_ubicacion.tabla.FieldByName('padr_consulta').Value := var_Cons_item_padre;
                  fram_arbo_ubicacion.tabla.FieldByName('nomb_objeto').Value := cosObjetoPCP + IntToStr(var_Cons_Objeto);
                  fram_arbo_ubicacion.tabla.FieldByName('caption').Value := FieldByName('nomb_objeto').asString;
                  fram_arbo_ubicacion.tabla.FieldByName('index_imagen').Value := cosIndexImagenObjetoPCPInicial;
                  fram_arbo_ubicacion.tabla.Post;
              End;
              //Mostrar un balón con la descripción
              {if var_Descripcion <> '' Then
                    padr_balon.ActivateHint(padr_pane_titulo, var_Descripcion, ikInformation, cosInformacion); }
              //Cargar las observaciones
              Memo_Observaciones.Lines.Clear;
              Memo_Observaciones.Lines.Text := FieldByName('desc_objeto').asString;
              //llamar los campos
              doLlamarCampos;

              //Ejecutar - Basico (overloaded)
              if (FieldByName('nomb_objeto').asString <> '') Then
                  Ejecutar(peTipoInicio, FieldByName('nomb_objeto').asString, peNombrePadre)
              Else
                  Ejecutar(peTipoInicio, cosSinNombre,  peNombrePadre);
              Close;
         End;
         //Preparar los parámetros de la consulta
         With quer_llam_parametros do
         Begin
               //Cerrar la tabla del frame de parametros
               fram_edit_parametros.tabl_parametros.Close;
               //Preparar la consulta
               Close;
               ParamByName('cons_objeto').Value := peCons_Objeto;
               Open;
               //Abrir la tabla del frame de parámetros
               fram_edit_parametros.tabl_parametros.Open;
               var_i := 0;
               While not Eof do
               Begin
                   //Obtener el tipo de filtro
                   var_TipoDato := tipfCaracter;
                   For var_TipoDato_aux := Low(TTipoDeDato) to High(TTipoDeDato) do
                     If (UpperCase(FieldByName('tipo_parametro').asString) = UpperCase(cosTipoItems[var_TipoDato_aux])) Then
                         var_TipoDato := var_TipoDato_Aux;
                   //Adicionar en el panel de filtros
                   var_item_filtro := padr_filtros.Adicionar(FieldByName('nomb_parametro').asString,
                         FieldByName('text_parametro').AsString, var_TipoDato, 0, (FieldByName('requerido').asInteger = 1));
                   var_item_filtro.Caption := FieldByName('text_parametro').asString;
                   //Tipo de dato (listas y busquedas)
                   Case var_TipoDato of
                        tipfLista : var_item_filtro.PropiedadesLista(FieldByName('list_datos').asString);
                        tipfBusqueda : var_item_filtro.PropiedadesBusqueda(FieldByName('list_consulta').asString,
                               Consulta.DatabaseName, FieldByName('list_camp_llave').asString,
                               FieldByName('list_camp_mostrar').asString);
                   End;
                   //Formatear el parámetro en el Query
                   Consulta.ParamByName(FieldByName('nomb_parametro').asString).ParamType := ptInput;
                   Consulta.ParamByName(FieldByName('nomb_parametro').asString).DataType := TipoDeDatoToDataType(var_TipoDato);
                   if (peTipoInicio = tivdEdicion) Then
                   Begin
                       //Crear el parámetro en el frame de edición de parámetros
                       fram_edit_parametros.tabl_parametros.Insert;
                       fram_edit_parametros.tabl_parametros.FieldByName('ide').Value := var_i;
                       fram_edit_parametros.tabl_parametros.FieldByName('nomb_campo').Value := FieldByName('nomb_parametro').asString;
                       fram_edit_parametros.tabl_parametros.FieldByName('text_campo').Value := FieldByName('text_parametro').AsString;
                       fram_edit_parametros.tabl_parametros.FieldByName('tipo_campo').Value := cosTipoItems[var_TipoDato];
                       fram_edit_parametros.tabl_parametros.FieldByName('requerido').Value := (FieldByName('requerido').asInteger = 1);
                       fram_edit_parametros.tabl_parametros.FieldByName('lista').Value := FieldByName('list_datos').asString;
                       fram_edit_parametros.tabl_parametros.FieldByName('text_SQL').Value := FieldByName('list_consulta').asString;
                       fram_edit_parametros.tabl_parametros.FieldByName('data_Base_name').Value := Consulta.DatabaseName;
                       fram_edit_parametros.tabl_parametros.FieldByName('camp_busqueda').Value := FieldByName('list_camp_llave').asString;
                       fram_edit_parametros.tabl_parametros.FieldByName('camp_lista').Value := FieldByName('list_camp_mostrar').asString;
                       fram_edit_parametros.tabl_parametros.Post;
                       inc(var_i);
                   End;
                   //Siguiente
                   Next;
               End;
               Close;
               //Ordenar la tabla de parámetros
               fram_edit_parametros.tabl_parametros.Sort([]);
               fram_edit_parametros.tabl_parametros.First;
         End;
         //Lamar los campos
         if (peTipoInicio = tivdEjecucion) then
             doLlamarCampos;
         //Abrir la consulta si está RUNTIME
         If (peTipoInicio = tivdEjecucion) Then
         Begin
              //Abrir la consulta
              Consulta.DisableControls;
              Consulta.Open;
              //Mostrar el panel de filtros
              if (Consulta.paramCount > 0) Then
              Begin
                  padr_pane_Filtros.Visible := True;
                  padr_pane_filtros.CurrentDock := padr_dock_izqu_grid;
                  padr_filtros.Active := True;
                  padr_filtros.Caption := '';
                  padr_pane_filtros.Width := 280;
              End;
              padr_acti_Ver_filtros_salida.Enabled := True;
              GridCrearColumnas(padr_Grid);
              //Ponerle título a las columnas
              If Not fram_edit_campos.myTabla_Ventana.Active Then
                fram_edit_campos.Execute(Consulta);
              For var_i := 1 to padr_grid.ColumnCount do
              Begin
                   //Buscar el registro en la tabla de campos
                   If fram_edit_campos.myTabla_Ventana.Locate('nomb_campo', padr_grid.Columns[var_i - 1].Field.FieldName, []) Then
                   Begin
                        padr_grid.Columns[var_i - 1].Caption := fram_edit_campos.myTabla_Ventana.FieldByName('text_campo').asString;
                        padr_grid.Columns[var_i - 1].Visible := fram_edit_campos.myTabla_Ventana.FieldByName('visible').asBoolean;
                   End;
              End;
              AjustarGrid(padr_Grid);
              //Dar nombre a los campos del query
              AsignarLabelsQuery;
              LimpiarFiltros;
              //Actualizar el componente de selección de campos
              Sincronizar_Columnas;
              Consulta.Close;
         End;
         //dar por guardado
         var_Modificado := False;
     Except
         On e:Exception do
            EjecutarMensajeError(e.Message);
     End;
     Consulta.EnableControls;
     FormStyle := fsMDIChild;
     WindowState := wsMaximized;
     padr_filtros.ActualizarTamanoControles(Self);
End;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 16 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.FormCreate(Sender: TObject);
begin
  pagina.HideTabs := True;
  var_labe_asignados := False;
  
  fram_arbo_ubicacion.Ejecutar(False);
  padr_acti_filt_rapido.Enabled := False;

  //Captions de los tabs
  page_SQL.Caption := padr_boto_dise_sql.Caption;
  page_parametros.Caption := padr_boto_parametros.Caption;
  page_columnas.Caption := padr_boto_dise_columnas.Caption;
  page_observaciones.Caption := padr_Boto_dise_observaciones.Caption;
  page_ubicacion.Caption := padr_boto_ubicacion.Caption;

  //Inicialización de controles
  pane_info_estado.SetNormalColors(true);
  pane_info_estado.SetCaption(pagina.ActivePage.Caption);
  var_NombreModulo := cosSinNombre;
  pagina.Align := alClient;
  padr_filtros.Color := clFondoAplicacion;
  inherited;
  data_ventana.DataSet := Consulta;
  pagina.ActivePage := page_SQL;
  Ejecutar(tivdEdicion, '');
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : padr_acti_dise_parametrosExecute
Objetivo        : Editar los parámetros del filtro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 16 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_dise_parametrosExecute(
  Sender: TObject);
begin
  inherited;

end;
{****************************************************************
Procedimiento   : EnDiseno
Objetivo        : Indica si la ventana está en modo de edición
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 16 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tfn0_dise_child.EnDiseno : Boolean;
Begin
    Result := (TipoInicioVentana = tivdEdicion);
End;
{****************************************************************
Procedimiento   : padr_acti_dise_SQLExecute
Objetivo        : Ejecutar el diálogo asistente para la creación de consultas
                  SQL
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 29-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_dise_SQLExecute(Sender: TObject);
begin
  inherited;
  //Verificar que esté en diseño
  if Not EnDiseno Then Exit;
  pagina.ActivePage := page_SQL;
  //Ejecutar el asistente de consultas
//  Application.CreateForm(Tfn0_Edit_SQL, fn0_Edit_SQL);
//  if fn0_Edit_SQL.Ejecutar(Consulta) Then
//        var_Modificado := True;
end;
{****************************************************************
Procedimiento   : padr_acti_dise_prop_camposExecute
Objetivo        : Abre el diálogo de edición de campos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 29-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_dise_prop_camposExecute(
  Sender: TObject);
begin
  inherited;
  pagina.ActivePage := page_Columnas;
  {Application.CreateForm(Tfn0_edit_campos, fn0_edit_campos);
  //Ejecutar el diálogo
  if fn0_edit_campos.Execute(Consulta) Then
  Begin
        var_Modificado := True;
        AjustarGrid(padr_Grid);
  End;}
end;
{****************************************************************
Procedimiento   : padr_acti_dise_parametrosUpdate
Objetivo        : Habilitar/Deshabilitar la opción de editar el diseño
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 05-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_dise_parametrosUpdate(Sender: TObject);
begin
  inherited;
  padr_acti_edit_parametros.Enabled := (EnDiseno) and (Consulta.Params.Count > 0);
end;
{****************************************************************
Procedimiento   : padr_acti_dise_guardarUpdate
Objetivo        : Actualizar el estado de la acción GUARDAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_dise_guardarUpdate(Sender: TObject);
begin
  inherited;
  padr_acti_dise_guardar.Enabled := (var_NombreModulo <> '') and (var_Modificado);
end;
{****************************************************************
Procedimiento   : padr_acti_dise_guar_comoUpdate
Objetivo        : Actualizar el estado de la acción GUARDAR COMO
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_dise_guar_comoUpdate(Sender: TObject);
begin
  inherited;
  padr_acti_dise_guar_como.Enabled := (var_NombreModulo <> '');
end;
{****************************************************************
Procedimiento   : padr_acti_dise_guardarExecute
Objetivo        : Guardar el diseño activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_dise_guardarExecute(Sender: TObject);
Var
    var_loca_cons_conf_objeto    : Integer;
    var_cons_padre      : Integer;
    var_nomb_padre      : String;
begin
      Try
          //Inicializar la transaccion
          StartDBTransaction;
          Consulta.Close;
          if not (fram_edit_campos.MyTabla_Ventana.Active) then
                AbrirDataSet(fram_edit_campos.MyTabla_Ventana);
          //Buscar el consecutivo del menú padre
          fram_arbo_ubicacion.tabla.Locate('cons_consulta', 9999, []);
          var_cons_padre := fram_arbo_ubicacion.tabla.FieldByName('padr_consulta').asInteger;
          If fram_arbo_ubicacion.tabla.Locate('cons_consulta', var_Cons_padre, []) Then
                var_nomb_padre := fram_arbo_ubicacion.tabla.FieldByName('nomb_objeto').asString
          Else
                var_nomb_padre := cosSinMenu;
          //Crear el padre (objeto - PCP_CONF_OBJETOS)
          With quer_objeto do
          Begin
               If active Then Close;
               ParamByName('CONS_CONF_OBJETO').Value := var_cons_Objeto;
               ParamByName('TIPO').Value := 1;
               ParamByName('NOMB_OBJETO').Value := NombreModulo;
               ParamByName('DESC_OBJETO').Value := memo_Observaciones.Lines.Text;
               ParamByName('MENU_PADRE').Value := var_NombrePadre;
               ParamByName('NOMB_MENU_PADRE').Value := var_nomb_padre;
               ParamByName('ESTA_ACTIVO').Value := 1;
               ParamByName('BASE_DATOS').Value := Consulta.DataBaseName;
               ParamByName('TEXT_SQL').Value := Consulta.SQL.Text;
               Open;
               var_loca_cons_conf_objeto := FieldByName('cons_Conf_objeto').asInteger;
               var_cons_Objeto := var_loca_cons_conf_objeto;
               Close;
          End;
          //Eliminar los parámetros existenes
          With quer_elim_parametros do
          Begin
                ParamByName('cons_conf_objeto').Value := var_cons_Objeto;
                ExecSQL;
          End;
          //Insertar los nuevos parámetros
          With quer_inse_parametros do
          Begin
                fram_edit_parametros.tabl_parametros.First;
                While not fram_edit_parametros.tabl_parametros.Eof do
                Begin
                        ParamByName('cons_conf_objeto').Value := var_cons_Objeto;
                        ParamByName('nomb_parametro').Value := fram_edit_parametros.tabl_parametros.FieldByName('nomb_campo').AsString;
                        ParamByName('text_parametro').Value := fram_edit_parametros.tabl_parametros.FieldByName('text_campo').asString;
                        ParamByName('tipo_parametro').Value := UpperCase(fram_edit_parametros.tabl_parametros.FieldByName('tipo_campo').AsString);
                        ParamByName('list_datos').Value := fram_edit_parametros.tabl_parametros.FieldByName('lista').asString;
                        ParamByName('list_consulta').Value := fram_edit_parametros.tabl_parametros.FieldByName('text_SQL').asString;
                        ParamByName('list_camp_llave').Value := fram_edit_parametros.tabl_parametros.FieldByName('camp_busqueda').asString;
                        ParamByName('list_camp_mostrar').Value := fram_edit_parametros.tabl_parametros.FieldByName('camp_lista').asString;
                        if fram_edit_parametros.tabl_parametros.FieldByName('requerido').asBoolean Then
                            ParamByName('requerido').Value := 1
                        Else
                            ParamByName('requerido').Value := -1;
                        ExecSQL;
                        //Siguiente parámetro
                        fram_edit_parametros.tabl_parametros.Next;
                End;
          End;
          //Eliminar los campos existenes
          With quer_elim_campos do
          Begin
                ParamByName('cons_conf_objeto').Value := var_cons_Objeto;
                ExecSQL;
          End;
          //Insertar los nuevos campos
          With quer_inse_campos do
          Begin
                fram_edit_campos.myTabla_Ventana.First;
                While not fram_edit_campos.myTabla_Ventana.Eof do
                Begin
                        ParamByName('cons_conf_objeto').Value := var_cons_Objeto;
                        ParamByName('nomb_campo').Value := fram_edit_campos.myTabla_Ventana.FieldByName('nomb_campo').AsString;
                        ParamByName('text_campo').Value := fram_edit_campos.myTabla_Ventana.FieldByName('text_campo').asString;
                        ParamByName('formato').Value := fram_edit_campos.myTabla_Ventana.FieldByName('formato').asString;
                        if fram_edit_campos.myTabla_Ventana.FieldByName('visible').asBoolean Then
                            ParamByName('visible').Value := 1
                        Else
                            ParamByName('visible').Value := -1;
                        ExecSQL;
                        //Siguiente parámetro
                        fram_edit_campos.myTabla_Ventana.Next;
                End;
          End;
          //Hacer permanentes los cambios
          var_Modificado := False;
          CommitDBWork;
      Except
          on E:Exception do
          Begin
              RollBackDBWork;
              EjecutarMensajeError(e.Message);
              Abort;
          End;
      End;
end;
{****************************************************************
Procedimiento   : fram_edit_SQLMemoSQLChange
Objetivo        : Actualizar el estado de modificación al cambiar el SQL
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.fram_edit_SQLMemoSQLChange(Sender: TObject);
begin
  inherited;
  if Consulta.Active Then Consulta.Close;
  Consulta.SQL.Assign(fram_Edit_SQL.MemoSQL.Lines);
  var_Modificado := True;
end;
{****************************************************************
Procedimiento   : fram_edit_parametrosdata_parametrosStateChange
Objetivo        : Actualizar el estado MODIFICADO al cambiar los
                  datos de los parámetros
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.fram_edit_parametrosdata_parametrosStateChange(
  Sender: TObject);
begin
  inherited;
  if (fram_edit_parametros.tabl_parametros.State in [dsEdit]) Then
        var_Modificado := True;
end;
{****************************************************************
Procedimiento   : padr_boto_parametrosClick
Objetivo        : Mostrar el cuadro de edición de parámetros
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_boto_parametrosClick(Sender: TObject);
begin
  inherited;
  pagina.ActivePage := page_parametros;
end;
{****************************************************************
Procedimiento   : page_columnasShow
Objetivo        : Actualizar las columnas y campos de la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.page_columnasShow(Sender: TObject);
var
        var_Esta_Abierta : Boolean;
begin
  inherited;
  //Si fue modificado, no ejecutar
  IF (var_Modificado) then Exit;
  //Inicializar la consulta
  var_Esta_Abierta := Consulta.Active;
  If Consulta.Active Then Consulta.Close;
  Consulta.FieldDefs.Clear;
  //Verificar si existen campos guardados y llamarlos
  if Not DoLlamarCampos Then
      //Si no existen guardados, llamar los del resultado del Query
      fram_edit_campos.Execute(Consulta);
  //Si la consulta estaba abierta, reabrirla
  if var_Esta_Abierta Then
     AbrirDataSet(Consulta);
end;
{****************************************************************
Procedimiento   : DoLlamarCampos
Objetivo        : Llama los campos de la consulta y sus propiedades
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Function Tfn0_dise_child.DoLlamarCampos : Boolean;
var
        var_i   : Integer;
Begin
  //Verificar si existen registros
  With quer_llam_campos do
  Begin
           //Preparar la consulta
           Close;
           ParamByName('cons_objeto').Value := var_Cons_Objeto;
           Open;
           //Verificar si existen registros
           if RecordCount = 0 Then
           Begin
               //Si no hay registros, salir de la función
               Close;
               Result := False;
               Exit;
           End;
           //Vaciar la tabla del frame de campos
           fram_edit_campos.myTabla_Ventana.Close;
           fram_edit_campos.myTabla_Ventana.Open;
           //Llamar los campos existentes
           var_i := 1;
           While not EOF do
           Begin
                fram_edit_campos.myTabla_Ventana.Insert;
                fram_edit_campos.myTabla_Ventana.FieldByName('cons_campo').Value := var_i;
                fram_edit_campos.myTabla_Ventana.FieldByName('nume_campo').Value := var_i;
                fram_edit_campos.myTabla_Ventana.FieldByName('text_campo').Value := FieldByName('text_campo').asString;
                fram_edit_campos.myTabla_Ventana.FieldByName('nomb_campo').Value := FieldByName('nomb_campo').asString;
                fram_edit_campos.myTabla_Ventana.FieldByName('visible').Value := (FieldByName('visible').asInteger = 1);
                fram_edit_campos.myTabla_Ventana.FieldByName('formato').Value := FieldByName('formato').asString;
                fram_edit_campos.myTabla_Ventana.Post;
                //Siguiente campo
                Inc(var_i);
                Next;
           End;
           Close;
           //Ordenar los campos
           fram_edit_campos.myTabla_Ventana.Sort([]);
           fram_edit_campos.myTabla_Ventana.First;
           Result := True;
  End
End;
{****************************************************************
Procedimiento   : fram_edit_camposdata_ventanaStateChange
Objetivo        : Actualizar el estado MODIFICADO cuando cambie
                  se editen los campos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.fram_edit_camposdata_ventanaStateChange(
  Sender: TObject);
begin
  inherited;
  if (fram_edit_campos.myTabla_Ventana.State = dsEdit) Then
        var_Modificado := True;
end;
{****************************************************************
Procedimiento   : consultaAfterOpen
Objetivo        : Configurar los controles luego de abrir la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_boto_dise_actualizarClick(Sender: TObject);
begin
  inherited;
  //Una vez abierto, aplicar los filtros requeridos


end;
{****************************************************************
Procedimiento   : padr_acti_nuevoUpdate
Objetivo        : Activar SIEMPRE la opción de una nueva consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_nuevoUpdate(Sender: TObject);
begin
  //inherited;
  padr_acti_nuevo.Enabled := (Not EnDiseno) {and (Consulta.paramCount > 0)};
end;
{****************************************************************
Procedimiento   : padr_acti_modificarUpdate
Objetivo        : Activar/Desactivar la opción de MODIFICAR la
                  consulta activa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_modificarUpdate(Sender: TObject);
begin
  //inherited;
  padr_Acti_modificar.Enabled := (Not EnDiseno){ and (Consulta.Active)};
end;

{****************************************************************
Procedimiento   : padr_accionesUpdate
Objetivo        : Actualizar el estado de las acciones de la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_accionesUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_nuevoExecute
Objetivo        : Ejecutar una NUEVA consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_nuevoExecute(Sender: TObject);
begin
  //inherited;
  //Cerrar la consulta y reiniciar los controles
  Consulta.Close;
  padr_pane_filtros.Visible := True;
  padr_filtros.EliminarItems;
  Ejecutar(var_TipoInicioVentana, var_cons_objeto, var_nombrePadre);
  padr_acti_Ver_filtros_salida.Visible := False;
  padr_acti_filt_rapido.Visible := False;
  padr_acti_Ver_filtros_salida.Checked := False;
  padr_acti_filt_rapido.Enabled := False;
  LimpiarFiltros;
  DarFoco(padr_filtros);
end;
{****************************************************************
Procedimiento   : consultaAfterOpen
Objetivo        : Actualizar los controles al abrir la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.consultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  //Tareas adicionales en ejecución
  If (Not EnDiseno) Then
  Begin
        if Not var_labe_asignados then
        Begin
            doLlamarCampos;
            AsignarLabelsQuery;
            var_labe_asignados := False;
        End;
        //Mostrar el panel de filtros al abrir
        if (Consulta.ParamCount = 0)  Then
        Begin
            LimpiarFiltros;
            //padr_pane_filt_resultados.Visible := True;>>No es necesario
        End;
        padr_acti_modificar.enabled := True;
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_disenoUpdate
Objetivo        : Actualizar el estado de la acción UPDATE EN DISEÑO
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_disenoUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  padr_acti_dise_reload.Enabled := (enDiseno) and
        ((Pagina.ActivePage = page_parametros) or (pagina.activePage = page_columnas)); 
end;
{****************************************************************
Procedimiento   : padr_acti_dise_reloadExecute
Objetivo        : Cargar los campos o parámetros de la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_dise_reloadExecute(Sender: TObject);
begin
  inherited;
  If Not EnDiseno Then Exit;
  //Verificar en cual carpeta se encuentra
  If (pagina.ActivePage = page_Parametros) Then
  Begin
      fram_edit_parametros.CargarParametros(Consulta);
      var_Modificado := True;
  End
  Else
  If (pagina.ActivePage = page_Columnas) Then
  Begin
      fram_edit_campos.Execute(Consulta);
      var_Modificado := True;
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_Ver_filtros_salidaExecute
Objetivo        : Ejecutar la acción de aplicar filtros
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_Ver_filtros_salidaExecute(
  Sender: TObject);
begin
  inherited;
  padr_acti_Ver_filtros_salida.Checked := Not padr_acti_Ver_filtros_salida.Checked;
  AplicarFiltrosResultados;
end;
{****************************************************************
Procedimiento   : AplicarFiltrosResultados
Objetivo        : Aplicar los filtros a la salida
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn0_dise_child.AplicarFiltrosResultados;
{Var
        var_Filt_Anterior       : String; }
Begin
   {     //Validar
        if Not Consulta.Active Then Exit;
        if padr_acti_Ver_filtros_salida.Checked Then
        Begin
            var_filt_anterior := Consulta.Filter;
            if var_filt_anterior <> '' Then var_filt_anterior := var_filt_anterior + ' and ';
            var_Filt_anterior := var_filt_anterior + filt_datos.GetFilterTextEx('','');
            Consulta.Filter := var_filt_anterior;
            Consulta.Filtered := True;
            filt_Datos.Enabled := False;
            //Colores
            filt_Datos.Color := clInicioGradiente;
        End
        Else
        Begin
            filt_Datos.DataSet.Filtered := False;
            padr_grid.filter.Clear;
            filt_Datos.Enabled := True;
            //Colores
            filt_Datos.Color := clFondoAplicacion;
        End      }
End;
{****************************************************************
Procedimiento   : padr_acti_dise_guar_comoExecute
Objetivo        : Ejecutar la acción GUARDAR COMO
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_dise_guar_comoExecute(Sender: TObject);
var
        var_new_cons_objeto     : Integer;
        var_new_nombrePadre     : String;
        var_new_nombreModulo    : String;
begin
  inherited;
  //Crear la ventana de guardado
  var_new_cons_objeto := var_cons_objeto;
  var_new_nombrePadre := var_nombrePadre;
  var_new_nombreModulo := var_nombreModulo;
  Application.CreateForm(Tfn0_dise_dial_guar_como, fn0_dise_dial_guar_como);
  if fn0_dise_dial_guar_como.Execute(toaConsultas, var_new_Cons_Objeto, var_new_nombrePadre, var_new_NombreModulo) Then
  Begin
           //Si no escribió nombre y el consecutivo es cero, SALIR
           If (var_new_nombrePadre = '') and (var_cons_Objeto = 0) Then
           Begin
               Self.Close;
               Exit;
           End;
           //Si es el mismo nombre y módulo, guardar de manera normal
           if (var_NombrePadre = var_new_NombrePadre) and (var_NombreModulo = var_new_NombreModulo) then
           Begin
               padr_acti_dise_guardar.Execute;
               Exit;
           End;
           //Verificar si existe un objeto con este nombre en el módulo
           With quer_veri_nombre Do
           Begin
               Close;
               ParamByName('tipo').Value := ObjetoAdicionalPCPToInteger(toaConsultas);
               ParamByName('nomb_objeto').Value := var_new_NombreModulo;
               ParamByName('nomb_modulo').Value := var_new_NombrePadre;
               Open;
               var_new_cons_objeto := FieldByName('CONS_CONF_OBJETO').AsInteger;
               Close;
           End;
           Try
               StartDBTransaction;
               //Si el consecutivo es diferente de cero (0), el objeto ya existía.
               If (var_new_cons_objeto > 0) Then
               Begin
                    //Preguntar si desea reemplazar
                    if (Confirmar(Format(cosDeseaReemplazarObjeto, [var_NombreModulo])) = mrYes) Then
                    Begin
                        //Eliminar el objeto
                        With quer_elim_objeto do
                        Begin
                            ParamByName('CONS_CONF_OBJETO').Value := var_new_cons_objeto;
                            ExecSQL;
                        End;
                    End;
               End;
               //Guardar el objeto
               With quer_guar_como do
               Begin
                   Close;
                   ParamByName('cons_conf_objeto').Value := var_new_cons_objeto;
                   ParamByName('nomb_objeto').Value := var_new_nombreModulo;
                   ParamByName('nomb_modulo').Value := var_new_nombrePadre;
                   ExecSQL;
               End;
               //Hacer permanentes los cambios
               CommitDBWork;
               //Actualizar las variables locales de la ventana
               Self.Caption := var_new_nombreModulo;
               padr_pane_titulo.LabelCaption := Self.Caption;
               var_NombreModulo    := var_new_nombreModulo;
               var_cons_Objeto     := var_new_cons_objeto;
               var_NombrePadre     := var_new_NombrePadre;

               //Reubicar el item en el arbol de ubicacion
               fram_arbo_ubicacion.tabla.Locate('cons_consulta', 9999, []);
               fram_arbo_ubicacion.tabla.Edit;
               fram_arbo_ubicacion.tabla.FieldByName('nomb_objeto').Value := cosObjetoPCP + IntToStr(var_cons_objeto);
               fram_arbo_ubicacion.tabla.FieldByName('caption').Value := var_NombreModulo;
               fram_arbo_ubicacion.tabla.Post;

               //Dar por modificado el registro
               var_modificado      := False;
           Except
               On e:Exception do
               Begin
                   RollBackDBWork;
                   EjecutarMensajeError(E.Message);
               End;
           End;
  End;
end;
{****************************************************************
Procedimiento   : padr_Boto_dise_observacionesClick
Objetivo        : Mostrar la página de observaciones
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_Boto_dise_observacionesClick(Sender: TObject);
begin
  inherited;
  pagina.ActivePage := page_Observaciones;
end;
{****************************************************************
Procedimiento   : memo_observacionesPropertiesChange
Objetivo        : Cambiar el estado modificado cuando cambie
                  el memo de observaciones
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.memo_observacionesPropertiesChange(
  Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : paginaChange
Objetivo        : Actualizar el caption de ubicación en edición
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.paginaChange(Sender: TObject);
begin
  inherited;
  pane_info_Estado.SetCaption(pagina.ActivePage.Caption);
end;
{****************************************************************
Procedimiento   : padr_acti_dise_ejecutarUpdate
Objetivo        : Actualizar el estado de la acción EJECUTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_dise_ejecutarUpdate(Sender: TObject);
begin
  inherited;
  padr_acti_dise_ejecutar.Enabled := (var_NombreModulo <> cosSinNombre) and (Not var_modificado);
end;
{****************************************************************
Procedimiento   : padr_acti_dise_ejecutarExecute
Objetivo        : Ejecutar la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_dise_ejecutarExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(tfn0_dise_child, fn0_dise_child);
  fn0_dise_Child.ejecutar(tivdEjecucion, var_Cons_objeto, var_NombrePadre);
end;
{****************************************************************
Procedimiento   : padr_boto_ubicacionClick
Objetivo        : Mostrar las opciones de ubicación en el menú
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.padr_boto_ubicacionClick(Sender: TObject);
begin
  inherited;
  pagina.ActivePage := page_ubicacion;
end;
{****************************************************************
Procedimiento   : fram_arbo_ubicacionlistaCustomDrawCell
Objetivo        : Dar un color diferente al item en el arbol de selección
                  de items      
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.fram_arbo_ubicacionlistaCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  //Verificar si el item es el 9999 - Menú que se está editando
  if aNode.Values[fram_arbo_ubicacion.listaCONS_CONSULTA.Index] = '9999' Then
  Begin
     aColor := clFinGradienteWarning;
     aFont.Color := clTextoGradienteWarning;
  End;
end;
{****************************************************************
Procedimiento   : acti_expandirExecute
Objetivo        : Expandir los items del arbol de ubicación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.acti_expandirExecute(Sender: TObject);
begin
  inherited;
  fram_arbo_ubicacion.lista.FullExpand;
end;
{****************************************************************
Procedimiento   : acti_contraerExecute
Objetivo        : Contraer los items del arbol de ubicación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.acti_contraerExecute(Sender: TObject);
begin
  inherited;
  fram_arbo_ubicacion.lista.FullCollapse;
end;
{****************************************************************
Procedimiento   : acti_expandirUpdate
Objetivo        : Actualizar el estado de las acciones de
                  Expandir/Contraer el arbol de ubicación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.acti_expandirUpdate(Sender: TObject);
begin
  inherited;
  acti_Expandir.Enabled := (var_TipoInicioVentana = tivdEdicion) and (pagina.ActivePage = page_ubicacion);
  acti_Contraer.Enabled := (var_TipoInicioVentana = tivdEdicion) and (pagina.ActivePage = page_ubicacion);
end;
{****************************************************************
Procedimiento   : fram_arbo_ubicacionlistaBeginDragNode
Objetivo        : Validar el arrastre de objetos en el arbol
                  de ubicación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.fram_arbo_ubicacionlistaBeginDragNode(
  Sender: TObject; Node: TdxTreeListNode);
begin
  inherited;
  //Solamente se puede mover el nodo del objeto menú
  if (Node.Values[fram_arbo_ubicacion.listaCONS_CONSULTA.Index] <> '9999') Then
        Abort;
end;
{****************************************************************
Procedimiento   : fram_arbo_ubicacionlistaEndDrag
Objetivo        : Actualizar el estado de modificación
                  al mover el item de ubicación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn0_dise_child.fram_arbo_ubicacionlistaEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  inherited;
  var_modificado := True;
end;
{****************************************************************
Procedimiento   : LimpiarFiltros
Objetivo        : Limpia los filtros activos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn0_dise_child.LimpiarFiltros;
Begin
        //filt_datos.Clear;
//        filt_datos.DataSet := Nil;
//        filt_Datos.DataSet := Consulta;
//        filt_Datos.Refresh;
End;
{****************************************************************
Procedimiento   : AsignarLabelsQuery
Objetivo        : Asigna los labels al query Consulta para
                  que se muestren nombres entendibles en los filtros
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tfn0_dise_child.AsignarLabelsQuery;
var
        var_i : Integer;
Begin
    //Validar
    if var_labe_asignados Then Exit; //Asignar una sola vez los títulos y formatos
    If Not fram_edit_campos.myTabla_Ventana.Active Then Exit;
    If Not Consulta.Active Then Exit;
    //Recorrer los campos
    For var_i := 1 to Consulta.FieldCount do
    Begin
         //Buscar el registro en la tabla de campos
         If fram_edit_campos.myTabla_Ventana.Locate('nomb_campo', Consulta.Fields[var_i - 1].FieldName, []) Then
         Begin
              Consulta.Fields[var_i - 1].DisplayLabel := fram_edit_campos.myTabla_Ventana.FieldByName('text_campo').asString;
              //Formato
              if (Consulta.Fields[var_i - 1].DataType = ftInteger) Then
                   TIntegerField(Consulta.Fields[var_i - 1]).DisplayFormat := fram_edit_campos.myTabla_Ventana.FieldByName('formato').asString
              Else
              if (Consulta.Fields[var_i - 1].DataType = ftFloat) Then
                   tFloatField(Consulta.Fields[var_i - 1]).DisplayFormat := fram_edit_campos.myTabla_Ventana.FieldByName('formato').asString
              Else
              if (Consulta.Fields[var_i - 1].DataType = ftDate) Then
                   TDateField(Consulta.Fields[var_i - 1]).DisplayFormat := fram_edit_campos.myTabla_Ventana.FieldByName('formato').asString
              Else
              if (Consulta.Fields[var_i - 1].DataType = ftDateTime) Then
                   TDateTimeField(Consulta.Fields[var_i - 1]).DisplayFormat := fram_edit_campos.myTabla_Ventana.FieldByName('formato').asString
         End;
    End;
End;
{****************************************************************
Procedimiento   : padr_acti_modificarExecute
Objetivo        : Modificar la consulta existente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_modificarExecute(Sender: TObject);
begin
  //inherited;
  //Cerrar la consulta y reiniciar los controles
  Consulta.Close;
  padr_pane_filtros.Visible := True;
  padr_acti_Ver_filtros_salida.Visible := False;
  padr_acti_filt_rapido.Visible := False;
  padr_acti_Ver_filtros_salida.Checked := False;
  padr_acti_filt_rapido.Enabled := False;
  DarFoco(padr_filtros);
end;

procedure Tfn0_dise_child.memo_observacionesChange(Sender: TObject);
begin
  inherited;
  var_Modificado := True;
end;
{****************************************************************
Procedimiento   : padr_Acti_nuev_reporteExecute
Objetivo        : Mostrar el editor de reportes (sobreescribe
                  el procedimiento Child, ya que envia más parámetros
                  como los de encabezados de filtros)
Realizado por   : Tecnologia
Fecha           : 26-Sep-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn0_dise_child.padr_Acti_nuev_reporteExecute(Sender: TObject);
begin
  //inherited;
  if (padr_Grid.DataSource <> Nil) and (padr_Grid.DataSource.DataSet <> Nil) Then
  Begin
    Application.CreateForm(TfInformesRL, fInformesRL);
    fInformesRL.doCrearNuevoInformeDesdeConsulta(padr_grid.DataSource.DataSet, Self, Nil);
    if padr_filtros.DataSource <> Nil Then
        fInformesRL.fram_edicion.SetDataSourceDisponible(1, padr_Filtros.dataSource, cosFiltros);
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_befo_print_fortesExecute
Objetivo        : Ejecutar las acciones de preparacion de la vista
                  previa FORTES
Realizado por   : Tecnologia
Fecha           : 03-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn0_dise_child.padr_acti_befo_print_fortesExecute(
  Sender: TObject);
begin
  inherited;
  if padr_filtros.DataSource <> Nil Then
        padr_repo_fortes.SetDataSourceDisponible(1, padr_Filtros.dataSource, cosFiltros);

end;

end.


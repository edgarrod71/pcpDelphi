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
        Unit            : _vent_child
        Objetivo        : Ventana padre para formas CHILD en las cuales
                          se muestra la lista y se crean y editan registros.
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero de 2004
        Versión         : pcp4000
*******************************************************************}

{$I DEFINICIONES.INC}

unit _vent_child;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, TBXSwitcher, TB2Item, ImgList, TBX, TB2Dock, TB2Toolbar,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, dxExEdtr, _cons_pcp,
  DBActns, ActnList, Menus, dxTLClms, TBXDkPanels, dxGrClms,
  _vent_modal, SCLPropiedadesForm, dxPageControl, StdCtrls,
  SCLPanelLabel, SohoBtns, SCLButton, 
  dxCurrencyEditPCP, dxDBELib, dxEditor, dxEdLib, RXCtrls, Boxes,
  PCPFrame, Buttons, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, RLReport,
  ufra_edit_reportes, _Traductor;

  
type
  T_fvent_child = class(TForm)
    padr_pane_1: TPanel;
    padr_dock_izquierda: TTBXDock;
    data_ventana: TDataSource;
    padr_acciones: TActionList;
    padr_acti_buscar: TAction;
    padr_acti_imprimir: TAction;
    padr_acti_ayuda: TAction;
    padr_acti_salir: TAction;
    padr_acti_nuevo: TAction;
    padr_acti_modificar: TAction;
    padr_acti_eliminar: TAction;
    padr_acti_actualizar: TAction;
    padr_titu_ventana: TPanel;
    padr_pane_2: TPanel;
    padr_imag_ventana: TImage;
    padr_popu_buscar: TTBXPopupMenu;
    padr_boto_unknow2: TTBXItem;
    padr_sepa_9: TTBXSeparatorItem;
    padr_acti_vertodo: TAction;
    padr_acti_expo_excel: TAction;
    padr_acti_expo_html: TAction;
    padr_acti_expo_txt: TAction;
    padr_imagenes: TImageList;
    padr_pane_conf_vista: TTBXDockablePanel;
    padr_conf_vista: TdxTreeList;
    padr_conf_vistaVisible: TdxTreeListCheckColumn;
    consulta: TQuery;
    padr_popu_vist_actual: TTBXPopupMenu;
    vent_list_boto_todos: TTBXItem;
    vent_list_Ocultar_todos: TTBXItem;
    padr_sepa_11: TTBXSeparatorItem;
    vent_list_Invertir_seleccion: TTBXItem;
    padr_conf_vistaColumna: TdxTreeListButtonColumn;
    Eliminar: TQuery;
    Variables: TSCLPropiedadesForm;
    padr_acti_aceptar: TAction;
    padr_acti_cancelar: TAction;
    padr_acti_duplicar: TAction;
    padr_acti_elim_todos: TAction;
    padr_pagina: TdxPageControl;
    fram_pagi_lista: TdxTabSheet;
    padr_grid: TSCLDBGrid;
    padr_dock_arriba: TTBXDock;
    padr_barra: TTBXToolbar;
    padr_boto_nuevo: TTBXItem;
    padr_boto_editar: TTBXItem;
    padr_boto_eliminar: TTBXItem;
    padr_sepa_1: TTBXSeparatorItem;
    padr_boto_actualizar: TTBXItem;
    padr_sepa_2: TTBXSeparatorItem;
    padr_boto_vertodo: TTBXItem;
    padr_boto_conf_vista: TTBXVisibilityToggleItem;
    padr_sepa_3: TTBXSeparatorItem;
    padr_boto_exportar: TTBXSubmenuItem;
    padr_boto_Expo_excel: TTBXItem;
    padr_boto_Expo_html: TTBXItem;
    padr_boto_expo_txt: TTBXItem;
    padr_sepa_4: TTBXSeparatorItem;
    padr_boto_ayuda: TTBXItem;
    padr_boto_aceptar: TTBXItem;
    padr_boto_cancelar: TTBXItem;
    padr_pane_sepa_2: TPanel;
    padr_pane_sepa_1: TPanel;
    padr_beve_sepa: TBevel;
    Imagenes24: TTBImageList;
    pop_pagina: TTBXPopupMenu;
    padr_boto_cerr_carp_activa: TTBXItem;
    padr_acti_cerr_carp_activa: TAction;
    acti_padr_cerr_todas_carpetas: TAction;
    padr_boto_cerr_toda_carpetas2: TTBXItem;
    Imagenes16: TTBImageList;
    padr_acti_ver_lista: TAction;
    padr_boto_ver_lista: TTBXItem;
    padr_sepa_10: TTBXSeparatorItem;
    padr_estilo_chec: TdxCheckEditStyleController;
    padr_estilo: TdxEditStyleController;
    padr_acti_ajus_alto: TAction;
    padr_boto_ajus_alto: TTBXItem;
    padr_acti_llam_todos: TAction;
    padr_boto_llam_todos: TTBXItem;
    padr_dock_izqu_grid: TTBXDock;
    padr_acti_comu_sele_rang_fechas: TAction;
    padr_acti_mejo_ajuste: TAction;
    padr_boto_mejo_ajuste: TTBXItem;
    imag_pequenas: TImageList;
    padr_boto_buscar: TTBXSubmenuItem;
    padr_pane_cerrar: TPanel;
    padr_imag_salir: TImage;
    padr_boto_Salir: TTBXItem;
    padr_pop_grid: TTBXPopupMenu;
    padr_boto_aceptar2: TTBXItem;
    padr_boto_cancelar2: TTBXItem;
    padr_boto_nuevo2: TTBXItem;
    padr_boto_modificar2: TTBXItem;
    padr_boto_eliminar_2: TTBXItem;
    padr_sepa_5: TTBXSeparatorItem;
    padr_boto_actualizar2: TTBXItem;
    padr_boto_llam_todo_registros2: TTBXItem;
    padr_sepa_6: TTBXSeparatorItem;
    padr_boto_apli_filtro2: TTBXSubmenuItem;
    padr_boto_imprimir2: TTBXItem;
    padr_boto_apli_mejo_ajuste2: TTBXItem;
    padr_boto_ajus_ancho2: TTBXItem;
    padr_boto_ajus_alto2: TTBXItem;
    padr_boto_configurar2: TTBXVisibilityToggleItem;
    padr_sepa_7: TTBXSeparatorItem;
    padr_boto_exportar2: TTBXSubmenuItem;
    padr_boto_expo_excel2: TTBXItem;
    padr_boto_expo_html2: TTBXItem;
    padr_boto_expo_plano2: TTBXItem;
    padr_sepa_8: TTBXSeparatorItem;
    padr_boto_ayuda2: TTBXItem;
    padr_acti_consultar: TAction;
    padr_boto_consultar: TTBXItem;
    BImprimir: TTBXSubmenuItem;
    Padr_Acti_Opci_Impresion: TAction;
    QFirmas: TQuery;
    QPrioridades: TQuery;
    padr_dock_impresion: TTBXDock;
    DPOpciones_Impresion: TTBXDockablePanel;
    padr_pane_29: TPanel;
    padr_gene_impresion: TdxTreeList;
    padr_gene_impresionGenerales: TdxTreeListButtonColumn;
    padr_gene_impresionVer: TdxTreeListCheckColumn;
    padr_firm_impresion: TdxTreeList;
    padr_firm_impresionFirma: TdxTreeListButtonColumn;
    padr_firm_impresionVer: TdxTreeListCheckColumn;
    padr_prio_impresion: TdxTreeList;
    padr_prio_impresionPrioridad: TdxTreeListButtonColumn;
    padr_prio_impresionVer: TdxTreeListCheckColumn;
    QEliminar_Opciones_Impresion: TQuery;
    TUsuarios_Modulos: TTable;
    TUsuario_Opciones: TTable;
    padr_boto_opci_impresion: TTBXVisibilityToggleItem;
    QInformes: TQuery;
    QInformesUSUARIO: TStringField;
    QInformesCONS_USUA_INFORME: TIntegerField;
    QInformesNOMB_USUA_INFORME: TStringField;
    QInformesFECH_SISTEMA: TDateTimeField;
    QInformesUSUA_SISTEMA: TStringField;
    boto_repo_nuevo: TTBXItem;
    padr_sepa_12: TTBXSeparatorItem;
    padr_gradi_camp_visibles: TPCPTituloGradiente;
    shap_xp: TShape;
    padr_pane_grad_1: TPCPTituloGradiente;
    padr_shape_23: TShape;
    padr_sepa_new: TShape;
    padr_shap_xp_up: TShape;
    padr_shap_xp_down: TShape;
    padr_pane_titulo: TPCPTituloGradiente;
    padr_grad_2: TPCPTituloGradiente;
    padr_grad_3: TPCPTituloGradiente;
    padr_acti_grid_expander: TAction;
    padr_acti_grid_contraer: TAction;
    padr_boto_grid_contraer: TTBXItem;
    padr_boto_Grid_expander: TTBXItem;
    padr_boto_vinculos: TTBXSubmenuItem;
    padr_boto_crea_nuev_reporte: TTBXItem;
    padr_Acti_nuev_reporte: TAction;
    padr_page_oculto: TdxPageControl;
    padr_page_ocul_reporte: TdxTabSheet;
    quer_prev_fortes: TQuery;
    quer_prev_fortesNOMB_USUA_INFORME: TStringField;
    padr_repo_fortes: Tffra_edit_reportes;
    quer_prev_fortesCONTROLES: TBlobField;
    quer_prev_fortesORDE_1: TStringField;
    quer_prev_fortesORDE_ASCE_1: TIntegerField;
    quer_prev_fortesORDE_2: TStringField;
    quer_prev_fortesORDE_ASCE_2: TIntegerField;
    quer_prev_fortesORDE_3: TStringField;
    quer_prev_fortesORDE_ASCE_3: TIntegerField;
    padr_fram_camp_visibles: TPCPFrame;
    padr_fram_opci_impresion: TPCPFrame;
    padr_dock_top: TTBXDock;
    padr_dock_bottom: TTBXDock;
    padr_dock_right: TTBXDock;
    padr_boto_ocul_consecutivos: TTBXItem;
    padr_boto_most_consecutivos: TTBXItem;
    padr_boto_expo_personalizado: TTBXItem;
    padr_acti_befo_print_fortes: TAction;
    procedure padr_acti_salirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

//    procedure CreateParams(Var Params: TCreateParams); Override;
    procedure FormActivate(Sender: TObject);
    procedure padr_pane_tituloMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_buscarExecute(Sender: TObject);
    procedure AbrirFiltro(Sender: TObject);
    procedure padr_gridFilterChanged(Sender: TObject; ADataSet: TDataSet;
      const AFilterText: String);
    procedure padr_acti_vertodoExecute(Sender: TObject);
    procedure padr_conf_vistaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure padr_conf_vistaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure padr_conf_vistaStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    Procedure Sincronizar_Columnas;
    procedure padr_gridHideHeader(Sender: TObject;
      AColumn: TdxTreeListColumn);
    procedure vent_list_boto_todosClick(Sender: TObject);
    procedure vent_list_Ocultar_todosClick(Sender: TObject);
    procedure vent_list_Invertir_seleccionClick(Sender: TObject);
    procedure padr_gridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure padr_conf_vistaVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure padr_acti_nuevoExecute(Sender: TObject);
    procedure padr_acti_modificarExecute(Sender: TObject);
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure padr_acti_actualizarExecute(Sender: TObject);
    procedure padr_acti_ayudaExecute(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure padr_acti_expo_excelExecute(Sender: TObject);
    procedure padr_acti_imprimirExecute(Sender: TObject);
    procedure padr_paginaDockDrop(Sender: TObject; Source: TDragDockObject;
      X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure padr_acti_cerr_carp_activaExecute(Sender: TObject);
    procedure pop_paginaPopup(Sender: TObject);
    procedure acti_padr_cerr_todas_carpetasExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure padr_acti_ver_listaExecute(Sender: TObject);
    procedure padr_acti_ajus_altoExecute(Sender: TObject);
    procedure padr_acti_expo_htmlExecute(Sender: TObject);
    procedure padr_acti_expo_txtExecute(Sender: TObject);
    procedure padr_acti_llam_todosExecute(Sender: TObject);
    procedure TBXItem5Click(Sender: TObject);
    procedure padr_gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure padr_acti_mejo_ajusteExecute(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure doGridDblClick(Sender: TObject);
    procedure padr_gridChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure padr_acti_consultarExecute(Sender: TObject);
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure Padr_Acti_Opci_ImpresionExecute(Sender: TObject);
    procedure TUsuarios_ModulosBeforePost(DataSet: TDataSet);
    procedure TUsuario_OpcionesBeforePost(DataSet: TDataSet);
    procedure padr_acti_grid_expanderExecute(Sender: TObject);
    procedure padr_acti_grid_contraerExecute(Sender: TObject);
    procedure doLlamarInformesDisponibles(Sender: TObject);
    procedure BImprimirPopup(Sender: TTBCustomItem; FromLink: Boolean);
    procedure padr_Acti_nuev_reporteExecute(Sender: TObject);
    procedure padr_Acti_nuev_reporteUpdate(Sender: TObject);
    procedure padr_boto_ocul_consecutivosClick(Sender: TObject);
    procedure padr_boto_most_consecutivosClick(Sender: TObject);
    procedure padr_boto_conf_vistaClick(Sender: TObject);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
    fAnclarHijos : Boolean;
    var_vent_inicializada : Boolean;
    var_nomb_orig_formulario    : String;
    Procedure SetAnclarHijos (Value : Boolean);
    procedure UbicarPanels;
  public
    { Public declarations }
    Arreglo_Opciones : Array [0..12] of String;
    Function Crear_Forma(T_Accion : TTipoAccion ): T_fVent_Modal;
    Function Existe_Pagina(Titulo_Carpeta : String;
    	Mostrarla : Boolean = True;
      Para_Cerrar : Boolean = False):Boolean;
    Procedure Actualizar_Opciones_Impresion;
    Function AbrirConsulta(aCons_Consulta : Integer):Boolean;
    Function VerificarPermisosAccionesDB (peAbortarAcciones : Boolean = True) : Boolean;
  Published
        Property AnclarHijos : Boolean Read fAnclarHijos Write SetAnclarHijos Default True;
        //RC20.6
        Property VentanaInicializada : Boolean Read var_Vent_Inicializada Write var_vent_Inicializada;
  end;

Const
    coiOpci_Impresion = 4; //Numero de objetos fijos en las opciones de impresión

var
  _fvent_child: T_fvent_child;
  Resultado : Variant;
  var_colu_es_imagen 	: Boolean;
  var_nomb_colu_imagen : String;
  Var_Firmas, Var_Logotipo, Var_Eslogan, Var_Pagina, Var_Fecha_Impresion,
  Var_Lineas : Boolean;


  Function Crear_Forma_Child(T_Forma : TFormClass;  //Calse de la forma
    Formulario: TFormClass = Nil;										 //Módulo _vent_child
    T_Estilo_Forma : TFormStyle = fsNormal;					 //MDIChild, Normal, etc.
    T_Show : Integer = tsNinguno;										 //Show o ShowModal
    T_Estado_Ventana : TWindowState = wsNormal;      //Maximizado, Minimizado, etc.
    T_Posicion : TPosition = poScreenCenter;         //Posición del Módulo en la pantalla
    T_Tabla : TComponent = Nil;                          //Tabla de Modala para recoger los datos
                                                     //de la busqueda
    T_Locate : Boolean = True)                      //Si los campos son iguales se hace Locate
    :Variant;


implementation
Uses _func_varias, dxGridMenus, _func_pcp, _vari_pcp, _cons_colores,
    _Informes, mensajesSCL, _Vent_Most_Imagen, _MDI, uInformesRL, ffortes,
    misproc2;


{$R *.DFM}

{****************************************************************
Procedimiento   : Actualizar_Opciones_Impresion
Objetivo        : Actualiza las opciones de impresión cuando
									se crea la forma
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 29 de junio de 2004
Versión         : pcp4000
*****************************************************************}
Procedure T_fvent_child.Actualizar_Opciones_Impresion;
Var
	I, Consecutivo_Usuario : Integer;
  Node: TdxTreeListNode;
begin
	//Elimino los nodos del treelist de Firmas de opciones de impresión
  padr_firm_impresion.ClearNodes;
  If AbrirDataSet(QFirmas) Then
  Begin
    While Not QFirmas.EOF Do
    Begin
      //Creo el nodo del treelist de Firmas
      Node := padr_firm_impresion.Add;
      Node.Values[padr_firm_impresionFirma.Index] := QFirmas.FieldByname('NOMB_FIRMA').AsString;
      QFirmas.Next;
    End;
    QFirmas.Close;
  End;

	//Elimino los nodos del treelist de Prioridades de opciones de impresión
  padr_prio_impresion.ClearNodes;
  If AbrirDataSet(QPrioridades) Then
  Begin
    While Not QPrioridades.EOF Do
    Begin
      //Creo el nodo del treelist de Prioridades
      Node := padr_prio_impresion.Add;
      Node.Values[padr_prio_impresionPrioridad.Index] := QPrioridades.FieldByname('NOMB_PRIORIDAD').AsString;

      QPrioridades.Next;
    End;
    QPrioridades.Close;
  End;  

	//Abrir las tablas de las opciones de impresión
	If (AbrirDataSet(TUsuarios_Modulos) And AbrirDataSet(TUsuario_Opciones)) Then
	Begin
    //Verificar que exista el usuario en este módulo
		If TUsuarios_Modulos.Locate('USUARIO;MODULO',
    	VarArrayOf([var_usua_activo, padr_pane_titulo.Caption]), []) Then
    Begin
      Consecutivo_Usuario := TUsuarios_Modulos.FieldByName('CONS_USUA_MODULO').AsInteger;
      TUsuarios_Modulos.Close;
      //Buscar las opciones generales y actualizarlas
      For I := 0 To padr_gene_impresion.Count - 1 Do
        If TUsuario_Opciones.Locate('CONS_USUA_MODULO;OPCION',
        	VarArrayOf([Consecutivo_Usuario, padr_gene_impresion.Items[I].Strings[0]]), []) Then
					padr_gene_impresion.Items[I].Strings[1] := 'S';
      //Buscar las opciones Firmas y actualizarlas
      For I := 0 To padr_firm_impresion.Count - 1 Do
        If TUsuario_Opciones.Locate('CONS_USUA_MODULO;OPCION',
        	VarArrayOf([Consecutivo_Usuario, padr_firm_impresion.Items[I].Strings[0]]), []) Then
					padr_firm_impresion.Items[I].Strings[1] := 'S';
      //Buscar las opciones Prioridades y actualizarlas
      For I := 0 To padr_prio_impresion.Count - 1 Do
        If TUsuario_Opciones.Locate('CONS_USUA_MODULO;OPCION',
        	VarArrayOf([Consecutivo_Usuario, padr_prio_impresion.Items[I].Strings[0]]), []) Then
					padr_prio_impresion.Items[I].Strings[1] := 'S';
      TUsuario_Opciones.Close;
    End;
  End;
  //Se cierran las tablas de opciones de impresión
  TUsuarios_Modulos.Close;
  TUsuario_Opciones.Close;
end;

{****************************************************************
Procedimiento   : Existe_Pagina
Objetivo        : Consultar si existe la carpeta del pagecontrol
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
Function T_fvent_child.Existe_Pagina(Titulo_Carpeta : String;
	Mostrarla : Boolean = True;
  Para_Cerrar : Boolean = False):Boolean;
Var
	I : Integer;
begin
	Result := False;
  For i:=1 to Self.padr_pagina.PageCount do
    //Comparar el caption
    if Self.padr_pagina.Pages[i-1].Caption = Titulo_Carpeta Then
    Begin
    	Result := True;
      //Si lo encuentra mostrarlo
      If Mostrarla Then
        Self.padr_pagina.ActivePage := Self.padr_pagina.Pages[i-1];
      //Si es para consultar si la forma se esta destruyendo para activar la página anterior
      //  del pagecontrol
      If Para_Cerrar Then
        //Pregunto si el control es de tipo t_Fvent_Modal
		    If (Self.padr_pagina.Pages[i -1].Controls[0] Is t_Fvent_Modal) Then
          //Preunto si el control t_Fvent_Modal se puede hacer focus
		      If Not (Self.padr_pagina.Pages[i -1].Controls[0] As t_Fvent_Modal).CanFocus Then
	          Result := False;
      Exit;
    End;
End;

{****************************************************************
Procedimiento   : Crear_Forma
Objetivo        : Crear un modal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
Function T_fvent_child.Crear_Forma(T_Accion : TTipoAccion) : T_fVent_Modal;
Var
  Formulario      : T_fVent_Modal;
  CamposBusqueda,
  ValoresBusqueda : Variant;
  i               : Integer;
Begin
  //Inicializar el resultado
  Result := Nil;
  Try
    DisableAlign;
    //Si se va a editar, verificar que existan registros
    If (T_Accion = taEdit) or (T_Accion = taConsulta) then
      If (Self.data_ventana.DataSet = Nil) then      //Validar el DataSet
        Raise Exception.Create(Format(cosErrorFuenteDatosNoValida, [UpperCase(data_ventana.Name)]));

    If Self.Variables.DetalleFormClass <> Nil then Begin
        //Ubicar el Page si existe
      if var_AnclarHijos then
      Case T_Accion of
        taInsert :
            //Buscar si existe una pagina de insertar activa
          If (Existe_Pagina(Format(cosAdicionando , [Self.Variables.NombreAMostrar]))) or
             (ExisteVentana(Format(cosAdicionando , [Self.Variables.NombreAMostrar]))) Then
              Exit;

        taEdit :
          If (Existe_Pagina(cosEditando + Self.Variables.NombreAMostrar + ' ' +
               Self.Data_Ventana.DataSet.FieldByName(Self.Variables.CampoAMostrar).AsString)) or
             (ExisteVentana(cosEditando + Self.Variables.NombreAMostrar + ' ' +
               Self.Data_Ventana.DataSet.FieldByName(Self.Variables.CampoAMostrar).AsString)) Then
             Exit;

        taConsulta :
          If (Existe_Pagina(cosConsultando + Self.Variables.NombreAMostrar + ' ' +
                Self.Data_Ventana.DataSet.FieldByName(Self.Variables.CampoAMostrar).AsString)) or
             (ExisteVentana(cosConsultando + Self.Variables.NombreAMostrar + ' ' +
                Self.Data_Ventana.DataSet.FieldByName(Self.Variables.CampoAMostrar).AsString)) Then
              Exit;
      End; //Case
        //Crear el form
      Application.CreateForm(Variables.DetalleFormClass, Formulario);
      If Formulario <> Nil Then
        Begin
            //Colores
            Formulario.Variables.ColorPanel := colorAplicacion;
            Formulario.Visible 		:= False;
            {$IFDEF PCP4}
                Formulario.Variables.SoloLectura := Self.Variables.SoloLectura;
            {$ELSE }
                Formulario.Variables.SoloLectura := False;
            {$ENDIF}
            //Asignar el padre
            Formulario.CaptionVentanaPadre := Caption;
            //Formulario.VentanaPadre := T_fvent_child(Self);//RC20.7 PENDIENTE
            //Si esta vacio dejo el caption por defecto del módulo
            Case t_Accion of
              taEdit    : Formulario.Caption := cosEditando + Self.Variables.NombreAMostrar + ' ' +
                            Self.Data_Ventana.DataSet.FieldByName(Self.Variables.CampoAMostrar).AsString;
              taConsulta: Formulario.Caption := cosConsultando + Self.Variables.NombreAMostrar + ' ' +
                            Self.Data_Ventana.DataSet.FieldByName(Self.Variables.CampoAMostrar).AsString;
              taInsert  : Formulario.Caption := Format(cosAdicionando , [Self.Variables.NombreAMostrar]);
            End;
            //Identificar si se debe anclar el formulario a la ventana
            if (fAnclarHijos) or (Variables.TipoModal = tmConsulta) Then
                Formulario.FormStyle := fsNormal
            Else Begin
                padr_titu_ventana.Visible := False;
                //padr_titu_ventana.Visible := True;
                padr_pagina.HideButtons := True;
            End;
            //Estado inicial de la ventana
            Case T_Accion of
                taEdit, taInsert : Formulario.WindowState := wsMaximized;
                taConsulta : Formulario.WindowState := wsNormal;
            End;
            Formulario.Position 		:= poScreenCenter;
            //Asignarle el nombre del campo a mostrar al objeto VARIABLES
            if (Formulario.Variables.CampoAMostrar = 'NA') or
               (Formulario.Variables.CampoAMostrar = '') Then
               Formulario.Variables.CampoAMostrar := Self.Variables.CampoAMostrar;
            //Asignarle el nombre de los campos de búsqueda al objeto VARIABLES
            if (Formulario.Variables.CamposDeBusqueda = 'NA') or
               (Formulario.Variables.CamposDeBusqueda = 'NA') Then
               Formulario.Variables.CamposDeBusqueda := Self.Variables.CamposDeBusqueda;
            //Asignarle el nombre a mostrar al objeto VARIABLES
            if (Formulario.Variables.NombreAMostrar = 'NA') or
               (Formulario.Variables.NombreAMostrar = '') Then
               Formulario.Variables.NombreAMostrar := Self.Variables.NombreAMostrar;
            //Asignarle el nombre de la TABLA MAESTRA al objeto VARIABLES
            if (Formulario.Variables.TablaMaestra = 'NA') or
               (Formulario.Variables.TablaMaestra = '') Then
               Formulario.Variables.TablaMaestra := Self.Variables.TablaMaestra;
            //Asignarle el genero a mostrar al objeto VARIABLES
            if Formulario.Variables.TipoGenero = geNinguno Then
               Formulario.Variables.TipoGenero := Self.Variables.TipoGenero;
            //Pregunto si el Dataset no esta vacio para hacer la busqueda y la acción
            If (Formulario.data_ventana.DataSet <> nil) and (Formulario.data_ventana.DataSet.Active) Then
               Case T_Accion Of
                    taInsert  : Formulario.data_ventana.DataSet.Insert;
                    taEdit, taConsulta : Begin
                        //Consultar cuantos campos tiene
                        CamposBusqueda := Self.Variables.ArrayCamposDeBusqueda;
                        ValoresBusqueda := VarArrayCreate([0, Self.Variables.NumeroDeCamposDeBusqueda - 1], varVariant);
                        //Llenar el arreglo de los valores de la busqueda
                        For i:=1 to Self.Variables.NumeroDeCamposDeBusqueda do
                            ValoresBusqueda[i-1] := Self.data_ventana.DataSet.FieldByName(CamposBusqueda[i-1]).Value;
                        //RC20.9 - Abortar la busqueda en tablas vacías (para uso de memoryTables)
                        if (Formulario.Data_ventana.DataSet.RecordCount > 0) Then
                           If not Formulario.Data_ventana.DataSet.Locate(Self.Variables.CamposDeBusqueda, ValoresBusqueda, [])
                              Then EjecutarMensajeError(cosErrorUbicandoRegistro);
                    End; {case taEditar}
               End;{Case T_Accion}

            //Sentencia de generacion del consecutivo
            If (t_Accion=taInsert) and (Formulario.padr_quer_consecutivo.Sql.Text='') Then
              With Formulario.padr_quer_consecutivo do
                     Sql.Add('Select secuencia from fun_glo_gene_secuencia('+
                             '"'+Formulario.Variables.TablaMaestra+'","'+
                             Formulario.Variables.CamposDeBusqueda+'")');

            //Hacerle un dock a la ventana creada para que se muestre dentro del tdxPage
            if Formulario <> Nil Then
            Begin
               Case t_Accion of
                   taInsert, taEdit : Begin
                      if fAnclarHijos Then Begin
                        Formulario.ManualDock(Self.padr_pagina, Nil);
                        //Mostrar el formulario, porque está Visible = False
                        Formulario.Show;
                      End
                      Else Begin
                        Formulario.FormStyle := fsMDIChild;
                        Formulario.Visible := True;
                      End
                   End;
                   taConsulta: Begin
                      if fAnclarHijos then Formulario.ManualDock(Self.padr_pagina, Nil);
                      //Deshabilitar la tabla principal
                      SetDataSourcesAutoEdit(Formulario, False);
                      //Deshabilitar las funciones de edicion
                      Formulario.padr_acti_nuevo.Enabled := False;
                      Formulario.padr_acti_eliminar.Enabled := False;
                      Formulario.padr_acti_aceptar.Enabled := False;
                      Formulario.padr_acti_cancelar.Enabled := False;
                      Formulario.padr_acti_guardar.Enabled := False;
                      Formulario.padr_acti_guar_cerrar.Enabled := False;
                      //Ocultar las acciones de edicion                            --
                      {Formulario.padr_acti_nuevo.Visible := False;                  |
                      Formulario.padr_acti_eliminar.Visible := False;                |
                      Formulario.padr_acti_aceptar.Visible := False;                 |-> Eliminado en RC20.12
                      Formulario.padr_acti_cancelar.Visible := False;                |
                      Formulario.padr_acti_guardar.Visible := False;                 |
                      Formulario.padr_acti_guar_cerrar.Visible := False;           --
                      }
                      //Mostrar el botón de edición
                      Formulario.padr_boto_modificar.Visible := True;
                      //Mostrar el formulario
                      if fAnclarHijos then Formulario.Show
                      Else Begin
                        Formulario.WindowState := wsMaximized;
                        Formulario.FormStyle := fsMDIChild;
                        Formulario.Visible := True;
                      End;
                 end;
               End;{Case}
            End; {If Formulario <> Nil}
            Result := Formulario;
        End;{If Formulario <> Nil}
    End;{If Variables.DetalleFormClass <> Nil}
  Except
    on E:Exception do
        EjecutarMensajeError(e.Message);
  End;
  Repaint;
  EnableAlign;
End;

{****************************************************************
Procedimiento   : Crear_Forma_Child
Objetivo        : Crear módulos Child
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
Function Crear_Forma_Child(T_Forma : TFormClass;  //Calse de la forma
  Formulario: TFormClass = Nil; 									 //Módulo _vent_child
  T_Estilo_Forma : TFormStyle = fsNormal;					 //MDIChild, Normal, etc.
  T_Show : Integer = tsNinguno;										 //Show o ShowModal
  T_Estado_Ventana : TWindowState = wsNormal;      //Maximizado, Minimizado, etc.
  T_Posicion : TPosition = poScreenCenter;         //Posición del Módulo en la pantalla
  T_Tabla : TComponent = Nil;                      //Tabla de Modala para recoger los datos
  T_Locate : Boolean = True)                     //Si los campos son iguales se hace Locate
  :Variant;
Var
  CamposBusqueda, ValoresBusqueda : Variant;
  i : Integer;
  Ventana : TForm;
begin
  Try
        Result := Null;
        Ventana := T_Forma.Create(Application.MainForm);
        With (Ventana As T_fvent_child) Do
        Begin
          //Oculto el botón Salir y muestro los botones Aceptar y Cancelar
          padr_acti_salir.Visible    := False;
          padr_acti_aceptar.Visible  := True;
          padr_acti_cancelar.Visible := True;



          FormStyle := fsNormal;
          WindowState := wsMaximized;
          Visible := False;

          If Formulario <> Nil Then
               Variables.DetalleFormClass := Formulario;
          //Verifico que el componente sea una tabla
          If T_Tabla Is TDataSet Then
            //Verifico que la tabla no este vacia y que se pueda hacer locate
            If ((T_Tabla <> Nil) And (T_Locate)) Then
              //Verifico el locate sea un arreglo
              If Variables.TipoDeBusqueda = tbArreglo Then
              Begin
                visible := False;
                //Consultar cuantos campos tiene
                CamposBusqueda  := Variables.ArrayCamposDeBusqueda;
                ValoresBusqueda := VarArrayCreate([0, Variables.NumeroDeCamposDeBusqueda - 1], varVariant);
                //Llenar el arreglo de los valores de la busqueda
                For i:=1 to Variables.NumeroDeCamposDeBusqueda do
                    ValoresBusqueda[i-1] := (T_Tabla As TDataSet).FieldByName(CamposBusqueda[i-1]).Value;
                (Ventana As T_fvent_child).Data_ventana.DataSet.Locate(Variables.CamposDeBusqueda, ValoresBusqueda, []);
              End
              Else
                (Ventana As T_fvent_child).Data_ventana.DataSet.Locate(Variables.CamposDeBusqueda,
                  (T_Tabla As TDataSet).FieldByName(Variables.CamposDeBusqueda).Value, []);
          Visible := False;
          Position 		       := T_Posicion;
          Case T_Show Of
            tsShow     : Show;
            tsShowModal: ShowModal;
          End;

          //Verifico que el componente sea una tabla
          If T_Tabla Is TDataSet Then
          //Verifico que este en ShowModal y que se pueda hacer Locate
            If ((T_Show = tsShowModal) And (T_Locate)) Then
            Begin
            //Se verifica si se cargo la variable cuando le dierón click en el botón aceptar
            // del módulo Child.
              If Not Variant_Vacio(Resultado) Then
              Begin
                //Si la tabla esta en modo Browse la Edito
                If (T_Tabla As TDataSet).State = dsBrowse Then
                  (T_Tabla As TDataSet).Edit;

                //Si la busqueda es un Arreglo busco la cantidad de campos y creo el arreglo
                If Variables.TipoDeBusqueda = tbArreglo Then
                  For i:=1 to Variables.NumeroDeCamposDeBusqueda do
                   (T_Tabla As TDataSet).FieldByName(CamposBusqueda[i-1]).Value :=
                    (Ventana As T_fvent_child).Data_ventana.DataSet.FieldByName(CamposBusqueda[i-1]).Value
                Else
                  //Si la busqueda no es un arreglo hago un Locate normal
                  (T_Tabla As TDataSet).FieldByName(Variables.CamposdeBusqueda).Value :=
                    (Ventana As T_fvent_child).Data_ventana.DataSet.FieldByName(Variables.CamposdeBusqueda).Value;
              End;
              //Actualizar la ventana que envia la solicitud
              (Ventana as T_fVent_Child).padr_acti_actualizarExecute(Nil);
            End;
        End;
  Except
      On E:Exception do
        EjecutarMensajeError(e.Message);
  End;
  //Cambiar el estilo de la ventana
  If (Ventana <> Nil) Then
    With Ventana do
    Begin
            FormStyle 	               := T_Estilo_Forma;
            if (WindowState <> T_Estado_Ventana) Then
                WindowState := T_Estado_Ventana;
    End;
  Result := Resultado;

end;

{****************************************************************
Procedimiento   : padr_acti_salirExecute
Objetivo        : Cerrar el módulo
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_salirExecute(Sender: TObject);
begin
        //Cerrar la ventana
        Close;
end;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Destruir el módulo
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.FormClose(Sender: TObject; var Action: TCloseAction);
Var
	I : Integer;
  Prueba : String;
begin
  //Abrir tablas de opciones de impresion
	If padr_acti_imprimir.Visible Then
    If AbrirDataSet(TUsuarios_Modulos) And AbrirDataSet(TUsuario_Opciones) Then
    Begin
      //Eliminar el usuario con las opciones de impresión
      QEliminar_Opciones_Impresion.Close;
      QEliminar_Opciones_Impresion.ParamByName('USUARIO').AsString :=
        var_usua_activo;
      QEliminar_Opciones_Impresion.ParamByName('MODULO').AsString :=
        padr_pane_titulo.Caption;
      Try
        QEliminar_Opciones_Impresion.ExecSQL;
      Except
      End;
      QEliminar_Opciones_Impresion.Close;

      //Adiciono el usuario en este Módulo
      If Not TUsuarios_Modulos.Locate('USUARIO;MODULO',
        VarArrayOf([var_usua_activo, padr_pane_titulo.Caption]), []) Then
        Try
          TUsuarios_Modulos.Insert;
          TUsuarios_Modulos.FieldByName('USUARIO').AsString :=
            var_usua_activo;
          TUsuarios_Modulos.FieldByName('MODULO').AsString :=
            padr_pane_titulo.Caption;
          TUsuarios_Modulos.Post;
        Except
        End;

      DarFoco(padr_grid);
      //Adiciono las opciones de impresión generales del usuario en este módulo
      For I := 0 To padr_gene_impresion.Count - 1 Do
        If padr_gene_impresion.Items[I].Strings[1] = 'S' Then
          Try
            TUsuario_Opciones.Insert;
            TUsuario_Opciones.FieldByname('CONS_USUA_MODULO').AsInteger :=
              TUsuarios_Modulos.FieldByname('CONS_USUA_MODULO').AsInteger;
            TUsuario_Opciones.FieldByname('OPCION').AsString :=
              padr_gene_impresion.Items[I].Strings[0];
            TUsuario_Opciones.Post;
          Except
            If TUsuario_Opciones.State In [dsEdit, dsInsert] Then
              TUsuario_Opciones.Cancel;
          End;

      //Adiciono las opciones de impresión Firmas del usuario en este módulo
      For I := 0 To padr_firm_impresion.Count - 1 Do
        If padr_firm_impresion.Items[I].Strings[1] = 'S' Then
          Try
            TUsuario_Opciones.Insert;
            TUsuario_Opciones.FieldByname('CONS_USUA_MODULO').AsInteger :=
              TUsuarios_Modulos.FieldByname('CONS_USUA_MODULO').AsInteger;
            TUsuario_Opciones.FieldByname('OPCION').AsString :=
              padr_firm_impresion.Items[I].Strings[0];
            TUsuario_Opciones.Post;
          Except
            If TUsuario_Opciones.State In [dsEdit, dsInsert] Then
              TUsuario_Opciones.Cancel;
          End;

      //Adiciono las opciones de impresión Prioridades del usuario en este módulo
      For I := 0 To padr_prio_impresion.Count - 1 Do
        If padr_prio_impresion.Items[I].Strings[1] = 'S' Then
          Try
            TUsuario_Opciones.Insert;
            TUsuario_Opciones.FieldByname('CONS_USUA_MODULO').AsInteger :=
              TUsuarios_Modulos.FieldByname('CONS_USUA_MODULO').AsInteger;
            TUsuario_Opciones.FieldByname('OPCION').AsString :=
              padr_prio_impresion.Items[I].Strings[0];
            TUsuario_Opciones.Post;
          Except
            If TUsuario_Opciones.State In [dsEdit, dsInsert] Then
              TUsuario_Opciones.Cancel;
          End;

      //Cierro las tablas de opciones de impresión por Usuario - Módulo
      TUsuario_Opciones.Close;
      TUsuarios_Modulos.Close;
    End;

  //Liberar la barra del MDI
  {$IFDEF BARRA_MDI}
	  _fMDI.actualizarAcciones(Sender);
  {$ENDIF}

  //Liberar la ventana

//	If padr_acti_imprimir.Visible Then
//  Application.ProcessMessages;
  Release;
//	If padr_acti_imprimir.Visible Then
//  Application.ProcessMessages;
end;

{procedure T_fvent_child.CreateParams(Var Params: TCreateParams);
Begin
  //Eliminación del borde en la ventana-jmv:v0.3
  //....................................................................
  inherited CreateParams(Params);
  Params.Style := Params.Style and not WS_OVERLAPPEDWINDOW or WS_BORDER;
End;     }

{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Asignar acciones al módulo pruncipal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.FormActivate(Sender: TObject);
var var_auxi_integer : Integer;
begin
  //------------Barra única MDI-----------------
  {$IFDEF BARRA_MDI}
  if padr_pagina.ActivePage = fram_pagi_lista Then Begin
    _fmdi.ActualizarAcciones(Sender);
    //Activar los botones del MDI
    _fmdi.padr_acti_nuevo.OnExecute := padr_acti_nuevo.OnExecute;
    _fmdi.padr_acti_modificar.OnExecute := padr_acti_modificar.OnExecute;
    _fmdi.padr_acti_eliminar.OnExecute := padr_acti_eliminar.OnExecute;
    _fmdi.padr_acti_guardar.OnExecute := Nil;
    _fmdi.padr_acti_guar_cerrar.OnExecute := Nil;
    _fmdi.padr_acti_cancelar.OnExecute := Nil;
    _fmdi.padr_acti_actualizar.OnExecute := padr_acti_actualizar.OnExecute;
    _fmdi.padr_acti_buscar.OnExecute := padr_acti_buscar.OnExecute;
    _fmdi.padr_acti_imprimir.OnExecute := padr_acti_imprimir.OnExecute;
    _fmdi.padr_acti_mejo_ajuste.OnExecute := padr_acti_mejo_ajuste.OnExecute;
    _fmdi.padr_acti_salir.OnExecute := padr_acti_salir.OnExecute;
    _fmdi.padr_acti_vertodo.OnExecute := padr_acti_verTodo.OnExecute;
    _fmdi.padr_acti_ajus_alto.OnExecute := padr_acti_ajus_alto.OnExecute;
    _fmdi.padr_acti_expo_excel.OnExecute := padr_acti_expo_excel.OnExecute;
    _fmdi.padr_acti_expo_html.OnExecute := padr_acti_expo_html.OnExecute;
    _fmdi.padr_acti_expo_txt.OnExecute := padr_acti_expo_txt.OnExecute;
    _fmdi.padr_boto_conf_vista.Control := padr_pane_conf_vista;
    _fmdi.padr_boto_conf_vista.Enabled := True;
    _fmdi.padr_boto_exportar.Enabled := True;
  End;
  {$ENDIF}
  {$IFDEF PCP4}
  //Actualizar el panel de tipo de acceso de la barra MDI
  if variables.SoloLectura then Begin
  //        _fmdi.imag_tipo_acceso.Picture.Bitmap.LoadFromResourceName(MainInstance, '16BMP_NO');
    _fMDI.imag_tipo_acceso.Picture.Bitmap.Assign(ResJpegStream('BMPNO'));
    _fmdi.labe_tipo_acceso.Caption := cosAccesoSoloLectura;
    _fmdi.labe_tipo_acceso.FontSettings.color := clRed;
  End
  Else  Begin
  //  _fmdi.imag_tipo_acceso.Picture.Bitmap.LoadFromResourceName(MainInstance, '16BMP_SI');
    _fMDI.imag_tipo_acceso.Picture.Bitmap.Assign(ResJpegStream('BMPSI'));
    _fmdi.labe_tipo_acceso.Caption := cosAccesoTotal;
    _fmdi.labe_tipo_acceso.FontSettings.color := clBlack;
  End;
  //Mostrar los datos del panel de tipo de acceso de la barra MDI
  _fmdi.imag_tipo_acceso.Visible := True;
  _fmdi.labe_tipo_acceso.Visible := True;
  //Dar el formato a los campos del tipo TFloatField
  For var_auxi_integer := 1 to Self.ComponentCount do
  Begin
      //TFloatField
      if (Self.Components[var_auxi_integer - 1] is TFloatField) Then
          (Self.Components[var_auxi_integer - 1] as TFloatField).DisplayFormat := FormatoFloat;
  End;
  //Dar el formato a los Controles Float
  For var_auxi_integer := 1 to Self.ControlCount do Begin
      //TDxDBCurrencyEdit
    if (Self.Controls[var_auxi_integer - 1] is TdxDBCurrencyEdit) Then Begin
        //Verificar si es de moneda
      If pos('$',(Self.Controls[var_auxi_integer - 1] as TdxDBCurrencyEdit).displayFormat)>0 Then
        (Self.Controls[var_auxi_integer - 1] as TdxDBCurrencyEdit).DisplayFormat := '$ '+FormatoFloat
      Else
        (Self.Controls[var_auxi_integer - 1] as TdxDBCurrencyEdit).DisplayFormat := FormatoFloat;
    End;
      //tdxCurrencyEdit
      if (Self.Controls[var_auxi_integer - 1] is tdxCurrencyEdit) Then Begin
          //Verificar si es de moneda
          If pos('$',(Self.Controls[var_auxi_integer - 1] as tdxCurrencyEdit).displayFormat)>0 Then
              (Self.Controls[var_auxi_integer - 1] as tdxCurrencyEdit).DisplayFormat := '$ '+FormatoFloat
          Else
              (Self.Controls[var_auxi_integer - 1] as tdxCurrencyEdit).DisplayFormat := FormatoFloat;
      End;
      //tdxCurrencyEditPCP
      if (Self.Controls[var_auxi_integer - 1] is tdxCurrencyEditPCP) Then          Begin
          //Verificar si es de moneda
        If pos('$',(Self.Controls[var_auxi_integer - 1] as tdxCurrencyEditPCP).displayFormat)>0 Then
          (Self.Controls[var_auxi_integer - 1] as tdxCurrencyEditPCP).DisplayFormat := '$ '+FormatoFloat
        Else
         (Self.Controls[var_auxi_integer - 1] as tdxCurrencyEditPCP).DisplayFormat := FormatoFloat;
      End;
  End;
  {$ENDIF}
  //Activar los shortcuts
  padr_barra.ProcessShortCuts := True;
  // Maximizar la ventana cuando se muestre-jmv:v0.3
  //....................................................................
  DisableAlign;
  If FormStyle = fsMDIChild Then
        WindowState := wsMaximized
  Else If FormStyle = fsNormal Then
        WindowState := wsNormal;
  EnableAlign;
end;

{****************************************************************
Procedimiento   : padr_pane_tituloMouseDown
Objetivo        : Mover la ventana desde el panel del titulo-jmv:v0.3
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_pane_tituloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Const
  SC_DragMove = $F012;
begin
  // Mover la ventana desde el panel del titulo-jmv:v0.3
  //....................................................................
  ReleaseCapture;
  Self.Perform(WM_SysCommand, SC_DragMove, 0);
end;

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar los objetos de la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 12 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.FormCreate(Sender: TObject);
Var
  ColorAplicacion : TColor;
  Node: TdxTreeListNode;
begin
  var_vent_Inicializada := False;
  var_nomb_orig_formulario := Self.Caption;
  padr_estilo.BorderColor := clLineaGradiente;
  AutoHints(Self, True);
  padr_pane_conf_vista.Color := clFondoAplicacion;
  padr_dock_izqu_grid.Color := clFondoAplicacion;
  padr_fram_camp_visibles.Color := clFondoAplicacion;
  padr_fram_opci_impresion.Color := clFondoAplicacion;
  UbicarPanels;
  {$IFDEF PCP4}
              //Variables de solo lectura
              Variables.SoloLectura := Not doInicializarPermisos(Self);
              Variables.ColorRequerido := cocRequerido;
  {$ELSE}
              Variables.SoloLectura := False;
  {$ENDIF}
  //Opciones de anclar hijo
  padr_sepa_new.Pen.Color := clLineaGradiente;
  {$IFDEF PCP4}
              doInicializarPermisos(Self);
             SetAnclarHijos(var_anclarHijos);
  {$ELSE}
             SetAnclarHijos(True);
  {$ENDIF}
  //Elimino los nodos del treelist de generales de opciones de impresión
  padr_gene_impresion.ClearNodes;
	//Creo el nodo del treelist de generales de opciones de impresión Logotipo
  Node := padr_gene_impresion.Add;
  Node.Values[padr_gene_impresionGenerales.Index] := 'Logotipo';
	//Creo el nodo del treelist de generales de opciones de impresión Eslogan
  Node := padr_gene_impresion.Add;
  Node.Values[padr_gene_impresionGenerales.Index] := 'Eslogan';
	//Creo el nodo del treelist de generales de opciones de impresión Número Página
  Node := padr_gene_impresion.Add;
  Node.Values[padr_gene_impresionGenerales.Index] := 'Número Página';
	//Creo el nodo del treelist de generales de opciones de impresión Fecha Impresión
  Node := padr_gene_impresion.Add;
  Node.Values[padr_gene_impresionGenerales.Index] := 'Fecha Impresión';
	//Creo el nodo del treelist de generales de opciones de impresión Líneas
  Node := padr_gene_impresion.Add;
  Node.Values[padr_gene_impresionGenerales.Index] := 'Líneas';

  //Actualizo las opciones de impresión
	Actualizar_Opciones_Impresion;

    {$IFDEF BARRA_MDI}
            //Ocultar la barra de la ventana
            padr_barra.Visible := False;
            //Aplicar los ajustes seleccionados
            padr_acti_vertodo.Checked := _fmdi.padr_boto_verTodo.Checked;
    				padr_imagenes.Assign(imag_pequenas);
    {$ENDIF}
    // Rutinas de inicialización de la ventana
    //....................................................................
    //Colores de aplicación
    {$IFDEF PCP4} colorAplicacion := colorPCP; {$ENDIF}
    {$IFDEF PCT1} colorAplicacion := colorPCT; {$ENDIF}
    padr_titu_ventana.Color := colorAplicacion;
    Variables.ColorPanel := colorAplicacion;
    padr_titu_ventana.update;
    
    
    // Colocar el título de la ventana igual al del panel de titulo-jmv:v0.3
    //....................................................................
    Caption := padr_pane_titulo.Caption;

    //Color del titulo
    padr_titu_ventana.Color := Variables.ColorPanel;
//    padr_pane_titulo.Color := Variables.ColorPanel;

    //Asignar el SQL de eliminacion
    If Eliminar.Sql.Count = 0 Then
    Try
       Eliminar.Sql.Text := Variables.GetDeleteSQL;
    Except
    End;

    //Color del grid
    ColorGrid(padr_grid);
    //Ajustar el alto
    padr_acti_ajus_altoExecute(Sender);
    // Abrir la consulta
    //....................................................................
    if (data_ventana.DataSet <> Nil) and (data_Ventana.Tag <> -1) then
    Begin
       //Abrir la consulta
       If Not AbrirDataSet(data_ventana.DataSet, True) Then 
       Begin
                Close;
                Abort;
       End;
       //Cargar TODOS los datos en el grid
       padr_acti_llam_todosExecute(Sender);
//       FetchAll(data_ventana.DataSet);
    End;
    padr_acti_mejo_ajusteExecute(Sender);
    //RC20.6 - Inicialización de la vista previa FORTES
    padr_repo_Fortes.CampoFormato := quer_prev_fortesCONTROLES;
    Try
        padr_repo_Fortes.ReportDataSet := data_ventana.DataSet;
    Except
    End;

    //RC20.6 - Solucionado dxDBGrid.AutoFilterDataSet
    padr_grid.Filter.AutoDataSetFilter := True;
    //Inicializar el resultado
    Resultado := null;
//	Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : padr_acti_buscarExecute
Objetivo        : Activar los filtros de búsquedas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_buscarExecute(Sender: TObject);
Var
        vMenuItem       :       TTBXItem;
        i               :       Integer;
begin
      //Activar los filtros de búsquedas
      //....................................................................
      With padr_acti_buscar do
      Begin
               //Armar el menú
               padr_popu_buscar.Items.Clear;
               // Si está filtrado, un item para retirar los filtros
               //....................................................................
               If (Checked) Then
               Begin
                     vMenuItem := TTBXItem.Create(Nil);
                     vMenuItem.Caption := cosEliminarFiltros;
                     vMenuItem.Tag := -1;
                     vMenuItem.OnClick := AbrirFiltro;
                     padr_popu_buscar.Items.Add(vMenuItem);
                     // Separador
                     //....................................................................
                     padr_popu_buscar.Items.Add(CrearSeparadorMenu);
               End;
               // Insertar las columnas del grid (las visibles)
               //....................................................................
               With padr_popu_buscar do
               Begin
                    For i:=1 to padr_grid.ColumnCount do
                    Begin
                        if padr_grid.Columns[i-1].Visible then
                        Begin
                             vMenuItem := TTBXItem.Create(Nil);
                             vMenuItem.Caption := padr_grid.Columns[i-1].Caption;
                             vMenuItem.Tag := i-1;
                             vMenuItem.OnClick := AbrirFiltro;
                             padr_popu_buscar.Items.Add(vMenuItem);
                        End;
                    End;
               End;
               padr_popu_buscar.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
      End;
end;

{****************************************************************
Procedimiento   : AbrirFiltro
Objetivo        : Ejecutar filtro de búsqueda
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.AbrirFiltro(Sender: TObject);
begin
    // Ejecutar el filtro de la columna
    //....................................................................
    if (Sender as TTBXItem).Tag = -1 Then
           padr_grid.Filter.Clear
    Else
           padr_grid.Filter.ShowCustomDialog(padr_grid.Columns[(Sender as TTBXItem).Tag]);
end;

{****************************************************************
Procedimiento   : padr_gridFilterChanged
Objetivo        : Actualizar el estado de chequeo de la accion de búsqueda
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_gridFilterChanged(Sender: TObject;
  ADataSet: TDataSet; const AFilterText: String);
begin
      // Actualizar el estado de chequeo de la accion de búsqueda
      //....................................................................
      padr_acti_buscar.Checked := aFilterText <> '' ;
end;

{****************************************************************
Procedimiento   : padr_acti_vertodoExecute
Objetivo        : Procedimiento para ajustar al ancho de la ventana los datos del grid
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_vertodoExecute(Sender: TObject);
begin
        // Procedimiento para ajustar al ancho de la ventana los datos del grid
        //....................................................................
        If (edgoAutoWidth in (padr_grid.OptionsView)) Then
        Begin
            padr_grid.OptionsView := padr_grid.OptionsView - [edgoAutoWidth];
            padr_acti_verTodo.Checked := False;
        End
        Else
        Begin
            padr_grid.OptionsView := padr_grid.OptionsView + [edgoAutoWidth];
            padr_acti_verTodo.Checked := True;
        End;
        padr_acti_vertodo.Update;
end;

{****************************************************************
Procedimiento   : padr_conf_vistaDragDrop
Objetivo        : Mover una columna en la configuración de la vista actual
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_conf_vistaDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  column : TdxTreeListColumn;
begin
  // Mover una columna en la configuración de la vista actual
  //....................................................................
  DragNode.MoveTo(padr_conf_vista.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (padr_conf_vista.FocusedNode <> nil) then
    column.Index := padr_conf_vista.FocusedNode.AbsoluteIndex
  else column.Index := 0;
end;

{****************************************************************
Procedimiento   : padr_conf_vistaDragOver
Objetivo        : Aceptar el drag sobre el componente de manejo de la vista actual
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_conf_vistaDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  // Aceptar el drag sobre el componente de manejo de la vista actual
  //....................................................................
  Accept := Source = Sender;
end;

{****************************************************************
Procedimiento   : padr_conf_vistaStartDrag
Objetivo        : Iniciar el drag de las columnas (configurar vista actual)
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_conf_vistaStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  // Iniciar el drag de las columnas (configurar vista actual)
  //....................................................................
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

{****************************************************************
Procedimiento   : Sincronizar_columnas
Objetivo        : Sincronizar el componente de configurar vista actual
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
Procedure T_fvent_child.Sincronizar_columnas;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  // Sincronizar el componente de configurar vista actual
  //....................................................................
  padr_conf_vista.ClearNodes;
  for I := 0 to padr_grid.ColumnCount - 1 do
  begin
    Node := padr_conf_vista.Add;
    Node.Values[padr_conf_vistaColumna.Index] := padr_grid.Columns[I].Caption;
    if padr_grid.Columns[I].Visible then
      Node.Values[padr_conf_vistaVisible.Index] := padr_conf_vistaVisible.ValueChecked;
    Node.Data := padr_grid.Columns[I];
    padr_grid.Columns[I].HeaderAlignment := Classes.taCenter;
  end;
end;



procedure T_fvent_child.padr_gridHideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
end;

{****************************************************************
Procedimiento   : vent_list_boto_todosClick
Objetivo        : Seleccionar todas las columas (Vista actual)
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.vent_list_boto_todosClick(Sender: TObject);
Var
        i       :       Integer;
begin
    // Seleccionar todas las columas (Vista actual)
    //....................................................................
    For i := 1 to padr_grid.ColumnCount do
        padr_grid.Columns[i-1].Visible := True;
    Sincronizar_columnas;
end;

{****************************************************************
Procedimiento   : vent_list_Ocultar_todosClick
Objetivo        : Ocultar todas las columas (Vista actual)
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.vent_list_Ocultar_todosClick(Sender: TObject);
Var
        i       :       Integer;
begin
    // Ocultar todas las columas (Vista actual)
    //....................................................................
    For i := 1 to padr_grid.ColumnCount do
        padr_grid.Columns[i-1].Visible := False;
    Sincronizar_columnas;
end;

{****************************************************************
Procedimiento   : vent_list_Invertir_seleccionClick
Objetivo        : Invertar la selección de columnas (Vista actual)
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.vent_list_Invertir_seleccionClick(Sender: TObject);
Var
        i       :       Integer;
begin
    // Invertar la selección de columnas (Vista actual)
    //....................................................................    
    For i := 1 to padr_grid.ColumnCount do
        padr_grid.Columns[i-1].Visible := Not padr_grid.Columns[i-1].Visible;
    Sincronizar_columnas;
end;

{****************************************************************
Procedimiento   : padr_gridMouseUp
Objetivo        : Mostrar el popup con las opciones del grid
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_gridMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // Mostrar el popup con las opciones del grid
  //....................................................................
  if (Button <> mbRight) or (Shift <> []) then Exit;
  TdxDBGridPopupMenuManager.Instance.ShowGridPopupMenu(Sender as TdxDBGrid);
end;


{****************************************************************
Procedimiento   : padr_conf_vistaVisibleToggleClick
Objetivo        : Mostrar/Ocultar una columna
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_conf_vistaVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   // Mostrar/Ocultar una columna
   //....................................................................
   column := TdxTreeListColumn(padr_conf_vista.FocusedNode.Data);
   column.Visible := State = cbsChecked;
end;

{****************************************************************
Procedimiento   : padr_acti_nuevoExecute
Objetivo        : Ejectutar la acción de crear un nuevo registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_nuevoExecute(Sender: TObject);
begin
  If Variables.DetalleFormClass <> Nil then
      //crear la ventana de nuevo registro
      Crear_Forma(taInsert);
end;

{****************************************************************
Procedimiento   : padr_acti_modificarExecute
Objetivo        : Ejecutar la acción de modificar un registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_modificarExecute(Sender: TObject);
begin
  //Verificar que existan registros
	If consulta.RecordCount = 0 Then
  	Exit;
  //Verificar que la fuente de datos sea válida
  If Variables.DetalleFormClass <> Nil then
        Crear_Forma(taEdit);
end;

{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Eliminar Registros
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_eliminarExecute(Sender: TObject);
Var
	I, J, Indice : Integer;
  Progreso_Total : Integer;
  ValoresBusqueda, CamposBusqueda : Variant;
begin
  //Verificar que existan registros
	If Data_ventana.DataSet.RecordCount = 0 Then
  	Exit;
  // Preguntar antes de eliminar el registro
  //....................................................................
  If EjecutarMensaje(Format(cosEliminarRegistro,[Variables.Genero+Variables.NombreAMostrar,
      '(' + consulta.fieldbyname(Variables.CampoAMostrar).AsString + ')']),
          mtConfirmation, [mbYes, mbNo],0) = mrYes Then Begin
    Update;
    //Verifico que el sql del query de eliminar el registro no este vacio
    If Eliminar.SQL.Count = 0 then
       Raise Exception.Create(cosNoExisteSQLEliminacion);
    //Deshabilito los controles de la consulta
		Data_ventana.DataSet.DisableControls;
    //Recorro el grid para averiguar los registro seleccionados
    For I := 0 To padr_grid.Count - 1 Do
    	If padr_grid.Items[I].Selected Then Begin
        //Si el primary key es de un campo
        If Self.Variables.NumeroDeCamposDeBusqueda = 1 Then Begin
          //Localizo el indice de la columna del campo primario
          Indice := padr_grid.ColumnByFieldName(Variables.CamposDeBusqueda).Index;
          //Busco el registro seleccionado en el grid
          If Data_ventana.DataSet.Locate(Variables.CamposDeBusqueda, padr_grid.Items[I].Strings[Indice], []) Then
            try
              //Elimino el registro
              Eliminar.ExecSQL;
            except
              on E:Exception do
              EjecutarMensajeError(e.message);
            end;
        End
        //Si el primary key es de varios campos
        Else Begin
          //Consultar cuantos campos tiene
          CamposBusqueda := Self.Variables.ArrayCamposDeBusqueda;
          ValoresBusqueda := VarArrayCreate([0, Self.Variables.NumeroDeCamposDeBusqueda - 1], varVariant);
          //Llenar el arreglo de los valores de la busqueda
          For J := 1 to Self.Variables.NumeroDeCamposDeBusqueda do Begin
	    Indice := padr_grid.ColumnByFieldName(Variables.CamposDeBusqueda[J - 1]).Index;
            ValoresBusqueda[J - 1] := padr_grid.Items[I].Strings[Indice];
          End;
          If Data_ventana.DataSet.Locate(Self.Variables.CamposDeBusqueda, ValoresBusqueda, []) Then
            try
              //Elimino el registro
              Eliminar.ExecSQL;
            except
              on E:Exception do
              EjecutarMensajeError(e.message);
            end;
	End;
	//Incremento el progreso de eliminación
        Inc(Progreso_Total);
	//Muestro el progreso de eliminación
        ProgresoBarraEstado('Eliminando ' + padr_pane_titulo.Caption, Progreso_Total, padr_grid.SelectedCount);
      End;
    ProgresoBarraEstado;
    //Habilito los controles de la consulta
    Data_ventana.DataSet.EnableControls;
    //Actualizo la consulta
    padr_acti_actualizar.Execute;
  end;
end;

{****************************************************************
Procedimiento   : padr_acti_actualizarExecute
Objetivo        : Actualizar la consulta
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_actualizarExecute(Sender: TObject);
Var
	Posicion : Pointer;
begin
   // se guarda la posicion del anterior registro, cuando se actualice se
   //  vuelve al mismo registro si existe
   //....................................................................
  try
    Posicion := consulta.GetBookmark;
    consulta.Close;
    AbrirDataSet(consulta, False);
    consulta.GotoBookmark(Posicion);
  except
  end;
  Actualizar_Opciones_Impresion;
end;

{****************************************************************
Procedimiento   : padr_acti_ayudaExecute
Objetivo        : Ejecutar la ayuda en línea
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_ayudaExecute(Sender: TObject);
begin
//
end;

{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Llenar el arreglo con los valores del registro seleccionado
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_aceptarExecute(Sender: TObject);
Var
  CamposBusqueda : Variant;
  i : Integer;
begin
  If Variables.TipoDeBusqueda = tbArreglo Then Begin
    CamposBusqueda := Variables.ArrayCamposDeBusqueda;
    Resultado := VarArrayCreate([0, Variables.NumeroDeCamposDeBusqueda - 1], varVariant);
    //Llenar el arreglo de los valores de la busqueda
    For i:=1 to Variables.NumeroDeCamposDeBusqueda do
        Resultado[i-1] := Data_Ventana.DataSet.FieldByName(CamposBusqueda[i-1]).Value;
  End
  Else
    Resultado := Data_Ventana.DataSet.FieldByName(Variables.CamposDeBusqueda).Value;
  //Cerrar la ventana
  Close;
end;

{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Cerrar el módulo
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_cancelarExecute(Sender: TObject);
begin
  Close;    //Cerrar la ventana
end;

{****************************************************************
Procedimiento   : padr_acti_expo_excelExecute
Objetivo        : Exportar datos a Excel
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_expo_excelExecute(Sender: TObject);
begin
  ExportarDBGridAExcel(padr_grid);
end;

{****************************************************************
Procedimiento   : padr_acti_imprimirExecute
Objetivo        : Imprimir consulta activa
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_imprimirExecute(Sender: TObject);
Var
    i : Integer;
    Filtro_Consulta : String;
    var_Tag : Integer;
begin
  //Validar el DataSet - RC16
  if (data_Ventana.DataSet = Nil) Then Exit;
  //Lleno el arreglo de opciones de impresión
  Padr_Acti_Opci_Impresion.Execute;
  //RC20.6 - MARZO 02 DE 2005
  {DOS TIPOS DE IMPRESION -> QUICK REPORT Y FORTES REPORT}
  var_Tag := 0;
  if (Sender is TTBXItem) Then Begin
    var_Tag := (Sender as TTBXItem).Tag;
  End;
  //Reportes diseñados en QUICK REPORT
  if (var_Tag >= 0) Then Begin
      //Creo el informe maestro
      If ExisteVentana(TFInformes) Then
        Exit;
      FInformes := TFInformes.Create(Self);
      With FInformes Do
      Begin
        if (Sender is TTBXItem) and (Sender <> boto_repo_nuevo) Then
        Begin
              fInformes.FormStyle := fsNormal;
              fInformes.Visible := False;
        End;
        var_vent_child := Self;
        FInformes.Caption := 'Informe ' + padr_pane_titulo.Caption;
            //Asigno las opciones de impresión
        For I := 0 To 12 Do
            Opciones_Impresion[I] := Arreglo_Opciones[I];
            //Ejecuto las opciones de impresión
        Elegir_Firmas;
        //Asigno campos a mostrar
            For I := 0 To padr_grid.ColumnCount - 1 Do
                If padr_grid.Columns[I].Visible Then
          Begin
            Arreglo_Campos[0, I] := padr_grid.Columns[I].Caption;
            Arreglo_Campos[1, I] := padr_grid.Columns[I].FieldName;
            Arreglo_Campos[2, I] := IntToStr(padr_grid.Columns[I].Width + 10);
          End;
        //Almaceno el filtro de la consulta de la forma
        Filtro_Consulta := consulta.Filter;

        //Verifico que el grid no este filtrado
        If padr_grid.Filter.FilterText <> '' Then
        Begin
              consulta.Close;
              consulta.Filter := padr_grid.Filter.FilterText;
              consulta.Filtered := True;
              AbrirDataSet(consulta);
        End;
        //Muestro el maestro antes del preview
        Impresion_General(consulta, padr_pane_titulo.Caption);

        //Quito el filtro del informe y asigno el filtro de la forma
        consulta.Close;
        consulta.Filter := Filtro_Consulta;
        If Filtro_Consulta <> '' Then
            consulta.Filtered := True
        Else
            consulta.Filtered := False;
        AbrirDataSet(consulta);
        //Si el reporte es uno guardado, cargarlo
        //Descartar si no envia un item del menu
        If Not (Sender is tTBXItem) Then Exit;
        With (Sender as tTBXItem) do
        Begin
              //Si es el boton de reporte nuevo, salir
              if (Sender = boto_repo_nuevo) Then Exit;

              //Abrir el reporte
              fInformes._QRPadre.Visible := False;
              //Ubicar el registro
              fInformes.QInformes.ParamByName('MODULO').AsString := UpperCase(Self.Caption);
              AbrirDataSet(fInformes.QInformes);
              fInformes.qInformes.Locate('NOMB_USUA_INFORME', Caption, []);
              fInformes.Abrir_Informe(QInformes.FieldByname('CONS_USUA_INFORME').AsInteger);
              fInformes._qrPadre.ReportTitle := fInformes.qInformes.FieldByName('NOMB_USUA_INFORME').AsString;
              fInformes._qrInforme.Caption := fInformes.qInformes.FieldByName('NOMB_USUA_INFORME').AsString;
              fInformes.Acti_propiedadesExecute(Sender);
              fInformes._QRPadre.Visible := True;
              fInformes.Acti_Informe.Execute;
              fInformes.Close;
        End;
    //    Destroy;
      End;
  End
  Else
  //REPORTES FORTES REPORT
  Begin
      Try
        var_tag := Abs(var_Tag);
        //Buscar el formato del informe
        With quer_prev_fortes do
        Begin
             If Active Then Close;
             ParamByName('cons_usua_informe').Value := var_Tag;
             Open;
             //Validar si no existe
             If (RecordCount = 0) Then
                Raise Exception.Create(Format(cosNoFuePosibleEncontrarElReporte, [IntToStr(var_Tag)]));
             //Llamar el reporte
             padr_repo_Fortes.CampoFormato := quer_prev_fortesCONTROLES;
             padr_repo_Fortes.ReportDataSet := data_ventana.DataSet;
             padr_repo_Fortes.acti_abrir.Execute;
             padr_repo_Fortes.LoadOrderByFromFields(quer_prev_fortes.FieldByName('orde_1').asString,
                    quer_prev_fortes.FieldByName('orde_2').asString,
                    quer_prev_fortes.FieldByName('orde_3').asString,
                    (quer_prev_fortes.FieldByName('orde_asce_1').asInteger = -1));
             padr_repo_Fortes.TituloReporte := FieldByName('nomb_usua_informe').asString;
             //Ejecutar un before del preview
             if Assigned(padr_acti_befo_print_fortes.onExecute) then
                if padr_acti_befo_print_fortes.Enabled then
                   padr_acti_befo_print_fortes.Execute;
             padr_repo_Fortes.acti_vist_previa.Execute;
             //Close;
        End;
      Except
          On e:Exception do
          Begin
              EjecutarMensajeError(e.Message);
              quer_prev_fortes.Close;
          End;
      End;
  End;
end;

{****************************************************************
Procedimiento   : padr_paginaDockDrop
Objetivo        : Activar carpeta anterior
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_paginaDockDrop(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer);
begin
  padr_pagina.ActivePageIndex := padr_pagina.PageCount -1 ;
  //Si el control que se crea es un Vent_Modal, dar el icono
  If (Source.Control is t_fVent_Modal) Then
  With (Source.Control as t_fVent_Modal) do
  Begin
      //Adicionar
      If Pos(cosAdicionando,Caption)>0 Then padr_pagina.ActivePage.ImageIndex := 1;
      //Editar
      If Pos(cosEditando,Caption)>0 Then padr_pagina.ActivePage.ImageIndex := 2;
  End;
end;

{****************************************************************
Procedimiento   : doGridDblClick
Objetivo        : Ejecutar la acción de Modificación cuando den
                  doble click en el grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.FormShow(Sender: TObject);
var
        var_Ruta_ini    : String;
begin
  //Inicialización de la ventana
  if not Var_vent_inicializada Then begin
    (**************** CARGAR COLUMNAS DEL GRID ***********************)
    var_nomb_orig_formulario := Self.Caption;
    if (var_nomb_orig_formulario = '') then
         var_nomb_orig_formulario := cosSinNombre;
    var_ruta_ini := GetTempDir + '\PCP4_' + var_nomb_orig_formulario + '.conf';
    if FileExists(var_ruta_ini) then
      padr_grid.LoadFromIniFile(var_Ruta_ini)
    else begin
      vent_list_boto_todosClick(Sender);
      padr_boto_ocul_consecutivosClick(Sender);
      vent_list_Invertir_seleccionClick(Sender);
    End;
  End;
  {$IFDEF BARRA_MDI}
      //Mostrar la barra si no es MDIChild
      padr_barra.Visible := (FormStyle <> fsMDIChild);
  {$ENDIF}
  //Identificar si se debe anclar el formulario a la ventana
  if (Not fAnclarHijos) Then Begin
    padr_titu_ventana.Visible := False;
    //padr_titu_ventana.Visible := True;
    padr_pagina.HideButtons := True;
  End;
  UbicarPanels;
  var_vent_Inicializada := True;
end;

{****************************************************************
Procedimiento   : padr_acti_cerr_carp_activaExecute
Objetivo        : Cerrar el tab activo del PageControl
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_cerr_carp_activaExecute(Sender: TObject);
Var
   i 								: Integer;
   PaginaActiva 	  : tdxTabSheet;
   VentanaModal 	  : t_fVent_Modal;
   Index_Pagina		  : Integer;
   Titulo_Carpeta   : String;
begin
       //Recorrer los controles buscando una ventana MODAL dockeada
       For i := 1 To padr_pagina.ActivePage.ControlCount do
       Begin
           //Ver si es una ventana MODAL
           if (padr_pagina.ActivePage.Controls[i-1] is T_fVent_Modal) Then
           Begin
                //Cuando la encuentre, cerrarla
                PaginaActiva := padr_pagina.ActivePage;
                VentanaModal := (padr_pagina.ActivePage.Controls[i-1] as T_fVent_Modal);
                Titulo_Carpeta := VentanaModal.Caption;
                Index_Pagina := PaginaActiva.PageIndex;
                (padr_pagina.ActivePage.Controls[i-1] as T_fVent_Modal).Close;
                padr_pagina.Refresh;
                //Si la cerró, destruirla
                If Not Existe_Pagina(Titulo_Carpeta, False, True) Then
                Begin
                  if PaginaActiva <> Nil then
                        PaginaActiva.Destroy;
                  padr_pagina.Pages[Index_Pagina - 1].Show;
                End;
                Exit;
           End;
       End;
end;

{****************************************************************
Procedimiento   : pop_paginaPopup
Objetivo        : Preparar el menu contextual del page control
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.pop_paginaPopup(Sender: TObject);
begin
        //Comando Ver lista
        padr_acti_ver_lista.Enabled :=  (fram_pagi_lista.TabVisible) and (padr_pagina.ActivePage <> fram_pagi_lista);
        //Comando Cerrar Pagina activa
        padr_acti_cerr_carp_activa.Enabled := padr_pagina.ActivePage <> fram_pagi_lista;
        //Comando cerrar Todas
        acti_padr_cerr_todas_carpetas.Enabled := padr_pagina.PageCount > 1;
end;

{****************************************************************
Procedimiento   : acti_padr_cerr_todas_carpetasExecute
Objetivo        : Cerrar todas las carpetas que se tengan activas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.acti_padr_cerr_todas_carpetasExecute(
  Sender: TObject);
Var
        i       : Integer;
begin
        //Recorrer las paginas del PAGE CONTROL
        For i := padr_pagina.pageCount downTo 1 Do
        Begin
            //Verificar que no sea la del browse (Lista)
            If padr_pagina.Pages[i-1] <> fram_pagi_lista Then
            Begin
                //Activarla
                padr_pagina.ActivePage := padr_pagina.Pages[i-1];
                //Cerrarla
                padr_acti_cerr_carp_activaExecute(Sender);
            End;
        End;
end;

{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Verificar que la ventana se pueda cerrar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  var_Ruta_ini : String;
begin
  //Cerrar todas las ventanas antes de salir
  acti_padr_cerr_todas_carpetasExecute(Sender);
  //Si la ventana activa es diferente a la de la lista, no cerrar
  CanClose := (padr_pagina.ActivePage = Nil) or
              (padr_pagina.ActivePage = fram_pagi_lista);
  //RC20.6 Guardar las columnas
  if CanClose Then
  try
    var_ruta_ini := GetTempDir + '\PCP4_' + var_nomb_orig_formulario + '.conf';
    padr_grid.SaveToIniFile(var_Ruta_ini)
  except
    raise Exception.Create('Pida al Administrador permisos de escritura para ' +
      GetTempDir);
  End;
end;

{****************************************************************
Procedimiento   : padr_acti_ver_listaExecute
Objetivo        : Mostrar la lista de registros
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_ver_listaExecute(Sender: TObject);
begin
        //Mostrar la lista de registros
        If (fram_pagi_lista.TabVisible) and (padr_pagina.ActivePage <> fram_pagi_lista) Then
            padr_pagina.ActivePage := fram_pagi_lista;
end;

{****************************************************************
Procedimiento   : padr_acti_ajus_altoExecute
Objetivo        : Auto ajustar el alto de las celdas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 04 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_ajus_altoExecute(Sender: TObject);
begin
        //Verificar si la propiedad está autoajustada
        If (edgoRowAutoHeight in (padr_grid.OptionsView)) Then
        Begin
            padr_grid.OptionsView := padr_grid.OptionsView - [edgoRowAutoHeight];
            padr_acti_ajus_alto.Checked := False;
        End
        Else
        Begin
            padr_grid.OptionsView := padr_grid.OptionsView + [edgoRowAutoHeight];
            padr_acti_ajus_alto.Checked := True;
        End
end;

{****************************************************************
Procedimiento   : acti_padr_expo_htmlExecute
Objetivo        : Exportar los datos del grid activo a HTML
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 04 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_expo_htmlExecute(Sender: TObject);
begin
        ExportarDBGridAHTML(padr_grid);
end;

{****************************************************************
Procedimiento   : acti_padr_expo_txtExecute
Objetivo        : Exportar los datos del DBGrid activo a TXT
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           :
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_expo_txtExecute(Sender: TObject);
begin
        ExportarDbGridATexto(padr_grid);
end;

{****************************************************************
Procedimiento   : padr_acti_llam_todosExecute
Objetivo        : Ejecutar la acción de llamar todos los registros
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 04 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_llam_todosExecute(Sender: TObject);
Var
    VentanaAvance : TVentanaMensajes;
begin
        {$IFDEF PCP4}
                ProgresoBarraEstado(cosLlamandoTodosLosRegistros);
        {$ELSE}
            //Crear la ventana de avance
            VentanaAvance := EjecutarAvance(cosProgreso, cosLlamandoTodosLosRegistros);
        {$ENDIF}
        Try
            //No llamarlos
            padr_grid.OptionsDB := padr_grid.OptionsDB - [edgoLoadAllRecords];
            //Llamarlos
            Try
               padr_grid.OptionsDB := padr_grid.OptionsDB + [edgoLoadAllRecords];
            Except
            End;
            //Ocultar/Mostrar el panel de totales
            padr_grid.ShowSummaryFooter := (edgoLoadAllRecords in padr_grid.OptionsDB);
        Except
           on E:Exception do
               EjecutarMensajeError(e.message);
        End;                                
        {$IFDEF PCP4}
              ProgresoBarraEstado;
        {$ELSE}
            //Cerrar la ventana de avance
            CerrarVentanaAvance(VentanaAvance);
        {$ENDIF}        

end;

procedure T_fvent_child.TBXItem5Click(Sender: TObject);
begin
//  ShowMessage(IntToStr(Padr_Pagina.PageCount));
end;

{****************************************************************
Procedimiento   : padr_gridKeyDown
Objetivo        : Evaluar los procedimientos a ejecutar cuando
                  se presione una tecla en el grid padre de la
                  ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        //Validar el estado de los datos}
        If (data_ventana.DataSet = Nil) or (Not data_ventana.DataSet.Active) or
           (data_ventana.DataSet.RecordCount = 0) Then Exit;
        //Al dar ENTER, simular el dobleClick
        If Key = vk_Return then
           doGridDblClick(Sender);
        //Si es ESCAPE  cerrarla
        if (key = vk_escape) Then
               Close;
end;

{****************************************************************
Procedimiento   : padr_acti_mejo_ajusteExecute
Objetivo        : Aplicar el mejor ajuste
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_mejo_ajusteExecute(Sender: TObject);
Var
        i       : Integer;
begin
  inherited;
  For i := 1 to padr_grid.ColumnCount do
     padr_grid.ApplyBestFit(padr_grid.Columns[i-1]);
end;

{****************************************************************
Procedimiento   : FormDeactivate
Objetivo        : Quitar las acciones de la ventana principal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.FormDeactivate(Sender: TObject);
begin
        {$IFDEF BARRA_MDI}
        //-----Liberar la barra del MDI------
        _fmdi.ActualizarAcciones(Sender);
        {$ENDIF}
        //Desactivar los shortcuts
        padr_barra.ProcessShortCuts := False;
end;

{****************************************************************
Procedimiento   : doGridDblClick
Objetivo        : Modificar el registro o mostrar imagen
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.doGridDblClick(Sender: TObject);
begin
  //Verifico que existan registros en la consulta
  If padr_grid.DataSource.DataSet.RecordCount > 0 Then
    //Verifico que la columna donde dio doble click sea del tipo imagen o graphic
  If var_colu_es_imagen then Begin
    //Creo el modal para mostrar la imagen en showmodal
    _FVent_Most_Imagen := T_FVent_Most_Imagen.Create(Self);
    With _FVent_Most_Imagen Do Begin
        //Oculto anjustar imagen de la base de datos y muestro
        //  ajustar imagen que no va a la base de datos
      fram_fotografia.fram_chec_ajustar.Visible := False;
      fram_fotografia.CBAjustar.Visible := True;
      fram_fotografia.CBAjustar.Left := fram_fotografia.fram_chec_ajustar.Left;

      //Asigno dataset y fieldname a los componentes
      fram_fotografia.fram_fotografia.DataSource := padr_grid.DataSource;
      fram_fotografia.fram_fotografia.DataField := var_nomb_colu_imagen;

      //Muestro el modal
      ShowModal;
    End;
  End
  //Si fue creada como child, en doble click editar el registro
  Else If (FormStyle = fsMDIChild) then
  Begin
      //Validar el DataSet
      If Data_Ventana.DataSet = Nil then
         Raise Exception.Create(Format(cosErrorFuenteDatosNoValida,[data_ventana.Name]));
      If Not Data_Ventana.DataSet.Active Then
         Raise Exception.Create(Format(cosErrorFuenteDatosNoValida,[data_ventana.Name]));
      //Ejecutar la accion de consulta
      padr_acti_consultar.Execute;
  End
  //Si fue creada modal, en doble click ejecutar la acción de aceptar
  Else
      padr_acti_aceptarExecute(Sender);
end;

{****************************************************************
Procedimiento   : padr_gridChangeColumn
Objetivo        : Verificar si la columna es imagen
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_gridChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
	If (Node=Nil) or (Node.HasChildren) then exit;
  var_colu_es_imagen := (padr_grid.VisibleColumns[Column] is TdxDBGridBlobColumn);
                      // (padr_grid.VisibleColumns[Column] is TdxDBGridImageColumn);
  If var_colu_es_imagen Then
  	var_nomb_colu_imagen := padr_grid.VisibleColumns[Column].FieldName
  Else
  	var_nomb_colu_imagen := '';
end;

{****************************************************************
Procedimiento   : Initialization
Objetivo        : Inicializar variables
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_acti_consultarExecute(Sender: TObject);
begin
  //Verificar que existan registros
  If consulta.RecordCount > 0 Then
  //Verificar que la fuente de datos sea válida
  If Variables.DetalleFormClass <> Nil then
           Crear_Forma(taConsulta);
end;

{****************************************************************
Procedimiento   : padr_accionesUpdate
Objetivo        : Actualizar el estado de las acciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.padr_accionesUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
        //Modificar
        padr_acti_modificar.Enabled := (padr_acti_modificar.tag<>-1) and (Data_Ventana <> Nil) and
                (Data_Ventana.DataSet <> Nil) and (Data_Ventana.DataSet.Active) and
                (Data_Ventana.DataSet.RecordCount > 0) and (Not variables.SoloLectura);
        //Consultar
        padr_acti_consultar.Enabled := (padr_acti_consultar.tag<>-1) and (Data_Ventana <> Nil) and
                (Data_Ventana.DataSet <> Nil) and (Data_Ventana.DataSet.Active) and
                (Data_Ventana.DataSet.RecordCount > 0);
        //Eliminar
        padr_acti_eliminar.Enabled := (padr_acti_eliminar.tag<>-1) and (Data_Ventana <> Nil) and
                (Data_Ventana.DataSet <> Nil) and (Data_Ventana.DataSet.Active) and
                (Data_Ventana.DataSet.RecordCount > 0)  and (Not variables.SoloLectura);
        //Nuevo
        padr_acti_nuevo.Enabled := (padr_acti_eliminar.tag<>-1) and (Data_Ventana <> Nil) and
                (Data_Ventana.DataSet <> Nil) and (Data_Ventana.DataSet.Active) and
                (Not variables.SoloLectura);
      {  //Expander
        padr_acti_grid_expander.enabled := (padr_grid.Visible) and (padr_grid.DataSource <> Nil) and
            (padr_grid.DataSource.DataSet <> Nil) and (padr_grid.DataSource.DataSet.Active);
        //Contaer
        padr_acti_grid_contraer.enabled := (padr_grid.Visible) and (padr_grid.DataSource <> Nil) and
            (padr_grid.DataSource.DataSet <> Nil) and (padr_grid.DataSource.DataSet.Active);   }


end;

{****************************************************************
Procedimiento   : Padr_Acti_Opci_ImpresionExecute
Objetivo        : Llenar el arreglo de opciones de impresión
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Martes 29 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.Padr_Acti_Opci_ImpresionExecute(Sender: TObject);
Var
  I, J : Integer;
begin
	//Asigno vacio al arreglo
	For I := 0 To 12 Do
	  Arreglo_Opciones[I] := '';
  DarFoco(padr_grid);
  //Asigno valores a las opciones generales de impresión
  For I := 0 To 4 Do
  	If padr_gene_impresion.Items[I].Strings[1] = 'S' Then
			Arreglo_Opciones[I] := 'S';

	//Asigno los valores de las firmas
  J := 5;
	For I := 0 To padr_firm_impresion.Count - 1 Do
  	If padr_firm_impresion.Items[I].Strings[1] = 'S' Then
		Begin
			If J < 11 Then
	    	Arreglo_Opciones[J] := padr_firm_impresion.Items[I].Strings[0];
      Inc(J);
    End;

	//Asigno los valores de las firmas
  I := 0;
  While I < padr_prio_impresion.Count Do Begin
    If padr_prio_impresion.Items[I].Strings[1] = 'S' Then Begin
      Arreglo_Opciones[12] := padr_prio_impresion.Items[I].Strings[0];
      I := padr_prio_impresion.Count;
    End;
    Inc(I);
  End;
end;

{****************************************************************
Procedimiento   : TUsuarios_ModulosBeforePost
Objetivo        : Asignar el consecutivo del registro
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Martes 29 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.TUsuarios_ModulosBeforePost(DataSet: TDataSet);
begin
  TUsuarios_Modulos.FieldByname('CONS_USUA_MODULO').AsInteger :=
    GenerarSecuencia('SIS_USUA_MODULOS', 'CONS_USUA_MODULO');
end;

{****************************************************************
Procedimiento   : TUsuario_OpcionesBeforePost
Objetivo        : Asignar el consecutivo del registro
Realizado por   : Gustavo Muñoz (DESARROLLO	)
Fecha           : Martes 29 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fvent_child.TUsuario_OpcionesBeforePost(DataSet: TDataSet);
begin
  TUsuario_Opciones.FieldByName('CONS_USUA_OPCION').AsInteger :=
    GenerarSecuencia('SIS_USUA_OPCIONES', 'CONS_USUA_OPCION');
end;
{****************************************************************
Procedimiento   : AbrirConsulta
Objetivo        : Busca y consulta el registro solicitado
                  en la pantalla activa, con el consecutivo dado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 30 de 2004
Versión         : pcp4000
*****************************************************************}
Function T_fvent_child.AbrirConsulta(aCons_Consulta : Integer):Boolean;
Begin
     //Inicializar y validar el procedimiento
     Result := False;
       if (Data_Ventana = Nil) then Exit;
       If (data_ventana.DataSet = Nil) Then Exit;
       if (Not data_ventana.DataSet.Active) Then Exit;
       if (data_ventana.DataSet.RecordCount = 0) Then Exit;
       if (Variables.CamposDeBusqueda = '') Then Exit;
       if (Variables.CamposDeBusqueda = 'NA') Then Exit;
       //Buscar el registro
       Result := data_ventana.DataSet.Locate(Variables.CamposDeBusqueda, aCons_Consulta, []);
       //Si existe, editarlo
       if Result Then doGridDblClick(Self);
End;
{****************************************************************
Procedimiento   : SetAnclarHijos
Objetivo        : Asignar el valor a la propiedad AnclarHijos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 14 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure T_fvent_child.SetAnclarHijos(Value : Boolean);
Begin
    fAnclarHijos := Value;
End;
{****************************************************************
Procedimiento   : padr_acti_grid_expanderExecute
Objetivo        : Ejecutar la acción de expandir nodos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 04 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fvent_child.padr_acti_grid_expanderExecute(Sender: TObject);
begin
    padr_grid.fullExpand;
end;
{****************************************************************
Procedimiento   : padr_acti_grid_contraerExecute
Objetivo        : Ejecutar la acción de contraer nodos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 04 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fvent_child.padr_acti_grid_contraerExecute(Sender: TObject);
begin
    padr_grid.FullCollapse;
end;
{****************************************************************
Procedimiento   : VerificarPermisosAccionesDB
Objetivo        : Verifica los permisos de escritura antes de ejecutar
                  acciones de Base de datos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 24 de 2004
Versión         : pcp4006
*****************************************************************}
Function T_fvent_child.VerificarPermisosAccionesDB (peAbortarAcciones : Boolean = True) : Boolean;
Begin
    //Generar el resultado
    Result := Variables.SoloLectura;
    //Verificar el estado de lectura y generar el mensaje
    if Variables.SoloLectura then
      Begin
          EjecutarMensajeError(cosNoTienePermiso);
          //Abortar si fue solicitado
          if peAbortarAcciones Then Abort;
      End;
End;
{****************************************************************
Procedimiento   : doLlamarInformesDisponibles
Objetivo        : Carga los informes disponibles en el módulo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 16 de 2004
Versión         : pcp4.0.0.13
*****************************************************************}
procedure T_fvent_child.doLlamarInformesDisponibles(Sender: TObject);
var
    var_i   : Integer;
    vMenuItem       :       TTBXItem;
begin
    //Llamar los informes creados
    If qInformes.Active then qInformes.Close;
    QInformes.ParamByName('MODULO').AsString := UpperCase(padr_pane_titulo.Caption);
    AbrirDataSet(QInformes);
    //Borrar los anteriores
    For var_i := coiOpci_Impresion + 1 to BImprimir.Count do
        bImprimir.Delete(coiOpci_Impresion);
    With qInformes do
    Begin
         While not eof do
         Begin
               vMenuItem := TTBXItem.Create(Nil);
               vMenuItem.Caption := FieldByName('nomb_usua_informe').AsString;
               vMenuItem.Tag := FieldByName('cons_usua_informe').AsInteger;
               //RC20.6-MARZO 02 DE 2005
               {DADO QUE A PARTIR DE ESTE RELEASE (20.6) SE INCLUYÓ LA EDICIÓN DE REPORTES
                UTILIZANDO FORTES REPORTE, LOS REPORTES CON FORTES SE GUARDARAN CON EL TAG NEGATIVO
                Y LOS QUICKREPORT DE MANERA NORMAL.
                TODOS LOS REPORTES DISEÑADOS CON FORTES, TIENEN COMO USUARIO $INFORMES$ (COSUSUA_INFORMES)}
                If FieldByName('usuario').asString = cosUsua_Informes then
                    vMenuItem.Tag := vMenuItem.Tag * -1;
               vMenuItem.OnClick := padr_acti_imprimir.OnExecute;
               {$IFDEF PCP4}
                      //RC13--Glyph
                      vMenuItem.Images := _fmdi.ImagenesPCP;
                      vMenuItem.ImageIndex := 10;
               {$ENDIF}
               BImprimir.Add(vMenuItem);
               Next;
         End;
    End;
end;
{****************************************************************
Procedimiento   : BImprimirPopup
Objetivo        : Llenar el combo de opciones de impresión
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 16 de 2004
Versión         : pcp4.0.0.13
*****************************************************************}
procedure T_fvent_child.BImprimirPopup(Sender: TTBCustomItem;
  FromLink: Boolean);
begin
    doLlamarInformesDisponibles(Sender);
end;
{****************************************************************
Procedimiento   : padr_Acti_nuev_reporteExecute
Objetivo        : Crear un nuevo reporte (desde el diseñador)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure T_fvent_child.padr_Acti_nuev_reporteExecute(Sender: TObject);
var
        var_i   : Integer;
begin
  if (padr_Grid.DataSource <> Nil) and (padr_Grid.DataSource.DataSet <> Nil) Then
  Begin
    Application.CreateForm(TfInformesRL, fInformesRL);
    //RC20.21 Asignar los DS del reporte en la ventana
    For var_i := 1 To coiMaxDataSourcesReporteador do
        fInformesRL.fram_edicion.SetDataSourceDisponible(var_i, padr_repo_fortes.GetDataSourceDisponible(var_i), padr_repo_fortes.GetDataSourceDisponibleTexto(var_i)); 
    //Crear un nuevo reporte
    fInformesRL.doCrearNuevoInformeDesdeConsulta(padr_grid.DataSource.DataSet, Self, Nil);
  End;
end;
{****************************************************************
Procedimiento   : padr_Acti_nuev_reporteUpdate
Objetivo        : Actualizar el estado de la acción de nuevo reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure T_fvent_child.padr_Acti_nuev_reporteUpdate(Sender: TObject);
begin
  padr_acti_nuev_reporte.Enabled := (padr_Grid.DataSource <> Nil) and (padr_Grid.DataSource.DataSet <> Nil);
end;
{****************************************************************
Procedimiento   : UbicarPanels
Objetivo        : Reubicar los panels de CAMPOS VISIBLES y
                  OPCIONES DE IMPRESION
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure T_fvent_child.UbicarPanels;
Begin
     //Campos disponibles
     padr_fram_camp_visibles.Align := alClient;
     padr_gradi_camp_visibles.Parent := padr_fram_camp_visibles;
     padr_conf_vista.Parent := padr_fram_camp_visibles;
     shap_xp.Parent := padr_fram_camp_visibles;
     shap_xp.Top := padr_gradi_camp_visibles.Top + 1;
     shap_xp.Pen.Color := clFinGradienteHard;
     //Opciones de impresión
     padr_fram_opci_impresion.Align := alClient;
     padr_pane_grad_1.Parent := padr_fram_opci_impresion;
     padr_pane_29.Parent := padr_fram_opci_impresion;
     padr_shape_23.Parent := padr_fram_opci_impresion;
     padr_shape_23.Top := padr_pane_grad_1.Top + 1;
     padr_shape_23.Pen.Color := clFinGradienteHard;
End;
{****************************************************************
Procedimiento   : padr_boto_ocul_consecutivosClick
Objetivo        : Ocultar todos los campos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure T_fvent_child.padr_boto_ocul_consecutivosClick(Sender: TObject);
Var
        var_i : Integer;
begin
        For var_i := 1 to padr_grid.ColumnCount do
           if (Pos('CONS_', padr_grid.Columns[var_i - 1].FieldName) = 0) Then
              padr_grid.Columns[var_i - 1].Visible := False;
        Sincronizar_Columnas;
end;
{****************************************************************
Procedimiento   : padr_boto_most_consecutivosClick
Objetivo        : Mostrar todos los campos consecutivos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure T_fvent_child.padr_boto_most_consecutivosClick(Sender: TObject);
Var
  var_i : Integer;
begin
        For var_i := 1 to padr_grid.ColumnCount do
           if (Pos('CONS_', padr_grid.Columns[var_i - 1].FieldName) = 0) Then
              padr_grid.Columns[var_i - 1].Visible := True;
        Sincronizar_Columnas;
end;

procedure T_fvent_child.padr_boto_conf_vistaClick(Sender: TObject);
begin
	If padr_pane_conf_vista.Visible Then
    Sincronizar_Columnas;
end;

Initialization
    var_colu_es_imagen := False;

end.




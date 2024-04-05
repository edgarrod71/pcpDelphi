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
        Unit            : un1_referenciasb
        Objetivo        : Ventana maestra de referencias de productos
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 27-May-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit un1_referenciasb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList, DBCtrls,
  AdvPanel, ufra_historialDB, dxExEdtr, dxEdLib, dxDBELib, dxDBTLCl,
  dxGrClms, ufra_dependencias, dxDBCtrl, dxDBGrid, dxTL, dxCntner,
  PCPFrame, ExtCtrls, dfsSplitter, ufra_fotografiaDB, RxLookup,
  PCPLookUpComboEdit, SCLTabs, PictureContainer, Menus, TB2Item,
  TBX, DBTables, Boxes, PCPProceso, dxEditor, StdCtrls, SoCtrls,
  SCLDBLabel, TB2Dock, TB2Toolbar, SCLShape;
type
  Tfn1_referencias1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel17: TSCLDBLabel;
    SCLDBLabel19: TSCLDBLabel;
    edit_codi_referencia: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    pagina: TSCLPageControl;
    page_dato_basicos: TSCLTabSheet;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    SCLDBLabel13: TSCLDBLabel;
    SCLDBLabel14: TSCLDBLabel;
    SCLDBLabel15: TSCLDBLabel;
    SCLDBLabel16: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    PCPLookUpComboEdit3: TPCPLookUpComboEdit;
    PCPLookUpComboEdit4: TPCPLookUpComboEdit;
    PCPLookUpComboEdit5: TPCPLookUpComboEdit;
    PCPLookUpComboEdit6: TPCPLookUpComboEdit;
    PCPLookUpComboEdit7: TPCPLookUpComboEdit;
    PCPLookUpComboEdit8: TPCPLookUpComboEdit;
    PCPLookUpComboEdit9: TPCPLookUpComboEdit;
    PCPLookUpComboEdit10: TPCPLookUpComboEdit;
    PCPLookUpComboEdit11: TPCPLookUpComboEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit3: TdxDBEdit;
    page_historial: TSCLTabSheet;
    SCLDBLabel5: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit5: TdxDBEdit;
    page_asig_colores: TSCLTabSheet;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    page_observaciones: TSCLTabSheet;
    Panel3: TPanel;
    dxDBMemo1: TdxDBMemo;
    quer_temporadas: TQuery;
    data_temporadas: TDataSource;
    quer_lineas: TQuery;
    data_lineas: TDataSource;
    quer_marcas: TQuery;
    data_marcas: TDataSource;
    quer_grupos: TQuery;
    data_grupos: TDataSource;
    quer_estilos: TQuery;
    data_estilos: TDataSource;
    quer_edades: TQuery;
    data_edades: TDataSource;
    quer_sexos: TQuery;
    data_sexos: TDataSource;
    quer_lavados: TQuery;
    data_lavados: TDataSource;
    quer_estampados: TQuery;
    data_estampados: TDataSource;
    quer_bordados: TQuery;
    data_bordados: TDataSource;
    quer_colores: TQuery;
    data_colores: TDataSource;
    tabl_refe_historial: TTable;
    ffra_historialDB1: Tffra_historialDB;
    tabl_refe_colores: TTable;
    data_refe_colores: TDataSource;
    quer_secu_color: TQuery;
    acti_nuev_color: TAction;
    acti_elim_color: TAction;
    acti_edit_color: TAction;
    pop_grid_colores: TTBXPopupMenu;
    pop_grid_colo_asignados: TTBXPopupMenu;
    quer_grup_tallas: TQuery;
    data_grup_Tallas: TDataSource;
    Tabla_VentanaCONS_REFERENCIA: TIntegerField;
    Tabla_VentanaCODI_REFERENCIA: TStringField;
    Tabla_VentanaCONS_REFE_TEMPORADA: TIntegerField;
    Tabla_VentanaMOLDE: TStringField;
    Tabla_VentanaCODI_INTE_REFERENCIA: TStringField;
    Tabla_VentanaNOMB_REFERENCIA: TStringField;
    Tabla_VentanaCODI_BARRAS: TStringField;
    Tabla_VentanaCONS_REFE_MARCA: TIntegerField;
    Tabla_VentanaCONS_REFE_LINEA: TIntegerField;
    Tabla_VentanaCONS_REFE_EDAD: TIntegerField;
    Tabla_VentanaCONS_REFE_ESTILO: TIntegerField;
    Tabla_VentanaCONS_REFE_GRUPO: TIntegerField;
    Tabla_VentanaCONS_REFE_SEXO: TIntegerField;
    Tabla_VentanaCONS_REFE_LAVADO: TIntegerField;
    Tabla_VentanaCONS_REFE_BORDADO: TIntegerField;
    Tabla_VentanaCONS_REFE_ESTAMPADO: TIntegerField;
    Tabla_VentanaCONS_REFE_GRUP_TALLAS: TIntegerField;
    Tabla_VentanaCONS_REFE_ESTADO: TIntegerField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    Tabla_VentanaDESCRIPCION: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    pane_colo_existentes: TPCPFrame;
    grid_colo_existentes: TdxDBGrid;
    grid_colo_existentesCODI_COLOR: TdxDBGridMaskColumn;
    grid_colo_existentesNOMB_COLOR: TdxDBGridMaskColumn;
    tabl_refe_coloresCONS_REFE_COLOR: TIntegerField;
    tabl_refe_coloresCONS_REFERENCIA: TIntegerField;
    tabl_refe_coloresSECU_COLOR: TIntegerField;
    tabl_refe_coloresCONS_COLOR: TIntegerField;
    tabl_refe_coloresFECH_SISTEMA: TDateTimeField;
    tabl_refe_coloresUSUA_SISTEMA: TStringField;
    quer_temporadasCONS_REFE_TEMPORADA: TIntegerField;
    quer_temporadasNOMB_REFE_TEMPORADA: TStringField;
    quer_lineasCONS_REFE_LINEA: TIntegerField;
    quer_lineasNOMB_REFE_LINEA: TStringField;
    quer_marcasCONS_REFE_MARCA: TIntegerField;
    quer_marcasNOMB_REFE_MARCA: TStringField;
    quer_gruposCONS_REFE_GRUPO: TIntegerField;
    quer_gruposNOMB_REFE_GRUPO: TStringField;
    quer_estilosCONS_REFE_ESTILO: TIntegerField;
    quer_estilosNOMB_REFE_ESTILO: TStringField;
    quer_edadesCONS_REFE_EDAD: TIntegerField;
    quer_edadesNOMB_REFE_EDAD: TStringField;
    quer_sexosCONS_SEXO: TIntegerField;
    quer_sexosNOMB_SEXO: TStringField;
    quer_lavadosCONS_REFE_LAVADO: TIntegerField;
    quer_lavadosNOMB_REFE_LAVADO: TStringField;
    quer_estampadosCONS_REFE_ESTAMPADO: TIntegerField;
    quer_estampadosNOMB_REFE_ESTAMPADO: TStringField;
    quer_bordadosCONS_REFE_BORDADO: TIntegerField;
    quer_bordadosNOMB_REFE_BORDADO: TStringField;
    quer_coloresCONS_COLOR: TIntegerField;
    quer_coloresNOMB_COLOR: TStringField;
    quer_grup_tallasCONS_GRUP_TALLAS: TIntegerField;
    quer_grup_tallasNOMB_GRUP_TALLAS: TStringField;
    quer_coloresCODI_COLOR: TStringField;
    tabl_refe_colorescodi_color: TStringField;
    tabl_refe_coloresNOMB_COLOR: TStringField;
    tabl_refe_coloresNUME_COLOR: TStringField;
    quer_coloresMUES_COLOR: TIntegerField;
    grid_colo_existentesMUES_COLOR: TdxDBGridColumn;
    tabl_refe_coloresMUES_COLOR: TIntegerField;
    page_asig_variaciones: TSCLTabSheet;
    quer_refe_tipo_variaciones: TQuery;
    quer_refe_tipo_variacionesCONS_REFE_TIPO_VARIACION: TIntegerField;
    quer_refe_tipo_variacionesCODI_REFE_TIPO_VARIACION: TStringField;
    quer_refe_tipo_variacionesNOMB_REFE_TIPO_VARIACION: TStringField;
    data_refe_tipo_variaciones: TDataSource;
    dfsSplitter1: TdfsSplitter;
    PCPFrame2: TPCPFrame;
    dfsSplitter2: TdfsSplitter;
    tabl_refe_variaciones: TTable;
    tabl_refe_variacionesCONS_REFE_VARIACION: TIntegerField;
    tabl_refe_variacionesCONS_REFERENCIA: TIntegerField;
    tabl_refe_variacionesCONS_REFE_TIPO_VARIACION: TIntegerField;
    tabl_refe_variacionesOBSERVACIONES: TStringField;
    tabl_refe_variacionesFECH_SISTEMA: TDateTimeField;
    tabl_refe_variacionesUSUA_SISTEMA: TStringField;
    tabl_refe_variacionesNOMB_TIPO_VARIACION: TStringField;
    tabl_refe_variacionesCODI_REFE_TIPO_VARIACION: TStringField;
    data_refe_variaciones: TDataSource;
    pop_vari_existentes: TTBXPopupMenu;
    TBXItem4: TTBXItem;
    grid_vari_existentes: TdxDBGrid;
    grid_vari_existentesCONS_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    grid_vari_existentesCODI_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    grid_vari_existentesNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    acti_ventana: TActionList;
    acti_vari_adicionar: TAction;
    acti_vari_ir: TAction;
    acti_vari_eliminar: TAction;
    TBXItem5: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem9: TTBXItem;
    pop_grid_vari_asignadas: TTBXPopupMenu;
    TBXItem6: TTBXItem;
    acti_colo_asignar: TAction;
    acti_vari_actualizar: TAction;
    TBXItem10: TTBXItem;
    TBXItem11: TTBXItem;
    TBXDock2: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    TBXItem12: TTBXItem;
    TBXItem13: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem14: TTBXItem;
    TBXItem15: TTBXItem;
    acti_colo_eliminar: TAction;
    acti_colo_ir: TAction;
    acti_colo_actualizar: TAction;
    TBXItem16: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXItem18: TTBXItem;
    TBXItem19: TTBXItem;
    acti_colo_editar: TAction;
    TBXItem17: TTBXItem;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem20: TTBXItem;
    TBXItem21: TTBXItem;
    quer_colo_eliminar: TQuery;
    quer_vari_eliminar: TQuery;
    Bevel1: TBevel;
    quer_refe_estados: TQuery;
    data_refe_estados: TDataSource;
    Panel2: TPanel;
    pane_colo_asignados: TPCPFrame;
    grid_colo_asignados: TdxDBGrid;
    grid_colo_asignadosMUES_COLOR: TdxDBGridColumn;
    grid_colo_asignadosSECU_COLOR: TdxDBGridMaskColumn;
    grid_colo_asignadosCODI_COLOR: TdxDBGridMaskColumn;
    grid_colo_asignadosNOMB_COLOR: TdxDBGridColumn;
    grid_colo_asignadosNUME_COLOR: TdxDBGridColumn;
    grid_colo_asignadosColumn6: TdxDBGridColumn;
    grid_colo_asignadosColumn7: TdxDBGridColumn;
    fram_depe_colores: Tffra_dependencias;
    Panel4: TPanel;
    PCPFrame1: TPCPFrame;
    grid_vari_asignadas: TdxDBGrid;
    grid_vari_asignadasCONS_REFE_VARIACION: TdxDBGridMaskColumn;
    grid_vari_asignadasCONS_REFERENCIA: TdxDBGridMaskColumn;
    grid_vari_asignadasCONS_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    grid_vari_asignadasCODI_REFE_TIPO_VARIACION: TdxDBGridLookupColumn;
    grid_vari_asignadasNOMB_TIPO_VARIACION: TdxDBGridLookupColumn;
    grid_vari_asignadasOBSERVACIONES: TdxDBGridMaskColumn;
    grid_vari_asignadasFECH_SISTEMA: TdxDBGridDateColumn;
    grid_vari_asignadasUSUA_SISTEMA: TdxDBGridMaskColumn;
    dfsSplitter4: TdfsSplitter;
    fram_depe_variaciones: Tffra_dependencias;
    dfsSplitter3: TdfsSplitter;
    SCLDBLabel1: TSCLDBLabel;
    PCPLookUpComboEdit12: TPCPLookUpComboEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    Tabla_VentanaCON_ENTREPIERNAS: TIntegerField;
    quer_coloresES_ENTREPIERNA: TIntegerField;
    quer_grup_tallasTALLAS: TStringField;
    Tabla_VentanaES_PROTOTIPO: TIntegerField;
    padr_acti_subir: TAction;
    padr_acti_bajar: TAction;
    padr_boto_Bajar: TTBXItem;
    padr_boto_subir: TTBXItem;
    padr_sepa_29: TTBXSeparatorItem;
    quer_subir: TQuery;
    quer_bajar: TQuery;
    pane_info_Estado: TAdvPanel;
    clw: TDBText;
    grid_colo_asignadosCONS_REFE_COLOR: TdxDBGridColumn;
    SCLShape1: TSCLShape;
    Tabla_VentanaIMAG_SMALL: TBlobField;
    acti_refe_imagenes: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure padr_acti_guardarExecute(Sender: TObject);
    procedure tabl_refe_historialAfterInsert(DataSet: TDataSet);
    procedure paginaChange(Sender: TObject);
    procedure comb_temporadas_coloresChange(Sender: TObject);
    procedure quer_temporadas_coloresAfterOpen(DataSet: TDataSet);
    procedure acti_nuev_colorExecute(Sender: TObject);
    procedure quer_temporadas_coloresCalcFields(DataSet: TDataSet);
    procedure tabl_refe_coloresAfterInsert(DataSet: TDataSet);
    procedure acti_elim_colorExecute(Sender: TObject);
    procedure acti_edit_colorExecute(Sender: TObject);
    procedure data_refe_coloresStateChange(Sender: TObject);
    procedure boto_actu_coloresClick(Sender: TObject);
    procedure boto_actu_colores_refClick(Sender: TObject);
    procedure menu_colo_ir_codificacionClick(Sender: TObject);
    procedure menu_colo_asignarClick(Sender: TObject);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure grid_colo_asignadosMUES_COLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure grid_colo_existentesMUES_COLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure tabl_refe_historialBeforePost(DataSet: TDataSet);
    procedure tabl_refe_coloresBeforePost(DataSet: TDataSet);
    procedure tabl_refe_variacionesBeforePost(DataSet: TDataSet);
    procedure asignarVariacion(Sender: TObject);
    procedure acti_ventanaUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure acti_vari_eliminarExecute(Sender: TObject);
    procedure acti_vari_actualizarExecute(Sender: TObject);
    procedure acti_vari_irExecute(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure pane_info_EstadoAnchorClick(Sender: TObject; Anchor: String);
    procedure doValidarColor(DataSet: TDataSet);
    procedure doValidarVariacion(DataSet: TDataSet);
    procedure doEntrepiernas(Sender: TObject);
    procedure Tabla_VentanaCON_ENTREPIERNASChange(Sender: TField);
    procedure padr_acti_subirExecute(Sender: TObject);
    procedure padr_acti_bajarExecute(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure acti_refe_imagenesExecute(Sender: TObject);
  private
    { Private declarations }
    vInicializado       : Boolean;
    var_text_entrepierna       : String;
  public
    { Public declarations }
  end;

var
  fn1_referencias1: Tfn1_referencias1;


ResourceString
cosAsignarColor         = 'Asignar %s';
cosEditarColorAsignado  = 'Editar %s';
cosEliminarColorAsignado        = 'Eliminar %s';
cosSeleccioneColor      = 'Seleccione un color de la lista';
cosSeleccioneEntrepierna= 'Seleccione una entrepierna de la lista';
cosDigiteNumeroColor    = 'Digite el número de color (tono específico)';
cosEdicionColorCancelada= 'El proceso de asignación de %s ha sido cancelado';
cosVariacionYaAsignada  = 'La variación (%s) ya está asignada a la referencia.';
cosAdverntenciaModificarColorReferencia = 'El color que está intentando modificar tiene dependencias.'+
                #13+'Desea continuar?';
cosVariaciones          = 'la variación de la referencia';
cosAdverntenciaModificarVariacionReferencia = 'La variación que está intentando modificar tiene dependencias.'+
                #13+'Desea continuar?';

implementation
Uses _func_varias, _cons_pcp, _func_pcp, un1_refe_colores, un1_refe_colores1,
  _MDI, un1_refe_tipo_variaciones, un1_refe_tipo_variaciones1,
  un1_refe_camb_estado, un1_refe_estados, un1_refe_estados1,
  un1_refe_entrepiernas, un1_refe_entrepiernas1, _cons_colores,
  _func_graficas, _Traductor;
{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar variables
  vInicializado := False;
  //Inicializar el texto de colores/entrepiernas
  var_text_entrepierna := cosColores;
  //Ubicar el page control en la primera página
  Pagina.ActivePageIndex := 0;
  //Actualizar los controles de la ventana
  ColorGrid(grid_colo_existentes);
  ColorGrid(grid_colo_asignados);
  ColorGrid(ffra_historialDB1.fram_grid_historial);
  Pane_info_estado.Color := clInicioGradiente;
  Pane_info_estado.ColorTo := clFinGradiente;
  Pane_info_estado.BorderColor := clLineaGradiente;
  Pane_info_estado.Font.Color := clTextoGradiente;
  //Abrir las consultas
  page_dato_basicos.TabVisible :=
        AbrirDataSet(quer_temporadas) And AbrirDataSet(quer_lineas)     
        And AbrirDataSet(quer_marcas) and AbrirDataSet(quer_grupos)  
        and AbrirDataSet(quer_estilos) and AbrirDataSet(quer_edades)  
        and AbrirDataSet(quer_sexos) and AbrirDataSet(quer_lavados)  
        and AbrirDataSet(quer_estampados) and AbrirDataSet(quer_bordados)  
        and AbrirDataSet(quer_grup_tallas);
  page_asig_colores.TabVisible :=  AbrirDataSet(quer_colores) and AbrirDataSet(tabl_Refe_colores) and
                AbrirDataSet(fram_depe_colores.fram_quer_dependencias);
  page_historial.TabVisible := AbrirDataSet(tabl_refe_historial) ;
  page_asig_variaciones.TabVisible := AbrirDataSet(quer_refe_tipo_variaciones) and
                        AbrirDataSet(tabl_refe_variaciones) and
                        AbrirDataSet(fram_depe_variaciones.fram_quer_dependencias);
  AbrirDataSet(quer_refe_estados);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana cuando se muestren
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.FormShow(Sender: TObject);
begin
  inherited;
  if not vInicializado then
      Begin
      //Mostrar/Ocultar los tabs del pagecontrol
      Pagina.HideTabs := (tabla_ventana.State = dsInsert);
      //Solamente dejar editar el codigo de la referencia al insertarla
//      edit_codi_referencia.ReadOnly := Not(tabla_ventana.State = dsInsert);
      //Cambiar el valor del inicializador para que no se ejecute de nuevo
      doEntrepiernas(Sender);
      vInicializado := True;
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_guardarExecute
Objetivo        : Guardar la referencia cuando se ha creado y preguntar
                  si se desea ingresar los demás datos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.padr_acti_guardarExecute(Sender: TObject);
begin
        Inherited;
end;
{****************************************************************
Procedimiento   : tabl_refe_historialAfterInsert
Objetivo        : Actualizar el hijo con los datos del padre
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.tabl_refe_historialAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : paginaChange
Objetivo        : Actualizar los controles de la ventana cuando
                  cambie el ActivePage del control principal
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.paginaChange(Sender: TObject);
begin
  inherited;
  //Acciones de Historial
  ffra_historialDB1.fram_acti_nuevo.Enabled := Pagina.ActivePage = page_historial;
  ffra_historialDB1.fram_acti_nuevo.Visible := Pagina.ActivePage = page_historial;
  //Repintar
  Invalidate;

end;
{****************************************************************
Procedimiento   : comb_temporadas_coloresChange
Objetivo        : Actualizar la temporada para el color cuando está
                  vacío el combo de selección
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.comb_temporadas_coloresChange(Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : quer_temporadas_coloresAfterOpen
Objetivo        : Posicionar la temporada de la consulta
                  en el combo de temporadas de la asignación de
                  colores
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.quer_temporadas_coloresAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  //Invocar el procedimiento de actualizacion asociado al combo
  comb_temporadas_coloresChange(Self);
end;
{****************************************************************
Procedimiento   : acti_nuev_colorExecute
Objetivo        : Asginar un nuevo color a la referencia
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.acti_nuev_colorExecute(Sender: TObject);
Var
        varcons_color   : integer;
        varNume_color   : String;
begin
  inherited;
  With tabl_Refe_colores do
  Begin
     Try
        //Insertar el registro
        Insert;
        //Si envia el Grid de colores, tomar el codigo seleccionado
        If (grid_colo_existentes.Focused) then
            varcons_color := quer_colores.FieldByName('cons_color').asInteger
        Else
        Begin
           if tabla_ventana.FieldByName('con_entrepiernas').asInteger = -1 Then
               //Solicitar el color
                varcons_color := pcpInputForm(Format(cosEditarColorAsignado, [var_text_entrepierna]), cosSeleccioneColor,
                         'Select cons_color, nomb_color from GLO_COLORES where es_entrepierna = -1 order by nomb_color',
                         'cons_color', 'nomb_color', 'data_base_pcp', quer_colores.FieldByName('cons_color').AsString)
           Else
               //Solicitar la entrepierna
                varcons_color := pcpInputForm(Format(cosEditarColorAsignado, [var_text_entrepierna]), cosSeleccioneEntrepierna,
                         'Select cons_color, nomb_color from GLO_COLORES where es_entrepierna = 1 order by nomb_color',
                         'cons_color', 'nomb_color', 'data_base_pcp', quer_colores.FieldByName('cons_color').AsString);
            if varcons_color=0 then Exit;
            quer_colores.Locate('cons_color', varcons_color,[]);
        End;
        If tabla_ventana.FieldByName('con_entrepiernas').asInteger = -1 Then
            //Preguntar el número de color
            varNume_color := pcpInputForm(Format(cosAsignarColor,[var_text_entrepierna]), cosDigiteNumeroColor, tvString, '')
        Else
             varNume_color := '';   
        //Asignar los valores
        FieldbyName('cons_color').Value := varCons_color;
        FieldbyName('nume_color').Value := varNume_Color;
        //Guardar
        Post;
     Except
       On e:Exception do
       Begin
           //Cancelar
           Cancel;
           EjecutarMensajeError(e.Message);
       End;
     End;
  End;

end;
{****************************************************************
Procedimiento   : quer_temporadas_coloresCalcFields
Objetivo        : Calcular los campos requeridos de la consulta
                  de temporadas para la asignación de colores
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.quer_temporadas_coloresCalcFields(
  DataSet: TDataSet);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : tabl_refe_coloresAfterInsert
Objetivo        : Asignar los valores de la referencia activa
                  y la temporada seleccionada al nuevo color asignado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.tabl_refe_coloresAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Secuencia del color
  With quer_secu_color do
  Begin
      Close;
      Open;
      tabl_Refe_Colores.FieldByName('secu_color').Value := FieldByName('secuencia').AsInteger + 1;
      Close;
  End;
end;
{****************************************************************
Procedimiento   : acti_elim_colorExecute
Objetivo        : Eliminar el color asignado a la referencia
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.acti_elim_colorExecute(Sender: TObject);
Var
        var_auxi_integer        : Integer;
begin
  inherited;
  //Preguntarle al usuario
  If EjecutarMensaje(cosDeseaEliminar,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  //Eliminarlo
  Begin
    Try
       //Recorrer la tabla 
       For var_auxi_integer := 1 To tabl_Refe_colores.RecordCount do
       Begin
           //Consultar si está seleccionado
           ProgresoBarraEstado(cosTrabajando, var_auxi_integer, tabl_Refe_colores.RecordCount);
           If grid_colo_asignados.Items[var_auxi_integer-1].Selected Then
                //Parametros del procedimiento
                With quer_colo_eliminar do
                Begin
                     Close;
                     ParamByName('cons_referencia').Value := tabla_ventana.FieldByName('cons_referencia').AsInteger;
                     ParamByName('secu_color').Value := 
                        grid_colo_asignados.Items[var_auxi_integer-1].Values[grid_colo_asignados.FindColumnByFieldName('secu_color').Index];
                     ExecSQL;
                End;
       End;
    Finally
      ProgresoBarraEstado;  
      RefreshDataSet(tabl_refe_colores);
    End;
  End;
end;
{****************************************************************
Procedimiento   : acti_edit_colorExecute
Objetivo        : Editar el color seleccionado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.acti_edit_colorExecute(Sender: TObject);
Var
        varcons_color : Integer;
        varnume_color : String;
begin
  inherited;
  Try
      With tabl_refe_colores do
      Begin
          //Iniciar la edicion
          Edit;
          //Obtener el nuevo color
          if tabla_ventana.FieldByName('con_entrepiernas').AsInteger = 1 Then
                    varcons_color := pcpInputForm(Format(cosEditarColorAsignado ,[var_text_entrepierna]), cosSeleccioneEntrepierna,
                   'Select cons_color, nomb_color from GLO_COLORES order by nomb_color',
                   'cons_color', 'nomb_color', 'data_base_pcp', tabl_refe_colores.FieldByName('cons_color').AsString)
          Else
                    varcons_color := pcpInputForm(Format(cosEditarColorAsignado ,[var_text_entrepierna]), cosSeleccioneColor,
                   'Select cons_color, nomb_color from GLO_COLORES order by nomb_color',
                   'cons_color', 'nomb_color', 'data_base_pcp', tabl_refe_colores.FieldByName('cons_color').AsString);
          //Obtener el número del color (Si no es entrepierna)
          if tabla_ventana.FieldByName('con_entrepiernas').AsInteger = 1 Then
              varnume_color := ''
          Else
              varnume_color := pcpInputForm(Format(cosEditarColorAsignado ,[var_text_entrepierna]), cosDigiteNumeroColor,
                      tvString, tabl_refe_colores.FieldByName('nume_color').AsString);
          //Asignarlo
          tabl_refe_colores.FieldByName('cons_color').Value := varcons_color;
          tabl_refe_colores.FieldByName('nume_Color').Value := varnume_color;
          //Guardar
          Post;
      End;
  Except
       On e:Exception do
       Begin
           //Cancelar
           tabl_Refe_colores.Cancel;
           EjecutarMensajeError(e.Message);
       End;
  End;
end;
{****************************************************************
Procedimiento   : data_refe_coloresStateChange
Objetivo        : Actualizar los controles de la ventana
                  cuando cambie el estado de la tabla de
                  asignación de colores
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.data_refe_coloresStateChange(Sender: TObject);
begin
  inherited;
  //Accion de edicion del color
  acti_edit_color.Enabled := (tabl_refe_colores.Active) and (tabl_refe_colores.RecordCount > 0);
end;
{****************************************************************
Procedimiento   : boto_actu_coloresClick
Objetivo        : Actualizar la vista de los colores activos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.boto_actu_coloresClick(Sender: TObject);
begin
  inherited;
  RefreshQuery(quer_colores);
  //Actualizar los colores asignados
  boto_actu_colores_refClick(Sender);
end;
{****************************************************************
Procedimiento   : boto_actu_colores_refClick
Objetivo        : Actualizar la tabla de colores asignados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.boto_actu_colores_refClick(Sender: TObject);
begin
  inherited;
  tabl_refe_colores.Refresh;
end;
{****************************************************************
Procedimiento   : menu_colo_ir_codificacionClick
Objetivo        : Abrir el módulo de codificación de colores
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 04 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.menu_colo_ir_codificacionClick(Sender: TObject);
begin
  inherited;
  if tabla_ventana.FieldByName('con_entrepiernas').AsInteger = 1 Then
      //Abrir el módulo de codificación de entrepiernas
      AbrirModulo(Tfn1_refe_entrepiernas, fsMDIChild, Tfn1_refe_entrepiernas1)
  Else
      //Abrir el modulo de codificacion de colores
      AbrirModulo(tfn1_refe_colores, fsMDIChild, Tfn1_refe_colores1);
end;
{****************************************************************
Procedimiento   : menu_colo_asignarClick
Objetivo        : Asignar al producto el color seleccionado
                  en el Grid de colores existentes pero desde
                  el menú contextual pop_grid_colores
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 04 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.menu_colo_asignarClick(Sender: TObject);
begin
  inherited;
  //Ejecutar la accion Asignar nuevo Color
  acti_nuev_colorExecute(grid_colo_existentes);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Inicialización del registro (maestro)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.Tabla_VentanaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  With tabla_ventana do
  Begin
    //Estado inicial No asignado
    FieldByName('cons_refe_estado').Value := 0;
    //Colores
    FieldByName('con_entrepiernas').Value := -1;
  End;
end;
{****************************************************************
Procedimiento   : grid_colo_asignadosMUES_COLORCustomDrawCell
Objetivo        : Pintar la primera columna del grid de colores
                  asignados con el color de la muestra
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.grid_colo_asignadosMUES_COLORCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  inherited;
  //Si está agrupado, salir
  if ANode.HasChildren then
    Exit;
  //Color de la columna del color
  begin                                 
      Value := ANode.Values[grid_colo_asignados.ColumnByFieldName('mues_color').Index];
      if not VarIsNull(Value) then
      begin
        if Value = 0 then
          aColor := clWhite
        else
          aColor := Value;
      end;
  End;
  //Ocultar el texto
  aText := '';
end;
{****************************************************************
Procedimiento   : grid_colo_existentesMUES_COLORCustomDrawCell
Objetivo        : Pintar la primera columna del grid de colores existentes
                  con el color de muestra
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.grid_colo_existentesMUES_COLORCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  inherited;
  //Si está agrupado, salir
  if ANode.HasChildren then
    Exit;
  //Color de la columna del color
  begin                                 
      Value := ANode.Values[grid_colo_existentes.ColumnByFieldName('mues_color').Index];
      if not VarIsNull(Value) then
      begin
        if Value = 0 then
          aColor := clWhite
        else
          aColor := Value;
      end;
  End;
  //Ocultar el texto
  aText := '';

end;
{****************************************************************
Procedimiento   : tabl_refe_historialBeforePost
Objetivo        : Generar el consecutivo de la anotación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.tabl_refe_historialBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  GenerarSecuencia(tabl_refe_historial);
end;
{****************************************************************
Procedimiento   : tabl_refe_coloresBeforePost
Objetivo        : Generar la secuencia del color asignado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.tabl_refe_coloresBeforePost(DataSet: TDataSet);
begin
  inherited;
  GenerarSecuencia(tabl_refe_colores);

end;
{****************************************************************
Procedimiento   : tabl_refe_variacionesBeforePost
Objetivo        : Generar la secuencia de la tabla de variaciones
                  por referencia
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.tabl_refe_variacionesBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  GenerarSecuencia(tabl_refe_variaciones);
end;
{****************************************************************
Procedimiento   : asignarVariacion
Objetivo        : Asignar una nueva variación a la referencia
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.asignarVariacion(Sender: TObject);
begin
  inherited;
  //Salir si no hay variaciones
  if quer_refe_tipo_variaciones.RecordCount=0 Then Exit;
  //Salir si ya existe
  if tabl_refe_variaciones.Locate('cons_refe_tipo_variacion',
        quer_refe_tipo_variaciones.FieldByName('cons_refe_tipo_variacion').AsString,
        []) Then 
        Begin
                EjecutarMensaje(Format(cosVariacionYaAsignada, [quer_refe_tipo_variaciones.FieldByName('nomb_refe_tipo_variacion').AsString]), 
                        mtConfirmation, [mbok], 0);
                Exit;
        End;
  //Insertar la variacion
  With tabl_refe_variaciones do
  Begin
       Insert;
       FieldByName('cons_refe_tipo_variacion').Value := 
          quer_refe_tipo_variaciones.FieldByName('cons_refe_tipo_variacion').AsString;
       Post;
  End;
end;
{****************************************************************
Procedimiento   : acti_ventanaUpdate
Objetivo        : Actualizar el estado de las acciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 1 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.acti_ventanaUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  acti_vari_adicionar.Enabled := (quer_refe_tipo_variaciones.Active) and
                (quer_refe_tipo_variaciones.RecordCount>0);
  acti_vari_eliminar.Enabled := (tabl_refe_variaciones.Active) and
                (tabl_refe_variaciones.RecordCount>0);
  acti_colo_asignar.Enabled := (quer_colores.Active) and (quer_colores.RecordCount>0);
  acti_colo_eliminar.Enabled := (tabl_refe_colores.Active) and (tabl_refe_Colores.RecordCount>0);
  acti_colo_editar.Enabled := (tabl_refe_colores.Active) and (tabl_refe_Colores.RecordCount>0);
  padr_acti_subir.Enabled := (tabl_refe_colores.Active) and (tabl_refe_Colores.RecordCount>1) and
        not(tabl_refe_colores.BOF);
  padr_acti_bajar.Enabled := (tabl_refe_colores.Active) and (tabl_refe_Colores.RecordCount>1) and
        not(tabl_refe_colores.EOF);
end;
{****************************************************************
Procedimiento   : acti_vari_eliminarExecute
Objetivo        : Eliminar la variación asignada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.acti_vari_eliminarExecute(Sender: TObject);
Var
        var_auxi_integer        : Integer;
begin
  inherited;
  //Preguntarle al usuario
  If EjecutarMensaje(cosDeseaEliminar,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  //Eliminarlo
  Begin
    Try
       //Recorrer la tabla 
       For var_auxi_integer := 1 To tabl_refe_variaciones.RecordCount do
       Begin
           //Consultar si está seleccionado
           ProgresoBarraEstado(cosTrabajando, var_auxi_integer, tabl_refe_variaciones.RecordCount);
           If grid_vari_asignadas.Items[var_auxi_integer-1].Selected Then
                //Parametros del procedimiento
                With quer_vari_eliminar do
                Begin
                     Close;
                     ParamByName('cons_refe_variacion').Value := 
                        grid_vari_asignadas.Items[var_auxi_integer-1].Values[grid_vari_asignadas.FindColumnByFieldName('cons_refe_variacion').Index];
                     ExecSQL;
                End;
       End;
    Finally
      ProgresoBarraEstado;  
      RefreshDataSet(tabl_refe_variaciones);
    End;
  End;
end;
{****************************************************************
Procedimiento   : acti_vari_actualizarExecute
Objetivo        : Actualizar las consultas de variaciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : JUnio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.acti_vari_actualizarExecute(Sender: TObject);
begin
  inherited;
  RefreshQuery(quer_refe_tipo_variaciones);
  RefreshDataSet(tabl_Refe_variaciones);
end;
{****************************************************************
Procedimiento   : acti_vari_irExecute
Objetivo        : Abrir el módulo de creación de variaciones
                  de referencias
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.acti_vari_irExecute(Sender: TObject);
begin
  inherited;
  AbrirModulo(Tfn1_refe_tipo_variaciones, fsMDIChild, Tfn1_refe_tipo_variaciones1);
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles de la ventana
                  cuando cambie el estado de la tabla maestra
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
  //Ocultar/Mostrar los botones de la página
  Pagina.HideTabs := (tabla_ventana.State = dsInsert);
  pane_info_estado.Visible := (tabla_Ventana.Active) and Not(tabla_ventana.State = dsInsert);
End;
{****************************************************************
Procedimiento   : pane_info_EstadoAnchorClick
Objetivo        : Ejecutar el click sobre el panel de información
                  del estado de la referencia
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.pane_info_EstadoAnchorClick(Sender: TObject;
  Anchor: String);
begin
  inherited;
  If UpperCase(Anchor) ='INFORMACION' Then
  Begin
        AbrirModulo(Tfn1_refe_estados, fsMDIChild, Tfn1_refe_estados1);
  End
  Else
  If UpperCase(Anchor) ='CAMBIAR' Then
  Begin
      //Verificar que tenga el permiso
      if Not (_fmdi.acti_n1_refe_camb_estado.Enabled) then
      Begin
          EjecutarMensajeError(cosLosDosSonCorrectos);
          Exit;
      End;
      //Abrir la ventana
      If Not ExisteVentana(tfn1_refe_camb_estado) Then
        Application.CreateForm(Tfn1_refe_camb_estado, fn1_refe_camb_estado);
      fn1_refe_camb_estado.DoLocateRecord(Tabla_Ventana.FieldByName('cons_referencia').AsInteger);
  End
end;
{****************************************************************
Procedimiento   : tabl_refe_coloresBeforeEdit
Objetivo        : Advertir al usuario el peligro de modificar
                  colores con dependencias
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.doValidarColor(DataSet: TDataSet);
begin
  inherited;
  if (fram_depe_colores.fram_quer_dependencias.active) and (fram_depe_colores.fram_quer_dependencias.RecordCount>1) Then
  Begin
        if Confirmar(cosAdverntenciaModificarColorReferencia)=mrNo then
                Abort;
  End;
end;
{****************************************************************
Procedimiento   : doValidarVariacion
Objetivo        : Advertir al usuario el peligro de modificar
                  una variación con dependencias
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.doValidarVariacion(
  DataSet: TDataSet);
begin
  inherited;
  if (fram_depe_variaciones.fram_quer_dependencias.active) and (fram_depe_variaciones.fram_quer_dependencias.RecordCount>1) Then
  Begin
        if Confirmar(cosAdverntenciaModificarVariacionReferencia)=mrNo then
                Abort;
  End;
end;
{****************************************************************
Procedimiento   : doEntrepiernas
Objetivo        : Cambia los objetos de la ventana cuando
                  se selecciona trabajar con entrepiernas
                  la referencia
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 22 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.doEntrepiernas(Sender: TObject);
var
        con_entrepiernas  : Boolean;
begin
  inherited;
  //Identificar si usa entrepiernas/colores
  con_entrepiernas := tabla_ventana.FieldByName('con_entrepiernas').asInteger = 1;
  //Filtros de las tablas
  quer_colores.filter := 'es_entrepierna='+tabla_ventana.FieldByName('con_entrepiernas').asString;
  RefreshDataSet(quer_Colores);
  if con_entrepiernas then
  Begin
        var_text_entrepierna := cosEntrepiernas;
        fram_depe_colores.Caption := Format(cosDependen,[cosLas+var_text_entrepierna + cosAsignadas]);
        pane_colo_asignados.Caption := var_text_entrepierna + cosAsignadas;
        //Columnas de  existentes
        grid_colo_existentesNOMB_COLOR.Caption := cosEntrepierna;
        //Columna de asignados
        grid_colo_asignadosNOMB_COLOR.Caption := cosEntrepierna;
        //Acciones
        acti_colo_asignar.caption := Format(cosAsignarColor, [cosEntrepierna]);
        acti_colo_eliminar.caption := Format(cosEliminarColorAsignado, [cosEntrepierna]);
        acti_colo_editar.caption := Format(cosEditarColorAsignado, [cosEntrepierna]);
        //Imagenes
        page_asig_colores.ImageIndex := 25;
  End
  Else
  Begin
        var_text_entrepierna := cosColores;
        fram_depe_colores.Caption := Format(cosDependen,[cosLos+var_text_entrepierna + cosAsignados]);
        pane_colo_asignados.Caption :=  var_text_entrepierna + cosAsignados;
        //Columnas de  existentes
        grid_colo_existentesNOMB_COLOR.Caption := cosColor;
        //Columna de asignados
        grid_colo_asignadosNOMB_COLOR.Caption := cosColor;
        //Acciones
        acti_colo_asignar.caption := Format(cosAsignarColor, [cosColor]);
        acti_colo_eliminar.caption := Format(cosEliminarColorAsignado, [cosColor]);
        acti_colo_editar.caption := Format(cosEditarColorAsignado, [cosColor]);
        //Imagenes
        page_asig_colores.ImageIndex := 22;
  End;
  //Mostrar/Ocultar columnas
  grid_colo_existentesMUES_COLOR.Visible := not (con_entrepiernas);
  grid_colo_asignadosMUES_COLOR.Visible := not (con_entrepiernas);
  grid_colo_asignadosNUME_COLOR.Visible := not (con_entrepiernas);
  //Cambiar los textos
  page_asig_colores.Caption := var_text_entrepierna;
  pane_colo_existentes.Caption := var_text_entrepierna + cosExistentes ;
  //Frames de depenedencia
  fram_depe_variaciones.Caption := Format(cosDependen,[cosVariaciones]);
  //Acciones
  acti_colo_actualizar.Caption := Format(cosActualizar, [var_text_entrepierna]);
  acti_colo_ir.Caption := Format(cosIra, [var_text_entrepierna]);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaCON_ENTREPIERNASChange
Objetivo        : Invoca el procedimiento que
                  cambia los objetos de la ventana cuando
                  se selecciona trabajar con entrepiernas
                  la referencia
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 22 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_referencias1.Tabla_VentanaCON_ENTREPIERNASChange(
  Sender: TField);
begin
  inherited;
  doEntrepiernas(Self);
end;

procedure Tfn1_referencias1.padr_acti_subirExecute(Sender: TObject);
var
    var_cons_refe_Color : Integer;
begin
  inherited;
  Try
        StartDBTransaction;
        var_cons_refe_color := tabl_refe_colores.FieldByName('cons_Refe_color').asInteger;
        quer_subir.ExecSQL;
        RefreshDataSet(tabl_refe_colores);
        tabl_refe_colores.Locate('cons_refe_color', var_cons_Refe_color, []);
        CommitDBWork;
  Except
      On e:Exception do
        Begin
            RollBackDBWork;
            EjecutarMensajeError(e.Message);
        End;
  End;
end;

procedure Tfn1_referencias1.padr_acti_bajarExecute(Sender: TObject);
var
    var_cons_refe_Color : Integer;
begin
  inherited;
  Try
        StartDBTransaction;
        var_cons_refe_color := tabl_refe_colores.FieldByName('cons_Refe_color').asInteger;
        quer_bajar.ExecSQL;
        RefreshDataSet(tabl_refe_colores);
        tabl_refe_colores.Locate('cons_refe_color', var_cons_Refe_color, []);
        CommitDBWork;
  Except
      On e:Exception do
        Begin
            RollBackDBWork;
            EjecutarMensajeError(e.Message);
        End;
  End;
end;

procedure Tfn1_referencias1.Tabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
  //Crear la imágen SMALL JPEG y crear el
  EDBImageToBlobField(ffra_fotografiaDB1.fram_fotografia, Tabla_VentanaIMAG_SMALL, coiTamanoVistasPrevias, coiTamanoVistasPrevias);
end;
{****************************************************************
Procedimiento   : acti_refe_imagenesExecute
Objetivo        : Actualizar la vista previa de las imágenes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_referencias1.acti_refe_imagenesExecute(Sender: TObject);
var
        var_i   : Integer;
begin
  inherited;
  tabla_Ventana.First;
  var_i := 1;
  While not tabla_ventana.eof do
  Begin
      ProgresoBarraEstado(cosTrabajando, var_i, tabla_Ventana.RecordCount);
      tabla_Ventana.edit;
      tabla_ventana.FieldByName('AJUS_IMAGEN').Value := 1;
      tabla_Ventana.post;
      tabla_Ventana.next;
      inc(var_i);
  End;
end;

end.

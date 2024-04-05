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
        Unit            : ufra_edit_reportes
        Objetivo        : Frame para la edición de reportes
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 02 de 2005
        Versión         : pcp4.0.20.0
*******************************************************************}
{
NOTA:
RC20.1--------------------------------------------------------------------
PARA UTILIZAR ESTE FRAME, DEBE INICIALIZARLO EN EL ONCREATE DEL PADRE
ASIGNADO UN VALOR A LAS SIGUIENTES VARIABLES

  fram_reporte.CampoFormato := Tabla_VentanaFORMATO;  --> TIPO BLOB (DFM)
  fram_reporte.CampoDatas := Tabla_ventanaDATOS    --> TIPO BLOB (DATAAWARE OBJECTS)
  fram_reporte.ReportDataSet := quer_personal; --> CONSULTA O TABLA DE ORIGEN PRINCIPAL
}

unit ufra_edit_reportes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TypInfo, DB, RLTypes, _cons_pcp,
  TB2Item, TBX, StdActns, ActnList, ImgList, TB2Dock, TB2Toolbar, Menus,
  ExtCtrls, Boxes, PCPFrame, ELControls, ELUtils, ELDsgnr,
  Grids, ELD5_Adds, ELPropInsp, TBXDkPanels, DBTables,
  TB2ExtItems, TBXExtItems, ExtDlgs, RLReport, RLBarcode, RLPreviewForm,
  RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter, dxPageControl,
  RLXLSFilter, dxCntner, dxEditor, dxExEdtr, dxEdLib, QBuilder, QBEBDE,
  kbmMemTable, dxDBGrid, dxTL, dxDBCtrl, SCLDBGrid, SCLTabs, StdCtrls,
  SoCtrls, SCLDBLabel, mbTBXFixedStuff, ufra_edit_sino,
  ufra_edit_repo_distribucion, ufra_edit_repo_alin_texto,
  ufra_edit_Repo_band_bordes, ufra_edit_repo_fuente, SCLShape,
  ufra_edit_repo_band_color, SCLRLDBImagen;

Const
        cosReportDataSourcePrefix = '_ReportDataSource_';

type
  TSCLReport = class(TRLReport)
  private
    FOnNotification: TELDesignerOnNotificationEvent;
  protected
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
  public
    property OnNotification: TELDesignerOnNotificationEvent read FOnNotification write FOnNotification;
  end;
  //Tipo para multiples DataSources en el reporteador
  TDataSourcesReporteador = Record
      DataSource        : TDataSource;
      SecondDataSource  : TDataSource;
      DisplayName       : String;
  End;


  Tffra_edit_reportes = class(TFrame)
    ImageList1: TImageList;
    ActionList1: TActionList;
    acti_nuevo: TAction;
    acti_vist_previa: TAction;
    acti_ver_insp_objetos: TAction;
    acti_abrir: TAction;
    acti_guardar: TAction;
    acti_copiar: TAction;
    acti_cortar: TAction;
    acti_pegar: TAction;
    acti_eliminar: TAction;
    acti_bloquear: TAction;
    acti_desbloquear: TAction;
    acti_desb_todos: TAction;
    acti_sele_todos: TAction;
    acti_alin_grid: TAction;
    acti_trae_frente: TAction;
    acti_envi_atras: TAction;
    acti_habilitar: TAction;
    acti_habi_todos: TAction;
    acti_camb_datos: TAction;
    acti_zoom_100: TAction;
    acti_imprimir: TAction;
    acti_alin_izquierda: TAction;
    acti_alin_derecha: TAction;
    acti_alin_arriba: TAction;
    acti_alin_abajo: TAction;
    acti_alin_espa_horizontal: TAction;
    acti_alin_espa_vertical: TAction;
    acti_alin_cent_horizontal: TAction;
    acti_alin_cent_vertical: TAction;
    acti_alin_cent_vent_horizontal: TAction;
    acti_alin_cent_Vent_vertical: TAction;
    acti_prop_reporte: TAction;
    PopUpMenu1: TTBXPopupMenu;
    Enable1: TTBXItem;
    N7: TTBXSeparatorItem;
    Cut2: TTBXItem;
    Copy2: TTBXItem;
    Paste2: TTBXItem;
    Delete2: TTBXItem;
    N2: TTBXSeparatorItem;
    Align2: TTBXSubmenuItem;
    actALLeft2: TTBXItem;
    actALRight2: TTBXItem;
    actALHSpace2: TTBXItem;
    actALHCenter2: TTBXItem;
    actALHCenterWindow2: TTBXItem;
    N10: TTBXSeparatorItem;
    actALTop2: TTBXItem;
    actALBottom2: TTBXItem;
    actALVSpace2: TTBXItem;
    actALVCenter2: TTBXItem;
    actALVCenterWindow2: TTBXItem;
    AlignToGrid1: TTBXItem;
    Bringtofront1: TTBXItem;
    Sendtoback2: TTBXItem;
    N6: TTBXSeparatorItem;
    Lock2: TTBXItem;
    Unlock1: TTBXItem;
    TBXDock1: TTBXDock;
    barr_fram_archivo: TTBXToolbar;
    TBXItem17: TTBXItem;
    TBXItem16: TTBXItem;
    TBXItem15: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXItem14: TTBXItem;
    TBXItem13: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXDock2: TTBXDock;
    barr_componentes: TTBXToolbar;
    qrboto_flecha: TTBXItem;
    qrBoto_banda: TTBXItem;
    qrBoto_label: TTBXItem;
    qrBoto_dbText: TTBXItem;
    qrBoto_sys: TTBXItem;
    qrBoto_memo: TTBXItem;
    qrBoto_forma: TTBXItem;
    qrBoto_barcodeDB: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    ELDesigner1: TELDesigner;
    pane_contenedor: TPCPFrame;
    ELDesignPanel1: TELDesignPanel;
    TBXDock3: TTBXDock;
    pane_insp_objetos: TTBXDockablePanel;
    qrboto_grupo: TTBXItem;
    data_reporte: TDataSource;
    qrBoto_imagen: TTBXItem;
    qrBoto_imagenDB: TTBXItem;
    fram_dial_abrir: TOpenPictureDialog;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    page: TSCLPageControl;
    page_campos: TSCLTabSheet;
    RLXLSFilter1: TRLXLSFilter;
    barr_edicion: TTBXToolbar;
    acti_sele_dataSource: TAction;
    TBXItem26: TTBXItem;
    comb_dataSources: TdxPickEdit;
    TBControlItem1: TTBControlItem;
    pane_data: TPanel;
    TBXItem27: TTBXItem;
    OQDLG: TOQBuilderDialog;
//    OQBDEEngine: TOQBEngineBDE;
    TBXItem28: TTBXItem;
    qrBoto_ColumnDetail: TTBXItem;
    qrBoto_SubDetail: TTBXItem;
    qrBoto_RotatedLabel: TTBXItem;
    qrBoto_MemoDB: TTBXItem;
    qrBoto_SumaDB: TTBXItem;
    qrBoto_BarCode: TTBXItem;
    tabl_Reporte: TkbmMemTable;
    acti_abri_repo_para_editar: TAction;
    quer_repo_existentes: TQuery;
    myTabla_campos: TkbmMemTable;
    myTabla_Ventanaconsecutivo: TIntegerField;
    myTabla_Ventananomb_campo: TStringField;
    myTabla_VentanaDESC_CAMPO: TStringField;
    data_campos: TDataSource;
    grid_camp_disponibles: TSCLDBGrid;
    gridconsecutivo: TdxDBGridMaskColumn;
    gridnomb_campo: TdxDBGridMaskColumn;
    gridDESC_CAMPO: TdxDBGridColumn;
    TBXItem8: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem9: TTBXItem;
    TBXItem6: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem3: TTBXItem;
    TBXVisibilityToggleItem1: TTBXVisibilityToggleItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    Edit_Zoom: TTBXSpinEditItem;
    boto_Cerrar: TTBXItem;
    TBXItem12: TTBXItem;
    TBXItem11: TTBXItem;
    TBXItem10: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXToolbar2: TTBXToolbar;
    TBXItem19: TTBXItem;
    TBXItem18: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    TBXItem20: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    TBXItem21: TTBXItem;
    TBXItem22: TTBXItem;
    TBXItem25: TTBXItem;
    TBXItem24: TTBXItem;
    TBXItem23: TTBXItem;
    qrBoto_Panel: TTBXItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    page_avanzado: TSCLTabSheet;
    PropInsp: TELPropertyInspector;
    page_propiedades: TSCLTabSheet;
    page_prop: TSCLPageControl;
    page_labels: TSCLTabSheet;
    scro_box: TScrollBox;
    pane_prop_general: TPCPFrame;
    pane_texto: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    edit_nombre: TdxEdit;
    pane_apariencia: TPCPFrame;
    fram_distribucion: Tffra_edit_repo_distribucion;
    pane_alin_texto: TPanel;
    fram_alin_texto: Tffra_edit_repo_alin_texto;
    chec_visible: TdxCheckEdit;
    chec_transparent: TdxCheckEdit;
    pane_bordes: TPCPFrame;
    fram_bordes: Tffra_edit_Repo_band_bordes;
    pane_fuente: TPanel;
    fram_fuente: Tffra_edit_repo_fuente;
    SCLShape1: TSCLShape;
    SCLShape2: TSCLShape;
    fram_color: Tffra_edit_repo_band_color;
    procedure acti_vist_previaExecute(Sender: TObject);
    procedure ELDesigner1ChangeSelection(Sender: TObject);
    procedure PropInspModified(Sender: TObject);
    procedure PropInspFilterProp(Sender: TObject; AInstance: TPersistent;
      APropInfo: PPropInfo; var AIncludeProp: Boolean);
    procedure ELDesigner1ControlHint(Sender: TObject; AControl: TControl;
      var AHint: String);
    procedure ELDesigner1ControlInserted(Sender: TObject);
    procedure ELDesigner1ControlInserting(Sender: TObject;
      var AControlClass: TControlClass);
    procedure acti_guardarExecute(Sender: TObject);
    procedure acti_abrirExecute(Sender: TObject);
    procedure acti_nuevoExecute(Sender: TObject);
    procedure acti_prop_reporteExecute(Sender: TObject);
    procedure Edit_ZoomAcceptText(Sender: TObject; var NewText: String;
      var Accept: Boolean);
    procedure Edit_ZoomValueChange(Sender: TTBXCustomSpinEditItem;
      const AValue: Extended);
    procedure TeclaEnControl(Sender: TObject; var Key: Char);
    procedure doAlinear(Sender: TObject);
    procedure acti_copiarExecute(Sender: TObject);
    procedure acti_cortarExecute(Sender: TObject);
    procedure acti_pegarExecute(Sender: TObject);
    procedure acti_copiarUpdate(Sender: TObject);
    procedure acti_cortarUpdate(Sender: TObject);
    procedure acti_pegarUpdate(Sender: TObject);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure acti_bloquearExecute(Sender: TObject);
    procedure acti_desbloquearExecute(Sender: TObject);
    procedure acti_desb_todosExecute(Sender: TObject);
    procedure acti_sele_todosExecute(Sender: TObject);
    procedure acti_alin_gridExecute(Sender: TObject);
    procedure acti_trae_frenteExecute(Sender: TObject);
    procedure acti_envi_atrasExecute(Sender: TObject);
    procedure acti_habi_todosExecute(Sender: TObject);
    procedure acti_imprimirExecute(Sender: TObject);
    procedure acti_zoom_100Execute(Sender: TObject);
    procedure comb_dataSourcesDropDown(Sender: TObject);
    procedure acti_sele_dataSourceUpdate(Sender: TObject);
    procedure acti_sele_dataSourceExecute(Sender: TObject);
    procedure TBXItem27Click(Sender: TObject);
    procedure acti_guardarUpdate(Sender: TObject);
    procedure ELDesigner1DblClick(Sender: TObject);
    procedure acti_abri_repo_para_editarExecute(Sender: TObject);
    procedure doCargarCamposDisponibles(Sender: TObject);
    procedure ELDesigner1DragOver(Sender, ASource, ATarget: TObject; AX,
      AY: Integer; AState: TDragState; var AAccept: Boolean);
    procedure ELDesigner1DragDrop(Sender, ASource, ATarget: TObject; AX,
      AY: Integer);
    procedure Modificar_Visible(Sender: TObject);
    procedure Modificar_Transparent(Sender: TObject);
    procedure fram_distribucionedit_cont_alignChange(Sender: TObject);
    procedure fram_distribucionedit_layoutChange(Sender: TObject);
    procedure fram_distribucionchec_autoSizeChange(Sender: TObject);
    procedure fram_alin_textoedit_alin_textoChange(Sender: TObject);
    procedure Modificar_Bordes(Sender: TObject);
    procedure fram_fuenteboto_Camb_fuenteClick(Sender: TObject);
    procedure Modificar_colores(Sender: TObject);
    procedure comb_dataSourcesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure comb_dataSourcesSelectionChange(Sender: TObject);
  private
    { Private declarations }
    var_QR  : TSCLReport;
    var_Modificado : Boolean;
    var_CampoFormato   : TBlobField;
    var_CampoDatos  : TBlobField;
    var_SoloLectura : Boolean;
    var_TituloReporte   : String;
    var_Loading : Boolean;
    var_OrderBy  : String;
    var_ReportDataSet   : TDataSet;
    var_Preparando      : Boolean;
    var_Seleccionando   : Boolean;
    var_ShowModal       : Boolean;
    var_DataSourcesDisponibles : Array[0..coiMaxDataSourcesReporteador] of TDataSourcesReporteador;
    procedure ReportNotification(Sender: TObject; AnObject: TPersistent;
      Operation: TOperation);
    Procedure SetCampoFormato(peValue : TBlobField);
    Procedure SetCampoDatos(peValue : TBlobField);
    Procedure SetSoloLectura(peValue : Boolean);
    Function doSeleccionarImagen(var peRLImage : TRLImage) : Boolean;
    Procedure SetTituloReporte(peValor : String);
    Procedure SetOrderBy(peValor : String);
    Procedure SetReportDataSet(peValor : TDataSet);
    Procedure SetModificado(peValor : Boolean);
    Function IsRegisterProperty(peProperty : String) : Boolean;
    Function GetDefaultValue(peProperty : String) : Variant;
    Procedure SetPropertyValue(peProperty : String;
          peValue : Variant);
    Procedure SetDataSourceToSelection(peDataSource : TDataSource);
    Procedure SetDataSourceToControl(peControl : TControl; peDataSource : TDataSource = Nil);
    Procedure CrearDSs;
    Procedure doLoadDataSourcesFromTag;
 public
    { Public declarations }
    MyDataSource : TDataSource;
    Constructor Create (Owner : TComponent); Override;
    Destructor Destroy; Override;
    Procedure doResetear;
    Procedure doAsignarDataSource(peDataSource : TDataSource = Nil);
    Function DataSetValido  : Boolean;
    Property ReportDataSet : TDataSet Read var_ReportDataSet Write SetReportDataSet;
    property Modificado: Boolean read var_Modificado Write SetModificado;
    Property CampoFormato : TBlobField Read var_CampoFormato Write SetCampoFormato;
    Property CampoDatos : TBlobField Read var_CampoDatos Write SetCampoDatos;
    Property SoloLectura : Boolean Read var_SoloLectura Write SetSoloLectura;
    Property TituloReporte : String Read var_TituloReporte Write SetTituloReporte;
    Property OrderBy : String Read var_OrderBy Write SetOrderBy;
    Procedure LoadOrderByFromFields(peField1, peField2, peField3 : String; peDescendingOrder : Boolean = False);
    Procedure LoadReportFromBlob(peBlob : TBlobField);
    Procedure Prepare;
    Property ShowModal : Boolean Read var_ShowModal Write var_ShowModal;
    Procedure LimpiarDataSourcesDisponibles;
    Procedure SetDataSourceDisponible(pePosicion : Integer; peDataSource : TDataSource = Nil; peDisplayName : String = '');
    Function BuscarDataSourceDisponible(peDataSource : TDataSource) : Integer;
    Function GetDataSourceDisponible (pePosicion : Integer) : TDataSource;
    Function GetDataSourceDisponibleTexto (pePosicion : Integer) : String;
  end;

Var
      Signature: packed array[0..3] of Char = ('S', 'C', 'L', 'R');


implementation

uses _cons_colores, 
  un0_edit_repo_propiedades, un0_dial_sele_campos, un0_dial_strings,
  _func_pcp, un0_edit_repo_tipo_banda, _func_fortes, _func_db, _uData,
  _func_varias, _MDI;

{$R *.DFM}

{ TSCLReport }
{****************************************************************
Procedimiento   : Notification
Objetivo        : Notificación de eventos al QR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 02 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure TSCLReport.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;
  if Assigned(OnNotification) then OnNotification(Self, AComponent, Operation);
end;

{Tffra_edit_reportes}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 02 de 2004
Versión         : pcp4.0.20.1
*****************************************************************}
Constructor Tffra_edit_reportes.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     //Crear los DSs Temporales del reporteador
     CrearDSs;
     AutoHints(Self);
     pane_contenedor.shap_xp.pen.Color := clLineaGradiente;
     var_ShowModal := False;
     var_Preparando := False;
     //Preparar los tabs de edición
     page_campos.TabVisible := False;
     page_avanzado.TabVisible := isSysDBA;
     if Not isSysDBA Then
        page.HideAllTabs;
     page_prop.HideAllTabs;
     //propInsp.parent := scro_box;
     fram_bordes.OnBordersChange := Modificar_Bordes;
     fram_color.onColorsChange := Modificar_colores;
     //Crear un reporte
     acti_nuevo.Execute;
     var_Loading := False;
     var_Seleccionando := False;
     SetOrderBy('');
     LimpiarDataSourcesDisponibles;
End;
{****************************************************************
Procedimiento   : Destroy
Objetivo        : Liberar objetos creados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Destructor Tffra_edit_reportes.Destroy;
Var
        var_i   : Integer;
        var_Component   : TComponent;
Begin
    if var_QR <> Nil then
        var_QR.Free;
    //Eliminar los DSs
    For var_i := 1 to coiMaxDataSourcesReporteador do
    Begin
        var_Component := FindComponent(cosReportDataSourcePrefix + intToStr(var_i));
        if var_component <> Nil Then
           var_Component.Free;
    End;
    fram_bordes.OnBordersChange := Nil;
    fram_Bordes.Free;
    Inherited;
End;
{****************************************************************
Procedimiento   : ReportNotification
Objetivo        : Ejecutar las notificaciones del QR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 02 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.ReportNotification(Sender: TObject;
  AnObject: TPersistent; Operation: TOperation);
begin
  if Operation = opInsert then
  begin
           
//           := data_reporte;
//    if (AnObject is TRLDBBarCode) then TRLDBBarCode(AnObject).DataSource := data_reporte;
//    if (AnObject is TRLDBImage) then TRLDBImage(AnObject).DataSource := data_reporte


  end;
end;
//_----------------------------------------------------------------------
procedure Tffra_edit_reportes.acti_vist_previaExecute(Sender: TObject);
var
  LV: Boolean;
  var_i : IntegeR;
begin
  //Validar que tenga DataSet
  if Not DataSetValido Then Exit;
  if var_QR = Nil Then Exit;
  if data_Reporte.DataSet = Nil then
        data_Reporte.DataSet := tabl_reporte;
  //Tipo de vista previa
  With var_Qr.PreviewOptions do
  Begin
      Caption := cosInforme + TituloReporte;
      Defaults := pdIgnoreDefaults;
      WindowState := wsMaximized;
      ShowModal := var_ShowModal;
      if ShowModal Then
        FormStyle := fsNormal
      Else
        FormStyle := fsMDIChild;
  End;
  //Iniciar
  //doAsignarDataSource;
  //Cargar los datos en la tabla de memoria
  tabl_Reporte.Close;
  if (var_ReportDataSet <> Nil) Then
  Begin
      tabl_Reporte.LoadFromDataSet(var_ReportDataSet, [mtcpoAppend]);
      tabl_Reporte.LoadFromDataSet(var_ReportDataSet, [mtcpoProperties]);
  End;
  LV := pane_insp_objetos.Visible;
  pane_insp_objetos.Visible := False;

  //Asignar los DSet
{  for var_i := 0 to coiMaxDataSourcesReporteador do
     if var_DataSourcesDisponibles[var_i].DataSource <> Nil Then
           var_DataSourcesDisponibles[var_i].SecondDataSource.DataSet := var_DataSourcesDisponibles[var_i].DataSource.DataSet;
  if var_DataSourcesDisponibles[1].SecondDataSource <> Nil then
     if var_DataSourcesDisponibles[1].SecondDataSource.DataSet <> Nil then
        ShowMessage(var_DataSourcesDisponibles[1].SecondDataSource.DataSet.Name);   }


  try
    tabl_reporte.Open;
    tabl_reporte.DisableControls;
    if Not var_Preparando Then
        var_QR.Preview;
  finally
    pane_insp_objetos.Visible := LV;
    tabl_reporte.EnableControls;
  end;

end;
{****************************************************************
Procedimiento   : ELDesigner1ChangeSelection
Objetivo        : Cambiar la selección de objetos activa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.ELDesigner1ChangeSelection(Sender: TObject);
var
  LObjects: TList;
  var_i : Integer;
  var_DataSource           : TDataSource;
  var_Temp_dataSource      : TDataSource;
begin
    LObjects := TList.Create;
    try
      ELDesigner1.SelectedControls.GetControls(LObjects);
      PropInsp.AssignObjects(LObjects);
    finally
      LObjects.Free;
    end;
    //Propiedades
    page_prop.Visible := (ELDesigner1.SelectedControls.Count > 0);
    if not page_prop.Visible Then Exit;
    //Ocultar los panels

    var_Seleccionando := True;
    Try
        //Propiedades generales ----------------------------------------
        //Nombre
        SetControlEnabled(Pane_Texto, ELDesigner1.SelectedControls.Count = 1);
        if (ELDesigner1.SelectedControls.Count = 1) Then
        Begin
           edit_nombre.Text := ELDesigner1.SelectedControls[0].Name;
           If (ELDesigner1.SelectedControls[0].Name = 'EN_EDICION') Then
                edit_nombre.Enabled := False;
        End;
        //Visible
        SetControlEnabled(chec_visible, IsRegisterProperty('visible'));
        chec_visible.Checked := varAsType(GetDefaultValue('visible'), varBoolean);
        //Transparente
        SetControlEnabled(chec_Transparent, IsRegisterProperty('Transparent'));
        chec_Transparent.Checked := varAsType(GetDefaultValue('Transparent'), varBoolean);
        //Fram distribucion
        if (ELDesigner1.SelectedControls.Count > 0) Then
            fram_distribucion.ControlRL := (ELDesigner1.SelectedControls[0] as TRLCustomControl)
        Else
            fram_distribucion.ControlRL := Nil;
        fram_distribucion.Enabled_alin_control(IsRegisterProperty('Align'));
        if IsRegisterProperty('Align') Then
          fram_distribucion.AlineacionRL := GetDefaultValue('Align');
        fram_distribucion.Enabled_alin_control(IsRegisterProperty('Layout'));
        if IsRegisterProperty('Layout') Then
          fram_distribucion.LayoutRL := GetDefaultValue('Layout');
        fram_distribucion.Enabled_ajus_automatico(IsRegisterProperty('AutoSize'));
        if IsRegisterProperty('AutoSize') Then
          fram_distribucion.AutoSizeRL := GetDefaultValue('AutoSize');
        //Alineacion del texto
        if (ELDesigner1.SelectedControls.Count > 0) Then
            fram_alin_texto.ControlRL := (ELDesigner1.SelectedControls[0] as TRLCustomControl)
        Else
            fram_alin_texto.ControlRL := Nil;
        fram_alin_texto.Enabled_Alin_Texto(IsRegisterProperty('Alignment'));
        if IsRegisterProperty('Alignment') Then
          fram_alin_texto.AlineacionRL := GetDefaultValue('Alignment');
        //Bordes
        fram_Bordes.Banda := Nil;
        fram_Bordes.Objeto := Nil;
        if (ELDesigner1.SelectedControls.Count > 0) Then
        Begin
            if (ELDesigner1.SelectedControls[0] is TRLCustomControl) Then
                fram_bordes.Objeto := (ELDesigner1.SelectedControls[0] as TRLCustomControl)
            Else
            if (ELDesigner1.SelectedControls[0] is TRLCustomSite) Then
                fram_bordes.Banda := (ELDesigner1.SelectedControls[0] as TRLCustomSite)
        End
        Else
        Begin
            fram_bordes.Objeto := Nil;
            fram_bordes.Banda := Nil;
        End;
        SetControlEnabled(fram_bordes, IsRegisterProperty('Borders'));

        //Fuente
        if (ELDesigner1.SelectedControls.Count > 0) Then
        Begin
                if (ELDesigner1.SelectedControls[0] is TRLCustomControl) then
                fram_fuente.Fuente := (ELDesigner1.SelectedControls[0] as TRLCustomControl).Font;
        End
        Else
        Begin
                fram_fuente.Fuente := Self.Font;
        End;
        SetControlEnabled(fram_fuente, IsRegisterProperty('Font'));

        //Color
        if (ELDesigner1.SelectedControls.Count > 0) Then
        Begin
                if (ELDesigner1.SelectedControls[0] is TRLCustomControl) then
                fram_Color.Banda := (ELDesigner1.SelectedControls[0] as TRLCustomControl);
        End
        Else
        Begin
                fram_Color.Banda := Nil;
        End;
        SetControlEnabled(fram_fuente, IsRegisterProperty('Font'));
        //DataSet
        comb_dataSources.ItemIndex := -1;
        if IsRegisterProperty('DataSource') Then
        Begin
           var_Temp_dataSource := Nil;
           var_DataSource := Nil;
           comb_dataSources.Enabled := True;
           if (ELDesigner1.SelectedControls.Count > 0) Then
              For var_i := 1 to ELDesigner1.SelectedControls.Count do
              Begin
                  var_Temp_DataSource := TDataSource(Integer(GetPropValue(ELDesigner1.SelectedControls[var_i - 1], 'DataSource', False)));
                  if (var_temp_dataSource = Nil) Then Exit;
                  if (var_temp_DataSource.DataSet = Nil) then Exit;
                  //Si el DS es Nil, no se ha comparado con ninguno
                  if var_DataSource = Nil Then
                        var_DataSource := var_Temp_DataSource;
                  if (var_DataSource <> var_Temp_DataSource) Then
                         Break;
              End;
              if (var_DataSource = var_Temp_DataSource) Then
              Begin
                  var_i := BuscarDataSourceDisponible(var_DataSource);
                  if var_i > -1 Then
                      comb_dataSources.ItemIndex := var_i;
              End;
        End
        Else
                comb_dataSources.Enabled := False;
    Except
        on e:Exception do
           EjecutarMensajeError(e.Message);
    End;
    var_Seleccionando := False;
end;
{****************************************************************
Procedimiento   : PropInspModified
Objetivo        : Controlar los cambios desde el inspector de objetos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.PropInspModified(Sender: TObject);
begin
  var_Modificado := True;
  //Mover el dataSet asociado
  if (var_CampoFormato <> Nil) and (var_CampoFormato.DataSet <> Nil) and
     (var_campoFormato.DataSet.Active) Then
        If Not (var_CampoFormato.DataSet.State in [dsInsert, dsEdit]) Then
            var_CampoFormato.DataSet.Edit;
end;
{****************************************************************
Procedimiento   : PropInspFilterProp
Objetivo        : Aplicar el filtro sobre el inspector de objetos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.PropInspFilterProp(Sender: TObject;
  AInstance: TPersistent; APropInfo: PPropInfo; var AIncludeProp: Boolean);
begin
{  if (APropInfo.PropType^.Kind = tkClass) and
    (GetTypeData(APropInfo.PropType^).ClassType.InheritsFrom(TDataSource) or
    GetTypeData(APropInfo.PropType^).ClassType.InheritsFrom(TQuickRepBands)) then
    AIncludeProp := False;}

end;
{****************************************************************
Procedimiento   : ELDesigner1ControlHint
Objetivo        : Mostrar el HINT de cada control
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.ELDesigner1ControlHint(Sender: TObject;
  AControl: TControl; var AHint: String);
var
  LI: Integer;
begin
  if AControl is TRLMemo then
  begin
    AHint := AHint + #13 + cosTexto;
    for LI := 0 to TRLMemo(AControl).Lines.Count - 1 do
      AHint := AHint + #13 + '  ' + TRLMemo(AControl).Lines[LI];
{  end else if AControl is TQRExprMemo then
  begin
    AHint := AHint + #13 + cosTexto;
    for LI := 0 to TQRExprMemo(AControl).Lines.Count - 1 do
      AHint := AHint + #13 + '  ' + TQRExprMemo(AControl).Lines[LI];}
  end
  else if AControl is TRLLabel then
  begin
    AHint := AHint + #13 + cosTexto + TRLLabel(AControl).Caption;
  end
  else if AControl is TRLDBText then
  begin
    AHint := AHint + #13 + cosCampo + TRLDBText(AControl).DataField;
{  end else if AControl is TQRExpr then
  begin
    AHint := AHint + #13 + cosCampo + TQRExpr(AControl).Expression;}
  end
  else if AControl is TRLDBBarCode then
  begin
    AHint := AHint + #13 + cosCampo + TRLDBBarCode(AControl).DataField;
  end
  else if AControl is TRLBarCode then
  begin
    AHint := AHint + #13 + cosCampo + TRLBarCode(AControl).Caption;
  end
  else if AControl is TRLDBMemo then
  begin
    AHint := AHint + #13 + cosCampo + TRLDBMemo(AControl).DataField;
  End

  ;


end;
{****************************************************************
Procedimiento   : ELDesigner1ControlInserted
Objetivo        : Identificar cuando se inserte un nuevo control
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.ELDesigner1ControlInserted(Sender: TObject);
Var
    var_Control : TControl;
    var_Key : Char;
begin
      qrBoto_Flecha.Checked := True;
      //RC20.6 - Editores por defecto
      {if (Not var_loading) and (ElDesigner1.SelectedControls.Count = 1) and
      (ElDesigner1.Active) and (ElDesigner1.DesignControl <> Nil) Then
      Begin
         Var_Key := Char(#13);
         TeclaEnControl(Sender, var_Key);
      End;}
end;
{****************************************************************
Procedimiento   : ELDesigner1ControlInserting
Objetivo        : Insertar un control en el reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.ELDesigner1ControlInserting(Sender: TObject;
  var AControlClass: TControlClass);
begin
  if qrBoto_banda.Checked then
    AControlClass := TRLBand
  else if qrBoto_grupo.Checked then
    AControlClass := TRLGroup
  Else if qrBoto_ColumnDetail.Checked then
    AControlClass := TRLDetailGrid
  Else if qrBoto_SubDetail.Checked then
    AControlClass := TRLSubDetail
  Else if qrBoto_Panel.Checked then
    AControlClass := TRLPanel
  else if qrBoto_label.Checked then
    AControlClass := TRLLabel
  else if qrBoto_RotatedLabel.Checked then
    AControlClass := TRLAngleLabel
  else if qrBoto_DBText.Checked then
    AControlClass := TRLDBText
  else if qrBoto_sys.Checked then
    AControlClass := TRLSystemInfo
  else if qrBoto_memo.Checked then
    AControlClass := TRLMemo
  else if qrBoto_memoDB.Checked then
    AControlClass := TRLDBMemo
  else if qrBoto_Forma.Checked then
    AControlClass := TRLDraw
  else if qrBoto_BarCodeDB.Checked then
    AControlClass := TRLDBBarCode
  else if qrBoto_BarCode.Checked then
    AControlClass := TRLBarCode
  else if qrBoto_Imagen.Checked then
    AControlClass := TRLImage
  else if qrBoto_ImagenDB.Checked then
    AControlClass := TRLDBImage
  else if qrBoto_SumaDB.Checked then
    AControlClass := TRLDBResult
  else if qrBoto_ImagenDB.Checked then
    AControlClass := TSCLRLDBImagen;

  //Identificar la modificación
  var_Modificado := True;
  //Mover el dataSet asociado
  if (var_CampoFormato <> Nil) and (var_CampoFormato.DataSet <> Nil) and
     (var_campoFormato.DataSet.Active) Then
        If Not (var_CampoFormato.DataSet.State in [dsInsert, dsEdit]) Then
            var_CampoFormato.DataSet.Edit;
end;
{****************************************************************
Procedimiento   : acti_guardarExecute
Objetivo        : Guardar el reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_guardarExecute(Sender: TObject);
var
  LS: TBlobStream;
  LI: Longint;
  LB: Byte;
begin
  if var_TituloReporte = '' Then
     Raise Exception.Create(cosNombreReporteNoValido);
  //Guardar el formato del reporte
  if (CampoFormato = Nil) Then Exit;
  LS := TBlobStream.Create(CampoFormato, bmWrite);
  try
    LS.WriteComponent(var_QR);
  finally
    LS.Free;
  end;
  //Guardar los Datos
  if (CampoDatos = Nil) Then Exit;
  LS := TBlobStream.Create(CampoDatos, bmWrite);
  try
    LS.WriteComponent(pane_data);
    var_Modificado := False;
  finally
    LS.Free;
  end;
end;
{****************************************************************
Procedimiento   : acti_AbrirExecute
Objetivo        : Abrir la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_abrirExecute(Sender: TObject);
var
  LS: TBlobStream;
  LI: Longint;
  LB: Byte;
  LDataSet: TBDEDataSet;
begin
  var_Loading := True;
  Try
  //Iniciar un nuevo reporte
  if (var_CampoFormato = Nil) then Exit;
  acti_nuevo.Execute;
  LoadReportFromBlob(var_CampoFormato);
  Except
//    on e:Exception do
//        EjecutarMensajeError(e.Message);
  End;
  var_Loading := False;
end;
{****************************************************************
Procedimiento   : acti_nuevoExecute
Objetivo        : Ejecutar un nuevo reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_nuevoExecute(Sender: TObject);
Var
    var_i   : Integer;
begin
  //Eliminar el QR
  if var_QR <> Nil then
  Begin
      ELDesigner1.Active := False;
      ELDesigner1.DesignControl := Nil;
      //Eliminar los componentes del QR
      for var_i := 1 to var_QR.ComponentCount do
        var_QR.Components[var_QR.ComponentCount - 1].Destroy;
      var_QR.Free;
  End;
  //Eliminar los componentes del pane_datos
  For var_i := 1 to pane_data.ComponentCount do
      pane_Data.Components[pane_data.ComponentCount - 1].Destroy;
  //Volver Crear el QR
  var_QR := TSCLReport.Create(Nil);
  With var_Qr do
  Begin
      parent := pane_contenedor;
      Name := 'EN_EDICION';
      onNotification := ReportNotification;
      PageSetup.PaperSize := fpLetter;
      PreviewOptions.FormStyle := fsMDIChild;
      PreviewOptions.WindowState := wsMaximized;
  End;
//  Edit_Zoom.Value := 100;
  ELDesigner1.DesignControl := var_QR;
  ELDesigner1.Active := True;
  if DataSetValido then
    var_Qr.DataSource := data_reporte;
end;
{****************************************************************
Procedimiento   : actRepPropsExecute
Objetivo        : Ejecutar la acción de las propiedades
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_prop_reporteExecute(Sender: TObject);
begin
  Application.CreateForm(Tfn0_edit_repo_propiedades, fn0_edit_repo_propiedades);
  if fn0_edit_repo_propiedades.doEjecutarVentana(var_QR) Then
    var_Modificado := True;
  //Mover el dataSet asociado
  if (var_CampoFormato <> Nil) and (var_CampoFormato.DataSet <> Nil) and
     (var_campoFormato.DataSet.Active) Then
        If Not (var_CampoFormato.DataSet.State in [dsInsert, dsEdit]) Then
            var_CampoFormato.DataSet.Edit;
  SetTituloReporte(var_QR.Title);
end;

procedure Tffra_edit_reportes.Edit_ZoomAcceptText(Sender: TObject;
  var NewText: String; var Accept: Boolean);
begin
end;
{****************************************************************
Procedimiento   : Edit_ZoomValueChange
Objetivo        : Cambiar el valor zoom
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.Edit_ZoomValueChange(
  Sender: TTBXCustomSpinEditItem; const AValue: Extended);
begin
{    if var_qr <> Nil Then
       var_Qr.Zoom := Trunc(aValue);}
end;
{****************************************************************
Procedimiento   : SetCampoFormato
Objetivo        : Asigna el campo en el cual se guardará el formato
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Procedure Tffra_edit_reportes.SetCampoFormato(peValue : TBlobField);
Begin
    var_CampoFormato := peValue;
End;
{****************************************************************
Procedimiento   : doResetear
Objetivo        : Resetea el diseñador
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Procedure Tffra_edit_reportes.doResetear;
Begin
  ELDesigner1.Active := False;
  ELDesigner1.DesignControl := Nil;
  ELDesigner1.DesignControl := var_QR;
  ELDesigner1.Active := True;
End;
{****************************************************************
Procedimiento   : DataSetValido
Objetivo        : Indica si el reporte tiene una fuente de datos válida
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Function Tffra_edit_reportes.DataSetValido  : Boolean;
Begin
    Result := (ReportDataSet <> Nil);
End;
{****************************************************************
Procedimiento   : SetReportDataSet
Objetivo        : Asigna el DataSet activo para el reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Procedure Tffra_edit_reportes.SetReportDataSet(peValor : TDataSet);
Begin
    tabl_Reporte.Close;
    var_ReportDataSet := peValor;
    if peValor = Nil Then Exit;
    //if Not peValor.Active Then Exit; -> Eliminado en RC 20.12 por que no permite cargar los campos
    //Volver local la consulta
    //tabl_Reporte.LoadFromDataSet(peValor, [mtcpoStructure]);  Hasta RC20.14 por error cargando
    tabl_Reporte.FieldDefs.Assign(peValor.FieldDefs);
    if tabl_Reporte.FieldDefs.Count > 0 Then
    Begin
      tabl_Reporte.Open;
      //Mover los nombres de los campos
      AsignarNombresDeCampos(peValor, tabl_Reporte);
      //Cargar los campos disponibles
      DoCargarCamposDisponibles(Self);
    End;
    SetDataSourceDisponible(0, data_Reporte);
End;
{****************************************************************
Procedimiento   : TeclaEnControl
Objetivo        : Controla las pulsaciones sobre los controles
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_reportes.TeclaEnControl(Sender: TObject;
  var Key: Char);

  function _SetString(var AStr: string): Boolean;
  begin
    Result := False;
    if Ord(Key) >= 32 then
    begin
      AStr := AStr + Key;
      Result := True;
    end
    else if Ord(Key) = VK_BACK then
    begin
      AStr := Copy(AStr, 1, Length(AStr) - 1);
      Result := True;
    end;
  end;

var
  LC: TControl;
  LS: string;
Begin
  if ELDesigner1.SelectedControls.Count = 1 then
    LC := ELDesigner1.SelectedControls.DefaultControl
  else
    LC := nil;
  if LC <> nil then
  begin
        //TRLBand
        if LC.ClassType = TRLBand then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            if FortesPropiedades(TRLBand(LC)) Then
                SetModificado(True);
          End;
        end
        Else
        //TRLGroup
        if LC.ClassType = TRLGroup then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            if FortesPropiedades(TRLGroup(LC)) Then
                SetModificado(True);
          End;
        end
        Else
        //TRLDetailGrid
        if LC.ClassType = TRLDetailGrid then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            if FortesPropiedades(TRLDetailGrid(LC)) Then
                SetModificado(True);
          End;
        end
        Else
        //TRLSubDetail
        if LC.ClassType = TRLSubDetail then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            if FortesPropiedades(TRLSubDetail(LC)) Then
                SetModificado(True);
          End;
        end
        Else
        //TRLPanel
        if LC.ClassType = TRLPanel then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            if FortesPropiedades(TRLPanel(LC)) Then
                SetModificado(True);
          End;
        end
        Else
        //TQRLabel
        if LC.ClassType = TRLLabel then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            if FortesPropiedades(TRLLabel(LC)) Then
                SetModificado(True);
          End;
        end
        else
        //TQRDBText
        if LC.ClassType = TRLDBText then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            //TRLDBText(LC).DataSource := data_reporte;
            LS := TRLDBText(LC).DataField;
            if FortesPropiedades(TRLDBText(LC)) Then
                            SetModificado(True);
          end;
        end
        else
        //TRLDBResult
        if LC.ClassType = TRLDBResult then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            //TRLDBResult(LC).DataSource := data_reporte;
            LS := TRLDBResult(LC).DataField;
            if FortesPropiedades(TRLDBResult(LC)) Then
                            SetModificado(True);
          end;
        end
        else
        //TQRSYS
        if LC.ClassType = TRLSystemInfo then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            if FortesPropiedades(TRLSystemInfo(LC)) Then
                            SetModificado(True);
          end;
        end
        else
        //Imagen DB
        if LC.ClassType = TRLDBImage then
        begin
            if FortesPropiedades(TRLImage(LC)) Then
                            SetModificado(True);
        end
        Else
        //Imagen DB (SCL)
        if (LC.ClassType = TSCLRLDBImagen) then
        begin
            if FortesPropiedades(TRLImage(LC)) Then
                            SetModificado(True);
        end
        Else
        //Codigo de barras
        if LC.ClassType = TRLBarCode then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            if FortesPropiedades(TRLBarCode(LC)) Then
                            SetModificado(True);
          end;
        end
        else
        //Codigo de barras DB
        if LC.ClassType = TRLDBBarCode then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            //TRLDBBarCode(LC).DataSource := data_reporte;
            LS := TRLDBBarCode(LC).DataField;
            if FortesPropiedades(TRLDBBarCode(LC)) Then
                            SetModificado(True);
          end;
        end
        else
        //Memo DB
        if LC.ClassType = TRLDBMemo then
        begin
          if Ord(Key) = VK_RETURN then
          begin
            //TRLDBMemo(LC).DataSource := data_reporte;
            LS := TRLDBMemo(LC).DataField;
            if doEjecutarDialogoSeleccionCampos(Tabl_Reporte, LS) then
            begin
              TRLDBMemo(LC).DataField := LS;
              SetModificado(True);
            end;
          end;
        end
        //TQRMemo
        else
        if (LC.ClassType = TRLMemo) and (Ord(Key) = VK_RETURN) then
        begin
          if doEjecutarDialogoLineas(TRLMemo(LC).Lines, Tabl_Reporte) then
          begin
            TRLMemo(LC).Refresh;
            SetModificado(True);
          end;
        end
        else
        //TRLImage
        if (LC.ClassType = TRLImage) and (Ord(Key) = VK_RETURN) then
        begin
            if FortesPropiedades(TRLImage(LC)) Then
                            SetModificado(True);
        end
  end;
end;
{****************************************************************
Procedimiento   : doSeleccionarImagen
Objetivo        : Selecciona una imagen para un TRLImage
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Function Tffra_edit_reportes.doSeleccionarImagen(var peRLImage : TRLImage) : Boolean;
Begin
    Result := False;
    //Validar
    if peRLImage = Nil then Exit;
    //Ejecutar el dialogo de abrir fotografía
    if fram_dial_abrir.Execute then
    Begin
        //validar el nombre del archivo
        if fram_dial_abrir.FileName = '' Then Exit;
        peRLImage.Picture.LoadFromFile(fram_dial_abrir.FileName);
        Result := True;
    End;
End;
{****************************************************************
Procedimiento   : actALLeftExecute
Objetivo        : Alinear a la izquierda
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.doAlinear(Sender: TObject);
var
  LHorzAlignType, LVertAlignType: TELDesignerAlignType;
begin
  LHorzAlignType := atNoChanges;
  LVertAlignType := atNoChanges;
  case TAction(Sender).Tag of
    0: LHorzAlignType := atLeftTop;
    1: LHorzAlignType := atRightBottom;
    2: LVertAlignType := atLeftTop;
    3: LVertAlignType := atRightBottom;
    4: LHorzAlignType := atSpaceEqually;
    5: LVertAlignType := atSpaceEqually;
    6: LHorzAlignType := atCenter;
    7: LVertAlignType := atCenter;
    8: LHorzAlignType := atCenterInWindow;
    9: LVertAlignType := atCenterInWindow;
  end;
  ELDesigner1.SelectedControls.Align(LHorzAlignType, LVertAlignType);
end;
{****************************************************************
Procedimiento   : acti_copiarExecute
Objetivo        : Copiar la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_copiarExecute(Sender: TObject);
begin
    ELDesigner1.Copy;
end;
{****************************************************************
Procedimiento   : acti_CortarExecute
Objetivo        : Cortar la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_cortarExecute(Sender: TObject);
begin
    ElDesigner1.Cut;
end;
{****************************************************************
Procedimiento   : acti_pegarExecute
Objetivo        : Pegar la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_pegarExecute(Sender: TObject);
begin
    ElDesigner1.Paste;
end;
{****************************************************************
Procedimiento   : acti_copiarUpdate
Objetivo        : Actualizar la acción de copiar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_copiarUpdate(Sender: TObject);
begin
    acti_copiar.Enabled := ElDesigner1.CanCopy;
end;
{****************************************************************
Procedimiento   : acti_CortarUpdate
Objetivo        : Actualizar la acción de cortar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_cortarUpdate(Sender: TObject);
begin
    acti_Cortar.Enabled := ElDesigner1.CanCut;
end;
{****************************************************************
Procedimiento   : acti_pegarUpdate
Objetivo        : Actualizar la acción de pegar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_pegarUpdate(Sender: TObject);
begin
    acti_pegar.Enabled := ElDesigner1.CanPaste;
end;
{****************************************************************
Procedimiento   : actDeleteExecute
Objetivo        : Ejecutar la acción de eliminar los controles
                  seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_eliminarExecute(Sender: TObject);
begin
    ElDesigner1.DeleteSelectedControls;
end;
{****************************************************************
Procedimiento   : actLockExecute
Objetivo        : Bloquear los controles seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_bloquearExecute(Sender: TObject);
begin
  ElDesigner1.SelectedControls.Lock(
    [lmNoResize, lmNoMove, lmNoDelete]);
end;
{****************************************************************
Procedimiento   : actUnlockExecute
Objetivo        : Desbloquear los controles seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_desbloquearExecute(Sender: TObject);
begin
  ElDesigner1.SelectedControls.Lock([]);
end;
{****************************************************************
Procedimiento   : actUnlockAllExecute
Objetivo        : Desbloquea todos los controles
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_desb_todosExecute(Sender: TObject);
begin
  ElDesigner1.LockAll([]);
end;
{****************************************************************
Procedimiento   : actSelectAllExecute
Objetivo        : Seleccionar todo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_sele_todosExecute(Sender: TObject);
begin
  ElDesigner1.SelectedControls.SelectAll;
end;
{****************************************************************
Procedimiento   : actAlignToGridExecute
Objetivo        : Alinear a la tabla los controles seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_alin_gridExecute(Sender: TObject);
begin
  ElDesigner1.SelectedControls.AlignToGrid;
end;
{****************************************************************
Procedimiento   : actBringToFrontExecute
Objetivo        : Traer al frente el control seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_trae_frenteExecute(Sender: TObject);
begin
  ElDesigner1.SelectedControls.BringToFront;
end;
{****************************************************************
Procedimiento   : actSendToBackExecute
Objetivo        : Enviar al fondo el control seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_envi_atrasExecute(Sender: TObject);
begin
  ElDesigner1.SelectedControls.SendToBack;
end;
{****************************************************************
Procedimiento   : actEnableAllExecute
Objetivo        : Habilitar todos los controles
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_habi_todosExecute(Sender: TObject);
begin
  ElDesigner1.SelectedControls.DefaultControl.Enabled :=
    not ElDesigner1.SelectedControls.DefaultControl.Enabled;
  SetModificado(True);
end;
{****************************************************************
Procedimiento   : actPrintExecute
Objetivo        : Imprimir el reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_imprimirExecute(Sender: TObject);
var
  LV: Boolean;
begin
  if ReportDataSet = Nil then Exit;
  LV := pane_insp_objetos.Visible;
  pane_insp_objetos.Visible := False;
  try
    AbrirDataSet(tabl_reporte);
    var_QR.Print;
  finally
    pane_insp_objetos.Visible := LV;
  end;
end;
{****************************************************************
Procedimiento   : acti_zoom_100Execute
Objetivo        : Ver el frame al 100%
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure Tffra_edit_reportes.acti_zoom_100Execute(Sender: TObject);
begin
{  var_QR.Zoom := 100;
  ElDesigner1.SelectedControls.Update;
  edit_Zoom.Value := 100;}
end;
{****************************************************************
Procedimiento   : SetSoloLectura
Objetivo        : Asignar SoloLectura al frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Procedure Tffra_edit_reportes.SetSoloLectura(peValue : Boolean);
Begin
    var_SoloLectura := peValue;
    ElDesigner1.Active := peValue;
End;
{****************************************************************
Procedimiento   : doAsignarDataSource
Objetivo        : Asigna el DS del reporte a los controles que tengan
                  DS
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_reportes.doAsignarDataSource(peDataSource : TDataSource = Nil);

    Procedure doAsignarDataSourceHijos
       (peComponente : TComponent; peDataSource : TDataSource = Nil);
    Var
        var_i   : Integer;
        var_prop    : Variant;
    Begin
        if (peComponente = Nil) Then Exit;
        if (peComponente.ComponentCount = 0) Then Exit;
        if (peDataSource = Nil) then peDataSource := data_reporte;
        for var_i := 1 to peComponente.ComponentCount do
        Begin
           if (peComponente.Components[var_i - 1] is TRLDBText) Then
                TRLDBText(peComponente.Components[var_i - 1]).DataSource := peDataSource
           Else
           if (peComponente.Components[var_i - 1] is TRLDBBarCode) Then
                TRLDBBarCode(peComponente.Components[var_i - 1]).DataSource := peDataSource
           Else
           if (peComponente.Components[var_i - 1] is TRLDBImage) Then
                TRLDBImage(peComponente.Components[var_i - 1]).DataSource := peDataSource
           Else
           if (peComponente.Components[var_i - 1] is TRLDBMemo) Then
                TRLDBMemo(peComponente.Components[var_i - 1]).DataSource := peDataSource
           Else
           if (peComponente.Components[var_i - 1] is TSCLRLDBImagen) Then
                TSCLRLDBImagen(peComponente.Components[var_i - 1]).DataSource := peDataSource

           ;
        End;
    End;
Var
    var_i   : Integer;
Begin
{    if var_QR = Nil then Exit;
    if (peDataSource = Nil) then peDataSource := data_Reporte;
    for var_i := 1 To var_QR.ComponentCount do
    Begin
           if (var_QR.Components[var_i - 1] is TRLDBText) Then
                TRLDBText(var_QR.Components[var_i - 1]).DataSource := peDataSource
           Else
           if (var_QR.Components[var_i - 1] is TRLDBBarCode) Then
                TRLDBBarCode(var_QR.Components[var_i - 1]).DataSource := peDataSource
           Else
           if (var_QR.Components[var_i - 1] is TRLDBImage) Then
                TRLDBImage(var_QR.Components[var_i - 1]).DataSource := peDataSource
           Else
           if (var_QR.Components[var_i - 1] is TSCLRLDBImagen) Then
                TSCLRLDBImagen(var_QR.Components[var_i - 1]).DataSource := peDataSource
           Else
           if (var_QR.Components[var_i - 1] is TRLDBMemo) Then
                TRLDBMemo(var_QR.Components[var_i - 1]).DataSource := peDataSource

           ;

            doAsignarDataSourceHijos(var_QR.Components[var_i - 1], peDataSource);
    End;   }
End;

{****************************************************************
Procedimiento   : comb_dataSourcesDropDown
Objetivo        : Preparar el combo de dataSources disponibles
Realizado por   : Tecnologia
Fecha           : 22-Sep-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tffra_edit_reportes.comb_dataSourcesDropDown(Sender: TObject);
Var
    var_i   : Integer;
begin
    comb_dataSources.Items.Clear;
    //Mostrar la lista de DS disponibles
    For var_i := 0 to coiMaxDataSourcesReporteador do
      if (var_DataSourcesDisponibles[var_i].DataSource <> Nil) Then
        comb_dataSources.Items.Add(var_DataSourcesDisponibles[var_i].DisplayName);
end;
{****************************************************************
Procedimiento   : acti_sele_dataSourceUpdate
Objetivo        : Actualizar la acción de selección de fuente de datos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_reportes.acti_sele_dataSourceUpdate(Sender: TObject);
Var
    var_i   : Integer;
    var_habilitado : Boolean;
begin
    //Si no hay nada seleccionado, salir
    if (ELDesigner1.SelectedControls.Count = 0) Then
    Begin
         acti_sele_DataSource.Enabled := False;
         Exit;
    End;
    //Recorrer los controles seleccionados, buscando que todos tengan la propiedad DATASOURCE
    For var_i := 1 to ELDesigner1.SelectedControls.Count do
          if Not(IsPublishedProp(ElDesigner1.SelectedControls[var_i - 1], 'DataSource')) Then
          Begin
               acti_sele_DataSource.Enabled := False;
               Exit;
          End;
    acti_sele_DataSource.Enabled := True;
End;

{****************************************************************
Procedimiento   : SetCampoDatos
Objetivo        : Asigna el campo en el cual se guardarán los objetos de Datos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
Procedure Tffra_edit_reportes.SetCampoDatos(peValue : TBlobField);
Begin
    var_campoDatos := peValue;
End;


procedure Tffra_edit_reportes.acti_sele_dataSourceExecute(Sender: TObject);
Var
    var_i   : Integer;
    var_DataSource : TDataSource;
begin
    if (ELDesigner1.SelectedControls.Count = 0) Then
         Exit;
    if Comb_dataSources.Text = '' Then Exit;
    //Buscar el DS por el nombre
    For var_i := 1 to ComponentCount do
        if (UpperCase(components[Var_i - 1].Name) = UpperCase(comb_DataSources.Text)) Then
           var_DataSource := (Components[Var_i - 1] as TDataSource);
    //Si no está en el padre, buscar en el panel
    For var_i := 1 to pane_Data.ComponentCount do
        if (UpperCase(pane_Data.components[Var_i - 1].Name) = UpperCase(comb_DataSources.Text)) Then
           var_DataSource := (pane_Data.Components[Var_i - 1] as TDataSource);
    //Si no la encuentra, error
    if (var_DataSource = Nil) Then
       Raise Exception.Create('No existe el  control '+comb_dataSources.Text);
    //Recorrer los controles seleccionados, buscando que todos tengan la propiedad DATASOURCE
    doAsignarDataSource(var_DataSource);
end;

procedure Tffra_edit_reportes.TBXItem27Click(Sender: TObject);
var
    var_query   : TQuery;
    var_dataSource : TDataSource;
    var_s   : String;
begin
    var_Query := TQuery.Create(pane_Data);
    var_s := 'runTimeQuery'+formatDateTime('hhmmss',Now);
    var_query.Name := var_s;
    var_dataSource := TDataSource.Create(pane_data);
    var_DataSource.Name := 'ds' + var_s;
    var_dataSource.dataSet := var_query;
    var_dataSource.AutoEdit := False;
end;
{****************************************************************
Procedimiento   : SetTituloReporte
Objetivo        : Le asigna un título al reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_edit_reportes.SetTituloReporte(peValor : String);
Begin
    if Not (var_QR = Nil) Then
        var_QR.Title := peValor;
    var_TituloReporte := peValor;
End;

procedure Tffra_edit_reportes.acti_guardarUpdate(Sender: TObject);
begin
    acti_guardar.Enabled := Modificado;
end;
{****************************************************************
Procedimiento   : ELDesigner1DblClick
Objetivo        : Editar controles con el doble click
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 28 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_reportes.ELDesigner1DblClick(Sender: TObject);
var
    var_c   : Char;
begin
    var_c := Char(#13);
    TeclaEnControl(Sender, var_c);
end;
{****************************************************************
Procedimiento   : SetOrderBy
Objetivo        : Asigna el ordenamineto del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_reportes.SetOrderBy(peValor : String);
begin
    var_OrderBy := peValor;
    if Not tabl_reporte.Active Then Exit;
    if DataSetValido then
        if tabl_reporte.SortFields <> var_OrderBy Then
        Begin
            tabl_reporte.SortFields := var_OrderBy;
            tabl_reporte.Sort([]);
        End;
end;
{****************************************************************
Procedimiento   : LoadOrderByFromFields
Objetivo        : Carga los campos de ordenamiento desde variables separadas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_edit_reportes.LoadOrderByFromFields(peField1, peField2, peField3 : String; peDescendingOrder : Boolean = False);
Var
    var_s   : String;
Begin
    var_s := '';
    if peField1 <> '' Then
    Begin
        //Campos
        var_s := var_s + peField1;
        if peField2 <> '' Then
        Begin
            var_s := var_s + ';' + peField2;
            if peField3 <> '' Then
                var_s := var_s + ';' + peField3;
        End;
        //Ordenamiento
        if peDescendingOrder Then
            tabl_Reporte.SortOptions := tabl_Reporte.SortOptions + [mtCoDescending]
        Else
            tabl_Reporte.SortOptions := tabl_Reporte.SortOptions - [mtCoDescending];
    End;
    SetOrderBy(var_s);
End;

{****************************************************************
Procedimiento   : acti_abri_repo_para_editarExecute
Objetivo        : Abre un reporte para editarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_reportes.acti_abri_repo_para_editarExecute(
  Sender: TObject);
begin
    //No hace nada
end;
{****************************************************************
Procedimiento   : LoadReportFromBlob
Objetivo        : Abre un reporte desde un BLOB
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure Tffra_edit_reportes.LoadReportFromBlob(peBlob : TBlobField);
var
  LS: TBlobStream;
  var_Component   : TComponent;
begin
  //Validar
  if peBlob = Nil Then Exit;
  //Crear el Stream
  LS := TBlobStream.Create(peBlob, bmRead);
  try
    LS.ReadComponent(var_QR);
    var_QR.Left := 0;
    var_QR.Top := 0;
    doLoadDataSourcesFromTag;
    //doAsignarDataSource;
    //Edit_Zoom.Value := var_Qr.;
  finally
    LS.Free;
    var_Loading := False;
  end;
End;

{****************************************************************
Procedimiento   : doCargarCamposDisponibles
Objetivo        : Muestra los campos disponibles en la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Marzo 09 de 2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tffra_edit_reportes.doCargarCamposDisponibles(Sender: TObject);
Var
    var_i   : Integer;
begin
  //Abrir la tabla de memoria
  if myTabla_campos.Active then myTabla_campos.Close;
  myTabla_campos.Open;
  //Si la fuente de datos no tiene campos y no está activa, abrirla
  if tabl_reporte.fieldCount = 0 Then
    if not tabl_reporte.active then tabl_reporte.open;
  //Recorrer la fuente de datos
  for var_i := 1 TO  tabl_reporte.FieldCount  do
  Begin
    myTabla_campos.Insert;
    myTabla_campos.FieldByName('consecutivo').Value := var_i;
    myTabla_campos.FieldByName('nomb_campo').Value := tabl_reporte.Fields[var_i - 1].FieldName;
    myTabla_campos.FieldByName('desc_campo').Value := tabl_reporte.Fields[var_i - 1].DisplayLabel;
    myTabla_campos.Post;
  End;
  //Ordernarlo
  myTabla_Campos.SortOn('consecutivo', []);
end;

procedure Tffra_edit_reportes.ELDesigner1DragOver(Sender, ASource,
  ATarget: TObject; AX, AY: Integer; AState: TDragState;
  var AAccept: Boolean);
begin
    aAccept := True;//(Sender = grid_camp_disponibles) and (aTarget is TRLCustomSite);
end;

procedure Tffra_edit_reportes.ELDesigner1DragDrop(Sender, ASource,
  ATarget: TObject; AX, AY: Integer);
Var
    var_Clase : TControlClass;
begin
    qrBoto_dbText.Checked := True;
    var_Clase := TRLDBText;
    ELDesigner1ControlInserting(Sender, var_Clase);
    var_QR.InsertControl(var_Clase.Create(Nil));
    {with var_dbText do
    Begin
        Parent := (aTarget as TWinControl);
        DataSource := data_Reporte;
        DataField := myTabla_campos.FieldByName('nomb_campo').asString;
        Name := 'myTemporal'+formatDateTime('ddmmyyyyhhmmss',now);
    End;
    ELDesigner1.InsertComponent(var_DBText);}
end;

{****************************************************************
Procedimiento   : Prepare
Objetivo        : Prepara el reporte antes de visualizarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 08-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
Procedure Tffra_edit_reportes.Prepare;
Begin
        var_Preparando := True;
        if acti_vist_previa.Enabled Then
                acti_vist_previa.Execute;
        var_Preparando := False;
End;
{****************************************************************
Procedimiento   : SetModificado
Objetivo        : Asignar el valor a la propiedad MODIFICADO
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_reportes.SetModificado(peValor : Boolean);
Begin
    var_Modificado := peValor;
    acti_guardar.Enabled := Not var_Modificado;
    ElDesigner1.Modified;
End;
{****************************************************************
Procedimiento   : IsRegisterProperty
Objetivo        : Indica si una propiedad está registrada en
                  los componentes existentes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function Tffra_edit_reportes.IsRegisterProperty(peProperty : String) : Boolean;
var
        var_i   : Integer;
Begin
    Result := False;
    For var_i := 1 to ELDesigner1.SelectedControls.Count do
        if Not IsPublishedProp(ELDesigner1.SelectedControls[var_i - 1], peProperty) Then
            Exit;
    Result := True;
End;

{****************************************************************
Procedimiento   : SetPropertyValue
Objetivo        : Asigna un valor en la propiedad dada
                  a los objetos seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tffra_edit_reportes.SetPropertyValue(peProperty : String;
          peValue : Variant);
Var
        var_i   : Integer;
Begin
    Try
        if (ELDesigner1.SelectedControls.Count = 0) Then Exit;
        for var_i := 1 to ELDesigner1.SelectedControls.Count do
        Begin
            if IsPublishedProp(ELDesigner1.SelectedControls[var_i - 1], peProperty) Then
                SetVariantProp(ELDesigner1.SelectedControls[var_i - 1], peProperty, peValue);
        End;
    Except
        on E:Exception do
           EjecutarMensajeError(e.Message);
    End;     
End;
{****************************************************************
Procedimiento   : Modificar_Visible
Objetivo        : Da por modificado el frame VISIBLE
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_reportes.Modificar_Visible(Sender: TObject);
Var
        var_i   : Integer;
begin
     if var_Seleccionando Then Exit;
     ElDesigner1.SelectedControls.Update;
     For var_i := 1 to ELDesigner1.SelectedControls.Count do
        if (ELDesigner1.SelectedControls[var_i - 1] is TRLCustomControl) Then
            (ELDesigner1.SelectedControls[var_i - 1] as TRLCustomControl).Visible := chec_visible.Checked;
     SetModificado(True);
end;
{****************************************************************
Procedimiento   : GetDefaultValue
Objetivo        : Devuelve el valor de la propiedad dada del primer objeto
                  seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function Tffra_edit_reportes.GetDefaultValue(peProperty : String) : Variant;
Begin
    Result := Null;
    if (ELDesigner1.SelectedControls.Count = 0) Then Exit;
        if IsPublishedProp(ELDesigner1.SelectedControls[0], peProperty) Then
             Result := GetPropValue(ELDesigner1.SelectedControls[0], peProperty, False);
End;
{****************************************************************
Procedimiento   : Modificar_Transparent
Objetivo        : Asignar la propiedad TRANSPARENT a los objetos seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_reportes.Modificar_Transparent(Sender: TObject);
Var
        var_i   : Integer;
begin
     if var_Seleccionando Then Exit;
     ElDesigner1.SelectedControls.Update;
     For var_i := 1 to ELDesigner1.SelectedControls.Count do
        if (ELDesigner1.SelectedControls[var_i - 1] is TRLCustomControl) Then
            (ELDesigner1.SelectedControls[var_i - 1] as TRLCustomControl).Transparent := chec_transparent.Checked;
     SetModificado(True);
end;
{****************************************************************
Procedimiento   : fram_distribucionedit_cont_alignChange
Objetivo        : Asignar la propiedad ALIGN a los objetos seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_reportes.fram_distribucionedit_cont_alignChange(
  Sender: TObject);
Var
        var_i   : Integer;
begin
     fram_distribucion.edit_cont_alignChange(Sender);
     if var_Seleccionando Then Exit;
     ElDesigner1.SelectedControls.Update;
     For var_i := 1 to ELDesigner1.SelectedControls.Count do
        if (ELDesigner1.SelectedControls[var_i - 1] is TRLCustomControl) Then
            (ELDesigner1.SelectedControls[var_i - 1] as TRLCustomControl).Align := fram_distribucion.AlineacionRL;
     SetModificado(True);
end;
{****************************************************************
Procedimiento   : fram_distribucionedit_layoutChange
Objetivo        : Asignar la propiedad LAYOUT a los objetos seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_reportes.fram_distribucionedit_layoutChange(
  Sender: TObject);
Var
        var_i   : Integer;  
begin
     fram_distribucion.edit_layoutChange(Sender);
     if var_Seleccionando Then Exit;
     ElDesigner1.SelectedControls.Update;
     For var_i := 1 to ELDesigner1.SelectedControls.Count do
        if (ELDesigner1.SelectedControls[var_i - 1] is TRLCustomControl) Then
            (ELDesigner1.SelectedControls[var_i - 1] as TRLCustomControl).Layout := fram_distribucion.LayoutRL;
     SetModificado(True);
end;
{****************************************************************
Procedimiento   : fram_distribucionchec_autoSizeChange
Objetivo        : Asignar la propiedad AUTOSIZE a los objetos seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_reportes.fram_distribucionchec_autoSizeChange(
  Sender: TObject);
var
        var_i   : Integer;
begin
     fram_distribucion.chec_autoSizeChange(Sender);
     if var_Seleccionando Then Exit;
     ElDesigner1.SelectedControls.Update;
     For var_i := 1 to ELDesigner1.SelectedControls.Count do
        if (ELDesigner1.SelectedControls[var_i - 1] is TRLCustomControl) Then
            (ELDesigner1.SelectedControls[var_i - 1] as TRLCustomControl).AutoSize := fram_distribucion.AutoSizeRL;
     SetModificado(True);
end;
{****************************************************************
Procedimiento   : fram_alin_textoedit_alin_textoChange
Objetivo        : Asignar la propiedad ALIGNMENT a los objetos seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_reportes.fram_alin_textoedit_alin_textoChange(
  Sender: TObject);
var
        var_i   : Integer;
begin
     fram_alin_texto.edit_alin_textoChange(Sender);
     if var_Seleccionando Then Exit;
     ElDesigner1.SelectedControls.Update;
     For var_i := 1 to ELDesigner1.SelectedControls.Count do
        if (ELDesigner1.SelectedControls[var_i - 1] is TRLCustomControl) Then
            (ELDesigner1.SelectedControls[var_i - 1] as TRLCustomControl).Alignment := fram_alin_texto.AlineacionRL;
     SetModificado(True);
end;
{****************************************************************
Procedimiento   : Modificar_Bordes
Objetivo        : Cambiar la propiedad BORDERS de los componentes seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_reportes.Modificar_Bordes(Sender: TObject);
var
        var_i   : Integer;
begin
     Try
       if var_Seleccionando Then Exit;
       fram_bordes.doSave;
       ElDesigner1.SelectedControls.Update;
       For var_i := 1 to ELDesigner1.SelectedControls.Count do
          if (ELDesigner1.SelectedControls[var_i - 1] is TRLCustomControl) Then
              (ELDesigner1.SelectedControls[var_i - 1] as TRLCustomControl).Borders := (ELDesigner1.SelectedControls[0] as TRLCustomControl).Borders;
       SetModificado(True);
     Except
     End;
end;
{****************************************************************
Procedimiento   : fram_fuenteboto_Camb_fuenteClick
Objetivo        : Cambiar la fuente de los controles seleccionados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 19-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_reportes.fram_fuenteboto_Camb_fuenteClick(
  Sender: TObject);
var
        var_i   : Integer;
begin
     Try
       if var_Seleccionando Then Exit;
       fram_fuente.boto_Camb_fuenteClick(Sender);
       ElDesigner1.SelectedControls.Update;
       For var_i := 1 to ELDesigner1.SelectedControls.Count do
          if (ELDesigner1.SelectedControls[var_i - 1] is TRLCustomControl) Then
              (ELDesigner1.SelectedControls[var_i - 1] as TRLCustomControl).Font.Assign(fram_fuente.pane_fuente.Font);
       SetModificado(True);
     Except
     End;
end;
{****************************************************************
Procedimiento   : Modificar_colores
Objetivo        : Modificar la propiedad COLORES
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 21-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tffra_edit_reportes.Modificar_colores(Sender: TObject);
var
        var_i   : Integer;
begin
     Try
       if var_Seleccionando Then Exit;
       fram_color.doSave;
       ElDesigner1.SelectedControls.Update;
       For var_i := 1 to ELDesigner1.SelectedControls.Count do
          if (ELDesigner1.SelectedControls[var_i - 1] is TRLCustomControl) Then
          Begin
              (ELDesigner1.SelectedControls[var_i - 1] as TRLCustomControl).Color := (ELDesigner1.SelectedControls[0] as TRLCustomControl).Color;
              If (ELDesigner1.SelectedControls[0] is TRLCustomSite) and (ELDesigner1.SelectedControls[var_i - 1] is TRLCustomSite) Then
                 (ELDesigner1.SelectedControls[var_i - 1] as TRLCustomSite).Degrade := (ELDesigner1.SelectedControls[0] as TRLCustomSite).Degrade;
          End;
       SetModificado(True);
     Except
     End;
end;
{****************************************************************
Procedimiento   : LimpiarDataSourcesDisponibles
Objetivo        : Limpia el arreglo de datasources del reporteador
Realizado por   : Tecnologia
Fecha           : 22-Sep-2005
Argumentos      : None
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Tffra_edit_reportes.LimpiarDataSourcesDisponibles;
var
        var_i   : Integer;
Begin
        //Asignar NIL en todas las posiciones del arreglo
        for var_i := 0 to coiMaxDataSourcesReporteador Do
             SetDataSourceDisponible(var_i, Nil);
        SetDataSourceDisponible(0, data_reporte);
        //Actualizar el combo de DS disponibles
        comb_dataSourcesDropDown(Self);
End;

{****************************************************************
Procedimiento   : SetDataSetDisponible
Objetivo        : Asignar un DS al arreglo de DSDisponibles, en la
                  posición solicitada
Realizado por   : Tecnologia
Fecha           : 22-Sep-2005
Argumentos      : pePosicion : Integer; peDataSet : TDataSet = Nil;
                  peDisplayName : String = ''
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Tffra_edit_reportes.SetDataSourceDisponible(pePosicion : Integer; peDataSource : TDataSource = Nil; peDisplayName : String = '');
Begin
        //Validar la posición
        if  (pePosicion > coiMaxDataSourcesReporteador) then
           Raise Exception.Create(cosDataSourcesMayorAlMaximo+' ('+IntToStr(pePosicion)+')');
        //Asignar el DS
        var_DataSourcesDisponibles[pePosicion].DataSource := peDataSource;
        //Nombre del reporteador principal
        if (pePosicion = 0) and (peDisplayName = '') Then
                peDisplayName := cosConsultaReporteador;
        //Asignar el nombre
        var_DataSourcesDisponibles[pePosicion].DisplayName := peDisplayName;
        //Asignar el DataSet al secundario
        if var_DataSourcesDisponibles[pePosicion].DataSource <> Nil Then
           var_DataSourcesDisponibles[pePosicion].SecondDataSource.DataSet := var_DataSourcesDisponibles[pePosicion].DataSource.DataSet
        Else
           var_DataSourcesDisponibles[pePosicion].SecondDataSource.DataSet := Nil;
        //Fijar el DataSet del Data_Reporte en Tabl_Reporte (si será bueno???)
        if data_Reporte.DataSet = Nil Then
        Begin
            data_Reporte.DataSet := tabl_reporte;
            data_Reporte.Tag := 0;
        End;
        //Actualizar el combo de los DS disponibles
        comb_dataSourcesDropDown(Self);
End;

{****************************************************************
Procedimiento   : BuscarDataSourceDisponible
Objetivo        : Devuelve la posicion de un DataSource dentro del arreglo
                  de DataSources disponibles. Si el DataSource no está en el
                  arreglo o es NIL, devuelve -1
Realizado por   : Tecnologia
Fecha           : 22-Sep-2005
Argumentos      : peDataSet : TDataSet
Versión         : pcp4.0.20.19
*****************************************************************}
Function Tffra_edit_reportes.BuscarDataSourceDisponible(peDataSource : TDataSource) : Integer;
var
        var_i   : Integer;
Begin
     Result := -1;
     if (peDataSource = Nil) Then Exit;
     For var_i := 0 to coiMaxDataSourcesReporteador do
        if (var_DataSourcesDisponibles[Var_i].SecondDataSource = peDataSource) Then
        Begin
                Result := var_i;
                Break;
        End;
End;

{****************************************************************
Procedimiento   : comb_dataSourcesKeyDown
Objetivo        : Asignar el DS a los controles activos con la
                  tecla ENTER sobre el combo de dataSources
Realizado por   : Tecnologia
Fecha           : 26-Sep-2005
Argumentos      : Sender: TObject; var Key: Word; Shift: TShiftState
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tffra_edit_reportes.comb_dataSourcesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_Return) Then
    Begin
        if comb_dataSources.ItemIndex > -1 Then
                SetDataSourceToSelection(var_DataSourcesDisponibles[comb_dataSources.ItemIndex].SecondDataSource)
        Else
                SetDataSourceToSelection(Nil);
    End;
end;
{****************************************************************
Procedimiento   : comb_dataSourcesSelectionChange
Objetivo        : Asignar el DS a los componentes activos
                  cambiando la selección 
Realizado por   : Tecnologia
Fecha           : 26-Sep-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tffra_edit_reportes.comb_dataSourcesSelectionChange(
  Sender: TObject);
begin
    if not comb_dataSources.Focused Then Exit;
    if comb_dataSources.ItemIndex > -1 Then
            SetDataSourceToSelection(var_DataSourcesDisponibles[comb_dataSources.ItemIndex].SecondDataSource)
    Else
            SetDataSourceToSelection(Nil);
    Modificado := True;
end;
{****************************************************************
Procedimiento   : SetDataSourceToSelection
Objetivo        : Asigna un DS a los controles seleccionados
Realizado por   : Tecnologia
Fecha           : 03-Oct-2005
Argumentos      : peDataSource : TDataSource
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Tffra_edit_reportes.SetDataSourceToSelection(peDataSource : TDataSource);
Var
    var_i   : Integer;
Begin
        if (ELDesigner1.SelectedControls.Count = 0) Then Exit;
        For var_i := 1 to ELDesigner1.SelectedControls.Count do
           SetDataSourceToControl(ELDesigner1.SelectedControls[var_i - 1], peDataSource);
                edit_nombre.Enabled := False;
End;
{****************************************************************
Procedimiento   : SetDataSourceToControl
Objetivo        : Asigna el DS a un control
Realizado por   : Tecnologia
Fecha           : 03-Oct-2005
Argumentos      : peControl : TControl; peDataSource : TDataSource = Nil
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Tffra_edit_reportes.SetDataSourceToControl(peControl : TControl; peDataSource : TDataSource = Nil);
Var
        var_i   : Integer;
Begin
    if var_QR = Nil then Exit;
    if peControl = Nil Then Exit;
    if (IsPublishedProp(peControl, 'DataSource')) Then
    Begin
           if (peControl is TRLDBText) Then
                TRLDBText(peControl).DataSource := peDataSource
           Else
           if (peControl is TRLDBBarCode) Then
                TRLDBBarCode(peControl).DataSource := peDataSource
           Else
           if (peControl is TRLDBImage) Then
                TRLDBImage(peControl).DataSource := peDataSource
           Else
           if (peControl is TSCLRLDBImagen) Then
                TSCLRLDBImagen(peControl).DataSource := peDataSource
           Else
           if (peControl is TRLDBMemo) Then
                TRLDBMemo(peControl).DataSource := peDataSource


           ;
           //Asignar la posicion en el TAG
           peControl.Tag := 0;
           For var_i := 0 to coiMaxDataSourcesReporteador do
           Begin
               if var_DataSourcesDisponibles[var_i].SecondDataSource = peDataSource Then
               Begin
                   peControl.Tag := var_i;
                   Break;
               End;
           End;

    End;
End;
{****************************************************************
Procedimiento   : CrearDSs
Objetivo        : Crea los DataSources necesarios para los reportes
Realizado por   : Tecnologia
Fecha           : 03-Oct-2005
Argumentos      : None
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Tffra_edit_reportes.CrearDSs;
var
        var_i   : Integer;
        var_DataSource  : TDataSource;
Begin
     For var_i := 1 To coiMaxDataSourcesReporteador do
     Begin
           var_DataSource := TDataSource.Create(Self);
           var_DataSource.Name := cosReportDataSourcePrefix + IntToStr(var_i);
           var_DataSourcesDisponibles[var_i].SecondDataSource := var_DataSource;
     End;
     var_DataSourcesDisponibles[0].SecondDataSource := data_reporte;
End;
{****************************************************************
Procedimiento   : doLoadDataSourcesFromTag
Objetivo        : Asigna los DS apartir del TAG al momento de
                  llamar el reporte
Realizado por   : Tecnologia
Fecha           : 03-Oct-2005
Argumentos      : None
Versión         : pcp4.0.20.19
*****************************************************************}
Procedure Tffra_edit_reportes.doLoadDataSourcesFromTag;
var
       var_i    : Integer;
       var_componente   : TComponent;
       var_DataSource   : TDataSource;
Begin
       if var_QR = Nil Then Exit;
       For var_i := 1 To var_QR.ComponentCount do
       Begin
            var_componente := var_QR.Components[var_i - 1];
            if IsPublishedProp(var_Componente, 'DataSource') then
            Begin
                if  (var_componente.Tag >= 0)
                    and (var_componente.Tag <= coiMaxDataSourcesReporteador) Then
                Begin
                    Try
                       var_DataSource := var_DataSourcesDisponibles[var_Componente.Tag].SecondDataSource;
                       SetDataSourceToControl((var_Componente as TControl), var_DataSource);
                    Except
                    End;
                End;
            End;
       End;
End;
{****************************************************************
Procedimiento   : GetDataSourceDisponible
Objetivo        : Devuelve el DS asociado a una posición
                  en la lista de DataSets
Realizado por   : Tecnologia
Fecha           : 28-Oct-2005
Argumentos      : pePosicion : Integer
*****************************************************************}
Function Tffra_edit_reportes.GetDataSourceDisponible (pePosicion : Integer) : TDataSource;
Begin
        Result := Nil;
        //Validar la posición
        if  (pePosicion > coiMaxDataSourcesReporteador) then
           Raise Exception.Create(cosDataSourcesMayorAlMaximo+' ('+IntToStr(pePosicion)+')');
        Result := var_DataSourcesDisponibles[pePosicion].DataSource;
End;
{****************************************************************
Procedimiento   : GetDataSourceDisponibleTexto
Objetivo        : Devuelve el texto asociado a una posición
                  en la lista de DataSets
Realizado por   : Tecnologia
Fecha           : 28-Oct-2005
Argumentos      : pePosicion : Integer
*****************************************************************}
Function Tffra_edit_reportes.GetDataSourceDisponibleTexto (pePosicion : Integer) : String;
Begin
        Result := '';
        //Validar la posición
        if  (pePosicion > coiMaxDataSourcesReporteador) then
           Raise Exception.Create(cosDataSourcesMayorAlMaximo+' ('+IntToStr(pePosicion)+')');
        Result := var_DataSourcesDisponibles[pePosicion].DisplayName;
End;



initialization
  ForceCurrentDirectory := True;
{  RegisterClasses([TQuickRep, TQRBand, TQRLabel, TQRSysData,
    TQRDBText, TQRExprMemo, TQRDuckBarCode, TQRGroup, TQRMemo,
    TQREDBImage, TQRImage]);}
  RegisterClasses([TRLReport, TRLBand, TRLGroup, TRLDetailGrid,
    TRLSubDetail, TRLPanel, TRLLabel, TRLSystemInfo,  TRLAngleLabel,
    TRLDBText, TRLBarCode, TRLDBBarCode, TRLMemo, TRLDBMemo,
    TRLDBImage, TRLImage, TRLDraw, TRLDBResult, TSCLRLDBImagen]);
end.

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
        Unit            : un0_conf_cons_lista
        Objetivo        : Ventana base para la creación de
                          ventanas adicionales
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 18 de 2005
        Versión         : pcp4.0.20.5
*******************************************************************}
unit un0_conf_cons_lista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, ELDsgnr, Grids, ELD5_Adds, ELPropInsp,
  TBXButtonSCL, Boxes, PCPFrame, ELControls, ELUtils, ufra_edit_reportes ;

type
  TPCPNotifyPanel = class(TPanel)
  private
    FOnNotification: TELDesignerOnNotificationEvent;
  Protected
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
  public
    property OnNotification: TELDesignerOnNotificationEvent read FOnNotification write FOnNotification;
  end;


  Tfn0_conf_cons_lista = class(T_fvent_child)
    disenador: TELDesigner;
    pane_insp_objetos: TTBXDockablePanel;
    Panel1: TPanel;
    PropInsp: TELPropertyInspector;
    barr_componentes: TTBXToolbar;
    boBoto_flecha: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    boBoto_Panel: TTBXItem;
    boBoto_Boton: TTBXItem;
    ActionList1: TActionList;
    acti_nuevo: TAction;
    acti_vist_previa: TAction;
    acti_ver_insp_objetos: TAction;
    acti_abrir: TAction;
    acti_guardar: TAction;
    acti_copiar: TAction;
    acti_cortar: TAction;
    acti_pegar: TAction;
    acti_habilitar: TAction;
    acti_eliminar: TAction;
    acti_bloquear: TAction;
    acti_desbloquear: TAction;
    acti_desb_todos: TAction;
    acti_sele_todos: TAction;
    acti_alin_grid: TAction;
    acti_trae_frente: TAction;
    acti_envi_atras: TAction;
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
    procedure FormCreate(Sender: TObject);
    procedure disenadorChangeSelection(Sender: TObject);
    procedure disenadorControlHint(Sender: TObject; AControl: TControl;
      var AHint: String);
    procedure disenadorControlInserted(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure disenadorControlInserting(Sender: TObject;
      var AControlClass: TControlClass);
  private
    { Private declarations }
    pane_edicion    : TPCPNotifyPanel;
    var_Modificado : Boolean;
    var_CampoFormato   : TBlobField;
    var_SoloLectura : Boolean;
    var_vent_inicializada   : Boolean;
    procedure EjecutarNotificacion(Sender: TObject; AnObject: TPersistent;
      Operation: TOperation);
    procedure Modificar;
    procedure AjustarCambioDeSeleccion;
  public
    { Public declarations }
  end;

var
  fn0_conf_cons_lista: Tfn0_conf_cons_lista;

implementation

uses _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 18 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
procedure Tfn0_conf_cons_lista.FormCreate(Sender: TObject);
Var
    var_i   : Integer;
begin
  inherited;
  disenador.Active := False;
  var_vent_inicializada := False;
  //Crear un panel para editar
{  pane_edicion := TPCPNotifyPanel.Create(pane_Diseno);
  With pane_edicion do
  Begin
      Parent := pane_diseno;
      align := alClient;
      parentColor := False;
      Color := clRed;
      OnNotification := EjecutarNotificacion;
  End;  }
  //Volver todos los controles hijos del panel de edición
  padr_grid.Visible := False;

  {For var_i := 1 to ControlCount do
  Begin
    Try
      if ((Controls[var_i - 1] <> pane_diseno) and (Controls[var_i - 1] <> pane_edicion)) Then
          Controls[var_i - 1].Parent := pane_edicion;
    Except
    End;
  End;}
  //pane_Diseno.Align := alClient;
  disenador.DesignControl := Self;
  disenador.Active := True;
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : Notification
Objetivo        : Notifica los cambios ocurridos en el form
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
procedure TPCPNotifyPanel.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;
  if Assigned(OnNotification) then OnNotification(Self, AComponent, Operation);
end;
{****************************************************************
Procedimiento   : EjecutarNotificacion
Objetivo        : Ejecuta la notificación de un evento
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
procedure Tfn0_conf_cons_lista.EjecutarNotificacion(Sender: TObject;
  AnObject: TPersistent; Operation: TOperation);
begin
  if Operation = opInsert then
  begin
{    if (anObject is TQRBand) Then
        TQRBand(AnObject).ParentReport := var_QR;
    if (anObject is TQRGroup) Then
        TQRGroup(AnObject).ParentReport := var_QR;
    //Objetos que tienen DATASET
    if AnObject is TQRDBText then TQRDBText(AnObject).DataSet := ReportDataSet;
    if AnObject is TQRDuckBarCode then TQRDuckBarCode(AnObject).DataSet := ReportDataSet;
    if AnObject is TQREDBImage then TQREDBImage(AnObject).DataSet := ReportDataSet;}
  end;
end;

procedure Tfn0_conf_cons_lista.Modificar;
begin
  var_Modificado := True;
end;

procedure Tfn0_conf_cons_lista.AjustarCambioDeSeleccion;
var
  LObjects: TList;
begin
    if not var_vent_inicializada then Exit;
    LObjects := TList.Create;
    try
      disenador.SelectedControls.GetControls(LObjects);
      PropInsp.AssignObjects(LObjects);
    finally
      LObjects.Free;
    end;
end;


procedure Tfn0_conf_cons_lista.disenadorChangeSelection(Sender: TObject);
begin
  inherited;
  if not var_vent_inicializada then Exit;
  AjustarCambioDeSeleccion;
end;

procedure Tfn0_conf_cons_lista.disenadorControlHint(Sender: TObject;
  AControl: TControl; var AHint: String);
var
  LI: Integer;
begin
  Inherited;
{  if AControl is TQRMemo then
  begin
    AHint := AHint + #13 + cosTexto;
    for LI := 0 to TQRMemo(AControl).Lines.Count - 1 do
      AHint := AHint + #13 + '  ' + TQRMemo(AControl).Lines[LI];
  end else if AControl is TQRExprMemo then
  begin
    AHint := AHint + #13 + cosTexto;
    for LI := 0 to TQRExprMemo(AControl).Lines.Count - 1 do
      AHint := AHint + #13 + '  ' + TQRExprMemo(AControl).Lines[LI];
  end else if AControl is TQRLabel then
  begin
    AHint := AHint + #13 + cosTexto + TQRLabel(AControl).Caption;
  end else if AControl is TQRDBText then
  begin
    AHint := AHint + #13 + cosCampo + TQRDBText(AControl).DataField;
  end else if AControl is TQRExpr then
  begin
    AHint := AHint + #13 + cosCampo + TQRExpr(AControl).Expression;
  end else if AControl is TQRDuckBarCode then
  begin
    AHint := AHint + #13 + cosCampo + TQRDuckBarCode(AControl).DataField;
  end


  ;}
end;

procedure Tfn0_conf_cons_lista.disenadorControlInserted(Sender: TObject);
begin
  inherited;
  boBoto_Flecha.Checked := True;
End;

procedure Tfn0_conf_cons_lista.FormShow(Sender: TObject);
begin
  inherited;
  var_vent_inicializada := True;
end;

procedure Tfn0_conf_cons_lista.disenadorControlInserting(Sender: TObject;
  var AControlClass: TControlClass);
begin
  inherited;
  if not var_vent_inicializada then Exit;
  if boBoto_panel.Checked then
    AControlClass := TPCPFrame;
{  else if qrBoto_grupo.Checked then
    AControlClass := TQRGroup
  else if qrBoto_label.Checked then
    AControlClass := TQRLabel
  else if qrBoto_DBText.Checked then
    AControlClass := TQRDBText
  else if qrBoto_Formula.Checked then
    AControlClass := TQRExpr
  else if qrBoto_sys.Checked then
    AControlClass := TQRSysData
  else if qrBoto_memo.Checked then
    AControlClass := TQRMemo
  else if qrBoto_memo_expression.Checked then
    AControlClass := TQRExprMemo
  else if qrBoto_Forma.Checked then
    AControlClass := TQRShape
  else if qrBoto_BarCode.Checked then
    AControlClass := TQRDuckBarCode
  else if qrBoto_Imagen.Checked then
    AControlClass := TQRImage
  else if qrBoto_ImagenDB.Checked then
    AControlClass := TQREDBImage}
  ;
  //Identificar la modificación
  Modificar;
end;

initialization
  ForceCurrentDirectory := True;
  RegisterClasses([TPCPFrame]);


end.

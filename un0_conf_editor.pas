unit un0_conf_editor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB2Dock, TB2Toolbar, TBX, ELDsgnr, TB2Item, Menus, ActnList, Grids,
  ELD5_Adds, ELPropInsp, ExtCtrls, TBXDkPanels, StdCtrls, Boxes, PCPFrame;

type
  Tfn0_conf_editor = class(TForm)
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
    pop_menu_diseno: TTBXPopupMenu;
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
    disenador: TELDesigner;
    barr_componentes: TTBXToolbar;
    boto_flecha: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    boto_panel: TTBXItem;
    boto_boton: TTBXItem;
    pane_insp_objetos: TTBXDockablePanel;
    Panel1: TPanel;
    Inspector: TELPropertyInspector;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    procedure disenadorChangeSelection(Sender: TObject);
    procedure disenadorControlInserting(Sender: TObject;
      var AControlClass: TControlClass);
    procedure disenadorControlInserted(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure doEditar(peControl : TWinControl);
    Procedure Deshabilitar;
  end;

var
  fn0_conf_editor: Tfn0_conf_editor;

implementation

uses _MDI, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : doEditar
Objetivo        : Inicia la edición de un control
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
Procedure Tfn0_conf_editor.doEditar(peControl : TWinControl);
Begin
    if (peControl = Nil) Then
    Begin
        Deshabilitar;
        Exit;
    End;
    disenador.DesignControl := peControl;
    disenador.Active := True;
    barr_componentes.Visible := True;
    pane_insp_objetos.Visible := True;
    Application.ProcessMessages;
    Update;
End;
{****************************************************************
Procedimiento   : Deshabilitar
Objetivo        : Deshabilitar el editor
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
Procedure Tfn0_conf_editor.Deshabilitar;
Begin
    disenador.Active := False;
    disenador.DesignControl := Nil;
    barr_componentes.Visible := False;
    pane_insp_objetos.Visible := False;
End;


procedure Tfn0_conf_editor.disenadorChangeSelection(Sender: TObject);
var
  var_objetos: TList;
begin
    var_objetos := TList.Create;
    try
      disenador.SelectedControls.GetControls(var_objetos);
      Inspector.AssignObjects(var_objetos);
    finally
      var_objetos.Free;
    end;
end;

procedure Tfn0_conf_editor.disenadorControlInserting(Sender: TObject;
  var AControlClass: TControlClass);
begin
   if boto_panel.Checked then
      AControlClass := TPCPFrame
   Else
   if boto_boton.Checked then
      AControlClass := TButton



   ;

end;

procedure Tfn0_conf_editor.disenadorControlInserted(Sender: TObject);
begin
    //Boton de flecha seleccionado
    boto_Flecha.Checked := True;
end;

procedure Tfn0_conf_editor.TBXItem1Click(Sender: TObject);
var
  LS: TFileStream;
begin
  LS := TFileStream.Create('c:\x11.dfm', fmCreate);
  try
    LS.WriteComponent(disenador.DesignControl);
  finally
    LS.Free;
  end;
end;

procedure Tfn0_conf_editor.TBXItem2Click(Sender: TObject);
var
  LS: TFileStream;
  var_i : Integer;
begin
  //Eliminar todos los controles
  For var_i := 1 to disenador.designControl.ControlCount do
    disenador.designControl.Controls[0].Destroy;
  //Eliminar todos los componentes
  For var_i := 1 to disenador.designControl.ComponentCount do
  Try
    disenador.designControl.Components[disenador.designControl.ComponentCount - 1].Destroy;
  Except
  End;
  //Llamarla
  LS := TFileStream.Create('c:\x11.dfm', fmOpenRead);
  try
    LS.ReadComponent(disenador.designControl);
  finally
    LS.Free;
  end;
end;

procedure Tfn0_conf_editor.FormCreate(Sender: TObject);
begin
	Insertar_Palabras(Self, WKLenguaje);
end;

initialization
  RegisterClasses([TPCPFrame, TButton

  ]);
end.

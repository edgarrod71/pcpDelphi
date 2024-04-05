unit un1_form_pago_pers_bonos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl;

type
  Tfn1_form_pago_pers_bonos = class(T_fvent_child)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_pers_bonos: Tfn1_form_pago_pers_bonos;

implementation

{$R *.DFM}

end.

unit uin1_para_mone_trm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, Db, ImgList, Menus, TBX, ActnList, ExtCtrls,
  dfsSplitter, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl,
  dxDBGrid, dxPageControl, ufra_edit_reportes, Boxes, PCPFrame,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  SCLDBGrid;

type
  T_fvent_child1 = class(T_fvent_child)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _fvent_child1: T_fvent_child1;

implementation

{$R *.DFM}

end.

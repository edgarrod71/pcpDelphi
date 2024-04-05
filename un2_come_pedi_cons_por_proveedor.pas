unit un2_come_pedi_cons_por_proveedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  dxTLClms, dxTL, TBXDkPanels, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, TB2Dock, TB2Toolbar, dxDBCtrl,
  dxDBGrid, dxPageControl, Boxes, PCPFrame, StdCtrls, SoCtrls, SCLDBLabel,
  ufra_edit_reportes, SCLDBGrid;

type
  Tfn2_come_pedi_cons_por_proveedor = class(T_fvent_child)
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_come_pedi_cons_por_proveedor: Tfn2_come_pedi_cons_por_proveedor;

implementation

{$R *.DFM}

end.

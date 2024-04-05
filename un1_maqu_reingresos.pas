unit un1_maqu_reingresos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_maqu_traslados, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBTLCl, dxGrClms, dxDBGrid, dxDBCtrl,
  dxPageControl, ufra_edit_reportes, dfsSplitter, Boxes,
  PCPFrame, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, SCLDBGrid;

type
  Tfn1_maqu_reingresos = class(Tfn1_maqu_traslados)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_reingresos: Tfn1_maqu_reingresos;

implementation

{$R *.DFM}

end.

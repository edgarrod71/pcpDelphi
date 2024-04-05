unit un1_prod_orde_dist_paqu_resumen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uDecisionCube, mxDB, mxstore, PictureContainer, DBTables, Placemnt,
  AdvPanel, dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, Grids, mxgrid, mxpivsrc, dxEditor, dxEdLib, dxDBELib, StdCtrls,
  SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, Boxes,
  PCPFrame;

type
  Tfn1_prod_orde_dist_paqu_resumen = class(TfDecisionCube)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_orde_dist_paqu_resumen: Tfn1_prod_orde_dist_paqu_resumen;

implementation

{$R *.DFM}

end.

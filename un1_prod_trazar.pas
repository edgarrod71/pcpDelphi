unit un1_prod_trazar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_prod_avan_general, PictureContainer, DBTables, Placemnt, AdvPanel,
  dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  ufra_mens_atencion, ufra_prod_resp_lote_proceso, dxEditor, dxEdLib,
  StdCtrls, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit, Boxes,
  PCPFrame, dxDBELib, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar;

type
  Tfn1_prod_trazar = class(Tfn1_prod_avan_general)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_trazar: Tfn1_prod_trazar;

implementation

{$R *.DFM}

end.

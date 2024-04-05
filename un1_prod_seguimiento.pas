unit un1_prod_seguimiento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_prod_padre, PictureContainer, DBTables, Placemnt, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, StdCtrls,
  SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit, Boxes, PCPFrame,
  dxEditor, dxEdLib, dxDBELib, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar;

type
  Tfn1_prod_estado = class(Tfn1_prod_padre)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_estado: Tfn1_prod_estado;

implementation

{$R *.DFM}

end.

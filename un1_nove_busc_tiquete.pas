unit un1_nove_busc_tiquete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, Placemnt, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar;

type
  T_fvent_modal1 = class(T_fvent_modal)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _fvent_modal1: T_fvent_modal1;

implementation

{$R *.DFM}

end.

unit un0_accesos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, SoCtrls, SCLDBLabel, ExtCtrls, StdCtrls, TBX, TB2Item,
  TB2Dock, TB2Toolbar, Boxes, PCPProceso;

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

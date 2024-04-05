unit UFN1_Impr_Tiquetes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal_alone, PictureContainer, DBTables, AdvPanel,
  dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  ExtCtrls, dxEditor, dxEdLib, dxDBELib, SoCtrls, SCLDBLabel, StdCtrls,
  TBX, TB2Item, TB2Dock, TB2Toolbar, Boxes, PCPProceso;

type
  TFN1_Impr_Tiquetes = class(T_fvent_modal_alone)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Impr_Tiquetes: TFN1_Impr_Tiquetes;

implementation

{$R *.DFM}

end.

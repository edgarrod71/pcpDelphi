unit Un1_para_anulaciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, Placemnt, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPFrame;

type
  TFn1_para_anulaciones = class(T_fvent_modal)
    PCPFrame1: TPCPFrame;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fn1_para_anulaciones: TFn1_para_anulaciones;

implementation

{$R *.DFM}

end.

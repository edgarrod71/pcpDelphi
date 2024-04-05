unit ufra_disenar;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ELDsgnr, Menus, ExtCtrls, Boxes, PCPFrame;

type
  Tffra_disenar = class(TFrame)
    PCPFrame1: TPCPFrame;
    ELDesigner1: TELDesigner;
    ELDesignPanel1: TELDesignPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.

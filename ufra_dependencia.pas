unit ufra_dependencia;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame;

type
  Tffra_dependencias = class(TFrame)
    pane_depe_1: TPCPFrame;
    dfsSplitter4: TdfsSplitter;
    pane_depe_2: TPCPFrame;
    Panel1: TPanel;
    Panel2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.

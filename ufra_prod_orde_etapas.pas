unit ufra_prod_orde_etapas;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, SoCtrls, SCLDBLabel, StdCtrls,
  DBCtrls, ExtCtrls, RxLookup, PCPLookUpComboEdit;

type
  Tffra_prod_orde_etapas = class(TFrame)
    Panel1: TPanel;
    DBText1: TDBText;
    SCLDBLabel4: TSCLDBLabel;
    grid_etapa: TdxDBGrid;
    SCLDBLabel1: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.

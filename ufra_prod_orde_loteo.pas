unit ufra_prod_orde_loteo;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, PCPLookUpComboEdit, dxExEdtr, dxEdLib, dxDBELib, dxCntner,
  dxEditor, ufra_refe_material, StdCtrls, SoCtrls, SCLDBLabel, TB2Item,
  TBX, TB2Dock, TB2Toolbar, ufra_mens_atencion;

type
  Tffra_prod_orde_loteo = class(TFrame)
    fram_mens_material: Tffra_mens_atencion;
    TBXDock2: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem28: TTBXItem;
    TBXSeparatorItem13: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem8: TTBXItem;
    TBXItem7: TTBXItem;
    TBControlItem1: TTBControlItem;
    TBControlItem2: TTBControlItem;
    TBControlItem3: TTBControlItem;
    TBControlItem4: TTBControlItem;
    TBControlItem5: TTBControlItem;
    SCLDBLabel5: TSCLDBLabel;
    fram_refe_material: Tffra_refe_material;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    chec_lote_color: TdxDBCheckEdit;
    comb_refe_color: TPCPLookUpComboEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses _MDI;

{$R *.DFM}

end.

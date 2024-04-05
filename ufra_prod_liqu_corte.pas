unit ufra_prod_liqu_corte;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxPageControl, ExtCtrls, ufra_refe_material, ufra_prod_sele_lote,
  RxMemDS, Db, DBTables, ufra_prod_resp_lote_proceso, ufra_prod_maestro,
  Boxes, PCPFrame, Grids, BaseGrid, AdvGrid, AdvCGrid, DBActns, ActnList,
  TB2Dock, TB2Toolbar, TBX, TB2Item, SCLColumnGrid;

type
  Tffra_prod_liqu_corte = class(TFrame)
    fram_produccion: Tffra_prod_maestro;
    PCPFrame1: TPCPFrame;
    grid: TSCLColumnGrid;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    ActionList1: TActionList;
    acti_cancelar: TDataSetCancel;
    acti_guardar: TDataSetPost;
    acti_insertar: TAction;
    acti_eliminar: TAction;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
  end;

implementation

uses _func_varias, _MDI, _func_pcp;

{$R *.DFM}
// Procedimientos coumnes frames de ordenes de produccion
//....................................................................

{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_liqu_corte.Create(Owner : TComponent);
Begin
    //Heredar la creación    
    Inherited Create(Owner);
    fram_produccion.SetProcesoActual(7);
    //Inicializar grid
    with grid do
    Begin
          SetTotalColumn(Columns[ColumnByName['CANT_RECIBIDA'].Index]);
          SetTotalColumn(Columns[ColumnByName['TOTA_USADO'].Index]);
          SetTotalColumn(Columns[ColumnByName['SALDO'].Index]);
    End;
End;

end.

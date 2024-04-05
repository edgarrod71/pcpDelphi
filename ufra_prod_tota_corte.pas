unit ufra_prod_tota_corte;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, BaseGrid, AdvGrid, AdvCGrid, SCLColumnGrid;

type
  Tffra_prod_corte_tota = class(TFrame)
    grid: TSCLColumnGrid;
    quer_cons_unidades: TQuery;
    quer_tallas: TQuery;
    quer_colores: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.

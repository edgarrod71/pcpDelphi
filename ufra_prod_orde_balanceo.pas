unit ufra_prod_orde_balanceo;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ufra_prod_maestro;

type
  Tffra_prod_orde_balanceo = class(TFrame)
    fram_produccion: Tffra_prod_maestro;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.

unit ufra_prod_lanz_of;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ufra_prod_maestro, dxPageControl, Grids, BaseGrid, AdvGrid,
  AdvCGrid, ufra_prod_list_oper_costura;

type
  Tffra_prod_lanz_of = class(TFrame)
    fram_produccion: Tffra_prod_maestro;
    page: TdxPageControl;
    page_dist_paquetes: TdxTabSheet;
    page_list_operaciones: TdxTabSheet;
    fram_listado: Tffra_prod_list_oper_costura;
    procedure fram_lotecomb_nume_loteChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;    
  end;

implementation

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_lanz_of.Create(Owner : TComponent);
Begin
    //Heredar la creación    
    Inherited Create(Owner);
    fram_produccion.SetProcesoActual(9);
    page.activePage := page_list_operaciones;
End;

procedure Tffra_prod_lanz_of.fram_lotecomb_nume_loteChange(
  Sender: TObject);
begin
  fram_produccion.fram_lotecomb_nume_loteChange(Sender);
  Fram_listado.doEjecutarFrame(fram_produccion.data_prod_ordenes.dataSet.FieldByName('cons_prod_orden').asInteger,
        fram_produccion.myTabla_ventana.FieldByName('cons_prod_lote').asInteger);
end;

end.

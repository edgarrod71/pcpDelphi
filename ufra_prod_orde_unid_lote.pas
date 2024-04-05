unit ufra_prod_orde_unid_lote;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ufra_prod_orde_unidades, Grids, BaseGrid, AdvGrid, AdvCGrid,
  SCLColumnGrid;

type
  Tffra_prod_orde_unid_lote = class(tframe)
    fram_unidades: Tffra_prod_orde_unidades;
    procedure fram_unidadesResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure doEjecutarFrame(cons_prod_orden, cons_prod_lote, cons_refe_material, cons_proceso : Integer;
        peSaveToFile : String = '');
  end;

implementation

Procedure Tffra_prod_orde_unid_lote.doEjecutarFrame(cons_prod_orden, cons_prod_lote, cons_refe_material,
        cons_proceso : Integer; peSaveToFile : String = '');
Begin
     //Parametros
     fram_unidades.canEdit := False;
     fram_unidades.doEjecutarFrameLote(cons_prod_orden, cons_prod_lote, cons_Refe_material, False, peSaveToFile);
End;     

{$R *.DFM}
{****************************************************************
Procedimiento   : fram_unidadesResize
Objetivo        : Ajustar el tamaño del frame interno
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_unid_lote.fram_unidadesResize(Sender: TObject);
begin
        fram_unidades.height := height;
        fram_unidades.width := Width;
end;

end.
 
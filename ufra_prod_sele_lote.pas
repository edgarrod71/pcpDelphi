unit ufra_prod_sele_lote;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, PCPLookUpComboEdit, StdCtrls, SoCtrls, SCLDBLabel, Db, DBTables;

type
  Tffra_prod_sele_lote = class(TFrame)
    padr_labe_nume_lote: TSCLDBLabel;
    comb_nume_lote: TPCPLookUpComboEdit;
    quer_lotes: TQuery;
    data_lotes: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
  end;

implementation

uses _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_sele_lote.Create(Owner : TComponent);
Begin
        Inherited Create(Owner);
        //Colores
        AutoHints(Self);
        //Abrir la consulta
        quer_lotes.Open;
End;


end.

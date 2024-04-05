unit un1_prod_proc_paqu_tipos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_meto_procesos1, PictureContainer, DBTables, AdvPanel,
  dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  dxEdLib, dxDBELib, dxEditor, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls,
  TB2Item, TBX, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, Boxes,
  PCPFrame, PCPProceso;

type
  Tfn1_prod_proc_paqu_tipos1 = class(Tfn1_meto_procesos1)
    quer_prod_paqu_tipos: TQuery;
    quer_prod_paqu_tiposCONS_PROD_PAQU_TIPO: TIntegerField;
    quer_prod_paqu_tiposNOMB_PROD_PAQU_TIPO: TStringField;
    data_prod_paqu_tipos: TDataSource;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_proc_paqu_tipos1: Tfn1_prod_proc_paqu_tipos1;

implementation

uses _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 18 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_prod_proc_paqu_tipos1.FormCreate(Sender: TObject);
begin
  inherited;
  AbrirDataSet(quer_prod_paqu_tipos);
end;

end.

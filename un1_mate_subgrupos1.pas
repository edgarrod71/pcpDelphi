unit un1_mate_subgrupos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, Boxes, PCPProceso;

type
  Tfn1_mate_subgrupos1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    Tabla_VentanaCONS_MATE_SUBGRUPO: TIntegerField;
    Tabla_VentanaCONS_MATE_GRUPO: TIntegerField;
    Tabla_VentanaCODI_MATE_SUBGRUPO: TStringField;
    Tabla_VentanaNOMB_MATE_SUBGRUPO: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel4: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    quer_mate_grupos: TQuery;
    data_mate_grupos: TDataSource;
    quer_mate_gruposCONS_MATE_GRUPO: TIntegerField;
    quer_mate_gruposNOMB_MATE_GRUPO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_mate_subgrupos1: Tfn1_mate_subgrupos1;

implementation

uses _func_varias;

{$R *.DFM}

procedure Tfn1_mate_subgrupos1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas adicionales
  AbrirDataSet(quer_mate_grupos);
end;

end.

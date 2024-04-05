unit un1_mate_referencias1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, Boxes, PCPProceso;

type
  Tfn1_mate_referencias1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    PCPLookUpComboEdit3: TPCPLookUpComboEdit;
    dxDBMemo1: TdxDBMemo;
    Tabla_VentanaCONS_MATE_REFERENCIA: TIntegerField;
    Tabla_VentanaCONS_MATE_GRUPO: TIntegerField;
    Tabla_VentanaCONS_MATE_SUBGRUPO: TIntegerField;
    Tabla_VentanaCODI_MATE_REFERENCIA: TStringField;
    Tabla_VentanaNOMB_MATE_REFERENCIA: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaCONS_UNID_MEDIDA: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    quer_mate_grupos: TQuery;
    quer_mate_subgrupos: TQuery;
    data_mate_grupos: TDataSource;
    data_mate_subgrupos: TDataSource;
    quer_mate_gruposCONS_MATE_GRUPO: TIntegerField;
    quer_mate_gruposNOMB_MATE_GRUPO: TStringField;
    quer_mate_subgruposCONS_MATE_SUBGRUPO: TIntegerField;
    quer_mate_subgruposNOMB_MATE_SUBGRUPO: TStringField;
    quer_unid_medida: TQuery;
    quer_unid_medidaCONS_UNID_MEDIDA: TIntegerField;
    quer_unid_medidaNOMB_UNID_MEDIDA: TStringField;
    data_unid_medida: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_mate_referencias1: Tfn1_mate_referencias1;

implementation

uses _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_mate_referencias1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  AbrirDataSet(quer_mate_grupos);
  AbrirDataSet(quer_mate_subgrupos);
  AbrirDataSet(quer_unid_medida);
end;

end.

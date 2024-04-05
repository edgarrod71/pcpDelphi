unit un1_insu_referencias1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, Boxes, PCPProceso;

type
  Tfn1_insu_referencias1 = class(T_fvent_modal)
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
    quer_insu_grupos: TQuery;
    quer_insu_subgrupos: TQuery;
    quer_inve_unidades: TQuery;
    data_insu_grupos: TDataSource;
    data_insu_subgrupos: TDataSource;
    data_inve_unidades: TDataSource;
    quer_insu_gruposCONS_INSU_GRUPO: TIntegerField;
    quer_insu_gruposNOMB_INSU_GRUPO: TStringField;
    quer_insu_subgruposCONS_INSU_SUBGRUPO: TIntegerField;
    quer_insu_subgruposNOMB_INSU_SUBGRUPO: TStringField;
    quer_inve_unidadesCONS_UNID_MEDIDA: TIntegerField;
    quer_inve_unidadesNOMB_UNID_MEDIDA: TStringField;
    Tabla_VentanaCONS_INSU_REFERENCIA: TIntegerField;
    Tabla_VentanaCONS_INSU_GRUPO: TIntegerField;
    Tabla_VentanaCONS_INSU_SUBGRUPO: TIntegerField;
    Tabla_VentanaCODI_INSU_REFERENCIA: TStringField;
    Tabla_VentanaNOMB_INSU_REFERENCIA: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaCONS_UNID_MEDIDA: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_insu_referencias1: Tfn1_insu_referencias1;

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
procedure Tfn1_insu_referencias1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  AbrirDataSet(quer_insu_grupos);
  AbrirDataSet(quer_insu_subgrupos);
  AbrirDataSet(quer_inve_unidades);
end;

end.

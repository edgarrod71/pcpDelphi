unit un1_mate_unid_medida1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit;

type
  Tfn1_mate_unid_medida1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    quer_tipo_unid_medida: TQuery;
    data_tipo_unid_medida: TDataSource;
    quer_tipo_unid_medidaCONS_TIPO_UNID_MEDIDA: TIntegerField;
    quer_tipo_unid_medidaNOMB_TIPO_UNID_MEDIDA: TStringField;
    Tabla_VentanaCONS_UNID_MEDIDA: TIntegerField;
    Tabla_VentanaCONS_TIPO_UNID_MEDIDA: TIntegerField;
    Tabla_VentanaCODI_UNID_MEDIDA: TStringField;
    Tabla_VentanaNOMB_UNID_MEDIDA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_mate_unid_medida1: Tfn1_mate_unid_medida1;

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
procedure Tfn1_mate_unid_medida1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  AbrirDataSet(quer_tipo_unid_medida);
end;

end.

unit un1_cali_defectos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, ufra_fotografiaDB, Boxes, PCPProceso, DBCtrls;

type
  Tfn1_cali_defectos1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    Tabla_VentanaCONS_CALI_DEFECTO: TIntegerField;
    Tabla_VentanaCODI_CALI_DEFECTO: TStringField;
    Tabla_VentanaNOMB_CALI_DEFECTO: TStringField;
    Tabla_VentanaESTA_ACTIVO: TIntegerField;
    Tabla_VentanaES_IMPUTABLE: TIntegerField;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    Tabla_VentanaTIEMPO: TFloatField;
    Tabla_VentanaVALOR: TFloatField;
    SCLDBLabel3: TSCLDBLabel;
    edit_tiempo: TdxDBCurrencyEdit;
    SCLDBLabel4: TSCLDBLabel;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_cali_defectos1: Tfn1_cali_defectos1;

implementation

uses _MDI, _Traductor;

{$R *.DFM}

procedure Tfn1_cali_defectos1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

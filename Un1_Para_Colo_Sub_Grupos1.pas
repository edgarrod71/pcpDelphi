unit Un1_Para_Colo_Sub_Grupos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, ExtCtrls,
  dxEditor, dxEdLib, dxDBELib, TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls,
  SoCtrls, SCLDBLabel, RxLookup, PCPLookUpComboEdit, Boxes,
  PCPProceso;

type
  TFn1_Para_Colo_Sub_Grupos1 = class(T_fvent_modal)
    Tabla_VentanaCONS_COLO_SUBGRUPO: TIntegerField;
    Tabla_VentanaCODI_COLO_SUBGRUPO: TStringField;
    Tabla_VentanaNOMB_COLO_SUBGRUPO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    DBDescripcion: TdxDBEdit;
    Que_grup_colores: TQuery;
    Que_grup_coloresCONS_COLO_GRUPO: TIntegerField;
    Que_grup_coloresCODI_COLO_GRUPO: TStringField;
    Que_grup_coloresNOMB_COLO_GRUPO: TStringField;
    Que_grup_coloresFECH_SISTEMA: TDateTimeField;
    Que_grup_coloresUSUA_SISTEMA: TStringField;
    DataQ_grup_colores: TDataSource;
    SCLDBLabel3: TSCLDBLabel;
    Look_grupo: TPCPLookUpComboEdit;
    Tabla_VentanaCONS_COLO_GRUPO: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fn1_Para_Colo_Sub_Grupos1: TFn1_Para_Colo_Sub_Grupos1;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFn1_Para_Colo_Sub_Grupos1.FormCreate(Sender: TObject);
begin
  inherited;
  //** Abrir consulta GRUPOS DE COLORES **//
  Que_grup_colores.open;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

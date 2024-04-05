unit UN1_Para_Colo_Tonos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, ExtCtrls,
  dxEditor, dxEdLib, dxDBELib, TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls,
  SoCtrls, SCLDBLabel, Boxes, PCPProceso;

type
  TFN1_Para_Colo_Tonos1 = class(T_fvent_modal)
    Tabla_VentanaCONS_COLO_TONO: TIntegerField;
    Tabla_VentanaCODI_COLO_TONO: TStringField;
    Tabla_VentanaNOMB_COLO_TONO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    DBDescripcion: TdxDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Colo_Tonos1: TFN1_Para_Colo_Tonos1;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Para_Colo_Tonos1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

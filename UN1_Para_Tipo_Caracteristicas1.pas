unit UN1_Para_Tipo_Caracteristicas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPProceso;

type
  TFN1_Para_Tipo_Caracteristicas1 = class(T_fvent_modal)
    Tabla_VentanaCONS_TIPO_CARACTERISTICA: TIntegerField;
    Tabla_VentanaCODI_TIPO_CARACTERISTICA: TStringField;
    Tabla_VentanaNOMB_TIPO_CARACTERISTICA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaOBSERVACIONES: TMemoField;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBMemo1: TdxDBMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Tipo_Caracteristicas1: TFN1_Para_Tipo_Caracteristicas1;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Para_Tipo_Caracteristicas1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

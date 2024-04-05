unit UN1_Pers_Movi_Tipo_Documento1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPProceso;

type
  TFN1_Pers_Movi_Tipo_Documento1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    DBDescripcion: TdxDBEdit;
    Tabla_VentanaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    Tabla_VentanaCODI_PERS_MOVI_TIPO_DOCUMENTO: TStringField;
    Tabla_VentanaNOMB_PERS_MOVI_TIPO_DOCUMENTO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaUSO: TStringField;
    SCLDBLabel15: TSCLDBLabel;
    edit_observaciones: TdxDBMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Movi_Tipo_Documento1: TFN1_Pers_Movi_Tipo_Documento1;

implementation

uses _Traductor;

{$R *.DFM}

procedure TFN1_Pers_Movi_Tipo_Documento1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

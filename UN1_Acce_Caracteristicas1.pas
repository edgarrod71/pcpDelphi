unit UN1_Acce_Caracteristicas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPProceso;

type
  TFN1_Acce_Caracteristicas1 = class(T_fvent_modal)
    Tabla_VentanaCONS_ACCE_TIPO_CARACTERISTICA: TIntegerField;
    Tabla_VentanaCODI_ACCE_TIPO_CARACTERISTICA: TStringField;
    Tabla_VentanaNOMB_ACCE_TIPO_CARACTERISTICA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    DBNombre: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBMemo1: TdxDBMemo;
    Tabla_VentanaOBSERVACIONES: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Acce_Caracteristicas1: TFN1_Acce_Caracteristicas1;

implementation

{$R *.DFM}

end.

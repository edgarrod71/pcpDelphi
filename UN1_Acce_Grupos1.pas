unit UN1_Acce_Grupos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPProceso;

type
  TFN1_Acce_Grupos1 = class(T_fvent_modal)
    Tabla_VentanaCONS_ACCE_GRUPO: TIntegerField;
    Tabla_VentanaCODI_ACCE_GRUPO: TStringField;
    Tabla_VentanaNOMB_ACCE_GRUPO: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel1: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    DBNombre: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    DBObservaciones: TdxDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Acce_Grupos1: TFN1_Acce_Grupos1;

implementation

{$R *.DFM}

end.

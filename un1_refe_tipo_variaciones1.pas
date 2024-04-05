unit un1_refe_tipo_variaciones1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPProceso;

type
  Tfn1_refe_tipo_variaciones1 = class(T_fvent_modal)
    Panel1: TPanel;
    Tabla_VentanaCONS_REFE_TIPO_VARIACION: TIntegerField;
    Tabla_VentanaCODI_REFE_TIPO_VARIACION: TStringField;
    Tabla_VentanaNOMB_REFE_TIPO_VARIACION: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_tipo_variaciones1: Tfn1_refe_tipo_variaciones1;

implementation

{$R *.DFM}

end.

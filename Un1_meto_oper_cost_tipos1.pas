unit Un1_meto_oper_cost_tipos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPProceso;

type
  Tfn1_meto_oper_cost_tipos1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Tabla_VentanaCONS_OPER_COST_TIPO: TIntegerField;
    Tabla_VentanaCODI_OPER_COST_TIPO: TStringField;
    Tabla_VentanaNOMB_OPER_COST_TIPO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaDESCRIPCION: TStringField;
    SCLDBLabel3: TSCLDBLabel;
    dxDBMemo1: TdxDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_meto_oper_cost_tipos1: Tfn1_meto_oper_cost_tipos1;

implementation

{$R *.DFM}

end.

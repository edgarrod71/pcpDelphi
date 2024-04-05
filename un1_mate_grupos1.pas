unit un1_mate_grupos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPProceso;

type
  Tfn1_mate_grupos1 = class(T_fvent_modal)
    Tabla_VentanaCONS_MATE_GRUPO: TIntegerField;
    Tabla_VentanaCODI_MATE_GRUPO: TStringField;
    Tabla_VentanaNOMB_MATE_GRUPO: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Panel1: TPanel;
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
  fn1_mate_grupos1: Tfn1_mate_grupos1;

implementation

{$R *.DFM}

end.

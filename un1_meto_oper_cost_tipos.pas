unit un1_meto_oper_cost_tipos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  Tfn1_meto_oper_cost_tipos = class(T_fvent_child)
    consultaCONS_OPER_COST_TIPO: TIntegerField;
    consultaCODI_OPER_COST_TIPO: TStringField;
    consultaNOMB_OPER_COST_TIPO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_OPER_COST_TIPO: TdxDBGridMaskColumn;
    padr_gridCODI_OPER_COST_TIPO: TdxDBGridMaskColumn;
    padr_gridNOMB_OPER_COST_TIPO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaDESCRIPCION: TStringField;
    padr_gridDESCRIPCION: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_meto_oper_cost_tipos: Tfn1_meto_oper_cost_tipos;

implementation

{$R *.DFM}

end.

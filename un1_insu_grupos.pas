unit un1_insu_grupos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, ufra_edit_reportes, Boxes, PCPFrame, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid;

type
  Tfn1_insu_grupos = class(T_fvent_child)
    consultaCONS_INSU_GRUPO: TIntegerField;
    consultaCODI_INSU_GRUPO: TStringField;
    consultaNOMB_INSU_GRUPO: TStringField;
    consultaOBSERVACIONES: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_INSU_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_INSU_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_INSU_GRUPO: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_insu_grupos: Tfn1_insu_grupos;

implementation

{$R *.DFM}

end.

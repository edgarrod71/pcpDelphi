unit un1_refe_tipo_variaciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, ufra_edit_reportes, dfsSplitter, Boxes,
  PCPFrame, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, SCLDBGrid;

type
  Tfn1_refe_tipo_variaciones = class(T_fvent_child)
    consultaCONS_REFE_TIPO_VARIACION: TIntegerField;
    consultaCODI_REFE_TIPO_VARIACION: TStringField;
    consultaNOMB_REFE_TIPO_VARIACION: TStringField;
    consultaOBSERVACIONES: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    padr_gridCODI_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_tipo_variaciones: Tfn1_refe_tipo_variaciones;

implementation

{$R *.DFM}

end.

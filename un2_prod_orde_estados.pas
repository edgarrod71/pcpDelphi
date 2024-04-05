unit un2_prod_orde_estados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, Db, ImgList, Menus, TBX, ActnList, ExtCtrls,
  dfsSplitter, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl,
  dxDBGrid, dxPageControl, dxDBTLCl, dxGrClms, ufra_edit_reportes, Boxes,
  PCPFrame, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, SCLDBGrid;

type
  Tfn2_prod_orde_estados = class(T_fvent_child)
    consultaCONS_PROD_ESTADO: TIntegerField;
    consultaCODI_PROD_ESTADO: TStringField;
    consultaNOMB_PROD_ESTADO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_PROD_ESTADO: TdxDBGridMaskColumn;
    padr_gridCODI_PROD_ESTADO: TdxDBGridMaskColumn;
    padr_gridNOMB_PROD_ESTADO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_prod_orde_estados: Tfn2_prod_orde_estados;

implementation

{$R *.DFM}

end.

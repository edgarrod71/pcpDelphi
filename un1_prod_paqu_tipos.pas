unit un1_prod_paqu_tipos;

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
  Tfn1_prod_paqu_tipos = class(T_fvent_child)
    consultaCONS_PROD_PAQU_TIPO: TIntegerField;
    consultaCODI_PROD_PAQU_TIPO: TStringField;
    consultaNOMB_PROD_PAQU_TIPO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_PROD_PAQU_TIPO: TdxDBGridMaskColumn;
    padr_gridCODI_PROD_PAQU_TIPO: TdxDBGridMaskColumn;
    padr_gridNOMB_PROD_PAQU_TIPO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_paqu_tipos: Tfn1_prod_paqu_tipos;

implementation

{$R *.DFM}

end.

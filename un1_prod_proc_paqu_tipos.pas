unit un1_prod_proc_paqu_tipos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_meto_procesos, dxDBGrid, DBTables, dxCntner, dxExEdtr,
  TB2Item, SCLPropiedadesForm, Db, ImgList, Menus, TBX, ActnList, ExtCtrls,
  dfsSplitter, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBTLCl,
  dxGrClms, dxDBCtrl, dxPageControl, ufra_edit_reportes, SCLTabs, Boxes,
  PCPFrame, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, SCLDBGrid;

type
  Tfn1_prod_proc_paqu_tipos = class(Tfn1_meto_procesos)
    consultaCONS_PROD_PAQU_TIPO: TIntegerField;
    quer_prod_paqu_tipos: TQuery;
    quer_prod_paqu_tiposCONS_PROD_PAQU_TIPO: TIntegerField;
    quer_prod_paqu_tiposNOMB_PROD_PAQU_TIPO: TStringField;
    consultaNOMB_PROD_PAQU_TIPO: TStringField;
    padr_gridCONS_PROD_PAQU_TIPO: TdxDBGridColumn;
    padr_gridNOMB_PROD_PAQU_TIPO: TdxDBGridColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_proc_paqu_tipos: Tfn1_prod_proc_paqu_tipos;

implementation

{$R *.DFM}

end.

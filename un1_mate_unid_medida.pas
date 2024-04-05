unit un1_mate_unid_medida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, ufra_edit_reportes, Boxes, PCPFrame, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid;

type
  Tfn1_mate_unid_medida = class(T_fvent_child)
    consultaCONS_UNID_MEDIDA: TIntegerField;
    consultaCONS_TIPO_UNID_MEDIDA: TIntegerField;
    consultaCODI_TIPO_UNID_MEDIDA: TStringField;
    consultaNOMB_TIPO_UNID_MEDIDA: TStringField;
    consultaCODI_UNID_MEDIDA: TStringField;
    consultaNOMB_UNID_MEDIDA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridCODI_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridNOMB_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridCONS_TIPO_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridCODI_TIPO_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridNOMB_TIPO_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_mate_unid_medida: Tfn1_mate_unid_medida;

implementation

{$R *.DFM}

end.

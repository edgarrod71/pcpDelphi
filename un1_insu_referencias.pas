unit un1_insu_referencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, Db, dxCntner,
  dxExEdtr, TB2Item, SCLPropiedadesForm, DBTables, ImgList, Menus, TBX,
  ActnList, ExtCtrls, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar,
  dxPageControl, ufra_edit_reportes, Boxes, PCPFrame, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid;

type
  Tfn1_insu_referencias = class(T_fvent_child)
    consultaCONS_INSU_REFERENCIA: TIntegerField;
    consultaCONS_INSU_GRUPO: TIntegerField;
    consultaCODI_INSU_GRUPO: TStringField;
    consultaNOMB_INSU_GRUPO: TStringField;
    consultaCONS_INSU_SUBGRUPO: TIntegerField;
    consultaCODI_INSU_SUBGRUPO: TStringField;
    consultaNOMB_INSU_SUBGRUPO: TStringField;
    consultaCODI_INSU_REFERENCIA: TStringField;
    consultaNOMB_INSU_REFERENCIA: TStringField;
    consultaOBSERVACIONES: TStringField;
    consultaCONS_UNID_MEDIDA: TIntegerField;
    consultaCODI_UNID_MEDIDA: TStringField;
    consultaNOMB_UNID_MEDIDA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_INSU_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_INSU_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_INSU_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_INSU_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_INSU_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_INSU_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_INSU_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_INSU_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_INSU_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridMaskColumn;
    padr_gridCONS_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridCODI_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridNOMB_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_insu_referencias: Tfn1_insu_referencias;

implementation

{$R *.DFM}

end.

unit un1_mate_referencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, ufra_edit_reportes, Boxes, PCPFrame, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid;

type
  Tfn1_mate_referencias = class(T_fvent_child)
    consultaCONS_MATE_REFERENCIA: TIntegerField;
    consultaCONS_MATE_GRUPO: TIntegerField;
    consultaCODI_MATE_GRUPO: TStringField;
    consultaNOMB_MATE_GRUPO: TStringField;
    consultaCONS_MATE_SUBGRUPO: TIntegerField;
    consultaCODI_MATE_SUBGRUPO: TStringField;
    consultaNOMB_MATE_SUBGRUPO: TStringField;
    consultaCODI_MATE_REFERENCIA: TStringField;
    consultaNOMB_MATE_REFERENCIA: TStringField;
    consultaOBSERVACIONES: TStringField;
    consultaCONS_UNID_MEDIDA: TIntegerField;
    consultaCODI_UNID_MEDIDA: TStringField;
    consultaNOMB_UNID_MEDIDA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridCODI_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridNOMB_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_mate_referencias: Tfn1_mate_referencias;

implementation

{$R *.DFM}

end.

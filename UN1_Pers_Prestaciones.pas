unit UN1_Pers_Prestaciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, ufra_edit_reportes, Boxes, PCPFrame, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid;

type
  TFN1_Pers_Prestaciones = class(T_fvent_child)
    consultaSALU_EMPRESA: TSmallintField;
    consultaPENS_EMPLEADO: TSmallintField;
    consultaCAJA_EMPRESA: TSmallintField;
    consultaTOTA_PARAFISCALES: TSmallintField;
    consultaPRIMA: TSmallintField;
    consultaPRIM_EXTRA: TSmallintField;
    consultaVACACIONES: TSmallintField;
    consultaCESANTIAS: TSmallintField;
    consultaINTE_CESANTIAS: TSmallintField;
    consultaOTROS: TSmallintField;
    consultaTOTA_PRESTACIONES: TSmallintField;
    consultaSENA_EMPRESA: TSmallintField;
    consultaARP_EMPRESA: TSmallintField;
    consultaICBF_EMPRESA: TSmallintField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridSALU_EMPRESA: TdxDBGridMaskColumn;
    padr_gridPENS_EMPLEADO: TdxDBGridMaskColumn;
    padr_gridCAJA_EMPRESA: TdxDBGridMaskColumn;
    padr_gridTOTA_PARAFISCALES: TdxDBGridMaskColumn;
    padr_gridPRIMA: TdxDBGridMaskColumn;
    padr_gridPRIM_EXTRA: TdxDBGridMaskColumn;
    padr_gridVACACIONES: TdxDBGridMaskColumn;
    padr_gridCESANTIAS: TdxDBGridMaskColumn;
    padr_gridINTE_CESANTIAS: TdxDBGridMaskColumn;
    padr_gridOTROS: TdxDBGridMaskColumn;
    padr_gridTOTA_PRESTACIONES: TdxDBGridMaskColumn;
    padr_gridSENA_EMPRESA: TdxDBGridMaskColumn;
    padr_gridARP_EMPRESA: TdxDBGridMaskColumn;
    padr_gridICBF_EMPRESA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Prestaciones: TFN1_Pers_Prestaciones;

implementation

{$R *.DFM}

end.

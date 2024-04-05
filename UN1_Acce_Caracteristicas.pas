unit UN1_Acce_Caracteristicas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm,
  Db, DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  TFN1_Acce_Caracteristicas = class(T_fvent_child)
    consultaCONS_ACCE_TIPO_CARACTERISTICA: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_ACCE_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    padr_gridCODI_ACCE_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    padr_gridNOMB_ACCE_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaCODI_ACCE_TIPO_CARACTERISTICA: TStringField;
    consultaNOMB_ACCE_TIPO_CARACTERISTICA: TStringField;
    consultaOBSERVACIONES: TMemoField;
    padr_gridOBSERVACIONES: TdxDBGridBlobColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Acce_Caracteristicas: TFN1_Acce_Caracteristicas;

implementation

{$R *.DFM}

end.

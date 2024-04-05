unit UN1_Acce_Grupos;

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
  TFN1_Acce_Grupos = class(T_fvent_child)
    consultaCONS_ACCE_GRUPO: TIntegerField;
    consultaCODI_ACCE_GRUPO: TStringField;
    consultaNOMB_ACCE_GRUPO: TStringField;
    consultaOBSERVACIONES: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_ACCE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_ACCE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_ACCE_GRUPO: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Acce_Grupos: TFN1_Acce_Grupos;

implementation

{$R *.DFM}

end.

unit UN1_Pers_Historial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms;

type
  TFN1_Pers_Historial = class(T_fvent_child)
    consultaCODI_PERSONAL: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaTEXT_ANOTACION: TMemoField;
    consultaPRIM_APELLIDO: TStringField;
    consultaSEGU_APELLIDO: TStringField;
    consultaNOMBRES: TStringField;
    consultaCODI_AREA: TStringField;
    consultaCODI_PLANTA: TStringField;
    consultaCODI_SECCION: TStringField;
    consultaCODI_BODEGA: TStringField;
    consultaCODI_TURNO: TStringField;
    consultaCODI_CARGO: TStringField;
    consultaNOMB_COMPLETO: TStringField;
    consultaNOMB_AREA: TStringField;
    consultaNOMB_PLANTA: TStringField;
    consultaNOMB_SECCION: TStringField;
    consultaNOMB_BODEGA: TStringField;
    consultaNOMB_CARGO: TStringField;
    padr_gridCODI_PERSONAL: TdxDBGridMaskColumn;
    padr_gridPRIM_APELLIDO: TdxDBGridMaskColumn;
    padr_gridSEGU_APELLIDO: TdxDBGridMaskColumn;
    padr_gridNOMBRES: TdxDBGridMaskColumn;
    padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    padr_gridCODI_AREA: TdxDBGridMaskColumn;
    padr_gridNOMB_AREA: TdxDBGridMaskColumn;
    padr_gridCODI_PLANTA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLANTA: TdxDBGridMaskColumn;
    padr_gridCODI_SECCION: TdxDBGridMaskColumn;
    padr_gridNOMB_SECCION: TdxDBGridMaskColumn;
    padr_gridCODI_BODEGA: TdxDBGridMaskColumn;
    padr_gridNOMB_BODEGA: TdxDBGridMaskColumn;
    padr_gridCODI_TURNO: TdxDBGridMaskColumn;
    padr_gridCODI_CARGO: TdxDBGridMaskColumn;
    padr_gridNOMB_CARGO: TdxDBGridMaskColumn;
    padr_gridTEXT_ANOTACION: TdxDBGridMemoColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Historial: TFN1_Pers_Historial;

implementation

{$R *.DFM}

end.

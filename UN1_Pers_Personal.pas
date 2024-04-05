{ 05/03/2004 10:40:15 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:42 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Pers_Personal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, SCLPropiedadesForm, Db, DBTables, ImgList, Menus, TB2Item,
  TBX, ActnList, ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock,
  TBXDkPanels, dxCntner, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  dxPageControl, dxExEdtr, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  ufra_edit_reportes, Boxes, PCPFrame;

type
  TFN1_Pers_Personal = class(T_fvent_child)
    consultaCONS_PERSONAL: TIntegerField;
    consultaCODI_PERSONAL: TStringField;
    consultaPRIM_APELLIDO: TStringField;
    consultaSEGU_APELLIDO: TStringField;
    consultaNOMBRES: TStringField;
    consultaNOMB_COMPLETO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaNOMB_UBIC_TIPO: TStringField;
    consultaCODI_EMPRESA: TStringField;
    consultaNOMB_EMPRESA: TStringField;
    consultaCODI_AREA: TStringField;
    consultaNOMB_AREA: TStringField;
    consultaCODI_PLANTA: TStringField;
    consultaNOMB_PLANTA: TStringField;
    consultaCODI_LINEA: TStringField;
    consultaNOMB_LINEA: TStringField;
    consultaCODI_SECCION: TStringField;
    consultaNOMB_SECCION: TStringField;
    consultaCODI_BODEGA: TStringField;
    consultaNOMB_BODEGA: TStringField;
    consultaCODI_TURNO: TStringField;
    padr_gridCONS_PERSONAL: TdxDBGridMaskColumn;
    padr_gridCODI_PERSONAL: TdxDBGridMaskColumn;
    padr_gridPRIM_APELLIDO: TdxDBGridMaskColumn;
    padr_gridSEGU_APELLIDO: TdxDBGridMaskColumn;
    padr_gridNOMBRES: TdxDBGridMaskColumn;
    padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    padr_gridNOMB_UBIC_TIPO: TdxDBGridMaskColumn;
    padr_gridCODI_EMPRESA: TdxDBGridMaskColumn;
    padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn;
    padr_gridCODI_AREA: TdxDBGridMaskColumn;
    padr_gridNOMB_AREA: TdxDBGridMaskColumn;
    padr_gridCODI_PLANTA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLANTA: TdxDBGridMaskColumn;
    padr_gridCODI_LINEA: TdxDBGridMaskColumn;
    padr_gridNOMB_LINEA: TdxDBGridMaskColumn;
    padr_gridCODI_SECCION: TdxDBGridMaskColumn;
    padr_gridNOMB_SECCION: TdxDBGridMaskColumn;
    padr_gridCODI_BODEGA: TdxDBGridMaskColumn;
    padr_gridNOMB_BODEGA: TdxDBGridMaskColumn;
    padr_gridCODI_TURNO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaCODI_PERS_CARGO: TStringField;
    consultaNOMB_PERS_CARGO: TStringField;
    padr_gridCODI_PERS_CARGO: TdxDBGridColumn;
    padr_gridNOMB_PERS_CARGO: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Personal: TFN1_Pers_Personal;

implementation

uses _Traductor;
{$R *.DFM}

procedure TFN1_Pers_Personal.FormCreate(Sender: TObject);
begin
  inherited;
  padr_acti_nuevo.Enabled := False;
  padr_acti_eliminar.Enabled := False;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

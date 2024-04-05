unit n1_para_empresas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, ActnList, Db, ImgList, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, dxCntner, dxTL, dxDBCtrl, DBTables, dxDBGrid, Menus,
  dxTLClms, TBXDkPanels, SCLPropiedadesForm, dxDBTLCl, dxGrClms,
  dxPageControl, TBXLists, dxExEdtr, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  ufra_edit_reportes, Boxes, PCPFrame;

type
  TFN1_Para_Empresas = class(T_fvent_child)
    consultaCONS_EMPRESA: TIntegerField;
    consultaCODI_EMPRESA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaNOMB_EMPRESA: TStringField;
    consultaNUME_IDENTIFICACION: TStringField;
    consultaACTI_PRINCIPAL: TStringField;
    consultaREPR_LEGAL: TStringField;
    consultaCONS_PAIS: TIntegerField;
    consultaCODI_PAIS: TStringField;
    consultaNOMB_PAIS: TStringField;
    consultaCONS_DEPARTAMENTO: TIntegerField;
    consultaCODI_DEPARTAMENTO: TStringField;
    consultaNOMB_DEPARTAMENTO: TStringField;
    consultaCONS_CIUDAD: TIntegerField;
    consultaCODI_CIUDAD: TStringField;
    consultaNOMB_CIUDAD: TStringField;
    consultaDIRECCION: TStringField;
    consultaTELE_1: TStringField;
    consultaTELE_2: TStringField;
    consultaTELE_FAX: TStringField;
    consultaTELE_MOVIL: TStringField;
    consultaCORR_ELECTRONICO: TStringField;
    consultaPAGI_WEB: TStringField;
    padr_gridCONS_EMPRESA: TdxDBGridMaskColumn;
    padr_gridCODI_EMPRESA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn;
    padr_gridNUME_IDENTIFICACION: TdxDBGridMaskColumn;
    padr_gridACTI_PRINCIPAL: TdxDBGridMaskColumn;
    padr_gridREPR_LEGAL: TdxDBGridMaskColumn;
    padr_gridCONS_PAIS: TdxDBGridMaskColumn;
    padr_gridCODI_PAIS: TdxDBGridMaskColumn;
    padr_gridNOMB_PAIS: TdxDBGridMaskColumn;
    padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridCONS_CIUDAD: TdxDBGridMaskColumn;
    padr_gridCODI_CIUDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn;
    padr_gridDIRECCION: TdxDBGridMaskColumn;
    padr_gridTELE_1: TdxDBGridMaskColumn;
    padr_gridTELE_2: TdxDBGridMaskColumn;
    padr_gridTELE_FAX: TdxDBGridMaskColumn;
    padr_gridTELE_MOVIL: TdxDBGridMaskColumn;
    padr_gridCORR_ELECTRONICO: TdxDBGridMaskColumn;
    padr_gridPAGI_WEB: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Empresas: TFN1_Para_Empresas;

implementation

uses _Traductor;
{$R *.DFM}

procedure TFN1_Para_Empresas.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

{ 05/03/2004 10:40:59 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:06 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Bodegas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, Db,
  SCLPropiedadesForm, DBTables, ImgList, Menus, TB2Item, TBX, ActnList,
  ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock, TBXDkPanels, dxCntner,
  dxPageControl, dxExEdtr, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  ufra_edit_reportes, Boxes, PCPFrame;

type
  TFN1_Para_Bodegas = class(T_fvent_child)
    consultaCONS_BODEGA: TIntegerField;
    consultaCONS_EMPRESA: TIntegerField;
    consultaCODI_BODEGA: TStringField;
    consultaNOMB_BODEGA: TStringField;
    consultaCONS_PAIS: TIntegerField;
    consultaCONS_DEPARTAMENTO: TIntegerField;
    consultaCONS_CIUDAD: TIntegerField;
    consultaDIRECCION: TStringField;
    consultaTELE_1: TStringField;
    consultaTELE_2: TStringField;
    consultaFAX: TStringField;
    consultaTELE_MOVIL: TStringField;
    consultaRESPONSABLE: TStringField;
    consultaDESCRIPCION: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaNOMB_EMPRESA: TStringField;
    consultaNOMB_PAIS: TStringField;
    consultaNOMB_DEPARTAMENTO: TStringField;
    consultaNOMB_CIUDAD: TStringField;
    padr_gridCONS_BODEGA: TdxDBGridMaskColumn;
    padr_gridNOMB_BODEGA: TdxDBGridMaskColumn;
    padr_gridCODI_BODEGA: TdxDBGridMaskColumn;
    padr_gridDIRECCION: TdxDBGridMaskColumn;
    padr_gridTELE_1: TdxDBGridMaskColumn;
    padr_gridTELE_2: TdxDBGridMaskColumn;
    padr_gridFAX: TdxDBGridMaskColumn;
    padr_gridTELE_MOVIL: TdxDBGridMaskColumn;
    padr_gridRESPONSABLE: TdxDBGridMaskColumn;
    padr_gridDESCRIPCION: TdxDBGridMaskColumn;
    padr_gridCONS_EMPRESA: TdxDBGridMaskColumn;
    padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn;
    padr_gridCONS_PAIS: TdxDBGridMaskColumn;
    padr_gridNOMB_PAIS: TdxDBGridMaskColumn;
    padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridCONS_CIUDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaCODI_EMPRESA: TStringField;
    consultaCODI_PAIS: TStringField;
    consultaCODI_DEPARTAMENTO: TStringField;
    consultaCODI_CIUDAD: TStringField;
    padr_gridCODI_EMPRESA: TdxDBGridMaskColumn;
    padr_gridCODI_PAIS: TdxDBGridMaskColumn;
    padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridCODI_CIUDAD: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Bodegas: TFN1_Para_Bodegas;

implementation

uses _Traductor;
{$R *.DFM}

procedure TFN1_Para_Bodegas.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

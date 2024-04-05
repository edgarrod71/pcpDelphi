{ 05/03/2004 10:41:04 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:12 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Areas;

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
  TFN1_Para_Areas = class(T_fvent_child)
    consultaCODI_AREA: TStringField;
    consultaNOMB_AREA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaTELE_1: TStringField;
    consultaTELE_2: TStringField;
    consultaFAX: TStringField;
    consultaTELE_MOVIL: TStringField;
    consultaRESPONSABLE: TStringField;
    consultaDESCRIPCION: TStringField;
    consultaCONS_AREA: TIntegerField;
    padr_gridCONS_AREA: TdxDBGridMaskColumn;
    padr_gridCODI_AREA: TdxDBGridMaskColumn;
    padr_gridNOMB_AREA: TdxDBGridMaskColumn;
    padr_gridTELE_1: TdxDBGridMaskColumn;
    padr_gridTELE_2: TdxDBGridMaskColumn;
    padr_gridFAX: TdxDBGridMaskColumn;
    padr_gridTELE_MOVIL: TdxDBGridMaskColumn;
    padr_gridRESPONSABLE: TdxDBGridMaskColumn;
    padr_gridDESCRIPCION: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Areas: TFN1_Para_Areas;

implementation

uses _Traductor;
{$R *.DFM}

procedure TFN1_Para_Areas.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

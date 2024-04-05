{ 05/03/2004 10:41:34 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:39:04 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 18/02/2004 03:55:35 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Municipios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, SCLPropiedadesForm, Db, DBTables, ImgList, Menus, TB2Item,
  TBX, ActnList, ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock,
  TBXDkPanels, dxCntner, dxDBCtrl, dxDBGrid, dxPageControl, dxExEdtr,
  dxDBTLCl, dxGrClms, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  TFN1_Para_Municipios = class(T_fvent_child)
    consultaCODI_PAIS: TStringField;
    consultaNOMB_PAIS: TStringField;
    consultaCODI_DEPARTAMENTO: TStringField;
    consultaNOMB_DEPARTAMENTO: TStringField;
    consultaCODI_CIUDAD: TStringField;
    consultaNOMB_CIUDAD: TStringField;
    consultaCONS_CIUDAD: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCONS_DEPARTAMENTO: TIntegerField;
    consultaCONS_PAIS: TIntegerField;
    padr_gridCONS_PAIS: TdxDBGridMaskColumn;
    padr_gridCODI_PAIS: TdxDBGridMaskColumn;
    padr_gridNOMB_PAIS: TdxDBGridMaskColumn;
    padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridCONS_CIUDAD: TdxDBGridMaskColumn;
    padr_gridCODI_CIUDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Municipios: TFN1_Para_Municipios;

implementation

uses _Traductor;
{$R *.DFM}

procedure TFN1_Para_Municipios.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

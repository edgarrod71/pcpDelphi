{ 05/03/2004 10:41:09 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:31 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 23/02/2004 02:24:54 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 23/02/2004 12:48:06 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 23/02/2004 12:47:29 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
unit un1_refe_colores;

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
  Tfn1_refe_colores = class(T_fvent_child)
    consultaCONS_COLOR: TIntegerField;
    consultaCONS_COLO_GRUPO: TIntegerField;
    consultaCONS_COLO_SUBGRUPO: TIntegerField;
    consultaCONS_COLO_TONO: TIntegerField;
    consultaCODI_COLOR: TStringField;
    consultaNOMB_COLOR: TStringField;
    consultaROJO: TIntegerField;
    consultaVERDE: TIntegerField;
    consultaAZUL: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCODI_COLO_GRUPO: TStringField;
    consultaNOMB_COLO_GRUPO: TStringField;
    consultaCODI_COLO_SUBGRUPO: TStringField;
    consultaNOMB_COLO_SUBGRUPO: TStringField;
    consultaCODI_COLO_TONO: TStringField;
    consultaNOMB_COLO_TONO: TStringField;
    padr_gridCONS_COLOR: TdxDBGridMaskColumn;
    padr_gridCODI_COLOR: TdxDBGridMaskColumn;
    padr_gridNOMB_COLOR: TdxDBGridMaskColumn;
    padr_gridCONS_COLO_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_COLO_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_COLO_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_COLO_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_COLO_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_COLO_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_COLO_TONO: TdxDBGridMaskColumn;
    padr_gridCODI_COLO_TONO: TdxDBGridMaskColumn;
    padr_gridNOMB_COLO_TONO: TdxDBGridMaskColumn;
    padr_gridROJO: TdxDBGridMaskColumn;
    padr_gridVERDE: TdxDBGridMaskColumn;
    padr_gridAZUL: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaMUES_COLOR: TIntegerField;
    padr_gridMUES_COLOR: TdxDBGridColumn;
    procedure padr_gridMUES_COLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_colores: Tfn1_refe_colores;

implementation

uses _Traductor;
{$R *.DFM}

procedure Tfn1_refe_colores.padr_gridMUES_COLORCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  inherited;
  //Si está agrupado, salir
  if ANode.HasChildren then
    Exit;
  //Color de la columna del color
  if not ASelected  then
  begin
      Value := ANode.Values[padr_grid.ColumnByFieldName('mues_color').Index];
      if not VarIsNull(Value) then
      begin
        if Value = 0 then
          aColor := clWhite
        else
          aColor := Value;
      end;
  End;
  //Ocultar el texto
  aText := '';

end;

procedure Tfn1_refe_colores.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

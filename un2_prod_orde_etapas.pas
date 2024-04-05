unit un2_prod_orde_etapas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, Db, ImgList, Menus, TBX, ActnList, ExtCtrls,
  dfsSplitter, dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl,
  dxDBGrid, dxPageControl, dxDBTLCl, dxGrClms, ufra_edit_reportes, Boxes,
  PCPFrame, JvExControls, JvComponent, JvGradientHeaderPanel,
  PCPTituloGradiente, SCLDBGrid;

type
  Tfn2_prod_orde_etapas = class(T_fvent_child)
    padr_gridCONS_PROD_ESTADO: TdxDBGridMaskColumn;
    padr_gridCODI_PROD_ESTADO: TdxDBGridMaskColumn;
    padr_gridNOMB_PROD_ESTADO: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaCONS_PROD_ETAPA: TIntegerField;
    consultaCODI_PROD_ETAPA: TStringField;
    consultaNOMB_PROD_ETAPA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCOLOR: TIntegerField;
    padr_gridCOLOR: TdxDBGridColumn;
    consultaUSUA_RESPONSABLE: TStringField;
    consultaDURA_ESTIMADA: TIntegerField;
    padr_gridUSUA_RESPONSABLE: TdxDBGridColumn;
    padr_gridDURA_ESTIMADA: TdxDBGridColumn;
    procedure padr_gridCOLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_prod_orde_etapas: Tfn2_prod_orde_etapas;

implementation

{$R *.DFM}
{****************************************************************
Procedimiento   : padr_gridCOLORCustomDrawCell
Objetivo        : Pintar del color seleccionado la columna COLOR
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_prod_orde_etapas.padr_gridCOLORCustomDrawCell(
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
      Value := ANode.Values[padr_grid.ColumnByFieldName('COLOR').Index];
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

end.

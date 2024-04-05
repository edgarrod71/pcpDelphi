unit ufra_sele_color;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, dxDBCtrl, dxDBGrid, dxTL, dxCntner, ExtCtrls, Boxes,
  PCPFrame;

type
  Tffra_sele_color = class(TFrame)
    quer_colores: TQuery;
    quer_coloresCONS_COLOR: TIntegerField;
    quer_coloresNOMB_COLOR: TStringField;
    quer_coloresCODI_COLOR: TStringField;
    quer_coloresMUES_COLOR: TIntegerField;
    data_colores: TDataSource;
    grid_colo_existentes: TdxDBGrid;
    grid_colo_existentesMUES_COLOR: TdxDBGridColumn;
    grid_colo_existentesCODI_COLOR: TdxDBGridMaskColumn;
    grid_colo_existentesNOMB_COLOR: TdxDBGridMaskColumn;
    quer_coloresES_ENTREPIERNA: TIntegerField;
    procedure grid_colo_existentesMUES_COLORCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}
{****************************************************************
Procedimiento   : grid_colo_existentesMUES_COLORCustomDrawCell
Objetivo        : Pintar la muestra de color
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_sele_color.grid_colo_existentesMUES_COLORCustomDrawCell(
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
  begin                                 
      Value := ANode.Values[grid_colo_existentes.ColumnByFieldName('mues_color').Index];
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

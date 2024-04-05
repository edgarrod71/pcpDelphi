unit un2_come_prio_pedidos;
{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeación y Control de la Producción                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo está protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducción no autorizada, la ingeniería inversa y la   }
{       distribución total o parcial del código contenido en este   }
{       archivo está estrictamente prohibido y podrá tener severas  }
{       consecuencias civiles y penales.                            }
{                                                                   }
{       RESTRICCIONES                                               }
{                                                                   }
{       ESTE CODIGO Y TODOS LOS ARCHIVOS RELACIONADOS               }
{       (DCU, OBJ, DLL, ETC.) SON CONFIDENCIALES Y SU               }
{       PROPIETARIO ES SOFTCONF LIMITADA.                           }
{                                                                   }
{                                                                   }
{       www.softwaredeconfianza.com                                 }
{       tecnologia@softwaredeconfianza.com                          }
{*******************************************************************
        Unit            : un2_come_prio_pedidos
        Objetivo        : Paramterización de prioridades de los pedidos
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Junio 25 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  dxPageControl, dxDBTLCl, dxGrClms, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  ufra_edit_reportes, Boxes, PCPFrame;

type
  Tfn2_come_prio_pedidos = class(T_fvent_child)
    consultaCONS_COME_PRIO_PEDIDO: TIntegerField;
    consultaCOLOR: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_COME_PRIO_PEDIDO: TdxDBGridMaskColumn;
    padr_gridCODI_COME_PRIO_PEDIDO: TdxDBGridMaskColumn;
    padr_gridNOMB_COME_PRIO_PEDIDO: TdxDBGridMaskColumn;
    padr_gridCOLOR: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaCODI_COME_PRIO_PEDIDO: TStringField;
    consultaNOMB_COME_PRIO_PEDIDO: TStringField;
    procedure padr_gridCOLORCustomDrawCell(Sender: TObject;
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
  fn2_come_prio_pedidos: Tfn2_come_prio_pedidos;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : padr_gridCOLORCustomDrawCell
Objetivo        : Mostrar el color asignado a la prioridad del pedido
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_prio_pedidos.padr_gridCOLORCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
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
      Value := ANode.Values[padr_grid.ColumnByFieldName('color').Index];
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

procedure Tfn2_come_prio_pedidos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

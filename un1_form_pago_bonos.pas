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
        Unit            : un1_form_pago_bonos
        Objetivo        : Maestro de bonificaciones de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 28-Abr-2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit un1_form_pago_bonos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ufra_edit_reportes,
  ExtCtrls, dfsSplitter, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TBXDkPanels,
  TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms;

type
  Tfn1_form_pago_bonos = class(T_fvent_child)
    consultaCONS_FORM_PAGO_BONO: TIntegerField;
    consultaCODI_FORM_PAGO_BONO: TStringField;
    consultaNOMB_FORM_PAGO_BONO: TStringField;
    consultaINDICADOR: TIntegerField;
    consultaNOMB_INDICADOR: TStringField;
    consultaCONS_PERI_PAGO: TIntegerField;
    consultaNOMB_PERI_PAGO: TStringField;
    consultaES_PORCENTUAL: TIntegerField;
    consultaVALO_BONIFICACION: TFloatField;
    consultaMETA_EFICIENCIA: TFloatField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_FORM_PAGO_BONO: TdxDBGridMaskColumn;
    padr_gridCODI_FORM_PAGO_BONO: TdxDBGridMaskColumn;
    padr_gridNOMB_FORM_PAGO_BONO: TdxDBGridMaskColumn;
    padr_gridINDICADOR: TdxDBGridMaskColumn;
    padr_gridNOMB_INDICADOR: TdxDBGridMaskColumn;
    padr_gridCONS_PERI_PAGO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERI_PAGO: TdxDBGridMaskColumn;
    padr_gridVALO_BONIFICACION: TdxDBGridMaskColumn;
    padr_gridMETA_EFICIENCIA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridES_PORCENTUAL: TdxDBGridCheckColumn;
    procedure padr_gridVALO_BONIFICACIONCustomDrawCell(Sender: TObject;
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
  fn1_form_pago_bonos: Tfn1_form_pago_bonos;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : padr_gridVALO_BONIFICACIONCustomDrawCell
Objetivo        : Dar formato al valor de la bonificación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_form_pago_bonos.padr_gridVALO_BONIFICACIONCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  Try
    if aNode.Strings[padr_grid.ColumnByFieldName('es_porcentual').Index] = '1' Then
        aText := Format('%s', [aNode.Strings[padr_grid.ColumnByFieldName('valo_bonificacion').Index] + '%'])
    Else
        aText := Format('$ %s', [aNode.Strings[padr_grid.ColumnByFieldName('valo_bonificacion').Index]]);
  Except

  End;
end;

procedure Tfn1_form_pago_bonos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

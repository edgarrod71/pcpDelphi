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
        Unit            : un1_prod_cons_gene_fechas
        Objetivo        : Consulta general de ordenes de producción por
                          rango de fechas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 10 de 2004
        Versión         : pcp4006
*******************************************************************}
unit ucn1_prod_cons_gene_fechas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, Boxes, PCPFrame, dxEditor, dxEdLib, StdCtrls,
  SoCtrls, SCLDBLabel, dxDBTLCl, dxGrClms, ufra_edit_reportes;

type
  Tcn1_prod_cons_gene_fechas = class(T_fvent_child)
    PCPFrame1: TPCPFrame;
    chec_fech_desde: TdxCheckEdit;
    edit_Fech_desde: TdxDateEdit;
    chec_fech_hasta: TdxCheckEdit;
    edit_fech_hasta: TdxDateEdit;
    consultaCONS_PROD_ORDEN: TIntegerField;
    consultaNUME_PROD_ORDEN: TStringField;
    consultaCONS_PROD_LOTE: TIntegerField;
    consultaNUME_LOTE: TIntegerField;
    consultaANULADA: TIntegerField;
    consultaFECH_CREACION: TDateTimeField;
    consultaUSUA_CREACION: TStringField;
    consultaCONS_REFERENCIA: TIntegerField;
    consultaCODI_REFERENCIA: TStringField;
    consultaNOMB_REFERENCIA: TStringField;
    consultaCODI_INTE_REFERENCIA: TStringField;
    consultaUNIDADES: TIntegerField;
    consultaNOMB_PROC_FINALIZADO: TStringField;
    consultaNOMB_PROC_ACTUAL: TStringField;
    consultaFECH_FINA_PROC_FINALIZADO: TDateTimeField;
    consultaFECH_ESTI_PROC_FINALIZADO: TDateTimeField;
    consultaFECH_ESTI_FINALIZACION: TDateTimeField;
    consultaDIFE_DIAS: TIntegerField;
    padr_gridCONS_PROD_ORDEN: TdxDBGridMaskColumn;
    padr_gridNUME_PROD_ORDEN: TdxDBGridMaskColumn;
    padr_gridCONS_PROD_LOTE: TdxDBGridMaskColumn;
    padr_gridNUME_LOTE: TdxDBGridMaskColumn;
    padr_gridFECH_CREACION: TdxDBGridDateColumn;
    padr_gridUSUA_CREACION: TdxDBGridMaskColumn;
    padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridUNIDADES: TdxDBGridMaskColumn;
    padr_gridFECH_ESTI_FINALIZACION: TdxDBGridDateColumn;
    padr_gridNOMB_PROC_FINALIZADO: TdxDBGridMaskColumn;
    padr_gridFECH_FINA_PROC_FINALIZADO: TdxDBGridDateColumn;
    padr_gridFECH_ESTI_PROC_FINALIZADO: TdxDBGridDateColumn;
    padr_gridDIFE_DIAS: TdxDBGridMaskColumn;
    padr_gridNOMB_PROC_ACTUAL: TdxDBGridMaskColumn;
    padr_gridCONS_PEDI_ASOCIADO: TdxDBGridMaskColumn;
    padr_gridNUME_PEDI_ASOCIADOS: TdxDBGridMaskColumn;
    padr_gridNUME_PEDI_ASOCIADO: TdxDBGridMaskColumn;
    padr_gridCONS_TERCERO: TdxDBGridMaskColumn;
    padr_gridNOMB_TERCERO: TdxDBGridMaskColumn;
    consultaFINALIZADO: TIntegerField;
    padr_gridANULADA: TdxDBGridImageColumn;
    padr_gridFINALIZADO: TdxDBGridImageColumn;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXSubmenuItem2: TTBXSubmenuItem;
    procedure FormCreate(Sender: TObject);
    procedure chec_fech_desdeChange(Sender: TObject);
    procedure chec_fech_hastaChange(Sender: TObject);
    procedure padr_acti_actualizarExecute(Sender: TObject);
    procedure consultaAfterOpen(DataSet: TDataSet);
    procedure padr_gridDIFE_DIASCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cn1_prod_cons_gene_fechas: Tcn1_prod_cons_gene_fechas;

implementation

uses _func_varias, _cons_pcp, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 10 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_gene_fechas.FormCreate(Sender: TObject);
begin
  inherited;
  edit_fech_desde.Date := NowDate;
  edit_fech_hasta.Date := NowDate;
  data_ventana.DataSet := consulta;
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : chec_fech_desdeChange
Objetivo        : Habilitar/deshabilitar la fecha inicial
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 09 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_gene_fechas.chec_fech_desdeChange(Sender: TObject);
begin
  inherited;
  edit_fech_desde.Enabled := chec_fech_desde.Checked;
end;
{****************************************************************
Procedimiento   : chec_fech_hastaChange
Objetivo        : Habilitar/deshabilitar la fecha final
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 09 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_gene_fechas.chec_fech_hastaChange(Sender: TObject);
begin
  inherited;
  edit_fech_hasta.Enabled := chec_fech_hasta.Checked;
end;
{****************************************************************
Procedimiento   : padr_acti_actualizarExecute
Objetivo        : Abrir la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 10 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_gene_fechas.padr_acti_actualizarExecute(
  Sender: TObject);
begin
  //inherited;
  With Consulta do
    Begin
        progresoBarraEstado(cosTrabajando);
        Close;
        Update;
        ParamByName('pe_fech_inicial').Value := Null;
        ParamByName('pe_fech_final').Value := Null;
        if chec_fech_desde.Checked then
           ParamByName('pe_fech_inicial').Value := edit_Fech_desde.Date;
        if chec_fech_hasta.Checked then
           ParamByName('pe_fech_final').Value := edit_Fech_hasta.Date;
        Open;
    End;
    ProgresoBarraEstado;
end;
{****************************************************************
Procedimiento   : consultaAfterOpen
Objetivo        : Actualizar los controles luego de abrir la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_gene_fechas.consultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  padr_grid.Visible := True;
end;
{****************************************************************
Procedimiento   : padr_gridDIFE_DIASCustomDrawCell
Objetivo        : Dar color a la diferencia de días
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_gene_fechas.padr_gridDIFE_DIASCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
    valor : Integer;
begin
  inherited;
  if not consulta.active then exit;
  Try
     valor := StrToInt(aText);
     if (Valor < 0) then aFont.Color := clRed;
  Except
  End;
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Preparar la ventana para cerrarse
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_gene_fechas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  //Hacer visible el grid
  If Not padr_grid.Visible then padr_grid.Visible := True;
  inherited;
end;

end.

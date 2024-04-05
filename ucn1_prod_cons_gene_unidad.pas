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
        Unit            : ucn1_prod_cons_gene_unidad
        Objetivo        : Busqueda de ordenes de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 10 de 2004
        Versión         : pcp4006
*******************************************************************}
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
        Unit            : ucn1_prod_cons_gene_unidad
        Objetivo        : Busqueda de ordenes de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 10 de 2004
        Versión         : pcp4006
*******************************************************************}
unit ucn1_prod_cons_gene_unidad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, Boxes, PCPFrame, RxLookup, PCPLookUpComboEdit,
  StdCtrls, SoCtrls, SCLDBLabel, dxDBTLCl, dxGrClms, dxEditor, dxEdLib,
  dxDBELib, SohoBtns, SCLButton, ufra_mens_atencion, TBXButtonSCL,
  ufra_edit_reportes;

type
  Tcn1_prod_cons_gene_unidad = class(T_fvent_child)
    PCPFrame1: TPCPFrame;
    SCLDBLabel2: TSCLDBLabel;
    comb_nume_orden: TPCPLookUpComboEdit;
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
    padr_gridCONS_PROD_LOTE: TdxDBGridMaskColumn;
    padr_gridNUME_LOTE: TdxDBGridMaskColumn;
    padr_gridFECH_CREACION: TdxDBGridDateColumn;
    padr_gridUSUA_CREACION: TdxDBGridMaskColumn;
    padr_gridUNIDADES: TdxDBGridMaskColumn;
    padr_gridFECH_ESTI_FINALIZACION: TdxDBGridDateColumn;
    padr_gridNOMB_PROC_FINALIZADO: TdxDBGridMaskColumn;
    padr_gridFECH_FINA_PROC_FINALIZADO: TdxDBGridDateColumn;
    padr_gridFECH_ESTI_PROC_FINALIZADO: TdxDBGridDateColumn;
    padr_gridDIFE_DIAS: TdxDBGridMaskColumn;
    padr_gridNOMB_PROC_ACTUAL: TdxDBGridMaskColumn;
    quer_prod_ordenes: TQuery;
    data_prod_ordenes: TDataSource;
    pane_info_referencia: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    padr_boto_menu_Referencia: TTBXButtonSCL;
    pane_mens_atencion: Tffra_mens_atencion;
    SCLButton1: TTBXButtonSCL;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXSubmenuItem2: TTBXSubmenuItem;
    consultaFINALIZADO: TIntegerField;
    padr_gridANULADA: TdxDBGridImageColumn;
    padr_gridFINALIZADA: TdxDBGridImageColumn;
    procedure comb_nume_ordenChange(Sender: TObject);
    procedure padr_acti_actualizarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure padr_gridDIFE_DIASCustomDrawCell(Sender: TObject;
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
  cn1_prod_cons_gene_unidad: Tcn1_prod_cons_gene_unidad;

implementation

uses _func_varias, _cons_pcp, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : comb_nume_ordenChange
Objetivo        : Actualizar la consulta cuando cambie la op.
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 10 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_gene_unidad.comb_nume_ordenChange(
  Sender: TObject);
begin
  inherited;
  With consulta do
    Begin
        ProgresoBarraEstado(cosTrabajando);
        Close;
        pane_mens_atencion.Visible := False;
        Update;
        pane_info_referencia.Visible := (comb_nume_orden.Text <> '');
        if comb_nume_orden.Text = '' Then Exit;
        ParamByName('pe_cons_prod_orden').Value := comb_nume_orden.KeyValue;
        Open;
        pane_mens_atencion.Visible := (RecordCount = 0);
    End;
    ProgresoBarraEstado;
end;
{****************************************************************
Procedimiento   : padr_acti_actualizarExecute
Objetivo        : Ejecutar la acción de actualizar (padre)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 10 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_gene_unidad.padr_acti_actualizarExecute(
  Sender: TObject);
begin
  inherited;
  comb_nume_ordenChange(Sender);
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 10 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_gene_unidad.FormCreate(Sender: TObject);
begin
  inherited;
  pane_mens_atencion.SetWarningColors;
  //Abrir las consultas
  AbrirDataSet(quer_prod_ordenes);
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : padr_gridDIFE_DIASCustomDrawCell
Objetivo        : Dar color a la diferencia en dias
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tcn1_prod_cons_gene_unidad.padr_gridDIFE_DIASCustomDrawCell(
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

end.

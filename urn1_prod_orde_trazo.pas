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
        Unit            : urn1_prod_orde_trazo
        Objetivo        : Reporte de loteo de ordenes de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 30 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}
unit urn1_prod_orde_trazo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _Informes, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList, DBTables,
  dxfDesigner, QRExport, JvExControls, JvComponent, JvGradientHeaderPanel,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ZPropLst,
  dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame, ExtCtrls, dfsSplitter,
  TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls, PCPQRForma, PCPQrImage,
  PCPQrLabel, QuickRpt, PCPQRBand, PCPQuickReport, PCPQrDBText, SCLTabs;

type
  Trn1_prod_orde_trazo = class(TFInformes)
    tPCPQrLabel1: tPCPQrLabel;
    padr_cuad_1: TPCPQrForma;
    qrla_info_referencia: tPCPQrLabel;
    quer_prod_orden: TQuery;
    quer_unidades: TQuery;
    PCPQrForma1: TPCPQrForma;
    padr_cir: tPCPQrLabel;
    padr_cir_db: TPCPQRDBText;
    PCPQrForma2: TPCPQrForma;
    tPCPQrLabel2: tPCPQrLabel;
    PCPQRDBText1: TPCPQRDBText;
    PCPQrForma3: TPCPQrForma;
    tPCPQrLabel3: tPCPQrLabel;
    PCPQRDBText2: TPCPQRDBText;
    PCPQrForma4: TPCPQrForma;
    PCPQrForma5: TPCPQrForma;
    tPCPQrLabel4: tPCPQrLabel;
    PCPQRDBText3: TPCPQRDBText;
    tPCPQrLabel5: tPCPQrLabel;
    PCPQRDBText8: TPCPQRDBText;
    PCPQrForma6: TPCPQrForma;
    tPCPQrLabel6: tPCPQrLabel;
    PCPQRDBText5: TPCPQRDBText;
    PCPQrForma7: TPCPQrForma;
    tPCPQrLabel7: tPCPQrLabel;
    PCPQRDBText6: TPCPQRDBText;
    PCPQrForma10: TPCPQrForma;
    PCPQRDBText9: TPCPQRDBText;
    PCPQrForma11: TPCPQrForma;
    tPCPQrLabel11: tPCPQrLabel;
    PCPQRDBText10: TPCPQRDBText;
    PCPQrForma12: TPCPQrForma;
    tPCPQrLabel12: tPCPQrLabel;
    PCPQRDBText11: TPCPQRDBText;
    tPCPQrLabel15: tPCPQrLabel;
    tPCPQrLabel10: tPCPQrLabel;
    PCPQrForma13: TPCPQrForma;
    tPCPQrLabel13: tPCPQrLabel;
    PCPQRDBText12: TPCPQRDBText;
    PCPQrForma14: TPCPQrForma;
    tPCPQrLabel14: tPCPQrLabel;
    PCPQRDBText13: TPCPQRDBText;
    PCPQrForma15: TPCPQrForma;
    PCPQRDBText14: TPCPQRDBText;
    PCPQrForma8: TPCPQrForma;
    tPCPQrLabel8: tPCPQrLabel;
    PCPQRDBText4: TPCPQRDBText;
    PCPQrForma9: TPCPQrForma;
    tPCPQrLabel9: tPCPQrLabel;
    PCPQRDBText7: TPCPQRDBText;
    quer_referencia: TQuery;
    quer_material: TQuery;
    quer_reporte: TQuery;
    PCPQrForma16: TPCPQrForma;
    PCPQRDBText15: TPCPQRDBText;
    titu2: TPCPQrForma;
    tPCPQrLabel26: tPCPQrLabel;
    labe_con_entrepierna: tPCPQrLabel;
    titu1: TPCPQrForma;
    band_unidades: TQRSubDetail;
    form_total: TPCPQrForma;
    form_total2: TPCPQrForma;
    PCPQRDBText21: TPCPQRDBText;
    PCPQrForma27: TPCPQrForma;
    PCPQrForma28: TPCPQrForma;
    PCPQrForma29: TPCPQrForma;
    PCPQrForma30: TPCPQrForma;
    PCPQrForma31: TPCPQrForma;
    PCPQrForma32: TPCPQrForma;
    PCPQrForma33: TPCPQrForma;
    PCPQrForma34: TPCPQrForma;
    PCPQrForma35: TPCPQrForma;
    PCPQrForma36: TPCPQrForma;
    PCPQrForma37: TPCPQrForma;
    PCPQrForma38: TPCPQrForma;
    PCPQrForma39: TPCPQrForma;
    PCPQrForma40: TPCPQrForma;
    PCPQrForma41: TPCPQrForma;
    PCPQrForma42: TPCPQrForma;
    PCPQrForma43: TPCPQrForma;
    PCPQrForma47: TPCPQrForma;
    PCPQRDBText22: TPCPQRDBText;
    PCPQRDBText23: TPCPQRDBText;
    PCPQRDBText24: TPCPQRDBText;
    PCPQRDBText25: TPCPQRDBText;
    PCPQRDBText26: TPCPQRDBText;
    PCPQRDBText27: TPCPQRDBText;
    PCPQRDBText28: TPCPQRDBText;
    PCPQRDBText29: TPCPQRDBText;
    PCPQRDBText30: TPCPQRDBText;
    PCPQRDBText31: TPCPQRDBText;
    PCPQRDBText32: TPCPQRDBText;
    PCPQRDBText33: TPCPQRDBText;
    PCPQRDBText34: TPCPQRDBText;
    PCPQRDBText35: TPCPQRDBText;
    PCPQRDBText36: TPCPQRDBText;
    PCPQRDBText37: TPCPQRDBText;
    PCPQRDBText38: TPCPQRDBText;
    PCPQRDBText39: TPCPQRDBText;
    PCPQRDBText40: TPCPQRDBText;
    quer_repo_detalle: TQuery;
    data_reporte: TDataSource;
    PCPQrForma17: TPCPQrForma;
    tPCPQrLabel16: tPCPQrLabel;
    PCPQRDBText16: TPCPQRDBText;
    procedure _QRBanda_MaestraBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure doEjecutarInforme(peCons_prod_orden, peCons_refe_material : Integer);
  end;

var
  rn1_prod_orde_trazo: Trn1_prod_orde_trazo;

implementation

uses _func_varias, _cons_pcp, _func_graficas, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : DoEjecutarInforme
Objetivo        : Ejecuta y muestra el informe
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 30 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
Procedure Trn1_prod_orde_trazo.DoEjecutarInforme(peCons_prod_orden, peCons_refe_material : Integer);
var
    var_fila    : Integer;
    var_colu    : Integer;
Begin
    ProgresoBarraEstado(cosTrabajando);
    //Elimino las firmas, fecha de impresión, página, etc, que no esten
    //seleccionados en las opciones de impresión
    Opciones_Impresion[2]  := 'S'; //Habilitar la pagina
    Opciones_Impresion[3]  := 'S'; //Habilitar la fecha
    Opciones_Impresion[12] := ''; //Deshabilitar la priorida
    Elegir_Firmas;
    //Abrir la consulta principal
    With quer_prod_orden do
    Begin
        ParamByName('cons_prod_orden').Value := peCons_prod_orden;
        Open;
    End;
    With quer_unidades do
    Begin
        ParamByName('cons_prod_orden').Value := peCons_prod_orden;
        ParamByName('cons_Refe_material').Value := peCons_refe_material;
        Open;
    End;
    With quer_referencia do
    Begin
        ParamByName('cons_referencia').Value := quer_prod_orden.FieldByName('cons_referencia').asString;
        Open;
    End;
    With quer_material do
    Begin
        ParamByName('cons_Refe_material').Value := peCons_refe_material;
        Open;
    End;
    quer_reporte.Open;
    quer_repo_detalle.Open;
    //Mostrar el informe en pantalla
    _QRInforme.Caption := _QRPadre.ReportTitle;
    ProgresoBarraEstado;
    _QRPadre.Preview;
    Close;
End;

{****************************************************************
Procedimiento   : _QRBanda_MaestraBeforePrint
Objetivo        : Preparar la banda principal de detalle
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 30 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Trn1_prod_orde_trazo._QRBanda_MaestraBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  //Caption de tallas o entrepiernas
  if (quer_Referencia.FieldByName('con_entrepiernas').asInteger = 1) Then
      labe_con_entrepierna.Caption := UpperCase(cosEntrepiernas)
  Else
      labe_con_entrepierna.Caption := UpperCase(cosTallas);
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 30 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Trn1_prod_orde_trazo.FormCreate(Sender: TObject);
begin
  inherited;
  titu1.Brush.Color := ColorMasBrillante(padr_cuad_1.Brush.Color, coiMasClaro);
  titu2.Brush.Color := ColorMasBrillante(padr_cuad_1.Brush.Color, coiMasClaro);
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

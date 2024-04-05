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
        Unit            : urn1_meto_oper_cst_general
        Objetivo        : Reporte General (maestro) de análisis
                          de operaciones CST
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Octubre 13 de 2004
        Versión         : pcp4003
*******************************************************************}

unit urn1_meto_oper_cst_general;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _Informes, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList, DBTables,
  dxfDesigner, QRExport, JvExControls, JvComponent, JvGradientHeaderPanel,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ZPropLst,
  dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame, ExtCtrls, dfsSplitter,
  TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls, PCPQRForma, PCPQrImage,
  PCPQrLabel, QuickRpt, PCPQRBand, PCPQuickReport, PCPQrDBText, qrcb,
  SCLTabs;

type
  Trn1_meto_oper_cst_general = class(TFInformes)
    tPCPQrLabel1: tPCPQrLabel;
    padr_cuad_1: TPCPQrForma;
    PCPQrForma1: TPCPQrForma;
    qrla_info_referencia: tPCPQrLabel;
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
    PCPQRDBText4: TPCPQRDBText;
    PCPQrForma6: TPCPQrForma;
    tPCPQrLabel6: tPCPQrLabel;
    PCPQRDBText5: TPCPQRDBText;
    PCPQrForma7: TPCPQrForma;
    tPCPQrLabel7: tPCPQrLabel;
    PCPQRDBText6: TPCPQRDBText;
    quer_maestro: TQuery;
    PCPQrForma14: TPCPQrForma;
    tPCPQrLabel14: tPCPQrLabel;
    PCPQrForma15: TPCPQrForma;
    PCPQrForma16: TPCPQrForma;
    tPCPQrLabel15: tPCPQrLabel;
    PCPQRDBText13: TPCPQRDBText;
    qrla_tiem_2: tPCPQrLabel;
    PCPQRDBText14: TPCPQRDBText;
    qrch_tiem_cronometro: TQRCheckBox;
    quer_maestroCONS_OPER_COSTURA: TIntegerField;
    quer_maestroCODI_OPER_COSTURA: TStringField;
    quer_maestroNOMB_OPER_COSTURA: TStringField;
    quer_maestroCONS_PROCESO: TIntegerField;
    quer_maestroCODI_PROCESO: TStringField;
    quer_maestroNOMB_PROCESO: TStringField;
    quer_maestroCONS_OPER_COST_TIPO: TIntegerField;
    quer_maestroCODI_OPER_COST_TIPO: TStringField;
    quer_maestroNOMB_OPER_COST_TIPO: TStringField;
    quer_maestroCONS_COMP_GRUPO: TIntegerField;
    quer_maestroCODI_COMP_GRUPO: TStringField;
    quer_maestroNOMB_COMP_GRUPO: TStringField;
    quer_maestroFECH_SISTEMA: TDateTimeField;
    quer_maestroUSUA_SISTEMA: TStringField;
    quer_maestroSUPL_CONSTANTE: TSmallintField;
    quer_maestroSUPL_VARIABLE: TSmallintField;
    quer_maestroCOMP_LARG_COSTURA: TStringField;
    quer_maestroCONS_RECU_FAMILIA: TIntegerField;
    quer_maestroCODI_RECU_FAMILIA: TStringField;
    quer_maestroNOMB_RECU_FAMILIA: TStringField;
    quer_maestroCONS_RECU_GRUPO: TIntegerField;
    quer_maestroCODI_RECU_GRUPO: TStringField;
    quer_maestroNOMB_RECU_GRUPO: TStringField;
    quer_maestroCONS_RECU_TIPO: TIntegerField;
    quer_maestroCODI_RECU_TIPO: TStringField;
    quer_maestroCONS_RECU_MARCA: TIntegerField;
    quer_maestroCODI_RECU_MARCA: TStringField;
    quer_maestroNOMB_RECU_MARCA: TStringField;
    quer_maestroCLAS_RECURSO: TStringField;
    quer_maestroCODI_RECU_TIPO_PUNTADA: TStringField;
    quer_maestroCONS_RECU_TIPO_PUNTADA: TIntegerField;
    quer_maestroNOMB_RECU_TIPO: TStringField;
    quer_maestroREVO_POR_MINUTO: TIntegerField;
    quer_maestroSUPL_MAQUINA: TSmallintField;
    quer_maestroCONS_ACCE_FAMILIA: TIntegerField;
    quer_maestroIMAG_PUES_TRABAJO: TBlobField;
    quer_maestroAJUS_IMAG_PUES_TRABAJO: TIntegerField;
    quer_maestroIMAG_DIST_PUES_TRABAJO: TBlobField;
    quer_maestroAJUS_IMAG_DIST_PUES_TRABAJO: TIntegerField;
    quer_maestroTIEM_CRONOMETRO: TIntegerField;
    quer_maestroTIEM_ASIGNADO: TFloatField;
    quer_maestroTIEM_2: TFloatField;
    data_maestro: TDataSource;
    quer_maestroFECH_MODIFICACION: TDateTimeField;
    quer_maestroUSUA_MODIFICACION: TStringField;
    quer_maestroPUNT_POR_CENTIMETRO: TFloatField;
    quer_maestroLARG_COSTURA: TFloatField;
    quer_maestroDESCRIPCION: TMemoField;
    quer_maestroMODI_PUES_TRABAJO: TMemoField;
    quer_maestroSECU_MOVIMIENTOS: TMemoField;
    procedure _QRBanda_Page_HeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure quer_maestroCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure doLlamarMaestro(peCons_oper_costura : Integer);
  end;

var
  rn1_meto_oper_cst_general: Trn1_meto_oper_cst_general;

implementation

uses _func_varias, _MDI, _func_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : doLlamarMaestro
Objetivo        : Abrir la consulta del encabezado del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure Trn1_meto_oper_cst_general.doLlamarMaestro(peCons_oper_Costura : Integer);
Begin
    //Configurar las opciones de impresión del reporte
    Opciones_Impresion[2]  := 'S'; //Habilitar la pagina
    Opciones_Impresion[3]  := 'S'; //Habilitar la fecha
    Opciones_Impresion[12] := ''; //Deshabilitar la priorida
    Elegir_Firmas;
    //Título de la columna de la segunda unidad de medida
    qrla_tiem_2.Caption := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_unid_medida').AsString;
    //Formato de los campos de tiempo (float)
    quer_maestroTIEM_ASIGNADO.DisplayFormat :=  formatoFloat;
    quer_maestroTIEM_2.DisplayFormat :=  formatoFloat;
    //Asignar el parámetro
    quer_maestro.ParamByName('cons_oper_costura').Value := pecons_oper_costura;
    AbrirDataSet(quer_maestro);
End;
{****************************************************************
Procedimiento   : _QRBanda_Page_HeaderBeforePrint
Objetivo        : Preparar la banda de título
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Trn1_meto_oper_cst_general._QRBanda_Page_HeaderBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  //Marcar el indicador de tiempo cronómetro
  qrch_tiem_cronometro.Checked := (quer_maestro.FieldByName('tiem_cronometro').AsInteger = 1);
end;
{****************************************************************
Procedimiento   : quer_maestroCalcFields
Objetivo        : Calcular los campos adicionales del maestro del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Trn1_meto_oper_cst_general.quer_maestroCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //Tiempo en la unidad secundaria
  With quer_maestro do
    FieldByName('tiem_2').Value :=  FieldByName('tiem_asignado').AsFloat * _fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_unid_medi_factor').AsFloat;
end;

procedure Trn1_meto_oper_cst_general.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

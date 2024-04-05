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
        Unit            : urn1_meto_oper_cst_list_elementos
        Objetivo        : Listado de elementos por operación CST
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Octubre 13 de 2004
        Versión         : pcp4003
*******************************************************************}
unit urn1_meto_oper_cst_list_elementos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_meto_oper_cst_general, Db, Menus, TB2Item, TBX, pcpQRControl,
  ActnList, DBTables, dxfDesigner, QRExport, JvExControls, JvComponent,
  JvGradientHeaderPanel, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls, qrcb,
  PCPQrDBText, PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt, PCPQRBand,
  PCPQuickReport, SCLTabs;

type
  Trn1_meto_oper_cst_list_elementos = class(Trn1_meto_oper_cst_general)
    grup_detalle: TQRGroup;
    dato_detalle: TQRSubDetail;
    foot_detalle: TQRBand;
    quer_detalle: TQuery;
    PCPQRDBText7: TPCPQRDBText;
    PCPQRDBText8: TPCPQRDBText;
    PCPQRDBText9: TPCPQRDBText;
    PCPQRDBText10: TPCPQRDBText;
    PCPQRDBText11: TPCPQRDBText;
    PCPQRDBText12: TPCPQRDBText;
    PCPQRDBText15: TPCPQRDBText;
    qrdb_tiem_tmu: TPCPQRDBText;
    qrdb_tiem_2: TPCPQRDBText;
    quer_detallecodi_elem_cst: TStringField;
    quer_detallenomb_elem_cst: TStringField;
    quer_detallefrecuencia: TStringField;
    quer_detalledistancia: TStringField;
    quer_detalledificultad: TStringField;
    quer_detalleposicionamiento: TStringField;
    quer_detalletiem_tmu: TFloatField;
    quer_detalletiem_2: TFloatField;
    quer_totales: TQuery;
    PCPQrForma9: TPCPQrForma;
    PCPQrForma10: TPCPQrForma;
    PCPQrForma11: TPCPQrForma;
    PCPQrForma12: TPCPQrForma;
    PCPQrForma13: TPCPQrForma;
    PCPQrForma17: TPCPQrForma;
    PCPQrForma18: TPCPQrForma;
    PCPQrForma19: TPCPQrForma;
    PCPQrForma20: TPCPQrForma;
    PCPQrForma21: TPCPQrForma;
    PCPQrForma22: TPCPQrForma;
    PCPQrForma23: TPCPQrForma;
    PCPQrForma25: TPCPQrForma;
    PCPQrForma26: TPCPQrForma;
    PCPQrForma27: TPCPQrForma;
    PCPQrForma28: TPCPQrForma;
    PCPQrForma29: TPCPQrForma;
    tPCPQrLabel19: tPCPQrLabel;
    tPCPQrLabel20: tPCPQrLabel;
    tPCPQrLabel21: tPCPQrLabel;
    labe_tiempos: tPCPQrLabel;
    tPCPQrLabel23: tPCPQrLabel;
    tPCPQrLabel24: tPCPQrLabel;
    tPCPQrLabel25: tPCPQrLabel;
    PCPQRDBText16: TPCPQRDBText;
    PCPQRDBText17: TPCPQRDBText;
    PCPQRDBText18: TPCPQRDBText;
    tPCPQrLabel26: tPCPQrLabel;
    tPCPQrLabel27: tPCPQrLabel;
    tPCPQrLabel28: tPCPQrLabel;
    PCPQRDBText19: TPCPQRDBText;
    PCPQRDBText20: TPCPQRDBText;
    PCPQRDBText21: TPCPQRDBText;
    tPCPQrLabel29: tPCPQrLabel;
    tPCPQrLabel30: tPCPQrLabel;
    PCPQRDBText23: TPCPQRDBText;
    PCPQRDBText24: TPCPQRDBText;
    tPCPQrLabel31: tPCPQrLabel;
    tPCPQrLabel32: tPCPQrLabel;
    tPCPQrLabel33: tPCPQrLabel;
    PCPQRDBText22: TPCPQRDBText;
    PCPQRDBText25: TPCPQRDBText;
    PCPQRDBText26: TPCPQRDBText;
    PCPQRDBText27: TPCPQRDBText;
    PCPQRDBText28: TPCPQRDBText;
    PCPQrForma24: TPCPQrForma;
    PCPQrForma30: TPCPQrForma;
    PCPQrForma31: TPCPQrForma;
    PCPQRDBText29: TPCPQRDBText;
    PCPQRDBText30: TPCPQRDBText;
    PCPQRDBText31: TPCPQRDBText;
    quer_detallenume_elemento: TIntegerField;
    PCPQrForma8: TPCPQrForma;
    tPCPQrLabel8: tPCPQrLabel;
    tPCPQrLabel9: tPCPQrLabel;
    tPCPQrLabel10: tPCPQrLabel;
    tPCPQrLabel11: tPCPQrLabel;
    tPCPQrLabel12: tPCPQrLabel;
    tPCPQrLabel13: tPCPQrLabel;
    tPCPQrLabel16: tPCPQrLabel;
    tPCPQrLabel17: tPCPQrLabel;
    qrla_tiempo2: tPCPQrLabel;
    PCPQrForma32: TPCPQrForma;
    PCPQrForma33: TPCPQrForma;
    tPCPQrLabel18: tPCPQrLabel;
    PCPQRDBText32: TPCPQRDBText;
    PCPQRDBText33: TPCPQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure doEjecutarInforme(pecons_oper_costura : Integer);
  end;

var
  rn1_meto_oper_cst_list_elementos: Trn1_meto_oper_cst_list_elementos;

implementation

uses _MDI, _func_pcp, _func_varias, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 13 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Trn1_meto_oper_cst_list_elementos.doEjecutarInforme(pecons_oper_costura: Integer);
begin
  inherited;
    Inherited;
    //Abrir el padre
    //RC20.12 - Titulo del tiempo
    labe_tiempos.Caption := Format(cosTiemposActividad, [_fMDI.tabl_pcp_opciones.FieldByName('INGE_METO_TIPO_ACTIVIDAD').asString]);
    Trn1_meto_oper_cst_general(Self).doLlamarMaestro(pecons_oper_costura);
    //Abrir el detalle
    AbrirDataSet(quer_detalle);
    AbrirDataSet(quer_totales);
    //Mostrar el informe
    Acti_informe.Execute;
    Close;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 13 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Trn1_meto_oper_cst_list_elementos.FormCreate(Sender: TObject);
begin
  inherited;
  qrla_tiempo2.Caption := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_unid_medida').AsString;
  //Ajustar los decimales
  qrdb_tiem_tmu.Mask := FormatoFloat;
  qrdb_tiem_2.Mask := FormatoFloat;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

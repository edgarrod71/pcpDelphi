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
        Unit            : urn1_meto_oper_cst_info_operacion
        Objetivo        : Informe de información general de análisis
                          de operaciones CST
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Octubre 13 de 2004
        Versión         : pcp4003
*******************************************************************}
unit urn1_meto_oper_cst_info_operacion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_meto_oper_cst_general, Db, Menus, TB2Item, TBX, pcpQRControl,
  ActnList, DBTables, dxfDesigner, QRExport, JvExControls, JvComponent,
  JvGradientHeaderPanel, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls,
  PCPQrDBText, PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt, PCPQRBand,
  PCPQuickReport, qrcb, SCLTabs;

type
  Trn1_meto_oper_cst_info_operacion = class(Trn1_meto_oper_cst_general)
    PCPQrForma8: TPCPQrForma;
    tPCPQrLabel8: tPCPQrLabel;
    PCPQrForma9: TPCPQrForma;
    tPCPQrLabel9: tPCPQrLabel;
    PCPQRDBText7: TPCPQRDBText;
    PCPQrForma10: TPCPQrForma;
    tPCPQrLabel10: tPCPQrLabel;
    PCPQRDBText8: TPCPQRDBText;
    PCPQrForma11: TPCPQrForma;
    tPCPQrLabel11: tPCPQrLabel;
    PCPQRDBText9: TPCPQRDBText;
    PCPQrForma12: TPCPQrForma;
    tPCPQrLabel12: tPCPQrLabel;
    PCPQRDBText10: TPCPQRDBText;
    PCPQrForma13: TPCPQrForma;
    tPCPQrLabel13: tPCPQrLabel;
    PCPQRDBText11: TPCPQRDBText;
    PCPQrForma17: TPCPQrForma;
    tPCPQrLabel16: tPCPQrLabel;
    PCPQrForma18: TPCPQrForma;
    QRDBText1: TQRDBText;
    PCPQrForma19: TPCPQrForma;
    tPCPQrLabel17: tPCPQrLabel;
    PCPQrForma20: TPCPQrForma;
    tPCPQrLabel18: tPCPQrLabel;
    PCPQRDBText12: TPCPQRDBText;
    PCPQrForma21: TPCPQrForma;
    tPCPQrLabel19: tPCPQrLabel;
    PCPQRDBText15: TPCPQRDBText;
    PCPQrForma22: TPCPQrForma;
    tPCPQrLabel20: tPCPQrLabel;
    PCPQRDBText16: TPCPQRDBText;
    PCPQrForma23: TPCPQrForma;
    tPCPQrLabel21: tPCPQrLabel;
    PCPQRDBText17: TPCPQRDBText;
    PCPQrForma24: TPCPQrForma;
    tPCPQrLabel22: tPCPQrLabel;
    PCPQRDBText18: TPCPQRDBText;
    PCPQrForma25: TPCPQrForma;
    tPCPQrLabel23: tPCPQrLabel;
    PCPQRDBText19: TPCPQRDBText;
    PCPQrForma26: TPCPQrForma;
    tPCPQrLabel24: tPCPQrLabel;
    PCPQRDBText20: TPCPQRDBText;
    PCPQrForma27: TPCPQrForma;
    tPCPQrLabel25: tPCPQrLabel;
    PCPQRDBText21: TPCPQRDBText;
    PCPQrForma28: TPCPQrForma;
    PCPQrForma29: TPCPQrForma;
    tPCPQrLabel26: tPCPQrLabel;
    PCPQrForma30: TPCPQrForma;
    tPCPQrLabel27: tPCPQrLabel;
    PCPQRDBText22: TPCPQRDBText;
    PCPQrForma31: TPCPQrForma;
    tPCPQrLabel28: tPCPQrLabel;
    PCPQRDBText23: TPCPQRDBText;
    PCPQrForma32: TPCPQrForma;
    tPCPQrLabel29: tPCPQrLabel;
    PCPQRDBText24: TPCPQRDBText;
    PCPQrForma33: TPCPQrForma;
    PCPQrForma34: TPCPQrForma;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure DoEjecutarInforme(pecons_oper_Costura : Integer);
  end;

var
  rn1_meto_oper_cst_info_operacion: Trn1_meto_oper_cst_info_operacion;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : DoEjecutarInforme
Objetivo        : Ejecuta el informe
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure Trn1_meto_oper_cst_info_operacion.DoEjecutarInforme(pecons_oper_Costura : Integer);
Begin
    Inherited;
    //Abrir el padre
    Trn1_meto_oper_cst_general(Self).doLlamarMaestro(pecons_oper_costura);
    //Mostrar el informe
    Acti_informe.Execute;
    Close;
End;

procedure Trn1_meto_oper_cst_info_operacion.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

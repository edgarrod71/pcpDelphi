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
        Unit            : urn1_meto_oper_cst_puest_trabjo
        Objetivo        : Reporte del puesto de trabajo de una operacion
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Octubre 13 de 2004
        Versión         : pcp4003
*******************************************************************}

unit urn1_meto_oper_cst_puest_trabjo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_meto_oper_cst_general, Db, Menus, TB2Item, TBX, pcpQRControl,
  ActnList, DBTables, dxfDesigner, QRExport, JvExControls, JvComponent,
  JvGradientHeaderPanel, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, Qrctrls, qrcb,
  PCPQrDBText, PCPQRForma, PCPQrImage, PCPQrLabel, QuickRpt, PCPQRBand,
  PCPQuickReport, QREDBImage, SCLTabs;

type
  Trn1_meto_oper_cst_puest_trabjo = class(Trn1_meto_oper_cst_general)
    PCPQrForma17: TPCPQrForma;
    tPCPQrLabel16: tPCPQrLabel;
    PCPQrForma18: TPCPQrForma;
    PCPQrForma8: TPCPQrForma;
    tPCPQrLabel8: tPCPQrLabel;
    PCPQrForma9: TPCPQrForma;
    PCPQrForma10: TPCPQrForma;
    tPCPQrLabel9: tPCPQrLabel;
    PCPQrForma11: TPCPQrForma;
    PCPQrForma12: TPCPQrForma;
    tPCPQrLabel10: tPCPQrLabel;
    PCPQrForma13: TPCPQrForma;
    qrim_pues_trabajo: TQREDBImage;
    qrim_dist_pues_trabajo: TQREDBImage;
    PCPQRDBText7: TPCPQRDBText;
    PCPQRDBText8: TPCPQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure doEjecutarInforme(peCons_oper_costura : Integer);
  end;

var
  rn1_meto_oper_cst_puest_trabjo: Trn1_meto_oper_cst_puest_trabjo;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : doEjecutarInforme
Objetivo        : Mostrar el informe
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 14 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure Trn1_meto_oper_cst_puest_trabjo.doEjecutarInforme(peCons_oper_costura : Integer);
Begin
    //Abrir el maestro
    Trn1_meto_oper_cst_general(Self).doLlamarMaestro(pecons_oper_Costura);
    //Aplicar el Stretch a las imagenes
    qrim_pues_trabajo.ShrinkToFit := (quer_maestro.FieldByName('ajus_imag_pues_trabajo').AsInteger = 1);
    qrim_dist_pues_trabajo.ShrinkToFit := (quer_maestro.FieldByName('ajus_imag_dist_pues_trabajo').AsInteger = 1);
    //Mostrar el informe
    Acti_informe.Execute;
    Close;
End;


procedure Trn1_meto_oper_cst_puest_trabjo.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

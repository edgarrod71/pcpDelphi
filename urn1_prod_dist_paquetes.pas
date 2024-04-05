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
        Unit            : urn1_prod_dist_paquetes
        Objetivo        : Imprimir la distribución de paquetes
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 06 de 2005
        Versión         : pcp4.0.0.14
*******************************************************************}
unit urn1_prod_dist_paquetes;

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
  Trn1_prod_dist_paquetes = class(TFInformes)
    quer_prod_orden: TQuery;
    PCPQRBand1: TPCPQRBand;
    tPCPQrLabel1: tPCPQrLabel;
    padr_cuad_1: TPCPQrForma;
    qrla_info_referencia: tPCPQrLabel;
    PCPQrForma1: TPCPQrForma;
    padr_cir: tPCPQrLabel;
    padr_cir_db: TPCPQRDBText;
    PCPQrForma2: TPCPQrForma;
    tPCPQrLabel2: tPCPQrLabel;
    PCPQrForma3: TPCPQrForma;
    tPCPQrLabel3: tPCPQrLabel;
    PCPQRDBText2: TPCPQRDBText;
    PCPQrForma4: TPCPQrForma;
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
    PCPQrForma13: TPCPQrForma;
    tPCPQrLabel13: tPCPQrLabel;
    PCPQRDBText12: TPCPQRDBText;
    PCPQrForma14: TPCPQrForma;
    tPCPQrLabel14: tPCPQrLabel;
    PCPQRDBText13: TPCPQRDBText;
    PCPQrForma15: TPCPQrForma;
    PCPQRDBText14: TPCPQRDBText;
    tPCPQrLabel10: tPCPQrLabel;
    PCPQrForma8: TPCPQrForma;
    labe_nume_lote: tPCPQrLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rn1_prod_dist_paquetes: Trn1_prod_dist_paquetes;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Trn1_prod_dist_paquetes.FormCreate(Sender: TObject);
begin
  inherited;
  //Preparar la ventana
  _QRLine_Titulo.Pen.Style := psClear; //--> Ocultar la línea del título
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

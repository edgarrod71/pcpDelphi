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
        Unit            : urn1_refe_list_mate_largo
        Objetivo        : Listado de materiales por referencia largo
                          (más de 10 tallas)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 19 de 2005
        Versión         : pcp4.0.0.17
*******************************************************************}
unit urn1_refe_list_mate_largo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_refe_list_materiales, Menus, TB2Item, TBX, pcpQRControl, Db,
  ActnList, DBTables, dxfDesigner, QRExport, JvExControls, JvComponent,
  JvGradientHeaderPanel, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, qrRRect, qrcb,
  QuickRpt, Qrctrls, PCPQrDBText, PCPQrImage, PCPQrLabel, PCPQRForma,
  PCPQRBand, PCPQuickReport, SCLTabs;

type
  Trn1_refe_list_mate_largo = class(TRn1_refe_list_materiales)
    PCPQRDBText56: TPCPQRDBText;
    PCPQRDBText57: TPCPQRDBText;
    PCPQRDBText58: TPCPQRDBText;
    PCPQRDBText59: TPCPQRDBText;
    PCPQRDBText60: TPCPQRDBText;
    PCPQRDBText61: TPCPQRDBText;
    PCPQRDBText62: TPCPQRDBText;
    PCPQRDBText63: TPCPQRDBText;
    PCPQRDBText65: TPCPQRDBText;
    PCPQRDBText66: TPCPQRDBText;
    PCPQRDBText67: TPCPQRDBText;
    PCPQRDBText68: TPCPQRDBText;
    PCPQRDBText69: TPCPQRDBText;
    PCPQRDBText70: TPCPQRDBText;
    PCPQRDBText71: TPCPQRDBText;
    PCPQRDBText72: TPCPQRDBText;
    PCPQRDBText64: TPCPQRDBText;
    PCPQRDBText73: TPCPQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rn1_refe_list_mate_largo: Trn1_refe_list_mate_largo;

implementation

uses _Traductor;


{$R *.DFM}

procedure Trn1_refe_list_mate_largo.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

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
        Unit            : urn1_prod_orde_traz_liqu_unidades
        Objetivo        : Formato para la liquidación manual de unidades
                          cortadas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 30 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}
unit urn1_prod_orde_traz_liqu_unidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_prod_orde_trazo, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList,
  DBTables, dxfDesigner, QRExport, JvExControls, JvComponent,
  JvGradientHeaderPanel, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, ZPropLst, dxPageControl, StdCtrls, SoCtrls, Boxes, PCPFrame,
  ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar, QuickRpt,
  Qrctrls, PCPQrDBText, PCPQRForma, PCPQrImage, PCPQrLabel, PCPQRBand,
  PCPQuickReport, SCLTabs;

type
  Trn1_prod_orde_traz_liqu_unidades = class(Trn1_prod_orde_trazo)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rn1_prod_orde_traz_liqu_unidades: Trn1_prod_orde_traz_liqu_unidades;

implementation

uses _Traductor;

{$R *.DFM}

procedure Trn1_prod_orde_traz_liqu_unidades.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

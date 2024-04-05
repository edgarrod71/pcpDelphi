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
        Unit            : un1_prod_orde_corte
        Objetivo        : Controla el avance en el proceso de corte de una orden de
                          producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 26 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}

unit un1_prod_orde_corte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_prod_orde_avan_general, PictureContainer, DBTables, 
  AdvPanel, dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, ufra_mens_atencion, ufra_prod_resp_lote_proceso, dxEditor,
  dxEdLib, TBXDkPanels, TBXButtonSCL, RxLookup, PCPLookUpComboEdit, Boxes,
  PCPFrame, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item,
  TBX, TB2Dock, TB2Toolbar, PCPProceso;

type
  Tfn1_prod_orde_corte = class(Tfn1_prod_orde_avan_general)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_orde_corte: Tfn1_prod_orde_corte;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_prod_orde_corte.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

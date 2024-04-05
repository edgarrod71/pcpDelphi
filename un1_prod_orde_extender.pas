{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeaci�n y Control de la Producci�n                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo est� protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducci�n no autorizada, la ingenier�a inversa y la   }
{       distribuci�n total o parcial del c�digo contenido en este   }
{       archivo est� estrictamente prohibido y podr� tener severas  }
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
        Unit            : un1_prod_orde_extender
        Objetivo        : Controlar el proceso de extender una
                          orden de producci�n
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 26 de 2004
        Versi�n         : pcp4.0.0.10
*******************************************************************}
unit un1_prod_orde_extender;

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
  Tfn1_prod_orde_extender = class(Tfn1_prod_orde_avan_general)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_orde_extender: Tfn1_prod_orde_extender;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_prod_orde_extender.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

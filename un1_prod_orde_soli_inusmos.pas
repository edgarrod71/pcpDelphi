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
        Unit            : un1_prod_orde_soli_inusmos
        Objetivo        : Explosion de insumos por orden y seguimiento del proceso
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 24 de 2005
        Versi�n         : pcp4.0.0.19
*******************************************************************}
unit un1_prod_orde_soli_inusmos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_prod_orde_soli_mate_prima, Db, PictureContainer, DBTables, 
  AdvPanel, dxExEdtr, dxCntner, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, SCLDBGrid,
  ufra_mens_atencion, ufra_prod_resp_lote_proceso, dxEdLib, dxDBELib,
  dxEditor, TBXDkPanels, TBXButtonSCL, RxLookup, PCPLookUpComboEdit,
  PCPFrame, Boxes, PCPProceso, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls,
  TB2Item, TBX, TB2Dock, TB2Toolbar;

type
  Tfn1_prod_orde_soli_inusmos = class(Tfn1_prod_orde_soli_mate_prima)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_orde_soli_inusmos: Tfn1_prod_orde_soli_inusmos;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_prod_orde_soli_inusmos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

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
        Unit            : un1_prod_orde_soli_inusmos
        Objetivo        : Explosion de insumos por orden y seguimiento del proceso
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 24 de 2005
        Versión         : pcp4.0.0.19
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

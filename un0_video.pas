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
        Unit            : un0_video
        Objetivo        : Visualizador de videos que utiliza el
                          WindowsMediaPlayer
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 24 de 2005
        Versi�n         : pcp4.0.0.19
*******************************************************************}
unit un0_video;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, OleCtrls, WMPLib_TLB, PCPFrame, PictureContainer, DBTables,
  Placemnt, AdvPanel, dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns,
  ActnList, ImgList, Boxes, PCPProceso, dxEditor, dxEdLib, dxDBELib,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar;

type
  Tfn0_video = class(T_fvent_modal)
    PCPFrame1: TPCPFrame;
    video: TWindowsMediaPlayer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn0_video: Tfn0_video;

implementation

{$R *.DFM}

end.

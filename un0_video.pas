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
        Unit            : un0_video
        Objetivo        : Visualizador de videos que utiliza el
                          WindowsMediaPlayer
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 24 de 2005
        Versión         : pcp4.0.0.19
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

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
        Unit            : ufra_video
        Objetivo        : Frame para la visualización de video
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 24 de 2005
        Versión         : pcp4.0.0.19
*******************************************************************}
unit ufra_video;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  OleCtrls, WMPLib_TLB;

type
  Tffra_video = class(TFrame)
    video: TWindowsMediaPlayer;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure doEjecutarFrame(peNombreVideo : String);
  end;

implementation

{$R *.DFM}

Procedure Tffra_video.doEjecutarFrame(peNombreVideo : String);
Begin
     video.close;
     video.URL := peNombreVideo;
End;


procedure Tffra_video.FrameResize(Sender: TObject);
begin
  Video.Width := Width;
  Video.Height := Height;
end;

end.

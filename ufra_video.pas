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
        Unit            : ufra_video
        Objetivo        : Frame para la visualizaci�n de video
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 24 de 2005
        Versi�n         : pcp4.0.0.19
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

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
        Unit            : mensajes.pas
        Objetivo        : Libreria general de mensajes para las
                          aplicaciones de Softconf Limitada
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Febrero 06 de 2004
        Versi�n         : pcp4000
*******************************************************************}


unit mensajes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ImgList, StdCtrls;

type
  TfMensajes = class(TForm)
    vent_imagenes: TImageList;
    labe_titulo: TLabel;
    labe_mensaje: TLabel;
    Bevel1: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMensajes: TfMensajes;

implementation

{$R *.DFM}

end.

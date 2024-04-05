unit uQRTiquetes;

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
        Unit            : uQRTiquetes
        Objetivo        : Ventana padre para los reportes
                          de tiquetes (códigos de barras)
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 27 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt;

type
  TfQRTiquetes = class(TForm)
    QR: TQuickRep;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fQRTiquetes: TfQRTiquetes;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormClose
Objetivo        : Liberar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TfQRTiquetes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Release;
end;

procedure TfQRTiquetes.FormCreate(Sender: TObject);
begin
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

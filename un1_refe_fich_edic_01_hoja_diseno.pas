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
        Unit            : un1_refe_fich_edic_01_hoja_diseno
        Objetivo        : Ventana de edici�n de fichas t�cnicas
                          01 - HOJA DE DISE�O (CARATULA)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 02-Jun-2005
        Versi�n         : pcp4.0.20.10
*******************************************************************}
unit un1_refe_fich_edic_01_hoja_diseno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_refe_fich_00Edicion, Db, DBTables, dxCntner, dxEditor, dxEdLib,
  dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, Boxes, PCPFrame,
  kbmMemTable, ActnList, ufra_mens_atencion;

type
  Tfn1_refe_fich_edic_01_hoja_diseno = class(Tfn1_refe_fich_00Edicion)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_fich_edic_01_hoja_diseno: Tfn1_refe_fich_edic_01_hoja_diseno;

implementation

uses _Traductor;

{$R *.DFM}

procedure Tfn1_refe_fich_edic_01_hoja_diseno.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

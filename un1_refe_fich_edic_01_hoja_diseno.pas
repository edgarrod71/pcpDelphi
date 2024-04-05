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
        Unit            : un1_refe_fich_edic_01_hoja_diseno
        Objetivo        : Ventana de edición de fichas técnicas
                          01 - HOJA DE DISEÑO (CARATULA)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 02-Jun-2005
        Versión         : pcp4.0.20.10
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

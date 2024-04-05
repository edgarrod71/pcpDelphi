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
        Unit            : un1_refe_fich_02_hoja_diseno
        Objetivo        : Ventana de edici�n de fichas t�cnicas
                          02 - HOJA DE DISE�O
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 26-May-2005
        Versi�n         : pcp4.0.20.8
*******************************************************************}

unit un1_refe_fich_02_hoja_diseno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_refe_fich_maestro1, Db, kbmMemTable, PictureContainer, DBTables,
  Placemnt, AdvPanel, dxExEdtr, dxCntner, SCLPropiedadesForm, DBActns,
  ActnList, ImgList, dxEdLib, dxDBELib, PCPFrame, SCLTabs,
  ufra_sele_refe_variacion, Boxes, PCPProceso, dxEditor, StdCtrls, SoCtrls,
  SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar;

type
  Tfn1_refe_fich_02_hoja_diseno1 = class(Tfn1_refe_fich_maestro1)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_refe_fich_02_hoja_diseno1: Tfn1_refe_fich_02_hoja_diseno1;

implementation

uses _cons_pcp;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_refe_fich_02_hoja_diseno1.FormCreate(Sender: TObject);
begin
  inherited;
  TipoFichaTecnica := ftdHojaDiseno;
  AbrirDataSet(myTabla_Auxiliar);
end;

end.

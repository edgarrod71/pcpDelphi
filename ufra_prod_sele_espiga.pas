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
        Unit            : ufra_prod_sele_espiga
        Objetivo        : Frame para la selecci�n de espigas en las
                          �rdenes de trazo
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Julio 23 de 2004 
        Versi�n         : pcp4006
*******************************************************************}

unit ufra_prod_sele_espiga;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, PCPLookUpComboEdit, StdCtrls, SoCtrls, SCLDBLabel, Db, DBTables;

type
  Tffra_prod_sele_espiga = class(TFrame)
    quer_espigas: TQuery;
    data_espigas: TDataSource;
    padr_labe_nume_lote: TSCLDBLabel;
    comb_espiga: TPCPLookUpComboEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
  end;

implementation

uses _func_varias, _cons_colores;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versi�n         : pcp4000
*****************************************************************}
Constructor Tffra_prod_sele_espiga.Create(Owner : TComponent);
Begin
      Inherited Create(Owner);
      autoHints(Self);
      quer_espigas.open;
End;


end.

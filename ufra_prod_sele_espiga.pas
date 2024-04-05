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
        Unit            : ufra_prod_sele_espiga
        Objetivo        : Frame para la selección de espigas en las
                          órdenes de trazo
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Julio 23 de 2004 
        Versión         : pcp4006
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
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_sele_espiga.Create(Owner : TComponent);
Begin
      Inherited Create(Owner);
      autoHints(Self);
      quer_espigas.open;
End;


end.

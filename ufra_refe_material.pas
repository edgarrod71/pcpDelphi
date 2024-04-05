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
        Unit            : ufra_refe_material
        Objetivo        : Frame para la selección de materiales
                          asignados a una referencia
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 19 de 2004
        Versión         : pcp4006
*******************************************************************}

unit ufra_refe_material;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, PCPLookUpComboEdit, StdCtrls, SoCtrls, SCLDBLabel, Db, DBTables;

type
  Tffra_refe_material = class(TFrame)
    SCLDBLabel5: TSCLDBLabel;
    fram_comb_codi_material: TPCPLookUpComboEdit;
    SCLDBLabel7: TSCLDBLabel;
    fram_comb_nomb_material: TPCPLookUpComboEdit;
    quer_refe_materiales: TQuery;
    data_refe_materiales: TDataSource;
    quer_refe_materialesCONS_REFE_MATERIAL2: TIntegerField;
    quer_refe_materialesCONS_REFE_VARIACION2: TIntegerField;
    quer_refe_materialesCONS_MATE_REFERENCIA2: TIntegerField;
    quer_refe_materialesCODI_MATE_REFERENCIA2: TStringField;
    quer_refe_materialesNOMB_MATE_REFERENCIA2: TStringField;
    quer_refe_materialesCONSUMO2: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
  end;

implementation

uses _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 19 de 2004
Versión         : pcp4006
*****************************************************************}
Constructor Tffra_refe_material.Create(Owner : TComponent);
Begin
        Inherited Create(Owner);
        //Colores
        AutoHints(Self);
End;

end.

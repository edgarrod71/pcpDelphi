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
        Unit            : ufra_come_desp_a
        Objetivo        : Frame para la selección del destino comercial
                          de despacho
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Septiembre 11 de 2004 
        Versión         : pcp4000
*******************************************************************}


unit ufra_come_desp_a;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  Tffra_come_desp_a = class(TFrame)
    Q_facturar_a: TQuery;
    Q_facturar_aCONS_FACTURAR_A: TIntegerField;
    Q_facturar_aCONS_TERCERO: TIntegerField;
    Q_facturar_aCODI_FACTURAR_A: TStringField;
    Q_facturar_aDIGI_VERIFICACION: TStringField;
    Q_facturar_aIDEN_FACTURAR_A: TStringField;
    Q_facturar_aNOMB_FACTURAR_A: TStringField;
    Q_facturar_aCONTACTO1: TStringField;
    Q_facturar_aCONTACTO2: TStringField;
    Q_facturar_aDIRECCION: TStringField;
    Q_facturar_aCONS_PAIS: TIntegerField;
    Q_facturar_aNOMB_PAIS: TStringField;
    Q_facturar_aCONS_DEPARTAMENTO: TIntegerField;
    Q_facturar_aNOMB_DEPARTAMENTO: TStringField;
    Q_facturar_aCONS_CIUDAD: TIntegerField;
    Q_facturar_aNOMB_CIUDAD: TStringField;
    Q_facturar_aCODI_POSTAL: TStringField;
    Q_facturar_aTELEFONO1: TStringField;
    Q_facturar_aTELEFONO2: TStringField;
    Q_facturar_aTELEFONO3: TStringField;
    Q_facturar_aFAX1: TStringField;
    Q_facturar_aFAX2: TStringField;
    Q_facturar_aCELULAR: TStringField;
    Q_facturar_aCORR_ELECTRONICO: TStringField;
    Q_facturar_aFECH_SISTEMA: TDateTimeField;
    Q_facturar_aUSUA_SISTEMA: TStringField;
    DSQ_facturar_a: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
  end;

implementation

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Septiembre 11 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_come_desp_a.Create (Owner : TComponent);
Begin
     Inherited Create (Owner);
End;


end.

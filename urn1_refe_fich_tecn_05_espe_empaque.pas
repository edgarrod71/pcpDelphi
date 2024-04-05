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
        Unit            : urn1_refe_fich_tecn_05_espe_empaque
        Objetivo        : Reporte : Ficha técnica de producto
                          05 - ESPECIFICACIONES DE EMPAQUE
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 03-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit urn1_refe_fich_tecn_05_espe_empaque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_refe_fich_tecn_base, ActnList, Db, DBTables, RLParser, RLReport;

type
  Trn1_refe_fich_tecn_05_espe_empaque = class(Trn1_refe_fich_tecn_base)
    quer_detalles: TQuery;
    data_detalles: TDataSource;
    RLDraw16: TRLDraw;
    RLDBImage1: TRLDBImage;
    procedure FormCreate(Sender: TObject);
    procedure acti_post_prepareExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rn1_refe_fich_tecn_05_espe_empaque: Trn1_refe_fich_tecn_05_espe_empaque;

implementation

uses _cons_pcp, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Trn1_refe_fich_tecn_05_espe_empaque.FormCreate(Sender: TObject);
begin
  inherited;
  TipoFicha := ftdEspecificacionesEmpaque;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : acti_post_prepareExecute
Objetivo        : Ejecutar el POST-PREPARE del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Trn1_refe_fich_tecn_05_espe_empaque.acti_post_prepareExecute(
  Sender: TObject);
begin
  inherited;
  AbrirDataSet(quer_detalles);
end;

end.

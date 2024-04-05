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
        Unit            : urn1_refe_fich_tecn_09_espe_presentacion
        Objetivo        : Reporte : Ficha técnica de producto
                          09 - ESPECIFICACIONES DE PRESENTACION
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 03-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit urn1_refe_fich_tecn_09_espe_presentacion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_refe_fich_tecn_base, ActnList, Db, DBTables, RLParser, RLReport;

type
  Trn1_refe_fich_tecn_09_espe_presentacion = class(Trn1_refe_fich_tecn_base)
    quer_detalles: TQuery;
    data_detalles: TDataSource;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw17: TRLDraw;
    RLDBImage1: TRLDBImage;
    RLDraw18: TRLDraw;
    RLDBText13: TRLDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rn1_refe_fich_tecn_09_espe_presentacion: Trn1_refe_fich_tecn_09_espe_presentacion;

implementation

uses _cons_pcp, _func_pcp, _func_varias, _Traductor;


{$R *.DFM}



procedure Trn1_refe_fich_tecn_09_espe_presentacion.FormCreate(
  Sender: TObject);
begin
  inherited;
  TipoFicha := ftdEspecificacionesConstruccion;
  AbrirDataSet(quer_Fich_tecnica);
  AbrirDataSet(quer_detalles);
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

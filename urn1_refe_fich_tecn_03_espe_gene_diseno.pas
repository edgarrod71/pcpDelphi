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
        Unit            : urn1_refe_fich_tecn_03_espe_gene_diseno
        Objetivo        : Reporte : Ficha técnica de producto
                          03 - ESPECIFICACIONES GENERALES DE DISEÑO
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 03-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit urn1_refe_fich_tecn_03_espe_gene_diseno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_refe_fich_tecn_base, ActnList, Db, DBTables, RLParser, RLReport;

type
  Trn1_refe_fich_tecn_03_espe_gene_diseno = class(Trn1_refe_fich_tecn_base)
    quer_detalles: TQuery;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDBImage1: TRLDBImage;
    data_detalles: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure acti_post_prepareExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rn1_refe_fich_tecn_03_espe_gene_diseno: Trn1_refe_fich_tecn_03_espe_gene_diseno;

implementation

uses _cons_pcp, _func_pcp, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Trn1_refe_fich_tecn_03_espe_gene_diseno.FormCreate(
  Sender: TObject);
begin
  inherited;
  TipoFicha := ftdEspecificacionesGeneralesDiseno;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : acti_post_prepareExecute
Objetivo        : Ejecutar el post-prepare del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 03-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Trn1_refe_fich_tecn_03_espe_gene_diseno.acti_post_prepareExecute(
  Sender: TObject);
begin
  inherited;
  AbrirDataSet(quer_detalles);
end;

end.

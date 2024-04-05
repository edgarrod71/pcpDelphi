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
        Unit            : urn1_refe_fich_tecn_02_hoja_diseno
        Objetivo        : Reporte : Ficha técnica de producto
                          02 - HOJA DE DISEÑO
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 26-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}
unit urn1_refe_fich_tecn_02_hoja_diseno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, jpeg, jvGif,
  urn1_refe_fich_tecn_base, ActnList, Db, DBTables, RLXLSFilter,
  RLRichFilter, RLFilters, RLPDFFilter, RLParser, RLDraftFilter, RLReport;

type
  Trn1_refe_fich_tecn_02_hoja_diseno = class(Trn1_refe_fich_tecn_base)
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    quer_imagen: TQuery;
    data_imagen: TDataSource;
    RLDBImage1: TRLDBImage;
    RLDBImage2: TRLDBImage;
    RLDBMemo2: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure acti_post_prepareExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rn1_refe_fich_tecn_02_hoja_diseno: Trn1_refe_fich_tecn_02_hoja_diseno;

implementation

uses _cons_pcp, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Trn1_refe_fich_tecn_02_hoja_diseno.FormCreate(Sender: TObject);
begin
  inherited;
  TipoFicha := ftdHojaDiseno;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : acti_post_prepareExecute
Objetivo        : Hacer el post-prepare del informe
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Trn1_refe_fich_tecn_02_hoja_diseno.acti_post_prepareExecute(
  Sender: TObject);
begin
  inherited;
  AbrirDataSet(quer_imagen);
end;

end.

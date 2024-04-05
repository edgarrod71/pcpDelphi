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
        Unit            : urn1_refe_fich_tecn_08_medi_prenda_1
        Objetivo        : Reporte de fichas técnicas
                          08 : Medidas de prenda terminada (Vertical)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 07-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit urn1_refe_fich_tecn_08_medi_prenda_1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_refe_fich_tecn_base, ActnList, Db, DBTables, RLParser, RLReport;

type
  Trn1_refe_fich_tecn_08_medi_prenda_1 = class(Trn1_refe_fich_tecn_base)
    quer_detalles: TQuery;
    data_detalles: TDataSource;
    quer_cantidades: TQuery;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLDBImage1: TRLDBImage;
    RLDraw17: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLDraw16: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDraw20: TRLDraw;
    data_cantidades: TDataSource;
    RLBand2: TRLBand;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDBText13: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLLabel18: TRLLabel;
    RLDraw30: TRLDraw;
    procedure FormCreate(Sender: TObject);
    procedure acti_post_prepareExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rn1_refe_fich_tecn_08_medi_prenda_1: Trn1_refe_fich_tecn_08_medi_prenda_1;

implementation

uses _cons_pcp, _func_varias, un1_refe_fich_funciones, _Traductor;



{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Trn1_refe_fich_tecn_08_medi_prenda_1.FormCreate(Sender: TObject);
begin
  inherited;
  TipoFicha := ftdMedidasPrendaTerminada;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : acti_post_prepareExecute
Objetivo        : Ejecutar el POST-PREPARE del reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 07-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Trn1_refe_fich_tecn_08_medi_prenda_1.acti_post_prepareExecute(
  Sender: TObject);
begin
  inherited;
  AbrirDataSet(quer_Detalles);
  GuardarFicha08EnTabla(quer_Fich_tecnica.FieldByName('cons_refe_ficha').AsInteger);
  AbrirDataSet(quer_Cantidades);
end;

end.

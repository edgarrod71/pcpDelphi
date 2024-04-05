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
        Unit            : urn1_refe_fich_tecn_08_medi_prenda_2
        Objetivo        : Reporte de fichas técnicas
                          08 : Medidas de prenda terminada (Vertical)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 07-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit urn1_refe_fich_tecn_08_medi_prenda_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_refe_fich_tecn_base, ActnList, Db, DBTables, RLParser, RLReport;

type
  Trn1_refe_fich_tecn_08_medi_prenda_2 = class(Trn1_refe_fich_tecn_base)
    quer_detalles: TQuery;
    data_detalles: TDataSource;
    quer_cantidades: TQuery;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLDBImage1: TRLDBImage;
    RLDraw17: TRLDraw;
    RLDraw16: TRLDraw;
    data_cantidades: TDataSource;
    Reporte2: TRLReport;
    RLBand3: TRLBand;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLLabel19: TRLLabel;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDraw42: TRLDraw;
    RLLabel22: TRLLabel;
    RLDraw43: TRLDraw;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDraw44: TRLDraw;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLDraw45: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLDraw48: TRLDraw;
    RLLabel32: TRLLabel;
    RLDraw49: TRLDraw;
    RLLabel33: TRLLabel;
    RLDraw50: TRLDraw;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBMemo2: TRLDBMemo;
    RLDraw51: TRLDraw;
    RLBand4: TRLBand;
    RLLabel34: TRLLabel;
    RLBand5: TRLBand;
    RLGroup2: TRLGroup;
    RLBand6: TRLBand;
    RLDraw52: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLDraw56: TRLDraw;
    RLLabel38: TRLLabel;
    RLDraw57: TRLDraw;
    RLSubDetail2: TRLSubDetail;
    RLBand7: TRLBand;
    RLDraw58: TRLDraw;
    RLDraw59: TRLDraw;
    RLDraw60: TRLDraw;
    RLDraw61: TRLDraw;
    RLDraw62: TRLDraw;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLDraw70: TRLDraw;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText54: TRLDBText;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDBText13: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw20: TRLDraw;
    RLDBMemo3: TRLDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure acti_post_prepareExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rn1_refe_fich_tecn_08_medi_prenda_2: Trn1_refe_fich_tecn_08_medi_prenda_2;

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
procedure Trn1_refe_fich_tecn_08_medi_prenda_2.FormCreate(Sender: TObject);
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
procedure Trn1_refe_fich_tecn_08_medi_prenda_2.acti_post_prepareExecute(
  Sender: TObject);
begin
  inherited;
  AbrirDataSet(quer_Detalles);
  GuardarFicha08EnTabla(quer_Fich_tecnica.FieldByName('cons_refe_ficha').AsInteger);
  AbrirDataSet(quer_Cantidades);
end;

end.

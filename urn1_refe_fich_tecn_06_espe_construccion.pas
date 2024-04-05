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
        Unit            : urn1_refe_fich_tecn_06_espe_construccion
        Objetivo        : Reporte : Ficha t�cnica de producto
                          06 - ESPECIFICACIONES DE CONSTRUCCION
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 03-Jun-2005
        Versi�n         : pcp4.0.20.10
*******************************************************************}
unit urn1_refe_fich_tecn_06_espe_construccion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_refe_fich_tecn_base, ActnList, Db, DBTables, RLParser, RLReport;

type
  Trn1_refe_fich_tecn_06_espe_construccion = class(Trn1_refe_fich_tecn_base)
    quer_detalles: TQuery;
    data_detalles: TDataSource;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw17: TRLDraw;
    RLDBImage1: TRLDBImage;
    RLDraw18: TRLDraw;
    RLDBMemo2: TRLDBMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rn1_refe_fich_tecn_06_espe_construccion: Trn1_refe_fich_tecn_06_espe_construccion;

implementation

uses _cons_pcp, _func_pcp, _func_varias, _Traductor;


{$R *.DFM}



procedure Trn1_refe_fich_tecn_06_espe_construccion.FormCreate(
  Sender: TObject);
begin
  inherited;
  TipoFicha := ftdEspecificacionesConstruccion;
  AbrirDataSet(quer_Fich_tecnica);
  AbrirDataSet(quer_detalles);
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

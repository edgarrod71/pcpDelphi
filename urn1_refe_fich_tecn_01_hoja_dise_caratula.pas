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
        Unit            : urn1_refe_fich_tecn_01_hoja_dise_caratula
        Objetivo        : Reporte de fichas t�cnicas
                          01 - Hoja de dise�o (car�tula)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 01-Jun-2005
        Versi�n         : pcp4.0.20.10
*******************************************************************}
unit urn1_refe_fich_tecn_01_hoja_dise_caratula;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urn1_refe_fich_tecn_base, ActnList, Db, DBTables, RLXLSFilter,
  RLRichFilter, RLFilters, RLPDFFilter, RLParser, RLDraftFilter, RLReport,
  SCLRLDBImagen;

type
  Trn1_refe_fich_tecn_01_hoja_dise_caratula = class(Trn1_refe_fich_tecn_base)
    RLDraw16: TRLDraw;
    RLDBImage1: TSCLRLDBImagen;
    quer_imagen: TQuery;
    data_imagen: TDataSource;
    labe_estandar: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure acti_post_prepareExecute(Sender: TObject);
  private
    { Private declarations }
    var_Cons_Referencia : Integer;
  public
    { Public declarations }
    Procedure PrepararReporte(peCons_Referencia : Integer = 0; peEsReferencia : Boolean = True);Overload;
  end;

var
  rn1_refe_fich_tecn_01_hoja_dise_caratula: Trn1_refe_fich_tecn_01_hoja_dise_caratula;

implementation

uses _cons_pcp, _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Trn1_refe_fich_tecn_01_hoja_dise_caratula.FormCreate(
  Sender: TObject);
begin
  inherited;
  TipoFicha := ftdHojaDisenoCaratula;
  labe_Estandar.Caption := cosEstandar;
  var_Cons_Referencia := 0;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : acti_post_prepareExecute
Objetivo        : Hacer el post-prepare del informe
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versi�n         : pcp4.0.20.8
*****************************************************************}
procedure Trn1_refe_fich_tecn_01_hoja_dise_caratula.acti_post_prepareExecute(
  Sender: TObject);
begin
  inherited;
  AbrirDataSet(quer_imagen);
end;
{****************************************************************
Procedimiento   : PrepararReporte
Objetivo        : Prepara el reporte
                  OVERLOAD
                  Sobre escribe el procedimiento del padre
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versi�n         : pcp4.0.20.10
*****************************************************************}
Procedure Trn1_refe_fich_tecn_01_hoja_dise_caratula.PrepararReporte(peCons_Referencia : Integer = 0; peEsReferencia : Boolean = True);
Begin
    //Obtener el nombre del reporte
    Reporte.Title := ObtenerNombreReporte;
    EsReferencia := peEsReferencia;
    //Abrir la consulta general del reporte
    var_Cons_Referencia := peCons_Referencia;
    With quer_Fich_tecnica do
    Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM');
        if EsReferencia Then
                SQL.Add('VIS_GLO_REFERENCIAS')
        Else
                SQL.Add('VIS_GLO_PROTOTIPOS');
        SQL.Add('WHERE CONS_REFERENCIA = ' + IntToStr(peCons_Referencia));
        Open;
    End;
    //Ejecutar la acci�n POST-PREPARE
    If Assigned(acti_post_prepare.OnExecute) then
         acti_post_prepare.Execute;
End;


end.

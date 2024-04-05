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
        Unit            : urn1_refe_fich_tecn_base
        Objetivo        : Ventana base para los informes de fichas
                          técnicas
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 24-May-2005
        Versión         : pcp4.0.20.8
*******************************************************************}
unit urn1_refe_fich_tecn_base;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,  _cons_pcp,
  _informesPCP, RLXLSFilter, RLRichFilter, RLFilters, RLPDFFilter,
  RLParser, RLDraftFilter, RLReport, ActnList, Db, DBTables;

type
  Trn1_refe_fich_tecn_base = class(T_fInformesPCP)
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw1: TRLDraw;
    labe_info_Referencia: TRLLabel;
    RLDraw2: TRLDraw;
    labe_referencia: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel13: TRLLabel;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLLabel14: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel15: TRLLabel;
    RLDraw15: TRLDraw;
    quer_fich_tecnica: TQuery;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    quer_nomb_ficha: TQuery;
    acti_post_prepare: TAction;
    padr_detalle: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var_TipoFicha        : TFichasTecnicasDiseno;
    var_ConsecutivoFicha     : Integer;
    var_EsReferencia         : Boolean;
    Procedure SetEsReferencia(peValue : Boolean);
  public
    { Public declarations }
    Procedure PrepararReporte(peCons_Refe_Ficha : Integer = 0; peEsReferencia : Boolean = True);
    Function ObtenerNombreReporte : String;
  Published
    Property TipoFicha : TFichasTecnicasDiseno Read var_TipoFicha Write var_TipoFicha Default ftdSinAsignar;
    Property ConsecutivoFicha : Integer Read var_ConsecutivoFicha Write var_ConsecutivoFicha;
    Property EsReferencia : Boolean Read var_EsReferencia Write SetEsReferencia;
  end;

var
  rn1_refe_fich_tecn_base: Trn1_refe_fich_tecn_base;

implementation

uses un1_refe_fich_funciones, _Traductor;


{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Trn1_refe_fich_tecn_base.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar
  var_TipoFicha := ftdSinAsignar;
  var_ConsecutivoFicha := 0;
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : PrepararReporte
Objetivo        : Preparar el reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure Trn1_refe_fich_tecn_base.PrepararReporte(peCons_Refe_Ficha : Integer = 0; peEsReferencia : Boolean = True);
Begin
    //Abrir la consulta general del reporte
    var_ConsecutivoFicha := peCons_Refe_Ficha;
    SetEsReferencia(peEsReferencia);
    //Obtener el nombre del reporte
    Reporte.Title := ObtenerNombreReporte;
    With quer_Fich_tecnica do
    Begin
        Close;
        ParamByName('CONS_REFE_FICHA').Value := var_ConsecutivoFicha;
        Open;
    End;
    //Ejecutar la acción POST-PREPARE
    If Assigned(acti_post_prepare.OnExecute) then
         acti_post_prepare.Execute;
End;

{****************************************************************
Procedimiento   : ObtenerNombreReporte
Objetivo        : Consulta en la base de datos el nombre
                  del reporte que se está ejecutando
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Function Trn1_refe_fich_tecn_base.ObtenerNombreReporte : String;
Begin
    With quer_nomb_ficha do
    Begin
        Close;
        ParamByName('CONS_REFE_TIPO_FICHA').Value := TipoFichasTecnicasToInteger(var_TipoFicha);
        Open;
        Result := FieldByName('NOMB_REFE_TIPO_FICHA').AsString;
        Close;
    End;
End;
{****************************************************************
Procedimiento   : SetEsReferencia
Objetivo        : Asignar el valor a la propiedad que indica
                  si es referencia o prototipo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 01-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
Procedure Trn1_refe_fich_tecn_base.SetEsReferencia(peValue : Boolean);
var
        var_Texto       : String;
Begin
    var_EsReferencia := peValue;
    if var_EsReferencia Then
       var_Texto := cosReferencia
    Else
       var_Texto := cosPrototipo;
    //Cambiar los objetos
    labe_referencia.Caption := var_Texto + ':';
    if var_EsReferencia Then
        labe_info_Referencia.Caption := Format(cosInformacionDeLa, [var_Texto])
    Else
        labe_info_Referencia.Caption := Format(cosInformacionDel, [var_Texto]);
End;
end.

unit ucn1_prod_orde_tiqu_fabricacion;

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
        Unit            : ucn1_prod_orde_tiqu_fabricacion
        Objetivo        : Consulta/Reporte para impresión de los
                          tiquetes de control de producción.  Es
                          llamado desde el asistente de impresión
                          de codigos de barras de producción
                          (uwn1_prod_fabr_impr_tiquetes)
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 27 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uQRTiquetes, ExtCtrls, QuickRpt, Qrctrls, DBarQrp, Db, DBTables;

type
  Tfcn1_prod_orde_tiqu_fabricacion = class(TfQRTiquetes)
    QR4: TQuickRep;
    QRBand1: TQRBand;
    QRDuckBarcode1: TQRDuckBarcode;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    qrTie_paq4: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    quer_tiquetes: TQuery;
    QR0: TQuickRep;
    QRBand3: TQRBand;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRDuckBarcode2: TQRDuckBarcode;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText20: TQRDBText;
    QR3: TQuickRep;
    QRBand4: TQRBand;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDuckBarcode3: TQRDuckBarcode;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText29: TQRDBText;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel29: TQRLabel;
    QRDBText30: TQRDBText;
    procedure EvaluarSaltosAntes(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure EvaluarSaltosDespues(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
    var_camp_salto  : String;
    var_valo_Actual     : String;
    var_nume_columnas   : Integer;
  public
    { Public declarations }
    Procedure DoEjecutarReporte(aOrdenar : String; anume_columnas : Integer = 3; aVistaPrevia : Boolean = True; aCampoSaltos : String = '');
  end;

var
  fcn1_prod_orde_tiqu_fabricacion: Tfcn1_prod_orde_tiqu_fabricacion;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : DoEjecutarReporte
Objetivo        : Ejecuta el reporte , lo muestra y lo libera
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure tfcn1_prod_orde_tiqu_fabricacion.DoEjecutarReporte(aOrdenar : String; anume_columnas : Integer = 3; aVistaPrevia : Boolean = True; aCampoSaltos : String = '');
Begin
     //Asignar el ordenamiento
     quer_tiquetes.sql.Add(aOrdenar);
     quer_tiquetes.Open;
     var_camp_salto := aCampoSaltos;
     var_nume_columnas := aNume_Columnas;
     //Mostrar el QR requerido de acuerdo con el no. de columnas
     if aVistaPrevia Then
     Begin
         case anume_columnas of
            0 : QR0.Preview;
            3 : Qr3.Preview;
            4 : QR4.Preview;
         End;
     End
     Else
     Begin
         case anume_columnas of
            0 : Qr0.Print;
            3 : Qr3.Print;
            4 : QR4.Print;
         End;
     End;
     Close;
End;
{****************************************************************
Procedimiento   : QRBand1BeforePrint
Objetivo        : Verificar los saltos antes de imprimir
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfcn1_prod_orde_tiqu_fabricacion.EvaluarSaltosAntes(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
        var_QRActivo    : TQuickRep;
begin
  inherited;
  //Verificar si requiere saltos
  if (var_camp_salto = '') Then Exit;
  if (var_valo_Actual <> quer_tiquetes.FieldByName(var_camp_salto).asString) then
  Begin
          case var_nume_columnas Of
              0 : var_QRActivo := QR0;
              3 : var_QRActivo := QR3;
              4 : var_QRActivo := QR4;
          End;
          if (var_QRActivo.CurrentColumn < var_QRActivo.Page.Columns) then
              Begin
                   if var_QRActivo.CurrentColumn = 1 Then
                       var_QRActivo.NewColumn;
                   While (var_QRActivo.CurrentColumn <> 1) do
                        var_QRActivo.NewColumn;
              End;
  End;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfcn1_prod_orde_tiqu_fabricacion.FormCreate(Sender: TObject);
begin
  inherited;
  var_Valo_Actual := '';
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : EvaluarSaltosDespues
Objetivo        : Actualizar la variable de saltos despues de imprimir
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfcn1_prod_orde_tiqu_fabricacion.EvaluarSaltosDespues(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  if var_camp_Salto = '' Then Exit;
  var_valo_Actual :=  quer_tiquetes.FieldByName(var_camp_salto).asString;
end;

end.

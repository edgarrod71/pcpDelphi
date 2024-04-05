unit ucn1_prod_orde_tiqu_corte;


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
        Unit            : ucn1_prod_orde_tiqu_corte
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
  Tfcn1_prod_orde_tiqu_corte = class(TfQRTiquetes)
    QR4: TQuickRep;
    QRBand1: TQRBand;
    QRDuckBarcode1: TQRDuckBarcode;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    qrTie_paq4: TQRDBText;
    QRShape9: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    quer_tiquetes: TQuery;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape5: TQRShape;
    QRDBText13: TQRDBText;
    QRShape11: TQRShape;
    QRShape1: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure DoEjecutarReporte(aOrdenar : String; anume_columnas : Integer = 3; aVistaPrevia : Boolean = True);
  end;

var
  fcn1_prod_orde_tiqu_corte: Tfcn1_prod_orde_tiqu_corte;

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
Procedure tfcn1_prod_orde_tiqu_corte.DoEjecutarReporte(aOrdenar : String; anume_columnas : Integer = 3; aVistaPrevia : Boolean = True);
Begin
     //Asignar el ordenamiento
     quer_tiquetes.sql.Add(aOrdenar);
     quer_tiquetes.Open;
     //Mostrar el QR requerido de acuerdo con el no. de columnas
     if aVistaPrevia Then
     Begin
       case anume_columnas of
          3 : Qr.Preview;
          4 : QR4.Preview;
       End;
     End
     Else
     Begin
      case anume_columnas of
          3 : Qr.print;
          4 : QR4.print;
       End;
     End;
     Close;
End;
procedure Tfcn1_prod_orde_tiqu_corte.FormCreate(Sender: TObject);
begin
  inherited;
	Insertar_Palabras(Self, WKLenguaje);
end;

end.

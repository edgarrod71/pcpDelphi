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
        Unit            : un1_form_pago_parametrizacion2
        Objetivo        : Parametrización de valores mínimos garantizados
                          personalizados por el usuario para el pago
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 18-Ago-2005
        Versión         : pcp4.0.20.18
*******************************************************************}
unit un1_form_pago_parametrizacion2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_form_pago_parametrizacion1, PictureContainer, DBTables, 
  AdvPanel, dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, dxEditor, dxEdLib, dxDBELib, DBCtrls, Boxes, PCPProceso,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock,
  TB2Toolbar;

type
  Tfn1_form_pago_parametrizacion2 = class(Tfn1_form_pago_parametrizacion1)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_parametrizacion2: Tfn1_form_pago_parametrizacion2;

implementation


{$R *.DFM}

end.

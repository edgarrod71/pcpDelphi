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
        Unit            : un1_form_pago_parametrizacion1
        Objetivo        : Ventana de edici�n para los valores hora
                          producci�n parametrizados por el usuario
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 17-Ago-2005
        Versi�n         : pcp4.0.20.18
*******************************************************************}
unit un1_form_pago_parametrizacion1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, DBCtrls;

type
  Tfn1_form_pago_parametrizacion1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    DBText1: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure EjecutarVentana(peTabla : TDataSet);
  end;

var
  fn1_form_pago_parametrizacion1: Tfn1_form_pago_parametrizacion1;

implementation

uses _MDI;

{$R *.DFM}
{****************************************************************
Procedimiento   : EjecutarVentana
Objetivo        : Abrir la ventana con la tabla especificada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versi�n         : pcp4.0.20.18
*****************************************************************}
Procedure Tfn1_form_pago_parametrizacion1.EjecutarVentana(peTabla : TDataSet);
Begin
    //Validar
    if (peTabla = Nil) Then Close;
    if (Not peTabla.Active) then Close;
    //Asignar
    data_Ventana.DataSet := peTabla;
    ShowModal;
End;


end.

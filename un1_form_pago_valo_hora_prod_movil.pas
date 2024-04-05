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
        Unit            : un1_form_pago_valo_hora_prod_movil
        Objetivo        : Parametrizaci�n de formas de pago
                          Valor hora producci�n m�vil
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           :
        Versi�n         : pcp4.0.0.14
*******************************************************************}
unit un1_form_pago_valo_hora_prod_movil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_form_pago_valo_hora_produccion, Db, RxMemDS, PictureContainer,
  DBTables, AdvPanel, dxExEdtr, dxCntner, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ufra_mens_atencion, TBXDkPanels,
  TBXButtonSCL, dxEditor, dxEdLib, dxCurrencyEditPCP, RxLookup,
  PCPLookUpComboEdit, ufra_maqu_ubicacion, Boxes, PCPFrame, dxDBELib,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, PCPProceso;

type
  Tfn1_form_pago_valo_hora_prod_movil = class(Tfn1_form_pago_valo_hora_produccion)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_valo_hora_prod_movil: Tfn1_form_pago_valo_hora_prod_movil;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializaci�n de la ventana en su
                  creaci�n
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 28 de 2004
Versi�n         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_valo_hora_prod_movil.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar variables
  var_cons_sis_form_pago := 3;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

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
        Unit            : un1_form_pago_valo_habilidad
        Objetivo        : Ventana para la parametrización de la forma
                          de pago por habilidad
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 30 de 2004
        Versión         : pcp4.0.0.14
*******************************************************************}
unit un1_form_pago_valo_habilidad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_form_pago_valo_hora_produccion, Db, RxMemDS, PictureContainer,
  DBTables, AdvPanel, dxExEdtr, dxCntner, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ufra_mens_atencion, TBXDkPanels,
  TBXButtonSCL, dxEditor, dxEdLib, dxCurrencyEditPCP, RxLookup,
  PCPLookUpComboEdit, ufra_maqu_ubicacion, Boxes, PCPFrame, dxDBELib,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, SCLShape, JvExExtCtrls, JvComponent, JvDBRadioPanel,
  PCPProceso;

type
  Tfn1_form_pago_valo_habilidad = class(Tfn1_form_pago_valo_hora_produccion)
    SCLDBLabel22: TSCLDBLabel;
    radi_sistema: TJvDBRadioPanel;
    SCLShape1: TSCLShape;
    pane_bonificacion: TPanel;
    tabl_guardarsist_calculo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure fram_mens_no_existefram_labelClick(Sender: TObject);
    procedure radi_sistemaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_valo_habilidad: Tfn1_form_pago_valo_habilidad;

implementation

uses _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 30 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_valo_habilidad.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar las variables
  var_cons_sis_form_pago := 4;
  pane_bonificacion.BevelOuter := bvNone;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : fram_mens_no_existefram_labelClick
Objetivo        : Inicializar el nuevo registro en pantalla una vez
                  creado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 30 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_valo_habilidad.fram_mens_no_existefram_labelClick(
  Sender: TObject);
begin
  inherited;
  radi_sistema.Value := '-1';
end;
{****************************************************************
Procedimiento   : radi_sistemaChange
Objetivo        : Actualizar los controles al cambiar el tipo
                  de sistema
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 30 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_valo_habilidad.radi_sistemaChange(
  Sender: TObject);
begin
  inherited;
  pane_bonificacion.Visible := (radi_sistema.Value = '-1');
end;

end.

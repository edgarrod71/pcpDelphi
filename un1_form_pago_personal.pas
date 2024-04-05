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
        Unit            : un1_form_pago_personal
        Objetivo        : Parametrización de las formas de pago para
                          el personal
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 07 de 2005 
        Versión         : pcp4.0.0.16
*******************************************************************}
unit un1_form_pago_personal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ucn1_pers_ubicacion, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, TBXDkPanels,
  TBXButtonSCL, dxEditor, dxEdLib, StdCtrls, SoCtrls, SCLDBLabel,
  ufra_maqu_ubicacion, Boxes, PCPFrame, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, dxTLClms, dxTL, TB2Dock,
  TB2Toolbar, dxDBCtrl, dxDBGrid, SCLDBGrid, dfsSplitter, dxPageControl,
  ufra_edit_reportes;

type
  Tfn1_form_pago_personal = class(Tcn1_pers_ubicacion)
    consultaVALO_HORA_MINI_GARANTIZADO: TFloatField;
    consultaVALO_HORA_PRODUCCION: TFloatField;
    consultaCONS_SIS_FORM_PAGO: TIntegerField;
    consultaNOMB_SIS_FORM_PAGO: TStringField;
    consultaPARA_1: TStringField;
    padr_gridColumn29: TdxDBGridColumn;
    padr_gridColumn30: TdxDBGridColumn;
    padr_gridColumn31: TdxDBGridColumn;
    padr_gridColumn32: TdxDBGridColumn;
    TBXItem1: TTBXItem;
    acti_modi_form_pago: TAction;
    TBXItem2: TTBXItem;
    padr_gridColumn33: TdxDBGridColumn;
    procedure acti_modi_form_pagoExecute(Sender: TObject);
    procedure doGridDblClick(Sender: TObject);
    procedure padr_gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure boto_hoyClick(Sender: TObject);
    procedure fram_filtrocomb_tipo_ubicacionChange(Sender: TObject);
    procedure doActualizarConsultaPersonal(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_personal: Tfn1_form_pago_personal;

implementation

uses _MDI, un1_form_pago_personal1, _func_varias, _Traductor;

{$R *.DFM}

procedure Tfn1_form_pago_personal.acti_modi_form_pagoExecute(Sender: TObject);
begin
  inherited;
  //Validar que exista algun registro seleccionado
  if padr_grid.SelectedCount = 0 Then Exit;
  Application.CreateForm(Tfn1_form_pago_personal1, fn1_form_pago_personal1);
  fn1_form_pago_personal1.doEjecutarVentana(edit_fecha.Date, padr_grid);
  //Update;
  //RefreshDataSet(Consulta);
end;
{****************************************************************
Procedimiento   : doGridDblClick
Objetivo        : Ejecutar la acción de modificar la forma de pago
                  desde un dblclick en el grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_personal.doGridDblClick(Sender: TObject);
begin
  inherited;
  acti_modi_form_pago.Execute;
end;
{****************************************************************
Procedimiento   : padr_gridKeyDown
Objetivo        : Controlar las pulsaciones sobre el grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_personal.padr_gridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Ejecutar la acción de modificar la forma de pago con ENTER desde el teclado
  if key = vk_Return Then
    acti_modi_form_pago.Execute;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_personal.FormCreate(Sender: TObject);
begin
  inherited;
  edit_Fecha.Date := NowDate;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : boto_hoyClick
Objetivo        : Consultar el dia actual
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_personal.boto_hoyClick(Sender: TObject);
begin
  inherited;
  //
end;
{****************************************************************
Procedimiento   : fram_filtrocomb_tipo_ubicacionChange
Objetivo        : Actualizar el filtro por ubicación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_personal.fram_filtrocomb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  //
end;
{****************************************************************
Procedimiento   : doActualizarConsultaPersonal
Objetivo        : Actualizar la consulta
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_personal.doActualizarConsultaPersonal(
  Sender: TObject);
begin
  inherited;
  //
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_personal.FormShow(Sender: TObject);
begin
  if not Consulta.Active then doActualizarConsultaPersonal(Sender);
  inherited;
end;

end.

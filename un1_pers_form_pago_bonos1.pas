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
        Unit            : un1_pers_form_pago_bonos1
        Objetivo        : Asignación de bonos de producción para el
                          personal (detalles)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 16-Jun-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit un1_pers_form_pago_bonos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit,
  SCLShape, JvExExtCtrls, JvComponent, JvDBRadioPanel;

type
  Tfn1_pers_form_pago_bonos1 = class(T_fvent_modal)
    quer_personal: TQuery;
    data_personal: TDataSource;
    Panel2: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Panel1: TPanel;
    SCLDBLabel3: TSCLDBLabel;
    edit_fech_inicial: TdxDBDateEdit;
    SCLDBLabel4: TSCLDBLabel;
    pane_bono: TPanel;
    comb_codi_bono: TPCPLookUpComboEdit;
    SCLDBLabel5: TSCLDBLabel;
    comb_nomb_bono: TPCPLookUpComboEdit;
    quer_bonos: TQuery;
    data_Bonos: TDataSource;
    Tabla_VentanaCONS_FORM_PAGO_BONO_PERSONAL: TIntegerField;
    Tabla_VentanaCONS_PERSONAL: TIntegerField;
    Tabla_VentanaFECH_INICIAL: TDateTimeField;
    Tabla_VentanaCONS_FORM_PAGO_BONO: TIntegerField;
    Tabla_VentanaINDICADOR: TIntegerField;
    Tabla_VentanaES_PORCENTUAL: TIntegerField;
    Tabla_VentanaVALO_BONIFICACION: TFloatField;
    Tabla_VentanaMETA_EFICIENCIA: TFloatField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    radi_es_porcentual: TJvDBRadioPanel;
    SCLDBLabel9: TSCLDBLabel;
    edit_valo_bonificacion: TdxDBCurrencyEdit;
    SCLDBLabel10: TSCLDBLabel;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    SCLShape1: TSCLShape;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    procedure comb_codi_bonoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure quer_personalBeforeOpen(DataSet: TDataSet);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure padr_acti_guardarExecute(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure padr_acti_guar_cerrarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_pers_form_pago_bonos1: Tfn1_pers_form_pago_bonos1;

implementation

uses _func_varias, _vari_pcp, _cons_colores, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : comb_codi_bonoChange
Objetivo        : Actualizar la ventana al cambiar el código
                  del bono asignado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago_bonos1.comb_codi_bonoChange(Sender: TObject);
begin
  inherited;
  //Panel de información del bono
  pane_bono.Visible := Not comb_codi_bono.EstaVacio;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago_bonos1.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización visual y de variables
  radi_es_porcentual.Color := clFondoAplicacion;
  //Inicializacion de objetos DB
  AbrirDataSet(quer_personal);
  AbrirDataSet(quer_bonos);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : quer_personalBeforeOpen
Objetivo        : Preparar la consulta de personal antes de abrirla
                  asignado el código del operario activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago_bonos1.quer_personalBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  quer_personal.ParamByName('cons_personal').Value := var_glob_integer;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Inicializar el registro de la tabla principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago_bonos1.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With Tabla_Ventana do
  Begin
      FieldByName('fech_inicial').Value := NowDate;
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_guardarExecute
Objetivo        : Preparar el registro para guardarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago_bonos1.padr_acti_guardarExecute(
  Sender: TObject);
begin
  With Tabla_Ventana do
  Begin
     if (State = dsInsert) then
       //Consecutivo del personal
       FieldByName('cons_personal').Value := quer_personal.FieldByName('cons_personal').asInteger;
  End;
  inherited;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Preparar el registro para guardarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago_bonos1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  //Valores del bono
  With tabla_Ventana do
  Begin
        FieldByName('indicador').Value := quer_bonos.FieldByName('indicador').asInteger;
        FieldByName('es_porcentual').Value := quer_bonos.FieldByName('es_porcentual').asInteger;
        FieldByName('valo_bonificacion').Value := quer_bonos.FieldByName('valo_bonificacion').asFloat;
        FieldByName('meta_eficiencia').Value := quer_bonos.FieldByName('meta_eficiencia').asFloat;
  End;
  //Heredar
  inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_guar_cerrarExecute
Objetivo        : Asignar el consecutivo del personal antes de guardar y cerrar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago_bonos1.padr_acti_guar_cerrarExecute(
  Sender: TObject);
begin
  With Tabla_Ventana do
  Begin
     if (State = dsInsert) then
       //Consecutivo del personal
       FieldByName('cons_personal').Value := quer_personal.FieldByName('cons_personal').asInteger;
  End;
  inherited;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana al
                  mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago_bonos1.FormShow(Sender: TObject);
begin
  inherited;
  comb_codi_bonoChange(Sender);
end;

end.

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
        Unit            : un1_form_pago_bonos1
        Objetivo        : Ventana de edición del maestro de
                          bonificaciones de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 28-Abr-2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit un1_form_pago_bonos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  RxLookup, PCPLookUpComboEdit, dxCntner, Db, SCLPropiedadesForm, DBActns,
  ActnList, ImgList, Boxes, PCPProceso, dxEditor, dxEdLib, dxDBELib,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock,
  TB2Toolbar, JvExExtCtrls, JvComponent, JvDBRadioPanel, 
  SCLShape;
type
  Tfn1_form_pago_bonos1 = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    radi_es_porcentual: TJvDBRadioPanel;
    edit_valo_bonificacion: TdxDBCurrencyEdit;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    Tabla_VentanaCONS_FORM_PAGO_BONO: TIntegerField;
    Tabla_VentanaCODI_FORM_PAGO_BONO: TStringField;
    Tabla_VentanaNOMB_FORM_PAGO_BONO: TStringField;
    Tabla_VentanaINDICADOR: TIntegerField;
    Tabla_VentanaCONS_PERI_PAGO: TIntegerField;
    Tabla_VentanaES_PORCENTUAL: TIntegerField;
    Tabla_VentanaVALO_BONIFICACION: TFloatField;
    Tabla_VentanaMETA_EFICIENCIA: TFloatField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    quer_indicadores: TQuery;
    data_indicadores: TDataSource;
    quer_peri_pago: TQuery;
    data_peri_pago: TDataSource;
    SCLShape1: TSCLShape;
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure radi_es_porcentualChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_form_pago_bonos1: Tfn1_form_pago_bonos1;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Valores predeterminados del registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Abr-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_form_pago_bonos1.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With tabla_Ventana do
  Begin
      FieldByName('indicador').Value := 1;
      FieldByName('es_porcentual').Value := -1;

  End;
end;
{****************************************************************
Procedimiento   : radi_es_porcentualChange
Objetivo        : Actualizar la máscara de edición del valor
                  al cambiar el tipo de asignación de la
                  bonificación (% - $)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Abr-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_form_pago_bonos1.radi_es_porcentualChange(Sender: TObject);
begin
  inherited;
  if radi_es_porcentual.ItemIndex = 0 Then
     edit_valo_bonificacion.DisplayFormat := ',0.00 %'
  Else
     edit_valo_bonificacion.DisplayFormat := '$ ,0.00';
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar el formulario
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Abr-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_form_pago_bonos1.FormCreate(Sender: TObject);
begin
  inherited;
  //abrir las consultas
  AbrirDataSet(quer_indicadores);
  AbrirDataSet(quer_peri_pago);
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

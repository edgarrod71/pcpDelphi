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
        Unit            : un1_cont_hora_extr_rangos
        Objetivo        : Ventana de parametrización de rangos de horas
                          extra para el control y pago de novedades
                          de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 15-Jun-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit un1_cont_hora_extr_rangos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar;

type
  Tfn1_cont_hora_extr_rangos = class(T_fvent_modal)
    Panel1: TPanel;
    Label1: TLabel;
    chec_diarias: TdxDBCheckEdit;
    chec_semanales: TdxDBCheckEdit;
    pane_diarias: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    SCLDBLabel2: TSCLDBLabel;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    SCLDBLabel4: TSCLDBLabel;
    dxDBCurrencyEdit4: TdxDBCurrencyEdit;
    SCLDBLabel5: TSCLDBLabel;
    dxDBCurrencyEdit5: TdxDBCurrencyEdit;
    SCLDBLabel6: TSCLDBLabel;
    dxDBCurrencyEdit6: TdxDBCurrencyEdit;
    pane_Semanales: TPanel;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    dxDBCurrencyEdit7: TdxDBCurrencyEdit;
    dxDBCurrencyEdit8: TdxDBCurrencyEdit;
    dxDBCurrencyEdit9: TdxDBCurrencyEdit;
    dxDBCurrencyEdit10: TdxDBCurrencyEdit;
    dxDBCurrencyEdit11: TdxDBCurrencyEdit;
    dxDBCurrencyEdit12: TdxDBCurrencyEdit;
    Label2: TLabel;
    Panel2: TPanel;
    SCLDBLabel13: TSCLDBLabel;
    SCLDBLabel14: TSCLDBLabel;
    SCLDBLabel15: TSCLDBLabel;
    SCLDBLabel16: TSCLDBLabel;
    SCLDBLabel17: TSCLDBLabel;
    SCLDBLabel18: TSCLDBLabel;
    dxDBCurrencyEdit13: TdxDBCurrencyEdit;
    dxDBCurrencyEdit14: TdxDBCurrencyEdit;
    dxDBCurrencyEdit15: TdxDBCurrencyEdit;
    dxDBCurrencyEdit16: TdxDBCurrencyEdit;
    dxDBCurrencyEdit17: TdxDBCurrencyEdit;
    dxDBCurrencyEdit18: TdxDBCurrencyEdit;
    Label3: TLabel;
    chec_dominicales: TdxDBCheckEdit;
    pane_dominicales: TPanel;
    SCLDBLabel19: TSCLDBLabel;
    SCLDBLabel20: TSCLDBLabel;
    SCLDBLabel21: TSCLDBLabel;
    SCLDBLabel22: TSCLDBLabel;
    SCLDBLabel23: TSCLDBLabel;
    SCLDBLabel24: TSCLDBLabel;
    dxDBCurrencyEdit19: TdxDBCurrencyEdit;
    dxDBCurrencyEdit20: TdxDBCurrencyEdit;
    dxDBCurrencyEdit21: TdxDBCurrencyEdit;
    dxDBCurrencyEdit22: TdxDBCurrencyEdit;
    dxDBCurrencyEdit23: TdxDBCurrencyEdit;
    dxDBCurrencyEdit24: TdxDBCurrencyEdit;
    chec_festivos: TdxDBCheckEdit;
    pane_festivos: TPanel;
    SCLDBLabel25: TSCLDBLabel;
    SCLDBLabel26: TSCLDBLabel;
    SCLDBLabel27: TSCLDBLabel;
    SCLDBLabel28: TSCLDBLabel;
    SCLDBLabel29: TSCLDBLabel;
    SCLDBLabel30: TSCLDBLabel;
    dxDBCurrencyEdit25: TdxDBCurrencyEdit;
    dxDBCurrencyEdit26: TdxDBCurrencyEdit;
    dxDBCurrencyEdit27: TdxDBCurrencyEdit;
    dxDBCurrencyEdit28: TdxDBCurrencyEdit;
    dxDBCurrencyEdit29: TdxDBCurrencyEdit;
    dxDBCurrencyEdit30: TdxDBCurrencyEdit;
    procedure padr_acti_nuevoExecute(Sender: TObject);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure doActualizarSeleccion(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure Tabla_VentanaBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_cont_hora_extr_rangos: Tfn1_cont_hora_extr_rangos;

implementation

uses _func_varias, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : padr_acti_nuevoExecute
Objetivo        : Controlar que solo exista un registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_hora_extr_rangos.padr_acti_nuevoExecute(
  Sender: TObject);
begin
  if tabla_Ventana.RecordCount >= 1 Then Abort;
  inherited;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Inicializar el registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_hora_extr_rangos.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Valores por defecto
  With tabla_Ventana do
  Begin
        FieldByName('sele_diarias').Value := -1;
        FieldByName('sele_semanales').Value := 1;
  End;
end;
{****************************************************************
Procedimiento   : doActualizarSeleccion
Objetivo        : Actualizar los controles de acuerdo con la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_hora_extr_rangos.doActualizarSeleccion(Sender: TObject);
begin
  inherited;
  With Tabla_Ventana do
  Begin
      //Excluyente : diario - semanal
      setControlEnabled(pane_diarias, chec_diarias.Checked);
      setControlEnabled(pane_Semanales, chec_semanales.Checked);
      setControlEnabled(pane_dominicales, chec_dominicales.Checked);
      setControlEnabled(pane_festivos, chec_festivos.Checked);
  End;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_hora_extr_rangos.FormShow(Sender: TObject);
begin
  inherited;
  doActualizarSeleccion(Sender);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Hacer las validaciones antes de guardar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_hora_extr_rangos.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Diario y semanal son EXCLUYENTES
  If (chec_diarias.Checked) and (chec_semanales.Checked) Then
      Raise Exception.Create(cosErrorHorasExtrasDiariasSemanalesExcluyentes);
  //O diarias O semanales, pero alguna
  If Not((chec_diarias.Checked) or (chec_semanales.Checked)) Then
      Raise Exception.Create(cosErrorHorasExtrasDiariasSemanalesAlguna);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforeOpen
Objetivo        : Preparar la tabla principal antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_hora_extr_rangos.Tabla_VentanaBeforeOpen(
  DataSet: TDataSet);
var
        var_i   : Integer;
begin
  inherited;
  //Titulos de los constraints
  For var_i := 1 to Tabla_Ventana.Constraints.Count do
      Tabla_Ventana.Constraints[var_i - 1].ErrorMessage := cosErrorRangoSuperiorMenor + #13 + #13 + Tabla_Ventana.Constraints[var_i - 1].CustomConstraint;
end;

procedure Tfn1_cont_hora_extr_rangos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

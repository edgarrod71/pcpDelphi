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
        Unit            : un1_form_pago_dividido1
        Objetivo        : Parametrización de forma de pago
                          por valor hora producción dividido
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 07 de 2005
        Versión         : pcp4.0.0.16
*******************************************************************}
unit un1_form_pago_dividido1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, SCLShape, DBCtrls, RxLookup, PCPLookUpComboEdit,
  dxCurrencyEditPCP, TBXDkPanels, TBXButtonSCL, Boxes, PCPProceso, PCPFrame,
  ufra_mens_atencion;

type
  Tfn1_form_pago_dividido1 = class(T_fvent_modal)
    Panel1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    Tabla_VentanaCONS_FORM_PAGO_DIVIDIDO: TIntegerField;
    Tabla_VentanaCODI_FORM_PAGO_DIVIDIDO: TStringField;
    Tabla_VentanaNOMB_FORM_PAGO_DIVIDIDO: TStringField;
    Tabla_VentanaESTA_ACTIVO: TIntegerField;
    Tabla_VentanaCONS_FACT_1: TIntegerField;
    Tabla_VentanaVALO_FACT_1: TFloatField;
    Tabla_VentanaPORC_FACT_1: TFloatField;
    Tabla_VentanaCONS_FACT_2: TIntegerField;
    Tabla_VentanaVALO_FACT_2: TFloatField;
    Tabla_VentanaPORC_FACT_2: TFloatField;
    Tabla_VentanaCONS_FACT_3: TIntegerField;
    Tabla_VentanaVALO_FACT_3: TFloatField;
    Tabla_VentanaPORC_FACT_3: TFloatField;
    Tabla_VentanaCONS_FACT_4: TIntegerField;
    Tabla_VentanaVALO_FACT_4: TFloatField;
    Tabla_VentanaPORC_FACT_4: TFloatField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    quer_valo_hora: TQuery;
    data_valo_hora: TDataSource;
    pane_estructura: TPCPFrame;
    comb_1: TPCPLookUpComboEdit;
    comb_2: TPCPLookUpComboEdit;
    comb_3: TPCPLookUpComboEdit;
    comb_4: TPCPLookUpComboEdit;
    pane_1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    valo_1: TdxDBCurrencyEdit;
    porc_1: TdxDBCurrencyEdit;
    mens_1: Tffra_mens_atencion;
    pane_2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    valo_2: TdxDBCurrencyEdit;
    porc_2: TdxDBCurrencyEdit;
    mens_2: Tffra_mens_atencion;
    pane_3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    valo_3: TdxDBCurrencyEdit;
    porc_3: TdxDBCurrencyEdit;
    mens_3: Tffra_mens_atencion;
    pane_4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    valo_4: TdxDBCurrencyEdit;
    porc_4: TdxDBCurrencyEdit;
    mens_4: Tffra_mens_atencion;
    procedure FormCreate(Sender: TObject);
    procedure doCambiarCombo(Sender: TObject);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure DoActualizarVistaPorcentajes;
  end;

var
  fn1_form_pago_dividido1: Tfn1_form_pago_dividido1;

implementation

uses _MDI, _func_varias, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_dividido1.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización gráfica
  mens_1.SetCaption(cosHTMLInfoCalculado);
  mens_2.SetCaption(cosHTMLInfoCalculado);
  mens_3.SetCaption(cosHTMLInfoCalculado);
  mens_4.SetCaption(cosHTMLInfoCalculado);
  mens_1.SetNormalColors(True);
  mens_2.SetNormalColors(True);
  mens_3.SetNormalColors(True);
  mens_4.SetNormalColors(True);
  //Abrir consultas
  AbrirDataSet(quer_valo_hora);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doCambiarCombo
Objetivo        : Actualizar los datos cuando cambie el combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_dividido1.doCambiarCombo(Sender: TObject);
Var
    var_cons_key        : Integer;
    var_combo           : TPCPLookupComboEdit;
    var_panel           : TPanel;
begin
  inherited;
  //Si no es un ComboBox - Salir
  if Not (Sender is TPCPLookUpComboEdit) Then Exit;
  //Si el combo esta vacio, dar NO ASIGNADO
  if (Sender as TPCPLookUpComboEdit).EstaVacio Then
  Begin
         pane_estructura.FindChildControl('pane_' + IntToStr((Sender as TPCPLookUpComboEdit).Tag)).Visible := False;
         Exit;
  End;
  var_cons_key := (Sender as TPCPLookUpComboEdit).KeyValue;
  //Escribir el valor de la selección en el parámetro
  if (tabla_Ventana.State in [dsEdit, dsInsert]) Then
  Begin
      //Buscar la opción y verificar que tenga vínculo válido a un campo
      if (quer_valo_hora.Locate('cons_form_pago_valo_hora', var_cons_key, [])) Then
         tabla_Ventana.FieldByName('valo_fact_' + IntToStr((Sender as TPCPLookUpComboEdit).Tag)).Value :=
              quer_valo_hora.FieldByName('valo_hora_produccion').asFloat
      Else
         //Valor cero en el parámetro
         tabla_Ventana.FieldByName('valo_fact_' + IntToStr((Sender as TPCPLookUpComboEdit).Tag)).Value := 0;
  End;
  //Mostrar el panel
  var_combo := (Sender as TPCPLookUpComboEdit);
  var_panel := (pane_estructura.FindChildControl('pane_' + IntToStr(var_Combo.Tag)) as TPanel);
  var_panel.Visible := True;
  If (var_cons_key = 0) Then
  Begin
        var_panel.FindChildControl('valo_' + IntToStr(var_Combo.Tag)).Enabled := True;
        var_panel.FindChildControl('mens_' + IntToStr(var_Combo.Tag)).Visible := False;
        //Si está editando, resetear el valor
        if (tabla_Ventana.state in [dsEdit, dsInsert]) then
            tabla_Ventana.FieldByName('valo_fact_' + IntToStr((Sender as TPCPLookUpComboEdit).Tag)).Value := 0;
  End
  Else
  Begin
        var_panel.FindChildControl('valo_' + IntToStr(var_Combo.Tag)).Enabled := False;
        var_panel.FindChildControl('mens_' + IntToStr(var_Combo.Tag)).Visible := (quer_valo_hora.FieldByName('calculado').asInteger = 1);
  End;
  //Actualizar el estado de los combos
  comb_2.Enabled := not (comb_1.estaVacio);
  comb_3.Enabled := not (comb_2.estaVacio);
  comb_4.Enabled := not (comb_3.estaVacio);
  if not comb_2.Enabled Then comb_2.ClearValue;
  if not comb_3.Enabled Then comb_3.ClearValue;
  if not comb_4.Enabled Then comb_4.ClearValue;
  //DoActualizarVistaPorcentajes;

  //Habilitar el campo de valor para el tipo 0 (valor personalizado)
  {if (Sender = comb_1) Then valo_1.Enabled := ((Sender as TPCPLookUpComboEdit).KeyValue = 11);
  if (Sender = comb_2) Then valo_2.Enabled := ((Sender as TPCPLookUpComboEdit).KeyValue = 11);
  if (Sender = comb_3) Then valo_3.Enabled := ((Sender as TPCPLookUpComboEdit).KeyValue = 11);
  if (Sender = comb_4) Then valo_4.Enabled := ((Sender as TPCPLookUpComboEdit).KeyValue = 11);  }
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Dar valores por defecto al nuevo registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 08 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_dividido1.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
Var
    var_i   : Integer;
begin
  inherited;
  //valores por defecto
  With tabla_ventana do
  Begin
     FieldByName('ESTA_ACTIVO').Value := 1;
     for Var_I := 1 to 4 do
     Begin
       FieldByName('VALO_FACT_'+IntToStr(var_i)).Value := 0;
       FieldByName('PORC_FACT_'+IntToStr(var_i)).Value := 0;
     End;
  End;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterScroll
Objetivo        : Actualizar los controles al cambiar de registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 18-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure Tfn1_form_pago_dividido1.Tabla_VentanaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  If tabla_ventana.Active then
  Begin
      doCambiarCombo(comb_1);
      doCambiarCombo(comb_2);
      doCambiarCombo(comb_3);
      doCambiarCombo(comb_4);
  End;
end;
{****************************************************************
Procedimiento   : DoActualizarVistaPorcentajes
Objetivo        : Actualizar los porcentajes de acuerdo con
                  la selección de los combos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure Tfn1_form_pago_dividido1.DoActualizarVistaPorcentajes;
Begin

   //
End;

{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles al mostrar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 22-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_form_pago_dividido1.FormShow(Sender: TObject);
begin
  inherited;
  doCambiarCombo(comb_1);
  doCambiarCombo(comb_2);
  doCambiarCombo(comb_3);
  doCambiarCombo(comb_4);
end;

end.

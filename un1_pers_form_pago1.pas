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
        Unit            : un1_pers_form_pago1
        Objetivo        : Asignación de forma de pago por operario
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 14-Jun-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit un1_pers_form_pago1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, JvExExtCtrls, JvComponent,
  JvDBRadioPanel, SCLShape, PCPFrame, RxLookup, PCPLookUpComboEdit,
  dxCurrencyEditPCP, DBCtrls, SCLTabs, TBXDkPanels, TBXButtonSCL;

type
  Tfn1_pers_form_pago1 = class(T_fvent_modal)
    Panel1: TPanel;
    Tabla_VentanaCONS_FORM_PAGO_PERSONAL: TIntegerField;
    Tabla_VentanaCONS_PERSONAL: TIntegerField;
    Tabla_VentanaFECH_INICIAL: TDateTimeField;
    Tabla_VentanaVALO_HORA_MINI_GARANTIZADO: TFloatField;
    Tabla_VentanaVALO_HORA_PRODUCCION: TFloatField;
    Tabla_VentanaCONS_SIS_FORM_PAGO: TIntegerField;
    Tabla_VentanaPARA_1: TStringField;
    Tabla_VentanaPARA_2: TStringField;
    Tabla_VentanaPARA_3: TStringField;
    Tabla_VentanaCONS_FORM_PAGO_APRENDIZAJE: TIntegerField;
    Tabla_VentanaFECH_FINA_PAGO_APRENDIZAJE: TDateTimeField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    quer_personal: TQuery;
    data_personal: TDataSource;
    quer_form_pago: TQuery;
    data_form_pago: TDataSource;
    quer_diferencial: TQuery;
    data_codigo: TDataSource;
    quer_dividido: TQuery;
    quer_aprendizaje: TQuery;
    quer_parametros: TQuery;
    quer_guardar: TQuery;
    page: TSCLPageControl;
    page_form_pago: TSCLTabSheet;
    page_curv_aprendizaje: TSCLTabSheet;
    pane_form_pago: TPCPFrame;
    SCLDBLabel9: TSCLDBLabel;
    SCLShape1: TSCLShape;
    radi_form_pago: TJvDBRadioPanel;
    pane_valo_hora_produccion: TPanel;
    SCLDBLabel5: TSCLDBLabel;
    DBText2: TDBText;
    edit_valo_hora_produccion: TdxDBCurrencyEdit;
    pane_codigo: TPanel;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    comb_codigo: TPCPLookUpComboEdit;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    pane_seleccion: TPanel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    DBText1: TDBText;
    edit_fech_inicial: TdxDBDateEdit;
    edit_valo_hora_mini_garantizado: TdxDBCurrencyEdit;
    pane_aprendizaje: TPanel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    comb_codi_aprendizaje: TPCPLookUpComboEdit;
    comb_nomb_aprendizaje: TPCPLookUpComboEdit;
    data_aprendizaje: TDataSource;
    Tabla_VentanaEFIC_INIC_APRENDIZAJE: TFloatField;
    quer_oper_codigo: TQuery;
    data_oper_codigo: TDataSource;
    pane_operacion: TPanel;
    SCLDBLabel13: TSCLDBLabel;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    SCLDBLabel14: TSCLDBLabel;
    PCPLookUpComboEdit3: TPCPLookUpComboEdit;
    Tabla_VentanaCONS_OPER_COSTURA: TIntegerField;
    quer_oper_nombre: TQuery;
    data_oper_nombre: TDataSource;
    SCLDBLabel11: TSCLDBLabel;
    edit_efic_inicial: TdxDBCurrencyEdit;
    SCLDBLabel12: TSCLDBLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    TBXButtonSCL1: TTBXButtonSCL;
    procedure FormCreate(Sender: TObject);
    procedure quer_personalBeforeOpen(DataSet: TDataSet);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure pageChange(Sender: TObject);
    procedure quer_form_pagoAfterOpen(DataSet: TDataSet);
    procedure radi_form_pagoChange(Sender: TObject);
    procedure padr_acti_guardarExecute(Sender: TObject);
    procedure comb_codi_aprendizajeChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure doRecalcularFechaFinalizacion(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure padr_acti_guar_cerrarExecute(Sender: TObject);
  private
    { Private declarations }
    Function FormaPagoActiva : Integer;
  public
    { Public declarations }
  end;

var
  fn1_pers_form_pago1: Tfn1_pers_form_pago1;

implementation

uses _func_varias, _MDI, _cons_pcp, _vari_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización visual y de variables

  //Inicializacion de objetos DB
  AbrirDataSet(quer_form_pago);
  AbrirDataSet(quer_diferencial);
  AbrirDataSet(quer_dividido);
  AbrirDataSet(quer_aprendizaje);
  AbrirDataSet(quer_parametros);
  AbrirDataSet(quer_personal);
  AbrirDataSet(quer_oper_codigo);
  AbrirDataSet(quer_oper_nombre);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : quer_personalBeforeOpen
Objetivo        : Asignar el parámetro del consecutivo del personal
                  a la consulta de nombres antes de abrirla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.quer_personalBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  quer_personal.ParamByName('cons_personal').Value := var_glob_integer;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Inicializar el registro principal con los valores
                  predeterminados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.Tabla_VentanaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  With Tabla_Ventana do
  Begin
      FieldByName('fech_inicial').Value := NowDate;
      FieldByName('valo_hora_produccion').Value := quer_parametros.FieldByName('valo_hora_produccion').asFloat;
      FieldByName('valo_hora_mini_garantizado').Value := quer_parametros.FieldByName('valo_hora_mini_garantizado').asFloat;
  End;
end;
{****************************************************************
Procedimiento   : pageChange
Objetivo        : Actualizar la ventana al cambiar 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.pageChange(Sender: TObject);
begin
  inherited;
  pane_seleccion.Parent := page.ActivePage;
  pane_seleccion.Top := -1;
end;
{****************************************************************
Procedimiento   : quer_form_pagoAfterOpen
Objetivo        : Mostrar las formas de pago existentes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.quer_form_pagoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  //Limpiar las formas de pago existentes
  radi_form_pago.Items.Clear;
  radi_form_pago.Values.Clear;
  While not quer_form_pago.Eof do
  Begin
      radi_form_pago.Items.Add(quer_form_pago.FieldByName('nomb_sis_form_pago').asString);
      radi_form_pago.Values.Add(quer_form_pago.FieldByName('cons_sis_form_pago').asString);
      quer_form_pago.Next;
  End;
end;
{****************************************************************
Procedimiento   : radi_form_pagoChange
Objetivo        : Actualiza las opciones de la ventana
                  al cambiar la forma de pago activa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.radi_form_pagoChange(Sender: TObject);
Var
    var_cons_form_pago  : Integer;
begin
  inherited;
  //Inicializar los controles
  pane_valo_hora_produccion.Visible := False;
  pane_codigo.Visible := False;
  //Si no se ha inicializado la ventana, salir
  If Not var_Vent_inicializada Then Exit;
  CheckAndEditDataSet(tabla_Ventana);
  comb_codigo.ClearValue;
  tabla_Ventana.FieldByName('para_1').Clear;
  //Validar el combo
  if Not (radi_form_pago.ItemIndex = -1) Then
  Begin
      //Consecutivo
      var_Cons_form_pago := StrToInt(radi_form_pago.Values[radi_form_pago.ItemIndex]);
      pane_valo_hora_produccion.Visible := (var_Cons_form_pago in [fpValorHoraProduccion]);
      pane_valo_hora_produccion.Top := pane_form_pago.Top + 1;
      pane_codigo.Visible := (var_cons_form_pago in [fpDividido, fpValorHoraDiferencial]);
      pane_codigo.Top := pane_valo_hora_produccion.Top + 1;
      edit_valo_hora_mini_garantizado.Enabled := True;
      //Llenar los valores
      if pane_valo_hora_produccion.Visible Then
        tabla_Ventana.FieldByName('VALO_HORA_PRODUCCION').Value := quer_parametros.FieldByName('valo_hora_produccion').asFloat
      Else
      //Formas de pago fijas
      if var_cons_form_pago = fpDividido Then
        data_codigo.DataSet := quer_dividido
      Else
      if var_cons_form_pago = fpValorHoraDiferencial Then
        data_codigo.DataSet := quer_diferencial;
  End;
end;
{****************************************************************
Procedimiento   : FormaPagoActiva
Objetivo        : Devuelve el consecutivo de la forma de pago seleccionada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Function Tfn1_pers_form_pago1.FormaPagoActiva : Integer;
Begin
        if radi_form_pago.ItemIndex = -1 Then Result := -1
        Else Result := StrToInt(radi_form_pago.values[radi_Form_pago.ItemIndex]);
End;
{****************************************************************
Procedimiento   : padr_acti_guardarExecute
Objetivo        : Preparar el registro maestro para guardarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.padr_acti_guardarExecute(Sender: TObject);
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
Procedimiento   : comb_codi_aprendizajeChange
Objetivo        : Actualizar los controles al cambiar la forma de pago
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.comb_codi_aprendizajeChange(Sender: TObject);
begin
  inherited;
  SetControlEnabled(pane_operacion, Not comb_nomb_aprendizaje.EstaVacio);
  //Recalcular la fecha final
  If (Tabla_Ventana.State = dsInsert) then
      doRecalcularFechaFinalizacion(Sender);    
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles al mostrar la ventaan
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.FormShow(Sender: TObject);
var
        var_para_1      : String;
begin
  inherited;
  if var_Vent_inicializada Then
  Begin
    //Si la tabla ventana tiene alguna forma de pago seleccionada, ubicarla
    if Not varIsNull(Tabla_Ventana.FieldByName('cons_sis_form_pago').Value) Then
        radi_form_pago.ItemIndex := Tabla_Ventana.FieldByName('cons_sis_form_pago').asInteger;
    //Actualizar la selección
    var_para_1 := tabla_ventana.FieldByName('para_1').asString;
    radi_form_pagoChange(self);
    tabla_ventana.FieldByName('para_1').Value := var_para_1;
    comb_codi_aprendizajeChange(Sender);
  End;
end;
{****************************************************************
Procedimiento   : doRecalcularFechaFinalizacion
Objetivo        : Recalcula la fecha de finalizacion de la curva de
                  aprendizaje
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.doRecalcularFechaFinalizacion(Sender: TObject);
begin
  inherited;
  CheckAndEditDataSet(Tabla_Ventana);
  if comb_codi_aprendizaje.EstaVacio then
        Tabla_Ventana.FieldByName('fech_fina_pago_aprendizaje').Clear
  Else
        Tabla_Ventana.FieldByName('fech_fina_pago_aprendizaje').Value := Tabla_Ventana.FieldByName('fech_inicial').asDateTime + (quer_aprendizaje.FieldByName('nume_semanas').asInteger * 7);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Preparar el registro para guardarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.Tabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
  //Validar los datos de la curva
  if comb_codi_aprendizaje.EstaVacio then
     with tabla_Ventana do
     Begin
         FieldByName('EFIC_INIC_APRENDIZAJE').Value := 0;
         FieldByName('FECH_FINA_PAGO_APRENDIZAJE').Clear;
         FieldByName('CONS_OPER_COSTURA').Clear;
     End;
end;
{****************************************************************
Procedimiento   : padr_acti_guar_cerrarExecute
Objetivo        : Asignar el consecutivo del personal
                  antes de guardar y cerrar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_pers_form_pago1.padr_acti_guar_cerrarExecute(
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

end.

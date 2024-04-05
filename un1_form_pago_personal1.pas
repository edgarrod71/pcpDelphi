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
        Unit            : un1_form_pago_personal1
        Objetivo        : Actualización de la forma de pago
                          asignada al personal
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           :
        Versión         : pcp4.0.0.16
*******************************************************************}
unit un1_form_pago_personal1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL,  dxDBCtrl, dxDBGrid, SCLDBGrid,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  Db, kbmMemTable, JvExExtCtrls, JvComponent, JvDBRadioPanel,
  dxEdLib, dxCurrencyEditPCP, dxEditor, DBCtrls, RxLookup,
  PCPLookUpComboEdit, PCPFrame, SCLShape, dxCntner, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, Boxes, PCPProceso, dxDBELib, StdCtrls,
  SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar;
type
  TTipoOrigen   = (toGrid, toDataSet);

  Tfn1_form_pago_personal1 = class(T_fvent_modal)
    Panel1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    labe_nomb_personal: TSCLDBLabel;
    pane_seleccion: TPanel;
    edit_codi_personal: TdxEdit;
    Edit_nomb_personal: TdxEdit;
    SCLDBLabel3: TSCLDBLabel;
    edit_fech_inicial: TdxDateEdit;
    quer_form_pago: TQuery;
    data_form_pago: TDataSource;
    pane_valo_hora_produccion: TPanel;
    SCLDBLabel5: TSCLDBLabel;
    edit_valo_hora_produccion: TdxCurrencyEditPCP;
    DBText2: TDBText;
    quer_diferencial: TQuery;
    quer_dividido: TQuery;
    quer_parametros: TQuery;
    data_codigo: TDataSource;
    quer_guardar: TQuery;
    SCLDBLabel2: TSCLDBLabel;
    edit_valo_hora_mini_garantizado: TdxCurrencyEditPCP;
    DBText1: TDBText;
    quer_aprendizaje: TQuery;
    pane_codigo: TPanel;
    SCLDBLabel7: TSCLDBLabel;
    comb_codigo: TPCPLookUpComboEdit;
    quer_pers_codigo: TQuery;
    comb_codi_personal: TPCPLookUpComboEdit;
    comb_nomb_personal: TPCPLookUpComboEdit;
    myTabla_Ventana: TkbmMemTable;
    myTabla_Ventanacons_personal: TIntegerField;
    quer_pers_nombre: TQuery;
    data_pers_codigo: TDataSource;
    data_pers_nombre: TDataSource;
    myTabla_Ventanacons_form_pago: TIntegerField;
    Panel2: TPCPFrame;
    radi_form_pago: TJvDBRadioPanel;
    SCLDBLabel9: TSCLDBLabel;
    SCLShape1: TSCLShape;
    SCLDBLabel4: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    myTabla_Ventanacodigo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure comb_codigoChange(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure padr_acti_aceptarExecute(Sender: TObject);
    procedure padr_acti_aceptarUpdate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure padr_acti_cancelarUpdate(Sender: TObject);
    procedure quer_form_pagoAfterOpen(DataSet: TDataSet);
    procedure radi_form_pagoChange(Sender: TObject);
  private
    { Private declarations }
    var_Grid    : TSCLDBGrid;
    var_DataSet : TDataSet;
    var_tipo_origen : TTipoOrigen;
    Function FormaPagoActiva : Integer;
  public
    { Public declarations }
    Procedure doEjecutarVentana(peFecha : TDate; peGrid : tSCLDBGrid); Overload;
    Procedure doEjecutarVentana(peFecha : TDate; peDataSet  : TDataSet); Overload;
    Procedure doEjecutarVentana(peFecha : TDate); Overload;
  end;

var
  fn1_form_pago_personal1: Tfn1_form_pago_personal1;

implementation

uses _MDI, _func_varias, _cons_pcp, _func_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2004
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_personal1.FormCreate(Sender: TObject);
begin
  inherited;
  edit_Fech_inicial.Date := NowDate;
  AbrirDataSet(quer_form_pago);
  AbrirDataSet(quer_dividido);
  AbrirDataSet(quer_diferencial);
  //AbrirDataSet(quer_aprendizaje);
  AbrirDataSet(quer_parametros);
  edit_valo_hora_produccion.Value := quer_parametros.FieldByName('valo_hora_produccion').asFloat;
  edit_valo_hora_mini_garantizado.Value := quer_parametros.FieldByName('valo_hora_mini_garantizado').asFloat;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doEjecutarVentana
Objetivo        : Ejecutar la ventana para realizar los cambios
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
Procedure Tfn1_form_pago_personal1.doEjecutarVentana(peFecha : TDate; peGrid : tSCLDBGrid);
Begin
     //Validar entrada
     if (peGrid = Nil) Then Close;
     if (peGrid.DataSource = Nil) or (peGrid.DataSource.DataSet = Nil) Then Close;
     //Nombres (un solo registro)
     edit_fech_inicial.Date := peFecha;
     if (peGrid.SelectedCount = 1) Then
     Begin
          edit_codi_personal.Text := peGrid.DataSource.DataSet.FieldByName('codi_personal').asString;
          edit_nomb_personal.Text := peGrid.DataSource.DataSet.FieldByName('nomb_completo').asString;
     End
     Else
     Begin
        edit_codi_personal.Text := cosVarios;
        labe_nomb_personal.Visible := False;
        edit_nomb_personal.Visible := False;
     End;
     var_Grid := peGrid;
     var_tipo_origen := toGrid;
     ShowModal;
End;
{-----------------------OVERLOAD----------------------------------------------}
Procedure Tfn1_form_pago_personal1.doEjecutarVentana(peFecha : TDate; peDataSet  : TDataSet);
Begin
     //Nombres (un solo registro)
     edit_fech_inicial.Date := peFecha;
     //Abrir la consulta de personal
     ProgresoBarraEstado(cosTrabajando);
     AbrirDataSet(quer_pers_codigo);
     AbrirDataSet(quer_pers_nombre);
     AbrirDataSet(myTabla_Ventana);
     //Si no hay dataSet, es el de ventana
     if (peDataSet = Nil) then peDataSet := myTabla_Ventana;
     comb_codi_personal.Visible := True;
     comb_nomb_personal.Visible := True;
     var_DataSet := peDataSet;
     var_tipo_origen := toDataSet;
     ProgresoBarraEstado;
     ShowModal;
End;
{------------------------OVERLOAD---------------------------------------------------------}
Procedure Tfn1_form_pago_personal1.doEjecutarVentana(peFecha : TDate);
Begin
    DoEjecutarVentana(peFecha, myTabla_Ventana);
End;
{****************************************************************
Procedimiento   : comb_codigoChange
Objetivo        : Actualizar la ventana cuando cambie el combo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_personal1.comb_codigoChange(Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Cancelar los cambios
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_personal1.padr_acti_cancelarExecute(
  Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(myTabla_ventana);
  if (Confirmar(cosDeseaCancelar) = mrYes) Then Close;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarExecute
Objetivo        : Ejecutar la acción de aceptar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_personal1.padr_acti_aceptarExecute(
  Sender: TObject);
Var
    var_fila    : Integer;
    var_recordCount : Integer;
    var_cons_form_pago  : Integer;
begin
  inherited;
  //Validaciones generales
  if (edit_fech_inicial.Text = '') Then
  Begin
      DarFoco(edit_Fech_inicial);
      Raise Exception.Create(cosDebeSeleccionarLaFechaInicial);
  End;
  if (FormaPagoActiva = -1) Then
  Begin
      DarFoco(radi_form_pago);
      Raise Exception.Create(cosDebeSeleccionarFormaDePago);
  End;
  var_Cons_Form_pago := FormaPagoActiva;
  //Formas de pago con código
  if (var_cons_form_pago in [2,5,7]) Then
    if (comb_Codigo.EstaVacio) Then
    Begin
        DarFoco(comb_Codigo);
        Raise Exception.Create(cosDebeSeleccionarUnCodigoAsociadoFormaPago);
    End;
  //Confirmación del usuario
  If (Confirmar(cosLosDosSonCorrectos) = mrNo) Then Exit;
  Try
    StartDBTransaction;
    Update;
    //Movimientos por GRID
    if var_tipo_origen = toGrid Then
    Begin
          var_grid.Repaint;
          var_recordCount := var_grid.Count;
          for var_fila := 1 to var_recordCount do
          Begin
               With quer_guardar, var_grid do
               Begin
                     ParamByName('fech_inicial').Value := edit_Fech_inicial.Date;
                     ParamByName('valo_hora_mini_garantizado').Value := edit_valo_hora_mini_garantizado.Value;
                     ParamByName('valo_hora_produccion').Value := edit_valo_hora_produccion.Value;
                     if (var_grid.items[var_fila - 1].Selected) Then
                     Begin
                          ParamByName('cons_personal').Value := Items[var_fila - 1].Values[columnbyFieldName('cons_personal').Index];
                          if Not (FormaPagoActiva = -1) Then
                              ParamByName('cons_sis_form_pago').Value := FormaPagoActiva
                          Else
                              ParamByName('cons_sis_form_pago').Clear;
                          if Not comb_codigo.EstaVacio Then
                              ParamByName('para_1').Value := comb_codigo.KeyValue
                          Else
                              ParamByName('para_1').Clear;
                          //Formas de pago que no tienen parametros adicionales
                          ParamByName('para_2').Clear;
                          ParamByName('para_3').Clear;
                          //Ejecutar
                          quer_guardar.ExecSQL;
                     End;
               End;
               ProgresoBarraEstado(cosTrabajando, var_fila, var_recordCount);
          End
    End
    Else
    //Movimientos por DataSet
    if (var_tipo_origen = toDataSet) Then
    Begin
         With quer_guardar do
         Begin
                ParamByName('fech_inicial').Value := edit_Fech_inicial.Date;
                ParamByName('valo_hora_mini_garantizado').Value := edit_valo_hora_mini_garantizado.Value;
                ParamByName('valo_hora_produccion').Value := edit_valo_hora_produccion.Value;
                ParamByName('cons_personal').Value := var_DataSet.FieldByName('cons_personal').asInteger;
                if Not (FormaPagoActiva = -1) Then
                    ParamByName('cons_sis_form_pago').Value := FormaPagoActiva
                Else
                    ParamByName('cons_sis_form_pago').Clear;
                if Not comb_codigo.EstaVacio Then
                    ParamByName('para_1').Value := comb_codigo.KeyValue
                Else
                    ParamByName('para_1').Clear;
                //Formas de pago que no tienen parametros adicionales
                ParamByName('para_2').Clear;
                ParamByName('para_3').Clear;
                //Ejecutar
                quer_guardar.ExecSQL;
         End;
    End;
    CommitDBWork;
    ProgresoBarraEstado;
    Repaint;
    //Actualizar el solicitante
    If (var_tipo_origen = toGrid) then
    Begin
        RefreshDataSet(var_grid.DataSource.DataSet);
        Close;
    End
    Else
    //Si se envió por toDataSet verificar si desea ingresar más
    if (var_tipo_origen = toDataSet) Then
    Begin
        if (var_DataSet <> myTabla_Ventana) Then Close
        Else
           if (Confirmar(cosFormaPagoAsignadaDeseaOtroRegistro) = mrYes) Then
           Begin
               //Limpiar los datos
               myTabla_Ventana.Close;
               myTabla_Ventana.Open;
               edit_valo_hora_produccion.Value := quer_parametros.FieldByName('valo_hora_produccion').asFloat;
               edit_valo_hora_mini_garantizado.Value := quer_parametros.FieldByName('valo_hora_mini_garantizado').asFloat;
               radi_form_pago.ItemIndex := -1;
               comb_codigo.ClearValue;
           End
           Else
                Close;
    End;
  Except
    On e:Exception do
    Begin
        RollBackDBWork;
        EjecutarMensajeError(e.Message);
        ProgresoBarraEstado;
    End;
  End;
end;
{****************************************************************
Procedimiento   : padr_acti_aceptarUpdate
Objetivo        : Actualizar el estado de la acción ACEPTAR
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 11 de 2005
Versión         : pcp4.0.20.4
*****************************************************************}
procedure Tfn1_form_pago_personal1.padr_acti_aceptarUpdate(
  Sender: TObject);
begin
  inherited;
  padr_acti_Aceptar.Enabled :=  Not(FormaPagoActiva = -1) and
        ((var_tipo_origen = toGrid) or
         ((var_Tipo_origen = toDataSet) and (not comb_codi_personal.EstaVacio)));
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Guardar los cambios antes de cerrar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 11 de 2005
Versión         : pcp4.0.20.4
*****************************************************************}
procedure Tfn1_form_pago_personal1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  checkAndPostDataSet(myTabla_ventana);  
  inherited;
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarUpdate
Objetivo        : Actualizar la acción de cancelar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 11 de 2005
Versión         : pcp4.0.20.4
*****************************************************************}
procedure Tfn1_form_pago_personal1.padr_acti_cancelarUpdate(
  Sender: TObject);
begin
  inherited;
  padr_Acti_cancelar.Enabled := True;
end;
{****************************************************************
Procedimiento   : quer_form_pagoAfterOpen
Objetivo        : Cargar las opciones del radio de selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_form_pago_personal1.quer_form_pagoAfterOpen(
  DataSet: TDataSet);
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

procedure Tfn1_form_pago_personal1.radi_form_pagoChange(Sender: TObject);
Var
    var_cons_form_pago  : Integer;
begin
  inherited;
  //Inicializar los controles
  pane_valo_hora_produccion.Visible := False;
  pane_codigo.Visible := False;
  comb_codigo.ClearValue;
  //Validar el combo
  if Not (radi_form_pago.ItemIndex = -1) Then
  Begin
      //Consecutivo
      var_Cons_form_pago := StrToInt(radi_form_pago.Values[radi_form_pago.ItemIndex]);
      pane_valo_hora_produccion.Visible := (var_Cons_form_pago in [fpValorHoraProduccion]);
      pane_valo_hora_produccion.Top := pane_seleccion.Top + 1;
      pane_codigo.Visible := (var_cons_form_pago in [fpDividido, fpValorHoraDiferencial]);
      pane_codigo.Top := pane_valo_hora_produccion.Top + 1;
      edit_valo_hora_mini_garantizado.Enabled := True;
      //Llenar los valores
      if pane_valo_hora_produccion.Visible Then
        edit_valo_hora_produccion.Value := quer_parametros.FieldByName('valo_hora_produccion').asFloat
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
Function Tfn1_form_pago_personal1.FormaPagoActiva : Integer;
Begin
        if radi_form_pago.ItemIndex = -1 Then Result := -1
        Else Result := StrToInt(radi_form_pago.values[radi_Form_pago.ItemIndex]);
End;
end.

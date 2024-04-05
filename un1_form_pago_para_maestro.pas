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
        Unit            : un1_form_pago_para_maestro
        Objetivo        : Ventana maestra de parametrización de
                          formas de pago
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 27 de 2004
        Versión         : pcp4.0.0.14
*******************************************************************}
unit un1_form_pago_para_maestro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPFrame, ufra_maqu_ubicacion, RxMemDS,
  RxLookup, PCPLookUpComboEdit, SCLShape, ufra_mens_atencion,
  dxCurrencyEditPCP, PCPProceso;

type
  Tfn1_form_pago_para_maestro = class(T_fvent_modal)
    padr_fram_superior: TPCPFrame;
    fram_ubicacion: Tffra_maqu_ubicacion;
    myTabla_Ventana: TRxMemoryData;
    myTabla_Ventanacons_empresa: TIntegerField;
    myTabla_Ventanacons_planta: TIntegerField;
    myTabla_Ventanacons_plan_linea: TIntegerField;
    myTabla_Ventanacons_line_seccion: TIntegerField;
    myTabla_Ventanacons_ubic_tipo: TIntegerField;
    pane_parametrizacion: TPCPFrame;
    padr_pane_turno: TPanel;
    padr_labe_turno: TSCLDBLabel;
    comb_turno: TPCPLookUpComboEdit;
    quer_turnos: TQuery;
    data_turnos: TDataSource;
    myTabla_Ventanacons_turno: TIntegerField;
    quer_seleccionar: TQuery;
    fram_mens_no_existe: Tffra_mens_atencion;
    tabl_guardar: TRxMemoryData;
    tabl_guardarmyField: TIntegerField;
    data_guardar: TDataSource;
    quer_elim_valores: TQuery;
    quer_guar_valores: TQuery;
    quer_form_pago_parametros: TQuery;
    quer_guar_maestro: TQuery;
    padr_pane_separador: TPanel;
    quer_sele_valores: TQuery;
    padr_SCLDBLabel14: TSCLDBLabel;
    comb_peri_pago: TPCPLookUpComboEdit;
    quer_peri_pago: TQuery;
    data_peri_pago: TDataSource;
    quer_actu_maestro: TQuery;
    padr_pane_horas: TPanel;
    padr_SCLDBLabel5: TSCLDBLabel;
    padr_SCLDBLabel6: TSCLDBLabel;
    edit_hora_semanales: TdxCurrencyEditPCP;
    edit_hora_diarias: TdxCurrencyEditPCP;
    quer_elim_maestro: TQuery;
    tabl_guardarspli_bonificacion: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure fram_ubicacioncomb_tipo_ubicacionChange(Sender: TObject);
    procedure doActualizarSeleccion(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure fram_mens_no_existefram_labelClick(Sender: TObject);
    procedure data_guardarStateChange(Sender: TObject);
    procedure tabl_guardarAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure padr_acti_guardarExecute(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure comb_peri_pagoChange(Sender: TObject);
    procedure padr_acti_eliminarExecute(Sender: TObject);
  private
    { Private declarations }
    var_actualizando : Boolean;
  public
    { Public declarations }
    var_cons_sis_form_pago  : Integer;
    Procedure LocalizarValorFormaPago(peQueryParametros : TQuery;
            peCombo : TPCPLookUpComboEdit;
            peEdit_valor, peEdit_Porcentaje : TdxCurrencyEditPCP);
    Function doCrearRegistroMaestro : Integer;
  end;

var
  fn1_form_pago_para_maestro: Tfn1_form_pago_para_maestro;

implementation

uses _func_varias, _cons_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar las variables
  var_actualizando := False;
  var_cons_sis_form_pago := -1;
  pane_parametrizacion.Caption := cosParametrizacion;
  //Abrir las consultas
  AbrirDataSet(tabl_guardar);
  InicializarFrame(fram_Ubicacion);
  AbrirDataSet(quer_turnos);
  AbrirDataSet(quer_Form_pago_parametros);
  AbrirDataSet(quer_peri_pago);
  //Ubicar el registro de la planta propia
  If not fram_ubicacion.quer_maqu_ubicaciones.locate('codi_ubic_tipo', 'PP', []) Then
    EjecutarMensajeError(cosErrorPara_Sist_codi_ubic_tipo)
  Else
  Begin
     //Insertar el registro
     With myTabla_Ventana do
     Begin
         Insert;
         FieldByName('cons_ubic_tipo').Value := fram_ubicacion.quer_maqu_ubicaciones.FieldByName('cons_ubic_tipo').asInteger;
         Post;
     End;
     //Actualizar los combos
     fram_ubicacioncomb_tipo_ubicacionChange(Sender);
  End;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : fram_ubicacioncomb_tipo_ubicacionChange
Objetivo        : Actualizar la ventana de acuerdo con la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 23 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.fram_ubicacioncomb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  fram_ubicacion.comb_tipo_ubicacionChange(Sender);
  doActualizarSeleccion(Sender);
end;
{****************************************************************
Procedimiento   : doActualizarSeleccion
Objetivo        : Actualiza la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 23 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.doActualizarSeleccion(Sender: TObject);
var
    var_control   : TControl;
    var_dias    : Integer;
    var_minu_dia  : Integer;
    var_i   : Integer;
Const
    cosNomb_campos : Array[1..7] of String =
    ('lune', 'mart', 'mier', 'juev', 'vier', 'saba', 'domi');
begin
  inherited;
  var_actualizando := True;
  //Guardar la tabla de la ventana
  CheckAndPostDataSet(myTabla_Ventana);
  //Modificar el query de la selección
  With quer_seleccionar do
  Begin
      //Cerrar la consulta
      Close;
      //Consulta
      Sql.Clear;
      Sql.Add('SELECT * FROM PCP_FORM_PAGO');
      //Filtros
      if Not (fram_ubicacion.comb_ubic_empresa.EstaVacio) Then
         Sql.Add('WHERE CONS_EMPRESA = '+IntToStr(fram_ubicacion.Comb_ubic_empresa.KeyValue))
      Else
         Sql.Add('WHERE CONS_EMPRESA IS NULL');
      if Not (fram_ubicacion.comb_ubic_planta.EstaVacio) Then
         Sql.Add('AND CONS_planta = '+IntToStr(fram_ubicacion.Comb_ubic_planta.KeyValue))
      Else
         Sql.Add('AND CONS_PLANTA IS NULL');
      if Not (fram_ubicacion.comb_ubic_linea.EstaVacio) Then
         Sql.Add('AND cons_plan_linea = '+IntToStr(fram_ubicacion.Comb_ubic_linea.KeyValue))
      Else
         Sql.Add('AND CONS_PLAN_LINEA IS NULL');
      if Not (fram_ubicacion.comb_ubic_seccion.EstaVacio) Then
         Sql.Add('AND cons_line_seccion = '+IntToStr(fram_ubicacion.Comb_ubic_seccion.KeyValue))
      Else
         Sql.Add('AND CONS_LINE_SECCION IS NULL');
      If Not (comb_turno.EstaVacio) Then
         Sql.Add('and cons_turno = '+IntToSTr(comb_turno.KeyValue))
      Else
         Sql.Add('AND CONS_TURNO IS NULL');
      Sql.Add('and cons_sis_form_pago = '+IntToStr(var_cons_sis_form_pago));
      //Abrir la consulta
      Open;
  End;
  //Verificar si existen registros para mostrar el panel de parametrización
  pane_parametrizacion.Visible := (quer_Seleccionar.RecordCount > 0);
  fram_mens_no_existe.Visible :=  (quer_Seleccionar.RecordCount = 0);
  padr_pane_horas.Visible := Not(comb_turno.EstaVacio);
  padr_acti_eliminar.Enabled := (quer_seleccionar.RecordCount > 0);
  //Si existe, seleccionarlo
  If (quer_seleccionar.RecordCount > 0) then
  Begin
      //Ubicar la forma de pago (período de cálculo)
      comb_peri_pago.KeyValue := quer_seleccionar.FieldByName('cons_peri_pago').asInteger;
      //Llamar los valores
      With quer_sele_valores do
      Begin
        if active then Close;
        ParamByName('cons_form_pago').Value := quer_seleccionar.FieldByName('cons_form_pago').asInteger;
        Open;
        //Recorrerlo
        While not Eof do
        Begin
             //Buscar el combo
             var_control := pane_parametrizacion.FindChildControl('comb_'+FieldByName('secu_parametro').asString);
             if (var_control <> Nil) Then
                if (var_control is TPCPLookUpComboEdit) Then
                    (var_control as TPCPLookUpComboEdit).KeyValue := FieldByName('cons_tabl_auxi_detalle').asInteger;
             //Buscar el edit del valor
             var_control := pane_parametrizacion.FindChildControl('valo_'+FieldByName('secu_parametro').asString);
             if (var_control <> Nil) Then
                if (var_control is TdxCurrencyEditPCP) Then
                    (var_control as TdxCurrencyEditPCP).Value := FieldByName('valo_parametro').asFloat;
             //Buscar el edit del porcentaje
             var_control := pane_parametrizacion.FindChildControl('porc_'+FieldByName('secu_parametro').asString);
             if (var_control <> Nil) Then
                if (var_control is TdxCurrencyEditPCP) Then
                    (var_control as TdxCurrencyEditPCP).Value := FieldByName('porc_parametro').asFloat;
             //Siguiente registro
             Next;
        End;
        //Cerrar la consulta
        Close;
      End;
  End;
  //Calcular las horas semanales del turno
  if not (comb_turno.EstaVacio) Then
  with quer_turnos do
  Begin
      var_dias := 0;
      var_minu_dia := 0;
      For var_i := 1 to 7 do
      Begin
                //Sumar los minutos
                var_minu_dia := var_minu_dia + FieldByName(cosNomb_Campos[var_i]+'_minutos').asInteger;
                //Incrementar el contador de dias si hay minutos contratados
                if (FieldByName(cosNomb_Campos[var_i]+'_minutos').asInteger > 0) Then
                    var_dias := var_dias + 1;
      End;
      //Escribir las horas semanales
      edit_hora_semanales.Value := var_minu_dia / 60;
      if var_dias > 0 Then
         edit_hora_diarias.Value := (var_minu_dia / 60) / var_dias
      Else
         edit_hora_diarias.Value := 0;
  End;
  var_actualizando := False;
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles de la ventana cuando
                  cambia el estado de la tabla principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.data_ventanaStateChange(
  Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : fram_mens_no_existefram_labelClick
Objetivo        : Crear un nuevo registro al dar click en el
                  panel del mensaje de creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.fram_mens_no_existefram_labelClick(
  Sender: TObject);
Var
    var_control  : TControl;
    var_i   : Integer;
begin
  inherited;                  
  tabl_guardar.Insert;
  //Limpiar los valores
  For var_i := 1 to pane_parametrizacion.ControlCount do
  Begin
      if (pane_parametrizacion.Controls[var_i - 1] is TPCPLookUpComboEdit) Then
         (pane_parametrizacion.Controls[var_i - 1] as TPCPLookUpComboEdit).ClearValue
      Else
      if (pane_parametrizacion.Controls[var_i - 1] is TdxCurrencyEditPCP) Then
         (pane_parametrizacion.Controls[var_i - 1] as TdxCurrencyEditPCP).Clear;
  End;
  //Periodo por defecto
  comb_peri_pago.KeyValue := quer_form_pago_parametros.FieldByName('cons_peri_pago').asInteger;
end;
{****************************************************************
Procedimiento   : data_guardarStateChange
Objetivo        : Actualizar los controles de la ventana cuando
                  cambia el estado de la tabla de guardado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.data_guardarStateChange(
  Sender: TObject);
begin
  inherited;
  //Deshabilitar el panel de cambios
  SetControlEnabled(padr_fram_superior, Not (tabl_guardar.State in [dsInsert, dsEdit]));
  padr_acti_guardar.Enabled := (tabl_guardar.State in [dsInsert, dsEdit]);
  padr_acti_cancelar.Enabled := (tabl_guardar.State in [dsInsert, dsEdit]);
end;
{****************************************************************
Procedimiento   : tabl_guardarAfterInsert
Objetivo        : Actualizar los controles de la ventana al
                  insertar una nueva parametrización
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.tabl_guardarAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  pane_parametrizacion.Visible := True;
  fram_mens_no_existe.Visible :=  False;
end;
{****************************************************************
Procedimiento   : LocalizarValorFormaPago
Objetivo        : Localiza el valor de una forma de pago seleccionada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
Procedure Tfn1_form_pago_para_maestro.LocalizarValorFormaPago(peQueryParametros : TQuery;
            peCombo : TPCPLookUpComboEdit;
            peEdit_valor, peEdit_Porcentaje : TdxCurrencyEditPCP);
Begin
      //Validar las entradas
      if (peQueryParametros = Nil) or (peCombo = Nil) or (peEdit_Valor = Nil) or
        (peCombo.ListSource = Nil) or (peCombo.ListSource.DataSet = Nil)
        Then Exit;
      if Not (peCombo.ListSource.DataSet.Active) Then
       Raise Exception.Create(Format(cosErrorFuenteDatosNoValida, [peCombo.ListSource.DataSet.Name]));
      if Not (peQueryParametros.Active) Then
       Raise Exception.Create(Format(cosErrorFuenteDatosNoValida, [peQueryParametros.Name]));
      //Valor vacio
      if (peCombo.EstaVacio) Then
      Begin
          peEdit_Valor.Value := 0;
          if (peEdit_porcentaje <> Nil) Then
            peEdit_porcentaje.Value := 0;
      End
      Else
      //Buscar el valor
      Begin
           peEdit_valor.Value := peQueryParametros.FieldByName(peCombo.ListSource.DataSet.FieldByName('adic_varc').asString).asFloat;
           //if (peEdit_porcentaje <> Nil) Then
           //    peEdit_porcentaje.Value := peQueryParametros.FieldByName(peCombo.ListSource.DataSet.FieldByName('adic_varc').asString).asFloat);
      End;
      //Cambiar el estado de la tabla de guardado
      if (not var_Actualizando) and (pane_parametrizacion.Visible) and
         (Not (tabl_guardar.State in [dsInsert, dsEdit])) Then
           tabl_guardar.Edit;
End;
{****************************************************************
Procedimiento   : doCrearRegistroMaestro
Objetivo        : Crea el registro en el maestro de formas de pago
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
Function Tfn1_form_pago_para_maestro.doCrearRegistroMaestro : Integer;
Var
    var_auxiliar    : Integer;
Begin
    Result := -1;
    //Si ya existe, entregar el consecutivo del registro actual
    if (quer_seleccionar.Active) and (quer_seleccionar.RecordCount > 0) Then
    Begin
        //Actualizar el registro
        With quer_actu_maestro do
        Begin
            ParamByName('cons_form_pago').Value := quer_seleccionar.FieldByName('cons_form_pago').asInteger;
            ParamByName('cons_sis_form_pago').Value := var_cons_sis_form_pago;
            ParamByName('cons_peri_pago').Value := comb_peri_pago.keyValue;
            ParamByName('spli_bonificacion').Clear;
            if Not VarIsNull(tabl_guardar.FieldByName('spli_bonificacion').Value) Then
            ParamByName('spli_bonificacion').Value := tabl_guardar.FieldByName('spli_bonificacion').asInteger;
            ExecSQL;
        End;
        Result := quer_seleccionar.FieldByName('cons_form_pago').asInteger;
    End
    Else
    Begin
        var_auxiliar := GenerarSecuencia('PCP_FORM_PAGO', 'CONS_FORM_PAGO');
        //Crear el registro
        With quer_guar_maestro do
        Begin
            //Limpiar los valores actuales
            ParamByName('cons_form_pago').Clear;
            ParamByName('cons_empresa').Clear;
            ParamByName('cons_planta').Clear;
            ParamByName('cons_plan_linea').Clear;
            ParamByName('cons_line_seccion').Clear;
            ParamByName('cons_turno').Clear;
            ParamByName('cons_peri_pago').Clear;
            ParamByName('spli_bonificacion').Clear;
            //Asignar los valores actuales
            ParamByName('cons_form_pago').Value := var_auxiliar;
            if Not (fram_ubicacion.comb_ubic_empresa.EstaVacio) Then
               ParamByName('cons_empresa').Value := fram_ubicacion.comb_ubic_empresa.KeyValue;
            if Not (fram_ubicacion.comb_ubic_planta.EstaVacio) Then
               ParamByName('cons_planta').Value := fram_ubicacion.comb_ubic_planta.KeyValue;
            if Not (fram_ubicacion.comb_ubic_linea.EstaVacio) Then
               ParamByName('cons_plan_linea').Value := fram_ubicacion.comb_ubic_linea.KeyValue;
            if Not (fram_ubicacion.comb_ubic_seccion.EstaVacio) Then
               ParamByName('cons_line_seccion').Value := fram_ubicacion.comb_ubic_seccion.KeyValue;
            if Not (comb_turno.EstaVacio) Then
               ParamByName('cons_turno').Value := comb_turno.KeyValue;
            ParamByName('cons_sis_form_pago').Value := var_cons_sis_form_pago;
            if not (comb_peri_pago.EstaVacio) Then
                ParamByName('cons_peri_pago').Value := comb_peri_pago.KeyValue;
            if Not VarIsNull(tabl_guardar.FieldByName('spli_bonificacion').Value)
              Then ParamByName('spli_bonificacion').Value := Tabl_guardar.FieldByName('spli_bonificacion').asInteger;
            //Crear el registro
            ExecSQL;
            //Si no hubo errores, asignar el resultado
            Result := var_auxiliar;
        End;
    End;
End;

{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Actualizar los controles al activar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.FormActivate(Sender: TObject);
begin
  inherited;
  padr_acti_guardar.DataSource := data_guardar;
  padr_acti_cancelar.DataSource := data_guardar;
  padr_acti_nuevo.Enabled := False;
end;
{****************************************************************
Procedimiento   : padr_acti_guardarExecute
Objetivo        : Guardar los cambios realizados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.padr_acti_guardarExecute(
  Sender: TObject);
begin
  //nherited;
  tabl_guardar.Post;
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Cancelar los cambios
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 27 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.padr_acti_cancelarExecute(
  Sender: TObject);
begin
  //inherited;
  //Cancelar los cambios realizados
  if (Confirmar(cosDeseaCancelar)=mrYes) Then
  Begin
      tabl_guardar.Cancel;
      checkAndPostDataSet(myTabla_Ventana);
      darFoco(fram_ubicacion.comb_ubic_empresa);
  End;
end;
{****************************************************************
Procedimiento   : comb_peri_pagoChange
Objetivo        : Actualizar los controles dependientes del periodo de pago
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 28 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.comb_peri_pagoChange(
  Sender: TObject);
begin
  inherited;
  //Cambiar el estado de la tabla de guardado
  if (not var_Actualizando) and (pane_parametrizacion.Visible) and
     (Not (tabl_guardar.State in [dsInsert, dsEdit])) Then
       tabl_guardar.Edit;
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Elimina el registro seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 28 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_form_pago_para_maestro.padr_acti_eliminarExecute(
  Sender: TObject);
begin
  //inherited;
  if (Confirmar(cosDeseaEliminar)=mrYes) Then
  Begin
      With quer_elim_maestro do
      Begin
          //Eliminar el registro
          ParamByName('cons_form_pago').Value := quer_Seleccionar.FieldByName('cons_form_pago').asInteger;
          ExecSQL;
          //Limpiar la pantalla
          fram_ubicacion.comb_ubic_empresa.ClearValue;
          fram_ubicacion.comb_ubic_planta.ClearValue;
          fram_ubicacion.comb_ubic_linea.ClearValue;
          fram_ubicacion.comb_ubic_seccion.ClearValue;
          comb_turno.ClearValue;
          padr_pane_horas.Visible := False;
          darFoco(fram_ubicacion.comb_ubic_empresa);
          doActualizarSeleccion(Sender);
      End;
  End;
end;

end.


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
        Unit            : un1_cont_nove_defectos
        Objetivo        : Capturar las novedades de calida (defectos)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 13 de 2005
        Versión         : pcp4.0.0.17
*******************************************************************}
unit un1_cont_nove_defectos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPFrame, RxLookup, PCPLookUpComboEdit,
  RxMemDS, SohoBtns, SCLButton, ufra_mens_atencion, TBXDkPanels,
  TBXButtonSCL, dxTL, dxDBCtrl, dxDBGrid, SCLDBGrid, dxDBTLCl, dxGrClms,
  PCPProceso;

type
  Tfn1_cont_nove_defectos = class(T_fvent_modal)
    fram_seleccion: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    comb_prod_orden: TPCPLookUpComboEdit;
    comb_nume_lote: TPCPLookUpComboEdit;
    dxDBEdit1: TdxDBEdit;
    comb_secu_operacion: TPCPLookUpComboEdit;
    dxDBEdit2: TdxDBEdit;
    comb_nume_paquete: TPCPLookUpComboEdit;
    pane_hide_referencia: TPanel;
    pane_hide_tipo_paqueteo: TPanel;
    quer_prod_ordenes: TQuery;
    data_prod_ordenes: TDataSource;
    myTabla_Ventana: TRxMemoryData;
    myTabla_VentanaCONS_PROD_ORDEN: TIntegerField;
    myTabla_VentanaCONS_PROD_LOTE: TIntegerField;
    myTabla_VentanaSECU_OPERACION: TIntegerField;
    myTabla_VentanaNUME_PAQUETE: TIntegerField;
    myTabla_VentanaCONS_PROCESO: TIntegerField;
    myTabla_VentanaCONS_PROD_PAQU_TIPO: TIntegerField;
    quer_prod_lotes: TQuery;
    data_prod_lotes: TDataSource;
    quer_operaciones: TQuery;
    data_operaciones: TDataSource;
    quer_prod_paqu_Tipo: TQuery;
    data_prod_paqu_tipo: TDataSource;
    quer_paquetes: TQuery;
    data_paquetes: TDataSource;
    pane_info: TPanel;
    pane_info_operario: TPCPFrame;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    quer_info_personal: TQuery;
    data_info_personal: TDataSource;
    SCLDBLabel13: TSCLDBLabel;
    dxDBEdit9: TdxDBEdit;
    SCLDBLabel14: TSCLDBLabel;
    dxDBEdit10: TdxDBEdit;
    pane_mens_no_leido: Tffra_mens_atencion;
    pane_edicion: TPCPFrame;
    SCLDBLabel15: TSCLDBLabel;
    SCLDBLabel16: TSCLDBLabel;
    SCLDBLabel17: TSCLDBLabel;
    fech_reproceso: TdxDBDateEdit;
    edit_unidades: TdxDBCurrencyEdit;
    myTabla_VentanaFECH_DEFECTO: TDateField;
    myTabla_VentanaCONS_CALI_DEFECTO: TIntegerField;
    myTabla_VentanaCANT_UNID_DEFECTUOSAS: TIntegerField;
    quer_defe_codigo: TQuery;
    data_defe_codigo: TDataSource;
    dock: TTBXDock;
    menu_ventana: TTBXToolbar;
    acci_ventana: TActionList;
    acti_guardar: TAction;
    acti_cancelar: TAction;
    acti_imprimir: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    boto_buscar: TTBXButtonSCL;
    quer_guardar: TQuery;
    myTabla_VentanaCONS_CONT_NOVE_DIARIA: TIntegerField;
    PCPFrame1: TPCPFrame;
    grid: TSCLDBGrid;
    quer_defe_reportados: TQuery;
    quer_defe_reportadosCONS_CONT_NOVE_DEFE_FABRICACION: TIntegerField;
    quer_defe_reportadosCONS_CALI_DEFECTO: TIntegerField;
    quer_defe_reportadosCODI_CALI_DEFECTO: TStringField;
    quer_defe_reportadosNOMB_CALI_DEFECTO: TStringField;
    quer_defe_reportadosFECH_DEFECTO: TDateTimeField;
    quer_defe_reportadosCANT_UNID_DEFECTUOSAS: TIntegerField;
    quer_defe_reportadosUSUA_SISTEMA: TStringField;
    data_defe_reportados: TDataSource;
    gridCONS_CONT_NOVE_DEFE_FABRICACION: TdxDBGridMaskColumn;
    gridFECH_DEFECTO: TdxDBGridDateColumn;
    gridCONS_CALI_DEFECTO: TdxDBGridMaskColumn;
    gridCODI_CALI_DEFECTO: TdxDBGridMaskColumn;
    gridNOMB_CALI_DEFECTO: TdxDBGridMaskColumn;
    gridCANT_UNID_DEFECTUOSAS: TdxDBGridMaskColumn;
    gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    quer_pers_codigo: TQuery;
    SCLDBLabel18: TSCLDBLabel;
    comb_codi_operario: TPCPLookUpComboEdit;
    comb_nomb_operario: TPCPLookUpComboEdit;
    myTabla_VentanaCONS_PERS_ASIGNADO: TIntegerField;
    data_pers_codigo: TDataSource;
    quer_pers_nombre: TQuery;
    data_pers_nombre: TDataSource;
    comb_defecto: TPCPLookUpComboEdit;
    quer_defe_nombre: TQuery;
    data_defe_nombre: TDataSource;
    comb_nomb_defecto: TPCPLookUpComboEdit;
    acti_eliminar: TAction;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem4: TTBXItem;
    quer_eliminar: TQuery;
    Panel1: TPanel;
    TBControlItem1: TTBControlItem;
    Label1: TLabel;
    edit_impr_en: TdxEdit;
    procedure FormCreate(Sender: TObject);
    procedure doCambiarOrden(Sender: TObject);
    procedure doCambiarLote(Sender: TObject);
    procedure doCambiarOperacion(Sender: TObject);
    procedure myTabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure myTabla_VentanaBeforePost(DataSet: TDataSet);
    procedure boto_buscarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure doCambiarPaquete(Sender: TObject);
    procedure doIniciarCapturaReproceso(Sender: TObject);
    procedure doGuardarConEnter(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acci_ventanaUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure acti_guardarExecute(Sender: TObject);
    procedure doIgnorarAcciones(DataSet: TDataSet);
    procedure comb_nume_paqueteExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure acti_cancelarExecute(Sender: TObject);
    procedure acti_imprimirExecute(Sender: TObject);
  private
    { Private declarations }
    var_fecha   : TDate;
  public
    { Public declarations }
  end;

var
  fn1_cont_nove_defectos: Tfn1_cont_nove_defectos;

implementation

uses _func_varias, _MDI, _cons_pcp, _Traductor{, _cons_impresoras};

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar los controles
  pane_hide_referencia.BevelOuter := bvNone;
  pane_hide_tipo_paqueteo.BevelOuter := bvNone;
  pane_mens_no_leido.setWarningColors;
  var_fecha := NowDate;
  //Inicializar el registro de la tabla auxiliar
  With myTabla_Ventana do
  Begin
    Insert;
    Post;
  End;
  //Abrir consultas
  AbrirDataSet(quer_prod_ordenes);
  AbrirDataSet(quer_prod_lotes);
  AbrirDataSet(quer_operaciones);
  AbrirDataSet(quer_prod_paqu_Tipo);
  AbrirDataSet(quer_paquetes);
  AbrirDataSet(quer_defe_codigo);
  AbrirDataSet(quer_defe_nombre);
  quer_info_personal.Prepare;
  AbrirDataSet(quer_info_personal);
  quer_defe_reportados.Prepare;
  AbrirDataSet(quer_defe_reportados);
  AbrirDataSet(quer_pers_codigo);
  AbrirDataSet(quer_pers_Nombre);
  Insertar_Palabras(Self, WKLenguaje);
end;

procedure Tfn1_cont_nove_defectos.doCambiarOrden(Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(myTabla_Ventana);
  comb_nume_lote.Enabled := Not (comb_prod_orden.EstaVacio);
  pane_hide_referencia.Visible := comb_prod_orden.EstaVacio;
  doCambiarLote(Sender);
end;
{****************************************************************
Procedimiento   : doCambiarLote
Objetivo        : Actualizar los controles de la ventana cuando
                  cambie el lote seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.doCambiarLote(Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(myTabla_Ventana);
  comb_secu_operacion.Enabled := Not (comb_nume_lote.EstaVacio);
  doCambiarOperacion(Sender);
end;
{****************************************************************
Procedimiento   : doCambiarOperacion
Objetivo        : Actualizar los controles de la ventana cuando
                  cambie la operación seleccionada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.doCambiarOperacion(Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(myTabla_Ventana);
  comb_nume_paquete.Enabled := Not(comb_secu_operacion.EstaVacio) and (quer_operaciones.FieldByName('es_titulo').asInteger = -1);
  boto_buscar.Enabled := Not(comb_secu_operacion.EstaVacio) and (quer_operaciones.FieldByName('es_titulo').asInteger = -1);
  pane_hide_tipo_paqueteo.Visible := Not(comb_nume_paquete.Enabled);
  doCambiarPaquete(Sender);
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterInsert
Objetivo        : Inicializa el registro de la tabla auxiliar
                  (valores por defecto)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.myTabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With myTabla_Ventana do
  Begin
       FieldByName('cons_proceso').Value := 0;
  End;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaBeforePost
Objetivo        : Calcular los valores faltantes (calculados) de la tabla principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.myTabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If quer_prod_paqu_Tipo.Active then
    myTabla_Ventana.FieldByName('CONS_PROD_PAQU_TIPO').Value := quer_prod_paqu_Tipo.FieldByName('CONS_PROD_PAQU_TIPO').asInteger
  Else
   myTabla_Ventana.FieldByName('CONS_PROD_PAQU_TIPO').Clear;   
end;

procedure Tfn1_cont_nove_defectos.boto_buscarClick(Sender: TObject);
begin
  inherited;
  //Buscar el registro

end;
{****************************************************************
Procedimiento   : FormDestroy
Objetivo        : Liberar las consultas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.FormDestroy(Sender: TObject);
begin
  Unprepare(quer_info_personal);
  Unprepare(quer_defe_reportados);
  inherited;
end;
{****************************************************************
Procedimiento   : comb_nume_paqueteChange
Objetivo        : Actualizar los controles al cambiar el paquete
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.doCambiarPaquete(Sender: TObject);
begin
  inherited;
  pane_info_operario.Visible := False;
  pane_mens_no_leido.Visible := False;
  With myTabla_Ventana do
  Begin
      If Not (State in [dsInsert, dsEdit]) Then
        Edit;
      FieldByName('fech_defecto').Value := var_fecha;
      FieldByName('cons_cali_defecto').Clear;
      FieldByName('cant_unid_defectuosas').Value := 1;
      FieldByName('CONS_PERS_ASIGNADO').Clear;
  End;
  CheckAndPostDataSet(myTabla_Ventana);
  pane_info_operario.Visible := (quer_info_personal.RecordCount > 0);
  pane_mens_no_leido.Visible := (quer_info_personal.RecordCount = 0);
  pane_info.Visible := Not (comb_nume_paquete.EstaVacio);
  menu_ventana.Visible := True;
  //Personal asignado al reproceso
  If (quer_info_personal.RecordCount > 0) Then
  Begin
      if Not (myTabla_Ventana.State in [dsInsert, dsEdit]) then
        myTabla_Ventana.Edit;
      MyTabla_Ventana.FieldByName('CONS_PERS_ASIGNADO').Value := quer_info_personal.FieldByName('CONS_PERSONAL').asInteger;
  End;
  dock.Top := pane_edicion.Top;
end;
{****************************************************************
Procedimiento   : doIniciarCapturaReproceso
Objetivo        : Iniciar el proceso de captura del defecto
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.doIniciarCapturaReproceso(Sender: TObject);
begin
  inherited;
  pane_edicion.BoxEnter(Sender);
  SetControlEnabled(fram_Seleccion, False);

end;
{****************************************************************
Procedimiento   : edit_unidadesKeyDown
Objetivo        : Guardar al dar enter en las unidades
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.doGuardarConEnter(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
     acti_guardar.Execute;
end;
{****************************************************************
Procedimiento   : acci_ventanaUpdate
Objetivo        : Actualizar el estado de las acciones del menu
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.acci_ventanaUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  acti_guardar.Enabled := (pane_info.Visible) and (Not comb_prod_orden.Enabled) and
            Not(comb_defecto.EstaVacio) and (edit_unidades.Value > 0);
  acti_Cancelar.Enabled := (pane_info.Visible) and (Not comb_prod_orden.Enabled);
  acti_eliminar.Enabled := (pane_info.Visible) and (grid.Count > 0);
  acti_imprimir.Enabled := (pane_info.Visible) and Not(comb_defecto.EstaVacio);
end;
{****************************************************************
Procedimiento   : acti_guardarExecute
Objetivo        : Guardar los cambios realizados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.acti_guardarExecute(Sender: TObject);
begin
  inherited;
  With myTabla_Ventana do
  Begin
      If Not (State in [dsInsert, dsEdit]) Then
        Edit;
      //Consecutivo de la lectura  
      If (quer_info_personal.RecordCount > 0) Then
          FieldByName('CONS_CONT_NOVE_DIARIA').Value := quer_info_personal.FieldByName('CONS_CONT_NOVE_DIARIA').asInteger
      Else
          FieldByName('CONS_CONT_NOVE_DIARIA').Clear;
      //Guardar la ultima fecha
      var_fecha := FieldByName('fech_defecto').asDateTime;
  End;
  CheckAndPostDataSet(myTabla_Ventana);
  quer_guardar.ExecSQL;
  if (Confirmar(cosDeseaImprimirTiqueteDefecto) = mrYes) then
  Try
    acti_imprimir.Execute;
  Except
    on e:Exception do
       EjecutarMensajeError(e.Message);
  End;
  SetControlEnabled(fram_seleccion, True);
  pane_info.Visible := False;
  darFoco(comb_prod_orden);
end;
{****************************************************************
Procedimiento   : doIgnorarAcciones
Objetivo        : Ignorar las acciones DB de la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.doIgnorarAcciones(
  DataSet: TDataSet);
begin
  inherited;
  Abort;
end;
{****************************************************************
Procedimiento   : comb_nume_paqueteExit
Objetivo        : Abrir un nuevo reproceso cuando se sale
                  del combo de paquete, asumiendo que dieron enter
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.comb_nume_paqueteExit(Sender: TObject);
begin
  inherited;
  if Not (comb_prod_orden.EstaVacio or comb_nume_lote.estaVacio or
        comb_secu_operacion.EstaVacio or comb_nume_paquete.EstaVacio) and
        Not (pane_info.Visible) Then
           doCambiarPaquete(Sender);
end;


{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Verificar que se guarden los datos antes de salir
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  //inherited;
  //Indentificar si está insertando
  if (acti_guardar.Enabled) Then
      Case EjecutarMensaje(cosDeseaGuardar, mtConfirmation, [mbYes, mbNo, mbCancel], 0) Of
        mrYes:    if not variables.sololectura then acti_guardar.Execute;
        mrNo:	  canClose := True;
        mrCancel: CanClose := False;
      End;
end;
{****************************************************************
Procedimiento   : acti_eliminarExecute
Objetivo        : Eliminar el defecto seleccionado en la lista
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.acti_eliminarExecute(Sender: TObject);
begin
  inherited;
  If (Confirmar(cosDeseaEliminar) = mrYes) then
  Begin
    quer_eliminar.ExecSQL;
    RefreshDataSet(quer_defe_reportados);
  End;
end;
{****************************************************************
Procedimiento   : acti_cancelarExecute
Objetivo        : Ejecutar la acción de cancelar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.acti_cancelarExecute(Sender: TObject);
begin
  inherited;
  if (Confirmar(cosDeseaCancelar) = mrYes) Then
  Begin
    CheckAndPostDataSet(myTabla_Ventana);
    SetControlEnabled(fram_seleccion, True);
    pane_info.Visible := False;
    darFoco(comb_prod_orden);
  End;
end;
{****************************************************************
Procedimiento   : acti_imprimirExecute
Objetivo        : Ejecutar la acción de imprimir
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_defectos.acti_imprimirExecute(Sender: TObject);
Var
    var_archivo : TextFile;
    var_fech_tiquete    : String;
begin
     //Impresion del tiquete del reproceso
     Try
         //Fecha del tiquete
         if (quer_info_personal.RecordCount = 0) Then var_fech_tiquete := ''
         Else var_fech_tiquete := FormatDateTime('dd/mm/yyyy', quer_info_personal.FieldByName('fech_lectura').asDateTime);
         //Enviar la impresión al LPT1
         AssignFile(var_archivo, edit_impr_en.Text);
         ReWrite(var_archivo);
{         WriteLn(var_archivo,c17cpi+Format('%-10s %-30s',[
               comb_codi_operario.Text,
               comb_nomb_operario.Text])
               );
         WriteLn(var_archivo,Format(c17Cpi+'OF:%-12s L:%-3s P:%-3s F:%-3s'
               ,[comb_prod_orden.Text,comb_nume_lote.Text, comb_nume_paquete.Text, quer_operaciones.FieldByName('secu_oper_texto').asString]));
         WriteLN(var_archivo,Format(c17cpi+'CANT:%-3s %-10s - %-10s',
                [Edit_Unidades.Text,
                   var_fech_tiquete,
                   Fech_Reproceso.Text]));
         WriteLn(var_archivo,c17cpi+Format('%-15s'+' %-20s',
                   [quer_info_personal.FieldByName('nomb_seccion').asString,
                   comb_nomb_defecto.Text]));}
         WriteLN(var_archivo,'');
     Except
          On e:Exception do
            EjecutarMensajeError(e.Message);
     End;
     CloseFile(var_archivo);
end;

end.

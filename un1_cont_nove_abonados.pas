unit un1_cont_nove_abonados;

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
        Unit            : un1_cont_nove_abonados
        Objetivo        : Ingreso de novedades de abonados
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 28 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, RxMemDS, Boxes,
  PCPProceso, dxDBGrid, dxTL, dxDBCtrl, SCLDBGrid, PCPFrame, kbmMemTable,
  dxDBTLCl, dxGrClms, SCLTabs, Menus, DBCtrls;

type
  Tfn1_cont_nove_abonados = class(T_fvent_modal)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    comb_codi_abonado: TPCPLookUpComboEdit;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    data_abonados: TDataSource;
    myTabla_ventana: TRxMemoryData;
    quer_upda_nove_abonados: TQuery;
    data_prod_ordenes: TDataSource;
    SCLDBLabel3: TSCLDBLabel;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    Label2: TLabel;
    Label1: TLabel;
    SCLDBLabel5: TSCLDBLabel;
    comb_nume_orden: TPCPLookUpComboEdit;
    SCLDBLabel7: TSCLDBLabel;
    comb_tiem_obtenido: TdxDBCurrencyEdit;
    chec_repo_tiquetes: TdxDBCheckEdit;
    pane_tiquetes: TPCPFrame;
    data_tiqu_fabricacion: TDataSource;
    tabl_tiqu_fabricacion: TkbmMemTable;
    tabl_tiqu_fabricacionCONS_CONT_NOVE_TIQU_FABRICACION: TIntegerField;
    tabl_tiqu_fabricacionCODI_BARRAS: TStringField;
    tabl_tiqu_fabricacionNOMB_PROD_PAQU_TIPO: TStringField;
    tabl_tiqu_fabricacionNUME_PROD_ORDEN: TStringField;
    tabl_tiqu_fabricacionNUME_LOTE: TIntegerField;
    tabl_tiqu_fabricacionNUME_PAQUETE: TIntegerField;
    tabl_tiqu_fabricacionSECU_OPERACION: TIntegerField;
    tabl_tiqu_fabricacionNOMB_OPERACION: TStringField;
    tabl_tiqu_fabricacionCANT_UNIDADES: TIntegerField;
    tabl_tiqu_fabricacionVALO_HORA_PRODUCCION: TFloatField;
    tabl_tiqu_fabricacionCONS_ABONADO: TIntegerField;
    tabl_tiqu_fabricacionTIEM_PAQUETE: TFloatField;
    tabl_tiqu_fabricacionVALO_TIQUETE: TFloatField;
    tabl_tiqu_Fabr_suma: TkbmMemTable;
    tabl_tiqu_Fabr_sumaCANT_UNIDADES: TIntegerField;
    tabl_tiqu_Fabr_sumaVALO_HORA_PRODUCCION: TFloatField;
    tabl_tiqu_Fabr_sumaTIEM_PAQUETE: TFloatField;
    quer_sele_nove_tiqu_fabricacion: TQuery;
    quer_inse_tiqu_fabricacion: TQuery;
    myTabla_ventanacons_cont_nove_abonado: TIntegerField;
    myTabla_ventanacons_cont_nove_diaria: TIntegerField;
    myTabla_ventanacons_abonado: TIntegerField;
    myTabla_ventanacons_prod_orden: TIntegerField;
    myTabla_ventanaminu_abonados: TFloatField;
    myTabla_ventanaminu_trabajados: TIntegerField;
    myTabla_ventanaTiquetes: TIntegerField;
    subp_fabricacion: TSCLPageControl;
    page_tiqu_fabricacion: TSCLTabSheet;
    pane_tiqu_fabricacion: TPanel;
    SCLDBLabel4: TSCLDBLabel;
    edit_codi_barr_fabri_completo: TdxEdit;
    grid_tiqu_fabricacion: TSCLDBGrid;
    grid_tiqu_fabricacionCONS_CONT_NOVE_TIQU_FABRICACION: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionCODI_BARRAS: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionNOMB_PROD_PAQU_TIPO: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionNUME_PROD_ORDEN: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionNUME_LOTE: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionNUME_PAQUETE: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionSECU_OPERACION: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionNOMB_OPERACION: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionCANT_UNIDADES: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionVALO_HORA_PRODUCCION: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionCONS_ABONADO: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionTIEM_PAQUETE: TdxDBGridColumn;
    grid_tiqu_fabricacionVALO_TIQUETE: TdxDBGridColumn;
    page_erro_fabricacion: TSCLTabSheet;
    grid_erro_fabricacion: TdxDBGrid;
    grid_erro_fabricacioncodi_barras: TdxDBGridMaskColumn;
    grid_erro_fabricacionnume_prod_orden: TdxDBGridMaskColumn;
    grid_erro_fabricacionnume_paquete: TdxDBGridMaskColumn;
    grid_erro_fabricacionnume_lote: TdxDBGridMaskColumn;
    grid_erro_fabricacionsecu_operacion: TdxDBGridMaskColumn;
    grid_erro_fabricacionnomb_operacion: TdxDBGridMaskColumn;
    grid_erro_fabricacionmens_error: TdxDBGridMemoColumn;
    data_erro_fabricacion: TDataSource;
    tabl_erro_fabricacion: TRxMemoryData;
    tabl_erro_fabricacioncodi_barras: TStringField;
    tabl_erro_fabricacionnume_prod_orden: TStringField;
    tabl_erro_fabricacionnume_paquete: TIntegerField;
    tabl_erro_fabricacionnume_lote: TIntegerField;
    tabl_erro_fabricacionsecu_operacion: TIntegerField;
    tabl_erro_fabricacionnomb_operacion: TStringField;
    tabl_erro_fabricacionmens_error: TStringField;
    acti_ventana: TActionList;
    acti_Sele_todos: TAction;
    acti_eliminar: TAction;
    pop_fake: TTBXPopupMenu;
    subpop_grid: TTBXSubmenuItem;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBGroupItem1: TTBGroupItem;
    pop_Grid: TTBXPopupMenu;
    TBGroupItem2: TTBGroupItem;
    quer_elim_tiqu_fabricacion: TQuery;
    myTabla_ventanavalo_hora: TFloatField;
    SCLDBLabel6: TSCLDBLabel;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    DBText1: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure myTabla_ventanaBeforePost(DataSet: TDataSet);
    procedure comb_codi_abonadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure myTabla_ventanaAfterInsert(DataSet: TDataSet);
    procedure myTabla_ventanaAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure comb_tiem_obtenidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chec_repo_tiquetesChange(Sender: TObject);
    procedure tabl_tiqu_fabricacionAfterOpen(DataSet: TDataSet);
    procedure edit_codi_barr_fabri_completoEnter(Sender: TObject);
    procedure data_erro_fabricacionStateChange(Sender: TObject);
    procedure edit_codi_barr_fabri_completoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure tabl_tiqu_fabricacionCalcFields(DataSet: TDataSet);
    procedure doHacerCalculos(Sender: TObject);
    procedure acti_Sele_todosExecute(Sender: TObject);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure doLlamarTiquetes(Sender: TObject);
    procedure comb_codi_abonadoChange(Sender: TObject);
  private
    { Private declarations }
    var_cons_prod_orden : Integer;
    var_cons_cont_nove_diaria   : Integer;
    var_nece_actualizar : Boolean;
    var_DataSet   : TDataSet;
    var_Loading : Boolean;
  public
    { Public declarations }
    Procedure doEjecutarVentana(cons_cont_nove_diaria : Integer; aDataSet : TDataSet; aInsert : Boolean;
        aDataAbonados, aDataProd_Ordenes : TDataSet);
  end;

var
  fn1_cont_nove_abonados: Tfn1_cont_nove_abonados;

implementation

uses _func_varias, _cons_pcp, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_abonados.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicialización visual y de variables
  var_cons_prod_orden := -1;
  var_cons_cont_nove_diaria := -1;
  var_nece_actualizar := False;
  var_Loading := False;
  //Abrir las consultas
  AbrirDataSet(tabl_erro_fabricacion);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : myData_ventanaBeforePost
Objetivo        : Insertar/Actualizar el registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_abonados.myTabla_ventanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  ValidarDatosDataSet(myTabla_Ventana);
  var_cons_prod_orden := myTabla_ventana.FieldByName('cons_prod_orden').AsInteger;
  myTabla_Ventana.UpdateStatus;
  quer_upda_nove_abonados.ExecSQL;
end;
{****************************************************************
Procedimiento   : comb_codi_abonadoKeyDown
Objetivo        : Controlar las pulsaciones de teclas en el combo
                  de codigo abonado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_abonados.comb_codi_abonadoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Escape
  if (Key = vk_escape) Then 
     //Si no está vacío, limpiar
     if comb_codi_abonado.Text <> '' Then comb_codi_abonado.ClearValue
     //Si está vacío, cerrar
     Else 
     Begin
        if (myTabla_ventana.State in [dsEdit, dsInsert]) Then myTabla_ventana.Cancel;
        Close;
     End;
End;
{****************************************************************
Procedimiento   : doEjecutarVentana
Objetivo        : Ejecuta la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tfn1_cont_nove_abonados.doEjecutarVentana(cons_cont_nove_diaria : Integer; aDataSet : TDataSet; aInsert : Boolean;
        aDataAbonados, aDataProd_Ordenes : TDataSet);
Begin
     var_Loading := True;
     //Asginar los parametros
     var_cons_cont_nove_diaria := cons_cont_nove_diaria;
     data_abonados.DataSet := aDataAbonados;
     data_prod_ordenes.DataSet := aDataProd_ordenes;
     var_DataSet := aDataSet;       
     With myTabla_ventana do
     Begin
          if Not(State in [dsInsert, dsEdit]) Then Edit;
          FieldByName('cons_cont_nove_diaria').Value := cons_cont_nove_diaria;
          //Asignar el registro actual
          if (Not aInsert) and (aDataSet <> Nil) and (aDataSet.Active) and (aDataSet.RecordCount > 0) then
          Begin
              FieldByName('cons_cont_nove_abonado').Value := aDataSet.FieldByName('cons_cont_nove_abonado').Value;
              FieldByName('cons_abonado').Value := aDataSet.FieldByName('cons_abonado').Value;
              FieldByName('cons_prod_orden').Value := aDataSet.FieldByName('cons_prod_orden').Value;
              FieldByName('minu_abonados').Value := aDataSet.FieldByName('minu_abonados').asFloat;
              FieldByName('minu_trabajados').Value := aDataSet.FieldByName('minu_trabajados').asInteger;
              FieldByName('valo_hora').Value := aDataSet.FieldByName('valo_hora').asFloat;
              FieldByName('tiquetes').Value := aDataSet.FieldByName('tiquetes').asInteger;
              //Guardr en variables los parámetros
              var_Cons_prod_orden := FieldByName('cons_prod_orden').AsInteger;
          End;
     End;
     //Si el tiempo abonado se reporta por tiquetes, cargar los tiquetes reportados
     If (myTabla_Ventana.FieldByName('tiquetes').asInteger = 1) Then
     Begin
         doLlamarTiquetes(Self);
     End;
     //Actualizar la selección
     chec_repo_tiquetesChange(Self);
     var_Loading := False;
     //Mostrar la ventana
     ShowModal;
End;
{****************************************************************
Procedimiento   : myData_ventanaAfterInsert
Objetivo        : Inicializar el registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_abonados.myTabla_ventanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Valores iniciales del registro
  With myTabla_ventana do
  Begin
      if var_cons_cont_nove_diaria <> -1 then 
        FieldByName('cons_cont_nove_diaria').Value := var_cons_cont_nove_diaria;
      if var_cons_prod_orden <> -1 then 
        FieldByName('cons_prod_orden').Value := var_cons_prod_orden;
      FieldByName('tiquetes').Value := -1;
      FieldByName('minu_abonados').Value := 0;
  End;
  //Reiniciar los controles
  tabl_tiqu_fabricacion.Close;
  tabl_erro_fabricacion.Close;
  AbrirDataSet(tabl_tiqu_fabricacion);
  AbrirDataSet(tabl_erro_fabricacion);
  chec_repo_tiquetesChange(Self);
end;
{****************************************************************
Procedimiento   : myData_ventanaAfterPost
Objetivo        : Actualizar la variable que indica si se 
                  necesita actualizar los registros
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_abonados.myTabla_ventanaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //Se modificaron registros
  var_nece_actualizar := True;
end;
{****************************************************************
Procedimiento   : FormClose
Objetivo        : Actualizar la consulta del padre si hubo cambios
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_abonados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (var_nece_actualizar) and (var_dataSet <> Nil) then
        RefreshDataSet(var_dataSet);
end;

procedure Tfn1_cont_nove_abonados.comb_tiem_obtenidoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Guardar e insertar en ENTER
  if key = vk_return then
  Begin
       myTabla_ventana.Post;
       myTabla_ventana.Insert;
       darFoco(comb_codi_abonado);
  end;
end;
{****************************************************************
Procedimiento   : chec_repo_tiquetesChange
Objetivo        : Actualizar la ventana al cambiar la selección
                  del tipo de reporte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_abonados.chec_repo_tiquetesChange(
  Sender: TObject);
begin
  inherited;
  comb_nume_orden.Enabled := Not chec_repo_tiquetes.Checked;
  comb_tiem_obtenido.Enabled := Not chec_repo_tiquetes.Checked;
  pane_tiquetes.Visible := chec_repo_tiquetes.Checked;
end;
{****************************************************************
Procedimiento   : tabl_tiqu_fabricacionAfterOpen
Objetivo        : Abrir la consulta de suma al abrir la consulta
                  de tiquetes reportados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_abonados.tabl_tiqu_fabricacionAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  tabl_tiqu_Fabr_suma.Open;
end;
{****************************************************************
Procedimiento   : edit_codi_barr_fabri_completoEnter
Objetivo        : Guardar los cambios al iniciar la lectura de tiquetes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_abonados.edit_codi_barr_fabri_completoEnter(
  Sender: TObject);
begin
  inherited;
  //Verificar que el maestro esté guardardo (para que exista un consecutivo)
  CheckAndPostDataSet(myTabla_Ventana);
end;
{****************************************************************
Procedimiento   : data_erro_fabricacionStateChange
Objetivo        : Actualizar la ventana cuando cambie el estado de la
                  tabla de errores
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_abonados.data_erro_fabricacionStateChange(
  Sender: TObject);
begin
  inherited;
  page_erro_fabricacion.TabVisible := (tabl_erro_fabricacion.Active) and (tabl_erro_fabricacion.RecordCount > 0);
  subp_fabricacion.HideTabs := Not page_erro_fabricacion.TabVisible;
end;

procedure Tfn1_cont_nove_abonados.edit_codi_barr_fabri_completoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
Var
        var_colu        : Integer;
        aDataSet        : TQuery;
        var_unidades    : Integer;
        var_Tabl_Destino        : TKBMMemTable;
begin
  inherited;
  If key = vk_return then
  Begin
        Try
             //Si está vacío, salir
             If (edit_codi_barr_fabri_completo.Text = '') Then Exit;
             //Verificar si es un tiquete de fabricacion
             if (Pos('9', edit_codi_barr_fabri_completo.Text) = 1) Then
             Begin
                  EjecutarMensajeError(cosTiqueteDeCorteEnCostura);
                  Exit;
             End;
             aDataSet := quer_inse_tiqu_fabricacion;
             With aDataSet do
             Begin
                 if Active then Close;
                 paramByName('codi_barras').Value := edit_codi_barr_fabri_completo.Text;
                 paramByName('cons_cont_nove_diaria').Value := myTabla_ventana.FieldByName('cons_cont_nove_diaria').AsInteger;
                 ParamByName('cons_cont_nove_abonado').Value := myTabla_ventana.FieldByName('cons_cont_nove_abonado').AsInteger;
                 Open;
                 //Verificar si hay error
                 if FieldByName('hubo_error').AsInteger = 1 then
                 Begin
                     doControlError(pane_tiqu_fabricacion);
                     //Insertarlo en la tabla de errores
                     tabl_erro_fabricacion.Insert;
                     tabl_erro_fabricacion.FieldByName('codi_barras').Value := FieldByName('codi_barras').asString;
                     tabl_erro_fabricacion.FieldByName('nume_prod_orden').Value := FieldByName('nume_prod_orden').asString;
                     tabl_erro_fabricacion.FieldByName('nume_paquete').Value := FieldByName('nume_paquete').asInteger;
                     tabl_erro_fabricacion.FieldByName('nume_lote').Value := FieldByName('nume_lote').asInteger;
                     tabl_erro_fabricacion.FieldByName('secu_operacion').Value := FieldByName('secu_operacion').asInteger;
                     tabl_erro_fabricacion.FieldByName('nomb_operacion').Value := FieldByName('nomb_operacion').asString;
                     tabl_erro_fabricacion.FieldByName('mens_error').Value := FieldByName('mens_error').asString;
                     tabl_erro_fabricacion.Post;
                 End
                 Else
                 Begin
                      var_Tabl_Destino := tabl_tiqu_fabricacion;
                      //Insertar el tiquete
                      var_Tabl_Destino.Insert;
                      var_Tabl_Destino.FieldByName('codi_barras').Value := FieldByName('codi_barras').asString;
                      var_Tabl_Destino.FieldByName('cons_cont_nove_tiqu_fabricacion').Value := FieldByName('cons_cont_nove_tiqu_fabricacion').asInteger;
                      var_Tabl_Destino.FieldByName('NOMB_PROD_PAQU_TIPO').Value := FieldByName('NOMB_PROD_PAQU_TIPO').asString;
                      var_Tabl_Destino.FieldByName('NUME_PROD_ORDEN').Value := FieldByName('NUME_PROD_ORDEN').asString;
                      var_Tabl_Destino.FieldByName('NUME_LOTE').Value := FieldByName('NUME_LOTE').asInteger;
                      var_Tabl_Destino.FieldByName('NUME_PAQUETE').Value := FieldByName('NUME_PAQUETE').asInteger;
                      var_Tabl_Destino.FieldByName('SECU_OPERACION').Value := FieldByName('SECU_OPERACION').asInteger;
                      var_Tabl_Destino.FieldByName('NOMB_OPERACION').Value := FieldByName('NOMB_OPERACION').asString;
                      var_Tabl_Destino.FieldByName('CANT_UNIDADES').Value := FieldByName('CANT_UNIDADES').asInteger;
                      var_Tabl_Destino.FieldByName('TIEM_PAQUETE').Value := FieldByName('TIEM_PAQUETE').asFloat;
                      var_tabl_destino.FieldByName('VALO_HORA_PRODUCCION').Value := FieldByName('VALO_HORA_PRODUCCION').AsFloat;
                      //Guardar
                      var_tabl_destino.Post;
                      doHacerCalculos(Sender);
                 End;
                 Close;
             End;
      Except
          On e:Exception do
          Begin
                EjecutarMensajeError(e.Message);
                if (var_tabl_destino.State in [dsInsert, dsEdit]) Then var_tabl_destino.Cancel;
          End;
      end;
      //Cerrar la consulta
      if (aDataSet <> Nil) and  (aDataSet.active) then aDataSet.Close;
      //Dar el foco
      darFoco(edit_codi_barr_fabri_completo);
      if edit_codi_barr_fabri_completo.Focused then
         edit_codi_barr_fabri_completo.SelectAll;
      //Anular el enter
      key := Word(#0);
  End;
end;
{****************************************************************
Procedimiento   : tabl_tiqu_fabricacionCalcFields
Objetivo        : Dar valor a los campos calculados de la lista de
                  tiquetes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_abonados.tabl_tiqu_fabricacionCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  With tabl_tiqu_fabricacion do
  Begin
      FieldByName('valo_tiquete').Value := (FieldByName('tiem_paquete').asFloat / 60) * FieldByName('valo_hora_produccion').asFloat;
  End;
end;
{****************************************************************
Procedimiento   : doHacerCalculos
Objetivo        : Rehacer los cálculos de la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_abonados.doHacerCalculos(Sender: TObject);
var
        var_Tiempo      : Float;
begin
  inherited;
  if (myTabla_Ventana.FieldByName('tiquetes').asInteger = -1) Then Exit;
  //TIempo de fabricación
  With tabl_tiqu_fabr_suma do
  Begin
      First;
      While not eof do
      Begin
          var_Tiempo :=  var_Tiempo + FieldByName('TIEM_PAQUETE').AsFloat;
          Next;
      End;
  End;
  CheckAndEditDataSet(myTabla_Ventana);
  myTabla_Ventana.FieldByName('minu_abonados').Value := var_Tiempo;
  CheckAndPostDataSet(myTabla_Ventana);
end;
{****************************************************************
Procedimiento   : acti_Sele_todosExecute
Objetivo        : Ejecutar la acción de seleccionar TODOS los registros
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_abonados.acti_Sele_todosExecute(Sender: TObject);
begin
  inherited;
  grid_tiqu_fabricacion.SelectAll;
end;

procedure Tfn1_cont_nove_abonados.acti_eliminarExecute(Sender: TObject);
var
        var_Fila        : Integer;
begin
  inherited;
  With grid_tiqu_fabricacion, quer_elim_tiqu_fabricacion do
     for var_fila := 1 to Count do
         if Items[var_fila - 1].Selected Then
         Begin
              ParamByName('cons_cont_nove_tiqu_fabricacion').Value := Items[var_fila - 1].Values[ColumnByFieldName('CONS_CONT_NOVE_TIQU_FABRICACION').Index];
              ExecSQL;
         End;
  doLlamarTiquetes(Sender);
  doHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : doLlamarTiquetes
Objetivo        : Abre la consulta de los tiquetes leidos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_abonados.doLlamarTiquetes(Sender: TObject);
begin
  inherited;
  tabl_tiqu_fabricacion.Close;
  tabl_tiqu_fabricacion.Open;
  tabl_tiqu_fabricacion.LoadFromDataSet(quer_sele_nove_tiqu_fabricacion, [mtcpoAppend]);
end;
{****************************************************************
Procedimiento   : comb_codi_abonadoChange
Objetivo        : Actualizra la ventana al cambiar el codigo del paro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_abonados.comb_codi_abonadoChange(Sender: TObject);
begin
  inherited;
  //Asignar el valor por hora
  if (myTabla_Ventana.State in [dsInsert, dsEdit]) Then
     if comb_codi_abonado.EstaVacio then
         myTabla_Ventana.FieldByName('valo_hora').Value := 0
     Else
         myTabla_Ventana.FieldByName('valo_hora').Value := data_abonados.DataSet.FieldByName('valo_hora').asFloat;
end;

end.

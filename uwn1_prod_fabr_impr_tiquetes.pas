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
        Unit            : uwn1_prod_fabr_impr_tiquetes
        Objetivo        : Asistente para la impresión de tiquetes
                          de control de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Julio 26 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}
unit uwn1_prod_fabr_impr_tiquetes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uWizard, JvWizard, JvWizardRouteMapNodes, ExtCtrls, StdCtrls,
  JvExControls, JvComponent, Boxes, PCPFrame, TBXDkPanels, RxLookup,
  PCPLookUpComboEdit, SoCtrls, SCLDBLabel, dxCntner, dxExEdtr, dxEdLib,
  dxTL, dxDBCtrl, dxDBGrid, Db, RxMemDS, DBTables, dxEditor, ufra_ordenar,
  Mask, ToolEdit, dxDBELib, SCLShape, ufra_edit_reportes,
  kbmMemTable;

type
  Tfwn1_prod_fabr_impr_tiquetes = class(TfWizard)
    JvWizardWelcomePage1: TJvWizardWelcomePage;
    JvWizardInteriorPage1: TJvWizardInteriorPage;
    Label7: TLabel;
    chec_lote_completo: TTBXRadioButton;
    chec_seleccionar: TTBXRadioButton;
    pane_seleccion: TPCPFrame;
    chec_paquetes: TdxCheckEdit;
    chec_operaciones: TdxCheckEdit;
    SCLDBLabel1: TSCLDBLabel;
    chec_recursos: TdxCheckEdit;
    grid_paquetes: TdxDBGrid;
    grid_operaciones: TdxDBGrid;
    grid_recursos: TdxDBGrid;
    quer_paquetes: TQuery;
    myTabla_ventana: TRxMemoryData;
    myData_ventana: TDataSource;
    myTabla_ventanacons_prod_lote: TIntegerField;
    myTabla_ventanacons_prod_paqu_tipo: TIntegerField;
    myTabla_ventanacons_proceso: TIntegerField;
    data_paquetes: TDataSource;
    quer_paquetesNUME_PAQUETE: TIntegerField;
    quer_paqu_tipos: TQuery;
    data_paqu_tipos: TDataSource;
    comb_paqu_tipo: TPCPLookUpComboEdit;
    quer_operaciones: TQuery;
    data_operaciones: TDataSource;
    grid_operacionesCONS_PROD_LOTE: TdxDBGridMaskColumn;
    grid_operacionesSECU_OPERACION: TdxDBGridMaskColumn;
    grid_operacionesCODI_OPER_COSTURA: TdxDBGridMaskColumn;
    grid_operacionesNOMB_OPER_COSTURA: TdxDBGridMaskColumn;
    grid_operacionesTIEMPO: TdxDBGridMaskColumn;
    grid_operacionesFRECUENCIA: TdxDBGridMaskColumn;
    grid_operacionesCONS_PROCESO: TdxDBGridMaskColumn;
    grid_operacionesNOMB_PROCESO: TdxDBGridMaskColumn;
    grid_operacionesCONS_PROD_PAQU_TIPO: TdxDBGridMaskColumn;
    grid_operacionesCONS_RECU_FAMILIA: TdxDBGridMaskColumn;
    grid_operacionesCODI_RECU_FAMILIA: TdxDBGridMaskColumn;
    grid_operacionesNOMB_RECU_FAMILIA: TdxDBGridMaskColumn;
    quer_recursos: TQuery;
    data_recursos: TDataSource;
    quer_operacionesCONS_PROD_LOTE: TIntegerField;
    quer_operacionesSECU_OPERACION: TIntegerField;
    quer_operacionesCODI_OPER_COSTURA: TStringField;
    quer_operacionesNOMB_OPER_COSTURA: TStringField;
    quer_operacionesTIEMPO: TFloatField;
    quer_operacionesFRECUENCIA: TFloatField;
    quer_operacionesCONS_PROCESO: TIntegerField;
    quer_operacionesNOMB_PROCESO: TStringField;
    quer_operacionesCONS_PROD_PAQU_TIPO: TIntegerField;
    quer_operacionesCONS_RECU_FAMILIA: TIntegerField;
    quer_operacionesCODI_RECU_FAMILIA: TStringField;
    quer_operacionesNOMB_RECU_FAMILIA: TStringField;
    quer_recursosCONS_RECU_FAMILIA: TIntegerField;
    grid_recursosCONS_RECU_FAMILIA: TdxDBGridMaskColumn;
    grid_recursosNOMB_RECU_FAMILIA: TdxDBGridMaskColumn;
    quer_recursosCODI_RECU_FAMILIA: TStringField;
    JvWizardInteriorPage2: TJvWizardInteriorPage;
    fram_ordenar: Tffra_ordenar;
    jvPageOpciones: TJvWizardInteriorPage;
    PCPFrame1: TPCPFrame;
    PCPFrame2: TPCPFrame;
    chec_impr_so: TTBXRadioButton;
    chec_impr_puerto: TTBXRadioButton;
    pane_impr_puerto: TPCPFrame;
    labe_cortar: TSCLDBLabel;
    chec_nomb_archivo: TdxCheckEdit;
    comb_cortar: TPCPLookUpComboEdit;
    nomb_archivo: TFilenameEdit;
    JvWizardInteriorPage4: TJvWizardInteriorPage;
    Label43: TLabel;
    quer_sele_impresos: TQuery;
    myTabla_ventanacons_proc_actual: TIntegerField;
    quer_info_of: TQuery;
    tabl_tiquetes: TTable;
    quer_paquetesCONS_REFE_COLOR: TIntegerField;
    quer_paquetesCONS_GRUP_TALL_DETALLE: TIntegerField;
    quer_paquetesSECU_COLOR: TIntegerField;
    quer_paquetesNOMB_COLOR: TStringField;
    quer_paquetesSECU_TALLA: TIntegerField;
    quer_paquetesCANT_UNIDADES: TIntegerField;
    quer_paquetesTALLA: TStringField;
    grid_paquetesNUME_PAQUETE: TdxDBGridMaskColumn;
    grid_paquetesCONS_REFE_COLOR: TdxDBGridMaskColumn;
    grid_paquetesCONS_GRUP_TALL_DETALLE: TdxDBGridMaskColumn;
    grid_paquetesSECU_COLOR: TdxDBGridMaskColumn;
    grid_paquetesNOMB_COLOR: TdxDBGridMaskColumn;
    grid_paquetesSECU_TALLA: TdxDBGridMaskColumn;
    grid_paquetesCANT_UNIDADES: TdxDBGridMaskColumn;
    grid_paquetesTALLA: TdxDBGridMaskColumn;
    quer_inse_impresos: TQuery;
    quer_impr_tiquetes: TQuery;
    memo_impresion: TdxDBMemo;
    myTabla_ventanatiqu_produccion: TStringField;
    data_cortar: TDataSource;
    chec_form_personalizado: TdxCheckEdit;
    quer_form_personalizados: TQuery;
    data_form_personalizados: TDataSource;
    comb_form_personalizado: TPCPLookUpComboEdit;
    pane_form_estandar: TPanel;
    chec_vist_previa: TdxCheckEdit;
    chec_impr_hoja: TdxCheckEdit;
    labe_form_personalizado: TLabel;
    SCLShape1: TSCLShape;
    SCLDBLabel2: TSCLDBLabel;
    edit_nume_tiquetes: TdxSpinEdit;
    fram_reporte: Tffra_edit_reportes;
    quer_prev_fortes: TQuery;
    quer_prev_fortesNOMB_USUA_INFORME: TStringField;
    quer_prev_fortesCONTROLES: TBlobField;
    quer_prev_fortesORDE_1: TStringField;
    quer_prev_fortesORDE_ASCE_1: TIntegerField;
    quer_prev_fortesORDE_2: TStringField;
    quer_prev_fortesORDE_ASCE_2: TIntegerField;
    quer_prev_fortesORDE_3: TStringField;
    quer_prev_fortesORDE_ASCE_3: TIntegerField;
    SCLDBLabel3: TSCLDBLabel;
    comb_saltar: TPCPLookUpComboEdit;
    SCLDBLabel4: TSCLDBLabel;
    comb_prod_orden: TPCPLookUpComboEdit;
    SCLDBLabel5: TSCLDBLabel;
    comb_nume_lote: TPCPLookUpComboEdit;
    tabl_prod_ordenes: TkbmMemTable;
    tabl_prod_ordenescons_prod_orden: TIntegerField;
    tabl_prod_ordenesnume_prod_orden: TStringField;
    data_prod_ordenes: TDataSource;
    quer_lotes: TQuery;
    data_lotes: TDataSource;
    myTabla_ventanacons_prod_orden: TIntegerField;
    quer_prod_ordenes: TQuery;
    procedure chec_seleccionarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chec_paquetesChange(Sender: TObject);
    procedure chec_operacionesChange(Sender: TObject);
    procedure chec_recursosChange(Sender: TObject);
    procedure comb_paqu_tipoChange(Sender: TObject);
    procedure chec_nomb_archivoChange(Sender: TObject);
    procedure chec_impr_puertoChange(Sender: TObject);
    procedure chec_impr_soChange(Sender: TObject);
    procedure padr_wizardFinishButtonClick(Sender: TObject);
    procedure chec_impr_hojaChange(Sender: TObject);
    procedure chec_form_personalizadoChange(Sender: TObject);
    procedure comb_form_personalizadoChange(Sender: TObject);
    procedure jvPageOpcionesPage(Sender: TObject);
  private
    { Private declarations }
    fProcesoActual      : Integer;
    var_tiquete : String;
    var_tiquete2    : String;
    Procedure SetProcesoActual(Value : Integer);
    Procedure doActualizarStringPosiciones(peColumna : Integer);
    Procedure Reemplazar(peComodin, peValor : String);
    Procedure doImprimirTiquetesProduccionGenericos(peColumnas : Integer;
            peOrdenar, peCamp_Corte, peCamp_Salto, pePuerto : String);

  public
    { Public declarations }
    Property ProcesoActual : Integer Read fProcesoActual Write SetProcesoActual;
    Procedure doEjecutarAsistente(peCons_Prod_Orden : Integer = 0;
          pecons_prod_lote : Integer = 0; pecons_prod_paqu_tipo : Integer = 0; pecons_proceso : Integer = 0;
          peSeleccionarOF : Boolean = False);
  end;

Const
         cos_ide_posicion : String = '*FO';

var
  fwn1_prod_fabr_impr_tiquetes: Tfwn1_prod_fabr_impr_tiquetes;

Function IntToCodBarras(aEntero, aPosiciones:Integer):String;
  

implementation

uses _func_varias, _MDI, _cons_pcp, ucn1_prod_orde_tiqu_fabricacion,
  _cons_colores, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : chec_seleccionarChange
Objetivo        : Cambiar el estado del panel de selección
                  de acuerdo al item activo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfwn1_prod_fabr_impr_tiquetes.chec_seleccionarChange(
  Sender: TObject);
begin
  inherited;
  pane_seleccion.Visible := chec_seleccionar.Checked;
end;

procedure Tfwn1_prod_fabr_impr_tiquetes.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar controles
  ColorGrid(grid_paquetes);
  ColorGrid(grid_operaciones);
  ColorGrid(grid_recursos);
  JvWizardWelcomePage1.Color := clFondoAplicacion;
  JvWizardInteriorPage1.Color := clFondoAplicacion;
  JvWizardInteriorPage2.Color := clFondoAplicacion;
  jvPageOpciones.Color := clFondoAplicacion;
  JvWizardInteriorPage4.Color := clFondoAplicacion;
  //Crear la tabla ventana
  With myTabla_ventana do
  Begin
      Open;
      Insert;
      Post;
  End;
  SetProcesoActual(10);
  //Abrir consultas
  AbrirDataSet(quer_paqu_tipos);
  AbrirDataSet(quer_operaciones);
  AbrirDataSet(quer_recursos);
  AbrirDataSet(quer_paquetes);
  AbrirDataSet(quer_form_personalizados);
  fram_ordenar.doEjecutarFrame(Self.ClassName);
  Insertar_Palabras(Self, WKLenguaje);
End;
{****************************************************************
Procedimiento   : chec_paquetesChange
Objetivo        : Habilitar/Deshablilitar la selección de paquetes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfwn1_prod_fabr_impr_tiquetes.chec_paquetesChange(
  Sender: TObject);
begin
  inherited;
  grid_paquetes.Enabled := chec_paquetes.Checked;
end;
{****************************************************************
Procedimiento   : chec_operacionesChange
Objetivo        : Habilitar/Deshablilitar la selección de operaciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfwn1_prod_fabr_impr_tiquetes.chec_operacionesChange(
  Sender: TObject);
begin
  inherited;
  grid_operaciones.Enabled := chec_operaciones.Checked;
end;
{****************************************************************
Procedimiento   : chec_recursosChange
Objetivo        : Habilitar/Deshablilitar la selección de 
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfwn1_prod_fabr_impr_tiquetes.chec_recursosChange(
  Sender: TObject);
begin
  inherited;
  grid_recursos.Enabled := chec_recursos.Checked;
end;
{****************************************************************
Procedimiento   : doEjecutarAsistente
Objetivo        : Ejecutar el asistente
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tfwn1_prod_fabr_impr_tiquetes.doEjecutarAsistente(peCons_Prod_Orden : Integer = 0;
          pecons_prod_lote : Integer = 0; pecons_prod_paqu_tipo : Integer = 0; pecons_proceso : Integer = 0;
          peSeleccionarOF : Boolean = False);
Begin
     tabl_prod_ordenes.Close;
     tabl_prod_ordenes.Open;
     //Cargar todas las of en una tabla temporal
     tabl_prod_ordenes.LoadFromDataSet(quer_prod_ordenes, [mtcpoAppend]);
     tabl_prod_ordenes.Sort([]);
     if tabl_prod_ordenes.Locate('cons_prod_orden', peCons_prod_orden, []) Then
         comb_prod_orden.KeyValue := peCons_prod_orden;
     comb_prod_orden.Enabled := peSeleccionarOF;
     comb_prod_orden.hideButton := Not peSeleccionarOF;
     quer_lotes.Open;
     //Asignar los parámetros
     With myTabla_ventana do
     Begin
           if not (state in [dsEdit, dsInsert]) Then Edit;
           FieldByName('cons_prod_orden').Value := pecons_prod_orden;
           FieldByName('cons_prod_lote').Value := pecons_prod_lote;
           FieldByName('cons_prod_paqu_tipo').Value := pecons_prod_paqu_tipo;
           FieldByName('cons_proceso').Value := pecons_proceso;
           Post;
     End;
     //Mostrar la ventana
     ShowModal;
End;
{****************************************************************
Procedimiento   : comb_paqu_tipoChange
Objetivo        : Guardar los cambios en la ventana cuando cambie
                  el tipo de paqueteo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfwn1_prod_fabr_impr_tiquetes.comb_paqu_tipoChange(
  Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(myTabla_Ventana);
end;
{****************************************************************
Procedimiento   : chec_nomb_archivoChange
Objetivo        : Mostrar/Ocultar la selección de archivo para
                  impresión
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfwn1_prod_fabr_impr_tiquetes.chec_nomb_archivoChange(
  Sender: TObject);
begin
  inherited;
  nomb_archivo.Visible := chec_nomb_archivo.Checked;
end;

procedure Tfwn1_prod_fabr_impr_tiquetes.chec_impr_puertoChange(
  Sender: TObject);
begin
  inherited;

end;
{****************************************************************
Procedimiento   : chec_impr_soChange
Objetivo        : Habilitar / deshabilitar la impresión
                  por puerto
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfwn1_prod_fabr_impr_tiquetes.chec_impr_soChange(
  Sender: TObject);
begin
  inherited;
  SetControlEnabled(pane_impr_puerto, chec_impr_puerto.Checked);
end;

procedure Tfwn1_prod_fabr_impr_tiquetes.padr_wizardFinishButtonClick(
  Sender: TObject);
var
        var_todo_paquetes : Boolean;
        var_todo_operaciones : Boolean;
        var_todo_recursos : Boolean;
        var_paquetes    : Integer;
        var_operaciones : Integer;
        var_recursos    : Integer;
        var_imprimir    : Boolean;
        var_cons_tabla  : Integer;
        //Info tiquetes
        var_cons_prod_paqu_tipo : Integer;
        var_cons_prod_lote      : Integer;
        var_nume_prod_orden     : string; 
        var_nume_lote           : String;
        var_codi_referencia     : String; 
        var_nume_paquete        : integer; 
        var_secu_talla          : Integer; 
        var_talla               : String;
        var_secu_color          : Integer;
        var_nomb_color          : String;
        var_tiem_operacion      : Real;
        var_cant_unidades       : Integer;
        var_tiem_paquete        : Real;
        var_codi_recu_familia   : String;
        var_secu_operacion      : Integer;
        var_codi_operacion      : String;
        var_nomb_operacion      : String;    
        //Otras variables
        var_puerto      : String;    
        var_order_by    : String;
        var_camp_corte  : String;
        var_orde1       : String;
        var_orde2       : String;
        var_orde3       : String;
        var_Saltar      : String;
begin
  inherited;
  //Validaciones INICIALES
  quer_impr_tiquetes.Close;
  If chec_form_personalizado.Checked Then
     if comb_form_personalizado.EstaVacio Then
     Begin
         EjecutarMensaje(Format(cosDebeSeleccionarUn, [cosFormatoPersonalizado]), mtInformation, [mbOk],0);
         padr_wizard.ActivePage := jvPageOpciones;
         DarFoco(comb_form_personalizado);
         Exit;
     End;
  //Verificar que no haya otros impresos
  With quer_sele_impresos do
  Begin
        Close;
        Open;
        //Si ya hay impresos, mostrar un mensaje
        if (RecordCount > 0) then
        Begin
                If confirmar(Format(cosYaExistenTiquetesImpresos, [RecordCount, comb_paqu_tipo.text, FieldByName('usua_sistema').asString,
                                FormatDateTime('dddd dd "de" mmmm "de" yyyy', FieldByName('fech_sistema').AsDateTime)]))=mrNo Then 
                Begin
                        //Cerrar consulta
                        Close;
                        //Cancelar proc
                        Exit;
                End
                Else
                        //Cerrar consulta
                        Close;       
        End;
  End;
  Repaint;
  Try
        //Insertar un registro en la impresió
        quer_inse_impresos.ExecSQL;
        //Abrir la consulta de información de la referencia
        ProgresoBarraEstado(cosTrabajando);
        AbrirDataSet(quer_info_of);
        //Asignar a variables locales
        var_nume_prod_orden     := quer_info_of.FieldByName('nume_prod_orden').AsString; 
        var_nume_lote           := quer_info_of.FieldByName('nume_lote').AsString; 
        var_codi_referencia     := quer_info_of.FieldByName('codi_Referencia').AsString; 
        var_cons_prod_paqu_tipo := myTabla_ventana.FieldByName('cons_prod_paqu_tipo').AsInteger;
        var_cons_prod_lote     := myTabla_ventana.FieldByName('cons_prod_lote').AsInteger;
        //Verificar los filtros que seleccionó el usuario
        var_todo_paquetes := (Not chec_seleccionar.Checked) Or (Not chec_paquetes.Checked);
        var_todo_operaciones := (Not chec_seleccionar.Checked) Or (Not chec_operaciones.Checked);
        var_todo_recursos := (Not chec_seleccionar.Checked) Or (Not chec_recursos.Checked);
        //Crear la tabla en disco
        tabl_tiquetes.Close;
        tabl_tiquetes.CreateTable;
        tabl_tiquetes.Open;
        var_cons_tabla := 0;
        //Recorrer los paquetes
        For var_paquetes := 1 to quer_paquetes.RecordCount do
        Begin
             //Actualizar el progreso
             ProgresoBarraEstado(cosGenerandoTiquetes, var_paquetes, quer_paquetes.RecordCount);
             //Verificar si se debe imprimir el paquete
             If (grid_paquetes.Items[var_paquetes - 1].Selected) or (var_todo_paquetes) Then
             Begin
                  //Llevar a variables
                  With grid_paquetes do
                  Begin
                        var_nume_paquete        := StrToInt(Items[var_paquetes - 1].Values[FindColumnByFieldName('NUME_PAQUETE').Index]);
                        var_secu_talla          := StrToInt(Items[var_paquetes - 1].Values[FindColumnByFieldName('SECU_TALLA').Index]);
                        var_talla               := (Items[var_paquetes - 1].Values[FindColumnByFieldName('TALLA').Index]);
                        var_secu_color          := StrToInt(Items[var_paquetes - 1].Values[FindColumnByFieldName('SECU_COLOR').Index]);
                        var_nomb_color          := (Items[var_paquetes - 1].Values[FindColumnByFieldName('NOMB_COLOR').Index]);
                        var_cant_unidades       := StrToInt(Items[var_paquetes - 1].Values[FindColumnByFieldName('CANT_UNIDADES').Index]);
                  End;
                   //Recorrer las operaciones
                   for var_operaciones := 1 to quer_operaciones.RecordCount do
                   Begin
                        //Verificar si la operación está seleccionada
                        If (grid_operaciones.Items[var_operaciones - 1].Selected) or (var_todo_operaciones) Then
                        Begin
                             //Asignar a variables
                             with Grid_operaciones do
                             Begin
                                  var_tiem_operacion      := StrToFloat(Items[var_operaciones - 1].Values[FindColumnByFieldName('TIEMPO').Index]);
                                  var_tiem_paquete        := var_cant_unidades * var_tiem_operacion;
                                  var_codi_recu_familia   := (Items[var_operaciones - 1].Values[FindColumnByFieldName('CODI_RECU_FAMILIA').Index]);
                                  var_secu_operacion      := StrToInt(Items[var_operaciones - 1].Values[FindColumnByFieldName('SECU_OPERACION').Index]);
                                  var_codi_operacion      := (Items[var_operaciones - 1].Values[FindColumnByFieldName('CODI_OPER_COSTURA').Index]);
                                  var_nomb_operacion      := (Items[var_operaciones - 1].Values[FindColumnByFieldName('NOMB_OPER_COSTURA').Index]);     
                             End;
                              //Buscar si está en los recursos
                              if (var_todo_recursos) then var_imprimir := True
                              Else
                              Begin
                                   //Buscar si está en la selección de recursos
                                   var_recursos := 1;
                                   While (var_recursos <= quer_recursos.RecordCount) or (Not var_imprimir) do
                                   Begin
                                        If (grid_operaciones.Items[var_operaciones - 1].values[grid_operaciones.FindColumnByFieldName('CONS_RECU_FAMILIA').Index] =
                                                grid_recursos.Items[var_recursos - 1].values[grid_recursos.FindColumnByFieldName('CONS_RECU_FAMILIA').Index]) Then
                                                        var_imprimir := True;
                                        inc(var_recursos);
                                   End;
                              End;
                              //Si se imprime, generar el registro
                              if (var_imprimir) Then 
                                  With tabl_tiquetes do
                                  Begin
                                      //Consecutivo de la tabla
                                      Inc(var_cons_tabla);
                                      Insert;
                                      FieldByName('cons_tabla').Value := var_cons_tabla;
                                      FieldByName('codi_barras').Value := 
                                                IntToStr(var_cons_prod_paqu_tipo)+              //1 [1] - Tipo de paqueteo 
                                                IntToCodBarras(var_cons_prod_lote, 6)+          //6 [2-7] - Consecutivo de la orden
                                                IntToCodBarras(var_nume_paquete, 4)+            //4 [8-11] - Consecutivo del número de paquete
                                                IntToCodBarras(var_secu_operacion, 3);          //3 [12-14] - Consecutivo de la operación
                                      FieldByName('nume_prod_orden').Value := var_nume_prod_orden;
                                      FieldByName('nume_lote').Value := var_nume_lote;
                                      FieldByName('codi_referencia').Value := var_codi_Referencia;
                                      FieldByName('nume_paquete').Value := var_nume_paquete;
                                      FieldByName('secu_talla').Value := var_secu_talla;
                                      FieldByName('talla').Value := var_talla;
                                      FieldByName('secu_color').Value := var_secu_color;
                                      FieldByName('nomb_color').Value := var_nomb_color;
                                      FieldByName('tiem_operacion').Value := var_tiem_operacion;
                                      FieldByName('cant_unidades').Value := var_cant_unidades;
                                      FieldByName('tiem_paquete').Value := var_tiem_paquete;
                                      FieldByName('codi_recu_familia').Value := var_codi_recu_familia; 
                                      FieldByName('secu_operacion').Value := var_secu_operacion;
                                      FieldByName('codi_operacion').Value := var_codi_operacion;
                                      FieldByName('nomb_operacion').Value := var_nomb_operacion;
                                      Post;
                                  End;
                        End;
                   End;
             End;
        End;
  Except
        On e:Exception do
                EjecutarMensajeError(e.Message);
  End;
  tabl_tiquetes.Close;
  //Order by
  var_order_by := fram_ordenar.TextoOrdenar;
  //Generar la impresión por el QR
  If chec_impr_so.checked then
  Begin
          //RC20.17 Impresión de formatos personalizados
          if chec_form_personalizado.Checked Then
          Begin
              Try
                //Buscar el formato del informe
                With quer_prev_fortes do
                Begin
                     If Active Then Close;
                     ParamByName('cons_usua_informe').Value := quer_form_personalizados.FieldByName('cons_usua_informe').asInteger;
                     Open;
                     //Validar si no existe
                     If (RecordCount = 0) Then
                        Raise Exception.Create(Format(cosNoFuePosibleEncontrarElReporte, [FieldByName('cons_usua_informe').asString]));
                     //Llamar el reporte
                     fram_reporte.CampoFormato := quer_prev_fortesCONTROLES;
                     //Orden
                     if Not fram_ordenar.comb1.EstaVacio then
                        var_orde1 := fram_ordenar.comb1.keyValue
                     Else
                        var_orde1 := '';
                     if Not fram_ordenar.comb2.EstaVacio then
                        var_orde2 := fram_ordenar.comb2.keyValue
                     Else
                        var_orde2 := '';
                     if Not fram_ordenar.comb3.EstaVacio then
                        var_orde3 := fram_ordenar.comb3.keyValue
                     Else
                        var_orde3 := '';
                     If quer_impr_tiquetes.Active then quer_impr_tiquetes.close;
                     with quer_impr_tiquetes do
                     Begin
                        Sql.Clear;
                        Sql.Add('Select * from tmpTiqu_Fabricacion');
                        Open;
                     End;
                     fram_reporte.ReportDataSet := quer_impr_tiquetes;
                     fram_reporte.acti_abrir.Execute;
                     fram_reporte.LoadOrderByFromFields(var_orde1, var_orde2, var_orde3, fram_ordenar.desc1.Checked);
                     fram_reporte.TituloReporte := FieldByName('nomb_usua_informe').asString;
                     fram_reporte.ShowModal := True;
                     fram_reporte.acti_vist_previa.Execute;
                     //Close;
                End;
              Except
                  On e:Exception do
                  Begin
                      EjecutarMensajeError(e.Message);
                      quer_prev_fortes.Close;
                  End;
              End;
              quer_impr_tiquetes.Close;
          End
          Else
          //Impresión en formatos estándar de PCP
          Begin
              if Not comb_saltar.EstaVacio Then
                 var_Saltar := comb_saltar.KeyValue
              Else
                 var_Saltar := '';
              Application.CreateForm(Tfcn1_prod_orde_tiqu_fabricacion, fcn1_prod_orde_tiqu_fabricacion);
              //Impresion completa en una hora carta - RC17
              if chec_impr_hoja.Checked then
                  fcn1_prod_orde_tiqu_fabricacion.doEjecutarReporte(var_order_by, 0, chec_vist_previa.Checked, var_Saltar)
              Else
                  fcn1_prod_orde_tiqu_fabricacion.doEjecutarReporte(var_order_by, edit_nume_tiquetes.intValue, chec_vist_previa.Checked, var_Saltar)
          End;
  End
  Else
  Begin
      //RC14-Impresión directa al puerto
      //Identificar el puerto al cual se imprimirá
      if chec_nomb_archivo.Checked then
      Begin
         If nomb_archivo.FileName = '' then nomb_archivo.FileName := 'tiquetes.txt';
         var_Puerto := nomb_archivo.FileName;
      End
      Else
        var_Puerto := 'LPT1';

      //Identificar el tipo de corte
      if comb_cortar.Text <> '' Then
         var_camp_corte := comb_cortar.keyValue
      else
         var_camp_corte := '';
      doImprimirTiquetesProduccionGenericos(edit_nume_tiquetes.IntValue, var_order_by, var_camp_corte, '', nomb_archivo.Text);
  End;
  ProgresoBarraEstado;
end;
{****************************************************************
Procedimiento   : IntToCodBarras
Objetivo        : Convierte un entero a un string con ceros a la 
                  izquierda (el número de posiciones indicado)
                  para ser utilizado en los códigos de barras
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Function IntToCodBarras(aEntero, aPosiciones:Integer):String;
Var
   FCadena:String;
   I:Integer;
Begin
     Try
        FCadena:=IntToStr(aEntero);
        If Length(FCadena)<=aPosiciones Then
           For i:=1 To (aPosiciones-Length(FCadena)) Do
              Insert('0',FCadena,1)
        Else {*Cuando el codigo de barras es mayor a 99999*}
            EjecutarMensajeError(cosErrorCodigoBarrasDemasiadosDigitos,Error);
     Except
       FCadena:='';
       For i:=1 To aPosiciones Do Insert('0',FCadena,1);
     End;
     Result:=FCadena;
End;


{****************************************************************
Procedimiento   : SetProcesoActual
Objetivo        : Asigna el proceso actual sobre el cual 
                  se ejecuta la impresión
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tfwn1_prod_fabr_impr_tiquetes.SetProcesoActual(Value : Integer);
Begin
    fProcesoActual := Value;
    //Asignarlo a la tabla tempora
    with myTabla_Ventana do
    Begin
         Edit;
         FieldByName('cons_proc_actual').Value := fProcesoActual;
         Post;
    End;
End;
{****************************************************************
Procedimiento   : doImprimirTiquetesProduccionGenericos
Objetivo        : Imprimir los tiquetes de producción en impresora genérica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 03 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
Procedure Tfwn1_prod_fabr_impr_tiquetes.doImprimirTiquetesProduccionGenericos(peColumnas : Integer;
        peOrdenar, peCamp_Corte, peCamp_Salto, pePuerto : String);
Var
    var_Arch_Salida   : TextFile;
    var_Dist_tiquetes   : Integer;
    var_marg_izquierdo  : Integer;
    var_Tipo_impresora  : String;
    var_Colu_Actual   : Integer;
    var_paqu_actual : Integer;
    var_avance  : Integer;

Begin
  Try
         ProgresoBarraEstado(cosTrabajando);
         //Abrir la consulta de tiquetes
         If quer_impr_tiquetes.Active then quer_impr_tiquetes.close;
         with quer_impr_tiquetes do
         Begin
            Sql.Clear;
            Sql.Add('Select * from tmpTiqu_Fabricacion');
            //Ordenar
            If peOrdenar = '' Then peOrdenar:='Order by codi_Barras';
            Sql.Add(peOrdenar);
         end;
         quer_impr_tiquetes.Open;
         //Crear el archivo
         AssignFile(var_Arch_Salida, pePuerto);
         Rewrite(var_Arch_Salida);
         //Distancia entre los paquetes
         var_Dist_tiquetes:= _fmdi.tabl_pcp_opciones.FieldByName('tiqu_dist_tiquetes').asInteger;
         var_marg_izquierdo := _fmdi.tabl_pcp_opciones.FieldByName('tiqu_marg_izquierdo').asInteger;
         //Cargar el texto en un memo auxiliar
         if not (myTabla_Ventana.State in [dsInsert, dsEdit]) Then
                myTabla_Ventana.Edit;
         myTabla_ventana.FieldByName('tiqu_produccion').Value := _fmdi.tabl_pcp_opciones.FieldByName('tiqu_produccion').asString;
         myTabla_ventana.Post;
         //Buscar el tipo de impresora <Primera línea del archivo>
         var_Tipo_Impresora := UpperCase(Memo_impresion.Lines[0]);
         Memo_impresion.Lines.Delete(0);
         var_tiquete := memo_impresion.Lines.Text;
         //--------------------------------------------------------------------
         // INICIO DE LA IMPRESION
         //--------------------------------------------------------------------
         //....................................................................
         //Impresora ZEBRA
         //....................................................................
         If var_Tipo_Impresora = 'ZEBRA' Then
         Begin
             WriteLn(var_Arch_Salida,'^XA^MCY^XZ^XA^MCY^XZ^XA^MCY'); //Inicio Tiquete
             var_Colu_Actual := 0;
             var_Paqu_Actual := -1;
             var_Avance := 0;
             While not quer_impr_tiquetes.Eof do
             Begin
                   var_tiquete2:= var_tiquete;
                   //Verificar si cambió el campo en el cual se hace el corte
                   If (pecamp_corte <> '') and (var_Paqu_Actual <> quer_impr_tiquetes.FieldByName(peCamp_Corte).AsInteger) Then
                   Begin
                        //Enviar la solicitud de corte a la impresora
                        If (var_Paqu_Actual <> -1) Then
                        Begin
                            WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_cort_tiquete').AsString);
                            WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_inic_linea').AsString);
                        End;
                        var_Paqu_Actual := quer_impr_tiquetes.FieldByName(peCamp_corte).AsInteger;
                        var_colu_actual := 1;
                   End
                   Else
                   Begin
                       //Verificar si es la última columna
                       If (var_Colu_Actual = peColumnas) Then
                       Begin
                          var_colu_actual := 1;
                          WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_salt_linea').AsString);
                          WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_inic_linea').AsString);
                       End
                       Else
                         //Incrementar la columna
                         Inc(var_colu_actual);
                   End;
                   //Actualizar las variables del tiquete
                   doActualizarStringPosiciones(var_Colu_Actual);
                   Reemplazar('$CODI_BARRAS$', quer_impr_tiquetes.FieldByName('CODI_BARRAS').AsString);
                   Reemplazar('$NUME_PROD_ORDEN$', quer_impr_tiquetes.FieldByName('NUME_PROD_ORDEN').AsString);
                   Reemplazar('$CODI_REFERENCIA$', (quer_impr_tiquetes.FieldByName('CODI_REFERENCIA').AsSTRING));
                   Reemplazar('$NUME_PAQUETE$', FormatFloat('000',quer_impr_tiquetes.FieldByName('NUME_PAQUETE').AsInteger));
                   Reemplazar('$TALLA$', (quer_impr_tiquetes.FieldByName('TALLA').AsString));
                   Reemplazar('$COLOR$', (quer_impr_tiquetes.FieldByName('NOMB_COLOR').AsSTRING));
                   Reemplazar('$TIEM_OPERACION$', FormatFloat(',0.000', quer_impr_tiquetes.FieldByName('TIEM_OPERACION').AsFloat));
                   Reemplazar('$CANT_UNIDADES$', FormatFloat('0',quer_impr_tiquetes.FieldByName('CANT_UNIDADES').AsFloat));
                   Reemplazar('$TIEM_PAQUETE$', FormatFloat(',0.000',quer_impr_tiquetes.FieldByName('TIEM_PAQUETE').AsFloat));
                   Reemplazar('$CODI_RECU_FAMILIA$', quer_impr_tiquetes.FieldByName('CODI_RECU_FAMILIA').AsString);
                   Reemplazar('$SECU_OPERACION$', FormatFloat('000',quer_impr_tiquetes.FieldByName('SECU_OPERACION').AsINTEGER));
                   Reemplazar('$NOMB_OPERACION$', quer_impr_tiquetes.FieldByName('NOMB_OPERACION').AsString);
                   Reemplazar('$NUME_LOTE$', FormatFloat('0000',quer_impr_tiquetes.FieldByName('NUME_LOTE').ASFloat));
                   WriteLn(var_Arch_Salida, var_Tiquete2);
                   Inc(var_Avance);
                   ProgresoBarraEstado(cosTrabajando, var_avance, quer_impr_tiquetes.RecordCount);
                   {If Cancelar then
                     If MessageDlg('Realmente desea cancelar la impresión?',mtConfirmation,[mbyes]+[mbno],0)=MRYES
                        Then Begin
                            Cancelar:=False;
                            Raise Exception.Create('La impresión ha sido cancelada.');
                        End;}
                   //Siguiente registro
                   quer_impr_tiquetes.next;
             End;
             //Cortar al finalizar
             WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_cort_tiquete').AsString);
             CloseFile(var_arch_salida);
         End;
         //....................................................................
         //Impresoras MONARCH (PAXAR)
         //....................................................................

         If var_Tipo_Impresora = 'MONARCH' Then
         Begin
              //Inicio de linea
              //{B,1,N,1|E,0,0,1,1,0,1|  

              //Fin de linea
              
             ProgresoBarraEstado(cosTrabajando);
             //Enviar la configuracion general
             Writeln(var_arch_salida, var_Tiquete);
             var_colu_actual := 0;
             var_paqu_actual := -1;
             var_avance := 0;
             WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_inic_linea').AsString);
             While not quer_impr_tiquetes.Eof do
             Begin
                   //Cambio de paquete
                   If (peCamp_corte <> '') and ( var_paqu_actual <> quer_impr_tiquetes.FieldByName(peCamp_corte).AsInteger) Then
                   Begin
                        //Enviar la solicitud de corte
                        If var_paqu_actual<>-1 Then
                        Begin
                            WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_cort_tiquete').AsString);
                            WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_inic_linea').AsString);
                        End;
                        var_paqu_actual := quer_impr_tiquetes.FieldByName(pecamp_corte).AsInteger;
                        var_colu_actual := 1;
                   End
                   Else
                   Begin
                       If (var_colu_actual = peColumnas) Then
                       Begin
                          var_colu_actual:=1;
                          WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_salt_linea').AsString);
                          //Limpiar Buffer
                          WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_inic_linea').AsString);
                          
                       End
                       Else
                         Inc(var_colu_actual);
                   End;
                   WriteLn(var_arch_salida,IntToStr( 1 +(21 * (var_colu_actual - 1)))+',"O.F."|');
                   WriteLn(var_arch_salida,IntToStr( 2 +(21 * (var_colu_actual - 1)))+',"'+quer_impr_tiquetes.FieldByName('NUME_PROD_ORDEN').AsString+'"|');
                   WriteLn(var_arch_salida,IntToStr( 3 +(21 * (var_colu_actual - 1)))+',"Lote"|');
                   WriteLn(var_arch_salida,IntToStr( 4 +(21 * (var_colu_actual - 1)))+',"Paq"|');
                   WriteLn(var_arch_salida,IntToStr( 5 +(21 * (var_colu_actual - 1)))+',"Cant"|');
                   WriteLn(var_arch_salida,IntToStr( 6 +(21 * (var_colu_actual - 1)))+',"'+FormatFloat('0000',quer_impr_tiquetes.FieldByName('NUME_LOTE').ASFloat)+'"|');
                   WriteLn(var_arch_salida,IntToStr( 7 +(21 * (var_colu_actual - 1)))+',"'+FormatFloat('000',quer_impr_tiquetes.FieldByName('NUME_PAQUETE').ASFloat)+'"|');
                   WriteLn(var_arch_salida,IntToStr( 8 +(21 * (var_colu_actual - 1)))+',"'+FormatFloat('0',quer_impr_tiquetes.FieldByName('CANT_UNIDADES').ASFloat)+'"|');
                   WriteLn(var_arch_salida,IntToStr( 9 +(21 * (var_colu_actual - 1)))+',"TMAQ"|');
                   WriteLn(var_arch_salida,IntToStr(10 +(21 * (var_colu_actual - 1)))+',"'+quer_impr_tiquetes.FieldByName('CODI_RECU_FAMILIA').AsString+'"|');
                   WriteLn(var_arch_salida,IntToStr(11 +(21 * (var_colu_actual - 1)))+',"'+quer_impr_tiquetes.FieldByName('CODI_BARRAS').AsString+'"|');
                   WriteLn(var_arch_salida,IntToStr(12 +(21 * (var_colu_actual - 1)))+',"'+quer_impr_tiquetes.FieldByName('NOMB_OPERACION').AsString+'"|');
                   WriteLn(var_arch_salida,IntToStr(13 +(21 * (var_colu_actual - 1)))+',"Col:"|');
                   WriteLn(var_arch_salida,IntToStr(14 +(21 * (var_colu_actual - 1)))+',"'+quer_impr_tiquetes.FieldByName('NOMB_COLOR').AsString+'"|');
                   WriteLn(var_arch_salida,IntToStr(15 +(21 * (var_colu_actual - 1)))+',"Ref:"|');
                   WriteLn(var_arch_salida,IntToStr(16 +(21 * (var_colu_actual - 1)))+',"'+quer_impr_tiquetes.FieldByName('CODI_REFERENCIA').AsString+'"|');
                   WriteLn(var_arch_salida,IntToStr(17 +(21 * (var_colu_actual - 1)))+',"Tal.:"|');
                   WriteLn(var_arch_salida,IntToStr(18 +(21 * (var_colu_actual - 1)))+',"T.C."|');
                   WriteLn(var_arch_salida,IntToStr(19 +(21 * (var_colu_actual - 1)))+',"'+quer_impr_tiquetes.FieldByName('TALLA').AsString+'"|');
                   WriteLn(var_arch_salida,IntToStr(20 +(21 * (var_colu_actual - 1)))+',"'+FormatFloat(',0.000',quer_impr_tiquetes.FieldByName('TIEM_PAQUETE').AsFloat)+'"|');
                   WriteLn(var_arch_salida,IntToStr(21 +(21 * (var_colu_actual - 1)))+',""|');
                   inc(var_avance);
                   ProgresoBarraEstado(cosTrabajando, var_avance, quer_impr_tiquetes.RecordCount);
                   {If Cancelar then
                     If MessageDlg('Realmente desea cancelar la impresión?',mtConfirmation,[mbyes]+[mbno],0)=MRYES
                        Then Begin
                            Cancelar:=False;
                            Raise Exception.Create('La impresión ha sido cancelada.');
                        End;}
                   //Siguiente registro
                   quer_impr_tiquetes.next;
             End;
             WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_cort_tiquete').AsString);
             WriteLn(var_arch_salida, _fmdi.tabl_pcp_opciones.FieldByName('tiqu_salt_linea').AsString);
             CloseFile(var_arch_salida);
         End;
  Except
       On e:Exception do
       Begin
          EjecutarMensajeError(e.Message);
          CloseFile(var_arch_salida);
       end;
  end;
  ProgresoBarraEstado;
End;
{****************************************************************
Procedimiento   : doActualizarStringPosiciones
Objetivo        : Actualiza las posiciones de acuerdo con la columna
                  que se va a imprimir
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 03 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
Procedure Tfwn1_prod_fabr_impr_tiquetes.doActualizarStringPosiciones(peColumna : Integer);
Var
   var_i    :Integer;
   var_Cadena   : String;
   var_aux  : String;
   var_izquierda    :Integer;
Begin
   Begin
     var_Cadena := var_tiquete2;
     var_i := 1;
     While (var_i > 0) do
     Begin
         //Verificar si existe un string de posicion
         var_i:=pos(COS_IDE_POSICION, var_cadena);
         if (var_i > 0) then
         Begin
              Try
                 var_Aux:= Copy(var_Cadena, var_i + Length(COS_IDE_POSICION), 3);
                 var_Izquierda := StrToInt(var_Aux);
                 var_Izquierda:= var_Izquierda +
                    (_fmdi.tabl_pcp_opciones.FieldByName('tiqu_marg_izquierdo').asInteger + ((peColumna - 1) * _fmdi.tabl_pcp_opciones.FieldByName('tiqu_dist_tiquetes').asInteger));
              Except
                on E:Exception do
                   Raise Exception.Create(cosFormatoTiqueteProduccionNoValido + #13 + e.Message);
              End;
              //Reemplazar el string de posicion
              Delete(var_Cadena, var_i, 6);
              Insert('^FO'+ FormatFloat('000',var_Izquierda), var_Cadena, var_i);
         End;
     end;
     var_tiquete2 := var_Cadena;
   End;
End;
{****************************************************************
Procedimiento   : Reemplazar
Objetivo        : Reemplaza los tags del tiquete de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 03 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
Procedure Tfwn1_prod_fabr_impr_tiquetes.Reemplazar(peComodin, peValor : String);
Var
   var_i    : Integer;
   var_Cadena   : String;
Begin
     var_i := 1;
     var_Cadena := var_tiquete2;
     //Buscar el string
     While (var_i > 0) do
     Begin
         //Verificar la posicion en la que se encuentra
         var_i := pos(peComodin, var_Cadena);
         if (var_i > 0) then
         Begin
              //Reemplazarlo con el nuevo valor
              Delete(var_Cadena, var_i, Length(peComodin));
              Insert(peValor, var_Cadena, var_i);
         End;
         var_Tiquete2 := var_Cadena;
     end;
End;
{****************************************************************
Procedimiento   : chec_impr_hojaChange
Objetivo        : Actualizar los controles al seleccionar hora completa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 11 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfwn1_prod_fabr_impr_tiquetes.chec_impr_hojaChange(
  Sender: TObject);
begin
  inherited;
  edit_nume_tiquetes.Enabled := Not chec_impr_hoja.Checked;
end;
{****************************************************************
Procedimiento   : chec_form_personalizadoChange
Objetivo        : Actualizar la selección del formato personalizado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Ago-2005
Versión         : pcp4.0.20.17
*****************************************************************}
procedure Tfwn1_prod_fabr_impr_tiquetes.chec_form_personalizadoChange(
  Sender: TObject);
begin
  inherited;
  SetControlEnabled(pane_form_estandar, not chec_form_personalizado.Checked);
  comb_form_personalizado.Enabled := chec_form_personalizado.Checked;
  //Obligar a imprimir por el SO cuando es personalizado
  if chec_form_personalizado.Checked Then
  Begin
      chec_impr_so.Checked := True;
  End;
  chec_impr_puerto.Enabled := not chec_form_personalizado.Checked;

end;
{****************************************************************
Procedimiento   : comb_form_personalizadoChange
Objetivo        : Asignar el formato personalizado a un label
                  para que se pueda guardar en el .ini
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfwn1_prod_fabr_impr_tiquetes.comb_form_personalizadoChange(
  Sender: TObject);
begin
  inherited;
  if not comb_form_personalizado.EstaVacio then
     labe_form_personalizado.Caption := IntToStr(comb_form_personalizado.KeyValue)
  Else
     labe_form_personalizado.Caption := '-1';
end;
{****************************************************************
Procedimiento   : jvPageOpcionesPage
Objetivo        : Actualizar la pagina de OPCIONES
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfwn1_prod_fabr_impr_tiquetes.jvPageOpcionesPage(
  Sender: TObject);
begin
  inherited;
  //Posicionar el combo personalizado en el formato dado
  if (labe_form_personalizado.Caption <> '-1') Then
  Try
      comb_form_personalizado.keyValue := StrToInt(labe_form_personalizado.Caption);
  Except
  End;
  //Actualizar la selección del formato personalizado
  chec_form_personalizadoChange(Sender);
end;

end.

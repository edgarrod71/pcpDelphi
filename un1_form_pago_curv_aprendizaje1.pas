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
        Unit            : un1_form_pago_curv_aprendizaje1
        Objetivo        : Parametrización del detalle de la forma de pago
                          por curva de aprendizaje
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Febrero 07 de 2005
        Versión         : pcp4.0.20.2
*******************************************************************}
unit un1_form_pago_curv_aprendizaje1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, RxMemDS, Db,
  SCLTabs, Grids, BaseGrid, AdvGrid, AdvCGrid, SCLColumnGrid, JvExExtCtrls,
  JvComponent, JvDBRadioPanel, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  SCLShape, PCPFrame, ExtCtrls, dfsSplitter, PictureContainer, DBTables,
  AdvPanel, dxCntner, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, Boxes, PCPProceso, StdCtrls, SoCtrls, SCLDBLabel, TBX, TB2Item,
  TB2Dock, TB2Toolbar, TeEngine, Series, TeeProcs, Chart, DBChart, dxTL,
  dxDBCtrl, dxDBGrid;


  
type
  Tfn1_form_pago_curv_aprendizaje1 = class(T_fvent_modal)
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    edit_codigo: TdxDBEdit;
    edit_nombre: TdxDBEdit;
    chec_activo: TdxDBCheckEdit;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    dxDBCurrencyEdit4: TdxDBCurrencyEdit;
    dxDBCurrencyEdit5: TdxDBCurrencyEdit;
    dxDBCurrencyEdit6: TdxDBCurrencyEdit;
    dxDBCurrencyEdit7: TdxDBCurrencyEdit;
    edit_Valo_inic_bono: TdxDBCurrencyEdit;
    edit_valo_fina_bono: TdxDBCurrencyEdit;
    Tabla_VentanaCONS_FORM_PAGO_APRENDIZAJE: TIntegerField;
    Tabla_VentanaCODI_FORM_PAGO_APRENDIZAJE: TStringField;
    tabla_ventanaNOMB_FORM_PAGO_APRENDIZAJE: TStringField;
    tabla_VentanaESTA_ACTIVO: TIntegerField;
    Tabla_VentanaHORA_DIARIAS: TIntegerField;
    Tabla_VentanaHORA_SEMANALES: TIntegerField;
    Tabla_VentanaNUME_SEMANAS: TIntegerField;
    Tabla_VentanaNUME_DIAS_SEMANA: TIntegerField;
    Tabla_VentanaEFIC_INICIAL: TFloatField;
    Tabla_VentanaEFIC_FINAL: TFloatField;
    Tabla_VentanaVALO_BONO_INICIAL: TFloatField;
    Tabla_VentanaVALO_BONO_FINAL: TFloatField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    tabla_ventanaES_PORCENTUAL: TIntegerField;
    Tabla_VentanaNUME_DIAS: TIntegerField;
    radi_tipo: TJvDBRadioPanel;
    SCLShape1: TSCLShape;
    PCPFrame2: TPCPFrame;
    PCPFrame3: TPCPFrame;
    PCPFrame4: TPCPFrame;
    dfsSplitter1: TdfsSplitter;
    tabl_grafica: TRxMemoryData;
    tabl_graficasemana: TIntegerField;
    tabl_graficaeficiencia: TFloatField;
    tabl_graficavalor: TFloatField;
    data_grafica: TDataSource;
    dxPageControl1: TSCLPageControl;
    dxTabSheet1: TSCLTabSheet;
    dxTabSheet2: TSCLTabSheet;
    dxTabSheet3: TSCLTabSheet;
    boto_calc_semanales: TTBXItem;
    boto_calc_diarios: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    quer_opciones: TQuery;
    data_opciones: TDataSource;
    radi_calculos: TJvDBRadioPanel;
    SCLShape2: TSCLShape;
    Tabla_VentanaPAGO_DIARIO: TIntegerField;
    SCLDBLabel13: TSCLDBLabel;
    quer_parametros: TQuery;
    Tabla_VentanaHORA_MINI_PERIODO: TIntegerField;
    Tabla_VentanaTOLE_INFERIOR: TFloatField;
    Tabla_VentanaTOLE_SUPERIOR: TFloatField;
    SCLDBLabel3: TSCLDBLabel;
    dxDBCurrencyEdit8: TdxDBCurrencyEdit;
    labe_tole_supe: TSCLDBLabel;
    dxDBCurrencyEdit10: TdxDBCurrencyEdit;
    labe_tole_infe: TSCLDBLabel;
    dxDBCurrencyEdit11: TdxDBCurrencyEdit;
    Graf_Eficiencias: TDBChart;
    Series1: TFastLineSeries;
    Graf_Bono: TDBChart;
    Series2: TFastLineSeries;
    Graf_Unida: TDBChart;
    Series3: TFastLineSeries;
    Series4: TFastLineSeries;
    QEliminar_Valores: TQuery;
    QInsertar_Valores: TQuery;
    QValores: TQuery;
    Grid: TAdvColumnGrid;
    Tabla_VentanaEFIC_PRIM_DIA: TFloatField;
    Tabla_VentanaVALO_BONO_PRIM_DIA: TFloatField;
    SCLDBLabel12: TSCLDBLabel;
    dxDBCurrencyEdit12: TdxDBCurrencyEdit;
    SCLDBLabel14: TSCLDBLabel;
    dxDBCurrencyEdit13: TdxDBCurrencyEdit;
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure Tabla_VentanaCalcFields(DataSet: TDataSet);
    procedure doActualizarGrafica(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure doActualizarGraficaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure radi_tipoChange(Sender: TObject);
    procedure doValidarDatos(Sender: TObject);
    procedure comb_mini_garantizadoChange(Sender: TObject);
    procedure doActualizarPeriodoCalculo(Sender: TObject);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);
    procedure Tabla_VentanaAfterPost(DataSet: TDataSet);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  fn1_form_pago_curv_aprendizaje1: Tfn1_form_pago_curv_aprendizaje1;

implementation

uses _func_varias, _cons_pcp, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Valores pretedeterminados de la forma de pago
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 07 de 2005
Versión         : pcp4.0.20.2
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.Tabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With tabla_Ventana do
  Begin
      FieldByName('esta_activo').Value := 1;
      FieldByName('es_porcentual').Value := 1;
      FieldByName('pago_diario').Value := 1;
  End;
  //Actualizar la gráfica
  doActualizarGrafica(Self);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaCalcFields
Objetivo        : Calcular los campos adicionales de la tabla principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 07 de 2005
Versión         : pcp4.0.20.2
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.Tabla_VentanaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  With Tabla_Ventana do
  Begin
      FieldByName('nume_dias').Value := FieldByName('nume_semanas').asFloat * FieldByName('nume_dias_semana').asInteger;
  End;
end;
{****************************************************************
Procedimiento   : doActualizarGrafica
Objetivo        : Dibuja la gráfica
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 07 de 2005
Versión         : pcp4.0.20.2
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.doActualizarGrafica(
  Sender: TObject);
Var
    var_fila    : Integer;
    var_Eficiencia  : Real;
    var_Valor   : Real;
    var_Ke  : Real;
    var_Kb  : Real;
    Var_Temporal : Integer;
    var_dura_Curva  : Integer;
    var_fila_aux    : Integer;
    var_escribir    : Boolean;
    var_Dia : Integer;
begin
  inherited;
	//Verificar si existen datos
	If Tabla_Ventana.State = dsBrowse Then
  Begin
    QValores.Close;
    AbrirDataSet(QValores);
    If QValores.RecordCount > 0 Then
    Begin
      LimpiarGrid(Grid, 1);
      Grid.RowCount := 1;
      //Verifcar que la tabla temporal este abierta
      If Not tabl_grafica.Active Then
        tabl_grafica.Open;
      //Limpiar la tabla temporal
      tabl_grafica.EmptyTable;
      //Asignar el título del campo
      If Tabla_Ventana.FieldByName('PAGO_DIARIO').AsInteger = 1 Then
        Grid.Cells[0, 0] := cosDia
      Else
        Grid.Cells[0, 0] := cosSemana;
      //Inicializar variables
      var_fila_aux := 1;
      //Recorre los registros
      While Not QValores.Eof Do
      Begin
        //Insertar valor
        Grid.RowCount := var_fila_aux + 1;
        tabl_grafica.Insert;
        tabl_grafica.FieldByName('SEMANA').AsInteger :=
          QValores.FieldByName('NUME_SEMANA').AsInteger;
				Grid.Cells[0, var_fila_aux] := QValores.FieldByName('NUME_SEMANA').AsString;
        tabl_grafica.FieldByName('EFICIENCIA').AsFloat :=
          QValores.FieldByName('EFIC_LIMITE').AsFloat;
        Grid.Cells[1, var_fila_aux] := FormatFloat(',0.00', QValores.FieldByName('EFIC_LIMITE').AsFloat);
        tabl_grafica.FieldByName('VALOR').AsFloat :=
          QValores.FieldByName('VALO_PAGO').AsFloat;
        Grid.Cells[2, var_fila_aux] := FormatFloat(',0.00', QValores.FieldByName('VALO_PAGO').AsFloat);
        tabl_grafica.Post;

        //Ir al anterio registro
        QValores.Next;
        Inc(var_fila_aux);
      End;
      //Cerrar la consulta
      QValores.Close;
    End;
  End
  Else
  Begin
    //Verificar si los botones de calculo diario-semanal están activos
    if Not (boto_calc_diarios.Checked or boto_Calc_semanales.Checked) Then
    Begin
         boto_calc_semanales.Checked := True;
         Exit;
    End;
    With Grid, Tabla_ventana do
    Begin
        //Limpiar el grid
        LimpiarGrid(Grid, 1);
        RowCount := 1;
        //Configuración del período de cálculo (dias-semanas)
        if (boto_calc_diarios.Checked) Then
        Begin
          var_dura_curva := FieldByName('NUME_DIAS').asInteger;
          tabl_grafica.FieldByName('SEMANA').DisplayLabel := cosDia;
          Cells[ColumnByName['NUME_SEMANA'].Index, 0] := cosDia;
          Var_Temporal := FieldByName('NUME_DIAS_SEMANA').asInteger;
        End
        Else
        Begin
          var_dura_curva := FieldByName('nume_Semanas').asInteger;
          tabl_grafica.FieldByName('SEMANA').DisplayLabel := cosSemana;
          Cells[ColumnByName['NUME_SEMANA'].Index, 0] := cosSemana;
          Var_Temporal := var_dura_curva;
        End;
        //Vaciar la tabla de la gráfica
        tabl_grafica.Close;
        tabl_grafica.Open;
        //Número de filas (duración de la curva)
        RowCount := var_dura_curva + 1;
        //Numerar las semanas
//        AutoNumberCol(ColumnByName['NUME_SEMANA'].Index);
        //Calcular los valores de las constantes
        if (var_dura_curva > 0) Then
        Begin
          If (boto_calc_diarios.Checked) Then
            var_ke := (Tabla_ventana.FieldByName('EFIC_INICIAL').asFloat - Tabla_ventana.FieldByName('EFIC_PRIM_DIA').asFloat)
             / LN(Var_Temporal)
          Else
            var_ke := (Tabla_ventana.FieldByName('efic_final').asFloat - Tabla_ventana.FieldByName('efic_inicial').asFloat)
             / LN(Var_Temporal);
				End
        Else
          var_ke := 0;
        //Kb
        if (var_dura_curva > 0) Then
        Begin
					If (boto_calc_diarios.Checked) Then
            var_kb := (Tabla_ventana.FieldByName('VALO_BONO_INICIAL').asFloat - Tabla_ventana.FieldByName('VALO_BONO_PRIM_DIA').asFloat)
             / LN(Var_Temporal)
					Else
            var_kb := (Tabla_ventana.FieldByName('valo_bono_final').asFloat - Tabla_ventana.FieldByName('valo_bono_inicial').asFloat)
             / LN(Var_Temporal);
        End
        Else
          var_kb := 0;
				Var_Dia := 1;
        //Escribir los valores
        var_fila_aux := 1; //Esta variable ayuda a escribir solamente los valores semanales
        For var_fila := 1 to Tabla_ventana.FieldByName('nume_dias').asInteger do
        Begin
            //Verificar si se escribe
            if (boto_calc_diarios.Checked) then var_escribir := True
            Else
            Begin
                 if
                 (FieldByName('nume_semanas').asInteger > 0) and (FieldByName('nume_dias_semana').asInteger > 0) and
                 (((var_fila) mod FieldByName('nume_dias_semana').asInteger) = 0) Then
                      var_escribir := True
                 Else
                      var_escribir := False;
            End;
            if var_escribir Then
            Begin
                //Semana o día
                Cells[0, var_fila_aux] := IntToStr(var_fila_aux);
                //Eficiencia límite
								If radi_calculos.ItemIndex = 0 Then
                Begin
                  If Var_Dia <= FieldByName('nume_dias_semana').asInteger Then
	                  var_eficiencia := var_Ke * LN(var_fila_aux) + Tabla_ventana.FieldByName('EFIC_PRIM_DIA').asFloat
                  Else
                  Begin
                    var_Ke := (Tabla_ventana.FieldByName('EFIC_FINAL').asFloat - Tabla_ventana.FieldByName('EFIC_INICIAL').asFloat)
                    	/ LN(Tabla_ventana.FieldByName('NUME_SEMANAS').AsInteger);
	                  var_eficiencia := var_Ke * LN((var_fila_aux / Tabla_ventana.FieldByName('nume_dias_semana').asInteger)) +
                    	Tabla_ventana.FieldByName('EFIC_INICIAL').asFloat;
                  End;
                End
                Else
                  var_eficiencia := var_Ke * LN(var_fila_aux) + Tabla_ventana.FieldByName('efic_inicial').asFloat;
                if var_eficiencia < 0 Then var_Eficiencia := 0;
                Cells[ColumnByName['EFIC_LIMITE'].Index, var_fila_aux] := FormatFloat(',0.00', var_eficiencia);
                //Valor
								If radi_calculos.ItemIndex = 0 Then
                Begin
                  If Var_Dia <= FieldByName('nume_dias_semana').asInteger Then
	                  var_valor := var_Kb * LN(var_fila_aux) + Tabla_ventana.FieldByName('VALO_BONO_PRIM_DIA').asFloat
                  Else
									Begin
                    var_Kb := (Tabla_ventana.FieldByName('VALO_BONO_FINAL').asFloat - Tabla_ventana.FieldByName('VALO_BONO_INICIAL').asFloat)
                    	/ LN(Tabla_ventana.FieldByName('NUME_SEMANAS').AsInteger);
	                  var_valor := var_Kb * LN((var_fila_aux / Tabla_ventana.FieldByName('nume_dias_semana').asInteger)) +
                    	Tabla_ventana.FieldByName('VALO_BONO_INICIAL').asFloat;
									End;
                End
                Else
                  var_valor := var_Kb * LN(var_fila_aux) + Tabla_ventana.FieldByName('valo_bono_inicial').asFloat;
                if var_valor < 0 Then var_valor := 0;
                Cells[ColumnByName['VALO_PAGO'].Index, var_fila_aux] :=
                          FormatFloat(',0.00', var_valor);
                //Insertar el registro para la gráfica
                tabl_grafica.Insert;
                if boto_calc_diarios.Checked then
                   tabl_grafica.FieldByName('semana').Value := var_fila
                Else
                   tabl_grafica.FieldByName('semana').Value := var_fila_aux;
                tabl_grafica.FieldByName('eficiencia').Value := var_eficiencia;
                tabl_grafica.FieldByName('valor').Value := var_Valor;
                tabl_grafica.Post;
                Inc(var_fila_aux);
                Inc(Var_Dia);
            End;
        End;
    End;
  End;
  Graf_eficiencias.Refresh;
  Graf_bono.Refresh;
  Graf_unida.Refresh;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Actualizar la gráfica antes de guardar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 07 de 2005
Versión         : pcp4.0.20.2
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
	//Verificar que la tabla este en inserción
  If Tabla_Ventana.State = dsinsert Then
  	//Asignar el consecutio identificador del registro
    Tabla_Ventana.FieldByName('CONS_FORM_PAGO_APRENDIZAJE').AsInteger :=
    	GenerarSecuencia('PCP_FORM_PAGO_APRENDIZAJE', 'CONS_FORM_PAGO_APRENDIZAJE');

  inherited;
end;

{****************************************************************
Procedimiento   : doActualizarGraficaExecute
Objetivo        : Actualiza la gráfica cuando la tabla está en edición
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 07 de 2005
Versión         : pcp4.0.20.2
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.doActualizarGraficaExecute(
  Sender: TObject);
begin
  inherited;
  if (tabla_Ventana.State in [dsInsert, dsEdit]) Then
  Begin
     doValidarDatos(Sender);
     doActualizarGrafica(Sender);
  End;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles de la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 08 de 2004
Versión         : pcp4.0.20.3
*****************************************************************}

procedure Tfn1_form_pago_curv_aprendizaje1.FormShow(Sender: TObject);
begin
  inherited;
  //Actualizar la gráfica
  doActualizarGrafica(Sender);
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 08 de 2005
Versión         : pcp4.0.20.3
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.FormCreate(Sender: TObject);
begin
  inherited;
  Tabla_VentanaTOLE_SUPERIOR.DisplayLabel := labe_tole_supe.Caption;
  Tabla_VentanaTOLE_INFERIOR.DisplayLabel := labe_tole_infe.Caption;
  //Abrir las consultas
  AbrirDataSet(quer_opciones);
  AbrirDataSet(quer_parametros);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : radi_tipoChange
Objetivo        : Actualizar los componentes al cambiar el tipo de
                  datos (valores / %)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 07 de 2005
Versión         : pcp4.0.20.3
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.radi_tipoChange(
  Sender: TObject);
var
    var_formato : String;
begin
  inherited;
  //Porcentual
  if radi_tipo.Value = '1' Then
      var_formato := ',0.00 %'
  //Valores
  Else
      var_formato   := '$ ,0.00';
  //Tipo de cálculo
  if radi_calculos.Value = '1' Then
    boto_calc_diarios.Checked := True
  Else
    boto_Calc_semanales.Checked := True;
  //Cambiar el  símbolo de los campos de acuerdo a la selección valor-%
  edit_Valo_inic_bono.DisplayFormat := var_formato;
  edit_Valo_fina_bono.DisplayFormat := var_formato;
  //Actualizar la gráfica
  doActualizarGrafica(Sender);
end;
{****************************************************************
Procedimiento   : doValidarDatos
Objetivo        : Valida los datos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 09 de 2005
Versión         : pcp4.0.20.4
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.doValidarDatos(
  Sender: TObject);
begin
  inherited;
  With tabla_Ventana do
  Begin
      //Validar eficiencias
      if (FieldByName('efic_final').asFloat < FieldByName('efic_inicial').asFloat) Then
      Begin
        if FieldByName('efic_final').asFloat > 0 Then //--RC20.12 : Mostrar el mensaje solo cuando hay valor
                EjecutarMensaje(cosErrorEnEficienciasElSistemaAjsutara, mtInformation, [mbOk] ,0);
        FieldByName('efic_final').asFloat := FieldByName('efic_inicial').asFloat;
      End;
  End;
end;
{****************************************************************
Procedimiento   : comb_mini_garantizadoChange
Objetivo        : Actualizar el valor del pago mínimo garantizado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 11 de 2005
Versión         : pcp4.0.20.4
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.comb_mini_garantizadoChange(Sender: TObject);
{Var
    var_cons_Tabl_auxi_detalle  : Integer;}
begin
{  inherited;
  if Not (Tabla_Ventana.State in [dsEdit, dsInsert]) Then Exit;
  //Si no es un ComboBox - Salir
  if Not (Sender is TPCPLookUpComboEdit) Then Exit;
  //Si el combo esta vacio, limpiar
  if (Sender as TPCPLookUpComboEdit).EstaVacio Then Exit;
  var_cons_Tabl_auxi_detalle := (Sender as TPCPLookUpComboEdit).KeyValue;
  //Buscar la opción y verificar que tenga vínculo válido a un campo
  if (quer_opciones.Locate('cons_tabl_auxi_detalle',
        var_cons_Tabl_auxi_detalle, [])) and
     (quer_opciones.FieldByName('adic_varc').asString <> '') Then
     //Escribir el valor de la selección en el parámetro
    tabla_Ventana.FieldByName('VALO_HORA_MINI_GARANTIZADO').Value :=
        quer_parametros.FieldByName(quer_opciones.FieldByName('adic_varc').asString).asFloat
  Else
    //Valor cero en el parámetro
    tabla_Ventana.FieldByName('VALO_HORA_MINI_GARANTIZADO').Value := 0;}
end;
{****************************************************************
Procedimiento   : doActualizarPeriodoCalculo
Objetivo        : Actualiza el periodo de cálculo desde los botones
                  de la barra de herramientas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 11 de 2005
Versión         : pcp4.0.20.4
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.doActualizarPeriodoCalculo(
  Sender: TObject);
begin
  inherited;
  //Verificar que la tabla esté en edición
  if Not (tabla_ventana.State in [dsInsert, dsEdit]) Then Exit;
  //Verificar que el Sender sea uno de los botones válidos
  if (Sender = boto_calc_diarios) Then
  Begin
    boto_Calc_diarios.Checked := True;
    tabla_Ventana.FieldByName('PAGO_DIARIO').Value := 1;
  End
  Else
  if (Sender = boto_calc_semanales) Then
  Begin
    boto_Calc_semanales.Checked := True;
    tabla_Ventana.FieldByName('PAGO_DIARIO').Value := -1;
  End;
  //Actualizar la gráfica
  doActualizarGrafica(Sender);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterScroll
Objetivo        : Actualizar la gráfica al cambiar de registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 04-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.Tabla_VentanaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if tabla_Ventana.Active Then
    doActualizarGrafica(Self);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaAfterPost
Objetivo        : Guardar los valores
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Enero 26 de 2006
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_form_pago_curv_aprendizaje1.Tabla_VentanaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
	//Eliminar el detalle de la forma de pago
  QEliminar_Valores.Close;
  QEliminar_Valores.ExecSQL;
  QEliminar_Valores.Close;

  //Recorrer los registros de la tabla temporal
  tabl_grafica.First;
  While Not tabl_grafica.EOF Do
  Begin
    //Asignar valores a los parametros
    QInsertar_Valores.Close;
    QInsertar_Valores.ParamByName('CONS_FORM_PAGO_APRENDIZAJE').AsInteger :=
    	Tabla_Ventana.FieldByname('CONS_FORM_PAGO_APRENDIZAJE').AsInteger;
    QInsertar_Valores.ParamByName('NUME_SEMANA').AsInteger :=
    	tabl_grafica.FieldByName('SEMANA').AsInteger;
    QInsertar_Valores.ParamByName('EFIC_LIMITE').AsFloat :=
    	tabl_grafica.FieldByname('EFICIENCIA').AsFloat;
    QInsertar_Valores.ParamByName('VALO_PAGO').AsFloat :=
    	tabl_grafica.FieldByname('VALOR').AsFloat;
    QInsertar_Valores.ExecSQL;
    QInsertar_Valores.Close;

    //Ir al siguiente registro
    tabl_grafica.Next;
  End;
end;

procedure Tfn1_form_pago_curv_aprendizaje1.GridKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13 Then
  Begin
    //Verificar que exista la semana o el día
    If Grid.Cells[0, Grid.Row] = '' Then
    	Exit;
    //Verificar si la tabla maestra esta en consulta
    If Tabla_Ventana.State = dsBrowse Then
      Tabla_Ventana.Edit;
    //Asignar cero a la eficiencia si esta vacia
    If Grid.Cells[1, Grid.Row] = '' Then
    	Grid.Cells[1, Grid.Row] := '0';
    //Asignar cero al valor si esta vacia
    If Grid.Cells[2, Grid.Row] = '' Then
    	Grid.Cells[2, Grid.Row] := '0';
    //Localizar el registro
    tabl_grafica.Locate('SEMANA', StrToInt(Grid.Cells[0, Grid.Row]), []);
    //Editar el registro
    tabl_grafica.Edit;
    tabl_grafica.FieldByName('EFICIENCIA').AsFloat := StrToFloat(Grid.Cells[1, Grid.Row]);
    tabl_grafica.FieldByName('VALOR').AsFloat := StrToFloat(Grid.Cells[2, Grid.Row]);
    tabl_grafica.Post;
  End;
end;

end.

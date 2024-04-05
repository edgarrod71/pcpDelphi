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
        Unit            : un1_cont_prod_curv_apre_operario
        Objetivo        : Consulta de avance de la curva de aprendizaje
                          por operario
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 24-Jun-2005
        Versión         : pcp4.0.20.13
*******************************************************************}
unit un1_cont_prod_curv_apre_operario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, TB2Dock, TB2Toolbar, TBX, TB2Item, ExtCtrls, Boxes, PCPFrame,
  RxLookup, PCPLookUpComboEdit, StdCtrls, SoCtrls, SCLDBLabel, Db, DBTables,
  dxCntner, dxEditor, dxEdLib, dxDBELib,
  Grids, BaseGrid, AdvGrid, SoRadGrp, dfsSplitter, JvExExtCtrls,
  JvRadioGroup, SCLShape, SCLTabs, Series, TeEngine, TeeProcs, Chart,
  DBChart;

type
  Tfn1_cont_prod_curv_apre_operario = class(TForm)
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    Acciones: TActionList;
    Acti_Actualizar: TAction;
    Acti_Salir: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    CBCodigo_Personal: TPCPLookUpComboEdit;
    CBPersonal: TPCPLookUpComboEdit;
    SCLDBLabel2: TSCLDBLabel;
    QPersonal: TQuery;
    DSQPersonal: TDataSource;
    SCLDBLabel3: TSCLDBLabel;
    DBPlanta: TdxDBEdit;
    SCLDBLabel4: TSCLDBLabel;
    DBSeccion: TdxDBEdit;
    SCLDBLabel5: TSCLDBLabel;
    DBCodigo_Curva: TdxDBEdit;
    SCLDBLabel6: TSCLDBLabel;
    DBCurva: TdxDBEdit;
    SCLDBLabel8: TSCLDBLabel;
    DBCodigo_Operacion: TdxDBEdit;
    SCLDBLabel9: TSCLDBLabel;
    DBOperacion: TdxDBEdit;
    SCLDBLabel10: TSCLDBLabel;
    DBSemana: TdxDBEdit;
    SCLDBLabel11: TSCLDBLabel;
    DBEficiencia: TdxDBEdit;
    QSemana: TQuery;
    DSQSemana: TDataSource;
    RGTipo_Consulta: TJvRadioGroup;
    SCLDBLabel7: TSCLDBLabel;
    QHoras: TQuery;
    QMinimo: TQuery;
    QHora_Produccion: TQuery;
    quer_form_pago_dividido: TQuery;
    quer_form_pago_aprendizaje: TQuery;
    QMinutos_Turno: TQuery;
    QTemporal: TQuery;
    QHora_Extra: TQuery;
    QBono: TQuery;
    SCLShape1: TSCLShape;
    page: TSCLPageControl;
    page_grafica: TSCLTabSheet;
    page_datos: TSCLTabSheet;
    DBResultado: TAdvStringGrid;
    page_todo: TSCLTabSheet;
    pane_top: TPCPFrame;
    pane_all: TPCPFrame;
    dfsSplitter1: TdfsSplitter;
    DBGrafico: TDBChart;
    Series1: TFastLineSeries;
    Series2: TPointSeries;
    Series3: TFastLineSeries;
    Series4: TPointSeries;
    procedure Acti_SalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBCodigo_PersonalChange(Sender: TObject);
    procedure Acti_ActualizarExecute(Sender: TObject);
    procedure RGTipo_ConsultaChange(Sender: TObject);
    procedure pageChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mostrar_Curva;
    procedure Mostrar_Grafica;
    function Hora_Produccion(Fecha : TDateTime):Double;
    procedure Mostrar_Grid;
  end;

var
  fn1_cont_prod_curv_apre_operario: Tfn1_cont_prod_curv_apre_operario;

implementation

uses _func_varias, _MDI, _cons_pcp, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : Mostrar_Grid
Objetivo        : Mostrar resultados en el grid
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Junio 20 de 2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.Mostrar_Grid;
begin
//
end;

{****************************************************************
Procedimiento   : Hora_Produccion
Objetivo        : Valor Hora Producción
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Junio 18 de 2005
Versión         : pcp4.0.20.13
*****************************************************************}
function Tfn1_cont_prod_curv_apre_operario.Hora_Produccion(Fecha : TDateTime):Double;
begin
  //Inicializar resultado
	Result := 0;

	//Asignar valores a los parametros
  QHora_Produccion.Close;
  QHora_Produccion.ParamByName('CONS_PERSONAL').AsInteger :=
    QPersonal.FieldByName('CONS_PERSONAL').AsInteger;
  QHora_Produccion.ParamByName('FECH_FINAL').AsDateTime := Fecha;
  AbrirDataSet(QHora_Produccion);

  Case QHora_Produccion.FieldByName('cons_sis_form_pago').asInteger Of
     //1-Lineal
    1 : Result := QHora_Produccion.FieldByName('valo_hora_produccion').asFloat;
    //2-Dividido
    2 : Begin
      quer_form_pago_dividido.Close;
      AbrirDataSet(quer_form_pago_dividido);
      If quer_form_pago_dividido.Locate('codi_form_pago_dividido', QHora_Produccion.FieldByName('para_1').asString, []) then
        Result :=
          (quer_form_pago_dividido.FieldByName('valo_fact_1').asFloat * quer_form_pago_dividido.FieldByName('porc_fact_1').asFloat) +
          (quer_form_pago_dividido.FieldByName('valo_fact_2').asFloat * quer_form_pago_dividido.FieldByName('porc_fact_2').asFloat) +
          (quer_form_pago_dividido.FieldByName('valo_fact_3').asFloat * quer_form_pago_dividido.FieldByName('porc_fact_3').asFloat) +
          (quer_form_pago_dividido.FieldByName('valo_fact_4').asFloat * quer_form_pago_dividido.FieldByName('porc_fact_4').asFloat);
			quer_form_pago_dividido.Close;
    End;
    //Por habilidad
    fpNivelDeHabilidad :  Result := QHora_Produccion.FieldByName('valo_hora_produccion').asFloat;
    //Curva de aprendizaje
    fpCurvaAprendizaje  : Begin
      quer_form_pago_aprendizaje.Close;
			AbrirDataSet(quer_form_pago_aprendizaje);
      //Buscar la forma de pago
      if quer_form_pago_aprendizaje.Locate('codi_form_pago_aprendizaje', QHora_Produccion.FieldByName('para_1').asString, []) then
          //Pago general vhmp
          if quer_form_pago_aprendizaje.FieldByName('CONS_VALO_HORA_MINI_GARANTIZADO').asInteger = 1 Then
            Result := quer_form_pago_aprendizaje.FieldByName('VALO_HORA_MINI_GARANTIZADO').asFloat
          //Calculo promedio
          Else
              Result := 999; //OJO--PENDIENTE--CALCULO PROMEDIO DE LA OPERARIA
      quer_form_pago_aprendizaje.Close;        
    End;
  End;
//  QHora_Produccion.Close;
end;

{****************************************************************
Procedimiento   : Mostrar_Curva
Objetivo        : Mostrar curva
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Junio 18 de 2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.Mostrar_Grafica;
Var
	Columna : Integer;
begin
	//Limpiar las series
  Series1.Clear; Series2.Clear; Series3.Clear; Series4.Clear;

  //Recorrer las columnas del grid
  For Columna := 1 To DBResultado.ColCount - 1 Do
  Begin
    Series1.AddXY(Columna, StrToFloat(DBResultado.Cells[Columna, 0]));
    Series2.AddXY(Columna, StrToFloat(DBResultado.Cells[Columna, 0]));
    Series3.AddXY(Columna, StrToFloat(DBResultado.Cells[Columna, 3]));
    Series4.AddXY(Columna, StrToFloat(DBResultado.Cells[Columna, 3]));
  End;
end;

{****************************************************************
Procedimiento   : Mostrar_Curva
Objetivo        : Mostrar curva
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Junio 18 de 2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.Mostrar_Curva;
Var
	Nume_Columnas, Columna, Var_Dia, Var_Dia1, Inc_Dia : Integer;
  Var_ke, var_eficiencia, Var_kb, var_valor, Minimo, Ganado,
  	Ganado_Curva, Bono_Curva, Bono_Hora_Extra, Ajuste_Minimo,
    Eficiencia : Real;
  Fech_Inicial, Fech_Final : TDateTime;
  Dia, Mes, Ano : Word;
  Var_temporal, Var_Dia3 : Integer;
begin
	//Inicializar variables
	Case RGTipo_Consulta.ItemIndex Of
	  0: Nume_Columnas := QPersonal.FieldByName('NUME_SEMANAS').AsInteger;
	  1: Nume_Columnas := QPersonal.FieldByName('NUME_DIAS_SEMANA').AsInteger *
    	QPersonal.FieldByName('NUME_SEMANAS').AsInteger;
  End;

  //Inicializar grid
	DBResultado.Clear;
  DBResultado.ColCount := Nume_Columnas + 1;
  DBResultado.RowCount := 26;
  DBResultado.ColWidths[0] := 200;

  //Asignar títulos
  DBResultado.Cells[0, 0] := 'Eficiencia esperada';
  DBResultado.Cells[0, 1] := 'Bono producción';
	Case RGTipo_Consulta.ItemIndex Of
		0:	DBResultado.Cells[0, 2] := 'Semanas';
		1:	DBResultado.Cells[0, 2] := 'Días';
  End;
  DBResultado.Cells[0, 3] := 'Eficiencia obtenida en curva';
  DBResultado.Cells[0, 4] := 'Horas trabajadas';
  DBResultado.Cells[0, 5] := 'Horas producidas';
  DBResultado.Cells[0, 6] := 'Ganado en curva';
  DBResultado.Cells[0, 7] := 'Bono en curva';
  DBResultado.Cells[0, 8] := 'Mínimo garantizado';
  DBResultado.Cells[0, 9] := 'Ajuste al mínimo';

  DBResultado.Cells[0, 11] := 'Eficiencia obtenida en estandar';
  DBResultado.Cells[0, 12] := 'Horas trabajadas';
  DBResultado.Cells[0, 13] := 'Horas producidas';
  DBResultado.Cells[0, 14] := 'Ganado en producción';
  DBResultado.Cells[0, 15] := 'Bono en producción';
  DBResultado.Cells[0, 16] := 'Mínimo garantizado';
  DBResultado.Cells[0, 17] := 'Ajuste al mínimo';

  DBResultado.Cells[0, 19] := 'Horas extras';
  DBResultado.Cells[0, 20] := 'Bono por horas extras';

  DBResultado.Cells[0, 22] := 'Total horas trabajadas';
  DBResultado.Cells[0, 23] := 'Total horas producidas';
  DBResultado.Cells[0, 24] := 'Eficiencia promedio alcanzada';
  DBResultado.Cells[0, 25] := 'Total devengado';

  //Configuración del período de cálculo (dias-semanas)
  if RGTipo_Consulta.ItemIndex = 1 Then
    Var_Temporal := QPersonal.FieldByName('NUME_DIAS_SEMANA').asInteger
  Else
    Var_Temporal := QPersonal.FieldByName('nume_Semanas').asInteger;

  if (Nume_Columnas > 0) Then
  Begin
    If RGTipo_Consulta.ItemIndex = 1 Then
      var_ke := (QPersonal.FieldByName('EFIC_INICIAL').asFloat - QPersonal.FieldByName('EFIC_PRIM_DIA').asFloat)
       / LN(Var_Temporal)
    Else
      var_ke := (QPersonal.FieldByName('efic_final').asFloat - QPersonal.FieldByName('efic_inicial').asFloat)
       / LN(Var_Temporal);
  End
  Else
    var_ke := 0;
  //Kb
  if (Nume_Columnas > 0) Then
  Begin
    If RGTipo_Consulta.ItemIndex = 1 Then
      var_kb := (QPersonal.FieldByName('VALO_BONO_INICIAL').asFloat - QPersonal.FieldByName('VALO_BONO_PRIM_DIA').asFloat)
       / LN(Var_Temporal)
    Else
      var_kb := (QPersonal.FieldByName('valo_bono_final').asFloat - QPersonal.FieldByName('valo_bono_inicial').asFloat)
       / LN(Var_Temporal);
  End
  Else
    var_kb := 0;
  Var_Dia3 := 1;

	//Inicializar variables
  Inc_Dia := 1;
  //Recorrer las columnas
  For Columna := 1 To Nume_Columnas Do
  Begin
    If RGTipo_Consulta.ItemIndex = 1 Then
    Begin
      If Var_Dia3 <= QPersonal.FieldByName('nume_dias_semana').asInteger Then
        var_eficiencia := var_Ke * LN(Columna) + QPersonal.FieldByName('EFIC_PRIM_DIA').asFloat
      Else
      Begin
        var_Ke := (QPersonal.FieldByName('EFIC_FINAL').asFloat - QPersonal.FieldByName('EFIC_INICIAL').asFloat)
          / LN(QPersonal.FieldByName('NUME_SEMANAS').AsInteger);
        var_eficiencia := var_Ke * LN((Columna / QPersonal.FieldByName('nume_dias_semana').asInteger)) +
          QPersonal.FieldByName('EFIC_INICIAL').asFloat;
      End;
    End
    Else
      var_eficiencia := var_Ke * LN(Columna) + QPersonal.FieldByName('efic_inicial').asFloat;
    if var_eficiencia < 0 Then
    	var_Eficiencia := 0;
    //Valor
    If RGTipo_Consulta.ItemIndex = 1  Then
    Begin
      If Var_Dia3 <= QPersonal.FieldByName('nume_dias_semana').asInteger Then
        var_valor := var_Kb * LN(Columna) + QPersonal.FieldByName('VALO_BONO_PRIM_DIA').asFloat
      Else
      Begin
        var_Kb := (QPersonal.FieldByName('VALO_BONO_FINAL').asFloat - QPersonal.FieldByName('VALO_BONO_INICIAL').asFloat)
          / LN(QPersonal.FieldByName('NUME_SEMANAS').AsInteger);
        var_valor := var_Kb * LN((Columna / QPersonal.FieldByName('nume_dias_semana').asInteger)) +
          QPersonal.FieldByName('VALO_BONO_INICIAL').asFloat;
      End;
    End
    Else
      var_valor := var_Kb * LN(Columna) + QPersonal.FieldByName('valo_bono_inicial').asFloat;
    if var_valor < 0 Then
    	var_valor := 0;

    DBResultado.Cells[Columna, 0] := FormatFloat(',0.00', var_Eficiencia);
    DBResultado.Cells[Columna, 1] := FormatFloat(',0.00', var_valor);

    //Cerrar consulta de horas
    QHoras.Close;
    QHoras.ParamByName('CONS_PERSONAL').AsInteger :=
      QPersonal.FieldByName('CONS_PERSONAL').AsInteger;

    //Calcular la fecha inicial y final
    If RGTipo_Consulta.ItemIndex = 1 Then
    Begin
      If Inc_Dia > 1 Then
	      Fech_Inicial := QPersonal.FieldByName('FECH_INICIAL').AsDateTime + (Columna - 1) + Inc_Dia - 1
			Else
	      Fech_Inicial := QPersonal.FieldByName('FECH_INICIAL').AsDateTime + (Columna - 1);
			If DayOfWeek(Fech_Inicial) = 1 Then
      Begin
        Fech_Inicial := Fech_Inicial + 1;
        Inc_Dia := Inc_Dia + 1;
      End;
      Fech_Final := Fech_Inicial;
    End
    Else
    Begin
			//Inicializar variables
      Fech_Inicial := QPersonal.FieldByName('FECH_INICIAL').AsDateTime + (Columna - Inc_Dia);

      //Si es por semanas
      If Columna > 1 Then
        //Recorrer cantidad de días de la semana
        For Var_Dia := 2 To Columna Do
					For Var_Dia1 := 1 To QPersonal.FieldByName('NUME_DIAS_SEMANA').AsInteger Do
            If DayOfWeek(Fech_Inicial + 1) <> 1 Then
							Fech_Inicial := Fech_Inicial + 1
            Else
							Fech_Inicial := Fech_Inicial + 2;
      Fech_Final := Fech_Inicial;

      //Recorrer cantidad de días de la semana
      For Var_Dia1 := 1 To QPersonal.FieldByName('NUME_DIAS_SEMANA').AsInteger Do
        If DayOfWeek(Fech_Final + 1) <> 1 Then
          Fech_Final := Fech_Final + 1
        Else
          Fech_Final := Fech_Final + 2;
			Fech_Final := Fech_Final - 1;
    End;

    QHoras.ParamByName('FECH_INICIO').AsDateTime := Fech_Inicial;
    QHoras.ParamByName('FECH_FINAL').AsDateTime := Fech_Final;
    AbrirDataSet(QHoras);

    //Horas trabajadas
    DBResultado.Cells[Columna, 4] := FormatFloat(',0.00', QHoras.FieldByName('HORA_TRABAJADA').AsFloat / 60);
    //Horas producidas
    DBResultado.Cells[Columna, 5] := FormatFloat(',0.00', QHoras.FieldByName('HORA_PRODUCIDA').AsFloat / 60);
		//Eficiencia obtenida en curva
    If (QHoras.FieldByName('HORA_TRABAJADA').AsFloat / 60) <> 0 Then
	    DBResultado.Cells[Columna, 3] := FormatFloat(',0.00',
  	  	((QHoras.FieldByName('HORA_PRODUCIDA').AsFloat / 60) /
    	  (QHoras.FieldByName('HORA_TRABAJADA').AsFloat / 60)) * 100)
    Else
	    DBResultado.Cells[Columna, 3] := FormatFloat(',0.00', 0.00);

    //Ganado en curva
    DBResultado.Cells[Columna, 6] := FormatFloat(',0.00', Hora_Produccion(Fech_Final) *
    	(QHoras.FieldByName('HORA_PRODUCIDA').AsFloat / 60));
    Ganado_Curva := Hora_Produccion(Fech_Final) *
    	(QHoras.FieldByName('HORA_PRODUCIDA').AsFloat / 60);

    //Bono en curva
		If QPersonal.FieldByName('ES_PORCENTUAL').AsInteger = 1 Then
    Begin
      If ((DBResultado.Cells[Columna, 6] <> '') And (DBResultado.Cells[Columna, 1] <> '')) Then
      Begin
        DBResultado.Cells[Columna, 7] := FormatFloat(',0.00', StrToFloat(DBResultado.Cells[Columna, 6]) *
          (StrToFloat(DBResultado.Cells[Columna, 1]) / 100));
        Bono_Curva := StrToFloat(DBResultado.Cells[Columna, 6]) *
          (StrToFloat(DBResultado.Cells[Columna, 1]) / 100);
      End
      Else
        DBResultado.Cells[Columna, 7] := FormatFloat(',0.00', 0.00);
    End
    Else
      DBResultado.Cells[Columna, 7] := FormatFloat(',0.00', StrToFloat(DBResultado.Cells[Columna, 1]));

    //Mínimo garantizado
    If DBResultado.Cells[Columna, 4] <> '' Then
    Begin
      QHora_Produccion.Close;
      QHora_Produccion.ParamByName('CONS_PERSONAL').AsInteger :=
        QPersonal.FieldByname('CONS_PERSONAL').AsInteger;
      QHora_Produccion.ParamByName('FECH_FINAL').AsDateTime := Fech_Final;
      AbrirDataSet(QHora_Produccion);

      QTemporal.Close;
      AbrirDataSet(QTemporal);

			Minimo := QTemporal.FieldByname('VALO_HORA_PERSONALIZADO').AsFloat *
        StrToFloat(DBResultado.Cells[Columna, 4]);

      DBResultado.Cells[Columna, 8] := FormatFloat(',0.00',
      	QTemporal.FieldByname('VALO_HORA_PERSONALIZADO').AsFloat *
        StrToFloat(DBResultado.Cells[Columna, 4]));

      QTemporal.Close;  
    End
    Else
    Begin
			DBResultado.Cells[Columna, 8] := FormatFloat(',0.00', 0.00);
      Minimo := 0;
    End;

		//Ajuste al mínimo
    If ((DBResultado.Cells[Columna, 8] <> '') And (DBResultado.Cells[Columna, 6] <> '')) Then
    Begin
      DBResultado.Cells[Columna, 9] := FormatFloat(',0.00',
        Minimo - StrToFloat(DBResultado.Cells[Columna, 6]));
      Ajuste_Minimo := Minimo - StrToFloat(DBResultado.Cells[Columna, 6]);
    End
    Else
			DBResultado.Cells[Columna, 9] := FormatFloat(',0.00', 0.00);

		//Horas trabajadas estandar
    QMinutos_Turno.Close;
    QMinutos_Turno.ParamByName('CONS_TURNO').AsInteger :=
    	QPersonal.FieldByName('CONS_TURNO').AsInteger;
    QMinutos_Turno.ParamByName('FECH_INICIAL').AsDateTime := Fech_Inicial;
    QMinutos_Turno.ParamByName('FECH_FINAL').AsDateTime := Fech_Final;
    AbrirDataSet(QMinutos_Turno);

    DBResultado.Cells[Columna, 12] := FormatFloat(',0.00',
    	(QHoras.FieldByName('MINU_CONTRATADOS').AsFloat - QHoras.FieldByName('HORA_TRABAJADA').AsFloat) / 60);

    //Horas producidas estandar
    DBResultado.Cells[Columna, 13] := FormatFloat(',0.00', QHoras.FieldByName('HORA_PROD_ESTANDAR').AsFloat / 60);

		//Inicializar avriables
    Ganado := 0;

    //Eficiencia obtenida en estandar
    If ((QHoras.FieldByName('MINU_CONTRATADOS').AsFloat  - QHoras.FieldByName('HORA_TRABAJADA').AsFloat) / 60) <> 0 Then
    Begin
      DBResultado.Cells[Columna, 11] := FormatFloat(',0.00', ((QHoras.FieldByName('HORA_PROD_ESTANDAR').AsFloat / 60) /
        ((QHoras.FieldByName('MINU_CONTRATADOS').AsFloat - QHoras.FieldByName('HORA_TRABAJADA').AsFloat) / 60)) * 100);
      Eficiencia := ((QHoras.FieldByName('HORA_PROD_ESTANDAR').AsFloat / 60) /
        ((QHoras.FieldByName('MINU_CONTRATADOS').AsFloat - QHoras.FieldByName('HORA_TRABAJADA').AsFloat) / 60)) * 100;
    End
    Else
    	DBResultado.Cells[Columna, 11] := FormatFloat(',0.00', 0.00);

    //Ganado en estandar
		DBResultado.Cells[Columna, 14] := FormatFloat(',0.00', (QHoras.FieldByName('HORA_PROD_ESTANDAR').AsFloat / 60) *
			Hora_Produccion(Fech_Final));
    Ganado := (QHoras.FieldByName('HORA_PROD_ESTANDAR').AsFloat / 60) *
			Hora_Produccion(Fech_Final);

    //Bono en producción
    QBono.Close;
    QBono.ParamByName('CONS_PERSONAL').AsInteger := QPersonal.FieldbyName('CONS_PERSONAL').AsInteger;
    QBono.ParamByName('FECH_INICIAL').AsDateTime := Fech_Final;
    AbrirDataSet(QBono);
    //Verificar si alcanzo el porcentaje de eficiencia
    If QBono.FieldByName('META_EFICIENCIA').AsFloat <=  Eficiencia Then Begin
      //Si es porcentual
      If QBono.FieldByName('ES_PORCENTUAL').AsInteger = 1 Then
        DBResultado.Cells[Columna, 15] := FormatFloat(',0.00', Ganado *
        	(QBono.FieldByName('VALO_BONIFICACION').AsFloat / 100))
      Else
        DBResultado.Cells[Columna, 15] := FormatFloat(',0.00', QBono.FieldByName('VALO_BONIFICACION').AsFloat);
    End
		Else
  		DBResultado.Cells[Columna, 15] := FormatFloat(',0.00', 0.00);

    //Mínimo garantizado
		DBResultado.Cells[Columna, 16] := FormatFloat(',0.00',
    	((QHoras.FieldByName('MINU_CONTRATADOS').AsFloat - QHoras.FieldByName('HORA_TRABAJADA').AsFloat) / 60) *
      QHora_Produccion.FieldByname('VALO_HORA_MINI_GARANTIZADO').AsFloat);

    //Ajuste al mínimo estandar
		If (((QHoras.FieldByName('MINU_CONTRATADOS').AsFloat - QHoras.FieldByName('HORA_TRABAJADA').AsFloat) / 60) *
      QHora_Produccion.FieldByname('VALO_HORA_MINI_GARANTIZADO').AsFloat) - Ganado > 0 Then
      DBResultado.Cells[Columna, 17] := FormatFloat(',0.00',
        (((QHoras.FieldByName('MINU_CONTRATADOS').AsFloat - QHoras.FieldByName('HORA_TRABAJADA').AsFloat) / 60) *
        QHora_Produccion.FieldByname('VALO_HORA_MINI_GARANTIZADO').AsFloat) - Ganado)
    Else
      DBResultado.Cells[Columna, 17] := FormatFloat(',0.00', 0.00);

		//Horas extras
		If ((StrToFloat(DBResultado.Cells[Columna, 4]) +
    	StrToFloat(DBResultado.Cells[Columna, 12])) - (QMinutos_Turno.FieldByname('MINU_TURNO').AsFloat / 60)) > 0 Then
      DBResultado.Cells[Columna, 19] := FormatFloat(',0.00', (StrToFloat(DBResultado.Cells[Columna, 4]) +
        StrToFloat(DBResultado.Cells[Columna, 12])) - (QMinutos_Turno.FieldByname('MINU_TURNO').AsFloat / 60))
    Else
    	DBResultado.Cells[Columna, 19] := FormatFloat(',0.00', 0.00);

		QHora_Extra.Close;
		Case RGTipo_Consulta.ItemIndex Of
      //Semanal
	    0: QHora_Extra.ParamByName('TIPO').AsInteger := 2;
      //Diario
	    1: QHora_Extra.ParamByName('TIPO').AsInteger := 1;
    End;
    QHora_Extra.ParamByName('CANTIDAD').AsFloat := (StrToFloat(DBResultado.Cells[Columna, 4]) +
    	StrToFloat(DBResultado.Cells[Columna, 12])) - (QMinutos_Turno.FieldByname('MINU_TURNO').AsFloat / 60);
    AbrirDataSet(QHora_Extra);
    
    //Bono por horas extras
		If QHora_Extra.FieldByName('PORCENTAJE').AsFloat > 0 Then
    Begin
      If ((StrToFloat(DBResultado.Cells[Columna, 4]) +
        StrToFloat(DBResultado.Cells[Columna, 12]) - (QMinutos_Turno.FieldByname('MINU_TURNO').AsFloat / 60)) *
        QHora_Produccion.FieldByname('VALO_HORA_MINI_GARANTIZADO').AsFloat *
        (QHora_Extra.FieldByName('PORCENTAJE').AsFloat / 100)) > 0 Then
      Begin
        DBResultado.Cells[Columna, 20] := FormatFloat(',0.00', (StrToFloat(DBResultado.Cells[Columna, 4]) +
          StrToFloat(DBResultado.Cells[Columna, 12]) - (QMinutos_Turno.FieldByname('MINU_TURNO').AsFloat / 60)) *
          QHora_Produccion.FieldByname('VALO_HORA_MINI_GARANTIZADO').AsFloat *
          (QHora_Extra.FieldByName('PORCENTAJE').AsFloat / 100));
        Bono_Hora_Extra := (StrToFloat(DBResultado.Cells[Columna, 4]) +
          StrToFloat(DBResultado.Cells[Columna, 12]) - (QMinutos_Turno.FieldByname('MINU_TURNO').AsFloat / 60)) *
          QHora_Produccion.FieldByname('VALO_HORA_MINI_GARANTIZADO').AsFloat *
          (QHora_Extra.FieldByName('PORCENTAJE').AsFloat / 100);
      End
      Else
        DBResultado.Cells[Columna, 20] := FormatFloat(',0.00', 0.00);
    End
    Else
      If ((StrToFloat(DBResultado.Cells[Columna, 4]) +
        StrToFloat(DBResultado.Cells[Columna, 12]) - (QMinutos_Turno.FieldByname('MINU_TURNO').AsFloat / 60)) *
        QHora_Produccion.FieldByname('VALO_HORA_MINI_GARANTIZADO').AsFloat) > 0 Then
      Begin
        DBResultado.Cells[Columna, 20] := FormatFloat(',0.00', (StrToFloat(DBResultado.Cells[Columna, 4]) +
          StrToFloat(DBResultado.Cells[Columna, 12]) - (QMinutos_Turno.FieldByname('MINU_TURNO').AsFloat / 60)) *
          QHora_Produccion.FieldByname('VALO_HORA_MINI_GARANTIZADO').AsFloat);
        Bono_Hora_Extra := (StrToFloat(DBResultado.Cells[Columna, 4]) +
          StrToFloat(DBResultado.Cells[Columna, 12]) - (QMinutos_Turno.FieldByname('MINU_TURNO').AsFloat / 60)) *
          QHora_Produccion.FieldByname('VALO_HORA_MINI_GARANTIZADO').AsFloat;
      End
      Else
        DBResultado.Cells[Columna, 20] := FormatFloat(',0.00', 0.00);
    QHora_Extra.Close;

    //Total horas trabajadas
		DBResultado.Cells[Columna, 22] := FormatFloat(',0.00', StrToFloat(DBResultado.Cells[Columna, 4]) +
    	StrToFloat(DBResultado.Cells[Columna, 12]));

    //Total horas producidas
		DBResultado.Cells[Columna, 23] := FormatFloat(',0.00', StrToFloat(DBResultado.Cells[Columna, 5]) +
    	StrToFloat(DBResultado.Cells[Columna, 13]));

    //Eficiencia promedio alcanzada
    If (StrToFloat(DBResultado.Cells[Columna, 4]) +
    	StrToFloat(DBResultado.Cells[Columna, 12])) <> 0 Then
		Begin
      If (((StrToFloat(DBResultado.Cells[Columna, 5]) +
        StrToFloat(DBResultado.Cells[Columna, 13])) /
          (StrToFloat(DBResultado.Cells[Columna, 4]) +
        StrToFloat(DBResultado.Cells[Columna, 12]))) * 100) > 0 Then
        DBResultado.Cells[Columna, 24] := FormatFloat(',0.00', ((StrToFloat(DBResultado.Cells[Columna, 5]) +
        StrToFloat(DBResultado.Cells[Columna, 13])) /
          (StrToFloat(DBResultado.Cells[Columna, 4]) +
        StrToFloat(DBResultado.Cells[Columna, 12]))) * 100)
      Else
	    	DBResultado.Cells[Columna, 24] := FormatFloat(',0.00', 0.00);
    End
    Else
    	DBResultado.Cells[Columna, 24] := FormatFloat(',0.00', 0.00);

    //Total devengado
		DBResultado.Cells[Columna, 25] := FormatFloat(',0.00', Ganado + Ganado_Curva + Bono_Curva +
     Bono_Hora_Extra + Ajuste_Minimo);

    QHoras.Close;
    QHora_Produccion.Close;
    QMinutos_Turno.Close;

    //Asignar el número de la semana o del día
    Case RGTipo_Consulta.ItemIndex Of
	    0: DBResultado.Cells[Columna, 2] := IntToStr(Columna);
	    1:Begin
        DecodeDate(Fech_Inicial, Ano, Mes, Dia);
				Case DayOfWeek(Fech_Inicial) Of
					2: DBResultado.Cells[Columna, 2] := 'Lun ' + IntToStr(Dia);
					3: DBResultado.Cells[Columna, 2] := 'Mar ' + IntToStr(Dia);
					4: DBResultado.Cells[Columna, 2] := 'Mie ' + IntToStr(Dia);
					5: DBResultado.Cells[Columna, 2] := 'Jue ' + IntToStr(Dia);
					6: DBResultado.Cells[Columna, 2] := 'Vie ' + IntToStr(Dia);
					7: DBResultado.Cells[Columna, 2] := 'Sab ' + IntToStr(Dia);
        End;
      End;
    End;
    //Color de las celdas d días o semanas
		DBResultado.Colors[Columna, 2] := $00FFEAEA;
    Inc(Var_Dia3);
  End;

  //Mostrar gráfica
  Mostrar_Grafica;
end;

{****************************************************************
Procedimiento   : Acti_SalirExecute
Objetivo        : Cerrar la ventana
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Junio 18 de 2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.Acti_SalirExecute(Sender: TObject);
begin
  //Cerrar la ventana
	Close;
end;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Liberar memoria
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Junio 18 de 2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	//Liberar memoria
  Release;
end;

{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Maximizar la ventana
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Junio 18 de 2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.FormActivate(Sender: TObject);
begin
	//Maximizar la ventana
  WindowState := wsMaximized;
end;

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir consultas
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Junio 18 de 2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.FormCreate(Sender: TObject);
begin
	//Abrir consultas
  AbrirDataSet(QPersonal);
  AbrirDataSet(QSemana);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : CBCodigo_PersonalChange
Objetivo        : Asignar el mismo valor a los combos de personal
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Junio 18 de 2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.CBCodigo_PersonalChange(Sender: TObject);
begin
	//Verificar que el componente sea un TPCPLookUpComboEdit
  If (Sender Is TPCPLookUpComboEdit) Then
  Begin
    //Si es el código del personal
  	If (Sender As TPCPLookUpComboEdit).Name = 'CBCodigo_Personal' Then
      CBPersonal.KeyValue := CBCodigo_Personal.KeyValue
    //Si es el nombre del personal
  	Else If (Sender As TPCPLookUpComboEdit).Name = 'CBPersonal' Then
      CBCodigo_Personal.KeyValue := CBPersonal.KeyValue;

    //Habilitar / deshabilitar datos
		If (Sender As TPCPLookUpComboEdit).Text = '' Then
    Begin
      DBPlanta.DataField := '';
      DBSeccion.DataField := '';
      DBCodigo_Curva.DataField := '';
      DBCurva.DataField := '';
      DBCodigo_Operacion.DataField := '';
      DBOperacion.DataField := '';
      DBSemana.DataField := '';
      DBEficiencia.DataField := '';
    End
    Else
    Begin
      DBPlanta.DataField := 'NOMB_PLANTA';
      DBSeccion.DataField := 'NOMB_SECCION';
      DBCodigo_Curva.DataField := 'CODI_FORM_PAGO_APRENDIZAJE';
      DBCurva.DataField := 'NOMB_FORM_PAGO_APRENDIZAJE';
      DBCodigo_Operacion.DataField := 'CODI_OPER_COSTURA';
      DBOperacion.DataField := 'NOMB_OPER_COSTURA';
      DBSemana.DataField := 'SEMANA';
      DBEficiencia.DataField := 'EFIC_INIC_APRENDIZAJE';
    End;
	End;

  //Mostrar curva
  Mostrar_Curva;
end;

{****************************************************************
Procedimiento   : Acti_ActualizarExecute
Objetivo        : Refrescar consultas
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Junio 18 de 2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.Acti_ActualizarExecute(Sender: TObject);
begin
	//Refrescar consultas
  RefreshDataSet(QPersonal);
  RefreshDataSet(QSemana);

  //Mostrar resultados
  Mostrar_Curva;
end;

{****************************************************************
Procedimiento   : RGTipo_ConsultaChange
Objetivo        : Mostrar curva
Realizado por   : Gustavo Muñoz (DESARROLLADOR)
Fecha           : Junio 18 de 2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.RGTipo_ConsultaChange(Sender: TObject);
begin
	//Mostrar curva
  Mostrar_Curva;
end;
{****************************************************************
Procedimiento   : pageChange
Objetivo        : Actualizar los controles al cambiar la página activa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.pageChange(Sender: TObject);
begin
        //Reubicar los controles
        If Page.ActivePage = page_Todo Then
        Begin
            DBGrafico.Parent := pane_Top;
            DBResultado.Parent := pane_all;
        End
        Else
        If Page.ActivePage = page_Grafica Then
            DBGrafico.Parent := page_grafica
        Else
        If Page.ActivePage = page_datos Then
            DBResultado.Parent := page_datos;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar la ventana al mostrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_prod_curv_apre_operario.FormShow(Sender: TObject);
begin
     //Actualizar la vista de la página
     pageChange(Sender);
end;

end.

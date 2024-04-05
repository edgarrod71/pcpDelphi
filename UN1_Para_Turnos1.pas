{ 17/03/2004 02:25:02 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:42 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:40:25 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:54 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Turnos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, SCLDBLabel, DBTables, DBCtrls, dxExEdtr, SoCtrls,
  PictureContainer, AdvPanel, SohoBtns, SCLButton, RxLookup,
  PCPLookUpComboEdit, JvExExtCtrls, JvComponent, JvDBRadioPanel,
  SCLShape, Boxes, PCPProceso;

type
  TFN1_Para_Turnos1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    RGTipo: TJvDBRadioPanel;
    SCLDBLabel15: TSCLDBLabel;
    DBDescripcion: TdxDBEdit;
    LLunes: TSCLDBLabel;
    Label1: TLabel;
    Label2: TLabel;
    T1: TdxDBTimeEdit;
    T2: TdxDBTimeEdit;
    LMartes: TSCLDBLabel;
    T5: TdxDBTimeEdit;
    T6: TdxDBTimeEdit;
    LMiercoles: TSCLDBLabel;
    T9: TdxDBTimeEdit;
    T10: TdxDBTimeEdit;
    LJueves: TSCLDBLabel;
    T13: TdxDBTimeEdit;
    T14: TdxDBTimeEdit;
    LViernes: TSCLDBLabel;
    T17: TdxDBTimeEdit;
    T18: TdxDBTimeEdit;
    LSabado: TSCLDBLabel;
    T21: TdxDBTimeEdit;
    T22: TdxDBTimeEdit;
    LDomingo: TSCLDBLabel;
    T25: TdxDBTimeEdit;
    T26: TdxDBTimeEdit;
    Label3: TLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    T3: TdxDBTimeEdit;
    T4: TdxDBTimeEdit;
    T7: TdxDBTimeEdit;
    T8: TdxDBTimeEdit;
    T11: TdxDBTimeEdit;
    T12: TdxDBTimeEdit;
    T15: TdxDBTimeEdit;
    T16: TdxDBTimeEdit;
    T19: TdxDBTimeEdit;
    T120: TdxDBTimeEdit;
    T23: TdxDBTimeEdit;
    T24: TdxDBTimeEdit;
    T27: TdxDBTimeEdit;
    T28: TdxDBTimeEdit;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TSCLShape;
    Bevel3: TSCLShape;
    Bevel4: TSCLShape;
    Tabla_VentanaCONS_TURNO: TIntegerField;
    Tabla_VentanaCODI_TURNO: TStringField;
    Tabla_VentanaTIPO_TURNO: TIntegerField;
    Tabla_VentanaDESCRIPCION: TStringField;
    Tabla_VentanaLUNE_DESD_1: TDateTimeField;
    Tabla_VentanaLUNE_HAST_1: TDateTimeField;
    Tabla_VentanaLUNE_DESD_2: TDateTimeField;
    Tabla_VentanaLUNE_HAST_2: TDateTimeField;
    Tabla_VentanaLUNE_MINUTOS: TIntegerField;
    Tabla_VentanaMART_DESD_1: TDateTimeField;
    Tabla_VentanaMART_HAST_1: TDateTimeField;
    Tabla_VentanaMART_DESD_2: TDateTimeField;
    Tabla_VentanaMART_HAST_2: TDateTimeField;
    Tabla_VentanaMART_MINUTOS: TIntegerField;
    Tabla_VentanaMIER_DESD_1: TDateTimeField;
    Tabla_VentanaMIER_HAST_1: TDateTimeField;
    Tabla_VentanaMIER_DESD_2: TDateTimeField;
    Tabla_VentanaMIER_HAST_2: TDateTimeField;
    Tabla_VentanaMIER_MINUTOS: TIntegerField;
    Tabla_VentanaJUEV_DESD_1: TDateTimeField;
    Tabla_VentanaJUEV_HAST_1: TDateTimeField;
    Tabla_VentanaJUEV_DESD_2: TDateTimeField;
    Tabla_VentanaJUEV_HAST_2: TDateTimeField;
    Tabla_VentanaJUEV_MINUTOS: TIntegerField;
    Tabla_VentanaVIER_DESD_1: TDateTimeField;
    Tabla_VentanaVIER_HAST_1: TDateTimeField;
    Tabla_VentanaVIER_DESD_2: TDateTimeField;
    Tabla_VentanaVIER_HAST_2: TDateTimeField;
    Tabla_VentanaVIER_MINUTOS: TIntegerField;
    Tabla_VentanaSABA_DESD_1: TDateTimeField;
    Tabla_VentanaSABA_HAST_1: TDateTimeField;
    Tabla_VentanaSABA_DESD_2: TDateTimeField;
    Tabla_VentanaSABA_HAST_2: TDateTimeField;
    Tabla_VentanaSABA_MINUTOS: TIntegerField;
    Tabla_VentanaDOMI_DESD_1: TDateTimeField;
    Tabla_VentanaDOMI_HAST_1: TDateTimeField;
    Tabla_VentanaDOMI_HAST_2: TDateTimeField;
    Tabla_VentanaDOMI_MINUTOS: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Copiar1: TImage;
    Copiar2: TImage;
    Copiar3: TImage;
    Copiar4: TImage;
    Copiar5: TImage;
    Copiar6: TImage;
    Copiar7: TImage;
    Tabla_VentanaDOMI_DESD_2: TDateTimeField;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    DBPrimer_Descanso: TdxDBEdit;
    DBSegundo_Descanso: TdxDBEdit;
    Tabla_VentanaPRIM_DESCANSO: TIntegerField;
    Tabla_VentanaSEGU_DESCANSO: TIntegerField;
    Label8: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    Bevel6: TSCLShape;
    Tabla_VentanaLUNE_DISPONIBLE: TIntegerField;
    Tabla_VentanaMART_DISPONIBLE: TIntegerField;
    Tabla_VentanaMIER_DISPONIBLE: TIntegerField;
    Tabla_VentanaJUEV_DISPONIBLE: TIntegerField;
    Tabla_VentanaVIER_DISPONIBLE: TIntegerField;
    Tabla_VentanaSABA_DISPONIBLE: TIntegerField;
    Tabla_VentanaDOMI_DISPONIBLE: TIntegerField;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    Tabla_VentanaTOTA_CONTRATADOS: TIntegerField;
    Tabla_VentanaTOTA_DISPONIBLES: TIntegerField;
    Bevel7: TSCLShape;
    Label9: TLabel;
    SCLShape1: TSCLShape;
    Bevel5: TSCLShape;
    SCLShape2: TSCLShape;
    procedure Habilitar_Copia(Copia : Integer);
    procedure Copiar_Dia(Dia : Integer);
    procedure Campos_Copia(Desde1, Copia_Desde1,
    	Desde2, Copia_Desde2,
      Hasta1, Copia_Hasta1,
      Hasta2, Copia_Hasta2 : String);
    function Dia_Copia:Integer;
    procedure Calcular_Minutos;
    procedure LLunesClick(Sender: TObject);
    procedure T1Exit(Sender: TObject);
    procedure Tabla_VentanaCalcFields(DataSet: TDataSet);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Turnos1: TFN1_Para_Turnos1;

implementation

uses MensajesSCL, _cons_pcp, _vari_pcp, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : Calcular_Minutos
Objetivo        : Calcula los minutos por día. Este calculo es temporal
									por los campos de total de minutos los calcula el
                  motor de base de datos.
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 27 de abril de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Turnos1.Calcular_Minutos;
Var
	var_Minutos : Double;
    var_i   : Integer;
    var_minu_aux  : Double;
    var_manana  : Double;
    var_noche   : Double;
Const
    var_dias    : Array[1..7] of String =
            ('LUNE_', 'MART_', 'MIER_', 'JUEV_',
            'VIER_', 'SABA_', 'DOMI_');
begin
	If Not (Tabla_Ventana.State In [dsEdit, dsInsert]) Then
  	Exit;
    //Calculo de los minutos diarios
    For var_i := 1 to 7 do
    Begin
      //Inicializar
      var_Minutos := 0;
      //Primera jornada
      If ((Tabla_Ventana.FieldByName(var_dias[var_i]+'DESD_1').AsString <> '') And
            (Tabla_Ventana.FieldByName(var_dias[var_i]+'HAST_1').AsString <> '')) Then
      Begin
                var_minu_aux := ((Tabla_Ventana.FieldByName(var_dias[var_i]+'HAST_1').AsDateTime
                - Tabla_Ventana.FieldByName(var_dias[var_i]+'DESD_1').AsDateTime) * 1440);
                //RC19 - Turnos de la noche
                if (var_minu_aux < 0) Then
                Begin
                      //Restar 24 (1440 minutos) a la hora inicial (en la noche)
                      var_noche :=  1440 -  (Tabla_Ventana.FieldByName(var_dias[var_i]+'DESD_1').AsDateTime * 1440);
                     //Minutos adicionales en la mañana
                      var_manana := Tabla_Ventana.FieldByName(var_dias[var_i]+'HAST_1').AsDateTime * 1440;
                     //Totalizar
                     var_minu_aux := var_noche + var_manana;
                End;
                var_minutos := var_minutos + var_minu_aux; 
                //No es necesario sumar var_minutos, pero se deja para que quede igual a la formula de la
                //segunda jornada
     End;
      //Segunda jornada
      If ((Tabla_Ventana.FieldByName(var_dias[var_i]+'DESD_2').AsString <> '') And
            (Tabla_Ventana.FieldByName(var_dias[var_i]+'HAST_2').AsString <> '')) Then
      Begin
                var_minu_aux := ((Tabla_Ventana.FieldByName(var_dias[var_i]+'HAST_2').AsDateTime
                - Tabla_Ventana.FieldByName(var_dias[var_i]+'DESD_2').AsDateTime) * 1440);
                //RC19 - Turnos de la noche
                if (var_minu_aux < 0) Then
                Begin
                      //Restar 24 (1440 minutos) a la hora inicial (en la noche)
                      var_noche :=  1440 -  (Tabla_Ventana.FieldByName(var_dias[var_i]+'DESD_2').AsDateTime * 1440);
                     //Minutos adicionales en la mañana
                      var_manana := Tabla_Ventana.FieldByName(var_dias[var_i]+'HAST_2').AsDateTime * 1440;
                     //Totalizar
                     var_minu_aux := var_noche + var_manana;
                End;
                var_minutos := var_minutos + var_minu_aux; 
      End;
      //Asignación
      Tabla_Ventana.FieldByName(var_dias[var_i]+'MINUTOS').Value := var_Minutos;
    End;
end;

{****************************************************************
Procedimiento   : Habilitar_Copia
Objetivo        : Muestra y oculta las imagenes de copia
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 27 de abril de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Turnos1.Habilitar_Copia(Copia : Integer);
begin
  Copiar1.Visible := False;
  Copiar2.Visible := False;
  Copiar3.Visible := False;
  Copiar4.Visible := False;
  Copiar5.Visible := False;
  Copiar6.Visible := False;
  Copiar7.Visible := False;
  Case Copia Of
		1: Copiar1.Visible := True;
		2: Copiar2.Visible := True;
		3: Copiar3.Visible := True;
		4: Copiar4.Visible := True;
		5: Copiar5.Visible := True;
		6: Copiar6.Visible := True;
		7: Copiar7.Visible := True;
  End;
end;

{****************************************************************
Procedimiento   : Dia_Copia
Objetivo        : Buscar día a copiar
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 27 de abril de 2004
Versión         : pcp4000
*****************************************************************}
function TFN1_Para_Turnos1.Dia_Copia:Integer;
begin
	Result := 0;
	If Copiar1.Visible Then
  	Result := 1
  Else If Copiar2.Visible Then
  	Result := 2
  Else If Copiar3.Visible Then
  	Result := 3
  Else If Copiar4.Visible Then
  	Result := 4
  Else If Copiar5.Visible Then
  	Result := 5
  Else If Copiar6.Visible Then
  	Result := 6
  Else If Copiar7.Visible Then
  	Result := 7;
end;

{****************************************************************
Procedimiento   : Campos_Copia
Objetivo        : Copia las horas de un día
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 27 de abril de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Turnos1.Campos_Copia(Desde1, Copia_Desde1,
    	Desde2, Copia_Desde2,
      Hasta1, Copia_Hasta1,
      Hasta2, Copia_Hasta2 : String);
begin
	If Not (Tabla_Ventana.State In [dsEdit, dsInsert]) Then
  	Tabla_Ventana.Edit;
  Tabla_Ventana.FieldByName(Desde1).Value :=
  	Tabla_Ventana.FieldByName(Copia_Desde1).Value;
  Tabla_Ventana.FieldByName(Desde2).Value :=
  	Tabla_Ventana.FieldByName(Copia_Desde2).Value;
  Tabla_Ventana.FieldByName(Hasta1).Value :=
  	Tabla_Ventana.FieldByName(Copia_Hasta1).Value;
  Tabla_Ventana.FieldByName(Hasta2).Value :=
  	Tabla_Ventana.FieldByName(Copia_Hasta2).Value;
  Calcular_Minutos;
end;

{****************************************************************
Procedimiento   : Copiar_Dia
Objetivo        : Busca el día en que se debe hacer la copia
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 27 de abril de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Turnos1.Copiar_Dia(Dia : Integer);
Var
	Desde1, Desde1_Copia,
	Desde2, Desde2_Copia,
  Hasta1, Hasta1_Copia,
  Hasta2, Hasta2_Copia : String;
begin
  //Si no hay ningún día para copiar muestro la imagen
  If Dia_Copia = 0 Then
  Begin
  	Habilitar_Copia(Dia);
    Exit;
  End;
	//Día de la semana a donde se copiará
	Case Dia Of
		1:Begin
      //Si le dio clic en el mismo día de copia oculta la imagen
      If Copiar1.Visible Then
      Begin
        Habilitar_Copia(0);
        Exit;
      End;
			//Campos a donde se copiará
			Desde1 := 'LUNE_DESD_1'; Desde2 := 'LUNE_DESD_2';
			Hasta1 := 'LUNE_HAST_1'; Hasta2 := 'LUNE_HAST_2';
    End;
		2:Begin
      //Si le dio clic en el mismo día de copia oculta la imagen
      If Copiar2.Visible Then
      Begin
        Habilitar_Copia(0);
        Exit;
      End;
			//Campos a donde se copiará
			Desde1 := 'MART_DESD_1'; Desde2 := 'MART_DESD_2';
			Hasta1 := 'MART_HAST_1'; Hasta2 := 'MART_HAST_2';
    End;
		3:Begin
      //Si le dio clic en el mismo día de copia oculta la imagen
      If Copiar3.Visible Then
      Begin
        Habilitar_Copia(0);
        Exit;
      End;
			//Campos a donde se copiará
			Desde1 := 'MIER_DESD_1'; Desde2 := 'MIER_DESD_2';
			Hasta1 := 'MIER_HAST_1'; Hasta2 := 'MIER_HAST_2';
    End;
		4:Begin
      //Si le dio clic en el mismo día de copia oculta la imagen
      If Copiar4.Visible Then
      Begin
        Habilitar_Copia(0);
        Exit;
      End;
			//Campos a donde se copiará
			Desde1 := 'JUEV_DESD_1'; Desde2 := 'JUEV_DESD_2';
			Hasta1 := 'JUEV_HAST_1'; Hasta2 := 'JUEV_HAST_2';
    End;
		5:Begin
      //Si le dio clic en el mismo día de copia oculta la imagen
      If Copiar5.Visible Then
      Begin
        Habilitar_Copia(0);
        Exit;
      End;
			//Campos a donde se copiará
			Desde1 := 'VIER_DESD_1'; Desde2 := 'VIER_DESD_2';
			Hasta1 := 'VIER_HAST_1'; Hasta2 := 'VIER_HAST_2';
    End;
		6:Begin
      //Si le dio clic en el mismo día de copia oculta la imagen
      If Copiar6.Visible Then
      Begin
        Habilitar_Copia(0);
        Exit;
      End;
			//Campos a donde se copiará
			Desde1 := 'SABA_DESD_1'; Desde2 := 'SABA_DESD_2';
			Hasta1 := 'SABA_HAST_1'; Hasta2 := 'SABA_HAST_2';
    End;
		7:Begin
      //Si le dio clic en el mismo día de copia oculta la imagen
      If Copiar7.Visible Then
      Begin
        Habilitar_Copia(0);
        Exit;
      End;
			//Campos a donde se copiará
			Desde1 := 'DOMI_DESD_1'; Desde2 := 'DOMI_DESD_2';
			Hasta1 := 'DOMI_HAST_1'; Hasta2 := 'DOMI_HAST_2';
    End;
  End;
  //Día de la semana de donde se copiará
  Case Dia_Copia Of
		1:Begin
			//Campos de donde se copiará
			Desde1_Copia := 'LUNE_DESD_1'; Desde2_Copia := 'LUNE_DESD_2';
			Hasta1_Copia := 'LUNE_HAST_1'; Hasta2_Copia := 'LUNE_HAST_2';
    End;
		2:Begin
			//Campos de donde se copiará
			Desde1_Copia := 'MART_DESD_1'; Desde2_Copia := 'MART_DESD_2';
			Hasta1_Copia := 'MART_HAST_1'; Hasta2_Copia := 'MART_HAST_2';
    End;
		3:Begin
			//Campos de donde se copiará
			Desde1_Copia := 'MIER_DESD_1'; Desde2_Copia := 'MIER_DESD_2';
			Hasta1_Copia := 'MIER_HAST_1'; Hasta2_Copia := 'MIER_HAST_2';
    End;
		4:Begin
			//Campos de donde se copiará
			Desde1_Copia := 'JUEV_DESD_1'; Desde2_Copia := 'JUEV_DESD_2';
			Hasta1_Copia := 'JUEV_HAST_1'; Hasta2_Copia := 'JUEV_HAST_2';
    End;
		5:Begin
			//Campos de donde se copiará
			Desde1_Copia := 'VIER_DESD_1'; Desde2_Copia := 'VIER_DESD_2';
			Hasta1_Copia := 'VIER_HAST_1'; Hasta2_Copia := 'VIER_HAST_2';
    End;
		6:Begin
			//Campos de donde se copiará
			Desde1_Copia := 'SABA_DESD_1'; Desde2_Copia := 'SABA_DESD_2';
			Hasta1_Copia := 'SABA_HAST_1'; Hasta2_Copia := 'SABA_HAST_2';
    End;
		7:Begin
			//Campos de donde se copiará
			Desde1_Copia := 'DOMI_DESD_1'; Desde2_Copia := 'DOMI_DESD_2';
			Hasta1_Copia := 'DOMI_HAST_1'; Hasta2_Copia := 'DOMI_HAST_2';
    End;
  End;
  Campos_Copia(Desde1, Desde1_Copia, Desde2, Desde2_Copia,
  	Hasta1, Hasta1_Copia, Hasta2, Hasta2_Copia);
  Habilitar_Copia(Dia);  
end;

{****************************************************************
Procedimiento   : LLunesClick
Objetivo        : Este procedumientos es de los labels
									de los días y verifica si es para copiar
                  o para habilitar la copia
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 24 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Turnos1.LLunesClick(Sender: TObject);
begin
  inherited;
  Copiar_Dia((Sender as TSCLDBLabel).Tag);
end;

{****************************************************************
Procedimiento   : T1Exit
Objetivo        : Este procedumientos es de los DBEdits de hora
									de los días y calcula el total de minutos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 5 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Turnos1.T1Exit(Sender: TObject);
begin
  inherited;
	Calcular_Minutos;
end;

procedure TFN1_Para_Turnos1.Tabla_VentanaCalcFields(DataSet: TDataSet);
begin
  inherited;
	//Minutos disponibles para el Lunes
  If Tabla_Ventana.FieldByName('LUNE_MINUTOS').AsInteger > 0 Then
    Tabla_Ventana.FieldByName('LUNE_DISPONIBLE').AsInteger :=
      Tabla_Ventana.FieldByName('LUNE_MINUTOS').AsInteger -
      Tabla_Ventana.FieldByName('PRIM_DESCANSO').AsInteger -
      Tabla_Ventana.FieldByName('SEGU_DESCANSO').AsInteger
  Else
  	Tabla_Ventana.FieldByName('LUNE_DISPONIBLE').AsInteger := 0;
	//Minutos disponibles para el Martes
  If Tabla_Ventana.FieldByName('MART_MINUTOS').AsInteger > 0 Then
    Tabla_Ventana.FieldByName('MART_DISPONIBLE').AsInteger :=
      Tabla_Ventana.FieldByName('MART_MINUTOS').AsInteger -
      Tabla_Ventana.FieldByName('PRIM_DESCANSO').AsInteger -
      Tabla_Ventana.FieldByName('SEGU_DESCANSO').AsInteger
  Else
  	Tabla_Ventana.FieldByName('MART_DISPONIBLE').AsInteger := 0;
	//Minutos disponibles para el Miercoles
  If Tabla_Ventana.FieldByName('MIER_MINUTOS').AsInteger > 0 Then
    Tabla_Ventana.FieldByName('MIER_DISPONIBLE').AsInteger :=
      Tabla_Ventana.FieldByName('MIER_MINUTOS').AsInteger -
      Tabla_Ventana.FieldByName('PRIM_DESCANSO').AsInteger -
      Tabla_Ventana.FieldByName('SEGU_DESCANSO').AsInteger
  Else
  	Tabla_Ventana.FieldByName('MIER_DISPONIBLE').AsInteger := 0;
	//Minutos disponibles para el Jueves
  If Tabla_Ventana.FieldByName('JUEV_MINUTOS').AsInteger > 0 Then
    Tabla_Ventana.FieldByName('JUEV_DISPONIBLE').AsInteger :=
      Tabla_Ventana.FieldByName('JUEV_MINUTOS').AsInteger -
      Tabla_Ventana.FieldByName('PRIM_DESCANSO').AsInteger -
      Tabla_Ventana.FieldByName('SEGU_DESCANSO').AsInteger
  Else
  	Tabla_Ventana.FieldByName('JUEV_DISPONIBLE').AsInteger := 0;
	//Minutos disponibles para el Viernes
  If Tabla_Ventana.FieldByName('VIER_MINUTOS').AsInteger > 0 Then
    Tabla_Ventana.FieldByName('VIER_DISPONIBLE').AsInteger :=
      Tabla_Ventana.FieldByName('VIER_MINUTOS').AsInteger -
      Tabla_Ventana.FieldByName('PRIM_DESCANSO').AsInteger -
      Tabla_Ventana.FieldByName('SEGU_DESCANSO').AsInteger
  Else
  	Tabla_Ventana.FieldByName('VIER_DISPONIBLE').AsInteger := 0;
	//Minutos disponibles para el Sábado
  If Tabla_Ventana.FieldByName('SABA_MINUTOS').AsInteger > 0 Then
    Tabla_Ventana.FieldByName('SABA_DISPONIBLE').AsInteger :=
      Tabla_Ventana.FieldByName('SABA_MINUTOS').AsInteger -
      Tabla_Ventana.FieldByName('PRIM_DESCANSO').AsInteger -
      Tabla_Ventana.FieldByName('SEGU_DESCANSO').AsInteger
  Else
  	Tabla_Ventana.FieldByName('SABA_DISPONIBLE').AsInteger := 0;
	//Minutos disponibles para el Domingo
  If Tabla_Ventana.FieldByName('DOMI_MINUTOS').AsInteger > 0 Then
    Tabla_Ventana.FieldByName('DOMI_DISPONIBLE').AsInteger :=
      Tabla_Ventana.FieldByName('DOMI_MINUTOS').AsInteger -
      Tabla_Ventana.FieldByName('PRIM_DESCANSO').AsInteger -
      Tabla_Ventana.FieldByName('SEGU_DESCANSO').AsInteger
  Else
  	Tabla_Ventana.FieldByName('DOMI_DISPONIBLE').AsInteger := 0;
  Tabla_Ventana.FieldByName('TOTA_CONTRATADOS').AsInteger :=
  	Tabla_Ventana.FieldByName('LUNE_MINUTOS').AsInteger +
  	Tabla_Ventana.FieldByName('MART_MINUTOS').AsInteger +
  	Tabla_Ventana.FieldByName('MIER_MINUTOS').AsInteger +
  	Tabla_Ventana.FieldByName('JUEV_MINUTOS').AsInteger +
  	Tabla_Ventana.FieldByName('VIER_MINUTOS').AsInteger +
  	Tabla_Ventana.FieldByName('SABA_MINUTOS').AsInteger +
  	Tabla_Ventana.FieldByName('DOMI_MINUTOS').AsInteger;

  Tabla_Ventana.FieldByName('TOTA_DISPONIBLES').AsInteger :=
  	Tabla_Ventana.FieldByName('LUNE_DISPONIBLE').AsInteger +
  	Tabla_Ventana.FieldByName('MART_DISPONIBLE').AsInteger +
  	Tabla_Ventana.FieldByName('MIER_DISPONIBLE').AsInteger +
  	Tabla_Ventana.FieldByName('JUEV_DISPONIBLE').AsInteger +
  	Tabla_Ventana.FieldByName('VIER_DISPONIBLE').AsInteger +
  	Tabla_Ventana.FieldByName('SABA_DISPONIBLE').AsInteger +
  	Tabla_Ventana.FieldByName('DOMI_DISPONIBLE').AsInteger;
end;

procedure TFN1_Para_Turnos1.Tabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
	If Tabla_Ventana.FieldByName('PRIM_DESCANSO').AsString = '' Then
  	Tabla_Ventana.FieldByName('PRIM_DESCANSO').AsInteger := 0;
	If Tabla_Ventana.FieldByName('SEGU_DESCANSO').AsString = '' Then
  	Tabla_Ventana.FieldByName('SEGU_DESCANSO').AsInteger := 0;
end;

procedure TFN1_Para_Turnos1.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

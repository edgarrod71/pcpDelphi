{ 05/03/2004 10:40:26 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:56 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Turnos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, SCLPropiedadesForm, Db, DBTables, ImgList, Menus, TB2Item,
  TBX, ActnList, ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock,
  TBXDkPanels, dxCntner, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  dxPageControl, dxExEdtr, dfsSplitter, JvExControls,
  JvComponent, JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid,
  ufra_edit_reportes, Boxes, PCPFrame;

type
  TFN1_Para_Turnos = class(T_fvent_child)
    consultaCONS_TURNO: TIntegerField;
    consultaCODI_TURNO: TStringField;
    consultaDESCRIPCION: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaTIPO: TStringField;
    consultaLUNES: TStringField;
    consultaMARTES: TStringField;
    consultaMIERCOLES: TStringField;
    consultaJUEVES: TStringField;
    consultaVIERNES: TStringField;
    consultaSABADO: TStringField;
    consultaDOMINGO: TStringField;
    consultaCONTRATADOS: TIntegerField;
    consultaDISPONIBLES: TIntegerField;
    padr_gridCONS_TURNO: TdxDBGridMaskColumn;
    padr_gridCODI_TURNO: TdxDBGridMaskColumn;
    padr_gridTIPO: TdxDBGridMaskColumn;
    padr_gridDESCRIPCION: TdxDBGridMaskColumn;
    padr_gridLUNES: TdxDBGridColumn;
    padr_gridMARTES: TdxDBGridColumn;
    padr_gridMIERCOLES: TdxDBGridColumn;
    padr_gridJUEVES: TdxDBGridColumn;
    padr_gridVIERNES: TdxDBGridColumn;
    padr_gridSABADO: TdxDBGridColumn;
    padr_gridDOMINGO: TdxDBGridColumn;
    padr_gridCONTRATADOS: TdxDBGridColumn;
    padr_gridDISPONIBLES: TdxDBGridColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    consultaTIPO_TURNO: TIntegerField;
    consultaLUNE_DESD_1: TDateTimeField;
    consultaLUNE_HAST_1: TDateTimeField;
    consultaLUNE_DESD_2: TDateTimeField;
    consultaLUNE_HAST_2: TDateTimeField;
    consultaLUNE_MINUTOS: TIntegerField;
    consultaMART_DESD_1: TDateTimeField;
    consultaMART_HAST_1: TDateTimeField;
    consultaMART_DESD_2: TDateTimeField;
    consultaMART_HAST_2: TDateTimeField;
    consultaMART_MINUTOS: TIntegerField;
    consultaMIER_DESD_1: TDateTimeField;
    consultaMIER_HAST_1: TDateTimeField;
    consultaMIER_DESD_2: TDateTimeField;
    consultaMIER_HAST_2: TDateTimeField;
    consultaMIER_MINUTOS: TIntegerField;
    consultaJUEV_DESD_1: TDateTimeField;
    consultaJUEV_HAST_1: TDateTimeField;
    consultaJUEV_DESD_2: TDateTimeField;
    consultaJUEV_HAST_2: TDateTimeField;
    consultaJUEV_MINUTOS: TIntegerField;
    consultaVIER_DESD_1: TDateTimeField;
    consultaVIER_HAST_1: TDateTimeField;
    consultaVIER_DESD_2: TDateTimeField;
    consultaVIER_HAST_2: TDateTimeField;
    consultaVIER_MINUTOS: TIntegerField;
    consultaSABA_DESD_1: TDateTimeField;
    consultaSABA_HAST_1: TDateTimeField;
    consultaSABA_DESD_2: TDateTimeField;
    consultaSABA_HAST_2: TDateTimeField;
    consultaSABA_MINUTOS: TIntegerField;
    consultaDOMI_DESD_1: TDateTimeField;
    consultaDOMI_HAST_1: TDateTimeField;
    consultaDOMI_DESD_2: TDateTimeField;
    consultaDOMI_HAST_2: TDateTimeField;
    consultaDOMI_MINUTOS: TIntegerField;
    consultaPRIM_DESCANSO: TIntegerField;
    consultaSEGU_DESCANSO: TIntegerField;
    consultaLUNE_DISPONIBLES: TIntegerField;
    consultaMART_DISPONIBLES: TIntegerField;
    consultaMIER_DISPONIBLES: TIntegerField;
    consultaJUEV_DISPONIBLES: TIntegerField;
    consultaVIER_DISPONIBLES: TIntegerField;
    consultaSABA_DISPONIBLES: TIntegerField;
    consultaDOMI_DISPONIBLES: TIntegerField;
    procedure consultaCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Horario_Dia(Dia : String):String;
    function Minutos_Disponibles_Dia(Dia : String):Integer;
  end;

var
  FN1_Para_Turnos: TFN1_Para_Turnos;

implementation

uses _Traductor;
{$R *.DFM}

function TFN1_Para_Turnos.Minutos_Disponibles_Dia(Dia : String):Integer;
begin
  Result := consulta.FieldByName(Dia + '_MINUTOS').AsInteger -
  	consulta.FieldByName('PRIM_DESCANSO').AsInteger -
    consulta.FieldByName('SEGU_DESCANSO').AsInteger;
  If Result < 0 Then
  	Result := 0;  
end;

function TFN1_Para_Turnos.Horario_Dia(Dia : String):String;
begin
	Result := '';
	If consulta.FieldByName(Dia + '_DESD_1').AsString <> '' Then
    Result := Result + TimeToStr(consulta.FieldByName(Dia + '_DESD_1').AsDateTime) + '-';
	If consulta.FieldByName(Dia + '_HAST_1').AsString <> '' Then
    Result := Result + TimeToStr(consulta.FieldByName(Dia + '_HAST_1').AsDateTime) + '  ';
	If consulta.FieldByName(Dia + '_DESD_2').AsString <> '' Then
    Result := Result + TimeToStr(consulta.FieldByName(Dia + '_DESD_2').AsDateTime) + '-';
	If consulta.FieldByName(Dia + '_HAST_2').AsString <> '' Then
    Result := Result + TimeToStr(consulta.FieldByName(Dia + '_HAST_2').AsDateTime);
end;

procedure TFN1_Para_Turnos.consultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  consulta.FieldByName('LUNES').AsString 			:= Horario_Dia('LUNE');
  consulta.FieldByName('MARTES').AsString 		:= Horario_Dia('MART');
  consulta.FieldByName('MIERCOLES').AsString 	:= Horario_Dia('MIER');
  consulta.FieldByName('JUEVES').AsString 		:= Horario_Dia('JUEV');
  consulta.FieldByName('VIERNES').AsString 		:= Horario_Dia('VIER');
  consulta.FieldByName('SABADO').AsString 		:= Horario_Dia('SABA');
  consulta.FieldByName('DOMINGO').AsString 		:= Horario_Dia('DOMI');

  consulta.FieldByName('LUNE_DISPONIBLES').AsInteger :=
  	Minutos_Disponibles_Dia('LUNE');
  consulta.FieldByName('MART_DISPONIBLES').AsInteger :=
  	Minutos_Disponibles_Dia('MART');
  consulta.FieldByName('MIER_DISPONIBLES').AsInteger :=
  	Minutos_Disponibles_Dia('MIER');
  consulta.FieldByName('JUEV_DISPONIBLES').AsInteger :=
  	Minutos_Disponibles_Dia('JUEV');
  consulta.FieldByName('VIER_DISPONIBLES').AsInteger :=
  	Minutos_Disponibles_Dia('VIER');
  consulta.FieldByName('SABA_DISPONIBLES').AsInteger :=
  	Minutos_Disponibles_Dia('SABA');
  consulta.FieldByName('DOMI_DISPONIBLES').AsInteger :=
  	Minutos_Disponibles_Dia('DOMI');

  consulta.FieldByName('CONTRATADOS').AsInteger :=
    consulta.FieldByname('LUNE_MINUTOS').AsInteger +
    consulta.FieldByname('MART_MINUTOS').AsInteger +
    consulta.FieldByname('MIER_MINUTOS').AsInteger +
    consulta.FieldByname('JUEV_MINUTOS').AsInteger +
    consulta.FieldByname('VIER_MINUTOS').AsInteger +
    consulta.FieldByname('SABA_MINUTOS').AsInteger +
    consulta.FieldByname('DOMI_MINUTOS').AsInteger;

  consulta.FieldByName('DISPONIBLES').AsInteger :=
    consulta.FieldByname('LUNE_DISPONIBLES').AsInteger +
    consulta.FieldByname('MART_DISPONIBLES').AsInteger +
    consulta.FieldByname('MIER_DISPONIBLES').AsInteger +
    consulta.FieldByname('JUEV_DISPONIBLES').AsInteger +
    consulta.FieldByname('VIER_DISPONIBLES').AsInteger +
    consulta.FieldByname('SABA_DISPONIBLES').AsInteger +
    consulta.FieldByname('DOMI_DISPONIBLES').AsInteger;
end;

procedure TFN1_Para_Turnos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

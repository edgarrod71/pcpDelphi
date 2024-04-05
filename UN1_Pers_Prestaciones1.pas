unit UN1_Pers_Prestaciones1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal_alone, PictureContainer, DBTables, AdvPanel, Db,
  dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, dxCntner, PCPFrame,
  SCLTabs, dxExEdtr, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  ExtCtrls, Boxes, PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls,
  SoCtrls, SCLDBLabel, TBX, TB2Item, TB2Dock, TB2Toolbar;

  
type
  TFN1_Pers_Prestaciones1 = class(T_fvent_modal_alone)
    Tabla_VentanaSALU_EMPRESA: TFloatField;
    Tabla_VentanaSALU_EMPLEADO: TFloatField;
    Tabla_VentanaPENS_EMPLEADO: TFloatField;
    Tabla_VentanaPENS_EMPRESA: TFloatField;
    Tabla_VentanaCAJA_EMPRESA: TFloatField;
    Tabla_VentanaTOTA_PARAFISCALES: TFloatField;
    Tabla_VentanaPRIMA: TFloatField;
    Tabla_VentanaPRIM_EXTRA: TFloatField;
    Tabla_VentanaVACACIONES: TFloatField;
    Tabla_VentanaCESANTIAS: TFloatField;
    Tabla_VentanaINTE_CESANTIAS: TFloatField;
    Tabla_VentanaOTROS: TFloatField;
    Tabla_VentanaTOTA_PRESTACIONES: TFloatField;
    Tabla_VentanaSENA_EMPRESA: TFloatField;
    Tabla_VentanaARP_EMPRESA: TFloatField;
    Tabla_VentanaICBF_EMPRESA: TFloatField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaTOTA_SALUD: TFloatField;
    Tabla_VentanaTOTA_PENSION: TFloatField;
    Tabla_VentanaTOTA_CAJA: TFloatField;
    Tabla_VentanaTOTA_ICBF: TFloatField;
    Tabla_VentanaTOTA_SENA: TFloatField;
    Tabla_VentanaTOTA_ARP: TFloatField;
    Tabla_VentanaTOTA_EMPRESA: TFloatField;
    Tabla_VentanaTOTA_EMPLEADO: TFloatField;
    dxPageControl1: TSCLPageControl;
    dxTabSheet1: TSCLTabSheet;
    dxTabSheet2: TSCLTabSheet;
    dxDBGrid1: TdxDBGrid;
    QPrestaciones: TQuery;
    DSQPrestaciones: TDataSource;
    QPrestacionesCONS_PERS_PRES_HISTORIAL: TIntegerField;
    QPrestacionesSALU_EMPRESA: TFloatField;
    QPrestacionesSALU_EMPLEADO: TFloatField;
    QPrestacionesPENS_EMPRESA: TFloatField;
    QPrestacionesPENS_EMPLEADO: TFloatField;
    QPrestacionesCAJA_EMPRESA: TFloatField;
    QPrestacionesTOTA_PARAFISCALES: TFloatField;
    QPrestacionesPRIMA: TFloatField;
    QPrestacionesPRIM_EXTRA: TFloatField;
    QPrestacionesVACACIONES: TFloatField;
    QPrestacionesCESANTIAS: TFloatField;
    QPrestacionesINTE_CESANTIAS: TFloatField;
    QPrestacionesOTROS: TFloatField;
    QPrestacionesTOTA_PRESTACIONES: TFloatField;
    QPrestacionesSENA_EMPRESA: TFloatField;
    QPrestacionesARP_EMPRESA: TFloatField;
    QPrestacionesICBF_EMPRESA: TFloatField;
    QPrestacionesFECH_SISTEMA: TDateTimeField;
    QPrestacionesUSUA_SISTEMA: TStringField;
    dxDBGrid1CONS_PERS_PRES_HISTORIAL: TdxDBGridMaskColumn;
    dxDBGrid1SALU_EMPRESA: TdxDBGridMaskColumn;
    dxDBGrid1SALU_EMPLEADO: TdxDBGridMaskColumn;
    dxDBGrid1PENS_EMPRESA: TdxDBGridMaskColumn;
    dxDBGrid1PENS_EMPLEADO: TdxDBGridMaskColumn;
    dxDBGrid1CAJA_EMPRESA: TdxDBGridMaskColumn;
    dxDBGrid1TOTA_PARAFISCALES: TdxDBGridMaskColumn;
    dxDBGrid1PRIMA: TdxDBGridMaskColumn;
    dxDBGrid1PRIM_EXTRA: TdxDBGridMaskColumn;
    dxDBGrid1VACACIONES: TdxDBGridMaskColumn;
    dxDBGrid1CESANTIAS: TdxDBGridMaskColumn;
    dxDBGrid1INTE_CESANTIAS: TdxDBGridMaskColumn;
    dxDBGrid1OTROS: TdxDBGridMaskColumn;
    dxDBGrid1TOTA_PRESTACIONES: TdxDBGridMaskColumn;
    dxDBGrid1SENA_EMPRESA: TdxDBGridMaskColumn;
    dxDBGrid1ARP_EMPRESA: TdxDBGridMaskColumn;
    dxDBGrid1ICBF_EMPRESA: TdxDBGridMaskColumn;
    dxDBGrid1FECH_SISTEMA: TdxDBGridDateColumn;
    dxDBGrid1USUA_SISTEMA: TdxDBGridMaskColumn;
    PCPFrame1: TPCPFrame;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    DBPrima: TdxDBEdit;
    DBPrima_Extra: TdxDBEdit;
    DBVacaciones: TdxDBEdit;
    DBTotal_Prestaciones: TdxDBEdit;
    DBCesantias: TdxDBEdit;
    DBInteres_Cesantias: TdxDBEdit;
    DBOtros: TdxDBEdit;
    PCPFrame2: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    SCLDBLabel13: TSCLDBLabel;
    SCLDBLabel14: TSCLDBLabel;
    SCLDBLabel15: TSCLDBLabel;
    SCLDBLabel16: TSCLDBLabel;
    SCLDBLabel17: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    DBSalud_Empresa: TdxDBEdit;
    DBPension_Empresa: TdxDBEdit;
    DBCaja_Compensacion: TdxDBEdit;
    DBICBF: TdxDBEdit;
    DBSena: TdxDBEdit;
    DBArp: TdxDBEdit;
    DBSalud_Empleado: TdxDBEdit;
    DBPension_Empleado: TdxDBEdit;
    DBTotal_Salud: TdxDBEdit;
    DBTotal_Pension: TdxDBEdit;
    DBTotal_Caja: TdxDBEdit;
    DBTotalICBF: TdxDBEdit;
    DBTotal_Sena: TdxDBEdit;
    DBTotal_Arp: TdxDBEdit;
    DBTotal_Empresa: TdxDBEdit;
    DBTotal_Empleado: TdxDBEdit;
    DBTotal_Parafiscales: TdxDBEdit;
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure Tabla_VentanaCalcFields(DataSet: TDataSet);
    procedure DBPrimaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Prestaciones1: TFN1_Pers_Prestaciones1;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Sumar Totales
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Prestaciones1.Tabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
  Tabla_Ventana.FieldByName('TOTA_PRESTACIONES').AsFloat :=
  	Tabla_Ventana.FieldByName('PRIMA').AsFloat +
  	Tabla_Ventana.FieldByName('PRIM_EXTRA').AsFloat +
  	Tabla_Ventana.FieldByName('VACACIONES').AsFloat +
  	Tabla_Ventana.FieldByName('CESANTIAS').AsFloat +
  	Tabla_Ventana.FieldByName('INTE_CESANTIAS').AsFloat +
  	Tabla_Ventana.FieldByName('OTROS').AsFloat;

  Tabla_Ventana.FieldByName('TOTA_PARAFISCALES').AsFloat :=
  	Tabla_Ventana.FieldByName('SALU_EMPRESA').AsFloat +
  	Tabla_Ventana.FieldByName('SALU_EMPLEADO').AsFloat +
  	Tabla_Ventana.FieldByName('PENS_EMPRESA').AsFloat +
  	Tabla_Ventana.FieldByName('PENS_EMPLEADO').AsFloat +
  	Tabla_Ventana.FieldByName('CAJA_EMPRESA').AsFloat +
  	Tabla_Ventana.FieldByName('ICBF_EMPRESA').AsFloat +
  	Tabla_Ventana.FieldByName('SENA_EMPRESA').AsFloat +
  	Tabla_Ventana.FieldByName('ARP_EMPRESA').AsFloat;
end;

{****************************************************************
Procedimiento   : Tabla_VentanaCalcFields
Objetivo        : Campos Calculados
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Prestaciones1.Tabla_VentanaCalcFields(DataSet: TDataSet);
begin
  inherited;
  Tabla_Ventana.FieldByName('TOTA_SALUD').AsFloat :=
    Tabla_Ventana.FieldByName('SALU_EMPRESA').AsFloat +
    Tabla_Ventana.FieldByName('SALU_EMPLEADO').AsFloat;

  Tabla_Ventana.FieldByName('TOTA_PENSION').AsFloat :=
    Tabla_Ventana.FieldByName('PENS_EMPRESA').AsFloat +
    Tabla_Ventana.FieldByName('PENS_EMPLEADO').AsFloat;

  Tabla_Ventana.FieldByName('TOTA_CAJA').AsFloat :=
    Tabla_Ventana.FieldByName('CAJA_EMPRESA').AsFloat;

  Tabla_Ventana.FieldByName('TOTA_ICBF').AsFloat :=
    Tabla_Ventana.FieldByName('ICBF_EMPRESA').AsFloat;

  Tabla_Ventana.FieldByName('TOTA_SENA').AsFloat :=
    Tabla_Ventana.FieldByName('SENA_EMPRESA').AsFloat;

  Tabla_Ventana.FieldByName('TOTA_ARP').AsFloat :=
    Tabla_Ventana.FieldByName('ARP_EMPRESA').AsFloat;

  Tabla_Ventana.FieldByName('TOTA_EMPRESA').AsFloat :=
    Tabla_Ventana.FieldByName('SALU_EMPRESA').AsFloat +
    Tabla_Ventana.FieldByName('PENS_EMPRESA').AsFloat +
    Tabla_Ventana.FieldByName('CAJA_EMPRESA').AsFloat +
    Tabla_Ventana.FieldByName('ICBF_EMPRESA').AsFloat +
    Tabla_Ventana.FieldByName('SENA_EMPRESA').AsFloat +
    Tabla_Ventana.FieldByName('ARP_EMPRESA').AsFloat;

  Tabla_Ventana.FieldByName('TOTA_EMPLEADO').AsFloat :=
    Tabla_Ventana.FieldByName('SALU_EMPLEADO').AsFloat +
    Tabla_Ventana.FieldByName('PENS_EMPLEADO').AsFloat;
end;

{****************************************************************
Procedimiento   : DBPrimaExit
Objetivo        : Calcular Total prestaciones
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Prestaciones1.DBPrimaExit(Sender: TObject);
begin
  inherited;
	If Tabla_Ventana.State In [dsEdit, dsInsert] Then
    Tabla_Ventana.FieldByName('TOTA_PRESTACIONES').AsFloat :=
      Tabla_Ventana.FieldByName('PRIMA').AsFloat +
      Tabla_Ventana.FieldByName('PRIM_EXTRA').AsFloat +
      Tabla_Ventana.FieldByName('VACACIONES').AsFloat +
      Tabla_Ventana.FieldByName('CESANTIAS').AsFloat +
      Tabla_Ventana.FieldByName('INTE_CESANTIAS').AsFloat +
      Tabla_Ventana.FieldByName('OTROS').AsFloat;
end;

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 22 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Prestaciones1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QPrestaciones);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaAfterPost
Objetivo        : Refrescar consulta Historial
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 08 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Prestaciones1.Tabla_VentanaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
	//Refrescar consulta Historial
  QPrestaciones.Close;
  AbrirDataSet(QPrestaciones);
end;

end.

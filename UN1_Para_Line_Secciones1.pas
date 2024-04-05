unit UN1_Para_Line_Secciones1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit,
  DBCtrls, TBXDkPanels, TBXButtonSCL, Boxes, PCPProceso;

type
  TFN1_Para_Line_Secciones1 = class(T_fvent_modal)
    QEmpresas: TQuery;
    QPlantas: TQuery;
    QLineas: TQuery;
    DSQEmpresas: TDataSource;
    DSQPlantas: TDataSource;
    DSQLineas: TDataSource;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    CBPlanta: TPCPLookUpComboEdit;
    SCLButton1: TTBXButtonSCL;
    CBEmpresa: TPCPLookUpComboEdit;
    SCLButton2: TTBXButtonSCL;
    SCLDBLabel3: TSCLDBLabel;
    CBLineas: TPCPLookUpComboEdit;
    SCLButton3: TTBXButtonSCL;
    SCLDBLabel7: TSCLDBLabel;
    RGFuncionamiento: TDBRadioGroup;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    DBSupervisor: TdxDBEdit;
    DBResponsable: TdxDBEdit;
    Tabla_VentanaCONS_LINE_SECCION: TIntegerField;
    Tabla_VentanaCONS_SECCION: TIntegerField;
    Tabla_VentanaCONS_PLAN_LINEA: TIntegerField;
    Tabla_VentanaSUPERVISOR: TStringField;
    Tabla_VentanaRESPONSABLE: TStringField;
    Tabla_VentanaTIPO_SECCION: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    QBuscar: TQuery;
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cons_Seccion : Integer;
  end;

var
  FN1_Para_Line_Secciones1: TFN1_Para_Line_Secciones1;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar Variables
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Line_Secciones1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QEmpresas);
  AbrirDataSet(QPlantas);
  AbrirDataSet(QLineas);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Asignar el valor de la sección
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Line_Secciones1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  Tabla_Ventana.FieldByName('CONS_SECCION').AsInteger := Cons_Seccion;
  inherited;
end;


procedure TFN1_Para_Line_Secciones1.data_ventanaStateChange(
  Sender: TObject);
begin
  inherited;
	If Tabla_Ventana.State = dsEdit Then
  Begin
    QBuscar.Open;
		CBEmpresa.KeyValue := QBuscar.FieldByname('CONS_EMPRESA').Value;
		CBPlanta.KeyValue := QBuscar.FieldByname('CONS_PLANTA').Value;
    QBuscar.Close;
  End;
end;

end.

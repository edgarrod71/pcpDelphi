unit UN1_Para_Plan_Lineas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, SohoBtns, SCLButton,
  TBXDkPanels, TBXButtonSCL, Boxes, PCPProceso;

type
  TFN1_Para_Plan_Lineas1 = class(T_fvent_modal)
    DSQPlantas: TDataSource;
    QPlantas: TQuery;
    CBPlanta: TPCPLookUpComboEdit;
    SCLDBLabel1: TSCLDBLabel;
    SCLButton1: TTBXButtonSCL;
    Tabla_VentanaCONS_PLAN_LINEA: TIntegerField;
    Tabla_VentanaCONS_PLANTA: TIntegerField;
    Tabla_VentanaCONS_LINEA: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    QEmpresas: TQuery;
    DSQEmpresas: TDataSource;
    SCLDBLabel2: TSCLDBLabel;
    CBEmpresa: TPCPLookUpComboEdit;
    SCLButton2: TTBXButtonSCL;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Cons_Linea : Integer;
  end;

var
  FN1_Para_Plan_Lineas1: TFN1_Para_Plan_Lineas1;

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
procedure TFN1_Para_Plan_Lineas1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QEmpresas);
  AbrirDataSet(QPlantas);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Asignar el valor de la línea
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Plan_Lineas1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  Tabla_Ventana.FieldByName('CONS_LINEA').AsInteger := Cons_Linea;
  inherited;
end;
end.

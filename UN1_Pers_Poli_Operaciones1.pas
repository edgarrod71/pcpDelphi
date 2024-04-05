unit UN1_Pers_Poli_Operaciones1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit;

type
  TFN1_Pers_Poli_Operaciones1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    SCLDBLabel2: TSCLDBLabel;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    QOperaciones: TQuery;
    QRango: TQuery;
    DSQOperaciones: TDataSource;
    DSQRango: TDataSource;
    Tabla_VentanaCONS_PERS_OPER_EJECUTADA: TIntegerField;
    Tabla_VentanaCONS_PERS_MAQU_UTILIZADA: TIntegerField;
    Tabla_VentanaCONS_OPER_COST_TIPO: TIntegerField;
    Tabla_VentanaCONS_RANG_EFICIENCIA: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Cons_Pers_Maqu_Utilizada : Integer;
  end;

var
  FN1_Pers_Poli_Operaciones1: TFN1_Pers_Poli_Operaciones1;

implementation

uses _func_varias;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 24 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Poli_Operaciones1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QOperaciones);
  AbrirDataSet(QRango);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Asignar el consecutivo identificador del registro
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 24 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Poli_Operaciones1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Asignar el valor del personal
  Tabla_Ventana.FieldByName('CONS_PERS_MAQU_UTILIZADA').AsInteger :=
        Cons_Pers_Maqu_Utilizada;

  //Asignar el consecutivo identificador del registro
  If Tabla_Ventana.State = dsInsert Then
    Tabla_Ventana.FieldByName('CONS_PERS_OPER_EJECUTADA').AsInteger :=
    	GenerarSecuencia('GLO_PERS_OPER_EJECUTADAS', 'CONS_PERS_OPER_EJECUTADA');
end;

end.

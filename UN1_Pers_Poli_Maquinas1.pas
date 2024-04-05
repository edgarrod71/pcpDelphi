unit UN1_Pers_Poli_Maquinas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes,
  PCPProceso, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit;

type
  TFN1_Pers_Poli_Maquinas1 = class(T_fvent_modal)
    Tabla_VentanaCONS_PERS_MAQU_UTILIZADA: TIntegerField;
    Tabla_VentanaCONS_PERSONAL: TIntegerField;
    Tabla_VentanaCONS_RECU_TIPO: TIntegerField;
    Tabla_VentanaCONS_RECU_GRUPO: TIntegerField;
    Tabla_VentanaCONS_RECU_FAMILIA: TIntegerField;
    Tabla_VentanaCONS_GRAD_HABILIDAD: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    QFamilias: TQuery;
    DSQFamilias: TDataSource;
    DSQTipo_Recurso: TDataSource;
    QTipo_Recurso: TQuery;
    QGrupos: TQuery;
    DSQGrupos: TDataSource;
    SCLDBLabel3: TSCLDBLabel;
    CBGrupo_Recurso: TPCPLookUpComboEdit;
    SCLDBLabel5: TSCLDBLabel;
    CBFamilia_Recurso: TPCPLookUpComboEdit;
    SCLDBLabel4: TSCLDBLabel;
    CBTipo_Recurso: TPCPLookUpComboEdit;
    SCLDBLabel1: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    QHabilidad: TQuery;
    DSQHabilidad: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Cons_Personal : Integer;
  end;

var
  FN1_Pers_Poli_Maquinas1: TFN1_Pers_Poli_Maquinas1;

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
procedure TFN1_Pers_Poli_Maquinas1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QGrupos);
  AbrirDataSet(QTipo_Recurso);
  AbrirDataSet(QFamilias);
  AbrirDataSet(QHabilidad);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Asignar el consecutivo identificador del registro
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 24 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Poli_Maquinas1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Asignar el valor del personal
  Tabla_Ventana.FieldByName('CONS_PERSONAL').AsInteger := Cons_Personal;

  //Asignar el consecutivo identificador del registro
  If Tabla_Ventana.State = dsInsert Then
    Tabla_Ventana.FieldByName('CONS_PERS_MAQU_UTILIZADA').AsInteger :=
    	GenerarSecuencia('GLO_PERS_MAQU_UTILIZADAS', 'CONS_PERS_MAQU_UTILIZADA');
end;

end.

unit UN1_Acce_Tipo_Tipo_Caracteristica1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit,
  TBXDkPanels, TBXButtonSCL, Boxes, PCPProceso;

type
  TFN1_Acce_Tipo_Tipo_Caracteristica1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    CBTipo_Caracteristica: TPCPLookUpComboEdit;
    SCLButton2: TTBXButtonSCL;
    QTipo_Caracteristica: TQuery;
    DSQTipo_Caracteristica: TDataSource;
    Tabla_VentanaCONS_ACCE_CARA_TIPO: TIntegerField;
    Tabla_VentanaCONS_ACCE_TIPO: TIntegerField;
    Tabla_VentanaCONS_ACCE_TIPO_CARACTERISTICA: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Cons_Acce_Tipo : Integer;
  end;

var
  FN1_Acce_Tipo_Tipo_Caracteristica1: TFN1_Acce_Tipo_Tipo_Caracteristica1;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas Auxiliares
Realizado por   : Gustavo Muñoz (TECNOLOGIA)
Fecha           : Jueves 24 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Tipo_Tipo_Caracteristica1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas Auxiliares
  AbrirDataSet(QTipo_Caracteristica);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Asignar el consecutivo de la tabla referencia
Realizado por   : Gustavo Muñoz (TECNOLOGIA)
Fecha           : Jueves 24 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Tipo_Tipo_Caracteristica1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  Tabla_Ventana.FieldByName('CONS_ACCE_TIPO').AsInteger := Cons_Acce_Tipo;
  inherited;
end;

end.

unit UN1_Maqu_Fami_tipo_caracteristica1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, SohoBtns, SCLButton,
  TBXDkPanels, TBXButtonSCL, Boxes, PCPProceso;

type
  TFN1_Maqu_Fami_tipo_caracteristica1 = class(T_fvent_modal)
    SCLDBLabel1: TSCLDBLabel;
    CBTipo_Caracteristica: TPCPLookUpComboEdit;
    SCLButton2: TTBXButtonSCL;
    QTipo_Caracteristica: TQuery;
    DSQTipo_Caracteristica: TDataSource;
    Tabla_VentanaCONS_RECU_TIPO_CARACTERISTICA: TIntegerField;
    Tabla_VentanaCONS_RECU_FAMILIA: TIntegerField;
    Tabla_VentanaCONS_TIPO_CARACTERISTICA: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Cons_Recu_Familia : Integer; 
  end;

var
  FN1_Maqu_Fami_tipo_caracteristica1: TFN1_Maqu_Fami_tipo_caracteristica1;

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
procedure TFN1_Maqu_Fami_tipo_caracteristica1.FormCreate(Sender: TObject);
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
procedure TFN1_Maqu_Fami_tipo_caracteristica1.Tabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  Tabla_Ventana.FieldByName('CONS_RECU_FAMILIA').AsInteger := Cons_Recu_Familia;
  inherited;
end;

end.

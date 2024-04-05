{ 17/03/2004 04:00:24 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:20 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:33 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:39:03 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Municipios1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, DBActns, ActnList, Db, ImgList, dxCntner, dxEditor, dxEdLib,
  dxDBELib, ExtCtrls, DBTables, StdCtrls, SohoBtns, SCLButton, RxLookup,
  PCPLookUpComboEdit, PictureContainer, AdvPanel, dxExEdtr,
  SCLPropiedadesForm, TB2Item, TBX, TB2Dock, TB2Toolbar, SoCtrls,
  SCLDBLabel, TBXDkPanels, Boxes, PCPProceso;

type
  TFN1_Para_Municipios1 = class(T_fvent_modal)
    DBCodigo: TdxDBEdit;
    DBDescripcion: TdxDBEdit;
    data_departamentos: TDataSource;
    CBDepartamento: TPCPLookUpComboEdit;
    CBPaises: TPCPLookUpComboEdit;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    Tabla_VentanaNOMB_CIUDAD: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaCONS_CIUDAD: TIntegerField;
    Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField;
    Tabla_VentanaCODI_CIUDAD: TStringField;
    data_paises: TDataSource;
    Tabla_VentanaCONS_PAIS: TIntegerField;
    quer_paises: TQuery;
    quer_departamentos: TQuery;
    quer_paisesCONS_PAIS: TIntegerField;
    quer_paisesNOMB_PAIS: TStringField;
    quer_departamentosCONS_DEPARTAMENTO: TIntegerField;
    quer_departamentosNOMB_DEPARTAMENTO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CBPaisesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Municipios1: TFN1_Para_Municipios1;

implementation

uses UN1_Para_Departamentos, UN1_Para_Paises, _cons_pcp, _vent_child,
  UN1_Para_Paises1, UN1_Para_Departamentos1, _func_varias, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2003
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Municipios1.FormCreate(Sender: TObject);
begin
  inherited;
	//Verifica que si se pueda abrir el DataSet
  AbrirDataSet(quer_departamentos, False, False);
	//Verifica que si se pueda abrir el DataSet
  AbrirDataSet(quer_paises, False, False);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : CBPaisesChanged
Objetivo        : Cuando cambia de país borra el departamento
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2003
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Municipios1.CBPaisesChange(Sender: TObject);
begin
  inherited;
  If Tabla_Ventana.State in [dsEdit, dsInsert] Then
	  Tabla_Ventana.FieldByName('cons_departamento').Value := Null;
end;

end.

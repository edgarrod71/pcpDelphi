{ 17/03/2004 04:47:36 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 17/03/2004 04:47:11 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 17/03/2004 04:33:12 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 17/03/2004 04:32:46 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 17/03/2004 04:03:37 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:16 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:37 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:39:07 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Para_Departamentos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, DBActns, ActnList, Db, ImgList, dxCntner, dxEditor, dxEdLib,
  dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls,
  DBTables, dxExEdtr, dxDBEdtr, Buttons, SCLPropiedadesForm, SCLDBLabel,
  RxLookup, PCPLookUpComboEdit, SoCtrls, SohoBtns, SCLButton,
  PictureContainer, AdvPanel, TBXDkPanels, TBXButtonSCL, Boxes,
  PCPProceso;

type
  TFN1_Para_Departamentos1 = class(T_fvent_modal)
    DBCodigo: TdxDBEdit;
    DBDescripcion: TdxDBEdit;
    CBPaises: TPCPLookUpComboEdit;
    TPaises: TTable;
    DSPaises: TDataSource;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    Tabla_VentanaCODI_DEPARTAMENTO: TStringField;
    Tabla_VentanaNOMB_DEPARTAMENTO: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    SCLButton1: TTBXButtonSCL;
    Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField;
    Tabla_VentanaCONS_PAIS: TIntegerField;
    TPaisesCONS_PAIS: TIntegerField;
    TPaisesNOMB_PAIS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BPaisesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Departamentos1: TFN1_Para_Departamentos1;

implementation

uses UN1_Para_Paises, _vent_child, _cons_pcp, UN1_Para_Paises1,
  _func_varias, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2003
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Departamentos1.FormCreate(Sender: TObject);
begin
  inherited;
	//Verifica que si se pueda abrir el DataSet
  AbrirDataSet(TPaises, False, False);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : BPaisClick
Objetivo        : Despues de haber elegido un País en el módulo de
									Paises lo carga en el campo CODI_PAIS
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Departamentos1.BPaisesClick(Sender: TObject);
begin
  inherited;
//Procedimiento para crear el módulo Child se encuentra en _vent_child, este procedimiento
// se utiliza si desde un módulo Modal se necesita abrir un módulo Child.
  Crear_Forma_Child(TFN1_Para_Paises, TFN1_Para_Paises1, fsNormal, tsShowModal,
  	wsNormal, PoScreenCenter, Tabla_Ventana, False);

  If Resultado <> Null Then
  Begin
		If Data_Ventana.DataSet.State = dsBrowse Then
    	Data_Ventana.DataSet.Edit;
    Data_Ventana.DataSet.FieldByName('CODI_PAIS').Value := Resultado;
  End;
end;

end.

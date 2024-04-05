{ 16/03/2004 06:45:03 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:47 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:40:04 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:31 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Pers_Familiar1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, Db, DBTables, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, TB2Item, TBX,
  TB2Dock, TB2Toolbar, StdCtrls, dxExEdtr, dxDBEdtr, SCLDBLabel, SoCtrls,
  RxLookup, PCPLookUpComboEdit, SohoBtns, SCLButton;

type
  TFN1_Pers_Familiar1 = class(T_fvent_modal)
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    CBPersonal: TPCPLookUpComboEdit;
    CBCodigo: TPCPLookUpComboEdit;
    Tabla_VentanaCODI_PERSONAL: TStringField;
    Tabla_VentanaFAMI_PRIM_APELLIDO: TStringField;
    Tabla_VentanaFAMI_SEGU_APELLIDO: TStringField;
    Tabla_VentanaFAMI_NOMBRES: TStringField;
    Tabla_VentanaFAMI_CODI_PARENTESCO: TStringField;
    Tabla_VentanaFAMI_FECH_NACIMIENTO: TDateTimeField;
    Tabla_VentanaFAMI_CODI_PAIS_RESIDENCIA: TStringField;
    Tabla_VentanaFAMI_CODI_DEPA_RESIDENCIA: TStringField;
    Tabla_VentanaFAMI_CODI_CIUD_RESIDENCIA: TStringField;
    Tabla_VentanaFAMI_DIRE_RESIDENCIA: TStringField;
    Tabla_VentanaFAMI_TELE_RESIDENCIA: TStringField;
    Tabla_VentanaFAMI_TELE_OTRO: TStringField;
    Tabla_VentanaFAMI_TELE_MOVIL: TStringField;
    Tabla_VentanaFAMI_CODI_TIPO_DOCU_IDENTIDAD: TStringField;
    Tabla_VentanaFAMI_NUME_DOCU_IDENTIDAD: TStringField;
    Tabla_VentanaFAMI_OCUPACION: TStringField;
    Tabla_VentanaFAMI_NOMB_EMPRESA: TStringField;
    Tabla_VentanaFAMI_DIRE_EMPRESA: TStringField;
    Tabla_VentanaFAMI_TELE_EMPRESA: TStringField;
    Tabla_VentanaFAMI_CORR_ELECTRONICO: TStringField;
    SCLDBLabel1: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit3: TdxDBEdit;
    SCLDBLabel5: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    SCLDBLabel6: TSCLDBLabel;
    CBTipo_Documento: TPCPLookUpComboEdit;
    SCLDBLabel7: TSCLDBLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    SCLDBLabel8: TSCLDBLabel;
    CBPaises: TPCPLookUpComboEdit;
    SCLDBLabel9: TSCLDBLabel;
    CBDepartamentos: TPCPLookUpComboEdit;
    SCLDBLabel11: TSCLDBLabel;
    CBMunicipios: TPCPLookUpComboEdit;
    dxDBEdit5: TdxDBEdit;
    SCLDBLabel12: TSCLDBLabel;
    dxDBEdit6: TdxDBEdit;
    SCLDBLabel13: TSCLDBLabel;
    SCLDBLabel14: TSCLDBLabel;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    SCLDBLabel15: TSCLDBLabel;
    SCLDBLabel16: TSCLDBLabel;
    CBParentescos: TPCPLookUpComboEdit;
    SCLDBLabel17: TSCLDBLabel;
    dxDBEdit9: TdxDBEdit;
    SCLDBLabel18: TSCLDBLabel;
    dxDBEdit10: TdxDBEdit;
    SCLDBLabel19: TSCLDBLabel;
    dxDBEdit11: TdxDBEdit;
    SCLDBLabel20: TSCLDBLabel;
    dxDBEdit12: TdxDBEdit;
    TPersonal: TTable;
    TTipo_Documento: TTable;
    TPaises: TTable;
    TDepartamentos: TTable;
    TMunicipios: TTable;
    TParentescos: TTable;
    DSPersonal: TDataSource;
    DSTipo_Documento: TDataSource;
    DSPaises: TDataSource;
    DSDepartamentos: TDataSource;
    DSMunicipios: TDataSource;
    DSParentescos: TDataSource;
    SCLButton1: TSCLButton;
    SCLButton2: TSCLButton;
    SCLButton3: TSCLButton;
    SCLButton4: TSCLButton;
    SCLButton5: TSCLButton;
    SCLButton6: TSCLButton;
    procedure FormCreate(Sender: TObject);
    procedure BTipo_DocumentoClick(Sender: TObject);
    procedure BPaisClick(Sender: TObject);
    procedure BDepartamentoClick(Sender: TObject);
    procedure BMunicipioClick(Sender: TObject);
    procedure SCLButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Familiar1: TFN1_Pers_Familiar1;

implementation

uses UN1_Pers_Personal, UN1_Para_Tipo_Documento, _vent_child, _cons_pcp,
  UN1_Para_Paises, UN1_Para_Departamentos, UN1_Para_Municipios,
  _func_varias, UN1_Para_Tipo_Documento1, UN1_Para_Paises1,
  UN1_Para_Departamentos1, UN1_Para_Municipios1, UN1_Para_Parentescos,
  UN1_Para_Parentescos1;

{$R *.DFM}

procedure TFN1_Pers_Familiar1.FormCreate(Sender: TObject);
begin
  inherited;
  TPersonal.Open;
  TTipo_Documento.Open;
  TPaises.Open;
  TDepartamentos.Open;
  TMunicipios.Open;
  TParentescos.Open;
end;

{****************************************************************
Procedimiento   : BTipo_DocumentoClick
Objetivo        : Cuando se haya elegido un Tipo de Documento en el módulo de
									Tipos de Documentos trae el resultado,
                  lo carga en el campo FAMI_CODI_TIPO_DOU_IDENTIDAD
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Familiar1.BTipo_DocumentoClick(Sender: TObject);
begin
  inherited;
//Procedimiento para crear el módulo Child se encuentra en _vent_child, este procedimiento
// se utiliza si desde un módulo Modal se necesita abrir un módulo Child.
  Crear_Forma_Child(TFN1_Para_Tipo_Documento, TFN1_Para_Tipo_Documento1, fsNormal, tsShowModal,
  	wsNormal, PoScreenCenter, Tabla_Ventana, False);

//Se verifica si se cargo la variable cuando le dierón click en el botón aceptar
// del módulo Child.
  If Not Variant_Vacio(Resultado) Then
	Begin
		If data_ventana.DataSet.State = dsBrowse Then
    	data_ventana.DataSet.Edit;
  	Tabla_Ventana.FieldByName('FAMI_CODI_TIPO_DOCU_IDENTIDAD').Value := Resultado;
  End;
end;

{****************************************************************
Procedimiento   : BPaisClick
Objetivo        : Cuando se haya elegido un País en el módulo de
									Paises trae el resultado,
                  lo carga en el campo FAMI_CODI_PAIS_RESIDENCIA
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Familiar1.BPaisClick(Sender: TObject);
begin
  inherited;
//Procedimiento para crear el módulo Child se encuentra en _vent_child, este procedimiento
// se utiliza si desde un módulo Modal se necesita abrir un módulo Child.
  Crear_Forma_Child(TFN1_Para_Paises, TFN1_Para_Paises1, fsNormal, tsShowModal,
  	wsNormal, PoScreenCenter, Tabla_Ventana, False);

//Se verifica si se cargo la variable cuando le dierón click en el botón aceptar
// del módulo Child.
  If Not Variant_Vacio(Resultado) Then
	Begin
		If data_ventana.DataSet.State = dsBrowse Then
    	data_ventana.DataSet.Edit;
  	Tabla_Ventana.FieldByName('FAMI_CODI_PAIS_RESIDENCIA').Value := Resultado;
  	Tabla_Ventana.FieldByName('FAMI_CODI_DEPA_RESIDENCIA').Value := Null;
  	Tabla_Ventana.FieldByName('FAMI_CODI_CIUD_RESIDENCIA').Value := Null;
  End;
end;

{****************************************************************
Procedimiento   : BDepartamentoClick
Objetivo        : Cuando se haya elegido un Departamento en el módulo de
									Departamentos trae el resultado,
                  lo carga en el campo FAMI_CODI_DEPA_RESIDENCIA y
                  FAMI_CODI_PAIS_RESIDENCIA
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Familiar1.BDepartamentoClick(Sender: TObject);
begin
  inherited;
//Procedimiento para crear el módulo Child se encuentra en _vent_child, este procedimiento
// se utiliza si desde un módulo Modal se necesita abrir un módulo Child.
  Crear_Forma_Child(TFN1_Para_Departamentos, TFN1_Para_Departamentos1, fsNormal, tsShowModal,
  	wsNormal, PoScreenCenter, Tabla_Ventana, False);

//Se verifica si se cargo la variable cuando le dierón click en el botón aceptar
// del módulo Child.
  If Not Variant_Vacio(Resultado) Then
	Begin
		If data_ventana.DataSet.State = dsBrowse Then
    	data_ventana.DataSet.Edit;
  	Tabla_Ventana.FieldByName('FAMI_CODI_PAIS_RESIDENCIA').Value := Resultado[0];
  	Tabla_Ventana.FieldByName('FAMI_CODI_DEPA_RESIDENCIA').Value := Resultado[1];
  	Tabla_Ventana.FieldByName('FAMI_CODI_CIUD_RESIDENCIA').Value := Null;
  End;
end;

{****************************************************************
Procedimiento   : BMunicipioClick
Objetivo        : Cuando se haya elegido un Municipio en el módulo de
									Municipios trae el resultado,
                  lo carga en el campo FAMI_CODI_CIUD_RESIDENCIA,
                  FAMI_CODI_DEPA_RESIDENCIA Y FAMI_CODI_PAIS_RESIDENCIA
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 02 de marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Familiar1.BMunicipioClick(Sender: TObject);
begin
  inherited;
//Procedimiento para crear el módulo Child se encuentra en _vent_child, este procedimiento
// se utiliza si desde un módulo Modal se necesita abrir un módulo Child.
  Crear_Forma_Child(TFN1_Para_Municipios, TFN1_Para_Municipios1, fsNormal, tsShowModal,
  	wsNormal, PoScreenCenter, Tabla_Ventana, False);

//Se verifica si se cargo la variable cuando le dierón click en el botón aceptar
// del módulo Child.
  If Not Variant_Vacio(Resultado) Then
	Begin
		If data_ventana.DataSet.State = dsBrowse Then
    	data_ventana.DataSet.Edit;
  	Tabla_Ventana.FieldByName('FAMI_CODI_PAIS_RESIDENCIA').Value := Resultado[0];
  	Tabla_Ventana.FieldByName('FAMI_CODI_DEPA_RESIDENCIA').Value := Resultado[1];
  	Tabla_Ventana.FieldByName('FAMI_CODI_CIUD_RESIDENCIA').Value := Resultado[2];
  End;
end;

procedure TFN1_Pers_Familiar1.SCLButton6Click(Sender: TObject);
begin
  inherited;
//Procedimiento para crear el módulo Child se encuentra en _vent_child, este procedimiento
// se utiliza si desde un módulo Modal se necesita abrir un módulo Child.
  Crear_Forma_Child(TFN1_Para_Parentescos, TFN1_Para_Parentescos1, fsNormal, tsShowModal,
  	wsNormal, PoScreenCenter, Tabla_Ventana, False);

  If Not Variant_Vacio(Resultado) Then
  Begin
		If data_ventana.DataSet.State = dsBrowse Then
    	data_ventana.DataSet.Edit;
    Tabla_Ventana.FieldByName('FAMI_CODI_PARENTESCO').Value := Resultado;  
  End;
end;

end.

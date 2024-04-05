unit ufra_empresa;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit, SoCtrls,
  SCLDBLabel, Db, DBTables, ufra_ubic_regional, TBXDkPanels, TBXButtonSCL;

type
  Tffra_empresa = class(TFrame)
    quer_empresas: TQuery;
    quer_empresasCONS_EMPRESA: TIntegerField;
    quer_empresasNOMB_EMPRESA: TStringField;
    quer_empresasCONS_PAIS: TIntegerField;
    quer_empresasCONS_DEPARTAMENTO: TIntegerField;
    quer_empresasCONS_CIUDAD: TIntegerField;
    data_empresas: TDataSource;
    SCLDBLabel3: TSCLDBLabel;
    comb_empresas: TPCPLookUpComboEdit;
    SCLButton1: TTBXButtonSCL;
    fram_ubic_regional: Tffra_ubic_regional;
    quer_empresasCODI_EMPRESA: TStringField;
    quer_empresasNUME_IDENTIFICACION: TStringField;
    quer_empresasDIGI_VERI_NUME_IDENTIFICACION: TStringField;
    quer_empresasACTI_PRINCIPAL: TStringField;
    quer_empresasREPR_LEGAL: TStringField;
    quer_empresasDIRECCION: TStringField;
    quer_empresasTELE_1: TStringField;
    quer_empresasTELE_2: TStringField;
    quer_empresasTELE_FAX: TStringField;
    quer_empresasTELE_MOVIL: TStringField;
    quer_empresasCORR_ELECTRONICO: TStringField;
    quer_empresasPAGI_WEB: TStringField;
    quer_empresasFECH_SISTEMA: TDateTimeField;
    quer_empresasUSUA_SISTEMA: TStringField;
    procedure ffra_ubic_regional1comb_paisesChange(Sender: TObject);
    procedure comb_empresasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses _MDI;

{$R *.DFM}

procedure Tffra_empresa.ffra_ubic_regional1comb_paisesChange(
  Sender: TObject);
begin
  fram_ubic_regional.comb_paisesChange(Sender);

end;

procedure Tffra_empresa.comb_empresasChange(Sender: TObject);
var
        var_DataSource  : TDataSource;
begin
        //Validar el dataSource de la empresa
        var_DataSource := comb_empresas.DataSource;
        if (var_dataSource = Nil) or (var_dataSource.DataSet = Nil) or
                (Not var_dataSource.DataSet.Active) Then Exit;
        //Asignar la ubicación por defecto de la empresa
	If (var_DataSource.DataSet.State in [dsEdit, dsInsert]) Then
		If ((fram_ubic_regional.comb_paises.Text = '') And (fram_ubic_regional.comb_paises.dataSource<>Nil) and
                    (fram_ubic_regional.comb_departamentos.Text = '') And (fram_ubic_regional.comb_departamentos.dataSource<>Nil) and
                    (fram_ubic_regional.comb_ciudades.Text = '') And (fram_ubic_regional.comb_ciudades.dataSource<>Nil)) Then
                Begin
                    fram_ubic_regional.comb_paises.KeyValue := quer_empresas.FieldByName(fram_ubic_regional.comb_paises.DataField).AsString;
                    fram_ubic_regional.comb_departamentos.KeyValue := quer_empresas.FieldByName(fram_ubic_regional.comb_departamentos.DataField).AsString;
                    fram_ubic_regional.comb_ciudades.KeyValue := quer_empresas.FieldByName(fram_ubic_regional.comb_ciudades.DataField).AsString;
                End;
end;

end.

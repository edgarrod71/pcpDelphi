{ 17/03/2004 05:01:03 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 17/03/2004 05:00:47 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 17/03/2004 04:51:54 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 17/03/2004 04:51:45 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 17/03/2004 02:53:00 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:31 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:41:02 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in \\  }
{ 05/03/2004 10:38:09 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_para_plantas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, SCLDBLabel, DBTables, dxExEdtr, dxDBEdtr, DBCtrls,
  RxLookup, PCPLookUpComboEdit, SoCtrls, SohoBtns, SCLButton,
  ufra_ubic_regional, PictureContainer, AdvPanel, ufra_empresa, 
  Boxes, PCPFrame, PCPProceso;

type
  Tfn1_para_plantas1 = class(T_fvent_modal)
    Tabla_VentanaCODI_PLANTA: TStringField;
    Tabla_VentanaNOMB_PLANTA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaDIRECCION: TStringField;
    Tabla_VentanaTELE_1: TStringField;
    Tabla_VentanaTELE_2: TStringField;
    Tabla_VentanaTELE_FAX: TStringField;
    Tabla_VentanaTELE_MOVIL: TStringField;
    Tabla_VentanaTIPO_PLANTA: TIntegerField;
    Tabla_VentanaDESCRIPCION: TStringField;
    Tabla_VentanaCONS_PLANTA: TIntegerField;
    Tabla_VentanaCONS_EMPRESA: TIntegerField;
    Tabla_VentanaCONS_PAIS: TIntegerField;
    Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField;
    Tabla_VentanaCONS_CIUDAD: TIntegerField;
    Tabla_VentanaNOMB_RESPONSABLE: TStringField;
    Tabla_VentanaNOMB_SUPERVISOR: TStringField;
    PCPFrame1: TPCPFrame;
    fram_empresa: Tffra_empresa;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit11: TdxDBEdit;
    SCLDBLabel5: TSCLDBLabel;
    dxDBEdit12: TdxDBEdit;
    SCLDBLabel6: TSCLDBLabel;
    dxDBEdit13: TdxDBEdit;
    SCLDBLabel14: TSCLDBLabel;
    dxDBEdit14: TdxDBEdit;
    SCLDBLabel16: TSCLDBLabel;
    dxDBEdit15: TdxDBEdit;
    PCPFrame2: TPCPFrame;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    SCLDBLabel13: TSCLDBLabel;
    SCLDBLabel15: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    dxDBEdit10: TdxDBEdit;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure fram_empresacomb_empresasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_para_plantas1: Tfn1_para_plantas1;

implementation
Uses _func_varias, _Traductor;
{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 23 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_para_plantas1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas asociadas
  InicializarFrame(fram_empresa);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Asginar valores por defecto luego de insertar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 12 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_para_plantas1.Tabla_VentanaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //Asignar el tipo de planta -> Interna (0) por defecto
  tabla_ventana.FieldByName('TIPO_PLANTA').Value := 0;
end;

{****************************************************************
Procedimiento   : fram_empresacomb_empresasChange
Objetivo        : Asginar valores de empresa a la planta
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 15 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_para_plantas1.fram_empresacomb_empresasChange(
  Sender: TObject);
begin
  inherited;
  fram_empresa.comb_empresasChange(Sender);
	//Asginar valores de empresa a la planta
  Tabla_Ventana.FieldByName('CONS_PAIS').AsInteger :=
    fram_empresa.quer_empresas.FieldByName('CONS_PAIS').AsInteger;
  Tabla_Ventana.FieldByName('CONS_DEPARTAMENTO').AsInteger :=
    fram_empresa.quer_empresas.FieldByName('CONS_DEPARTAMENTO').AsInteger;
  Tabla_Ventana.FieldByName('CONS_CIUDAD').AsInteger :=
    fram_empresa.quer_empresas.FieldByName('CONS_CIUDAD').AsInteger;
  Tabla_Ventana.FieldByName('DIRECCION').AsString :=
    fram_empresa.quer_empresas.FieldByName('DIRECCION').AsString;
  Tabla_Ventana.FieldByName('TELE_1').AsString :=
    fram_empresa.quer_empresas.FieldByName('TELE_1').AsString;
  Tabla_Ventana.FieldByName('TELE_2').AsString :=
    fram_empresa.quer_empresas.FieldByName('TELE_2').AsString;
  Tabla_Ventana.FieldByName('TELE_FAX').AsString :=
    fram_empresa.quer_empresas.FieldByName('TELE_FAX').AsString;
  Tabla_Ventana.FieldByName('TELE_MOVIL').AsString :=
    fram_empresa.quer_empresas.FieldByName('TELE_MOVIL').AsString;
end;

end.

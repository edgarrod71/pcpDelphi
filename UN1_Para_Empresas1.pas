unit UN1_Para_Empresas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, DBActns, ActnList, Db, ImgList, dxCntner, dxEditor, dxEdLib,
  dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls,
  dxExEdtr, dxDBEdtr, DBTables, SCLPropiedadesForm, SCLDBLabel, RxLookup,
  PCPLookUpComboEdit, dxPageControl, SoCtrls, SohoBtns, SCLButton,
  PictureContainer, AdvPanel, ufra_ubic_regional, Boxes,
  PCPProceso;

type
  TFN1_Para_Empresas1 = class(T_fvent_modal)
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    SCLDBLabel13: TSCLDBLabel;
    DBDireccion: TdxDBEdit;
    DBRepresentante: TdxDBEdit;
    DBTelefono1: TdxDBEdit;
    DBTelefono2: TdxDBEdit;
    DBfax: TdxDBEdit;
    DBMovil: TdxDBEdit;
    DBCorreo: TdxDBEdit;
    DBPagina: TdxDBEdit;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    DBCodigo: TdxDBEdit;
    DBEmpresa: TdxDBEdit;
    fram_ubic_regional: Tffra_ubic_regional;
    Tabla_VentanaCONS_EMPRESA: TIntegerField;
    Tabla_VentanaCODI_EMPRESA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaNOMB_EMPRESA: TStringField;
    Tabla_VentanaNUME_IDENTIFICACION: TStringField;
    Tabla_VentanaDIGI_VERI_NUME_IDENTIFICACION: TStringField;
    Tabla_VentanaACTI_PRINCIPAL: TStringField;
    Tabla_VentanaREPR_LEGAL: TStringField;
    Tabla_VentanaCONS_PAIS: TIntegerField;
    Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField;
    Tabla_VentanaCONS_CIUDAD: TIntegerField;
    Tabla_VentanaDIRECCION: TStringField;
    Tabla_VentanaTELE_1: TStringField;
    Tabla_VentanaTELE_2: TStringField;
    Tabla_VentanaTELE_FAX: TStringField;
    Tabla_VentanaTELE_MOVIL: TStringField;
    Tabla_VentanaCORR_ELECTRONICO: TStringField;
    Tabla_VentanaPAGI_WEB: TStringField;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Para_Empresas1: TFN1_Para_Empresas1;

implementation

uses _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2003
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Para_Empresas1.FormCreate(Sender: TObject);
begin
  inherited;
  fram_ubic_regional.quer_paises.Open;
  fram_ubic_regional.quer_departamentos.Open;
  fram_ubic_regional.quer_ciudades.Open;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

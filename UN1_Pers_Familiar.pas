{ 05/03/2004 10:40:06 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:33 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Pers_Familiar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, SCLPropiedadesForm, Db, DBTables, ImgList, Menus, TB2Item,
  TBX, ActnList, ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock,
  TBXDkPanels, dxCntner, dxDBCtrl, dxDBGrid, dxPageControl, dxDBTLCl,
  dxGrClms, dxExEdtr;

type
  TFN1_Pers_Familiar = class(T_fvent_child)
    consultaCODI_PERSONAL: TStringField;
    consultaFAMI_PRIM_APELLIDO: TStringField;
    consultaFAMI_SEGU_APELLIDO: TStringField;
    consultaFAMI_NOMBRES: TStringField;
    consultaFAMI_CODI_PARENTESCO: TStringField;
    consultaFAMI_FECH_NACIMIENTO: TDateTimeField;
    consultaFAMI_CODI_PAIS_RESIDENCIA: TStringField;
    consultaFAMI_CODI_DEPA_RESIDENCIA: TStringField;
    consultaFAMI_CODI_CIUD_RESIDENCIA: TStringField;
    consultaFAMI_DIRE_RESIDENCIA: TStringField;
    consultaFAMI_TELE_RESIDENCIA: TStringField;
    consultaFAMI_TELE_OTRO: TStringField;
    consultaFAMI_TELE_MOVIL: TStringField;
    consultaFAMI_CODI_TIPO_DOCU_IDENTIDAD: TStringField;
    consultaFAMI_NUME_DOCU_IDENTIDAD: TStringField;
    consultaFAMI_OCUPACION: TStringField;
    consultaFAMI_NOMB_EMPRESA: TStringField;
    consultaFAMI_DIRE_EMPRESA: TStringField;
    consultaFAMI_TELE_EMPRESA: TStringField;
    consultaFAMI_CORR_ELECTRONICO: TStringField;
    consultaCODI_PERSONAL1: TStringField;
    consultaPRIM_APELLIDO: TStringField;
    consultaSEGU_APELLIDO: TStringField;
    consultaNOMBRES: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCODI_AREA: TStringField;
    consultaCODI_PLANTA: TStringField;
    consultaCODI_SECCION: TStringField;
    consultaCODI_BODEGA: TStringField;
    consultaCODI_TURNO: TStringField;
    consultaCODI_CARGO: TStringField;
    consultaNOMB_COMPLETO: TStringField;
    consultaNOMB_PARENTESCO: TStringField;
    consultaNOMB_PAIS: TStringField;
    consultaNOMB_DEPARTAMENTO: TStringField;
    consultaNOMB_CIUDAD: TStringField;
    consultaNOMB_TIPO_DOCUMENTO: TStringField;
    padr_gridCODI_PERSONAL: TdxDBGridMaskColumn;
    padr_gridFAMI_PRIM_APELLIDO: TdxDBGridMaskColumn;
    padr_gridFAMI_SEGU_APELLIDO: TdxDBGridMaskColumn;
    padr_gridFAMI_NOMBRES: TdxDBGridMaskColumn;
    padr_gridFAMI_CODI_PARENTESCO: TdxDBGridMaskColumn;
    padr_gridFAMI_FECH_NACIMIENTO: TdxDBGridDateColumn;
    padr_gridFAMI_CODI_PAIS_RESIDENCIA: TdxDBGridMaskColumn;
    padr_gridFAMI_CODI_DEPA_RESIDENCIA: TdxDBGridMaskColumn;
    padr_gridFAMI_CODI_CIUD_RESIDENCIA: TdxDBGridMaskColumn;
    padr_gridFAMI_DIRE_RESIDENCIA: TdxDBGridMaskColumn;
    padr_gridFAMI_TELE_RESIDENCIA: TdxDBGridMaskColumn;
    padr_gridFAMI_TELE_OTRO: TdxDBGridMaskColumn;
    padr_gridFAMI_TELE_MOVIL: TdxDBGridMaskColumn;
    padr_gridFAMI_CODI_TIPO_DOCU_IDENTIDAD: TdxDBGridMaskColumn;
    padr_gridFAMI_NUME_DOCU_IDENTIDAD: TdxDBGridMaskColumn;
    padr_gridFAMI_OCUPACION: TdxDBGridMaskColumn;
    padr_gridFAMI_NOMB_EMPRESA: TdxDBGridMaskColumn;
    padr_gridFAMI_DIRE_EMPRESA: TdxDBGridMaskColumn;
    padr_gridFAMI_TELE_EMPRESA: TdxDBGridMaskColumn;
    padr_gridFAMI_CORR_ELECTRONICO: TdxDBGridMaskColumn;
    padr_gridCODI_PERSONAL1: TdxDBGridMaskColumn;
    padr_gridPRIM_APELLIDO: TdxDBGridMaskColumn;
    padr_gridSEGU_APELLIDO: TdxDBGridMaskColumn;
    padr_gridNOMBRES: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridCODI_AREA: TdxDBGridMaskColumn;
    padr_gridCODI_PLANTA: TdxDBGridMaskColumn;
    padr_gridCODI_SECCION: TdxDBGridMaskColumn;
    padr_gridCODI_BODEGA: TdxDBGridMaskColumn;
    padr_gridCODI_TURNO: TdxDBGridMaskColumn;
    padr_gridCODI_CARGO: TdxDBGridMaskColumn;
    padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    padr_gridNOMB_PARENTESCO: TdxDBGridMaskColumn;
    padr_gridNOMB_PAIS: TdxDBGridMaskColumn;
    padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Familiar: TFN1_Pers_Familiar;

implementation
{$R *.DFM}

end.

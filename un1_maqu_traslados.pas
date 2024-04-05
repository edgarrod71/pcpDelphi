unit un1_maqu_traslados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  Tfn1_maqu_traslados = class(T_fvent_child)
    consultaSECU_MOVIMIENTO: TIntegerField;
    consultaCODI_MAQUINA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaFECH_INICIAL: TDateTimeField;
    consultaOBSERVACIONES: TMemoField;
    consultaCODI_EMPR_ANTERIOR: TStringField;
    consultaNOMB_EMPR_ANTERIOR: TStringField;
    consultaCODI_AREA_ANTERIOR: TStringField;
    consultaNOMB_AREA_ANTERIOR: TStringField;
    consultaCODI_PLAN_ANTERIOR: TStringField;
    consultaNOMB_PLAN_ANTERIOR: TStringField;
    consultaCODI_SECC_ANTERIOR: TStringField;
    consultaNOMB_SECC_ANTERIOR: TStringField;
    consultaCODI_BODE_ANTERIOR: TStringField;
    consultaNOMB_BODE_ANTERIOR: TStringField;
    consultaSOLICITA: TStringField;
    consultaENTREGA: TStringField;
    consultaRECIBE: TStringField;
    consultaANULADO: TIntegerField;
    padr_gridSECU_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCODI_MAQUINA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridFECH_INICIAL: TdxDBGridDateColumn;
    padr_gridCODI_EMPR_ANTERIOR: TdxDBGridMaskColumn;
    padr_gridNOMB_EMPR_ANTERIOR: TdxDBGridMaskColumn;
    padr_gridCODI_AREA_ANTERIOR: TdxDBGridMaskColumn;
    padr_gridNOMB_AREA_ANTERIOR: TdxDBGridMaskColumn;
    padr_gridCODI_PLAN_ANTERIOR: TdxDBGridMaskColumn;
    padr_gridNOMB_PLAN_ANTERIOR: TdxDBGridMaskColumn;
    padr_gridCODI_SECC_ANTERIOR: TdxDBGridMaskColumn;
    padr_gridNOMB_SECC_ANTERIOR: TdxDBGridMaskColumn;
    padr_gridCODI_BODE_ANTERIOR: TdxDBGridMaskColumn;
    padr_gridNOMB_BODE_ANTERIOR: TdxDBGridMaskColumn;
    padr_gridSOLICITA: TdxDBGridMaskColumn;
    padr_gridENTREGA: TdxDBGridMaskColumn;
    padr_gridRECIBE: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridMemoColumn;
    padr_gridANULADO: TdxDBGridCheckColumn;
    quer_glo_empresas: TQuery;
    quer_glo_areas: TQuery;
    quer_glo_plantas: TQuery;
    quer_glo_secciones: TQuery;
    quer_glo_bodegas: TQuery;
    consultaOTRA_UBICACION: TStringField;
    padr_gridOTRA_UBICACION: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_traslados: Tfn1_maqu_traslados;

implementation
uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_traslados.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  AbrirDataSet(quer_glo_empresas);
  AbrirDataSet(quer_glo_areas);
  AbrirDataSet(quer_glo_plantas);
  AbrirDataSet(quer_glo_secciones);
  AbrirDataSet(quer_glo_bodegas);
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

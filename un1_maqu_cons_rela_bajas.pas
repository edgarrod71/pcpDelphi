unit un1_maqu_cons_rela_bajas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dxEditor, dxEdLib, StdCtrls, SoCtrls, SCLDBLabel,
  SCLDialogoFecha;

type
  Tfn1_maqu_cons_rela_bajas = class(T_fvent_child)
    consultaSECU_MOVIMIENTO: TIntegerField;
    consultaCODI_MAQUINA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaFECH_INICIAL: TDateTimeField;
    consultaCODI_MAQU_TIPO_MOVIMIENTO: TStringField;
    consultaNOMB_MAQU_TIPO_MOVIMIENTO: TStringField;
    consultaCODI_MAQU_UBICACION: TStringField;
    consultaNOMB_MAQU_UBICACION: TStringField;
    consultaCODI_EMPRESA: TStringField;
    consultaNOMB_EMPRESA: TStringField;
    consultaCODI_AREA: TStringField;
    consultaNOMB_AREA: TStringField;
    consultaCODI_PLANTA: TStringField;
    consultaNOMB_PLANTA: TStringField;
    consultaCODI_SECCION: TStringField;
    consultaNOMB_SECCION: TStringField;
    consultaCODI_BODEGA: TStringField;
    consultaNOMB_BODEGA: TStringField;
    consultaOTRA_UBICACION: TStringField;
    consultaSOLICITA: TStringField;
    consultaENTREGA: TStringField;
    consultaRECIBE: TStringField;
    consultaANULADO: TIntegerField;
    padr_gridSECU_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCODI_MAQUINA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridFECH_INICIAL: TdxDBGridDateColumn;
    padr_gridCODI_MAQU_TIPO_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridNOMB_MAQU_TIPO_MOVIMIENTO: TdxDBGridMaskColumn;
    padr_gridCODI_MAQU_UBICACION: TdxDBGridMaskColumn;
    padr_gridNOMB_MAQU_UBICACION: TdxDBGridMaskColumn;
    padr_gridCODI_EMPRESA: TdxDBGridCheckColumn;
    padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn;
    padr_gridCODI_AREA: TdxDBGridMaskColumn;
    padr_gridNOMB_AREA: TdxDBGridMaskColumn;
    padr_gridCODI_PLANTA: TdxDBGridMaskColumn;
    padr_gridNOMB_PLANTA: TdxDBGridMaskColumn;
    padr_gridCODI_SECCION: TdxDBGridMaskColumn;
    padr_gridNOMB_SECCION: TdxDBGridMaskColumn;
    padr_gridCODI_BODEGA: TdxDBGridMaskColumn;
    padr_gridNOMB_BODEGA: TdxDBGridMaskColumn;
    padr_gridOTRA_UBICACION: TdxDBGridMaskColumn;
    padr_gridSOLICITA: TdxDBGridMaskColumn;
    padr_gridENTREGA: TdxDBGridMaskColumn;
    padr_gridRECIBE: TdxDBGridMaskColumn;
    padr_gridANULADO: TdxDBGridCheckColumn;
    tabl_maquinaria: TTable;
    tabl_maquinariaCODI_MAQUINA: TStringField;
    tabl_maquinariaCODI_INTERNO: TStringField;
    tabl_maquinariaCODI_MAQU_GRUPO: TStringField;
    tabl_maquinariaNOMB_MAQU_GRUPO: TStringField;
    tabl_maquinariaCODI_MAQU_TIPO: TStringField;
    tabl_maquinariaCODI_MAQU_FAMILIA: TStringField;
    tabl_maquinariaNOMB_MAQU_FAMILIA: TStringField;
    tabl_maquinariaNOMB_MAQU_TIPO: TStringField;
    tabl_maquinariaCLASE: TStringField;
    tabl_maquinariaCODI_MAQU_MARCA: TStringField;
    tabl_maquinariaNOMB_MAQU_MARCA: TStringField;
    tabl_maquinariaNUME_SERIE: TStringField;
    tabl_maquinariaCODI_TIPO_PUNTADA: TStringField;
    tabl_maquinariaRPM: TIntegerField;
    tabl_maquinariaNOMB_TIPO_DOCU_ENTRADA: TStringField;
    tabl_maquinariaNUME_DOCU_ENTRADA: TStringField;
    consultaStringField: TStringField;
    consultaStringField2: TStringField;
    consultaStringField3: TStringField;
    consultaStringField4: TStringField;
    consultaStringField5: TStringField;
    consultaStringField6: TStringField;
    consultaStringField7: TStringField;
    consultaStringField8: TStringField;
    consultaStringField9: TStringField;
    consultaStringField10: TStringField;
    consultaStringField11: TStringField;
    consultaStringField12: TStringField;
    consultaIntegerField: TIntegerField;
    consultaStringField13: TStringField;
    consultaStringField14: TStringField;
    padr_gridColumn25: TdxDBGridColumn;
    padr_gridColumn26: TdxDBGridColumn;
    padr_gridColumn27: TdxDBGridColumn;
    padr_gridColumn28: TdxDBGridColumn;
    padr_gridColumn29: TdxDBGridColumn;
    padr_gridColumn30: TdxDBGridColumn;
    padr_gridColumn31: TdxDBGridColumn;
    padr_gridColumn32: TdxDBGridColumn;
    padr_gridColumn33: TdxDBGridColumn;
    padr_gridColumn34: TdxDBGridColumn;
    padr_gridColumn35: TdxDBGridColumn;
    padr_gridColumn36: TdxDBGridColumn;
    padr_gridColumn37: TdxDBGridColumn;
    padr_gridColumn38: TdxDBGridColumn;
    padr_gridColumn39: TdxDBGridColumn;
    TBControlItem1: TTBControlItem;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    edit_fech_desde: TdxEdit;
    edit_fech_hasta: TdxEdit;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    dial_fecha: TSCLDialogoFecha;
    acti_ventana: TActionList;
    acti_solo_activos: TAction;
    TBXItem7: TTBXItem;
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_comu_sele_rang_fechasExecute(Sender: TObject);
    procedure PrepararConsulta(Sender: TObject);
    procedure acti_solo_activosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_cons_rela_bajas: Tfn1_maqu_cons_rela_bajas;

Const
   cosQueryConsulta     = 'Select * from VIS_PCP_MAQU_BAJAS '+
                          'Where not (codi_maquina is null)';
   cosOrderByConsulta   = 'Order by secu_movimiento';

implementation
uses _func_varias, _vari_pcp, _cons_pcp;
{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 5 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_cons_rela_bajas.FormCreate(Sender: TObject);
begin
  //Editores de Fechas
  edit_fech_desde.Text := cosNoAplica;
  edit_Fech_hasta.Text := cosNoAplica;
  //Preparar el query
  Consulta.Prepare;
  inherited;
  AbrirDataSet(tabl_maquinaria);
end;
{****************************************************************
Procedimiento   : padr_acti_comu_sele_rang_fechasExecute
Objetivo        : Ejecutar el dialogo de seleccion de fechas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 05 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_cons_rela_bajas.padr_acti_comu_sele_rang_fechasExecute(
  Sender: TObject);
begin
  inherited;
  Dial_Fecha.Execute;
  PrepararConsulta(Sender);
end;
{****************************************************************
Procedimiento   : PrepararConsulta
Objetivo        : Prepara el SQL de la consulta de bajas
                  y la abre
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 05 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_cons_rela_bajas.PrepararConsulta(Sender: TObject);
begin
  inherited;
  With consulta do
  Begin
      //Cerrar y limpiar
      Close;
      Sql.Clear;
      Sql.Add(cosQueryConsulta);
      If edit_Fech_desde.Text <> cosNoAplica then
         Sql.Add('And (fech_inicial >= "'+DateToSQLDate(edit_fech_desde.text)+'")');
      If edit_Fech_hasta.Text <> cosNoAplica then
         Sql.Add('And (fech_inicial <= "'+DateToSQLDate(edit_fech_hasta.Text)+'")');
      if acti_solo_activos.checked then
         Sql.Add('And (Anulado = -1)');
      //Ordenarlo
      Sql.Add(cosOrderByConsulta);
      AbrirDataSet(Consulta);
  End;
end;
{****************************************************************
Procedimiento   : acti_solo_activosExecute
Objetivo        : Ver/Ocultar los registros de baja anulados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 05 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_cons_rela_bajas.acti_solo_activosExecute(
  Sender: TObject);
begin
  inherited;
  //Cambiar el check de la acción
  acti_solo_activos.Checked := not acti_solo_activos.Checked;
  //Reabrir la consulta
  PrepararConsulta(Sender);
end;

end.

unit un1_maqu_cons_rela_ingr_inventario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm, Db,
  DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, StdCtrls, SoCtrls, SCLDBLabel, dxEditor, dxEdLib,
  TB2ExtItems, TBXExtItems, SCLDialogoFecha;

type
  Tfn1_maqu_cons_rela_ingr_inventario = class(T_fvent_child)
    consultaCODI_MAQUINA: TStringField;
    consultaCODI_INTERNO: TStringField;
    consultaCODI_MAQU_GRUPO: TStringField;
    consultaNOMB_MAQU_GRUPO: TStringField;
    consultaCODI_MAQU_TIPO: TStringField;
    consultaNOMB_MAQU_TIPO: TStringField;
    consultaCODI_MAQU_FAMILIA: TStringField;
    consultaNOMB_MAQU_FAMILIA: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaFECH_COMPRA: TDateTimeField;
    consultaCLASE: TStringField;
    consultaCODI_MAQU_MARCA: TStringField;
    consultaNOMB_MAQU_MARCA: TStringField;
    consultaNUME_SERIE: TStringField;
    consultaCODI_TIPO_PUNTADA: TStringField;
    consultaRPM: TIntegerField;
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
    consultaCARACTERISTICAS: TMemoField;
    consultaCODI_TIPO_DOCU_ENTRADA: TStringField;
    consultaNOMB_TIPO_DOCU_ENTRADA: TStringField;
    consultaNUME_DOCU_ENTRADA: TStringField;
    consultaFECH_INGRESO: TDateTimeField;
    consultaNOMB_ENTREGA: TStringField;
    consultaNOMB_RECIBE: TStringField;
    padr_gridCODI_MAQUINA: TdxDBGridMaskColumn;
    padr_gridCODI_INTERNO: TdxDBGridMaskColumn;
    padr_gridCODI_MAQU_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_MAQU_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MAQU_TIPO: TdxDBGridMaskColumn;
    padr_gridNOMB_MAQU_TIPO: TdxDBGridMaskColumn;
    padr_gridCODI_MAQU_FAMILIA: TdxDBGridMaskColumn;
    padr_gridNOMB_MAQU_FAMILIA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridFECH_COMPRA: TdxDBGridDateColumn;
    padr_gridCLASE: TdxDBGridMaskColumn;
    padr_gridCODI_MAQU_MARCA: TdxDBGridMaskColumn;
    padr_gridNOMB_MAQU_MARCA: TdxDBGridMaskColumn;
    padr_gridNUME_SERIE: TdxDBGridMaskColumn;
    padr_gridCODI_TIPO_PUNTADA: TdxDBGridMaskColumn;
    padr_gridRPM: TdxDBGridMaskColumn;
    padr_gridNOMB_MAQU_UBICACION: TdxDBGridMaskColumn;
    padr_gridCODI_EMPRESA: TdxDBGridMaskColumn;
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
    padr_gridCODI_TIPO_DOCU_ENTRADA: TdxDBGridMaskColumn;
    padr_gridNOMB_TIPO_DOCU_ENTRADA: TdxDBGridMaskColumn;
    padr_gridNUME_DOCU_ENTRADA: TdxDBGridMaskColumn;
    padr_gridFECH_INGRESO: TdxDBGridDateColumn;
    padr_gridNOMB_ENTREGA: TdxDBGridMaskColumn;
    padr_gridNOMB_RECIBE: TdxDBGridMaskColumn;
    TBXSeparatorItem3: TTBXSeparatorItem;
    Panel1: TPanel;
    TBControlItem1: TTBControlItem;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    edit_fech_desde: TdxEdit;
    edit_fech_hasta: TdxEdit;
    acci_ventana: TActionList;
    acti_loca_regi_ingreso: TAction;
    acti_loca_movimientos: TAction;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    popu_loca_grid: TTBXPopupMenu;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    dial_fecha: TSCLDialogoFecha;
    procedure FormCreate(Sender: TObject);
    procedure acti_sele_rang_fechasExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure data_ventanaStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
   cosQueryConsulta     = 'Select * from con_pcp_maquinaria("NOW")'+
                          'Where not (codi_maquina is null)';
   cosOrderByConsulta   = 'Order by fech_ingreso';

var
  fn1_maqu_cons_rela_ingr_inventario: Tfn1_maqu_cons_rela_ingr_inventario;

implementation
uses _func_varias, _vari_pcp, _cons_pcp;
{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 05 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_cons_rela_ingr_inventario.FormCreate(Sender: TObject);
begin
  inherited;
  //Editores de Fechas
  edit_fech_desde.Text := cosNoAplica;
  edit_Fech_hasta.Text := cosNoAplica;
end;

procedure Tfn1_maqu_cons_rela_ingr_inventario.acti_sele_rang_fechasExecute(
  Sender: TObject);
begin
  inherited;
  dial_fecha.Execute;
  //Cerrar la consulta y variar los parámetros
  With consulta do
  Begin
      //Cerrar y limpiar
      Close;
      Sql.Clear;
      Sql.Add(cosQueryConsulta);
      If edit_Fech_desde.Text <> cosNoAplica then
         Sql.Add('And (fech_ingreso >= "'+DateToSQLDate(edit_fech_desde.text)+'")');
      If edit_Fech_hasta.Text <> cosNoAplica then
         Sql.Add('And (fech_ingreso <= "'+DateToSQLDate(edit_fech_hasta.Text)+'")');
      //Ordenarlo
      Sql.Add(cosOrderByConsulta);
      AbrirDataSet(Consulta);
  End;
end;
{****************************************************************
Procedimiento   : FormClose
Objetivo        : Liberar los controles antes de cerrar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Abril 1 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_cons_rela_ingr_inventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //Unprepare query
  Consulta.Close;
  consulta.UnPrepare;
end;

procedure Tfn1_maqu_cons_rela_ingr_inventario.data_ventanaStateChange(
  Sender: TObject);
begin
  inherited;
  //Estado de las acciones de la ventana
  acti_loca_regi_ingreso.Enabled := (Consulta.Active) And (Consulta.RecordCount >0) and (padr_grid.SelectedCount>0);
  acti_loca_movimientos.Enabled := (Consulta.Active) And (Consulta.RecordCount >0) and (padr_grid.SelectedCount>0);
end;

end.

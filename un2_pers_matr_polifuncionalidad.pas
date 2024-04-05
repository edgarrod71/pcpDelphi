unit un2_pers_matr_polifuncionalidad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal_alone, PictureContainer, DBTables, AdvPanel,
  dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  ExtCtrls, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  TB2Item, TBX, TB2Dock, TB2Toolbar, Boxes, PCPFrame, RxMemDS, RxLookup,
  PCPLookUpComboEdit, dfsSplitter, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms, MemTable, PCPProceso;

type
  Tfn2_pers_matr_polifuncionalidad = class(T_fvent_modal_alone)
    PCPFrame1: TPCPFrame;
    myTabla_ventana: TRxMemoryData;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    comb_codi_personal: TPCPLookUpComboEdit;
    comb_nomb_personal: TPCPLookUpComboEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    quer_info_personal: TQuery;
    quer_pers_codigo: TQuery;
    quer_pers_nombre: TQuery;
    data_pers_codigo: TDataSource;
    data_pers_nombre: TDataSource;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    myTabla_ventanacons_personal: TIntegerField;
    data_info_personal: TDataSource;
    Panel1: TPanel;
    PCPFrame2: TPCPFrame;
    PCPFrame3: TPCPFrame;
    dfsSplitter1: TdfsSplitter;
    Panel3: TPanel;
    grid_recursos: TdxDBGrid;
    quer_poli_recursos: TQuery;
    data_poli_recursos: TDataSource;
    quer_poli_recursosCONS_CONSULTA: TIntegerField;
    quer_poli_recursosHABILITADO: TIntegerField;
    quer_poli_recursosCONS_RECU_FAMILIA: TIntegerField;
    quer_poli_recursosCODI_RECU_FAMILIA: TStringField;
    quer_poli_recursosNOMB_RECU_FAMILIA: TStringField;
    quer_poli_recursosE: TIntegerField;
    quer_poli_recursosN: TIntegerField;
    quer_poli_recursosA: TIntegerField;
    grid_recursosCONS_CONSULTA: TdxDBGridMaskColumn;
    grid_recursosHABILITADO: TdxDBGridCheckColumn;
    grid_recursosCONS_RECU_FAMILIA: TdxDBGridMaskColumn;
    grid_recursosCODI_RECU_FAMILIA: TdxDBGridMaskColumn;
    grid_recursosNOMB_RECU_FAMILIA: TdxDBGridMaskColumn;
    grid_recursosE: TdxDBGridCheckColumn;
    grid_recursosN: TdxDBGridCheckColumn;
    grid_recursosA: TdxDBGridCheckColumn;
    tabl_poli_recursos: TMemoryTable;
    grid_operaciones: TdxDBGrid;
    quer_poli_operaciones: TQuery;
    data_poli_operaciones: TDataSource;
    tabl_poli_operaciones: TMemoryTable;
    quer_poli_operacionesCONS_CONSULTA: TIntegerField;
    quer_poli_operacionesHABILITADO: TIntegerField;
    quer_poli_operacionesCONS_RECU_FAMILIA: TIntegerField;
    quer_poli_operacionesCONS_OPER_COSTURA: TIntegerField;
    quer_poli_operacionesCODI_OPER_COSTURA: TStringField;
    quer_poli_operacionesNOMB_OPER_COSTURA: TStringField;
    quer_poli_operacionesE: TIntegerField;
    quer_poli_operacionesN: TIntegerField;
    quer_poli_operacionesA: TIntegerField;
    quer_poli_operacionesCODI_RECU_FAMILIA: TStringField;
    grid_operacionesCONS_CONSULTA: TdxDBGridMaskColumn;
    grid_operacionesCONS_RECU_FAMILIA: TdxDBGridMaskColumn;
    grid_operacionesCODI_RECU_FAMILIA: TdxDBGridMaskColumn;
    grid_operacionesCONS_OPER_COSTURA: TdxDBGridMaskColumn;
    grid_operacionesCODI_OPER_COSTURA: TdxDBGridMaskColumn;
    grid_operacionesNOMB_OPER_COSTURA: TdxDBGridMaskColumn;
    Panel2: TPanel;
    grid_operacionesHABILITADO: TdxDBGridCheckColumn;
    grid_operacionesE: TdxDBGridCheckColumn;
    grid_operacionesN: TdxDBGridCheckColumn;
    grid_operacionesA: TdxDBGridCheckColumn;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure doActualizarDatos(Sender: TObject);
    procedure grid_recursosEToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure grid_operacionesHABILITADOToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure TBXItem2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_pers_matr_polifuncionalidad: Tfn2_pers_matr_polifuncionalidad;

implementation

uses _func_varias, un2_pers_matr_poli_nuev_operacion;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_pers_matr_polifuncionalidad.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar controles
  colorGrid(grid_recursos);
  ColorGrid(grid_operaciones);
  //Abrir las consultas
  AbrirDataSet(quer_pers_codigo);
  AbrirDataSet(quer_pers_nombre);
  quer_info_personal.Prepare;
  quer_poli_recursos.Prepare;
  InicializarCombo(comb_codi_personal);

  DoActualizarDatos(Sender);
  AbrirDataSet(quer_info_personal);
end;
{****************************************************************
Procedimiento   : FormDestroy
Objetivo        : Liberar objetos antes de destruir
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_pers_matr_polifuncionalidad.FormDestroy(Sender: TObject);
begin
  unPrepare(quer_info_personal);
  unPrepare(quer_poli_recursos);
  inherited;
end;
{****************************************************************
Procedimiento   : doActualizarDatos
Objetivo        : Actualizar los controles cuando cambie el personal
                  activo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_pers_matr_polifuncionalidad.doActualizarDatos(
  Sender: TObject);
var
        var_integer     :Integer;
begin
  inherited;
  //Guardar los cambios en la tabla de memoria
  Try
        //Deshabilitar controles DB
        myTabla_ventana.DisableControls;
        quer_info_personal.DisableControls;
        tabl_poli_recursos.DisableControls;
        tabl_poli_operaciones.DisableControls;
        if (myTabla_Ventana.State in [dsEdit, dsInsert]) Then
              myTabla_ventana.Post;
        //Consulta de polifuncionalidad recursos
        With tabl_poli_recursos do
        Begin
              Close;
              CopyStructure(quer_poli_recursos);
              BatchMove(quer_poli_recursos, batCopy, var_integer);
              Open;
        End;              
        //Consulta de polifuncionalidad recursos
        With tabl_poli_operaciones do
        Begin
              Close;
              CopyStructure(quer_poli_operaciones);
              BatchMove(quer_poli_operaciones, batCopy, var_integer);
              Open;
        End;              
  Finally
        //Habilitar controles DB
        myTabla_ventana.EnableControls;
        quer_info_personal.EnableControls;
        tabl_poli_recursos.EnableControls;
        tabl_poli_operaciones.EnableControls;
  End;
end;

procedure Tfn2_pers_matr_polifuncionalidad.grid_recursosEToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
begin
  inherited;
  With tabl_poli_recursos do
  Begin
      //Eliminar los otros
      FieldByName('E').Value := '-1';
      FieldByName('A').Value := '-1';
      FieldByName('N').Value := '-1';
      //Por defecto Normal  cuando 
      If (UpperCase(Grid_recursos.focusedField.FieldName)='HABILITADO') then
      Begin
            if (tabl_poli_recursos.FieldByName('habilitado').Value = 1)  Then  FieldByName('A').Value := 1;
      End
      Else
           //Checkear el que envia
            grid_recursos.FocusedField.Value := 1;   
  End;
end;

procedure Tfn2_pers_matr_polifuncionalidad.grid_operacionesHABILITADOToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
begin
  inherited;
  With tabl_poli_operaciones do
  Begin
      //Eliminar los otros
      FieldByName('E').Value := '-1';
      FieldByName('A').Value := '-1';
      FieldByName('N').Value := '-1';
      //Por defecto Normal  cuando 
      If (UpperCase(Grid_operaciones.focusedField.FieldName)='HABILITADO') then
      Begin
            if (tabl_poli_operaciones.FieldByName('habilitado').Value = 1)  Then  FieldByName('A').Value := 1;
      End
      Else
           //Checkear el que envia
            grid_operaciones.FocusedField.Value := 1;   
  End;
end;

procedure Tfn2_pers_matr_polifuncionalidad.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(Tfn2_pers_matr_poli_nuev_operacion, fn2_pers_matr_poli_nuev_operacion);
  fn2_pers_matr_poli_nuev_operacion.DoEjecutarFrame(myTabla_ventana.FieldByName('cons_personal').AsInteger);
  doActualizarDatos(Sender);
end;

end.

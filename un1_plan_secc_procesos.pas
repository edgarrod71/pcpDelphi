unit un1_plan_secc_procesos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal_alone, PictureContainer, DBTables, AdvPanel,
  dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  ExtCtrls, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  TB2Item, TBX, TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, Boxes,
  PCPFrame, dxTL, dxDBCtrl, dxDBGrid, RxMemDS, SohoBtns, SCLButton,
  dxDBTLCl, dxGrClms, PCPProceso;

type
  tfn1_plan_secc_procesos = class(T_fvent_modal_alone)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    comb_secciones: TPCPLookUpComboEdit;
    Panel2: TPanel;
    PCPFrame1: TPCPFrame;
    grid: TdxDBGrid;
    myTabla_ventana: TRxMemoryData;
    quer_secciones: TQuery;
    data_secciones: TDataSource;
    grid_procesos: TdxDBGrid;
    Panel3: TPanel;
    boto_adelante: TSCLButton;
    boto_atras: TSCLButton;
    quer_procesos: TQuery;
    data_procesos: TDataSource;
    grid_procesosCONS_REFE_ESTILO: TdxDBGridMaskColumn;
    grid_procesosNOMB_REFE_ESTILO: TdxDBGridMaskColumn;
    tabl_plan_secc_procesos: TTable;
    data_plan_secc_procesos: TDataSource;
    myTabla_ventanacons_seccion: TIntegerField;
    quer_procesosCONS_PROCESO: TIntegerField;
    quer_procesosNOMB_PROCESO: TStringField;
    tabl_plan_secc_procesosCONS_PLAN_SECC_PROCESO: TIntegerField;
    tabl_plan_secc_procesosCONS_SECCION: TIntegerField;
    tabl_plan_secc_procesosCONS_PROCESO: TIntegerField;
    tabl_plan_secc_procesosNOMB_PROCESO: TStringField;
    gridCONS_PLAN_SECC_PROCESO: TdxDBGridMaskColumn;
    gridCONS_SECCION: TdxDBGridMaskColumn;
    gridCONS_PROCESO: TdxDBGridMaskColumn;
    gridNOMB_PROCESO: TdxDBGridLookupColumn;
    gridFECH_SISTEMA: TdxDBGridMaskColumn;
    gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    tabl_plan_secc_procesosFECH_SISTEMA: TDateTimeField;
    tabl_plan_secc_procesosUSUA_SISTEMA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure boto_atrasClick(Sender: TObject);
    procedure boto_adelanteClick(Sender: TObject);
    procedure tabl_plan_secc_procesosBeforePost(DataSet: TDataSet);
    procedure comb_seccionesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_plan_secc_procesos: tfn1_plan_secc_procesos;

implementation

uses _func_varias, _MDI;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure tfn1_plan_secc_procesos.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar controles
  ColorGrid(Grid);
  ColorGrid(grid_procesos);
  //Abrir las consultas
  AbrirDataSet(quer_secciones);
  AbrirDataSet(quer_procesos);
  AbrirDataSet(tabl_plan_secc_procesos);
  InicializarCombo(comb_secciones);
end;

procedure tfn1_plan_secc_procesos.boto_atrasClick(Sender: TObject);
begin
  inherited;
  grid.DeleteSelection;
end;

procedure tfn1_plan_secc_procesos.boto_adelanteClick(
  Sender: TObject);
Var
        var_fila        : Integer;
        var_cons_proceso : Integer;
begin
  inherited;
  //Recorrer e insertar las seleccionadas
  With tabl_plan_secc_procesos, grid_procesos do
      For var_fila := 1 to data_procesos.DataSet.RecordCount do
          //Verificar que esté seleccionado
          if Items[var_fila - 1].Selected Then
          Begin
              //Asignar los valores a variables
              var_cons_proceso := Items[var_fila - 1].Values[0];
              //Buscar en la tabla de memoria
              if Not Locate('cons_proceso', var_cons_proceso, []) Then
              Begin
                //Si no existe, crear
                tabl_plan_secc_procesos.Insert;
                FieldByName('cons_proceso').Value := var_cons_proceso;
                Post;
              End;
          End;
end;

procedure tfn1_plan_secc_procesos.tabl_plan_secc_procesosBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  GenerarSecuencia(tabl_plan_secc_procesos);
end;

procedure tfn1_plan_secc_procesos.comb_seccionesChange(Sender: TObject);
begin
  inherited;
  if (myTabla_ventana.State in [dsEdit, dsInsert]) Then
        myTabla_Ventana.Post;
end;

end.

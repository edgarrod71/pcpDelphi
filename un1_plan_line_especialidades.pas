unit un1_plan_line_especialidades;

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
  Tfn1_plan_line_especialidades = class(T_fvent_modal_alone)
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    comb_lineas: TPCPLookUpComboEdit;
    Panel2: TPanel;
    PCPFrame1: TPCPFrame;
    grid: TdxDBGrid;
    myTabla_ventana: TRxMemoryData;
    quer_lineas: TQuery;
    data_lineas: TDataSource;
    myTabla_ventanacons_linea: TIntegerField;
    grid_estilos: TdxDBGrid;
    Panel3: TPanel;
    boto_adelante: TSCLButton;
    boto_atras: TSCLButton;
    quer_refe_estilos: TQuery;
    data_refe_estilos: TDataSource;
    quer_refe_estilosCONS_REFE_ESTILO: TIntegerField;
    quer_refe_estilosNOMB_REFE_ESTILO: TStringField;
    grid_estilosCONS_REFE_ESTILO: TdxDBGridMaskColumn;
    grid_estilosNOMB_REFE_ESTILO: TdxDBGridMaskColumn;
    tabl_plan_line_especialidades: TTable;
    data_plan_line_especialidades: TDataSource;
    tabl_plan_line_especialidadesCONS_PLAN_LINE_ESPECIALIDAD: TIntegerField;
    tabl_plan_line_especialidadesCONS_LINEA: TIntegerField;
    tabl_plan_line_especialidadesCONS_REFE_ESTILO: TIntegerField;
    tabl_plan_line_especialidadesFECH_SISTEMA: TDateTimeField;
    tabl_plan_line_especialidadesUSUA_SISTEMA: TStringField;
    tabl_plan_line_especialidadesNOMB_REFE_ESTILO: TStringField;
    gridCONS_PLAN_LINE_ESPECIALIDAD: TdxDBGridMaskColumn;
    gridCONS_LINEA: TdxDBGridMaskColumn;
    gridCONS_REFE_ESTILO: TdxDBGridMaskColumn;
    gridNOMB_REFE_ESTILO: TdxDBGridLookupColumn;
    gridFECH_SISTEMA: TdxDBGridDateColumn;
    gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure boto_atrasClick(Sender: TObject);
    procedure boto_adelanteClick(Sender: TObject);
    procedure tabl_plan_line_especialidadesBeforePost(DataSet: TDataSet);
    procedure comb_lineasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_plan_line_especialidades: Tfn1_plan_line_especialidades;

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
procedure Tfn1_plan_line_especialidades.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar controles
  ColorGrid(Grid);
  ColorGrid(grid_estilos);
  //Abrir las consultas
  AbrirDataSet(quer_lineas);
  AbrirDataSet(quer_refe_estilos);
  AbrirDataSet(tabl_plan_line_especialidades);
  InicializarCombo(comb_lineas);
end;

procedure Tfn1_plan_line_especialidades.boto_atrasClick(Sender: TObject);
begin
  inherited;
  grid.DeleteSelection;
end;

procedure Tfn1_plan_line_especialidades.boto_adelanteClick(
  Sender: TObject);
Var
        var_fila        : Integer;
        var_cons_refe_estilo : Integer;
begin
  inherited;
  //Recorrer e insertar las seleccionadas
  With tabl_plan_line_especialidades, grid_estilos do
      For var_fila := 1 to data_refe_estilos.DataSet.RecordCount do
          //Verificar que esté seleccionado
          if Items[var_fila - 1].Selected Then
          Begin
              //Asignar los valores a variables
              var_cons_refe_estilo := Items[var_fila - 1].Values[0];
              //Buscar en la tabla de memoria
              if Not Locate('cons_refe_estilo', var_cons_refe_estilo, []) Then
              Begin
                //Si no existe, crear
                tabl_plan_line_especialidades.Insert;
                FieldByName('cons_Refe_estilo').Value := var_cons_refe_estilo;
                Post;
              End;
          End;
end;

procedure Tfn1_plan_line_especialidades.tabl_plan_line_especialidadesBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  GenerarSecuencia(tabl_plan_line_especialidades);
end;

procedure Tfn1_plan_line_especialidades.comb_lineasChange(Sender: TObject);
begin
  inherited;
  if (myTabla_ventana.State in [dsEdit, dsInsert]) Then
        myTabla_Ventana.Post;
end;

end.

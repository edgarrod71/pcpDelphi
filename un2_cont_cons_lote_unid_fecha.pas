unit un2_cont_cons_lote_unid_fecha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, dxTL, dxDBCtrl, dxDBGrid, TeEngine, Series,
  TeeProcs, Chart, DBChart, dfsSplitter, RxMemDS, RxLookup,
  PCPLookUpComboEdit, Boxes, PCPProceso;

type
  Tfn2_cont_cons_lote_unid_fecha = class(T_fvent_modal)
    Panel1: TPanel;
    quer_consulta: TQuery;
    data_consulta: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    quer_consultaSECU_OPERACION: TIntegerField;
    quer_consultaCODI_OPER_COSTURA: TStringField;
    quer_consultaNOMB_OPER_COSTURA: TStringField;
    quer_consultaCANT_UNIDADES: TIntegerField;
    quer_consultaTIEMPO: TFloatField;
    grid: TdxDBGrid;
    gridSECU_OPERACION: TdxDBGridMaskColumn;
    gridCODI_OPER_COSTURA: TdxDBGridMaskColumn;
    gridNOMB_OPER_COSTURA: TdxDBGridMaskColumn;
    gridCANT_UNIDADES: TdxDBGridMaskColumn;
    gridTIEMPO: TdxDBGridMaskColumn;
    grafica: TDBChart;
    Series1: TBarSeries;
    dfsSplitter1: TdfsSplitter;
    quer_prod_ordenes: TQuery;
    data_prod_ordenes: TDataSource;
    myTabla_Ventana: TRxMemoryData;
    myTabla_Ventanacons_prod_lote: TIntegerField;
    myTabla_Ventanafecha: TDateField;
    SCLDBLabel1: TSCLDBLabel;
    comb_prod_ordenes: TPCPLookUpComboEdit;
    SCLDBLabel2: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    SCLDBLabel3: TSCLDBLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    quer_prod_lotes: TQuery;
    data_prod_lotes: TDataSource;
    quer_prod_ordenesCONS_PROD_ORDEN: TIntegerField;
    quer_prod_ordenesNUME_PROD_ORDEN: TStringField;
    quer_prod_lotesCONS_PROD_LOTE: TIntegerField;
    quer_prod_lotesNUME_LOTE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure comb_prod_ordenesChange(Sender: TObject);
    procedure doEditarMyTablaVentana(Sender: TObject);
    procedure doGuardar(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_cont_cons_lote_unid_fecha: Tfn2_cont_cons_lote_unid_fecha;

implementation

uses _func_varias;

{$R *.DFM}

procedure Tfn2_cont_cons_lote_unid_fecha.FormCreate(Sender: TObject);
begin
  inherited;
  ColorGrid(grid);
  with myTabla_ventana do
  Begin
       Open;
       insert;
       FieldByName('fecha').Value := NowDate;
       post;
  End;
  quer_prod_ordenes.open;
  quer_prod_lotes.open;
  quer_consulta.prepare;
  quer_consulta.open;
  
end;

procedure Tfn2_cont_cons_lote_unid_fecha.FormDestroy(Sender: TObject);
begin
  Unprepare(quer_consulta);
  inherited;
end;

procedure Tfn2_cont_cons_lote_unid_fecha.comb_prod_ordenesChange(
  Sender: TObject);
begin
  inherited;
  doEditarMyTablaVentana(sender);
  mytabla_ventana.FieldByName('cons_prod_lote').Clear;
  mytabla_ventana.Post;
end;

procedure Tfn2_cont_cons_lote_unid_fecha.doEditarMyTablaVentana(Sender: TObject);
begin
  inherited;
  With myTabla_Ventana do
        if not (state in [dsInsert, dsEdit]) then
                Edit;
end;

procedure Tfn2_cont_cons_lote_unid_fecha.doGuardar(
  Sender: TObject);
begin
  inherited;
  With myTabla_ventana do
        if (State in [dsEdit, dsInsert]) then Post;
end;

end.

unit un1_meto_list_oper_corte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal_alone, PictureContainer, DBTables, AdvPanel,
  dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  ExtCtrls, dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel,
  TB2Item, TBX, TB2Dock, TB2Toolbar, ufra_sele_referencia,
  ufra_sele_refe_variacion, RxMemDS, Boxes, PCPFrame, RxLookup,
  PCPLookUpComboEdit, dxPageControl, StdActns, TBXExtItems, Grids,
  BaseGrid, AdvGrid, AdvCGrid, SCLColumnGrid, PCPProceso;

type
  Tfn1_meto_list_oper_corte = class(T_fvent_modal_alone)
    fram_sele_referencia: Tffra_sele_refe_variacion;
    myTabla_Ventana: TRxMemoryData;
    quer_refe_materiales: TQuery;
    data_refe_materiales: TDataSource;
    PCPFrame1: TPCPFrame;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel1: TSCLDBLabel;
    comb_codi_referencia: TPCPLookUpComboEdit;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    page: TdxPageControl;
    page_operaciones: TdxTabSheet;
    page_historial: TdxTabSheet;
    page_copy: TdxTabSheet;
    acci_ventana: TActionList;
    acti_insertar: TAction;
    acti_adicionar: TAction;
    acti_eliminar: TAction;
    acti_move_arriba: TAction;
    acti_move_abajo: TAction;
    acti_copiar: TdxEditCopy;
    acti_cortar: TdxEditCut;
    acti_pegar: TdxEditPaste;
    acti_importar: TAction;
    acti_impo_sele_todos: TAction;
    acti_impo_importar: TAction;
    acti_sele_todos: TAction;
    acti_buscar: TAction;
    acti_ver_titulos: TAction;
    acti_fila_titulo: TAction;
    acti_fila_operacion: TAction;
    acti_ver_analisis: TAction;
    acti_undo: TAction;
    acti_volv_llamar: TAction;
    TBXDock2: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem28: TTBXItem;
    TBXSeparatorItem13: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem8: TTBXItem;
    TBXItem7: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    TBXItem19: TTBXItem;
    TBXItem18: TTBXItem;
    TBXItem17: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    boto_importar: TTBXVisibilityToggleItem;
    grid: TSCLColumnGrid;
    TBXDock1: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    TBXLabelItem4: TTBXLabelItem;
    TBControlItem4: TTBControlItem;
    TBXSeparatorItem12: TTBXSeparatorItem;
    TBXLabelItem1: TTBXLabelItem;
    TBControlItem1: TTBControlItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXLabelItem3: TTBXLabelItem;
    TBControlItem3: TTBControlItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    TBXLabelItem2: TTBXLabelItem;
    TBControlItem2: TTBControlItem;
    edit_tota_filas: TdxCurrencyEdit;
    edit_tiem_total: TdxCurrencyEdit;
    edit_tota_operaciones: TdxCurrencyEdit;
    edit_oper_seleccionada: TdxSpinEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_meto_list_oper_corte: Tfn1_meto_list_oper_corte;

implementation

uses _MDI, _func_varias;

{$R *.DFM}

procedure Tfn1_meto_list_oper_corte.FormCreate(Sender: TObject);
begin
  inherited;


  //Abrir las consultas
  InicializarFrame(fram_sele_referencia);
  AbrirDataSet(quer_refe_materiales);
  
end;

end.

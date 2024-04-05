unit un1_prod_orde_soli_mate_prima;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_prod_orde_avan_general, PictureContainer, DBTables, 
  AdvPanel, dxExEdtr, dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, ufra_prod_resp_lote_proceso, ufra_mens_atencion, dxEditor,
  dxEdLib, StdCtrls, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit,
  Boxes, PCPFrame, dxDBELib, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, TBXDkPanels, TBXButtonSCL, PCPProceso, dxDBCtrl,
  dxDBGrid, dxTL, dxDBTLCl, dxGrClms, SCLDBGrid;

type
  Tfn1_prod_orde_soli_mate_prima = class(Tfn1_prod_orde_avan_general)
    PCPFrame2: TPCPFrame;
    data_explosion: TDataSource;
    quer_explosion: TQuery;
    quer_explosionTIPO: TIntegerField;
    quer_explosionCONS_REFE_MATERIAL: TIntegerField;
    quer_explosionCONS_MATE_REFERENCIA: TIntegerField;
    quer_explosionCODI_MATE_REFERENCIA: TStringField;
    quer_explosionNOMB_MATE_REFERENCIA: TStringField;
    quer_explosionCONS_MATE_GRUPO: TIntegerField;
    quer_explosionCODI_MATE_GRUPO: TStringField;
    quer_explosionNOMB_MATE_GRUPO: TStringField;
    quer_explosionCONS_MATE_SUBGRUPO: TIntegerField;
    quer_explosionCODI_MATE_SUBGRUPO: TStringField;
    quer_explosionNOMB_MATE_SUBGRUPO: TStringField;
    quer_explosionCONS_PROVEEDOR: TIntegerField;
    quer_explosionCODI_PROVEEDOR: TIntegerField;
    quer_explosionNOMB_PROVEEDOR: TIntegerField;
    quer_explosionCONS_COLOR: TIntegerField;
    quer_explosionCODI_COLOR: TStringField;
    quer_explosionNOMB_COLOR: TStringField;
    quer_explosionNOMB_UNID_MEDIDA: TStringField;
    quer_explosionCONS_UNIDAD: TFloatField;
    quer_explosionCONS_TOTAL: TFloatField;
    quer_explosionEXISTENTE: TFloatField;
    quer_explosionDISPONIBLE: TFloatField;
    quer_explosionENTREGADO: TFloatField;
    quer_explosionDIFERENCIA: TFloatField;
    padr_grid: TSCLDBGrid;
    padr_gridTIPO: TdxDBGridImageColumn;
    padr_gridCONS_REFE_MATERIAL: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_GRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCONS_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    padr_gridCODI_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridNOMB_MATE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridCODI_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridNOMB_PROVEEDOR: TdxDBGridMaskColumn;
    padr_gridCONS_COLOR: TdxDBGridMaskColumn;
    padr_gridCODI_COLOR: TdxDBGridMaskColumn;
    padr_gridNOMB_COLOR: TdxDBGridMaskColumn;
    padr_gridCONS_UNIDAD: TdxDBGridMaskColumn;
    padr_gridNOMB_UNID_MEDIDA: TdxDBGridMaskColumn;
    padr_gridCONS_TOTAL: TdxDBGridMaskColumn;
    padr_gridEXISTENTE: TdxDBGridMaskColumn;
    padr_gridDISPONIBLE: TdxDBGridMaskColumn;
    padr_gridENTREGADO: TdxDBGridMaskColumn;
    padr_gridDIFERENCIA: TdxDBGridMaskColumn;
    SCLDBLabel1: TSCLDBLabel;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    quer_unidades: TQuery;
    data_unidades: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure doCambiarOrden(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_orde_soli_mate_prima: Tfn1_prod_orde_soli_mate_prima;

implementation

uses _func_varias, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 24 de 2005
Versión         : pcp4.0.0.19
*****************************************************************}
procedure Tfn1_prod_orde_soli_mate_prima.FormCreate(Sender: TObject);
begin
  inherited;
  LoteVisible := True;
  //Abrir las consultas
  AbrirDataSet(quer_explosion);
  AbrirDataSet(quer_unidades);
  Insertar_Palabras(Self, WKLenguaje);
end;

procedure Tfn1_prod_orde_soli_mate_prima.doCambiarOrden(Sender: TObject);
begin
  inherited;
  //Ajustar el grid
  AjustarGrid(padr_grid);
end;

end.

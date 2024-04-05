unit un2_come_pedidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, dxCntner, dxExEdtr, TB2Item, SCLPropiedadesForm,
  Db, DBTables, ImgList, Menus, TBX, ActnList, ExtCtrls, dxTLClms, dxTL,
  TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid, dxPageControl,
  dxDBTLCl, dxGrClms, dfsSplitter, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente, SCLDBGrid, ufra_edit_reportes,
  Boxes, PCPFrame;

type
  Tfn2_come_pedidos = class(T_fvent_child)
    consultaCONS_PEDIDO: TIntegerField;
    consultaNUME_PEDIDO: TStringField;
    consultaCONS_REFE_TEMPORADA: TIntegerField;
    consultaNOMB_REFE_TEMPORADA: TStringField;
    consultaCONS_TERCERO: TIntegerField;
    consultaNOMB_TERCERO: TStringField;
    consultaFECH_PEDIDO: TDateTimeField;
    consultaFECH_ENTREGA: TDateTimeField;
    consultaOBSERVACIONES: TStringField;
    consultaCONS_COME_VENDEDOR: TIntegerField;
    consultaNOMB_COME_VENDEDOR: TStringField;
    consultaCONS_COME_PRIO_PEDIDO: TIntegerField;
    consultaNOMB_COME_PRIO_PEDIDO: TStringField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    padr_gridCONS_PEDIDO: TdxDBGridMaskColumn;
    padr_gridNUME_PEDIDO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridCONS_TERCERO: TdxDBGridMaskColumn;
    padr_gridNOMB_TERCERO: TdxDBGridMaskColumn;
    padr_gridFECH_PEDIDO: TdxDBGridDateColumn;
    padr_gridFECH_ENTREGA: TdxDBGridDateColumn;
    padr_gridCONS_COME_VENDEDOR: TdxDBGridMaskColumn;
    padr_gridNOMB_COME_VENDEDOR: TdxDBGridMaskColumn;
    padr_gridCONS_COME_PRIO_PEDIDO: TdxDBGridMaskColumn;
    padr_gridNOMB_COME_PRIO_PEDIDO: TdxDBGridMaskColumn;
    padr_gridOBSERVACIONES: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    TBXItem1: TTBXItem;
    acti_Ventana: TActionList;
    acti_impr_pedido: TAction;
    procedure acti_impr_pedidoExecute(Sender: TObject);
    procedure acti_impr_pedidoUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_come_pedidos: Tfn2_come_pedidos;

implementation

uses _MDI, urn1_come_pedido, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : acti_impr_pedidoExecute
Objetivo        : Imprime el pedido seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn2_come_pedidos.acti_impr_pedidoExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(Trn1_come_pedido, rn1_come_pedido);
  rn1_come_pedido.DoEjecutarInforme(Consulta.FieldByName('cons_pedido').AsInteger);
end;
{****************************************************************
Procedimiento   : acti_impr_pedidoUpdate
Objetivo        : Actualizar la acción de imprimir
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn2_come_pedidos.acti_impr_pedidoUpdate(Sender: TObject);
begin
  inherited;
  acti_impr_pedido.Enabled := (consulta.Active) and (padr_grid.Count > 0);
end;

procedure Tfn2_come_pedidos.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

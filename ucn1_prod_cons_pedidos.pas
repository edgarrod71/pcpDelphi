{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeación y Control de la Producción                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo está protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducción no autorizada, la ingeniería inversa y la   }
{       distribución total o parcial del código contenido en este   }
{       archivo está estrictamente prohibido y podrá tener severas  }
{       consecuencias civiles y penales.                            }
{                                                                   }
{       RESTRICCIONES                                               }
{                                                                   }
{       ESTE CODIGO Y TODOS LOS ARCHIVOS RELACIONADOS               }
{       (DCU, OBJ, DLL, ETC.) SON CONFIDENCIALES Y SU               }
{       PROPIETARIO ES SOFTCONF LIMITADA.                           }
{                                                                   }
{                                                                   }
{       www.softwaredeconfianza.com                                 }
{       tecnologia@softwaredeconfianza.com                          }
{*******************************************************************
        Unit            : ucn1_prod_cons_pedidos
        Objetivo        : Consulta/búsqueda general de
                          ordenes de producción por pedido
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 25 de 2004
        Versión         : pcp4006
*******************************************************************}
unit ucn1_prod_cons_pedidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, Db, DBTables, dxCntner, dxExEdtr, TB2Item,
  SCLPropiedadesForm, ImgList, Menus, TBX, ActnList, ExtCtrls, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  dxTLClms, dxTL, TBXDkPanels, TB2Dock, TB2Toolbar, dxDBCtrl, dxDBGrid,
  SCLDBGrid, dxPageControl, dxDBTLCl, dxGrClms, Boxes, PCPFrame, StdCtrls,
  SoCtrls, SCLDBLabel, RxLookup, PCPLookUpComboEdit, dxEditor, dxEdLib,
  TBXButtonSCL, ufra_edit_reportes;

type
  Tfcn1_prod_cons_pedidos = class(T_fvent_child)
    consultaCONS_PROD_ORDEN: TIntegerField;
    consultaNUME_PROD_ORDEN: TStringField;
    consultaANULADA: TIntegerField;
    consultaFINALIZADO: TIntegerField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCONS_PEDIDO: TIntegerField;
    consultaNUME_PEDIDO: TStringField;
    consultaCONS_REFE_TEMPORADA: TIntegerField;
    consultaNOMB_REFE_TEMPORADA: TStringField;
    consultaCONS_TERCERO: TIntegerField;
    consultaNOMB_TERCERO: TStringField;
    consultaCONS_PEDI_REFERENCIA: TIntegerField;
    consultaCONS_REFERENCIA: TIntegerField;
    consultaCODI_REFERENCIA: TStringField;
    consultaCODI_INTE_REFERENCIA: TStringField;
    consultaNOMB_REFERENCIA: TStringField;
    consultaCONS_REFE_VARIACION: TIntegerField;
    consultaNOMB_REFE_TIPO_VARIACION: TStringField;
    consultaORDE_COMPRA: TStringField;
    consultaTOLE_INFERIOR: TSmallintField;
    consultaTOLE_SUPERIOR: TSmallintField;
    consultaUNIDADES: TIntegerField;
    consultaFECH_PEDIDO: TDateTimeField;
    consultaFECH_ENTREGA: TDateTimeField;
    consultaCONS_COME_VENDEDOR: TIntegerField;
    consultaNOMB_COME_VENDEDOR: TStringField;
    consultaNOMB_COME_PRIO_PEDIDO: TStringField;
    consultaCOLO_COME_PRIO_PEDIDO: TIntegerField;
    padr_gridCONS_PROD_ORDEN: TdxDBGridMaskColumn;
    padr_gridNUME_PROD_ORDEN: TdxDBGridMaskColumn;
    padr_gridNUME_PEDIDO: TdxDBGridMaskColumn;
    padr_gridORDE_COMPRA: TdxDBGridMaskColumn;
    padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridUNIDADES: TdxDBGridMaskColumn;
    padr_gridNOMB_TERCERO: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridFECH_PEDIDO: TdxDBGridDateColumn;
    padr_gridFECH_ENTREGA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridCONS_PEDIDO: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_TEMPORADA: TdxDBGridMaskColumn;
    padr_gridCONS_TERCERO: TdxDBGridMaskColumn;
    padr_gridCONS_PEDI_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn;
    padr_gridCONS_REFE_VARIACION: TdxDBGridMaskColumn;
    padr_gridNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn;
    padr_gridCONS_COME_VENDEDOR: TdxDBGridColumn;
    padr_gridNOMB_COME_VENDEDOR: TdxDBGridColumn;
    padr_gridTOLE_INFERIOR: TdxDBGridMaskColumn;
    padr_gridTOLE_SUPERIOR: TdxDBGridMaskColumn;
    padr_gridANULADA: TdxDBGridImageColumn;
    padr_gridFINALIZADO: TdxDBGridImageColumn;
    padr_gridNOMB_COME_PRIO_PEDIDO: TdxDBGridColumn;
    padr_gridCOLO_COME_PRIO_PEDIDO: TdxDBGridColumn;
    pane_filtros: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    comb_referencia: TPCPLookUpComboEdit;
    comb_nume_pedido: TPCPLookUpComboEdit;
    comb_orde_compra: TPCPLookUpComboEdit;
    comb_cliente: TPCPLookUpComboEdit;
    comb_vendedor: TPCPLookUpComboEdit;
    chec_fech_creacion: TdxCheckEdit;
    comb_fech_creacion: TdxDateEdit;
    chec_fech_pedido: TdxCheckEdit;
    comb_fech_pedido: TdxDateEdit;
    chec_fech_entrega: TdxCheckEdit;
    comb_fech_entrega: TdxDateEdit;
    quer_referencias: TQuery;
    data_referencias: TDataSource;
    quer_pedidos: TQuery;
    data_pedidos: TDataSource;
    quer_pedi_Referencias: TQuery;
    data_pedi_referencias: TDataSource;
    quer_clientes: TQuery;
    data_clientes: TDataSource;
    quer_vendedores: TQuery;
    data_vendedores: TDataSource;
    padr_boto_info_orden: TTBXButtonSCL;
    TBXButtonSCL1: TTBXButtonSCL;
    procedure FormCreate(Sender: TObject);
    procedure chec_fech_creacionChange(Sender: TObject);
    procedure chec_fech_pedidoChange(Sender: TObject);
    procedure chec_fech_entregaChange(Sender: TObject);
    procedure doActualizarConsulta(Sender: TObject);
    procedure padr_acti_actualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcn1_prod_cons_pedidos: Tfcn1_prod_cons_pedidos;

implementation

uses _cons_pcp, _func_varias, _MDI, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 25 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfcn1_prod_cons_pedidos.FormCreate(Sender: TObject);
begin
  inherited;
  //Fechas iniciales
  comb_fech_creacion.Date := NowDate;
  comb_fech_pedido.Date := NowDate;
  comb_fech_entrega.Date := NowDate;
  //Captions
  pane_filtros.Caption := cosFiltros;
  //Abrir las consultas
  comb_referencia.Enabled := AbrirDataSet(quer_referencias);
  comb_nume_pedido.Enabled := AbrirDataSet(quer_pedidos);
  comb_orde_compra.Enabled := AbrirDataSet(quer_pedi_Referencias);
  comb_cliente.Enabled := AbrirDataSet(quer_clientes);
  comb_vendedor.Enabled := AbrirDataSet(quer_vendedores);
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : chec_fech_entregaChange
Objetivo        : Habiitar/Deshabilitar la fecha de creación con el check
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 25 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfcn1_prod_cons_pedidos.chec_fech_creacionChange(
  Sender: TObject);
begin
  inherited;
  comb_fech_creacion.Enabled := chec_fech_creacion.Checked;
end;
{****************************************************************
Procedimiento   : chec_fech_pedidoChange
Objetivo        : Habiitar/Deshabilitar la fecha del pedido con el check
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 25 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfcn1_prod_cons_pedidos.chec_fech_pedidoChange(Sender: TObject);
begin
  inherited;
  comb_fech_pedido.Enabled := chec_fech_pedido.Checked;
end;
{****************************************************************
Procedimiento   : chec_fech_entregaChange
Objetivo        : Habiitar/Deshabilitar la fecha de entrega con el check
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 25 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfcn1_prod_cons_pedidos.chec_fech_entregaChange(Sender: TObject);
begin
  inherited;
  comb_fech_entrega.Enabled := chec_fech_entrega.Checked;
end;
{****************************************************************
Procedimiento   : doActualizarConsulta
Objetivo        : Actualizar la consulta de acuerdo al filtro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfcn1_prod_cons_pedidos.doActualizarConsulta(Sender: TObject);
begin
  inherited;
  With consulta do
    Begin
        Close;
        Self.Update;
        //Encabezado de la consulta
        Sql.Clear;
        Sql.Add('SELECT * FROM VIS_PCP_PROD_ORDE_UNID_PEDIDAS');
        Sql.Add('WHERE NOT CONS_PROD_ORDEN IS NULL');
        //Aplicar los filtros
        If Not comb_referencia.EstaVacio then
           Sql.Add('AND CONS_REFERENCIA = '+IntToStr(comb_referencia.KeyValue));
        If Not comb_nume_pedido.EstaVacio then
           Sql.Add('AND CONS_PEDIDO = '+IntToStr(comb_nume_pedido.KeyValue));
        If Not comb_orde_compra.EstaVacio then
           Sql.Add('AND CONS_PEDI_REFERENCIA = '+IntToStr(comb_orde_compra.KeyValue));
        If Not comb_cliente.EstaVacio then
           Sql.Add('AND CONS_TERCERO = '+IntToStr(comb_cliente.KeyValue));
        If Not comb_vendedor.EstaVacio then
           Sql.Add('AND CONS_TERCERO = '+IntToStr(comb_vendedor.KeyValue));
        if chec_fech_creacion.Checked then
            Sql.Add('AND FECH_SISTEMA >= "'+FechaSQL(comb_fech_creacion.Date)+'"');
        if chec_fech_pedido.Checked then
            Sql.Add('AND FECH_PEDIDO >= "'+FechaSQL(comb_fech_pedido.Date)+'"');
        if chec_fech_entrega.Checked then
            Sql.Add('AND FECH_ENTREGA >= "'+FechaSQL(comb_fech_entrega.Date)+'"');
        //Abrir la consulta
        Open;
    End;
end;
{****************************************************************
Procedimiento   : padr_acti_actualizarExecute
Objetivo        : Actualizar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfcn1_prod_cons_pedidos.padr_acti_actualizarExecute(
  Sender: TObject);
begin
  //inherited;
  doActualizarConsulta(Sender);
end;

end.

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
        Unit            : un2_come_pedi_expl_materiales
        Objetivo        : Explosión de materiales por pedido
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Julio 29 de 2004
        Versión         : pcp4006
*******************************************************************}

unit un2_come_pedi_expl_materiales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, dxExEdtr, dxEdLib, dxDBELib, ufra_prod_expl_insumos,
  RxMemDS, Db, ufra_prod_expl_tejidos, ExtCtrls, dfsSplitter,
  dxPageControl, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  Boxes, PCPFrame, RxLookup, PCPLookUpComboEdit, PictureContainer,
  DBTables, AdvPanel, SCLPropiedadesForm, DBActns, ActnList,
  ImgList, dxEditor, StdCtrls, SoCtrls, SCLDBLabel, TB2Item, TBX, TB2Dock,
  TB2Toolbar, ufra_sele_referencia, ufra_info_refe_basico, SohoBtns,
  SCLButton, SCLDBGrid, Buttons, PCPProceso;
type
  Tfn2_come_pedi_expl_materiales = class(T_fvent_modal)
    quer_pedidos: TQuery;
    data_pedidos: TDataSource;
    myTabla_ventana: TRxMemoryData;
    quer_pedidosCONS_PEDIDO: TIntegerField;
    quer_pedidosNUME_PEDIDO: TStringField;
    quer_pedidosCONS_REFE_TEMPORADA: TIntegerField;
    quer_pedidosNOMB_REFE_TEMPORADA: TStringField;
    quer_pedidosCONS_TERCERO: TIntegerField;
    quer_pedidosNOMB_TERCERO: TStringField;
    quer_pedidosFECH_PEDIDO: TDateTimeField;
    quer_pedidosFECH_ENTREGA: TDateTimeField;
    quer_pedidosOBSERVACIONES: TStringField;
    quer_pedidosCONS_COME_VENDEDOR: TIntegerField;
    quer_pedidosNOMB_COME_VENDEDOR: TStringField;
    quer_pedidosCONS_COME_PRIO_PEDIDO: TIntegerField;
    quer_pedidosNOMB_COME_PRIO_PEDIDO: TStringField;
    quer_pedidosCOLO_COME_PRIO_PEDIDO: TIntegerField;
    quer_pedidosCONS_DESPACHAR_A: TIntegerField;
    quer_pedidosCONS_FACTURAR_A: TIntegerField;
    quer_pedidosFECH_SISTEMA: TDateTimeField;
    quer_pedidosUSUA_SISTEMA: TStringField;
    PCPFrame1: TPCPFrame;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    edit_prio_pedido: TdxDBEdit;
    quer_pedi_referencias: TQuery;
    data_pedi_referencias: TDataSource;
    SCLDBLabel1: TSCLDBLabel;
    comb_pedido: TPCPLookUpComboEdit;
    SCLDBLabel7: TSCLDBLabel;
    comb_orde_compra: TPCPLookUpComboEdit;
    myTabla_ventanacons_pedido: TIntegerField;
    myTabla_ventanacons_pedi_referencia: TIntegerField;
    myTabla_ventanatodos: TBooleanField;
    pane_info_referencia: Tffra_info_refe_basico;
    padr_boto_menu_Referencia: TSCLButton;
    PCPFrame2: TPCPFrame;
    page: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    dxTabSheet3: TdxTabSheet;
    dxTabSheet4: TdxTabSheet;
    grid_detallada: TSCLDBGrid;
    quer_detallada: TQuery;
    data_detallada: TDataSource;
    quer_detalladaTIPO: TIntegerField;
    quer_detalladaCONS_PEDI_REFERENCIA: TIntegerField;
    quer_detalladaNUME_PEDIDO: TStringField;
    quer_detalladaORDE_COMPRA: TStringField;
    quer_detalladaCONS_REFE_MATERIAL: TIntegerField;
    quer_detalladaCONS_MATE_REFERENCIA: TIntegerField;
    quer_detalladaCODI_MATE_REFERENCIA: TStringField;
    quer_detalladaNOMB_MATE_REFERENCIA: TStringField;
    quer_detalladaCONS_MATE_GRUPO: TIntegerField;
    quer_detalladaCODI_MATE_GRUPO: TStringField;
    quer_detalladaNOMB_MATE_GRUPO: TStringField;
    quer_detalladaCONS_MATE_SUBGRUPO: TIntegerField;
    quer_detalladaCODI_MATE_SUBGRUPO: TStringField;
    quer_detalladaNOMB_MATE_SUBGRUPO: TStringField;
    quer_detalladaCONS_PROVEEDOR: TIntegerField;
    quer_detalladaCODI_PROVEEDOR: TIntegerField;
    quer_detalladaNOMB_PROVEEDOR: TIntegerField;
    quer_detalladaCONS_COLOR: TIntegerField;
    quer_detalladaCODI_COLOR: TStringField;
    quer_detalladaNOMB_COLOR: TStringField;
    quer_detalladaNOMB_UNID_MEDIDA: TStringField;
    quer_detalladaCONS_TOTAL: TFloatField;
    quer_detalladaEXISTENTE: TFloatField;
    quer_detalladaDISPONIBLE: TFloatField;
    quer_detalladaENTREGADO: TFloatField;
    quer_detalladaDIFERENCIA: TFloatField;
    quer_detalladaCONS_UNIDAD: TFloatField;
    grid_detalladaTIPO: TdxDBGridImageColumn;
    grid_detalladaCONS_PEDI_REFERENCIA: TdxDBGridMaskColumn;
    grid_detalladaNUME_PEDIDO: TdxDBGridMaskColumn;
    grid_detalladaORDE_COMPRA: TdxDBGridMaskColumn;
    grid_detalladaCONS_REFE_MATERIAL: TdxDBGridMaskColumn;
    grid_detalladaCONS_MATE_REFERENCIA: TdxDBGridMaskColumn;
    grid_detalladaCODI_MATE_REFERENCIA: TdxDBGridMaskColumn;
    grid_detalladaNOMB_MATE_REFERENCIA: TdxDBGridMaskColumn;
    grid_detalladaCONS_MATE_GRUPO: TdxDBGridMaskColumn;
    grid_detalladaCODI_MATE_GRUPO: TdxDBGridMaskColumn;
    grid_detalladaNOMB_MATE_GRUPO: TdxDBGridMaskColumn;
    grid_detalladaCONS_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    grid_detalladaCODI_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    grid_detalladaNOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn;
    grid_detalladaCONS_PROVEEDOR: TdxDBGridMaskColumn;
    grid_detalladaCODI_PROVEEDOR: TdxDBGridMaskColumn;
    grid_detalladaNOMB_PROVEEDOR: TdxDBGridMaskColumn;
    grid_detalladaCONS_COLOR: TdxDBGridMaskColumn;
    grid_detalladaCODI_COLOR: TdxDBGridMaskColumn;
    grid_detalladaNOMB_COLOR: TdxDBGridMaskColumn;
    grid_detalladaCONS_UNIDAD: TdxDBGridMaskColumn;
    grid_detalladaNOMB_UNID_MEDIDA: TdxDBGridMaskColumn;
    grid_detalladaCONS_TOTAL: TdxDBGridMaskColumn;
    grid_detalladaEXISTENTE: TdxDBGridMaskColumn;
    grid_detalladaDISPONIBLE: TdxDBGridMaskColumn;
    grid_detalladaENTREGADO: TdxDBGridMaskColumn;
    grid_detalladaDIFERENCIA: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure comb_pedidoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure myTabla_ventanaAfterInsert(DataSet: TDataSet);
    procedure myTabla_ventanaAfterPost(DataSet: TDataSet);
    procedure comb_orde_compraChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pane_info_referenciafram_pane_sele_referenciaResize(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn2_come_pedi_expl_materiales: Tfn2_come_pedi_expl_materiales;

implementation

uses _func_varias, _cons_pcp, _MDI;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 29 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_expl_materiales.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  With myTabla_ventana do
  Begin
       Open;
       Insert;
       Post;
  End;
  InicializarFrame(pane_info_referencia);
  AbrirDataSet(quer_detallada);
end;
{****************************************************************
Procedimiento   : comb_pedidoChange
Objetivo        : Dar color al panel de la prioridad del pedido
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_expl_materiales.comb_pedidoChange(
  Sender: TObject);
begin
  inherited;
  if (MyTabla_ventana.State in [dsEdit, dsInsert]) Then
        myTabla_ventana.Post; 
end;

{****************************************************************
Procedimiento   : FormDestroy
Objetivo        : Liberar los componentes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_expl_materiales.FormDestroy(Sender: TObject);
begin
  inherited;
end;
{****************************************************************
Procedimiento   : chec_todosChange
Objetivo        : Cambio en la selección de todas/alguna orden 
                  de compra
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_expl_materiales.myTabla_ventanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  myTabla_ventana.FieldByName('todos').Value := True;
  myTabla_ventana.FieldByName('todos').Value := -1;
end;

procedure Tfn2_come_pedi_expl_materiales.myTabla_ventanaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //Actualizar las consultas
{  RefreshDataSet(fram_expl_tejidos.quer_explosion);
  RefreshDataSet(fram_expl_forros.quer_explosion);
  RefreshDataSet(fram_expl_insu_fabricacion.quer_explosion);
  RefreshDataSet(fram_expl_insu_empaque.quer_explosion);}
{  //Generar una tabla local con la información - 24/09/2004
  With tabl_cubo do
    Begin
        Close;
        ProgresoBarraEstado(cosTrabajando);
        BatchMove(fram_expl_tejidos.quer_explosion, batCopy);
        BatchMove(fram_expl_forros.quer_explosion, batAppend);
        BatchMove(fram_expl_insu_fabricacion.quer_explosion, batAppend);
        BatchMove(fram_expl_insu_empaque.quer_explosion, batAppend);
        //Abrir el cubo
        quer_cubo.Close;
        Try quer_cubo.Open; Except End;
        //Finalizar
        ProgresoBarraEstado;
    End;}
end;
{****************************************************************
Procedimiento   : comb_orde_compraChange
Objetivo        : Actualizar los campos al seleccionar una nueva
                  orden de compra
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 20 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfn2_come_pedi_expl_materiales.comb_orde_compraChange(
  Sender: TObject);
begin
  inherited;
  //Mostrar/Ocultar información de la referencia de acuerdo con la
  //selección de la orden de compra
  pane_info_referencia.Visible := Not(comb_orde_compra.EstaVacio)
end;


{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Peparar el formulario para cerrarlo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 22 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tfn2_come_pedi_expl_materiales.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CheckAndPostDataSet(myTabla_ventana);
  inherited;
end;

procedure Tfn2_come_pedi_expl_materiales.pane_info_referenciafram_pane_sele_referenciaResize(
  Sender: TObject);
begin
  inherited;
  pane_info_referencia.fram_pane_sele_referenciaResize(Sender);
end;

end.

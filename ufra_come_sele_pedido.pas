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
        Unit            : ufra_come_sele_pedido
        Objetivo        : Seleccionar pedidos
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 23 de 2004
        Versión         : pcp4006
*******************************************************************}

unit ufra_come_sele_pedido;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, SohoBtns, SCLButton, RxLookup,
  PCPLookUpComboEdit, dxCntner, dxEditor, dxEdLib, dxDBELib, SoCtrls,
  SCLDBLabel, ExtCtrls, Boxes, PCPFrame, TBXDkPanels, TBXButtonSCL;

type
  Tffra_come_sele_pedido = class(TFrame)
    quer_pedidos: TQuery;
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
    data_pedidos: TDataSource;
    quer_pedi_referencias: TQuery;
    data_pedi_referencias: TDataSource;
    pane_sele_pedido: TPCPFrame;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    edit_prio_pedido: TdxDBEdit;
    comb_pedido: TPCPLookUpComboEdit;
    comb_orde_compra: TPCPLookUpComboEdit;
    padr_boto_menu_Referencia: TTBXButtonSCL;
    boto_limpiar: TTBXButtonSCL;
    quer_cant_pedido: TQuery;
    data_cant_pedido: TDataSource;
    SCLDBLabel9: TSCLDBLabel;
    dxDBEdit6: TdxDBEdit;
    quer_cant_pedidoUNIDADES: TIntegerField;
    boto_info_unidades: TTBXButtonSCL;
    procedure pane_sele_pedidoResize(Sender: TObject);
    procedure comb_pedidoChange(Sender: TObject);
    procedure comb_orde_compraChange(Sender: TObject);
    procedure boto_limpiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create(Owner : TComponent);Override;
  end;

implementation

uses _func_varias, _MDI, _cons_pcp;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Noviembre 23 de 2004
Versión         : pcp4006
*****************************************************************}
Constructor Tffra_come_sele_pedido.Create(Owner : TComponent);
Begin
      Inherited Create(Owner);
      boto_info_unidades.Hint := cosVerMasInformacion;
      autoHints(Self);
      //Abrir las consultas
      AbrirDataSet(quer_pedidos);
      AbrirDataSet(quer_pedi_Referencias);
      //Inicializar el combo con el primer pedido
      InicializarCombo(comb_pedido);
      comb_orde_compraChange(Self);
End;
{****************************************************************
Procedimiento   : pane_sele_pedidoResize
Objetivo        : Cambiar el tamaño del frame al cambiar el tamaño
                  del panel de selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 22 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_come_sele_pedido.pane_sele_pedidoResize(Sender: TObject);
begin
        pane_sele_pedido.BoxResize(Sender);
        Height := pane_sele_pedido.Height;
end;
{****************************************************************
Procedimiento   : comb_pedidoChange
Objetivo        : Actualizar el frame al cambiar el pedido
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 22 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_come_sele_pedido.comb_pedidoChange(Sender: TObject);
begin
  if (Not quer_pedidos.Active) Then Exit;
  //Color de la prioridad
  edit_prio_pedido.Color := quer_pedidos.FieldByName('colo_come_prio_pedido').AsInteger;
  //Si hay solamente una orden de compra, seleccionarla
  if (quer_pedi_Referencias.Active) And (quer_pedi_referencias.RecordCount = 1) Then
      InicializarCombo(comb_orde_compra);
  comb_orde_compraChange(Sender);
end;
{****************************************************************
Procedimiento   : comb_orde_compraChange
Objetivo        : Actualizar los controles al cambiar
                  la selección de la orden de compra
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 22 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_come_sele_pedido.comb_orde_compraChange(Sender: TObject);
begin
    //Cerrar la consulta
    quer_cant_pedido.Close;
    //Validar que exista un pedido
    if comb_pedido.EstaVacio then Exit;
    //Reabrir la consulta de unidades
    With quer_cant_pedido do
      Begin
          //Limpiar los parámetros
          ParamByName('cons_pedido').Clear;
          ParamByName('cons_pedi_referencia').Clear;
          //Dar el valor a los parámetros
          if Not(comb_pedido.EstaVacio) then
            ParamByName('cons_pedido').Value := comb_pedido.KeyValue;
          if Not (comb_orde_compra.EstaVacio) then
            ParamByName('cons_pedi_referencia').Value := comb_orde_compra.KeyValue;
          //Abrir la consulta
          AbrirDataSet(quer_cant_pedido);
      End;
end;
{****************************************************************
Procedimiento   : boto_limpiarClick
Objetivo        : Limpiar la selección actual de la orden de compra
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 22 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_come_sele_pedido.boto_limpiarClick(Sender: TObject);
begin
    comb_orde_compra.ClearValue;
    //Limpiar el valor de dataSet asociado
    With comb_orde_compra do
      Begin
          if (DataSource <> Nil) and (DataSource.DataSet <> Nil) and
            (DataSource.DataSet.Active) then
            Begin
                if Not(DataSource.DataSet.State in [dsInsert,dsEdit]) then
                    DataSource.DataSet.Edit;
                DataSource.DataSet.FieldByName(dataField).Clear;
            End;
      End;
    comb_orde_compraChange(Sender);
end;

end.

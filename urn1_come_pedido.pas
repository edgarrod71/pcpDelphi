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
        Unit            : urn1_come_pedido
        Objetivo        : Reporte de captura de pedidos
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 29 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}
unit urn1_come_pedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _Informes, Menus, TB2Item, TBX, pcpQRControl, Db, ActnList, DBTables,
  dxfDesigner, QRExport, JvExControls, JvComponent, JvGradientHeaderPanel,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ZPropLst,
  dxPageControl, StdCtrls, SoCtrls, Boxes, QuickRpt, Qrctrls, PCPQrDBText,
  PCPFrame, ExtCtrls, dfsSplitter, TBXDkPanels, TB2Dock, TB2Toolbar,
  PCPQRForma, PCPQrImage, PCPQrLabel, PCPQRBand, PCPQuickReport, Grids,
  BaseGrid, AdvGrid, AdvCGrid, SCLColumnGrid, SCLTabs;

type
  Trn1_come_pedido = class(TFInformes)
    quer_pedido: TQuery;
    tPCPQrLabel1: tPCPQrLabel;
    padr_cuad_1: TPCPQrForma;
    PCPQrForma1: TPCPQrForma;
    qrla_info_referencia: tPCPQrLabel;
    padr_cir: tPCPQrLabel;
    padr_cir_db: TPCPQRDBText;
    PCPQrForma2: TPCPQrForma;
    tPCPQrLabel2: tPCPQrLabel;
    PCPQRDBText1: TPCPQRDBText;
    PCPQrForma3: TPCPQrForma;
    tPCPQrLabel3: tPCPQrLabel;
    PCPQRDBText2: TPCPQRDBText;
    PCPQrForma4: TPCPQrForma;
    PCPQrForma5: TPCPQrForma;
    tPCPQrLabel4: tPCPQrLabel;
    PCPQRDBText3: TPCPQRDBText;
    tPCPQrLabel5: tPCPQrLabel;
    PCPQRDBText4: TPCPQRDBText;
    PCPQrForma6: TPCPQrForma;
    tPCPQrLabel6: tPCPQrLabel;
    PCPQRDBText5: TPCPQRDBText;
    PCPQrForma7: TPCPQrForma;
    tPCPQrLabel7: tPCPQrLabel;
    PCPQRDBText6: TPCPQRDBText;
    band_info_cliente: TQRChildBand;
    tPCPQrLabel8: tPCPQrLabel;
    PCPQrForma8: TPCPQrForma;
    PCPQrForma9: TPCPQrForma;
    tPCPQrLabel9: tPCPQrLabel;
    tPCPQrLabel10: tPCPQrLabel;
    PCPQRDBText7: TPCPQRDBText;
    PCPQrForma10: TPCPQrForma;
    tPCPQrLabel11: tPCPQrLabel;
    PCPQRDBText8: TPCPQRDBText;
    PCPQrForma11: TPCPQrForma;
    tPCPQrLabel12: tPCPQrLabel;
    PCPQRDBText9: TPCPQRDBText;
    PCPQrForma12: TPCPQrForma;
    PCPQrForma13: TPCPQrForma;
    tPCPQrLabel13: tPCPQrLabel;
    PCPQRDBText10: TPCPQRDBText;
    tPCPQrLabel14: tPCPQrLabel;
    PCPQRDBText11: TPCPQRDBText;
    PCPQrForma14: TPCPQrForma;
    tPCPQrLabel15: tPCPQrLabel;
    PCPQRDBText12: TPCPQRDBText;
    tPCPQrLabel16: tPCPQrLabel;
    PCPQRDBText13: TPCPQRDBText;
    PCPQrForma16: TPCPQrForma;
    tPCPQrLabel17: tPCPQrLabel;
    PCPQRDBText14: TPCPQRDBText;
    PCPQrForma17: TPCPQrForma;
    QRSubDetail1: TQRSubDetail;
    PCPQrForma15: TPCPQrForma;
    PCPQrForma18: TPCPQrForma;
    tPCPQrLabel18: tPCPQrLabel;
    PCPQRDBText15: TPCPQRDBText;
    PCPQrForma19: TPCPQrForma;
    tPCPQrLabel19: tPCPQrLabel;
    PCPQRDBText16: TPCPQRDBText;
    PCPQrForma20: TPCPQrForma;
    tPCPQrLabel20: tPCPQrLabel;
    PCPQRDBText17: TPCPQRDBText;
    PCPQrForma21: TPCPQrForma;
    tPCPQrLabel21: tPCPQrLabel;
    PCPQRDBText18: TPCPQRDBText;
    PCPQrForma22: TPCPQrForma;
    tPCPQrLabel22: tPCPQrLabel;
    PCPQRDBText19: TPCPQRDBText;
    form_total: TPCPQrForma;
    PCPQRDBText21: TPCPQRDBText;
    labe_con_entrepierna: tPCPQrLabel;
    tPCPQrLabel26: tPCPQrLabel;
    PCPQrForma27: TPCPQrForma;
    PCPQrForma28: TPCPQrForma;
    PCPQrForma29: TPCPQrForma;
    PCPQrForma30: TPCPQrForma;
    PCPQrForma31: TPCPQrForma;
    PCPQrForma32: TPCPQrForma;
    PCPQrForma33: TPCPQrForma;
    PCPQrForma34: TPCPQrForma;
    PCPQrForma35: TPCPQrForma;
    PCPQrForma36: TPCPQrForma;
    PCPQrForma37: TPCPQrForma;
    PCPQrForma38: TPCPQrForma;
    PCPQrForma39: TPCPQrForma;
    PCPQrForma40: TPCPQrForma;
    PCPQrForma41: TPCPQrForma;
    PCPQrForma42: TPCPQrForma;
    PCPQrForma43: TPCPQrForma;
    PCPQrForma47: TPCPQrForma;
    PCPQRDBText22: TPCPQRDBText;
    PCPQRDBText23: TPCPQRDBText;
    PCPQRDBText24: TPCPQRDBText;
    PCPQRDBText25: TPCPQRDBText;
    PCPQRDBText26: TPCPQRDBText;
    PCPQRDBText27: TPCPQRDBText;
    PCPQRDBText28: TPCPQRDBText;
    PCPQRDBText29: TPCPQRDBText;
    PCPQRDBText30: TPCPQRDBText;
    PCPQRDBText31: TPCPQRDBText;
    PCPQRDBText32: TPCPQRDBText;
    PCPQRDBText33: TPCPQRDBText;
    PCPQRDBText34: TPCPQRDBText;
    PCPQRDBText35: TPCPQRDBText;
    PCPQRDBText36: TPCPQRDBText;
    PCPQRDBText37: TPCPQRDBText;
    PCPQRDBText38: TPCPQRDBText;
    PCPQRDBText39: TPCPQRDBText;
    PCPQRDBText40: TPCPQRDBText;
    quer_pedi_Referencias: TQuery;
    data_pedido: TDataSource;
    quer_pedidoCONS_PEDIDO: TIntegerField;
    quer_pedidoNUME_PEDIDO: TStringField;
    quer_pedidoNOMB_REFE_TEMPORADA: TStringField;
    quer_pedidoNOMB_TERCERO: TStringField;
    quer_pedidoFECH_PEDIDO: TDateTimeField;
    quer_pedidoFECH_ENTREGA: TDateTimeField;
    quer_pedidoNOMB_COME_VENDEDOR: TStringField;
    quer_pedidoNOMB_COME_PRIO_PEDIDO: TStringField;
    quer_pedidoCONS_DESPACHAR_A: TIntegerField;
    quer_pedidoCONS_FACTURAR_A: TIntegerField;
    quer_pedidoFECH_SISTEMA: TDateTimeField;
    quer_pedi_ReferenciasCONS_PEDI_REFERENCIA: TIntegerField;
    quer_pedi_ReferenciasNUME_PEDIDO: TStringField;
    quer_pedi_ReferenciasCONS_REFERENCIA: TIntegerField;
    quer_pedi_ReferenciasCODI_REFERENCIA: TStringField;
    quer_pedi_ReferenciasCODI_INTE_REFERENCIA: TStringField;
    quer_pedi_ReferenciasNOMB_REFERENCIA: TStringField;
    quer_pedi_ReferenciasNOMB_REFE_TIPO_VARIACION: TStringField;
    quer_pedi_ReferenciasORDE_COMPRA: TStringField;
    quer_pedi_ReferenciasNOMB_REFE_LAVADO: TStringField;
    quer_pedi_ReferenciasTOLE_INFERIOR: TSmallintField;
    quer_pedi_ReferenciasTOLE_SUPERIOR: TSmallintField;
    PCPQrForma45: TPCPQrForma;
    tPCPQrLabel27: tPCPQrLabel;
    PCPQRDBText41: TPCPQRDBText;
    PCPQrForma46: TPCPQrForma;
    tPCPQrLabel28: tPCPQrLabel;
    PCPQRDBText42: TPCPQRDBText;
    PCPQrForma48: TPCPQrForma;
    tPCPQrLabel29: tPCPQrLabel;
    PCPQRDBText43: TPCPQRDBText;
    data_pedi_Referencias: TDataSource;
    quer_info_Referencia: TQuery;
    tabl_informe: TTable;
    tabl_informeCONS_PEDI_REFERENCIA: TIntegerField;
    tabl_informeCONS_REGISTRO: TIntegerField;
    tabl_informeNOMB_COLOR: TStringField;
    tabl_informeTALL1: TStringField;
    tabl_informeTALL2: TStringField;
    tabl_informeTALL17: TStringField;
    tabl_informeTALL18: TStringField;
    tabl_informeTOTAL: TStringField;
    quer_unidades: TQuery;
    grid: TSCLColumnGrid;
    quer_unid_llamar: TQuery;
    quer_refe_tallas: TQuery;
    quer_refe_colores: TQuery;
    quer_info_ReferenciaCON_ENTREPIERNAS: TIntegerField;
    quer_info_ReferenciaCONS_REFE_GRUP_TALLAS: TIntegerField;
    PCPQrForma23: TPCPQrForma;
    PCPQrForma25: TPCPQrForma;
    form_total2: TPCPQrForma;
    procedure band_info_clienteBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure _QRBanda_MaestraBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure doLlamarTallasReferencia(Sender: TObject);
    procedure doLlamarColoresReferencia(Sender: TObject);
    procedure DoLlamarDatos(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure DoEjecutarInforme(pecons_pedido : Integer);
  end;

var
  rn1_come_pedido: Trn1_come_pedido;

implementation

uses _cons_pcp, _func_pcp, _func_varias, _func_graficas, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : DoEjecutarInforme
Objetivo        : Ejecuta y muestra el informe
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
Procedure Trn1_come_pedido.DoEjecutarInforme(pecons_pedido : Integer);
var
    var_fila    : Integer;
    var_colu    : Integer;
Begin
    ProgresoBarraEstado(cosTrabajando);
    //Elimino las firmas, fecha de impresión, página, etc, que no esten
    //seleccionados en las opciones de impresión
    Opciones_Impresion[2]  := 'S'; //Habilitar la pagina
    Opciones_Impresion[3]  := 'S'; //Habilitar la fecha
    Opciones_Impresion[12] := ''; //Deshabilitar la priorida
    Elegir_Firmas;
    //Abrir la consulta maestra del pedido
    With quer_pedido do
    Begin
        ParamByName('cons_pedido').Value := peCons_pedido;
        Open;
    End;
    _QRInforme.Caption := _QRPadre.ReportTitle;
    quer_pedi_Referencias.Open;
    quer_info_Referencia.Open;
    //Crear una tabla auxiliar con las unidades (local)
    With tabl_informe do
    Begin
        If Active then Close;
        CreateTable;
        Open;
        //Recorrer las referencias del pedido
        While not quer_pedi_referencias.Eof do
        Begin
            doLlamarDatos(Self);
            //Guardar los datos
            With Grid do
            Begin
                For var_fila := 0 to RowCount - 1 do
                Begin
                    Insert;
                    FieldByName('cons_pedi_Referencia').Value := quer_pedi_referencias.FieldByName('cons_pedi_referencia').AsInteger;
                    FieldByName('cons_registro').Value := var_fila;
                    FieldByName('nomb_color').Value := Cells[ColumnByName['gridNOMB_COLOR'].Index, var_fila];
                    //Recorrer las tallas
                    For var_colu := ColumnByName['gridCONS_REFE_COLOR'].Index + 1 to ColCount - 2 do
                       FieldByName('TALL'+IntToStr(var_colu - 1)).Value := Cells[var_colu, var_fila];
                    //Total (del color)
                    FieldByName('total').Value := Cells[ColCount - 1, var_fila];
                    Post;
                End;
            End;
            //Siguiente
            quer_pedi_referencias.Next;
        End;
        Close;
    End;
    //Abrir las consultas faltantes
    quer_pedi_Referencias.First;
    quer_unidades.Open;
    ProgresoBarraEstado;
    //Mostrar el reporte
    _QRPadre.Preview;
    Close;
End;

{****************************************************************
Procedimiento   : band_info_clienteBeforePrint
Objetivo        : Imprimir/No imprimir la información del cliente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Trn1_come_pedido.band_info_clienteBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PrintBand := False;
end;
{****************************************************************
Procedimiento   : _QRBanda_MaestraBeforePrint
Objetivo        : Actualizar los labels que dependan de la
                  referencia del pedido
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Trn1_come_pedido._QRBanda_MaestraBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  //Caption de tallas o entrepiernas
  if (quer_info_Referencia.FieldByName('con_entrepiernas').asInteger = 1) Then
      labe_con_entrepierna.Caption := UpperCase(cosEntrepiernas)
  Else
      labe_con_entrepierna.Caption := UpperCase(cosTallas);
end;
{****************************************************************
Procedimiento   : DoLlamarDatos
Objetivo        : Llamar los datos en el Grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Trn1_come_pedido.DoLlamarDatos(Sender: TObject);
Var
        var_auxi_integer        : Integer;
        var_fila                : Integer;
        var_colu                : Integer;
begin
  inherited;
  //Limpiar el grid
  LimpiarGrid(Grid);
  Grid.RowCount := 2;
  Grid.ColCount := 3;
  //Cargar tallas
  doLlamarTallasReferencia(Sender);
  //Cargar colores
  doLlamarColoresReferencia(Sender);
  Try
      With quer_unid_llamar, Grid do
      Begin
           AbrirDataSet(quer_unid_llamar);
           While not Eof do
           Begin
                //Buscar la fila correspondiente al color
                var_fila := Cols[ColumnByName['gridCONS_REFE_COLOR'].Index].IndexOf(FieldByName('cons_refe_color').AsString);
                //Buscar la columna correspondiente a la talla (en el Tag)
                var_colu := -1;
                var_auxi_integer := ColumnByName['gridCONS_REFE_COLOR'].Index + 1;
                Repeat
                        If (Columns[var_auxi_integer].Tag = FieldByName('cons_grup_tall_detalle').AsInteger) then
                                var_colu := var_auxi_integer;
                        inc(var_auxi_integer);
                Until (var_auxi_integer >= ColCount-1) or (var_colu>-1);
                //Escribir el valor
                If (var_colu>0) and (var_fila>0) Then
                   Cells[var_colu, var_fila] := IntToStr(FieldByName('unidades').AsInteger);
                Next;
           End;
      End;
  Except
        on E:Exception do
        Begin
            ProgresoBarraEstado(cosOcurrioUnError);
            EjecutarMensajeError(e.message);
        End;
  End;
  quer_unid_llamar.Close;
  TotalizarGrid(Grid, 2);
  //Titulo de totales
  Grid.Cells[Grid.ColumnByName['gridNOMB_COLOR'].Index,Grid.RowCount - 1] := cosTotal;
end;
{****************************************************************
Procedimiento   : doLlamarTallasReferencia
Objetivo        : Llamar las tallas de la referencia
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Trn1_come_pedido.doLlamarTallasReferencia(Sender: TObject);
begin
  inherited;
  with quer_refe_tallas, Grid do
  Begin
       If Not Active Then Open;
       First;
       While not Eof do
       Begin
            //Incrementar una columna
            ColCount := ColCount + 1;
            //Asginar el consecutivo de la talla al tag de la columna
            Columns[ColCount-2].Tag := FieldByName('cons_grup_tall_detalle').AsInteger;
            Columns[ColCount-2].Header := FieldByName('talla').asString;
            Next;
       End;
  End;
end;
{****************************************************************
Procedimiento   : doLlamarColoresReferencia
Objetivo        : Llamar los colores de la referencia del pedido
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Trn1_come_pedido.doLlamarColoresReferencia(Sender: TObject);
begin
  inherited;
  with quer_refe_colores, Grid do
  Begin
     If not Active Then Open;
     //Llamar los colores
     First;
     While not Eof do
     Begin
          //Incrementar una Fila
          RowCount := RowCount + 1;
          //Asginar el consecutivo del color a la primera columna
          Cells[ColumnByName['gridCONS_REFE_COLOR'].Index, RowCount -2] := FieldByName('cons_refe_color').AsString;
          Cells[ColumnByName['gridNOMB_COLOR'].Index, RowCount -2] := FieldByName('nomb_color').asString;
          Next;
     End;
  End;
  //Titulo de totales
  Grid.Cells[Grid.ColumnByName['gridNOMB_COLOR'].Index,Grid.RowCount - 1] := cosTotal;
end;


procedure Trn1_come_pedido.FormCreate(Sender: TObject);
begin
  inherited;
  Insertar_Palabras(Self, WKLenguaje);
end;

end.

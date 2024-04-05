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
        Unit            : ucn1_prod_avan_tiquetes
        Objetivo        : Avance de tiquetes por orden de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           :
        Versión         : pcp4.0.0.14
*******************************************************************}
unit ucn1_prod_avan_tiquetes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, RxLookup, PCPLookUpComboEdit, RxMemDS, Boxes,
  PCPFrame, Grids, BaseGrid, AdvGrid, AdvCGrid, SCLColumnGrid, PCPProceso;

type
  Tcn1_prod_avan_tiquetes = class(T_fvent_modal)
    myTabla_ventana: TRxMemoryData;
    myTabla_ventanacons_prod_orden: TIntegerField;
    myTabla_ventanacons_prod_lote: TIntegerField;
    myTabla_ventanacons_prod_paqu_tipo: TIntegerField;
    quer_prod_ordenes: TQuery;
    quer_prod_ordenesCONS_PROD_ORDEN: TIntegerField;
    quer_prod_ordenesNUME_PROD_ORDEN: TStringField;
    quer_prod_ordenesCODI_REFERENCIA: TStringField;
    Data_prod_ordenes: TDataSource;
    quer_prod_paqu_tipos: TQuery;
    quer_prod_paqu_tiposCONS_PROD_PAQU_TIPO: TIntegerField;
    quer_prod_paqu_tiposNOMB_PROD_PAQU_TIPO: TStringField;
    data_prod_paqu_tipos: TDataSource;
    quer_prod_lotes: TQuery;
    quer_prod_lotesCONS_PROD_LOTE: TIntegerField;
    quer_prod_lotesNUME_LOTE: TStringField;
    data_prod_lotes: TDataSource;
    quer_paquetes: TQuery;
    quer_paquetesNUME_PAQUETE: TIntegerField;
    data_paquetes: TDataSource;
    quer_operaciones: TQuery;
    quer_operacionesSECU_OPERACION: TIntegerField;
    quer_operacionesCODI_OPER_COSTURA: TStringField;
    quer_operacionesNOMB_OPER_COSTURA: TStringField;
    data_operaciones: TDataSource;
    Panel1: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    comb_nume_orden: TPCPLookUpComboEdit;
    comb_nume_lote: TPCPLookUpComboEdit;
    comb_prod_paqu_tipo: TPCPLookUpComboEdit;
    dxDBMaskEdit2: TdxDBMaskEdit;
    pane_ocultar: TPanel;
    pane_avance: TPCPFrame;
    Grid: TSCLColumnGrid;
    quer_paquetesNUME_LOTE: TIntegerField;
    quer_paquetesNOMB_COLOR: TStringField;
    quer_paquetesTALLA: TStringField;
    quer_paquetesCANT_UNIDADES: TIntegerField;
    quer_tiqu_leidos: TQuery;
    quer_tiqu_leidosCONS_CONT_NOVE_TIQU_FABRICACION: TIntegerField;
    quer_tiqu_leidosCONS_CONT_NOVE_DIARIA: TIntegerField;
    quer_tiqu_leidosCODI_BARRAS: TStringField;
    quer_tiqu_leidosCONS_PROD_PAQU_TIPO: TIntegerField;
    quer_tiqu_leidosCONS_PROD_ORDEN: TIntegerField;
    quer_tiqu_leidosCONS_PROD_LOTE: TIntegerField;
    quer_tiqu_leidosCONS_PROCESO: TIntegerField;
    quer_tiqu_leidosNUME_PAQUETE: TIntegerField;
    quer_tiqu_leidosCONS_GRUP_TALL_DETALLE: TIntegerField;
    quer_tiqu_leidosCONS_REFE_COLOR: TIntegerField;
    quer_tiqu_leidosSECU_OPERACION: TIntegerField;
    quer_tiqu_leidosTIEM_OPERACION: TFloatField;
    quer_tiqu_leidosCANT_UNIDADES: TIntegerField;
    quer_tiqu_leidosFECH_SISTEMA: TDateTimeField;
    quer_tiqu_leidosUSUA_SISTEMA: TStringField;
    procedure doCambiarOrden(Sender: TObject);
    procedure doCambiarLote(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure doLimpiarGrid(Sender: TObject);
    procedure GridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure GridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure GridCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure GridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
    coitop_rows  = 5;

var
  cn1_prod_avan_tiquetes: Tcn1_prod_avan_tiquetes;

implementation

uses _func_grids, _func_varias, _cons_pcp, _cons_colores,
  ucn1_cont_prod_quie_reporta, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : doCambiarOrden
Objetivo        : Cambiar la orden de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tcn1_prod_avan_tiquetes.doCambiarOrden(Sender: TObject);
begin
  inherited;
  checkAndPostDataSet(myTabla_ventana);
  pane_ocultar.Visible := comb_nume_orden.estaVacio;
  comb_nume_lote.ClearValue;
  doCambiarLote(Sender);
end;
{****************************************************************
Procedimiento   : doCambiarLote
Objetivo        : Cambiar el lote activo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tcn1_prod_avan_tiquetes.doCambiarLote(Sender: TObject);
var
    var_fila    : Integer;
    var_colu    : Integer;
begin
  inherited;
  Try
      Grid.Visible := False;
      checkAndPostDataSet(myTabla_ventana);
      doLimpiarGrid(Sender);
      pane_avance.Visible := Not ((comb_nume_orden.EstaVacio) or (comb_nume_lote.EstaVacio) or
            (comb_prod_paqu_tipo.EstaVacio));
      //Si no tiene todos los datos, salir
      if not pane_avance.Visible Then Exit;
      With Grid do
      Begin
          //Llamar las operaciones
          quer_operaciones.First;
          For var_fila := 1 to quer_Operaciones.RecordCount do
          Begin
              Cells[ColumnByName['CODI_OPERACION'].Index, RowCount - 1] := quer_Operaciones.FieldByName('CODI_OPER_COSTURA').AsString;
              Cells[ColumnByName['SECU_OPERACION'].Index, RowCount - 1] := quer_Operaciones.FieldByName('SECU_OPERACION').AsString;
              Cells[ColumnByName['NOMB_OPERACION'].Index, RowCount - 1] := quer_Operaciones.FieldByName('NOMB_OPER_COSTURA').AsString;
              if not quer_operaciones.Eof Then
                 RowCount := RowCount + 1;
              quer_operaciones.Next;
          End;
          //Llamar los paquetes
          quer_paquetes.First;
          For var_colu := 1 to quer_paquetes.RecordCount do
          Begin
              if not quer_paquetes.Eof then
              Begin
                ColCount := ColCount + 1;
                Columns[colCount - 1].Width := 35;
                Columns[colCount - 1].ReadOnly := False;
                Columns[colCount - 1].Alignment := taRightJustify;
              End;
              Cells[ColCount - 1, 0] := quer_paquetes.FieldByName('nume_lote').asString;
              Cells[ColCount - 1, 1] := quer_paquetes.FieldByName('nume_paquete').asString;
              Cells[ColCount - 1, 2] := quer_paquetes.FieldByName('talla').asString;
              Cells[ColCount - 1, 3] := quer_paquetes.FieldByName('nomb_color').asString;
              Cells[ColCount - 1, 4] := quer_paquetes.FieldByName('cant_unidades').asString;
              quer_paquetes.Next;
          End;
          //Tiquetes leidos
          With quer_tiqu_leidos do
          Begin
             First;
             While not eof do
             Begin
                  //Buscar la fila
                  var_fila :=  GridBuscarValorColumna(Grid, ColumnByName['SECU_OPERACION'].Index, FieldByName('secu_operacion').asString, coiTop_Rows, RowCount - 1);
                  var_colu := FieldByName('nume_paquete').AsInteger + ColumnByName['PUNT_CONTROL'].Index;
                  //FontNames[var_colu, var_fila] := FieldByName('CONS_CONT_NOVE_TIQU_FABRICACION').AsString; RC20.19
                  FontNames[var_colu, var_fila] := FieldByName('CODI_BARRAS').AsString;
                  Cells[var_colu, var_fila] := 'x';

                  //Siguiente
                  Next;
             End;
          End;
      End;
      //Fix
      Try
        Grid.FixedRows := coiTop_Rows;
        Grid.FixedCols := grid.ColumnByName['PUNT_CONTROL'].Index + 1;
      Except
      End;
      ///////Error
      ///////      AjustarGrid(Grid);
      grid.Columns[grid.ColumnByName['PUNT_CONTROL'].Index].Width := 35;
  Except
    on e:Exception do
        EjecutarMensajeError(e.Message);
  End;
  Try
    Grid.Col := Grid.FixedCols;
    Grid.Row := Grid.FixedRows;
  Except
  End;
  Grid.Visible := True;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tcn1_prod_avan_tiquetes.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir las consultas
  AbrirDataSet(quer_prod_ordenes);
  AbrirDataSet(quer_prod_lotes);
  AbrirDataSet(quer_prod_paqu_tipos);
  AbrirDataSet(quer_operaciones);
  AbrirDataSet(quer_paquetes);
  AbrirDataSet(quer_tiqu_leidos);
	Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doLimpiarGrid
Objetivo        : Limpiar el grid de avance de tiquetes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tcn1_prod_avan_tiquetes.doLimpiarGrid(Sender: TObject);
Var
    var_colu    : Integer;
    var_Fila    : Integer;
begin
  inherited;
  LimpiarGrid(Grid, 1, Grid.ColumnByName['PUNT_CONTROL'].Index);
  Grid.RowCount := coiTop_Rows + 1;
  For var_colu := Grid.ColumnByName['PUNT_CONTROL'].Index + 1 to Grid.ColCount - 1 do
    Grid.Columns[Grid.ColumnByName['PUNT_CONTROL'].Index + 1].destroy;
  For var_fila := 1 to coiTop_rows do
    Grid.MergeCells(0, var_fila - 1, grid.ColumnByName['PUNT_CONTROL'].Index + 1, 1);
  //Titulos
  Grid.Cells[grid.ColumnByName['PUNT_CONTROL'].Index, 0] := cosLote;
  Grid.Cells[grid.ColumnByName['PUNT_CONTROL'].Index, 1] := cosPaquete;
  Grid.Cells[grid.ColumnByName['PUNT_CONTROL'].Index, 2] := cosTalla;
  Grid.Cells[grid.ColumnByName['PUNT_CONTROL'].Index, 3] := cosColor;
  Grid.Cells[grid.ColumnByName['PUNT_CONTROL'].Index, 4] := cosUnidades;
end;

procedure Tcn1_prod_avan_tiquetes.GridGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  if (aRow in [2,3]) and (aCol > Grid.ColumnByName['PUNT_CONTROL'].Index) Then
    HAlign := taLeftJustify;
end;

procedure Tcn1_prod_avan_tiquetes.GridGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  inherited;
  //Fuente
  aFont.Size := 7;
  With Grid do
  Begin
      //Colores en la X
      if (aRow >= coiTop_Rows) and (aCol > ColumnByName['PUNT_CONTROL'].Index) Then
        if (Cells[aCol, aRow] <> '') Then
        Begin
            aFont.Color := clInicioGradienteWarning;
            aBrush.Color := clInicioGradienteWarning;
        End;
  End;
end;
{****************************************************************
Procedimiento   : GridCanEditCell
Objetivo        : No permite editar ninguna celda
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tcn1_prod_avan_tiquetes.GridCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
  inherited;
  CanEdit := False;
end;
{****************************************************************
Procedimiento   : GridDblClick
Objetivo        : Mostrar quién reportó el tiquete
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Sep-2005
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tcn1_prod_avan_tiquetes.GridDblClick(Sender: TObject);
begin
  inherited;
  With Grid do
  Begin
      //Colores en la X
      if (Row >= coiTop_Rows) and (Col > ColumnByName['PUNT_CONTROL'].Index) Then
        if (Cells[Col, Row] <> '') Then
        Begin
                 Application.CreateForm(Tcn1_cont_prod_quie_reporta, cn1_cont_prod_quie_reporta);
                 cn1_cont_prod_quie_reporta.Ejecutar(FontNames[Col, Row]);
        End
        Else
        Begin
                EjecutarMensaje(cosTiqueteNoHaSidoReportado, mtInformation, [mbOk], 0); 
        End;
  End;
end;

end.

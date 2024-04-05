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
        Unit            : un1_prod_orde_liqu_corte
        Objetivo        : Liquidar las unidades cortadas y
                          el consumo de materiales por orden de
                          producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Noviembre 26 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}
unit un1_prod_orde_liqu_corte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_prod_padre, Db, RxMemDS, ufra_mens_atencion,
  ufra_prod_resp_lote_proceso, ufra_prod_orde_unid_lote, Grids, BaseGrid,
  AdvGrid, AdvCGrid, SCLColumnGrid, ExtCtrls, dfsSplitter, SCLTabs,
  PictureContainer, DBTables, AdvPanel, dxExEdtr, dxCntner,
  SCLPropiedadesForm, DBActns, ActnList, ImgList, TBXDkPanels,
  TBXButtonSCL, RxLookup, PCPLookUpComboEdit, PCPFrame, Boxes, PCPProceso,
  dxEditor, dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, TBX, TB2Item,
  TB2Dock, TB2Toolbar;
type
  Tfn1_prod_orde_liqu_corte = class(Tfn1_prod_padre)
    page: TSCLPageControl;
    page_unidades: TSCLTabSheet;
    page_materiales: TSCLTabSheet;
    page_avance: TSCLTabSheet;
    dfsSplitter1: TdfsSplitter;
    PCPFrame1: TPCPFrame;
    PCPFrame2: TPCPFrame;
    quer_mate_principal: TQuery;
    data_mate_principal: TDataSource;
    fram_mens_refe_mate_basico: Tffra_mens_atencion;
    fram_programado: Tffra_prod_orde_unid_lote;
    grid: TSCLColumnGrid;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem3: TTBXItem;
    TBXItem2: TTBXItem;
    tabl_guardar: TRxMemoryData;
    tabl_guardarmyField: TIntegerField;
    data_Guardar: TDataSource;
    quer_elim_unidades: TQuery;
    quer_guar_unidades: TQuery;
    quer_llam_unidades: TQuery;
    acti_ventana: TActionList;
    acti_cancelar: TAction;
    acti_guardar: TAction;
    acti_impo_unid_planeadas: TAction;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem4: TTBXItem;
    acti_limpiar: TAction;
    fram_avance: Tffra_prod_resp_lote_proceso;
    procedure comb_nume_ordenChange(Sender: TObject);
    procedure padr_comb_nume_loteChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure doLlamarUnidadesCortadas(Sender: TObject);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure gridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure gridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure doHacerCalculos(Sender: TObject);
    procedure doIniciarEdicion(Sender: TObject);
    procedure data_GuardarStateChange(Sender: TObject);
    procedure tabl_guardarBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acti_guardarExecute(Sender: TObject);
    procedure acti_cancelarExecute(Sender: TObject);
    procedure acti_limpiarExecute(Sender: TObject);
    procedure acti_impo_unid_planeadasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_prod_orde_liqu_corte: Tfn1_prod_orde_liqu_corte;

implementation

uses _MDI, _func_varias, _cons_pcp, _func_pcp, _func_graficas, _func_grids,
  _cons_colores, _Traductor;

Const
    cons_proc_actual    : Integer = 8;

{$R *.DFM}
{****************************************************************
Procedimiento   : comb_nume_ordenChange
Objetivo        : Actualizar la ventana cuando cambia la orden
                  de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.comb_nume_ordenChange(Sender: TObject);
begin
  inherited;
  page.Visible := Not(comb_nume_orden.EstaVacio) and Not(padr_comb_nume_lote.EstaVacio);
  fram_mens_refe_mate_basico.Visible := not (comb_nume_orden.EstaVacio) and (quer_mate_principal.Active) and
            (quer_mate_principal.RecordCount = 0);
  padr_comb_nume_lote.Enabled := Not fram_mens_refe_mate_basico.Visible;
  //Llamar el procedimiento de actualización del lote
  padr_comb_nume_loteChange(Sender);
end;
{****************************************************************
Procedimiento   : padr_comb_nume_loteChange
Objetivo        : Actualizar la ventana cuando cambia el número de lote
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.padr_comb_nume_loteChange(
  Sender: TObject);
begin
  inherited;
  page.Visible := Not(comb_nume_orden.EstaVacio) and Not(padr_comb_nume_lote.EstaVacio);
  if Not page.Visible Then Exit;
  //Llamar las unidades programadas
  fram_programado.doEjecutarFrame(comb_nume_orden.KeyValue,
        padr_comb_nume_lote.KeyValue, quer_mate_principal.FieldByName('cons_refe_material').asInteger, padr_comb_nume_lote.KeyValue);
  //Llamar las unidades cortadas
  doLlamarUnidadesCortadas(Sender);
  //Llamar el frame de avance
  fram_avance.doEjecutarFrame(padr_comb_nume_lote.keyValue, cons_proc_actual);
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.FormCreate(Sender: TObject);
begin
  inherited;
  LoteVisible := True;
  fram_mens_refe_mate_basico.SetWarningColors;
  //Abrir consultas adicionales
  AbrirDataSet(Tabl_guardar);
  AbrirDataSet(quer_mate_principal);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doLlamarUnidadesCortadas
Objetivo        : Muestra la liquidación de unidades para el lote
                  seleccionado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 27 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.doLlamarUnidadesCortadas(
  Sender: TObject);
var
    var_fila    : Integer;
    var_colu    : Integer;  
begin
  inherited;
  //Limpiar el Grid
  LimpiarGrid(Grid,  1, Grid.ColumnByName['UNIDADES'].Index + 1);
  With Grid do
  Begin
      //Filas y columnas
      ColCount := fram_programado.fram_unidades.Grid.ColCount;
      RowCount := fram_programado.fram_unidades.Grid.RowCount;
      //Llamar las tallas y colores de
      For var_colu := ColumnByName['UNIDADES'].Index + 1 To ColCount - 1 do
      Begin
          Columns[var_colu].Tag := fram_programado.fram_unidades.Grid.Columns[var_colu].Tag;
          Columns[var_colu].Header := fram_programado.fram_unidades.Grid.Columns[var_colu].Header;
          Columns[var_colu].Editor := edPositiveNumeric;
      End;
      For var_fila := 1 To RowCount - 1 do
      Begin
          Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila] := fram_programado.fram_unidades.Grid.Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila];
          Cells[ColumnByName['NOMB_COLOR'].Index, var_fila] := fram_programado.fram_unidades.Grid.Cells[ColumnByName['NOMB_COLOR'].Index, var_fila];
          Cells[ColumnByName['NUME_COLOR'].Index, var_fila] := fram_programado.fram_unidades.Grid.Cells[ColumnByName['NUME_COLOR'].Index, var_fila];
      End;
      //Abrir la consulta y mostrar las unidades guardardas
      With quer_llam_unidades do
      Begin
          If Active Then Close;
          ParamByName('cons_prod_lote').Value := padr_comb_nume_lote.KeyValue;
          Open;
          While not Eof do
          Begin
              var_Fila := GridBuscarValorColumna(Grid, ColumnByName['CONS_REFE_COLOR'].Index, FieldByName('cons_Refe_color').asString, 1, RowCount - 2);
              var_colu := GridBuscarTag(Grid, FieldByName('cons_grup_tall_detalle').asInteger, ColumnByName['UNIDADES'].Index + 1, ColCount - 2);
              Cells[var_colu, var_fila] := FormatFloat('0', FieldByName('cant_unidades').asInteger);
              //Siguiente registro
              Next;
          End;
          Close;
      End;
  End;
  DoHacerCalculos(Sender);
end;

procedure Tfn1_prod_orde_liqu_corte.gridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
  //Seleccionar la misma celda en las unidades programadas
  fram_programado.fram_unidades.Grid.Col := aCol;
  fram_programado.fram_unidades.Grid.Row := aRow;
  fram_programado.fram_unidades.Repaint;
  //Recalcular los totales
  doHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : gridGetAlignment
Objetivo        : Alinear las celdas del Grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 27 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.gridGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  With Grid do
  Begin
      //Centrar los títulos
      If (ARow = 0) Then hAlign := taCenter
      //Cantidades a la derecha
      Else if (ACol > ColumnByName['UNIDADES'].Index) Then
        hAlign := taRightJustify;
  End;
end;
{****************************************************************
Procedimiento   : gridGetCellColor
Objetivo        : Dar color a las celdas del grid de unidades
                  cortadas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 27 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.gridGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  inherited;
    With Grid do
    Begin
        //Color de los totales
        If ((aCol = ColCount - 1) and (ARow > 0)) or 
            ((aCol > ColumnByName['UNIDADES'].Index) and (aRow = RowCount - 1)) Then
        Begin
            aFont.Color := cocTotalText;
            aBrush.Color := cocTotal;
        End;
        //Color de las unidades (cuando se requieren)
        If (ACol > ColumnByName['UNIDADES'].Index) and (aCol < ColCount - 1)
        and (Arow > 0) and (aRow < RowCount - 1) Then
        Begin
             if fram_programado.fram_unidades.grid.Cells[aCol, aRow] = '' Then
                aBrush.Color := clGridSinDato;
        End;
    End;
end;
{****************************************************************
Procedimiento   : gridKeyDown
Objetivo        : Controlar las pulsaciones sobre el grid de unidades
                  cortadas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 27 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.gridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Iniciar la edicion
  if Not (Key in [vk_up, vk_left, vk_down, vk_right]) Then
  Begin
        doIniciarEdicion(Sender);
  End;
  if key = vk_Return then
  Begin
      //Hacer calculos
      doHacerCalculos(Sender);
  End;
end;
{****************************************************************
Procedimiento   : doHacerCalculos
Objetivo        : Realiza los calculos del grid de unidades
                  cortadas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 27 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.doHacerCalculos(
  Sender: TObject);
begin
  inherited;
  //Calcular los totales del grid de unidades cortadas
  totalizarGrid(Grid, Grid.ColumnByName['UNIDADES'].Index+1, 1, Grid.ColCount - 2, Grid.RowCount -2,
                Grid.ColCount - 1, Grid.RowCount - 1);
end;
{****************************************************************
Procedimiento   : doIniciarEdicion
Objetivo        : Simula el inicio de sesión
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 27 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.doIniciarEdicion(
  Sender: TObject);
begin
  inherited;
  If Not (tabl_Guardar.State in [dsEdit, dsInsert]) then
    tabl_guardar.Edit;
end;
{****************************************************************
Procedimiento   : data_GuardarStateChange
Objetivo        : Actualizar los controles de la ventana cuando cambie
                  el estado de la ventana principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.data_GuardarStateChange(
  Sender: TObject);
begin
  inherited;
  //Habilitar/Deshabilitar panel de información
  SetControlEnabled(padr_fram_informacion, (Tabl_Guardar.Active) and (Tabl_Guardar.State = dsBrowse));
  acti_guardar.Enabled := (Tabl_Guardar.Active) and (Tabl_Guardar.State in [dsEdit, dsInsert]);
  acti_cancelar.Enabled := acti_guardar.Enabled;
end;
{****************************************************************
Procedimiento   : tabl_guardarBeforePost
Objetivo        : Guardar las unidades
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.tabl_guardarBeforePost(
  DataSet: TDataSet);
Var
    var_fila    : Integer;
    var_colu    : Integer;
begin
  inherited;
  //Verificar que exista una selección válida
  if (comb_nume_orden.EstaVacio) or (padr_comb_nume_lote.EstaVacio) Then
  Begin
      EjecutarMensajeError(cosErrorDatosNoValidos);
      Exit;
  End;
  Try
        StartDBTransaction;
        //Eliminar los registros existentes
        ProgresoBarraEstado(cosTrabajando);
        quer_elim_unidades.ParamByName('cons_prod_lote').Value := padr_comb_nume_lote.KeyValue;
        quer_elim_unidades.ExecSQL;
        //Guardar los registros actuales
        With Grid, quer_guar_unidades do
        Begin
            //Inicializar los parámetros
            ParamByName('cons_prod_lote').Value := padr_comb_nume_lote.KeyValue;
            //Recorrer el Grid y guardar las cantidades válidas
            For var_colu := ColumnByName['UNIDADES'].Index + 1 to ColCount - 2 do
               For var_fila := 1 to RowCount - 2 do
               Begin
                   If (Cells[var_colu, var_fila] <> '') and (Cells[var_colu, var_fila] <> '0') Then
                   Begin
                       ParamByName('cons_refe_color').Value := StrToInt(Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila]);
                       ParamByName('cons_grup_tall_detalle').Value := Columns[var_colu].Tag;
                       ParamByName('cant_unidades').Value := StrToInt(Cells[var_colu, var_fila]);
                       ExecSQL;
                   End;
               End;
        End;
        //Hacer permanentes los cambios
        CommitDBWork;
  Except
        On e:Exception do
        Begin
            //Cancelar los cambios
            RollBackDBWork;
            EjecutarMensajeError(e.Message);
        End;
  End;
  ProgresoBarraEstado;
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Preparar la ventana para cerrarla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  //Verificar que la tabla de guardardo está en edición
  
  inherited;
end;
{****************************************************************
Procedimiento   : acti_guardarExecute
Objetivo        : Guardar los cambios en las unidades
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.acti_guardarExecute(Sender: TObject);
begin
  inherited;
  tabl_guardar.Post;
end;
{****************************************************************
Procedimiento   : acti_cancelarExecute
Objetivo        : Cancela los cambios realizados en las unidades
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.acti_cancelarExecute(Sender: TObject);
begin
  inherited;
  if (Confirmar(cosDeseaCancelar) = mrYes) Then
  Begin
     doLlamarUnidadesCortadas(Sender);
     tabl_guardar.Cancel;
  End;
end;
{****************************************************************
Procedimiento   : acti_limpiarExecute
Objetivo        : Limpiar las unidades cortadas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.acti_limpiarExecute(Sender: TObject);
begin
  inherited;
  LimpiarGrid(Grid, 1, Grid.ColumnByName['UNIDADES'].Index + 1);
  //Totalizar
  TotalizarGrid(Grid, Grid.ColumnByName['UNIDADES'].Index + 1, 1);
  DoIniciarEdicion(Sender);
end;
{****************************************************************
Procedimiento   : acti_impo_unid_planeadasExecute
Objetivo        : Importar las unidades planeadas a las cortadas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 29 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_prod_orde_liqu_corte.acti_impo_unid_planeadasExecute(
  Sender: TObject);
Var
    var_fila    : Integer;
    var_colu    : Integer;
begin
  inherited;
  For var_colu := Grid.ColumnByName['UNIDADES'].Index + 1 to Grid.ColCount - 2 do
    For var_fila := 1 to Grid.RowCount - 2 do
       Grid.Cells[var_colu, var_fila] := fram_programado.fram_unidades.grid.Cells[var_colu, var_fila];
  //Totalizar
  TotalizarGrid(Grid, Grid.ColumnByName['UNIDADES'].Index + 1, 1);
  DoIniciarEdicion(Sender);
end;

end.

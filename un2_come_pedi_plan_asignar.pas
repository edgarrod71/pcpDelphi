unit un2_come_pedi_plan_asignar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, RxMemDS, ufra_historialDB, StdCtrls, Grids, BaseGrid,
  AdvGrid, AdvCGrid, SCLColumnGrid, PCPFrame, SCLTabs, PictureContainer,
  DBTables, AdvPanel, dxExEdtr, dxCntner, Db, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, Boxes, PCPProceso, dxEditor, dxEdLib,
  dxDBELib, SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock,
  TB2Toolbar;

  
type
  Tfn2_come_pedi_plan_asignar = class(T_fvent_modal)
    page: TSCLPageControl;
    page_nueva: TSCLTabSheet;
    page_existente: TSCLTabSheet;
    acti_ventana: TActionList;
    quer_tallas: TQuery;
    quer_colores: TQuery;
    quer_unidades: TQuery;
    PCPFrame2: TPCPFrame;
    grid_Nuevo: TSCLColumnGrid;
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    edit_nume_orden: TdxDBEdit;
    page_anotaciones: TSCLTabSheet;
    myTabla_Ventana: TRxMemoryData;
    quer_inse_orden: TQuery;
    quer_inse_unidades: TQuery;
    tabl_historial: TTable;
    PCPFrame3: TPCPFrame;
    fram_historial: Tffra_historialDB;
    labe_auto_Generar: TLabel;
    fram_informacion: TPCPFrame;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    data_usuarios: TDataSource;
    quer_evento: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure grid_NuevoColumnSize(Sender: TObject; ACol: Integer;
      var Allow: Boolean);
    procedure grid_NuevoCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure grid_NuevoGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grid_NuevoGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure myTabla_VentanaBeforePost(DataSet: TDataSet);
    procedure myTabla_VentanaAfterPost(DataSet: TDataSet);
    procedure tabl_historialBeforePost(DataSet: TDataSet);
    procedure page_anotacionesShow(Sender: TObject);
    procedure myTabla_VentanaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    var_cons_referencia : Integer;
  public
    { Public declarations }
    procedure doMostrarNuevo(acons_referencia: Integer; var_nume_orde_sugerido : String = '');
  end;

var
  fn2_come_pedi_plan_asignar: Tfn2_come_pedi_plan_asignar;

ResourceString
        cosOrdenProduccionCreada        = 'Se ha creado la orden de producción "%s".';

implementation

uses _func_varias, _cons_pcp, _MDI, _func_pcp, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_plan_asignar.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar
  labe_auto_Generar.Caption := cosProduccionAutoGenerar;
  page.Align := alClient;
  page.ActivePage := page_nueva;
  ActiveControl := edit_nume_orden;
  padr_acti_nuevo.enabled := false;
  page_anotaciones.TabVisible := False;
  fram_informacion.Visible := False;
  var_cons_referencia := -1;
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doMostrarNuevo
Objetivo        : Carga los datos de la agrupación del pedido
                  en el grid del tab de Nueva Orden
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_plan_asignar.doMostrarNuevo(acons_referencia : Integer;
        var_nume_orde_sugerido : String = '');        
var
        var_colu        : Integer;
        var_fila        : Integer;
        var_cons_pedi_referencia     : Integer;
        var_cons_refe_color     : Integer;
        var_auxi        : Integer;
begin
  inherited;
  //Guardar la referencia en una variable
  var_cons_referencia := aCons_referencia;
  with Grid_Nuevo do
  Begin
        //Limpiar el Grid
        LimpiarGrid(Grid_nuevo);
        RowCount := 1;
        //Destriur las columnas que no se necesitan
        For var_colu := ColumnByName['UNIDADES'].Index + 1 To ColCount - 1 do
                Columns[ColCount - 1].Destroy;
        //Cargar las tallas
        With quer_tallas do
        Begin
             //Reabrir la consulta
             If Active then Close;
             Open;
             //Mostrar las tallas
             While not Eof do
             Begin
                   ColCount := ColCount + 1;
                   //Escribir la secuencia de la talla en el tag de la columna
                   Columns[ColCount - 1].Tag := FieldByName('cons_grup_tall_detalle').AsInteger;
                   //Escribir la talal
                   Cells[ColCount - 1, 0] := FieldByName('talla').asString;
                   Next;
             End;
             Close;
        End; 
        //Una columna para el total
        ColCount := ColCount + 1;
        //Cargar los colores
        With quer_colores do
        Begin
            //Reabrir la ventana
            If Active then Close;
            Open;
            //Inicializar las variables auxiliares
            var_cons_pedi_referencia := -1;
            var_cons_refe_color := -1;
            //Recorrer la consulta de colores
            While not Eof do
            Begin
                 //Verificar si requiere una nueva fila (cambio de pedido)
                 if (FieldByName('cons_pedi_referencia').AsInteger <> var_cons_pedi_referencia) Or
                    (FieldByName('cons_refe_color').AsInteger <> var_cons_refe_color) Then
                 Begin
                     //Inicializar los contadores
                     var_cons_pedi_referencia := FieldByName('cons_pedi_referencia').asInteger;
                     var_cons_Refe_color := FieldByName('cons_Refe_color').AsInteger;
                     //Incrementar una fila
                     RowCount := RowCount + 1;
                     var_fila := RowCount - 1;
                     //Llamar los datos
                     For var_Colu := 1 To ColumnByName['UNIDADES'].Index do
                     Begin
                            Cells[ColumnByName[Columns[var_colu - 1].Name].Index, var_fila] :=
                                    FieldByName(Columns[var_colu - 1].Name).AsString;
                     End;
                 End;
                 //Siguiente registro 
                 Next;
            End; 
            Close;
        End;
        //Una fila para el total
        RowCount := RowCount + 1;
        //Llamar las cantidades
        With quer_unidades do
        Begin
               //Reabrir la ventana
               If Active then Close;
               Open;        
               While not Eof do
               Begin
                     //Obtener la columna de la talla
                     var_colu := -1;
                     var_auxi := ColumnByName['UNIDADES'].Index + 1;
                     Repeat
                            If Columns[var_auxi].Tag = FieldByName('cons_grup_tall_detalle').AsInteger then
                                  var_colu := var_auxi;
                            inc(var_auxi);
                     Until (var_auxi >= ColCount) or (var_colu > ColumnByName['UNIDADES'].Index);
                     //Obtener la fila del pedido y el color
                     var_fila := -1;
                     var_auxi := 1;
                     Repeat
                            If (Cells[ColumnByName['CONS_PEDI_REFERENCIA'].Index, var_auxi] = FieldByName('cons_pedi_referencia').AsString) and
                               (Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_auxi] = FieldByName('cons_refe_color').AsString) Then
                                   var_fila := var_auxi;
                            Inc(var_auxi);
                     Until (var_auxi >= RowCount) or (var_fila > -1);
                     //Si encontro la columna y la fila, escribir las unidades
                     If (var_colu > ColumnByName['UNIDADES'].Index) and 
                        (var_fila >-1) then 
                     Begin
                         //Escribirlo en la celda
                         Cells[var_colu, var_fila] := IntToStr(FieldByName('unidades').AsInteger);
                         //Guardar el consecutivo (cons_pedi_unidades) del registro
                         FontNames[var_colu, var_fila] := (FieldByName('cons_pedi_unidades').asString);
                     End;
                     Next;
               End;
               Close;
           End;
           //Totalizar las unidades
           TotalizarGrid(grid_nuevo, ColumnByName['UNIDADES'].index + 1, 1,
                ColCount - 2, RowCount - 2, ColCount - 1, RowCount - 1,
                True, True, True);
           //Escribir el título del total
           Cells[ColumnByName['NUME_COLOR'].index, RowCount - 1] := cosTotal;
  End;
  //Insertar el registro
  myTabla_ventana.Insert;
  //Mostrar el número de orden sugerido
  if var_nume_orde_sugerido <> '' Then
    Begin
        if not (myTabla_Ventana.State in [dsInsert, dsEdit]) then myTabla_ventana.Edit;
        myTabla_ventana.FieldByName('nume_prod_orden').Value := var_nume_orde_sugerido;
    End;
  //Mostrar la ventana
  ShowModal;
end;
{****************************************************************
Procedimiento   : gridColumnSize
Objetivo        : No permitir que se cambie el tamaño de las
                  columnas invisibles (Width = 0, tag = -1);
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_plan_asignar.grid_NuevoColumnSize(Sender: TObject;
  ACol: Integer; var Allow: Boolean);
begin
  inherited;
  if Not (Sender is TADVColumnGrid) Then Exit;
  if aCol > 0 Then
     Allow :=  ((Sender as TADVColumnGrid).Columns[aCol].Tag > -1);
end;
{****************************************************************
Procedimiento   : gridCanEditCell
Objetivo        : Evitar que se editen las cantidades
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_plan_asignar.grid_NuevoCanEditCell(Sender: TObject;
  ARow, ACol: Integer; var CanEdit: Boolean);
begin
  inherited;
  CanEdit := False;
end;
{****************************************************************
Procedimiento   : grid_NuevoGetCellColor
Objetivo        : Dar color a las celdas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_plan_asignar.grid_NuevoGetCellColor(
  Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState;
  ABrush: TBrush; AFont: TFont);
begin
  inherited;
  //Validar que sea un ADVColumnGrid
  if Not (Sender is TADVColumnGrid) Then Exit;
  With (Sender as TADVColumnGrid) do
  Begin
        //Totales
        If ((ACol = ColCount - 1) and (Arow > 0)) or
           ((ARow = RowCount - 1) and (ACol > ColumnByName['NUME_COLOR'].index)) Then
        Begin
                aBrush.color := cocTotal;
                aFont.Color := cocTotalText;
        End;
  End;
end;
{****************************************************************
Procedimiento   : grid_NuevoGetAlignment
Objetivo        : Alinear las celdas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_plan_asignar.grid_NuevoGetAlignment(
  Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment;
  var VAlign: TVAlignment);
begin
  inherited;
  //Validar que sea un ADVColumn
  if Not (Sender is TADVColumnGrid) Then Exit;
  With (Sender as TADVColumnGrid) do
  Begin
        //Centrar titulos
        If (aRow = 0) Then hAlign:= taCenter;
        //Alinear a la derecha las unidades
        If (ACol > ColumnByName['UNIDADES'].Index) and (ARow > 0) Then hAlign := taRightJustify;
  End;  
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles cuando cambie el estado de
                  la tabla de ordenes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_plan_asignar.myTabla_VentanaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  Try
     With myTabla_Ventana do
     Begin
            //Iniciar una transaccion en la dB
            StartDBTransaction;
            //Si está insertando orden, generar el consecutivo
            If (State=dsInsert) then
               FieldByName('cons_prod_orden').Value := GenerarSecuencia('pcp_prod_ordenes', 'cons_prod_orden');
            //Validar el número de la orden
            if ((FieldByName('nume_prod_orden').Value = '') or (varIsNull(FieldByName('nume_prod_orden').Value))) Then 
                (FieldByName('nume_prod_orden').Value := FieldByName('cons_prod_orden').AsString);
                
     End;    
     //Generar la orden
     quer_inse_orden.ExecSQL;
     //Guardar los registros de las unidades programadas
     With quer_unidades do
     Begin
         //Ubicarse en el primer registro
         If (Not Active) then Open
         Else First;
         //Recorrerla e ir insertando los valores
         While not Eof do
         Begin
                quer_inse_unidades.ParamByName('cons_pedi_unidades').Value := FieldByName('cons_pedi_unidades').AsInteger;
                quer_inse_unidades.ParamByName('cons_prod_orden').Value := myTabla_Ventana.FieldByname('cons_prod_orden').AsInteger;
                quer_inse_unidades.ExecSQL;
                Next;
         End;
     End;
     CommitDBWork;
     EjecutarMensaje(Format(cosOrdenProduccionCreada, [myTabla_Ventana.FieldByName('nume_prod_orden').AsString]), mtInformation,
                [mbOk], 0);
  Except
      On e:Exception do
      Begin
           RollBackDBWork;
           EjecutarMensajeError(e.Message);
           //Cancelar el guardado
           Abort;
      End;
  End;
  //Ejecutar el evento de exportación
  With quer_evento do
    Begin
        Close;
        Open;
        //Si genera un resultado, mostrarlo porque es error
        if (FieldByName('Resultado').asString <> '') Then
            _fmdi.MostrarAlerta(cosErrorVinculoOrdenesProduccion, FieldByName('Resultado').AsString, 1);
        Close;
    End;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterPost
Objetivo        : Ocultar los tab que no se necesitan despues de
                  guardar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_plan_asignar.myTabla_VentanaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //Ocultar los page de orden y enfocar el de anotaciones
  padr_acti_guardar.visible := False;
  padr_acti_cancelar.Visible := False;
  page_nueva.TabVisible := False;
  page_existente.TabVisible := False;
  page_anotaciones.TabVisible := True;
  fram_informacion.Visible := True;
  page.ActivePage := page_anotaciones;
end;
{****************************************************************
Procedimiento   : tabl_historialBeforePost
Objetivo        : Generar la secuencia para la tabla de historial
                  de ordenes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_plan_asignar.tabl_historialBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  GenerarSecuencia(tabl_historial);
end;

procedure Tfn2_come_pedi_plan_asignar.page_anotacionesShow(
  Sender: TObject);
begin
  inherited;
  //Abrir la tabla de historial. Si no abre, cerrar el form
  If Not tabl_historial.Active then
        If Not (AbrirDataSet(tabl_historial)) Then Close;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterInsert
Objetivo        : Inicializar el registro de la tabla en memoria
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn2_come_pedi_plan_asignar.myTabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Asignar la referencia de la orden
  myTabla_Ventana.FieldByName('cons_Referencia').Value := var_cons_referencia;
end;

end.

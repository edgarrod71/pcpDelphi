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
        Unit            : ufra_prod_orde_dist_paquetes
        Objetivo        : Realizar la distribución de paquetes por
                          lote de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 01 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}

unit ufra_prod_orde_dist_paquetes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, RxLookup, PCPLookUpComboEdit, StdCtrls, SoCtrls, SCLDBLabel,
  Db, DBTables, Grids, BaseGrid, AdvGrid, AdvCGrid, ExtCtrls, TB2Dock,
  TB2Toolbar, TBX, RxMemDS, TB2Item, SohoBtns, SCLButton, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, Menus, SCLColumnGrid, TBXDkPanels,
  TBXButtonSCL;

type
  Tffra_prod_orde_dist_paquetes = class(TFrame)
    TBXDock1: TTBXDock;
    barr_opciones: TTBXToolbar;
    Panel4: TPanel;
    grid: TSCLColumnGrid;
    quer_paqu_tipos: TQuery;
    data_paqu_tipos: TDataSource;
    pane_seleccion: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    comb_paqu_tipo: TPCPLookUpComboEdit;
    acti_frame: TActionList;
    acti_guardar: TAction;
    acti_cancelar: TAction;
    acti_duplicar: TAction;
    acti_insertar: TAction;
    acti_adicionar: TAction;
    acti_eliminar: TAction;
    acti_move_arriba: TAction;
    acti_move_abajo: TAction;
    tabl_guardar: TRxMemoryData;
    data_guardar: TDataSource;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    myTabla_ventana: TRxMemoryData;
    acti_paqu_automatico: TAction;
    TBXItem1: TTBXItem;
    acti_impr_tiquetes: TAction;
    TBXItem10: TTBXItem;
    pane_totales: TPanel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    boto_ayuda: TTBXButtonSCL;
    boto_warning: TTBXButtonSCL;
    edit_tota_paquetes: TdxCurrencyEdit;
    edit_tota_unidades: TdxCurrencyEdit;
    myData_ventana: TDataSource;
    quer_dele_paquetes: TQuery;
    quer_inse_paquetes: TQuery;
    quer_sele_paquetes: TQuery;
    quer_colores: TQuery;
    quer_tallas: TQuery;
    pop_grid: TTBXPopupMenu;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    TBXItem13: TTBXItem;
    TBXItem14: TTBXItem;
    TBXItem15: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem16: TTBXItem;
    TBXItem17: TTBXItem;
    boto_imprimir: TTBXSubmenuItem;
    acti_copiar: TAction;
    acti_cortar: TAction;
    acti_pegar: TAction;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem19: TTBXItem;
    TBXItem20: TTBXItem;
    TBXItem21: TTBXItem;
    TBXItem22: TTBXItem;
    acti_impr_distribucion: TAction;
    acti_anexar: TAction;
    TBXSeparatorItem6: TTBXSeparatorItem;
    TBXItem23: TTBXItem;
    acti_anex_asistente: TAction;
    TBXItem24: TTBXItem;
    TBXItem25: TTBXItem;
    TBXItem26: TTBXItem;
    TBGroupItem1: TTBGroupItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    procedure acti_frameUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure doLlamarDatos(Sender: TObject);
    procedure comb_paqu_tipoChange(Sender: TObject);
    procedure data_guardarStateChange(Sender: TObject);
    procedure doIniciarEdicion(Sender: TObject);
    procedure tabl_guardarBeforePost(DataSet: TDataSet);
    procedure acti_guardarExecute(Sender: TObject);
    procedure acti_cancelarExecute(Sender: TObject);
    procedure acti_insertarExecute(Sender: TObject);
    procedure acti_adicionarExecute(Sender: TObject);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure acti_move_arribaExecute(Sender: TObject);
    procedure acti_move_abajoExecute(Sender: TObject);
    procedure doHacerCalculos(Sender: TObject);
    procedure gridCustomCellDraw(Sender: TObject; Canvas: TCanvas; ACol,
      ARow: Integer; AState: TGridDrawState; ARect: TRect;
      Printing: Boolean);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridComboChange(Sender: TObject; ACol, ARow,
      AItemIndex: Integer; ASelection: String);
    procedure boto_ayudaClick(Sender: TObject);
    procedure acti_paqu_automaticoExecute(Sender: TObject);
    procedure gridCanSort(Sender: TObject; ACol: Integer;
      var DoSort: Boolean);
    procedure acti_impr_tiquetesExecute(Sender: TObject);
    procedure acti_copiarExecute(Sender: TObject);
    procedure acti_cortarExecute(Sender: TObject);
    procedure acti_pegarExecute(Sender: TObject);
    procedure acti_impr_distribucionExecute(Sender: TObject);
    procedure acti_anexarExecute(Sender: TObject);
    procedure acti_anex_asistenteExecute(Sender: TObject);
    procedure acti_anex_asistenteUpdate(Sender: TObject);
  private
    { Private declarations }
    var_inicializado    : Boolean;
    var_omit_calculos   : Boolean;
    var_anex_automatico : Boolean;
    var_fila_anex_automatico    : Integer;
  public
    { Public declarations }
    var_unid_lote   : Integer;
    var_DataSet_Prod_Ordenes    : TDataSet;
    var_DataSet_Prod_Lotes      : TDataSet;
    Constructor Create (Owner : TComponent); Override;
    Procedure doEjecutarFrame(cons_prod_orden, cons_prod_lote : Integer; unid_lote : Integer = 0);
    Procedure SetBotonWarningVisible(peVisible : Boolean);
  end;

ResourceString
        cosTallaNoValida        = 'La talla no es válida.';
        cosColorNoValido        = 'El color no es válido.';

implementation

uses _MDI, _func_varias, _func_pcp, _cons_pcp,
  un1_prod_orde_dist_paqu_resumen, un1_prod_orde_dist_paqu_automatico,
  uwn1_prod_fabr_impr_tiquetes,
  un1_prod_orde_dist_paqu_imprimir;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_orde_dist_paquetes.Create(Owner : TComponent);
Begin
    var_inicializado := False;
    var_omit_calculos := False;
    var_unid_lote := 0;
    var_anex_automatico := False;
    var_fila_anex_automatico := 0;
    //Heredar la creación
    Inherited Create(Owner);
    ColorGrid(grid);
    //Inicializar la tabla en memoria (principal)
    With MyTabla_Ventana do
    Begin
        Open;
        Insert;
        FieldByName('cons_proc_anterior').asInteger := 0;
        Post;
    End;
    //Inicializar la tabla en memoria (de guardado)
    With tabl_guardar do
    Begin
        Open;
        Insert;
        Post;
    End;
    //Abrir consultas
    AbrirDataSet(quer_paqu_tipos);
    AbrirDataSet(quer_colores);
    AbrirDataSet(quer_tallas);
    //Ubicar el primer tipo de paqueteo
    InicializarCombo(comb_paqu_tipo);
    var_inicializado := True;
End;
{****************************************************************
Procedimiento   : acti_frameUpdate
Objetivo        : Actualizar el estado de las acciones del frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_frameUpdate(
  Action: TBasicAction; var Handled: Boolean);
begin
        acti_guardar.Enabled := (tabl_guardar.State in [dsInsert, dsEdit]);
        acti_cancelar.Enabled := (tabl_guardar.State in [dsInsert, dsEdit]);
        acti_eliminar.enabled := Grid.RowCount > 1;
        acti_move_arriba.Enabled := Not((grid.Selection.Top<=1) or (Grid.RowCount<=1)); 
        acti_move_abajo.Enabled := Not ((grid.Selection.Bottom=Grid.RowCount-1) or (Grid.RowCount<=1));
        acti_impr_tiquetes.Enabled := (Not(tabl_guardar.State in [dsEdit, dsInsert]));
        acti_impr_distribucion.Enabled := (Not(tabl_guardar.State in [dsEdit, dsInsert]));
        acti_anexar.Enabled := ((Grid.RowCount > 1) and (Grid.Row > 1) and
                ((Grid.Cells[Grid.ColumnByName['CONS_REFE_COLOR'].Index, Grid.row] = Grid.Cells[Grid.ColumnByName['CONS_REFE_COLOR'].Index, Grid.row - 1]) and
                 ((Grid.Cells[Grid.ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, Grid.row] = Grid.Cells[Grid.ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, Grid.row - 1])))) or
                 (var_anex_automatico); 

end;
{****************************************************************
Procedimiento   : doEjecutarFrame
Objetivo        : Ejecuta el frame con los parámetros indicados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_orde_dist_paquetes.doEjecutarFrame(cons_prod_orden, cons_prod_lote : Integer; unid_lote : Integer = 0);
Begin
      var_unid_lote := unid_lote;
      With myTabla_ventana do
      Begin
            //Asignar los parametros a la tabla temporal
            If Not (State in [dsInsert, dsEdit]) Then
                Edit;
            FieldByName('cons_prod_lote').Value := cons_prod_lote;
            FieldByName('cons_prod_orden').Value := cons_prod_orden;
            Post;
            //Llenar el combo de colores del grid
            With Grid.ColumnByName['NOMB_COLOR'], quer_colores do
            Begin
                ComboItems.Clear;
                While not EOF do
                Begin
                     ComboItems.Add(FieldByName('nomb_color').AsString);
                     Next;
                End;
            End;
            //Llenar el combo de tallas del grid
            With Grid.ColumnByName['TALLA'], quer_tallas do
            Begin
                ComboItems.Clear;
                While not EOF do
                Begin
                     ComboItems.Add(FieldByName('talla').AsString);
                     Next;
                End;
            End;            
            //Llamar los datos
            if var_inicializado Then doLlamarDatos(Self);
      End;

End;   
{****************************************************************
Procedimiento   : doLlamarDatos
Objetivo        : Llamar la distribución de paquetes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.doLlamarDatos(Sender: TObject);
begin
      if not var_inicializado then Exit;  
      Try
            //Inicializar el grid
            var_omit_calculos := True;
            Grid.Visible := False;
            With grid, quer_sele_paquetes do
            Begin
                 LimpiarGrid(Grid, 1);
                 Grid.RowCount := 1;
                 //Abrir la consulta
                 if Active then Close;
                 Open;
                 While not eof do
                 Begin
                     //Incrementar un color
                     RowCount := RowCount + 1;
                     Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - 1] := FieldByName('nomb_color').AsString;
                     Cells[ColumnByName['TALLA'].Index, RowCount - 1] := FieldByName('talla').AsString;
                     Cells[ColumnByName['CANT_UNIDADES'].Index, RowCount - 1] := FieldByName('cant_unidades').AsString;
                     Next;
                 End;
                 Close;
            End;
      Except
          On e:Exception do
                EjecutarMensajeError(e.Message);
      End;
      Grid.Visible := True;
      var_omit_calculos := False;
      doHacerCalculos(sender);
end;
{****************************************************************
Procedimiento   : comb_paqu_tipoChange
Objetivo        : Actualizar la ventana cuando cambia el tipo de paqueteo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.comb_paqu_tipoChange(
  Sender: TObject);
begin
        if var_inicializado then doLlamarDatos(Sender);
end;
{****************************************************************
Procedimiento   : data_guardarStateChange
Objetivo        : Actualizar los controles de la ventana cuando
                  se inicie la edición de datos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.data_guardarStateChange(
  Sender: TObject);
begin
     //Si el TAG=-1, está en solo lectura
     if Tag = -1 Then Exit;
     with tabl_guardar do
     Begin   
        //Deshabilitar el cambio de tipo de distribución en edición
        SetControlEnabled(pane_seleccion, (Active) and Not(State in [dsInsert, dsEdit]));
        boto_ayuda.Enabled :=  (Active) and Not(State in [dsInsert, dsEdit]);
     End;
end;
{****************************************************************
Procedimiento   : doIniciarEdicion
Objetivo        : Simula el inicio de edición de registros,
                  editando la tabla de guardado en memoria
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.doIniciarEdicion(Sender: TObject);
begin
         //Si el TAG=-1, está en solo lectura
        if Tag = -1 Then Exit;
        With tabl_guardar do
                if not (State in [dsInsert, dsEdit]) Then
                        Edit;
end;
{****************************************************************
Procedimiento   : tabl_guardarBeforePost
Objetivo        : Guarda los registros del paqueteo
                  en la base de datos remota
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.tabl_guardarBeforePost(
  DataSet: TDataSet);
var
        var_fila        : Integer;
begin
        if not var_inicializado then exit;
        var_fila := 0;
        doHacerCalculos(Self);
        //Guardar
        Try
                //Iniciar la transacción
                StartDBTransaction;
                //Eliminar los registros existentes
                quer_dele_paquetes.ExecSQL;
                //Guardar los existentes
                With quer_inse_paquetes, grid do
                Begin
                     for var_fila := 1 to RowCount - 1 do
                     Begin
                         ProgresoBarraEstado(cosGuardando, var_fila, RowCount - 1);
                         paramByName('cons_prod_lote').Value := myTabla_ventana.FieldByName('cons_prod_lote').asInteger;
                         paramByName('cons_proc_anterior').Value := myTabla_ventana.FieldByName('cons_proc_anterior').asInteger;
                         paramByName('cons_prod_paqu_tipo').Value := myTabla_ventana.FieldByName('cons_prod_paqu_tipo').asInteger;
                         paramByName('nume_paquete').Value := var_fila;
                         if (Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila] = '-1') Then
                                Exception.Create(cosColorNoValido);
                         paramByName('cons_refe_color').Value := StrToInt(Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila]);
                         if (Cells[ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, var_fila] = '-1') Then
                                Exception.Create(cosTallaNoValida);                         paramByName('cons_grup_tall_detalle').Value := StrToInt(Cells[ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, var_fila]);
                         paramByName('cant_unidades').Value := StrToInt(Cells[ColumnByName['CANT_UNIDADES'].Index, var_fila]);
                         ExecSQL;
                     End;
                End;
                //Guardar los cambios
                CommitDBWork;
        Except
             //Error
             on E:Exception do
             Begin
                  //Cancelar la transacción
                  RollBackDBWork;
                  //Mostrar mensaje de error
                  EjecutarMensaje(e.Message, Format(cosErrorEnPaqueteNo, [IntToStr(var_fila)]), mtError, [mbOk], 0);
                  Abort;
             End;
        End;
        ProgresoBarraEstado;                                                                                                                                                                                                                  
end;
{****************************************************************
Procedimiento   : acti_guardarExecute
Objetivo        : Ejecuta la acción de guardar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_guardarExecute(
  Sender: TObject);
begin
        tabl_guardar.Post;
end;
{****************************************************************
Procedimiento   : acti_cancelarExecute
Objetivo        : Ejecuta la acción de cancelar la edición
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_cancelarExecute(
  Sender: TObject);
begin
        //Preguntar al usuario
        if confirmar(cosDeseaCancelar)=mrNo then Exit;
        //Cancelar
        tabl_guardar.Cancel;
        //Volver a llamar los datos
        doLlamarDatos(Sender);
end;

procedure Tffra_prod_orde_dist_paquetes.acti_insertarExecute(
  Sender: TObject);
begin
  //Si solamente está el título, adicionar
  var_omit_calculos := True;
  If Grid.RowCount <= 1 Then
        acti_AdicionarExecute(Sender)      
  //Insertar
  Else
        Grid.InsertRows(grid.Selection.Top, grid.selection.bottom - grid.Selection.Top + 1);
  DoIniciarEdicion(Sender);
  var_omit_calculos := False;
  DoHacerCalculos(Grid);
end;

procedure Tffra_prod_orde_dist_paquetes.acti_adicionarExecute(
  Sender: TObject);
begin
  var_omit_calculos := True;
  Grid.InsertRows(grid.RowCount, 1);
  Grid.Row := Grid.RowCount - 1;
  DoIniciarEdicion(Sender);
  var_omit_calculos := False;
  DoHacerCalculos(Grid);
end;

procedure Tffra_prod_orde_dist_paquetes.acti_eliminarExecute(
  Sender: TObject);
begin
  If Confirmar(cosDeseaEliminar) = mrYes then
  Begin
      var_omit_calculos := True;
      Update;
      If (Grid.Selection.Bottom - Grid.Selection.Top + 1)>50
        Then ProgresoBarraEstado(Format(cosEliminando,['']));
      Grid.RemoveRows(Grid.Selection.Top, Grid.Selection.Bottom - Grid.Selection.Top + 1);
      ProgresoBarraEstado;
  End;
  DoIniciarEdicion(Sender);
  var_omit_calculos := False;
  doHacerCalculos(Grid);
end;

procedure Tffra_prod_orde_dist_paquetes.acti_move_arribaExecute(
  Sender: TObject);
begin
  var_omit_calculos := True;
  grid.MoverHaciaArriba;
  doIniciarEdicion(Sender);
  var_omit_calculos := False;
  doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_move_abajoExecute
Objetivo        : Mueve hacia abajo un paquete
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_move_abajoExecute(
  Sender: TObject);
begin
  var_omit_calculos := True;
  grid.MoverHaciaAbajo;
  doIniciarEdicion(Sender);
  var_omit_calculos := False;
  doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : doHacerCalculos
Objetivo        : Hace los calculos del grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.doHacerCalculos(Sender: TObject);
Var
        var_total       : Integer;
        var_fila        : Integer;
begin
        if var_omit_calculos then exit;
        With grid do
        Begin
            edit_tota_paquetes.Value := RowCount - 1;
            AutoNumberCol(ColumnByName['NUME_PAQUETE'].Index);
            var_total := 0;
            //Sumar las unidades
            For var_fila := 1 to RowCount - 1 do
            Begin
                 Try
                    var_total := var_total + StrToInt(cells[ColumnByName['CANT_UNIDADES'].Index, var_fila]);
                 Except
                     cells[ColumnByName['CANT_UNIDADES'].Index, var_fila] := '0';
                 End;
                 //Buscar la talla
                 If quer_tallas.Locate('talla', Cells[ColumnByName['TALLA'].Index, var_fila], []) Then
                        Cells[ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, var_fila] := quer_tallas.FieldByName('cons_grup_tall_detalle').asString
                 else
                        Cells[ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, var_fila] := '-1';
                 //Buscar el color
                 If quer_colores.Locate('nomb_color', Cells[ColumnByName['NOMB_COLOR'].Index, var_fila], []) Then
                        Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila] := quer_colores.FieldByName('cons_refe_color').asString
                 else
                        Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila] := '-1';
            End;
        End;
        //Motrar en el componente
        edit_tota_unidades.Value := var_total;
        boto_warning.Visible := False;//(var_unid_lote <> edit_tota_unidades.Value);
        grid.repaint;
end;
{****************************************************************
Procedimiento   : gridCustomCellDraw
Objetivo        : Pintar los avisos en las celdas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.gridCustomCellDraw(Sender: TObject;
  Canvas: TCanvas; ACol, ARow: Integer; AState: TGridDrawState;
  ARect: TRect; Printing: Boolean);
begin
        If var_omit_calculos then exit;
        With grid do
        Begin
            //Warning en color
            if (aRow > 0) and (aCol = ColumnByName['NOMB_COLOR'].Index) Then
            Begin
                //Indicar si es un tiempo cronómetro
                if (Cells[ColumnByName['CONS_REFE_COLOR'].Index, aRow] = '-1') Then           
                  _fmdi.imag_varias.Draw(Canvas, (ARect.Right - 16), ARect.Top, 5);
            End;
            //Warning en Talla
            if (aRow > 0) and (aCol = ColumnByName['TALLA'].Index) Then
            Begin
                //Indicar si es un tiempo cronómetro
                if (Cells[ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, aRow] = '-1') Then           
                  _fmdi.imag_varias.Draw(Canvas, (ARect.Right - 16), ARect.Top, 5);
            End;
        End;
end;

procedure Tffra_prod_orde_dist_paquetes.gridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //Iniciar la edicion
  if Not (Key in [vk_up, vk_left, vk_down, vk_right]) Then
  Begin
        doIniciarEdicion(Sender);
  End;
  //Recalcular
  if (key = vk_return) Then
        doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : gridComboChange
Objetivo        : Calcular los totales cuando cambie la selección por combo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.gridComboChange(Sender: TObject;
  ACol, ARow, AItemIndex: Integer; ASelection: String);
begin
        DoHacerCalculos(Sender);
end;

procedure Tffra_prod_orde_dist_paquetes.boto_ayudaClick(Sender: TObject);
begin
  Application.CreateForm(Tfn1_prod_orde_dist_paqu_resumen, fn1_prod_orde_dist_paqu_resumen);
  fn1_prod_orde_dist_paqu_resumen.doEjecutarCubo(Nil, myData_ventana);
end;

procedure Tffra_prod_orde_dist_paquetes.acti_paqu_automaticoExecute(
  Sender: TObject);
begin
        Application.CreateForm(Tfn1_prod_orde_dist_paqu_automatico, fn1_prod_orde_dist_paqu_automatico);
        fn1_prod_orde_dist_paqu_automatico.DoEjecutarVentana(myTabla_ventana.FieldByName('cons_prod_lote').AsInteger, Grid);
        doIniciarEdicion(Sender);
        doHacerCalculos(Sender);
end;

procedure Tffra_prod_orde_dist_paquetes.gridCanSort(Sender: TObject;
  ACol: Integer; var DoSort: Boolean);
begin
        //Si el TAG=-1, está en solo lectura
        if Tag = -1 Then Exit;
        doSort := (Tag <> -1);
        doIniciarEdicion(Sender);
        Grid.AutoNumberCol(grid.ColumnByName['NUME_PAQUETE'].Index);
end;
{****************************************************************
Procedimiento   : acti_impr_tiquetesExecute
Objetivo        : Abrir el asistente de impresión de tiquetes
                  de control
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_impr_tiquetesExecute(
  Sender: TObject);
begin
  Application.CreateForm(Tfwn1_prod_fabr_impr_tiquetes, fwn1_prod_fabr_impr_tiquetes);
  with myTabla_ventana do
     fwn1_prod_fabr_impr_tiquetes.doEjecutarAsistente(myTabla_Ventana.FieldByName('cons_prod_orden').asInteger, //->RC20.21 para habilitar selección de la orden de producción
                FieldByName('cons_prod_lote').asInteger,
                FieldByName('cons_prod_paqu_tipo').asInteger,
                FieldByName('cons_proc_anterior').asInteger, False);
end;
{****************************************************************
Procedimiento   : acti_copiarExecute
Objetivo        : Copia la selección de paquetes al portapapeles
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 06 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_copiarExecute(
  Sender: TObject);
begin
    If Grid.RowCount <= 1 Then Exit;
    Grid.CopiarSeleccion;
end;
{****************************************************************
Procedimiento   : acti_cortarExecute
Objetivo        : Corta la selección al portapapeles
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 06 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_cortarExecute(
  Sender: TObject);
begin
    If Grid.RowCount <= 1 Then Exit;
    Grid.CortarSeleccion;
    doIniciarEdicion(Sender);
    doHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : acti_pegarExecute
Objetivo        : Pega la selección del portapapeles
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 06 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_pegarExecute(Sender: TObject);
begin
    If Grid.RowCount <= 1 Then
    Begin
        Grid.RowCount := 2;
        Grid.Row := 1;
    End;
    Grid.PegarSeleccion;
    doIniciarEdicion(Sender);
    doHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : SetBotonWarningVisible
Objetivo        : Mostrar/Ocultar el botón de atención
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 06 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
Procedure Tffra_prod_orde_dist_paquetes.SetBotonWarningVisible(peVisible : Boolean);
Begin
    boto_Warning.Visible := peVisible;
End;
{****************************************************************
Procedimiento   : acti_impr_distribucionExecute
Objetivo        : Imprimir la distribución de paquetes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_impr_distribucionExecute(
  Sender: TObject);
begin
    //  Application.CreateForm(Trn1_prod_dist_paquetes, rn1_prod_dist_paquetes);
  Application.CreateForm(Tfn1_prod_orde_dist_paqu_imprimir, fn1_prod_orde_dist_paqu_imprimir);
  fn1_prod_orde_dist_paqu_imprimir.Ejecutar(myTabla_Ventana.FieldByName('cons_prod_orden').asInteger, myTabla_ventana.FieldByName('cons_prod_lote').asInteger,
               myTabla_ventana.FieldByName('cons_prod_paqu_tipo').asInteger,
               var_DataSet_Prod_Ordenes, var_DataSet_Prod_Lotes, quer_paqu_tipos);
end;
{****************************************************************
Procedimiento   : acti_anexarExecute
Objetivo        : Anexar al paquete anterior
Realizado por   : Tecnologia
Fecha           : 18-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_anexarExecute(
  Sender: TObject);
var
        var_Cantidad    : Integer;
        var_fila        : Integer;
begin
        //Tipo de llamado del procedimiento
        if var_anex_automatico then
           var_fila := var_fila_anex_automatico
        Else
           var_Fila := Grid.Row;
        //Verificar que sea válido
        if NOT((Grid.RowCount > 1) and (var_fila > 1) and
                ((Grid.Cells[Grid.ColumnByName['CONS_REFE_COLOR'].Index, var_fila] = Grid.Cells[Grid.ColumnByName['CONS_REFE_COLOR'].Index, var_fila - 1]) and
                 ((Grid.Cells[Grid.ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, var_fila] = Grid.Cells[Grid.ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, var_fila - 1])))) Then
                        Exit;
        //Convertir las unidades a entero
        Try
             var_Cantidad :=  StrToInt(Grid.Cells[Grid.ColumnByName['CANT_UNIDADES'].Index, var_fila]);
        Except
             var_Cantidad := 0;
        End;
        //Sumarlas a la anterior
        Grid.Cells[Grid.ColumnByName['CANT_UNIDADES'].Index, var_fila - 1] := IntToStr(StrToInt(Grid.Cells[Grid.ColumnByName['CANT_UNIDADES'].Index, var_fila - 1]) + var_Cantidad);
        Grid.RemoveRows(var_fila, 1);
        if Not var_anex_automatico Then
        Begin
          DoIniciarEdicion(Sender);
          doHacerCalculos(Grid);
        End;
end;
{****************************************************************
Procedimiento   : acti_anex_asistenteExecute
Objetivo        : Anexar los paquetes de manera automática de acuerdo
                  a un mínimo de unidades establecido por el usuario
Realizado por   : Tecnologia
Fecha           : 24-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_anex_asistenteExecute(
  Sender: TObject);
Var
        var_Cant_minima : Integer;
        var_fila        : Integer;
        var_cantidad    : Integer;
begin
        if Grid.RowCount <= 1 Then Exit;
        var_cant_minima := pcpInputForm(cosAnexarPaquetes, cosCantidadMinimaPaquetAnexar, tvInteger, 0);
        if var_Cant_minima = 0 Then Exit;
        doIniciarEdicion(Sender);
        var_fila := 1;
        Grid.BeginUpdate;
        var_Anex_automatico := True;
        Try
            While var_Fila <= Grid.RowCount - 1 do
            Begin
                 var_fila_anex_automatico := var_Fila;
                 //Obtener las unidades
                 Try
                      var_Cantidad := StrToInt(Grid.Cells[Grid.ColumnByName['CANT_UNIDADES'].Index, var_Fila]);
                 Except
                      var_Cantidad := 0;
                 End;
                 //Si la cantidad es válida intentar anexar
                 if (var_Cantidad > 0) and (var_Cantidad < var_Cant_minima) Then
                 Begin
                      //Comparar el color y la talla
                      if (Grid.Cells[Grid.ColumnByName['CONS_REFE_COLOR'].Index, var_Fila] = Grid.Cells[Grid.ColumnByName['CONS_REFE_COLOR'].Index, var_Fila- 1]) AND
                         (Grid.Cells[Grid.ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, var_Fila] = Grid.Cells[Grid.ColumnByName['CONS_GRUP_TALL_DETALLE'].Index, var_Fila- 1]) Then
                          Begin
                             acti_anexar.Execute;
                             if var_fila = Grid.RowCount - 1 Then Break;
                          End;
                 End
                 Else
                     Inc(var_Fila);
            End;
        Except
              On e:Exception do
                 EjecutarMensajeError(e.Message + #13 + cosPaquete + ':' + intToStr(var_Fila));
        End;
        Grid.Row := 1;
        Grid.EndUpdate;
        Grid.Repaint;
        var_anex_automatico := False;
        doHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : acti_anex_asistenteUpdate
Objetivo        : Actualizar el estado de la acción acti_Anex_asistente
Realizado por   : Tecnologia
Fecha           : 24-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tffra_prod_orde_dist_paquetes.acti_anex_asistenteUpdate(
  Sender: TObject);
begin
        acti_anex_asistente.Enabled := (Grid.RowCount > 1);
end;

end.

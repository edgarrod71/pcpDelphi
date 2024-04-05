unit ufra_prod_orde_unidades;
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
        Unit            : ufra_prod_orde_unidades
        Objetivo        : Frame de visualización y edición de 
                          las unidades de una orden de producción
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 12 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, TB2Item, TBX, TB2Dock, TB2Toolbar, Grids, BaseGrid, AdvGrid,
  AdvCGrid, Db, DBTables, DBActns, RxMemDS, SCLColumnGrid, TBXDkPanels,
  TBXButtonSCL;

type
  Tffra_prod_orde_unidades = class(TFrame)
    fram_dock: TTBXDock;
    barr_botones: TTBXToolbar;
    fram_acciones: TActionList;
    grid: TSCLColumnGrid;
    quer_cons_unidades: TQuery;
    fram_unid_acti_cancelar: TDataSetCancel;
    fram_unid_acti_guardar: TDataSetPost;
    fram_unid_acti_actualizar: TDataSetRefresh;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    quer_inse_unidades: TQuery;
    quer_elim_unidades: TQuery;
    fram_data_source: TDataSource;
    myTabla: TRxMemoryData;
    quer_tallas: TQuery;
    quer_colores: TQuery;
    quer_cons_unid_lote: TQuery;
    procedure gridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure gridCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure gridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure doLlamar(peQuery : TQuery);
    procedure fram_unid_acti_guardarExecute(Sender: TObject);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure doHacerCalculos(Sender: TObject);
    procedure doIniciarEdicion(Sender: TObject);
    procedure gridGridHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: String);
  private
    { Private declarations }
    var_cons_prod_orden : Integer;
    fCanEdit  : Boolean;
    vCon_entrepiernas   : Boolean;
    Procedure SetCanEdit (Value : Boolean);
    Procedure SetCon_Entrepiernas (Value : Boolean);
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Procedure doEjecutarFrame(cons_prod_orden : Integer; peConColumnaAdicional : Boolean = False);
    Procedure doEjecutarFrameLote(cons_prod_orden, cons_prod_lote, cons_refe_material : Integer; peConColumnaAdicional : Boolean = False;
            peSaveToFile : String = '');
    procedure doColumnaAdicional(Sender: TObject);
    Function nume_tallas  : Integer;
    Function nume_colores : Integer;
    Property CanEdit : Boolean Read fCanEdit Write SetCanEdit Default False;
    Property Con_Entrepiernas : Boolean  Read vCon_Entrepiernas Write SetCon_Entrepiernas Default False;
  end;

implementation

uses _cons_pcp, _func_varias, _MDI, _func_pcp, _cons_colores;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 12 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_orde_unidades.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     //Inicializar el frame
     AutoHints(Self);
     var_cons_prod_orden := -1;
     setCanEdit(False);
     SetCon_Entrepiernas(False);
End;
{****************************************************************
Procedimiento   : SetCanEdit
Objetivo        : Asignar el valor a la propiedad CanEdit
                  que permite o restringe la acción de eliminación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 12 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_orde_unidades.SetCanEdit(Value : Boolean);
Begin
    If (Value <> fCanEdit) then
        fCanEdit := Value;
    fram_dock.Visible := fCanEdit;
    barr_botones.ProcessShortCuts := fCanEdit;
    if Not fCanEdit then
    Begin
        fram_unid_acti_guardar.Enabled := False;
        fram_unid_acti_cancelar.Enabled := False;
        fram_unid_acti_actualizar.Enabled := False;
    End;
    myTabla.Open;
End;
{****************************************************************
Procedimiento   : doEjecutarFrame
Objetivo        : Ejecuta el frame con la orden enviada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_orde_unidades.doEjecutarFrame(cons_prod_orden : Integer; peConColumnaAdicional : Boolean = False);
Begin
     var_cons_prod_orden := cons_prod_orden;
     doLlamar(quer_cons_unidades);
     if peConColumnaAdicional then doColumnaAdicional(Self);
     //Grid.ActiveCellPaintSCL := False;
End;
{****************************************************************
Procedimiento   : doEjecutarFrameLote
Objetivo        : Ejecuta el frame con el lote y material enviados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
Procedure Tffra_prod_orde_unidades.doEjecutarFrameLote(cons_prod_orden, cons_prod_lote, cons_refe_material : Integer; peConColumnaAdicional : Boolean = False;
    peSaveToFile : String = '');
Begin
     var_cons_prod_orden := cons_prod_orden;
     quer_cons_unid_lote.ParamByName('cons_prod_lote').Value := cons_prod_lote;
     quer_cons_unid_lote.ParamByName('cons_refe_material').Value := cons_refe_material;
     doLlamar(quer_cons_unid_lote);
     if peConColumnaAdicional then doColumnaAdicional(Self);
     if peSaveToFile <> '' Then
        Grid.SaveToFile(peSaveToFile);
End;

{****************************************************************
Procedimiento   : gridGetAlignment
Objetivo        : Asignar la alineación de las celdas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 12 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_unidades.gridGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
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
Procedimiento   : gridCanEditCell
Objetivo        : Identificar si se pueden o no editar las celdas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 12 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_unidades.gridCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
    CanEdit := False;    
    With grid do
    Begin                                              
        //Descartar la edicion de totales
        if (Acol = ColCount - 1) or (aRow = RowCount - 1) Then Exit;
        //Habilitar la edicion si es posible
        If fCanEdit then CanEdit := True;
    End;
end;
{****************************************************************
Procedimiento   : nume_colores
Objetivo        : Devuelve el número de colores en el grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 12 de 2004
Versión         : pcp4000
*****************************************************************}
Function Tffra_prod_orde_unidades.nume_colores : Integer;
Begin
        Result := Grid.RowCount - 2;
        if Result < 0  then Result := 0;
End;
{****************************************************************
Procedimiento   : nume_tallas
Objetivo        : Devuelve el número de tallas en el grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 12 de 2004
Versión         : pcp4000
*****************************************************************}
Function Tffra_prod_orde_unidades.nume_tallas : Integer;
Begin
        Result := Grid.ColCount - 2 - Grid.ColumnByName['UNIDADES'].Index;
        if Result < 0  then Result := 0;
End;
{****************************************************************
Procedimiento   : gridGetCellColor
Objetivo        : Darle el color a las celdas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 12 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_unidades.gridGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
    With Grid do
    Begin
        //Color de los totales
        If ((aCol = ColCount - 1) and (ARow > 0)) or 
            ((aCol > ColumnByName['UNIDADES'].Index) and (aRow = RowCount - 1)) Then
        Begin
            aFont.Color := cocTotalText;
            aBrush.Color := cocTotal;
        End;
    End;
end;
{****************************************************************
Procedimiento   : doLlamar
Objetivo        : Llamar los datos en el grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_unidades.doLlamar(
  peQuery : TQuery);
Var
        var_cons_refe_color     : Integer;
        var_fila                : Integer;
        var_colu                : Integer;
        var_existe              : Boolean;
        var_unidades            : Integer;
Begin
     Try
           //Limpiar grid
           LimpiarGrid(grid, 1);
           //Unir las celdas antes de llamar los datos
           Grid.SplitAllCells;
           with Grid do
           Begin
                //Destruir las columnas de las tallas
                For var_colu := ColumnByName['UNIDADES'].Index + 1 to ColCount - 1 do
                        Columns[ColumnByName['UNIDADES'].Index + 1].Destroy;
                RowCount := 1;
                //Escribir los colores (Filas)
                With quer_colores do
                  Begin
                    if Active then Close;
                    if var_cons_prod_orden <> -1 Then
                            ParambyName('cons_prod_orden').Value := var_cons_prod_orden;
                    Open;
                    if RecordCount = 0 Then Exit;
                    //Recorrer la consulta y crear las filas
                    var_cons_Refe_color := -1;
                    While not eof do
                    Begin
                            //Verificar que el color no haya sido insertado
                            if FieldByName('cons_refe_color').AsInteger <> var_cons_refe_Color Then
                            Begin
                                 //Insertar el color
                                 var_cons_refe_color := FieldByName('cons_refe_color').AsInteger;
                                 RowCount := RowCount + 1;
                                 Cells[ColumnByName['CONS_REFE_COLOR'].Index, RowCount - 1] := IntToStr(var_cons_Refe_color);
                                 Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - 1] := FieldByName('nomb_color').AsString;
                                 Cells[ColumnByName['NUME_COLOR'].Index, RowCount - 1] := FieldByName('nume_color').AsString;
                            End;
                            //Siguiente registro
                            Next;
                    End;
                    //Crear una fila de totales
                    RowCount := RowCount + 1;
                    Cells[ColumnByName['NOMB_COLOR'].Index, RowCount - 1] := cosTotal;
                    //Cerrar la consulta
                    Close;
                  End;
                //Escribir las tallas (Columnas)
                With quer_tallas do
                  Begin
                    if Active then Close;
                    if var_cons_prod_orden <> -1 Then
                            ParambyName('cons_prod_orden').Value := var_cons_prod_orden;
                    Open;
                    if RecordCount = 0 Then Exit;
                    //Recorrer la consulta
                    While not Eof do
                    Begin
                         //Buscar si no ha sido creada
                         if (Rows[0].IndexOf(FieldByName('talla').AsString)=-1) Then
                         Begin
                             //Insertar la talla
                             ColCount := ColCount + 1;
                             Columns[ColCount - 1].Header := FieldByName('talla').AsString;
                             Columns[ColCount - 1].Tag := FieldByName('cons_grup_tall_detalle').asInteger;
                             Columns[ColCount - 1].Alignment := taRightJustify;
                             if fCanEdit then Columns[ColCount - 1].Editor := edSpinEdit;
                         End;
                         //Siguiente registro
                         Next;
                    End;
                    //Insertar una columna para los totales
                    ColCount := ColCount + 1;
                    Columns[ColCount - 1].Header := cosTotal;
                    Columns[ColCount - 1].Alignment := taRightJustify;
                    Columns[ColCount - 1].ReadOnly := True;
                    //Cerrar la consulta
                    Close;
                  End;
                //Escribir las unidades
                With peQuery do
                  Begin
                    //Abrir la consulta
                    if Active then Close;
                    if var_cons_prod_orden <> -1 Then
                        if peQuery = quer_cons_unidades then
                            ParambyName('cons_prod_orden').Value := var_cons_prod_orden;
                    Open;
                    if RecordCount = 0 Then Exit;
                    While not Eof do
                    Begin
                         //Buscar la fila en la que se encuentra ubicado el color
                         var_existe := False;
                         var_fila := 1;
                         Repeat
                               If Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila] = FieldByName('cons_Refe_color').AsString then
                                    var_existe := True
                               Else
                                    inc(var_fila);
                         Until (var_fila >= RowCount - 2) or (var_existe);
                         //Buscar la columna en la cual se encuentra la talla
                         var_existe := False;
                         var_colu := ColumnByName['UNIDADES'].Index + 1;
                         Repeat
                               If Columns[var_colu].Tag = FieldByName('cons_grup_tall_detalle').AsInteger then
                                    var_existe := True
                               Else
                                    inc(var_colu);
                         Until (var_colu >= ColCount - 2) or (var_existe);
                         var_unidades := 0;
                         //Verificar que la fila y la col sean válidos
                         If (var_colu > ColumnByName['UNIDADES'].Index) and (var_fila > -1) Then
                         Begin
                              //Comprobar si hay algun valor en esa celda
                              If Cells[var_colu, var_fila] <> '' Then
                                 Try
                                    var_unidades := StrToInt(Cells[var_colu, var_fila]);
                                 Except
                                    var_unidades := 0;
                                 End;
                              //Sumar el valor existente y el del registro actual
                              Cells[var_colu, var_fila] := IntToStr(var_unidades + FieldByName('unidades').AsInteger);
                         End;
                         //Siguiente registro
                         Next;
                    End;
                  End;
                //Totalizar
                doHacerCalculos(Self);
           End;
     Except
          //Error
          On e:Exception do
          Begin
               EjecutarMensajeError(e.Message);
          End;
     End;
     Try  grid.FixedCols := 4; Except End;
end;
{****************************************************************
Procedimiento   : fram_unid_acti_guardarExecute
Objetivo        : Ejecutar la acción de guardado
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_unidades.fram_unid_acti_guardarExecute(
  Sender: TObject);
Var
        var_fila        : Integer;
        var_colu        : Integer;
        var_unidades    : Integer;
begin
        if Not CanEdit Then Exit;
        //Validar el dataSource
        if (fram_data_source.DataSet = Nil) or (Not fram_data_source.DataSet.Active) Then
                Exit;
        Try
            //Iniciar la transacción
            StartDBTransaction;
            //Eliminar los registros existentes
            With quer_elim_unidades do
            Begin
                ParamByName('cons_prod_orden').Value := var_cons_prod_orden;
                ExecSQL;
            End;
            //Parametros generales del guardado
            quer_inse_unidades.ParamByName('cons_prod_orden').Value := var_cons_prod_orden;
            With Grid do
            Begin
                  //Recorrer el grid y guardar las unidades
                  For var_fila := 1 to RowCount - 2 do
                        For var_colu := ColumnByName['UNIDADES'].Index + 1 To ColCount - 2 do
                        Begin
                             //Validar que tenga unidades
                             If Cells[var_colu, var_fila] <> '' Then
                             Begin   
                                 //Convertir las unidades a entero
                                 Try
                                    var_unidades := StrToInt(Cells[var_colu, var_fila]);
                                 Except
                                    var_unidades := 0;
                                 End;
                                 //Si es mayor que cero, guardarlas
                                 If var_unidades > 0 then
                                   With quer_inse_unidades do
                                   Begin
                                        ParamByName('cons_refe_color').Value := StrToInt(Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_fila]);
                                        ParamByName('cons_grup_tall_detalle').Value := Columns[var_colu].Tag;
                                        ParamByName('unidades').Value := var_unidades;
                                        ExecSQL;
                                   End;
                             End;
                        End;
            End;
            //Hacer permanentes los cambios
            CommitDBWork;
        Except
            //Error    
            On e:Exception do
            Begin
                RollBackDBWork;
                EjecutarMensajeError(e.Message);
            End;
        End;
end;
{****************************************************************
Procedimiento   : gridKeyDown
Objetivo        : Controlar la pulsación de teclas en el grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_unidades.gridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
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
Objetivo        : Recalcula los totales del grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_unidades.doHacerCalculos(
  Sender: TObject);
begin
        //Totalizar las unidades
        totalizarGrid(grid, Grid.ColumnByName['UNIDADES'].Index + 1, 1, Grid.ColCount - 2, Grid.RowCount - 2);
end;
{****************************************************************
Procedimiento   : doIniciarEdicion
Objetivo        : Editar la tabla myTabla para activar los botones
                  de las acciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_unidades.doIniciarEdicion(
  Sender: TObject);
begin
  if not (myTabla.State in  [dsEdit, dsInsert]) Then
     myTabla.Edit;
end;
{****************************************************************
Procedimiento   : SetCon_Entrepiernas
Objetivo        : Habilita/Deshabilita el uso de entrepiernas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 15 de 2004
Versión         : pcp4003
*****************************************************************}
Procedure Tffra_prod_orde_unidades.SetCon_Entrepiernas (Value : Boolean);
Begin
    if Value <> vcon_entrepiernas then
      Begin
         if vcon_entrepiernas then
            Grid.Cells[grid.ColumnByName['NOMB_COLOR'].Index,0] :=  cosEntrepiernas
         Else
            Grid.Cells[grid.ColumnByName['NOMB_COLOR'].Index,0] :=  cosColores;
      End;
End;

{****************************************************************
Procedimiento   : doColumnaAdicional
Objetivo        : Agregar una columna adicional para cada talla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 19 de 2004
Versión         : pcp4006
*****************************************************************}
procedure Tffra_prod_orde_unidades.doColumnaAdicional(Sender: TObject);
var
    var_i       : Integer;
    var_Colu    : Integer;
    var_auxi    : Integer;
begin
    //Si no hay tallas, salir
    If nume_tallas = 0 Then Exit;
    With Grid do
      Begin
           //Ubicarse en la última columna
           var_colu := ColumnByName['UNIDADES'].Index + 1;
           For var_i := 1 to nume_tallas do
           Begin
                    //Insertar la nueva columna para cada talla
                    InsertCols(var_Colu + 1, 1);
                    //Mover los tags
                    //For var_auxi := ColCount - 1 downTo var_Colu + 1 do
                    //    Columns[var_auxi].Tag := Columns[var_auxi - 1].Tag;
                    //El tag de la columna adicional es negativo
                    Columns[var_colu + 1].Tag := 0 - Columns[var_colu].Tag;
                    //Unir las celdas del título
                    MergeCells(var_colu, 0, 2, 1);
                    //Incrementar la columna
                    var_colu := var_colu + 2;
           End;
      End;
end;



procedure Tffra_prod_orde_unidades.gridGridHint(Sender: TObject; ARow,
  ACol: Integer; var hintstr: String);
begin
        HintStr :=IntToStr(grid.Columns[aCol].Tag);
end;

end.

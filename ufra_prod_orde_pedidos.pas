unit ufra_prod_orde_pedidos;
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
        Unit            : ufra_prod_orde_pedidos
        Objetivo        : Frame para mostrar las unidades de una
                          orden de producción y la asociación con
                          los pedidos
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 09 de 2004
        Versión         : pcp4000
*******************************************************************}
Interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, BaseGrid, AdvGrid, AdvCGrid, Db, DBTables, ExtCtrls, Boxes,
  PCPFrame, StdCtrls, TB2Item, TBX, ActnList, TB2Dock, TB2Toolbar, Menus,
  SCLColumnGrid;

type
  Tffra_prod_orde_pedidos = class(TFrame)
    quer_unid_planeadas: TQuery;
    quer_grup_tallas: TQuery;
    grid_pedidos: TSCLColumnGrid;
    fram_dock: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    fram_acciones: TActionList;
    acti_eliminar: TAction;
    TBXItem1: TTBXItem;
    quer_eliminar: TQuery;
    fram_pop: TTBXPopupMenu;
    TBXItem2: TTBXItem;
    procedure grid_pedidosCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure grid_pedidosColumnSize(Sender: TObject; ACol: Integer;
      var Allow: Boolean);
    procedure grid_pedidosGetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure doEjecutarFrame(cons_prod_orden : Integer);
    procedure grid_pedidosGetCellColor(Sender: TObject; ARow,
      ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure acti_eliminarUpdate(Sender: TObject);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure grid_pedidosClickCell(Sender: TObject; ARow, ACol: Integer);
  private
    { Private declarations }
    var_cons_prod_orden_actual : Integer;
    fCanDelete  : Boolean;
    Constructor Create (Owner : TComponent); Override;
    Destructor Destroy; Override;
    Procedure SetCanDelete (Value : Boolean);
  public
    { Public declarations }
  Property
        CanDelete : Boolean Read fCanDelete Write SetCanDelete Default False;
  end;

implementation

uses _func_varias, _cons_pcp, _MDI, _cons_colores;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_orde_pedidos.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     //Inicializar el frame
     quer_unid_planeadas.Prepare;
     var_cons_prod_orden_actual := -1;
     setCanDelete(False);
     SetTotalColumn(Grid_pedidos.ColumnByName['UNIDADES']);
End;
{****************************************************************
Procedimiento   : Destroy
Objetivo        : Liberar los controles
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 17 de 2004
Versión         : pcp4000
*****************************************************************}
Destructor Tffra_prod_orde_pedidos.Destroy;
Begin
    Unprepare(quer_unid_planeadas);    
    Inherited Destroy;
End;
{****************************************************************
Procedimiento   : SetCanDelete
Objetivo        : Asignar el valor a la propiedad canDelete
                  que permite o restringe la acción de eliminación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 09 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_orde_pedidos.SetCanDelete(Value : Boolean);
Begin
    If (Value <> fCanDelete) then
        fCanDelete := Value;
    fram_dock.Visible := fCanDelete;
End;
{****************************************************************
Procedimiento   : grid_pedidosCanEditCell
Objetivo        : No permite la edición de ninguna celda
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_pedidos.grid_pedidosCanEditCell(Sender: TObject;
  ARow, ACol: Integer; var CanEdit: Boolean);
begin
  //Solo editar el check box
  CanEdit := (aCol = grid_pedidos.ColumnByName['SELECCIONADO'].Index);
end;
{****************************************************************
Procedimiento   : grid_pedidosColumnSize
Objetivo        : Prevenir que se cambie el tamaño de las columnas      
                  ocultas en diseño
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_pedidos.grid_pedidosColumnSize(Sender: TObject;
  ACol: Integer; var Allow: Boolean);
begin
  //solamente los no ocultos (tag = -1)
  Allow := (grid_pedidos.columns[aCol].Tag > -1);
end;
{****************************************************************
Procedimiento   : grid_pedidosGetAlignment
Objetivo        : Alinear los valores de las celdas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_pedidos.grid_pedidosGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  With grid_pedidos do
  Begin
        //Centrar titulos
        If (aRow = 0) Then hAlign:= taCenter;
        //Alinear a la derecha las unidades
        If (ACol > ColumnByName['UNIDADES'].Index) and (ARow > 0) Then hAlign := taRightJustify;
  End;
end;

procedure Tffra_prod_orde_pedidos.doEjecutarFrame(cons_prod_orden : Integer);
Var
        var_filtro      : String;
        var_Integer     : Integer;
        var_columna     : Integer;
        var_comma       : String;
        var_inte_2      : Integer;
        var_cons_pedi_referencia     : Integer;
        var_cons_refe_color     : Integer;
        var_fila        : Integer;
begin
  inherited;
  Try
      //Asignar el valor a una var global
      var_cons_prod_orden_actual := cons_prod_orden;  
      //Limpiar el grid
      LimpiarGrid(grid_pedidos, 1, 0);
      With grid_pedidos do
      Begin
        //Destruir las columnas sobrantes
        For var_integer := ColumnByName['UNIDADES'].Index+1 To ColCount-1 do
            Columns[ColCount-1].Destroy;
        //Inicializar el número de registros
        RowCount := 1;
      End;
      //Armar la consulta
      With quer_unid_planeadas, grid_pedidos do
      Begin
            ProgresoBarraEstado(cosConsultando);
            If Active then Close;
            ParamByName('cons_prod_orden').Value := cons_prod_orden;
            Open;
            //Inicializar las variables auxiliares
            var_cons_pedi_referencia := -1;
            var_cons_refe_color := -1;
            //Llenar el grid de pedidos
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
                     var_integer := RowCount - 1;
                     //Adicionar el Check box de selección
                     AddCheckBox(ColumnByName['SELECCIONADO'].Index, var_integer, False, False);
                     //Llamar los datos
                     For var_Columna := 2 To ColumnByName['UNIDADES'].Index do
                     Begin
                            //Unidades planeadas
                            Cells[ColumnByName[Columns[var_columna - 1].Name].Index, var_integer] :=
                                    FieldByName(Columns[var_columna - 1].Name).AsString;
                     End;
                 End;
                 //Siguiente registro 
                 Next;
            End;
      End;
      //Cargar los grupos de tallas
      With grid_pedidos do
      Begin
           //Buscar los grupos de tallas
           var_filtro := '';
           For var_integer := 1 to RowCount - 1 do
           Begin
                var_filtro := var_filtro + var_comma + Cells[ColumnByName['CONS_REFE_GRUP_TALLAS'].Index, var_integer];
                if var_comma = '' then var_comma := ',';
           End;
           //Consultar los grupos de tallas
           With quer_grup_tallas do
           Begin
                Close;
                Sql.Clear;
                Sql.Add('Select cons_grup_tall_detalle, talla');
                Sql.Add('from glo_grup_tall_Detalle');
                If var_filtro <> '' Then 
                   Sql.Add('where cons_grup_tallas in ('+var_filtro+')');
                Sql.Add('Order by cons_grup_tall_detalle, secu_talla');
                Open;
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
           //Consultar las unidades por cada pedido
           With quer_unid_planeadas do
           Begin
               First;
               While not Eof do
               Begin
                     //Obtener la columna de la talla
                     var_columna := -1;
                     var_inte_2 := ColumnByName['UNIDADES'].Index + 1;
                     Repeat
                            If Columns[var_inte_2].Tag = FieldByName('cons_grup_tall_detalle').AsInteger then
                                  var_columna := var_inte_2;
                            inc(var_inte_2);
                     Until (var_inte_2 >= ColCount) or (var_columna>ColumnByName['UNIDADES'].Index);
                     //Obtener la fila del pedido y el color
                     var_fila := -1;
                     var_inte_2 := 1;
                     Repeat
                            If (Cells[ColumnByName['CONS_PEDI_REFERENCIA'].Index, var_inte_2] = FieldByName('cons_pedi_referencia').AsString) and
                               (Cells[ColumnByName['CONS_REFE_COLOR'].Index, var_inte_2] = FieldByName('cons_refe_color').AsString) Then
                                   var_fila := var_inte_2;
                            Inc(var_inte_2);
                     Until (var_inte_2 >= RowCount) or (var_fila > -1);
                     //Si encontro la columna y la fila, escribir las unidades
                     If (var_columna > ColumnByName['UNIDADES'].Index) and 
                        (var_fila >-1) then 
                     Begin
                         //Escribirlo en la celda
                         Cells[var_columna, var_fila] := IntToStr(FieldByName('unidades').AsInteger);
                         //Guardar el consecutivo (cons_pedi_unidades) del registro
                         grid_pedidos.FontNames[var_columna, var_fila] := (FieldByName('cons_pedi_unidades').asString);
                     End;
                     Next;
               End;
               Close;
           End;
           //Totalizar las unidades
           TotalizarGrid(grid_pedidos, ColumnByName['UNIDADES'].index + 1, 1,
                ColCount - 1, RowCount - 1, ColumnByName['UNIDADES'].Index, 0,
                True, False, False);
      End;
  Except
       On e:Exception do EjecutarMensajeError(e.Message);
  End;
  ProgresoBarraEstado;
end;
{****************************************************************
Procedimiento   : grid_pedidosGetCellColor
Objetivo        : Pintar los colores de las celdas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_pedidos.grid_pedidosGetCellColor(Sender: TObject;
  ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush;
  AFont: TFont);
Var
        var_estado      : Boolean;
begin
  inherited;
  //Validar
  If grid_pedidos.RowCount <= 1 Then Exit;
  With grid_pedidos do
  Begin
       If (ACol = ColumnByName['SELECCIONADO'].Index) Then
           aBrush.Color := clBtnFace
       Else
       Begin
          if (aCol = ColumnByName['NOMB_COME_PRIO_PEDIDO'].Index) Then
          Begin
             if (Cells[ColumnByName['COLO_COME_PRIO_PEDIDO'].Index, aRow]<>'') then
             aBrush.Color := StrToInt(Cells[ColumnByName['COLO_COME_PRIO_PEDIDO'].Index, aRow])
          End
          Else
          Begin
               //Estado
               GetCheckBoxState(ColumnByName['SELECCIONADO'].Index, aRow, var_Estado);
               //Pintar los seleccionados
               if var_estado then aBrush.Color := clZebra;
          End;
      End;
  End;
        {//Fecha vencida
        If (aCol = ColumnByName['FECH_ENTREGA'].Index) Then
        Begin
           if (Cells[ColumnByName['FECH_ENTREGA'].Index, aRow]<>'') then
               Try
                   If (StrToDate(Cells[ColumnByName['FECH_ENTREGA'].Index, aRow]) > (Now-7)) Then
                        aBrush.Color := cocProximoVencerse;
                   If (StrToDate(Cells[ColumnByName['FECH_ENTREGA'].Index, aRow]) < (Now)) Then
                        aBrush.Color := cocVencido;
               Except
               End;
        End }
end;
{****************************************************************
Procedimiento   : acti_eliminarUpdate
Objetivo        : Actualizar el estado de la acción de eliminación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_pedidos.acti_eliminarUpdate(Sender: TObject);
var
        var_haySeleccion        : boolean;
        var_integer     : Integer;
begin
  inherited;
  //Si la propiedad canDelete del Frame es False, deshabilitar
  if Not fCanDelete then
           acti_eliminar.Enabled := False
  Else
  with grid_pedidos do
  Begin
      //Buscar si hay pedidos seleccionados
      var_haySeleccion := False;
      var_integer := 1;
      Repeat
            GetCheckBoxState(ColumnByName['SELECCIONADO'].Index, var_integer, var_haySeleccion);
            inc(var_integer);
      Until (var_integer > RowCount-1) or (var_HaySeleccion);
      //Cambiar el estado a la accion
      acti_eliminar.Enabled := (RowCount>1) and
        (var_haySeleccion);
  End;
end;
{****************************************************************
Procedimiento   : acti_eliminarExecute
Objetivo        : Ejecuta la acción de eliminar las unidades de
                  la orden
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_pedidos.acti_eliminarExecute(Sender: TObject);
Var
        var_fila : Integer;
        var_colu : Integer;
        var_seleccionado : Boolean;
begin
     With grid_pedidos, quer_eliminar do
     Begin
        //Confirmar la eliminación
        If Confirmar(cosDeseaEliminar)=mrYes Then
        Begin
            //Recorrer el grid buscando las seleccionadas
            For var_fila := 1 to RowCount - 1 Do
            Begin
                //Consultar el estado del checkBox
                GetCheckBoxState(ColumnByName['SELECCIONADO'].Index, var_fila, var_seleccionado);
                //Si está seleccionado, Ejecutar el SQL
                if var_seleccionado then
                Begin
                     //Buscar las columnas (tallas) que tengan unidades
                     For var_colu := ColumnByName['UNIDADES'].Index + 1 to ColCount - 1 do
                        if (Cells[var_colu, var_fila] <> '') Then
                        Begin
                               ParamByName('cons_pedi_unidades').Value := FontNames[var_colu, var_fila];
                               ExecSQL;
                        End;
                End;
            End;
            //Actualizar la consulta
            doEjecutarFrame(var_cons_prod_orden_actual);
        End;
     End;
end;
{****************************************************************
Procedimiento   : grid_pedidosClickCell
Objetivo        : Controlar los clicks del mouse sobre la matriz de pedidos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_pedidos.grid_pedidosClickCell(Sender: TObject;
  ARow, ACol: Integer);
Var
        var_estado      : boolean;
begin
  inherited;
  With grid_pedidos do
  Begin
      If (aCol = ColumnByName['SELECCIONADO'].Index) and (aRow > 0) Then
      Begin
        //Obtener el estado actual
         GetCheckBoxState(aCol, aRow, var_estado);
         //Cambiar el estado
         SetCheckBoxState(aCol, aRow, Not var_estado);
         Repaint;
      End;
  End;
end;

end.

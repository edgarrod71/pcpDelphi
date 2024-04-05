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
        Unit            : ufra_prod_cort_tota
        Objetivo        :  Frame de unidades totales programadas
                          en una orden de producción real
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 01 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}
unit ufra_prod_orde_tota;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, BaseGrid, AdvGrid, AdvCGrid, SCLColumnGrid;

type
  Tffra_prod_orde_tota = class(TFrame)
    grid: TSCLColumnGrid;
    quer_cons_unidades: TQuery;
    quer_tallas: TQuery;
    quer_colores: TQuery;
    procedure gridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Function DoEjecutarFrame(peCons_prod_lote : Integer;peSaveToFile : String = '') : Boolean;
  end;

implementation

uses _cons_pcp, _func_varias;

{$R *.DFM}

{****************************************************************
Procedimiento   : Create
Objetivo        : Crear el Frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Diciembre 01 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_orde_tota.Create (Owner : TComponent);
Begin
     //Heredar la creacion
     Inherited Create (Owner);
     //Inicializar el frame
     AutoHints(Self);
End;

{****************************************************************
Procedimiento   : DoEjecutarFrame
Objetivo        : Ejecuta la consulta para el lote de producción
                  solicitado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
Function Tffra_prod_orde_tota.DoEjecutarFrame(peCons_prod_lote : Integer; peSaveToFile : String = '') : Boolean;
Var
        var_cons_refe_color     : Integer;
        var_cons_grup_tall_Detalle      : Integer;
        var_fila                : Integer;
        var_colu                : Integer;
        var_existe              : Boolean;
        var_unidades            : Integer;
Begin
     Result := False;
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
                    ParambyName('cons_prod_lote').Value := peCons_prod_lote;
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
                    ParambyName('cons_prod_lote').Value := pecons_prod_lote;
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
                             Columns[ColCount - 1].ReadOnly := True;
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
                With quer_cons_unidades do
                  Begin
                    //Abrir la consulta
                    if Active then Close;
                    ParambyName('cons_prod_lote').Value := pecons_prod_lote;
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
                totalizarGrid(grid, Grid.ColumnByName['UNIDADES'].Index + 1, 1, Grid.ColCount - 2, Grid.RowCount - 2);
                //Si es para guardar, guardarla
                if peSaveToFile <> '' Then
                    Grid.SaveToFile(peSaveToFile);
                Result := True;
           End;
     Except
          //Error
          On e:Exception do
          Begin
               EjecutarMensajeError(e.Message);
          End;
     End;
     Try  grid.FixedCols := 4; Except End;
End;


{****************************************************************
Procedimiento   : gridGetCellColor
Objetivo        : Dar color a la celdas del grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_orde_tota.gridGetCellColor(Sender: TObject; ARow,
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

end.

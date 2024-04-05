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
        Unit            : un1_refe_fich_edic_08_medi_pren_terminada
        Objetivo        : Ventana de edición de fichas técnicas
                          09 - MEDIDAS DE PRENDAS TERMINADAS
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 06-Jun-2005
        Versión         : pcp4.0.20.10
*******************************************************************}
unit un1_refe_fich_edic_08_medi_pren_terminada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  un1_refe_fich_00Edicion, Db, kbmMemTable, ActnList, DBTables,
  ufra_mens_atencion, dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls,
  SoCtrls, SCLDBLabel, ExtCtrls, Boxes, PCPFrame, ufra_fotografiaDB, Grids,
  BaseGrid, AdvGrid, AdvCGrid, SCLColumnGrid, Menus, TB2Item, TBX, dxExEdtr;

type
  Tfn1_refe_fich_edic_08_medi_pren_terminada = class(Tfn1_refe_fich_00Edicion)
    quer_Sele_Detalle: TQuery;
    quer_guar_detalle: TQuery;
    padr_tabl_fich_DetallesIMAG_1: TBlobField;
    padr_tabl_fich_DetallesIMAG_1_SMALL: TBlobField;
    padr_tabl_fich_DetallesCOMENTARIOS: TMemoField;
    pane_grid: TPanel;
    Splitter1: TSplitter;
    grid: TSCLColumnGrid;
    quer_tallas: TQuery;
    quer_tall_ficha: TQuery;
    Acciones: TActionList;
    acti_Grid_insertar: TAction;
    acti_grid_adicionar: TAction;
    acti_grid_eliminar: TAction;
    popGrid: TTBXPopupMenu;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    quer_elim_cantidades: TQuery;
    quer_guar_cantidades: TQuery;
    quer_sele_Cantidades: TQuery;
    pane_contenedor: TPanel;
    pane_cont_imagen: TPanel;
    pane_imagen: Tffra_fotografiaDB;
    pane_observaciones: TPanel;
    Splitter2: TSplitter;
    dxDBMemo1: TdxDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure padr_acti_AfterEjecutarExecute(Sender: TObject);
    procedure acti_Grid_insertarExecute(Sender: TObject);
    procedure acti_grid_eliminarUpdate(Sender: TObject);
    procedure acti_grid_eliminarExecute(Sender: TObject);
    procedure padr_acti_AfterPostExecute(Sender: TObject);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pane_cont_imagenResize(Sender: TObject);
  private
    { Private declarations }
    Procedure InicializarGrid;
  public
    { Public declarations }
  end;

var
  fn1_refe_fich_edic_08_medi_pren_terminada: Tfn1_refe_fich_edic_08_medi_pren_terminada;

implementation

uses _cons_pcp, _func_pcp, _func_varias, un1_refe_fich_funciones,
  _func_graficas, _vari_pcp, _Traductor;


{$R *.DFM}



{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Crear e inicializar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-Jun-2005
Versión         : pcp4.0.20.10
*****************************************************************}
procedure Tfn1_refe_fich_edic_08_medi_pren_terminada.FormCreate(
  Sender: TObject);
begin
  inherited;
  TipoFicha := ftdMedidasPrendaTerminada;
  Grid.ActiveCellShow := False;
  SetMovimientoGrid(Grid, mgColumnas);
  Insertar_Palabras(Self, WKLenguaje);
end;

Procedure Tfn1_refe_fich_edic_08_medi_pren_terminada.InicializarGrid;
Var
        var_i   : Integer;
        var_Max_Row     : IntegeR;
Begin
    With Grid Do
    Begin
        //Limpiar
        LimpiarGrid(Grid, 2, 0);
        //Eliminar las columnas sobrantes
        For var_i := ColumnByName['DENOMINACION'].Index + 2 to ColCount do
            Columns[Var_i - 1].Destroy;
        //Unir las celdas de los títulos
        MergeCells(0,0,2,1);
        MergeCells(2,0,1,2);
        Cells[0,0] := cosZona;
        Cells[0,1] := cosDe;
        Cells[1,1] := cosA;
        Cells[2,1] := cosDenominacion;
        RowCount := 2;

        quer_tall_ficha.Close;
        quer_tall_ficha.Open;
        //Si Hay registros, llamar las tallas de la referencia
        if (quer_tall_ficha.RecordCount > 0) Then
        Begin
           With quer_tall_ficha do
           Begin
             While not Eof do
             Begin
                //Crear la columnma
                ColCount := ColCount + 1;
                Columns[ColCount - 1].Alignment := taRightJustify;
                Columns[ColCount - 1].Width := 50;
                Cells[ColCount - 1, 1] := FieldByName('texto').AsString;

                //Siguiente registro
                Next;
             End;
             Close;
           End;
           //Cantidades
           With quer_sele_Cantidades do
           Begin
                Close;
                Open;
                var_Max_Row := 0;
                While Not Eof do
                Begin
                     Try
                         If (FieldByName('cons_Fila').asInteger > var_Max_Row) Then
                            var_Max_Row := FieldByName('cons_Fila').asInteger + 1;
                         Cells[FieldByName('cons_columna').AsInteger, FieldByName('cons_fila').asInteger + 1] := FieldByName('texto').AsString;
                     Except
                        on E:Exception do
                            EjecutarMensajeError(e.Message);
                     End;
                     Next;
                End;
                Close;
                RowCount := var_Max_Row + 1;
           End;
        End
        Else
        Begin
            With quer_Tallas do
            Begin
                Close;
                ParamByName('cons_Refe_grup_Tallas').Value := padr_quer_info_Referencia.FieldByName('cons_Refe_grup_Tallas').AsInteger;
                Open;
                While not EOF do
                Begin
                    ColCount := ColCount + 1;
                    Columns[ColCount - 1].Alignment := taRightJustify;
                    Columns[ColCount - 1].Width := 50;
                    Cells[ColCount - 1, 1] := FieldByName('talla').AsString;
                    //Siguiente
                    Next;
                End;
            End;
            //Crear una columna para las tolerancias
            ColCount := ColCount + 1;
            Columns[ColCount - 1].Alignment := taRightJustify;
            Columns[ColCount - 1].Width := 50;
            Cells[ColCount - 1, 1] := '+/-';
            RowCount := 3;
        End;
        quer_tall_ficha.Close;
        quer_Tallas.Close;
        FixedRows := 2;
        //Unir el titulo de las tallas
        MergeCells(ColumnByName['DENOMINACION'].Index + 1, 0, ColCount - 1 -  ColumnByName['DENOMINACION'].Index, 1);
        Cells[ColumnByName['DENOMINACION'].Index + 1, 0] := cosTallas;
    End;
End;

procedure Tfn1_refe_fich_edic_08_medi_pren_terminada.padr_acti_AfterEjecutarExecute(
  Sender: TObject);
begin
  inherited;
  //Cargar las imágenes del detalle (si hay consecutivo de la ficha)
  if (padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger > 0) Then
  Begin
      With quer_sele_detalle do
      Begin
          Close;
          ParamByName('cons_Refe_ficha').Value := padr_tabl_fich_tecnicas.FieldByName('cons_refe_ficha').asInteger;
          Open;
          padr_tabl_fich_Detalles.LoadFromDataSet(quer_Sele_Detalle, [mtcpoAppend]);
          //Si hay registros, llamar la imágen
          CheckAndPostDataSet(padr_tabl_fich_tecnicas);
          Close;
      End;
  End;
  InicializarGrid;
end;

procedure Tfn1_refe_fich_edic_08_medi_pren_terminada.acti_Grid_insertarExecute(
  Sender: TObject);
begin
  inherited;
  Grid.InsertRows(grid.RowCount, 1);
  Grid.Row := Grid.RowCount - 1;
  CheckAndEditDataSet(padr_tabl_fich_Detalles);
end;


procedure Tfn1_refe_fich_edic_08_medi_pren_terminada.acti_grid_eliminarUpdate(
  Sender: TObject);
begin
  inherited;
  acti_grid_eliminar.Enabled := (grid.RowCount > 2) and (Grid.Row > 1);
end;

procedure Tfn1_refe_fich_edic_08_medi_pren_terminada.acti_grid_eliminarExecute(
  Sender: TObject);
begin
  inherited;
  If Confirmar(cosDeseaEliminar) = mrYes then
      Grid.RemoveRows(Grid.Selection.Top, Grid.Selection.Bottom - Grid.Selection.Top + 1);
  CheckAndEditDataSet(padr_tabl_fich_Detalles);

end;

procedure Tfn1_refe_fich_edic_08_medi_pren_terminada.padr_acti_AfterPostExecute(
  Sender: TObject);
Var
        var_Fila        : Integer;
        var_Colu        : Integer;
begin
  inherited;
  //Guardar el registro del detalle
  if Loading Then Exit;
  //Guardar el detalle
  CheckAndPostDataSet(padr_tabl_fich_Detalles);
  //Guardar la tabla en la BD
  Try
        //Guardar la imágen y el comentario
        if (padr_tabl_fich_Detalles.RecordCount > 0) Then
           quer_guar_detalle.ExecSQL;

        //Guardar las tallas y las cantidades
        quer_elim_cantidades.ExecSQL;
        quer_Guar_cantidades.ParamByName('cons_refe_ficha').Value := padr_tabl_fich_tecnicas.FieldByName('cons_Refe_ficha').asInteger;
        For var_Fila := 1  to Grid.RowCount - 1 do
        Begin
            For var_Colu := 0 to Grid.ColCount - 1 do
            Begin
                With quer_Guar_Cantidades do
                Begin
                    //Descartar algunas celdas
                    if Not
                       ((var_Fila = 1) and (var_Colu <= Grid.ColumnByName['DENOMINACION'].Index)) or
                       (Grid.Cells[var_Colu, var_Fila] = '')
                       Then
                    Begin
                      ParamByName('cons_fila').Value := var_Fila - 1;
                      ParamByName('cons_columna').Value := var_Colu;
                      ParamByName('texto').Value := Grid.Cells[var_Colu, var_Fila];
                      ParamByName('Valor').Value := 0;
                      ExecSQL;
                    End;
                End;
            End;
        End;
  Except
     on E:Exception do
     Begin
       EjecutarMensajeError(e.Message);
       Raise;
     End;
  End;
end;

procedure Tfn1_refe_fich_edic_08_medi_pren_terminada.gridKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If key = Vk_Return Then
     CheckAndEditDataSet(padr_tabl_fich_tecnicas);
end;

procedure Tfn1_refe_fich_edic_08_medi_pren_terminada.pane_cont_imagenResize(
  Sender: TObject);
begin
  inherited;
  setTamanoImagen(pane_imagen, TipoFicha);
  CentrarControl(pane_imagen);
end;

end.

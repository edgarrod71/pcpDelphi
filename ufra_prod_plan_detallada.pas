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
        Unit            : ufra_prod_plan_detallada
        Objetivo        : Frame de planeación detallada de producción
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Diciembre 10 de 2004
        Versión         : pcp4.0.0.10
*******************************************************************}
unit ufra_prod_plan_detallada;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, BaseGrid, AdvGrid, AdvCGrid, ExtCtrls, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, StdCtrls, SoCtrls, SCLDBLabel, Boxes, PCPFrame,
  dxCurrencyEditPCP, Db, DBTables, TB2Item, TB2Dock, TB2Toolbar, TBX,
  ActnList, SCLColumnGrid;

type
  Tffra_prod_plan_detallada = class(TFrame)
    pane_trab_planeacion: TPanel;
    Grid: TSCLColumnGrid;
    pane_info_destino: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    SCLDBLabel13: TSCLDBLabel;
    pane_sele_fechas: TPanel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    edit_fech_inicial: TdxDateEdit;
    edit_fech_final: TdxDateEdit;
    edit_empresa: TdxCurrencyEditPCP;
    edit_planta: TdxCurrencyEditPCP;
    edit_linea: TdxCurrencyEditPCP;
    edit_turno: TdxCurrencyEditPCP;
    SCLDBLabel2: TSCLDBLabel;
    edit_cons_prog_produccion: TdxCurrencyEditPCP;
    quer_cale_linea: TQuery;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBControlItem1: TTBControlItem;
    edit_cuad_por_dia: TdxSpinEdit;
    acti_frame: TActionList;
    acti_ampliar: TAction;
    acti_reducir: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    quer_programacion: TQuery;
    procedure GridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure doActualizarFechas(Sender: TObject);
    procedure GridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure doPintarGanttPMP(Sender: TObject);
    procedure acti_frameUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure acti_ampliarExecute(Sender: TObject);
    procedure acti_reducirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create(owner : TComponent);Override;
    Procedure doEjecutarFrame(
        peFech_inicial, peFech_Final : TDateTime;
        pecons_prog_produccion, pecons_empresa, pecons_planta, pecons_linea : Integer);
  end;

implementation

uses _cons_colores, _func_graficas, _func_grids, _func_varias, _cons_pcp,
  _MDI;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
Constructor Tffra_prod_plan_detallada.Create(owner : TComponent);
Begin
      Inherited Create(Owner);
End;
{****************************************************************
Procedimiento   : GridDrawCell
Objetivo        : Pintar las celdas del grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_plan_detallada.GridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  With grid do
  Begin
      if (aRow > 0) and (aCol > ColumnByName['ZOOM'].Index) and (Cells[aCol, aRow] <> '') Then
      Begin
           //ORDENES PROGRAMADAS DIFERENTES A LA ACTIVA
           InflateRect(Rect, 1, 1);
           if Cells[aCol, aRow] = '1' Then
           Begin
              DibujarGradiente(Canvas, Rect, False, [clFinGradienteHard, clInicioGradienteHard, clFinGradienteHard]);
              InflateRect(Rect, -1, -1);
              DibujarGradiente(Canvas, Rect, False, [clFinGradiente, clInicioGradiente, clFinGradiente]);
              InflateRect(Rect, 1, 1);
           End
           Else
           if Cells[aCol, aRow] = '2' Then
              //DibujarGradiente(Canvas, Rect, False, [colorMasBrillante(clBtnShadow, 30),colorMasBrillante(clBtnShadow, 0), colorMasBrillante(clBtnShadow, 30)])
              DibujarGradiente(Canvas, Rect, False, [clFinGradienteHard, clInicioGradienteHard, clFinGradienteHard])
           Else
           if Cells[aCol, aRow] = '3' Then
              DibujarGradiente(Canvas, Rect, False, [clFinGradienteWarning, clInicioGradienteWarning, clFinGradienteWarning])
           Else
           if Cells[aCol, aRow] = '4' Then
              DibujarGradiente(Canvas, Rect, False, [clFinGradienteStop, clInicioGradienteStop, clFinGradienteStop]);
           {
           //Linea de división sobre el gantt
           Canvas.Brush.Color := GridLineColor;
           Canvas.Pen.Color := GridLineColor;
           Canvas.MoveTo(Rect.Right - 1, Rect.Top);
           Canvas.LineTo(Rect.Right - 1, Rect.Bottom);}
      End;
  End;

end;
{****************************************************************
Procedimiento   : doActualizarFechas
Objetivo        : Actualiza las fechas de programación del grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_plan_detallada.doActualizarFechas(
  Sender: TObject);
var
    var_i   : Integer;
    var_nume_dias    : Integer;
    var_colu    : Integer;
    var_fila    : Integer;
    var_es_dia_habil : Boolean;
begin
  inherited;
  If (edit_empresa.AsInteger = 0) or (edit_planta.AsInteger = 0) or (edit_linea.AsInteger = 0) Then Exit;
  Grid.Visible := False;
  Update;
  With Grid do
  Begin
      Try
            ProgresoBarraEstado(cosTrabajando);
             //Preparar la consulta de dias no laborables
             With quer_cale_linea do
             Begin
                  if active then close;
                  ParamByName('pe_fech_inicial').Value := edit_fech_inicial.Date;
                  ParamByName('pe_fech_final').Value := edit_fech_final.Date;
                  ParamByName('pe_cons_empresa').Value := edit_empresa.asInteger;
                  ParamByName('pe_cons_planta').Value := edit_planta.asInteger;
                  ParamByName('pe_Cons_linea').Value := edit_linea.asInteger;
                  Open;
             End;
            //Validar el rango de fechas
            if (edit_fech_final.Date < Edit_fech_inicial.Date) or
               (edit_fech_final.Date > Edit_fech_inicial.Date + 60) Then
              edit_fech_final.Date := edit_fech_inicial.Date + 60;
            //Si falta algún campo, salir
            if (edit_empresa.AsInteger = 0) or (edit_planta.AsInteger = 0)
               or (edit_linea.AsInteger = 0) then
              Begin
                ProgresoBarraEstado;
                Exit;
              End;
            //Eliminar las columnas Adicionales
            For var_i := ColumnByName['ZOOM'].Index + 1 to ColCount - 1 do
              Begin
                 Columns[ColumnByName['ZOOM'].Index + 1].Destroy;
              End;
            var_nume_dias := Trunc(Edit_fech_final.Date - Edit_fech_inicial.Date + 1);
            //Crear las columnas adicionales
            For var_i := 1 to var_nume_dias do
            Begin
                   var_Es_dia_habil :=  Not quer_cale_linea.locate('FECHA', edit_fech_inicial.Date + var_i - 1, []);
                   //Crear la división para el dia
                   For var_colu := 1 to edit_cuad_por_dia.IntValue do
                   Begin
                       colCount := ColCount + 1;
                       With Columns[ColCount - 1] do
                       Begin
                            ReadOnly := True;
                            Width := cosAnch_cuadro_pmp;
                            if var_es_dia_habil then Tag := 1
                            Else Tag := -1;
                       End;
                   End;
                  //Unir el titulo
                  MergeCells(ColCount - edit_cuad_por_Dia.IntValue, 0, edit_cuad_por_Dia.IntValue, 1);
                  Cells[ColCount - 1, 0] :=  FormatDateTime('dd mmm', edit_fech_inicial.Date + var_i - 1);
                  //Columns[ColCount - 1].Borders := [cbRight];
                  Columns[ColCount - 1].Font.Size := 7;
            End;
      Except
          On e:Exception do
            EjecutarMensajeError(e.Message);
      End;
  End;
  //Mostrar el grid
  Grid.Visible := True;
  //Cerrar las consultas
  quer_cale_linea.Close;
  //Pintar el gantt del plan maestro
  doPintarGanttPMP(Sender);
  ProgresoBarraEstado;
end;
{****************************************************************
Procedimiento   : GridGetCellColor
Objetivo        : Dar color especial a algunas celdas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_plan_detallada.GridGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  With grid do
  Begin
       //Marcar los dias no hábiles
       If Columns[aCol].Tag = -1 Then aBrush.Color := ColorMasBrillante(clSilver, 50);
  End;
end;
{****************************************************************
Procedimiento   : doPintarGanttPMP
Objetivo        : Pinta el gantt del Plan Maestro de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_plan_detallada.doPintarGanttPMP(
  Sender: TObject);
Var
    var_ulti_fecha  : TDateTime;
    var_ulti_fraccion   : Float;
    var_carg_prim_operacion : Float;
    var_frac_actual : Integer;
    var_fech_actual : TDateTime;
    var_colu    : Integer;
    var_float   : Float;
    var_duracion    : Integer;
    var_i   : Integer;
    var_lote_actual : Boolean;
    var_texto   : String;
    var_colu_inic_dia   : Integer;
begin
  inherited;
  If (edit_empresa.AsInteger = 0) or (edit_planta.AsInteger = 0) or (edit_linea.AsInteger = 0) Then Exit;
  Try
      Grid.Visible := False;
      Update;
      With Grid do
      Begin
            //Limpiar el grid
            LimpiarGrid(Grid, 1, ColumnByName['ZOOM'].Index + 1);
            Grid.RowCount := 1;
            //Abrir la consulta de programación
            With quer_programacion do
            Begin
                if Active then Close;
                ParamByName('fech_inicial').Value := edit_fech_inicial.Date;
                ParamByName('fech_Final').Value := edit_fech_Final.Date;
                ParamByName('cons_empresa').Value := edit_empresa.asInteger;
                ParamByName('cons_planta').Value := edit_planta.asInteger;
                ParamByName('cons_plan_linea').Value := edit_linea.asInteger;
                Open;
                //Insertar los registros
                While not eof do
                Begin
                    //--var_lote_actual := (FieldByName('cons_prod_lote').asInteger = edit_Cons_prog_produccion.AsInteger);
                    var_lote_actual := False;
                    RowCount := RowCount + 1;
                    Cells[ColumnByName['CONS_PROG_PRODUCCION'].Index, RowCount - 1] := FieldByName('CONS_PROG_PRODUCCION').AsString;
                    Cells[ColumnByName['NUME_PROD_ORDEN'].Index, RowCount - 1] := FieldByName('NUME_PROD_ORDEN').AsString;
                    Cells[ColumnByName['NUME_LOTE'].Index, RowCount - 1] := FieldByName('NUME_LOTE').AsString;
                    Cells[ColumnByName['CONS_PROD_ORDEN'].Index, RowCount - 1] := FieldByName('CONS_PROD_ORDEN').AsString;
                    Cells[ColumnByName['CONS_PROD_LOTE'].Index, RowCount - 1] := FieldByName('CONS_PROD_LOTE').AsString;
                    Cells[ColumnByName['RECO_PRIM_PAQUETE'].Index, RowCount - 1] := FormatFloat('0.00', FieldByName('RECO_PRIM_PAQU_DIAS').asFloat);
                    Cells[ColumnByName['RECO_ULTI_PAQUETE'].Index, RowCount - 1] := FieldByName('RECO_ULTI_PAQU_DIAS').AsString;
                    Cells[ColumnByName['CODI_REFERENCIA'].Index, RowCount - 1] := FieldByName('CODI_REFERENCIA').AsString;
                    //Fechas de ejecución
                    var_ulti_fecha := FieldByName('FECH_EJEC_INICIAL').AsDateTime;
                    var_ulti_fraccion := FieldByName('FRAC_EJEC_INICIAL').asFloat;
                    //--------Pintar GANTT-------------
                    var_frac_actual := Trunc(var_ulti_fraccion);
                    //Limpiar la duración anterior
                    For var_colu := ColumnByName['ZOOM'].Index + 1  To ColCount - 1 do
                      //Colors[var_colu , var_fila] := clWhite;
                        Cells[var_colu , RowCount - 1] := '';
                    //Identificar la duración del primer paquete
                    var_duracion := RoundBy(FieldByName('RECO_PRIM_PAQU_DIAS').asFloat * edit_cuad_por_dia.IntValue, 0.5);
                    //Pintar recorrido 1er paquete
                    if var_lote_Actual then var_texto := '3'
                    Else var_texto := '1';
                    //Calcular la columna inicial del dia
                    var_colu_inic_dia := Trunc(((FieldByName('fech_ejec_inicial').AsDateTime - edit_fech_inicial.Date)* edit_cuad_por_dia.IntValue)); 
                    For var_colu := 1 To var_duracion do
                      //Colors[ColumnByName['RECO_TOTAL'].Index + var_colu + var_dia_inic_nivel, var_fila] := clRed;
                      Cells[ColumnByName['ZOOM'].Index + var_colu + var_colu_inic_dia + var_frac_actual, RowCount - 1] := var_texto;

                    //Calcular la duración del último paquete
                    var_i    := var_duracion; //Duración del primer paquete
                    var_duracion := RoundBy(FieldByName('RECO_ULTI_PAQU_DIAS').asFloat * edit_cuad_por_dia.IntValue, 0.5);
                    if var_lote_Actual then var_texto := '4'
                    Else var_texto := '2';
                    For var_colu := 1  To var_duracion do
                        //Colors[ColumnByName['RECO_TOTAL'].Index + var_colu + var_dia_inic_nivel + var_i, var_fila] := clBlue;
                        Cells[ColumnByName['ZOOM'].Index + var_colu_inic_dia + var_colu + var_frac_actual + var_i, RowCount - 1] := var_Texto;
                    Cells[ColumnByName['FECH_EJEC_INICIAL'].Index, RowCount - 1] := FormatDateTime('dd/mm/yyyy', FieldByName('FECH_EJEC_INICIAL').AsDateTime);
                    Cells[ColumnByName['FRAC_EJEC_INICIAL'].Index, RowCount - 1] := FormatFloat('0.00', FieldByName('FRAC_EJEC_INICIAL').asFloat);
                    Cells[ColumnByName['FECH_EJEC_FINAL'].Index, RowCount - 1] := FormatDateTime('dd/mm/yyyy', var_ulti_fecha + FieldByName('RECO_PRIM_PAQU_DIAS').asFloat + FieldByName('RECO_ULTI_PAQU_DIAS').asFloat);
                    //Carga de la 1Op:
                    Try
                       var_carg_prim_operacion := (FieldByName('TIEM_MEDIO').AsFloat * FieldByName('UNID_LOTE').AsInteger)/
                                                 (FieldByName('MINU_CONTRATADOS').AsInteger - FieldByName('MINU_DESCANSO').AsInteger);
                    Except
                       var_carg_prim_operacion := 0;
                    End;
                    Cells[ColumnByName['CARG_PRIM_OPERACION'].Index, RowCount - 1] := FormatFloat('0.00', var_carg_prim_operacion);
                    //Siguiente registro
                    Next;
                End;
                Close;
            End;
      End;
  Except
    on E:Exception do
        EjecutarMensajeError(e.Message);
  End;
  Grid.Visible := True;
end;
{****************************************************************
Procedimiento   : doEjecutarFrame
Objetivo        : Ejecuta el frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
Procedure Tffra_prod_plan_detallada.doEjecutarFrame(
        peFech_inicial, peFech_Final : TDateTime;
        pecons_prog_produccion, pecons_empresa, pecons_planta, pecons_linea : Integer);
Begin
        //Asignar las variables
        edit_fech_inicial.Date := peFech_inicial;
        edit_fech_final.Date := peFech_final;
        edit_Cons_prog_produccion.Value := peCons_prog_produccion;
        edit_empresa.Value := pecons_empresa;
        edit_planta.Value := pecons_planta;
        edit_linea.Value := pecons_linea;
        //Actualizar el grid
        doActualizarFechas(Self);
        doPintarGanttPMP(Self);
End;
{****************************************************************
Procedimiento   : acti_frameUpdate
Objetivo        : Actualizar la lista de acciones del frame
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_plan_detallada.acti_frameUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  //Acciones del grid
  acti_ampliar.Enabled := (edit_cuad_por_dia.intValue < 10);
  acti_reducir.Enabled := (edit_cuad_por_dia.intValue > 2);
end;
{****************************************************************
Procedimiento   : acti_ampliarExecute
Objetivo        : Ampliar la vista del PMP
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_plan_detallada.acti_ampliarExecute(Sender: TObject);
begin
  edit_cuad_por_dia.Value := edit_cuad_por_dia.intValue + 1;
  doActualizarFechas(Sender);
  doPintarGanttPMP(Sender);
end;
{****************************************************************
Procedimiento   : acti_reducirExecute
Objetivo        : Reducir la vista del PMP
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tffra_prod_plan_detallada.acti_reducirExecute(Sender: TObject);
begin
  edit_cuad_por_dia.Value := edit_cuad_por_dia.intValue - 1;
  doActualizarFechas(Sender);
  doPintarGanttPMP(Sender);
end;

end.

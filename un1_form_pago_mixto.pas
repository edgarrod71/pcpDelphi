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
        Unit            : un1_form_pago_mixto
        Objetivo        : Parametrización de la forma de pago
                          valor hora producción mixto (lineal y dividio)
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : Enero 09 de 2005
        Versión         : pcp4.0.0.16
*******************************************************************}
unit un1_form_pago_mixto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPFrame, Grids, BaseGrid, AdvGrid, AdvCGrid,
  SCLColumnGrid, DBCtrls, dfsSplitter, PCPProceso, TeeProcs, TeEngine,
  Chart, DBChart, Series;

type
  Tfn1_form_pago_mixto = class(T_fvent_modal)
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    DBText1: TDBText;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    dxDBCurrencyEdit4: TdxDBCurrencyEdit;
    dxDBCurrencyEdit5: TdxDBCurrencyEdit;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    dxDBCurrencyEdit6: TdxDBCurrencyEdit;
    dxDBCurrencyEdit7: TdxDBCurrencyEdit;
    dxDBCurrencyEdit8: TdxDBCurrencyEdit;
    dxDBCurrencyEdit9: TdxDBCurrencyEdit;
    dxDBCurrencyEdit10: TdxDBCurrencyEdit;
    dxDBCurrencyEdit11: TdxDBCurrencyEdit;
    PCPFrame2: TPCPFrame;
    PCPFrame3: TPCPFrame;
    dfsSplitter1: TdfsSplitter;
    dfsSplitter2: TdfsSplitter;
    Tabla_VentanaVALO_HORA_MINI_GARANTIZADO: TFloatField;
    Tabla_VentanaRANG_INFE_1: TFloatField;
    Tabla_VentanaRANG_SUPE_1: TFloatField;
    Tabla_VentanaVALO_HORA_PROD_1: TFloatField;
    Tabla_VentanaRANG_INFE_2: TFloatField;
    Tabla_VentanaRANG_SUPE_2: TFloatField;
    Tabla_VentanaVALO_HORA_PROD_2: TFloatField;
    Tabla_VentanaVALO_HORA_PROD_3: TFloatField;
    Tabla_VentanaPORC_INICIAL: TFloatField;
    Tabla_VentanaHORA_POR_DIA: TFloatField;
    Tabla_VentanaHORA_POR_SEMANA: TFloatField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Grid: TSCLColumnGrid;
    mydata_grafica: TDataSource;
    myTabla_grafica: TTable;
    myTabla_graficaeficiencia: TIntegerField;
    myTabla_graficaingreso: TFloatField;
    acti_Ventana: TActionList;
    acti_Calc_dias: TAction;
    acti_calc_semanas: TAction;
    boto_Calc_semanales: TTBXItem;
    boto_calc_diarios: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    SCLDBLabel11: TSCLDBLabel;
    dbch: TDBChart;
    Series1: TFastLineSeries;
    procedure Tabla_VentanaBeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure doHacerCalculos(Sender: TObject);
    procedure doInicializarGrid(Sender: TObject);
    procedure GridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Tabla_VentanaAfterPost(DataSet: TDataSet);
    procedure Tabla_VentanaAfterCancel(DataSet: TDataSet);
    procedure doRecalcularRangos(Sender: TObject);
    procedure GridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
    coiEficiencias : Integer = 135; //Número de eficiencias simuladas

var
  fn1_form_pago_mixto: Tfn1_form_pago_mixto;

implementation

uses _MDI, _func_varias, _cons_pcp, _func_grids, _cons_colores, _func_db,
  _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : Tabla_VentanaBeforeInsert
Objetivo        : Verificar que sólamente exista un registro en la
                  tabla
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 08 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_mixto.Tabla_VentanaBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  If tabla_ventana.RecordCount >= 1 Then Abort;
end;
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicialización de la ventana en su
                  creación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 08 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_mixto.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar los controles
  doInicializarGrid(Sender);
  Grid.ActiveCellShow := False;
  var_cerr_al_cancelar := False;
  //Crear la tabla auxiliar para la gráfica
  myTabla_Grafica.TableName := NombreTablaTemporal(myTabla_Grafica.TableName); 
  myTabla_Grafica.CreateTable;
  AbrirDataSet(myTabla_grafica);
  //Calcular la simulación
  doHacerCalculos(Sender);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : doHacerCalculos
Objetivo        : Recalcula las columnas de la simulación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_mixto.doHacerCalculos(Sender: TObject);
var
    var_eficiencia  : Integer;
    var_hora_producidas : Float;
    var_sala_base   : Float;
    var_sala_hora_producidas : Float;
    var_sala_a_pagar    : Float;
    var_incentivo   : Float;
    var_ingreso : Float;
begin
  inherited;
  if not (Tabla_Ventana.Active) Then Exit;
  //Titulo variable del incentivo
  Grid.Cells[Grid.ColumnByName['INCENTIVO'].Index, 0] := cosIncentivoHorasProducidas;
        // + '  ' + FormatFloat(',0.00', Tabla_Ventana.FieldByName('rang_infe_2').asFloat) +
        //' - ' + FormatFloat(',0.00%', Tabla_Ventana.FieldByName('rang_supe_1').asFloat);
  //Limpiar la tabla de la gráfica
  myTabla_Grafica.Close;
  myTabla_Grafica.CreateTable;
  myTabla_Grafica.Open;
  //Calcular las columnas para cada fila
  For var_eficiencia := 1 to coiEficiencias do
  Begin
     With Grid do
     Begin
          //Horas producidas a STD
          if boto_Calc_diarios.checked then
              var_hora_producidas := Tabla_Ventana.FieldByName('hora_por_dia').asFloat * (var_eficiencia /100)
          Else
              var_hora_producidas := Tabla_Ventana.FieldByName('hora_por_semana').asFloat * (var_eficiencia /100);
          Cells[ColumnByName['HORA_PRODUCIDAS'].Index, var_eficiencia] := FormatFloat(',0.00', var_hora_producidas);
          //Salario base horas trabajadas
          if boto_Calc_diarios.checked then
              var_sala_base := Tabla_Ventana.FieldByName('valo_hora_mini_garantizado').asFloat * Tabla_Ventana.FieldByName('hora_por_dia').asFloat
          Else
              var_sala_base := Tabla_Ventana.FieldByName('valo_hora_mini_garantizado').asFloat * Tabla_Ventana.FieldByName('hora_por_semana').asFloat;
          Cells[ColumnByName['SALA_BASE'].Index, var_eficiencia] := FormatFloat(',0.00', var_sala_base);
          //Salario hora producida
          if (var_eficiencia > tabla_ventana.FieldByName('RANG_INFE_1').asFloat) and
             (var_eficiencia < tabla_ventana.FieldByName('RANG_SUPE_1').asFloat)
          Then
             var_sala_hora_producidas := tabla_ventana.FieldByName('VALO_HORA_PROD_2').asFloat * var_hora_producidas
          Else
             var_sala_hora_producidas := tabla_ventana.FieldByName('VALO_HORA_PROD_1').asFloat * var_hora_producidas;
          Cells[ColumnByName['SALA_HORA_PRODUCIDAS'].Index, var_eficiencia] := FormatFloat(',0.00', var_sala_hora_producidas);
          //Salario a pagar
          if (var_eficiencia < tabla_ventana.FieldByName('RANG_SUPE_1').asFloat) Then
             var_sala_a_pagar := var_sala_base
          Else
             var_sala_a_pagar := var_sala_hora_producidas;
          Cells[ColumnByName['SALA_A_PAGAR'].Index, var_eficiencia] := FormatFloat(',0.00', var_Sala_a_pagar);

          //Incentivo horas producidas
          If (var_eficiencia > tabla_Ventana.FieldByName('rang_infe_1').asFloat) and
             (var_eficiencia < tabla_Ventana.FieldByName('rang_supe_1').asFloat) Then
             Begin
                if boto_Calc_diarios.checked then
                    var_incentivo :=   (var_hora_producidas -
                      (tabla_ventana.FieldByName('hora_por_dia').asFloat * (tabla_ventana.FieldByName('porc_inicial').asFloat/100))) *
                      tabla_ventana.FieldByName('VALO_HORA_PROD_3').asFloat
                Else
                    var_incentivo :=   (var_hora_producidas -
                      (tabla_ventana.FieldByName('hora_por_semana').asFloat * (tabla_ventana.FieldByName('porc_inicial').asFloat/100))) *
                      tabla_ventana.FieldByName('VALO_HORA_PROD_3').asFloat;
              End
          Else
              var_incentivo := 0;
          Cells[ColumnByName['INCENTIVO'].Index, var_eficiencia] := FormatFloat(',0.00', var_incentivo);
         //Valor total
         var_ingreso := var_sala_a_pagar + var_incentivo;
         Cells[ColumnByName['TOTA_INGR_BRUTO'].Index, var_eficiencia] := FormatFloat(',0.00', var_ingreso);
         //Insertar el registro en la tabla de la grafica
         With myTabla_Grafica do
         Begin
               Insert;
               FieldByName('eficiencia').Value := var_eficiencia;
               FieldByName('ingreso').Value := var_ingreso;
               Post;
         End;
     End;
  End;
  //Actualizar la gráfica
  dbch.SeriesList[0].RefreshSeries;
  //Verificar que haya uno check por lo menos (de los tipos de calculo)
  if not(boto_calc_diarios.Checked or boto_Calc_semanales.Checked) Then
        boto_calc_semanales.Checked := True;
end;
{****************************************************************
Procedimiento   : doInicializarGrid
Objetivo        : Inicializar el grid de simulación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_mixto.doInicializarGrid(Sender: TObject);
Var
    Var_I   : Integer;
begin
  inherited;
  Try
    //Crear las eficiencias en el Grid
    LimpiarGrid(Grid, 1, 0);
    Grid.RowCount := coiEficiencias + 1;
    For var_i := 1 to coiEficiencias do
    With Grid do
        Cells[ColumnByName['EFICIENCIA'].Index, var_i] := FormatFloat('0 %', var_i);
  Except
    on e:Exception do
        EjecutarMensajeError(e.Message);
  End;
end;
{****************************************************************
Procedimiento   : GridGetCellColor
Objetivo        : Dar el color a las celdas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_mixto.GridGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  inherited;
  With Grid, Tabla_Ventana do
  Begin
      //Color diferentente en el rango
      if (aCol >= FixedCols) Then
        if (aRow > FieldByName('rang_infe_1').asFloat) and (aRow < FieldByName('rang_supe_1').asFloat) Then
           aBrush.Color := clInicioGradiente; 
  End;
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterPost
Objetivo        : Recalcular los datos cuando se guarde
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_mixto.Tabla_VentanaAfterPost(DataSet: TDataSet);
begin
  inherited;
  doHacerCalculos(Self);
end;
{****************************************************************
Procedimiento   : Tabla_VentanaAfterCancel
Objetivo        : Recalcular los datos cuando se cancele
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_mixto.Tabla_VentanaAfterCancel(DataSet: TDataSet);
begin
  inherited;
  doHacerCalculos(Self);
end;
{****************************************************************
Procedimiento   : doRecalcularRangos
Objetivo        : Recalcula los rangos (2)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_form_pago_mixto.doRecalcularRangos(Sender: TObject);
var
    var_f   : Float;
begin
  inherited;
  if Not (Tabla_ventana.Active) Then Exit;
  //Recalcular los rangos
  With tabla_Ventana do
  Begin
      //Si es rango superior menor que el inferior, hacerlo igual
      if (FieldByName('rang_supe_1').asFloat < FieldByName('rang_infe_1').asFloat) then
      Begin
          if not (tabla_Ventana.State = dsEdit) Then
            tabla_Ventana.Edit;
          FieldByName('rang_supe_1').Value := FieldByName('rang_infe_1').asFloat;
      End;
      //Recalcular el rango inferior (2)
      var_f := FieldByName('rang_infe_1').asFloat;
      var_f := var_f + 0.01;
      if FieldByName('rang_infe_2').asFloat <> var_f Then
      Begin
          if not (tabla_Ventana.State = dsEdit) Then
            tabla_Ventana.Edit;
          FieldByName('rang_infe_2').Value := var_f;
      End;
      //Recalcular el rango superior (2)
      var_f := FieldByName('rang_supe_1').asFloat;
      var_f := var_f - 0.01;
      if FieldByName('rang_supe_2').asFloat <> var_f Then
      Begin
          if not (tabla_Ventana.State = dsEdit) Then
            tabla_Ventana.Edit;
          FieldByName('rang_supe_2').Value := var_f;
      End;
  End;
  //Si hubo cambios, recalcular la simulación
  if (tabla_Ventana.State = dsEdit) Then
     doHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : GridGetAlignment
Objetivo        : Alinear los titulos del grid
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 09 de 2005
Versión         : pcp4.0.20.4
*****************************************************************}
procedure Tfn1_form_pago_mixto.GridGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  //Centrar los titulos
  if aRow = 0 Then hAlign := taCenter;
end;

end.

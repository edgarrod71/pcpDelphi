unit ufra_prod_maestro;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxPageControl, ExtCtrls, ufra_refe_material, ufra_prod_sele_lote,
  RxMemDS, Db, DBTables, ufra_prod_resp_lote_proceso;

type
  Tffra_prod_maestro = class(TFrame)
    tabl_prod_ordenes: TTable;
    tabl_prod_ordenesCONS_PROD_ORDEN: TIntegerField;
    tabl_prod_ordenesNUME_PROD_ORDEN: TStringField;
    tabl_prod_ordenesCONT_POR_LOTES: TIntegerField;
    tabl_prod_ordenesANULADA: TIntegerField;
    tabl_prod_ordenesFECH_SISTEMA: TDateTimeField;
    tabl_prod_ordenesUSUA_SISTEMA: TStringField;
    data_prod_ordenes: TDataSource;
    myTabla_Ventana: TRxMemoryData;
    myData_Ventana: TDataSource;
    myTabla_Ventanacons_prod_orden: TIntegerField;
    myTabla_Ventanacons_prod_lote: TIntegerField;
    myTabla_Ventanacons_refe_material: TIntegerField;
    myTabla_Ventanacons_proceso: TIntegerField;
    myTabla_Ventanacons_refe_variacion: TIntegerField;
    pane_seleccion: TPanel;
    Bevel1: TBevel;
    fram_lote: Tffra_prod_sele_lote;
    fram_refe_material: Tffra_refe_material;
    tabl_guardar: TRxMemoryData;
    data_guardar: TDataSource;
    fram_avance: Tffra_prod_resp_lote_proceso;
    procedure myTabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure data_prod_ordenesDataChange(Sender: TObject; Field: TField);
    procedure fram_lotecomb_nume_loteChange(Sender: TObject);
    procedure fram_avanceResize(Sender: TObject);
  private
    { Private declarations }
    fProcesoActual        : Integer;
    var_llamando        : Boolean;
    Function DatosValidos : Boolean;
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Procedure SetProcesoActual(Value : Integer);
    Procedure SetDataSet(aDataSet : TDataSet);
    Property ProcesoActual : Integer Read fProcesoActual Write SetProcesoActual;
  end;

implementation

uses _func_varias;

{$R *.DFM}
// Procedimientos coumnes frames de ordenes de produccion
//....................................................................

{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_maestro.Create(Owner : TComponent);
Begin
    //Heredar la creación    
    Inherited Create(Owner);
    //Abrir la tabla temporal y generar un registro
    mytabla_ventana.Open;
    mytabla_ventana.Insert;
    SetProcesoActual(-1);
    mytabla_ventana.Post;
    //Abrir la tabla temporal para controlar los cambios
    tabl_guardar.open;
    //Abrir las consultas de los frames
    AbrirDataSet(fram_lote.quer_lotes);
    AbrirDataSet(fram_refe_material.quer_refe_materiales);
End;
{****************************************************************
Procedimiento   : SetProcesoActual
Objetivo        : Asigna el valor del proceso actual a la cual
                  pertenece o ejecuta el frame.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_maestro.SetProcesoActual(Value : Integer);
Begin
    fProcesoActual := Value;
    //Asignar a la tabla de la ventana
    With myTabla_Ventana do
    Begin
        //Si está cerrada, no cambiar
        If Not (Active) Then Exit;
        //Si no está en edición, editar
        If Not (State in [dsEdit, dsInsert]) Then
                Edit;
        FieldByName('cons_proceso').Value := fProcesoActual;
    End;
End;
{****************************************************************
Procedimiento   : SetDataSet
Objetivo        : Asignar un dataSet a la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_maestro.SetDataSet(aDataSet : TDataSet);
Begin
     //Asignar el dataset
     data_prod_ordenes.DataSet := aDataSet;
     //Validar el dataSet
     If aDataSet = Nil then Exit;
End;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterInsert
Objetivo        : Inicializar los campos luego de insertar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_maestro.myTabla_VentanaAfterInsert(
  DataSet: TDataSet);
begin
        With myTabla_ventana do
        Begin
             FieldByName('cons_proceso').Value := fProcesoActual;
        End;
end;
{****************************************************************
Procedimiento   : data_prod_ordenesDataChange
Objetivo        : Actualizar los controles cuando cambien los
                  datos del maestro de órdenes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_maestro.data_prod_ordenesDataChange(
  Sender: TObject; Field: TField);
var
        var_cons_prod_orden     : Integer;
begin
        //Conseguir el número de la orden
        With data_prod_ordenes do
             if (DataSet = Nil) or (Not DataSet.Active) or (DataSet.RecordCount = 0) Then
                var_cons_prod_orden := -1
             else
                var_cons_prod_orden := DataSet.FieldByName('cons_prod_orden').Value;
        //Actualizar myTabla_Ventana
        if (myTabla_ventana.State in [dsInsert, dsEdit]) Then 
                myTabla_Ventana.Cancel;
        myTabla_ventana.Edit;
        myTabla_Ventana.FieldByName('cons_prod_orden').Value := var_cons_prod_orden;
        myTabla_ventana.FieldByName('cons_prod_lote').Clear;
        myTabla_ventana.FieldByName('cons_refe_material').Clear;
        //Abrir la consulta de materiales
        if not fram_refe_material.quer_refe_materiales.Active then
          AbrirDataSet(fram_refe_material.quer_refe_materiales);
        //xxxxxxxLlamar lo propio del frame
        
end;
{****************************************************************
Procedimiento   : DatosValidos
Objetivo        : Verificar si los datos del frame son 
                  válidos para ejecutar las acciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Function Tffra_prod_maestro.DatosValidos : Boolean;
Begin
        Result := (fram_lote.comb_nume_lote.Text <> '') and 
                   (fram_refe_material.fram_comb_codi_material.Text <> '');
End;
{****************************************************************
Procedimiento   : fram_lotecomb_nume_loteChange
Objetivo        : Actualizar la ventana cuando cambie el número de lote
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_maestro.fram_lotecomb_nume_loteChange(
  Sender: TObject);
begin
        fram_avance.visible := fram_lote.comb_nume_lote.Text <> '';
        if fram_avance.Visible then fram_avance.doEjecutarFrame(myTabla_ventana.FieldByName('cons_prod_lote').asInteger,
                fProcesoActual);

end;
{****************************************************************
Procedimiento   : fram_avanceResize
Objetivo        : Actualizar el tamaño
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_maestro.fram_avanceResize(Sender: TObject);
begin
   Height := fram_avance.height + pane_seleccion.Height;     
end;

end.

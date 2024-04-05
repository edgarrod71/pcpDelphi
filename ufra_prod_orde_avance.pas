unit ufra_prod_orde_avance;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, RxMemDS, DBTables, ufra_prod_resp_lote_proceso;

type
  Tffra_prod_orde_avance = class(TFrame)
    tabl_prod_ordenes: TTable;
    tabl_prod_ordenesCONS_PROD_ORDEN: TIntegerField;
    tabl_prod_ordenesNUME_PROD_ORDEN: TStringField;
    tabl_prod_ordenesCONT_POR_LOTES: TIntegerField;
    tabl_prod_ordenesANULADA: TIntegerField;
    tabl_prod_ordenesFECH_SISTEMA: TDateTimeField;
    tabl_prod_ordenesUSUA_SISTEMA: TStringField;
    data_prod_ordenes: TDataSource;
    fram_avance: Tffra_prod_resp_lote_proceso;
    procedure data_prod_ordenesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    fProcesoActual        : Integer;
    var_inicializado    : Boolean;
    Procedure SetProcesoActual(Value : Integer);
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;
    Procedure SetDataSet(aDataSet : TDataSet);
    Property ProcesoActual : Integer Read fProcesoActual Write SetProcesoActual;
  end;

implementation

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e Inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_orde_avance.Create(Owner : TComponent);
Begin
     var_inicializado := False;   
    //Heredar la creación   
    Inherited Create(Owner);
    fram_avance.doEjecutarFrame(-1, -1, True);
    //Inicilizar el proceso actual (inválido por si no se cambia)
    SetProcesoActual(-1);
    var_inicializado := True;
End;
{****************************************************************
Procedimiento   : SetProcesoActual
Objetivo        : Asigna el valor del proceso actual a la cual
                  pertenece o ejecuta el frame.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_orde_avance.SetProcesoActual(Value : Integer);
Begin
    fProcesoActual := Value;
    if not var_inicializado then Exit;
    with fram_avance.myTabla_ventana do
    Begin
        if not (Active) then open;
        if (State in [dsEdit, dsInsert]) then
            Post;
        Edit;
        FieldByName('cons_proceso').value := fProcesoActual;
        fram_avance.doEjecutarFrame(FieldByName('cons_prod_lote').asInteger, FieldByName('cons_proceso').AsInteger, fram_avance.fram_lote.Visible);
    End;
    //Asignar la etapa a los query
    //fram_orde_unidades.quer_elim_unidades.paramByName('cons_proceso').Value := Value;
    //fram_orde_unidades.quer_inse_unidades.ParamByName('cons_proceso').Value := Value;
End;
{****************************************************************
Procedimiento   : SetDataSet
Objetivo        : Asignar un dataSet a la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_orde_avance.SetDataSet(aDataSet : TDataSet);
Begin
     //Asignar el dataset
     data_prod_ordenes.DataSet := aDataSet;
     //Validar el dataSet
     If aDataSet = Nil then Exit;
End;
{****************************************************************
Procedimiento   : data_prod_ordenesDataChange
Objetivo        : Actualizar el frame cuando cambien los datos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_avance.data_prod_ordenesDataChange(
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
end;

end.

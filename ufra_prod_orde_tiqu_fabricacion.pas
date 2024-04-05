unit ufra_prod_orde_tiqu_fabricacion;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ufra_prod_maestro, ExtCtrls, Boxes, PCPFrame, ufra_prod_orde_unid_lote,
  Db, DBTables, dfsSplitter, RxLookup, PCPLookUpComboEdit, StdCtrls,
  SoCtrls, SCLDBLabel, Grids, BaseGrid, AdvGrid, AdvCGrid, TB2Dock,
  TB2Toolbar, TBX, ufra_prod_orde_dist_paquetes;

type
  Tffra_prod_orde_tiqu_fabricacion = class(TFrame)
    fram_produccion: Tffra_prod_maestro;
    PCPFrame1: TPCPFrame;
    Panel1: TPanel;
    fram_unidades: Tffra_prod_orde_unid_lote;
    dfsSplitter1: TdfsSplitter;
    Panel2: TPanel;
    fram_distribucion: Tffra_prod_orde_dist_paquetes;
    procedure fram_refe_materialquer_refe_materialesAfterOpen(
      DataSet: TDataSet);
    procedure fram_lotecomb_nume_loteChange(Sender: TObject);
    procedure fram_producciondata_prod_ordenesDataChange(Sender: TObject;
      Field: TField);
    procedure fram_unidadesquer_tallasBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create (Owner : TComponent); Override;      
  end;

Const
    var_cons_proc_anterior = 1; //Proceso para la consulta de unidades

  
implementation

uses _func_varias;

{$R *.DFM}
{****************************************************************
Procedimiento   : Create
Objetivo        : Crea e inicializa el frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
Constructor Tffra_prod_orde_tiqu_fabricacion.Create(Owner : TComponent);
Begin
    //Heredar la creación
    Inherited Create(Owner);
    fram_produccion.SetProcesoActual(10);
    //Abrir consultas
End;
{****************************************************************
Procedimiento   : fram_refe_materialquer_refe_materialesAfterOpen
Objetivo        : Ubicar el primer registro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_tiqu_fabricacion.fram_refe_materialquer_refe_materialesAfterOpen(
  DataSet: TDataSet);
begin
end;
{****************************************************************
Procedimiento   : fram_lotecomb_nume_loteChange
Objetivo        : Llamar las unidades
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_orde_tiqu_fabricacion.fram_lotecomb_nume_loteChange(
  Sender: TObject);
begin
    //Ubicar el material
    with fram_produccion.fram_refe_material.quer_refe_materiales do
    Begin
        if (active) and (recordcount > 0) then
            fram_produccion.fram_refe_material.fram_comb_codi_material.keyValue := FieldByName('cons_Refe_material').asInteger;
    End;
    //Consultar las unidades
    fram_produccion.fram_lotecomb_nume_loteChange(Sender);
    fram_unidades.doEjecutarFrame(
    fram_produccion.myTabla_ventana.FieldByName('cons_prod_orden').asInteger,
    fram_produccion.myTabla_ventana.FieldByName('cons_prod_lote').AsInteger,
     fram_produccion.myTabla_ventana.FieldByName('cons_refe_material').asInteger,
     var_cons_proc_anterior);
    //Consultar la distribucion
    fram_distribucion.doEjecutarFrame(fram_produccion.myTabla_ventana.FieldByName('cons_prod_orden').AsInteger,
    	fram_produccion.myTabla_ventana.FieldByName('cons_prod_lote').AsInteger);
end;

procedure Tffra_prod_orde_tiqu_fabricacion.fram_producciondata_prod_ordenesDataChange(
  Sender: TObject; Field: TField);
begin
  fram_produccion.data_prod_ordenesDataChange(Sender, Field);

end;

procedure Tffra_prod_orde_tiqu_fabricacion.fram_unidadesquer_tallasBeforeOpen(
  DataSet: TDataSet);
begin
//  fram_unidades.quer_tallasBeforeOpen(DataSet);
{    with fram_unidades do
    Begin
        fram_unidades.quer_tallas.paramByName('cons_prod_lote').Value := fram_unidades.quer_cons_unidades.paramByName('cons_prod_lote').AsInteger;
        fram_unidades.quer_tallas.paramByName('cons_refe_material').Value := fram_unidades.quer_cons_unidades.paramByName('cons_refe_material').AsInteger;
        fram_unidades.quer_tallas.paramByName('cons_proceso').Value := fram_unidades.quer_cons_unidades.paramByName('cons_proceso').AsInteger;
    End;
}
end;

end.

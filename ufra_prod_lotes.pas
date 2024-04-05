unit ufra_prod_lotes;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, Boxes, PCPFrame, TB2Dock,
  TB2Toolbar, TBX, ActnList, Db, DBTables, dxDBTLCl, dxGrClms, DBActns,
  TB2Item, dxLayout, dxGrClEx, Menus;

type
  Tffra_prod_lotes = class(TFrame)
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    PCPFrame2: TPCPFrame;
    grid_lotes: TdxDBGrid;
    PCPFrame1: TPCPFrame;
    grid_responsables: TdxDBGrid;
    acti_frame: TActionList;
    tabl_prod_lotes: TTable;
    data_prod_lotes: TDataSource;
    data_prod_ordenes: TDataSource;
    tabl_prod_ordenes: TTable;
    tabl_prod_ordenesCONS_PROD_ORDEN: TIntegerField;
    tabl_prod_ordenesNUME_PROD_ORDEN: TStringField;
    tabl_prod_ordenesCONT_POR_LOTES: TIntegerField;
    tabl_prod_ordenesANULADA: TIntegerField;
    tabl_prod_ordenesFECH_SISTEMA: TDateTimeField;
    tabl_prod_ordenesUSUA_SISTEMA: TStringField;
    tabl_prod_lotesCONS_PROD_LOTE: TIntegerField;
    tabl_prod_lotesCONS_PROD_ORDEN: TIntegerField;
    tabl_prod_lotesNUME_LOTE: TIntegerField;
    tabl_prod_lotesCAPA_SIMULACION: TIntegerField;
    tabl_prod_lotesFECH_SISTEMA: TDateTimeField;
    tabl_prod_lotesUSUA_SISTEMA: TStringField;
    grid_lotesNUME_LOTE: TdxDBGridMaskColumn;
    grid_lotesFECH_SISTEMA: TdxDBGridDateColumn;
    grid_lotesUSUA_SISTEMA: TdxDBGridMaskColumn;
    tabl_prod_responsables: TTable;
    data_prod_responsables: TDataSource;
    quer_procesos: TQuery;
    grid_responsablesCONS_PROD_ORDE_RESPONSABLE: TdxDBGridMaskColumn;
    grid_responsablesCONS_PROD_ORDEN: TdxDBGridMaskColumn;
    grid_responsablesNUME_LOTE: TdxDBGridMaskColumn;
    grid_responsablesCONS_PROD_ETAPA: TdxDBGridMaskColumn;
    grid_responsablesFECH_ESTIMADA: TdxDBGridDateColumn;
    grid_responsablesHECHO: TdxDBGridMaskColumn;
    grid_responsablesPORC_AVANCE: TdxDBGridMaskColumn;
    grid_responsablesOBSERVACIONES: TdxDBGridMemoColumn;
    grid_responsablesFECH_SISTEMA: TdxDBGridDateColumn;
    grid_responsablesUSUA_SISTEMA: TdxDBGridMaskColumn;
    acti_cancelar: TDataSetCancel;
    acti_nuevo: TDataSetInsert;
    acti_guardar: TDataSetPost;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    acti_eliminar: TDataSetDelete;
    acti_actualizar: TDataSetRefresh;
    TBXItem5: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    grid_responsablesNOMB_PROD_ETAPA: TdxDBGridColumn;
    data_usuarios: TDataSource;
    quer_procesosCONS_PROCESO: TIntegerField;
    quer_procesosNOMB_PROCESO: TStringField;
    tabl_prod_responsablesCONS_PROD_ORDE_RESPONSABLE: TIntegerField;
    tabl_prod_responsablesCONS_PROD_ORDEN: TIntegerField;
    tabl_prod_responsablesNUME_LOTE: TIntegerField;
    tabl_prod_responsablesCONS_PROCESO: TIntegerField;
    tabl_prod_responsablesUSUA_RESPONSABLE: TStringField;
    tabl_prod_responsablesFECH_ESTIMADA: TDateTimeField;
    tabl_prod_responsablesHECHO: TIntegerField;
    tabl_prod_responsablesPORC_AVANCE: TSmallintField;
    tabl_prod_responsablesOBSERVACIONES: TMemoField;
    tabl_prod_responsablesFECH_SISTEMA: TDateTimeField;
    tabl_prod_responsablesUSUA_SISTEMA: TStringField;
    tabl_prod_responsablesNOMB_PROCESO: TStringField;
    grid_responsablesUSUA_RESPONSABLE: TdxDBGridPickColumn;
    pop_lotes: TTBXPopupMenu;
    TBXItem6: TTBXItem;
    quer_nume_lote: TQuery;
    procedure tabl_prod_lotesBeforePost(DataSet: TDataSet);
    procedure acti_actualizarExecute(Sender: TObject);
    procedure tabl_prod_lotesAfterInsert(DataSet: TDataSet);
    procedure tabl_prod_responsablesAfterOpen(DataSet: TDataSet);
    procedure doEstablecerLoteManual(Sender: TObject);
    procedure tabl_prod_lotesAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure SetDataSet(aDataSet : TDataSet);
  end;

implementation

uses _MDI, _func_varias, _cons_pcp;

{$R *.DFM}
{****************************************************************
Procedimiento   : tabl_prod_lotesBeforePost
Objetivo        : Generar la secuencia de los lotes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 21 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_lotes.tabl_prod_lotesBeforePost(DataSet: TDataSet);
begin
        if (tabl_prod_lotes.State = dsInsert) then 
        Begin
              tabl_prod_lotes.FieldByName('cons_prod_lote').Value := GenerarSecuencia('pcp_prod_lotes', 'cons_prod_lote');
              With quer_nume_lote do
              Begin
                      if active then close;
                      Open;
                      tabl_prod_lotes.FieldByName('nume_lote').Value := FieldByName('nume_lote').AsInteger + 1;
                      Close;
              End;
        End;
end;
{****************************************************************
Procedimiento   : SetDataSet
Objetivo        : Asignar un dataSet a la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 21 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tffra_prod_lotes.SetDataSet(aDataSet : TDataSet);
Begin
     //Cerrar las consultas
     if tabl_prod_lotes.Active then tabl_prod_lotes.Close;
     if tabl_prod_responsables.Active then tabl_prod_responsables.Close;
     //Asignar el dataset
     data_prod_ordenes.DataSet := aDataSet;
     //Validar el dataSet
     If aDataSet = Nil then Exit;
     //Abrir las consultas
     AbrirDataSet(tabl_prod_lotes);
     AbrirDataSet(tabl_prod_responsables);
End;
{****************************************************************
Procedimiento   : acti_actualizarExecute
Objetivo        : Actualizar las consultas del frame
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 21 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_lotes.acti_actualizarExecute(Sender: TObject);
begin
        //Actualizar las consultas
        RefreshDataSet(tabl_prod_lotes);
        RefreshDataSet(tabl_prod_Responsables);
        RefreshDataSet(quer_procesos);
end;
{****************************************************************
Procedimiento   : tabl_prod_lotesAfterInsert
Objetivo        : Guardar el lote al crearlo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 21 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_lotes.tabl_prod_lotesAfterInsert(DataSet: TDataSet);
begin
        tabl_prod_lotes.Post;
end;

procedure Tffra_prod_lotes.tabl_prod_responsablesAfterOpen(
  DataSet: TDataSet);
begin
       //Llenar la lista de usuarios
       With grid_responsablesUSUA_RESPONSABLE, _fmdi.tabl_usuarios do
       begin
                First;
                Items.Clear;
                While not eof do
                Begin
                    items.Add(FieldByName('user_name').asString);
                    Next;
                End;
       End;
end;
{****************************************************************
Procedimiento   : doEstablecerLoteManual
Objetivo        : Establecer el número de lote de forma manual
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tffra_prod_lotes.doEstablecerLoteManual(Sender: TObject);
var 
        var_nume_lote    : Integer;
begin
        With tabl_prod_lotes do
        Begin
             If (Not active) or (RecordCount = 0) Then Exit;
             var_nume_lote := pcpInputForm(cosNumeroDeLote, CosEscribaNumeroDeLote, tvInteger, FieldByName('nume_lote').asInteger);
             if var_nume_lote = -1 then Exit;
             Edit;
             FieldByName('nume_lote').Value := var_nume_lote;
             Try
                 Post;
                 tabl_prod_responsables.Refresh;
             Except
                on e:Exception do
                Begin   
                        Cancel;
                        EjecutarMensajeError(e.message);
                End;
             End;
        End;
end;

procedure Tffra_prod_lotes.tabl_prod_lotesAfterPost(DataSet: TDataSet);
begin
        tabl_prod_responsables.refresh;
end;

end.

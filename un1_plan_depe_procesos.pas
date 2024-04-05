unit un1_plan_depe_procesos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, SCLDBGrid, ExtCtrls, Boxes, PCPFrame,
  Db, DBTables, dxfConnection, PCPConnector, PCPContenedor, Grids,
  BaseGrid, AdvGrid, AdvCGrid, SCLColumnGrid, PCPOperacion, TBXDkPanels,
  TBXButtonSCL, _vent_modal, PictureContainer, AdvPanel,
  dxExEdtr, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, TB2Item, TBX, TB2Dock,
  TB2Toolbar, RxMemDS, PCPProceso;

type
  Tfn1_plan_depe_procesos = class(T_fvent_modal)
    PCPFrame1: TPCPFrame;
    grid: TSCLDBGrid;
    PCPFrame2: TPCPFrame;
    scro: TScrollBox;
    quer_procesos: TQuery;
    data_procesos: TDataSource;
    quer_procesosCONS_PROCESO: TIntegerField;
    quer_procesosCODI_PROCESO: TStringField;
    quer_procesosNOMB_PROCESO: TStringField;
    gridCONS_PROCESO: TdxDBGridMaskColumn;
    gridCODI_PROCESO: TdxDBGridMaskColumn;
    gridNOMB_PROCESO: TdxDBGridMaskColumn;
    quer_eliminar: TQuery;
    quer_guardar: TQuery;
    quer_actu_procesos: TQuery;
    quer_sele_procesos: TQuery;
    quer_sele_Conectores: TQuery;
    myTabla_guardar: TRxMemoryData;
    myTabla_guardarmyField: TIntegerField;
    ActionList1: TActionList;
    acti_limpiar: TAction;
    acti_guardar: TAction;
    acti_cancelar: TAction;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    grid_conectores: TSCLColumnGrid;
    procedure scroDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure scroDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure doDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure doEliminarConector(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure doSeleccionarContenedor(Sender: TObject);
    procedure doLimpiar(Sender: TObject);
    procedure doGuardar(Sender: TObject);
    procedure doCargar(Sender: TObject);
    procedure acti_cancelarExecute(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure scroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_plan_depe_procesos: Tfn1_plan_depe_procesos;

implementation

uses _func_grids, _func_varias, _MDI, _cons_colores, un1_meto_procesos,
  un1_meto_procesos1, _func_pcp, _cons_pcp, _func_db, _Traductor;

{$R *.DFM}

procedure Tfn1_plan_depe_procesos.scroDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
    Accept := (Source = Grid);
end;

procedure Tfn1_plan_depe_procesos.scroDragDrop(Sender, Source: TObject; X, Y: Integer);
var
    var_i   : Integer;
    var_ya_Existe   : Boolean;
    Contenedor  : TPCPContenedor;
begin
    If (Source <> Grid) Then Exit;
    var_ya_Existe := False;
    //Buscar entre los existentes
    For var_i := 1 To Scro.ControlCount do
    Begin
        If (Scro.Controls[var_i - 1] is TPCPContenedor) Then
        Begin
             //Verificar que no sea el que envian
             If (Scro.Controls[var_i - 1] as TPCPContenedor).KeyValue = quer_procesos.FieldByName('cons_proceso').asString Then
             Begin
                 ShowMessage('Ya existe');
                 var_ya_Existe := True;
                 Break;
             End;
        End;
    End;
    //Si no existe, crearlo
    If Not var_ya_Existe Then
    Begin
          Contenedor := TPCPContenedor.Create(Self);
          With Contenedor do
          Begin
              Parent := Scro;
              Name := 'cont_'+quer_procesos.FieldByName('cons_proceso').asString;
              KeyValue := quer_procesos.FieldByName('cons_proceso').asString;
              Caption := quer_procesos.FieldByName('nomb_proceso').asString;
              Left := x;
              Top := y;
              Width := 100;
              onDragDrop := doDragDrop;
              onDblClick := doSeleccionarContenedor;
              OnClick := doSeleccionarContenedor;
              //Habilitar el guardardo
              If not (myTabla_guardar.State in [dsInsert, dsEdit]) Then
                myTabla_Guardar.Edit;
          End;
    End;
end;

procedure Tfn1_plan_depe_procesos.doDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
    var_i   : Integer;
    var_ya_Existe   : Boolean;
    Conector    : tPCPConnector;
begin
    If (Sender is TPCPContenedor) and (Source is TPCPContenedor) Then
    Begin
         //Buscar si existe el conector
         var_ya_existe := False;
         For var_i := 1 to Scro.ControlCount do
         Begin
            If (Scro.Controls[var_i - 1] is tPCPConnector) Then
            Begin
                 //Verificar que no sea el que envian
                 If (Scro.Controls[var_i - 1] as tPCPConnector).Name = 'cone_'+
                    (Source as TPCPContenedor).KeyValue +'_'+(Sender as TPCPContenedor).KeyValue Then
                 Begin
                     var_ya_Existe := True;
                     Break;
                 End;
            End;
         End;
         If Not var_ya_Existe then
         Begin
              Conector := tPCPConnector.Create(Self);
              With Conector do
              Begin
                  Parent := Scro;
                  Control1 := (Source as TPCPContenedor).Name;
                  Control2 := (Sender as TPCPContenedor).Name;
                  Arrows.EndStyle := asArrow;
                  Arrows.EndSize := 10;
                  Arrows.BeginStyle := asDiamondArrow;
                  Arrows.BeginSize := 5;
                  Name := 'cone_'+
                    (Source as TPCPContenedor).KeyValue +'_'+(Sender as TPCPContenedor).KeyValue;
                  Caption := '';
                  onDblClick := doEliminarConector;
              End;
              //Agregarlo al grid
              With Grid_Conectores do
              Begin
                RowCount := RowCount + 1;
                Cells[ColumnByName['cons_origen'].Index, RowCount - 1] := (Source as TPCPContenedor).KeyValue;
                Cells[ColumnByName['cons_destino'].Index, RowCount - 1] := (Sender as TPCPContenedor).KeyValue;
                Cells[ColumnByName['nomb_conector'].Index, RowCount - 1] := 'cone_'+
                    (Source as TPCPContenedor).KeyValue +'_'+(Sender as TPCPContenedor).KeyValue;
              End;
              doIniciarEdicionDataSet(myTabla_guardar);
         End;
    End;
end;

procedure Tfn1_plan_depe_procesos.doEliminarConector(Sender: TObject);
var
    var_fila    : Integer;
begin
    Try
      if Not (Sender is tPCPConnector) Then Exit;
       If (MessageDlg('Desea eliminar el conector?', mtConfirmation, [mbyes, mbno], 0)= mrYes) Then
       Begin
          var_fila :=  GridBuscarValorColumna(Grid_conectores, Grid_conectores.ColumnByName['nomb_conector'].Index,
                  (Sender as tPCPConnector).Name, 1, Grid_conectores.RowCount - 1);
          Grid_conectores.Cells[grid_conectores.ColumnByName['nomb_conector'].Index, var_fila] := '';
          Try
             (Sender as tPCPConnector).Control1 := '';
             (Sender as tPCPConnector).Control2 := '';
             (Sender as tPCPConnector).Refresh;
             (Sender as tPCPConnector).Free;
          Except
          End;
          doIniciarEdicionDataSet(myTabla_guardar);
       End;
    Except
    End;
end;

procedure Tfn1_plan_depe_procesos.FormCreate(Sender: TObject);
begin
    AbrirDataSet(quer_procesos);
    AbrirDataSet(myTabla_Guardar);
    doCargar(Sender);
  Insertar_Palabras(Self, WKLenguaje);
end;

procedure Tfn1_plan_depe_procesos.doSeleccionarContenedor(Sender: TObject);
begin
    if Not (Sender is TPCPContenedor) Then Exit;
    //Abrir la edición del contenedor
    {If (_fMDI.acti_n1_meto_procesos.Enabled) Then
    Begin
        if not ExisteVentana(tfn1_meto_procesos, False) Then
            AbrirModulo(tfn1_meto_procesos, fsMDIChild, tfn1_meto_procesos1).AbrirConsulta(StrToInt((Sender as TPCPContenedor).keyValue));
    End; }
    doIniciarEdicionDataSet(myTabla_Guardar);
end;

procedure Tfn1_plan_depe_procesos.doLimpiar(Sender: TObject);
var
    var_I : IntegeR;
begin
    //Limpiar grid
    grid_conectores.clear;
    grid_conectores.RowCount := 1;
    //Limpiar componentes del scroll
    With Scro do
    Begin
        For var_i := 1 to ControlCount do
            Controls[0].Destroy;
    End;
    doIniciarEdicionDataSet(myTabla_guardar);

end;

procedure Tfn1_plan_depe_procesos.doGuardar(Sender: TObject);
var
    var_fila    : IntegeR;
begin
    //Eliminar los existentes
    With quer_eliminar do
        ExecSQL;
    //Guardar las conexiones
    With grid_conectores, quer_guardar do
    Begin
        For var_fila := 1 to RowCount - 1 do
          if Cells[ColumnByName['nomb_conector'].Index, var_fila] <> '' Then
          Begin
              ParamByName('cons_proceso').Value := StrToInt(cells[ColumnByName['cons_origen'].Index, var_fila]);
              ParamByName('cons_proc_siguiente').Value := StrToInt(cells[ColumnByName['cons_destino'].Index, var_fila]);
              ExecSQL;
          End;
    End;
    //Actualizar los procesos
    With scro, quer_actu_procesos do
    Begin
        For var_fila := 1 to ControlCount do
            if (Controls[var_fila - 1] is TPCPContenedor) Then
              With (Controls[var_fila - 1] as TPCPContenedor) do
              Begin
                  ParamByName('cons_proceso').Value := StrToInt(keyValue);
                  ParamByName('arriba').Value := Top;
                  ParamByName('izquierda').Value := Left;
                  ParamByName('secu_nivel').Value := Nivel;
                  ExecSQL;
              End;
    End;
    myTabla_Guardar.Post;
end;

procedure Tfn1_plan_depe_procesos.doCargar(Sender: TObject);
var
    Contenedor  : TPCPContenedor;
    Conector    : TPCPConnector;
begin
    doLimpiar(Sender);
    //Crear los procesos
    With quer_sele_procesos do
    Begin
        if active then Close;
        Open;
        While not Eof do
        Begin
            //Crear el contenedor del proceso
            Contenedor := TPCPContenedor.Create(Self);
            With Contenedor do
            Begin
                Parent := Scro;
                Name := 'cont_'+ FieldByName('cons_proceso').asString;
                KeyValue := FieldByName('cons_proceso').asString;
                Caption := FieldByName('nomb_proceso').asString;
                Left := FieldByName('izquierda').asInteger;
                Top := FieldByName('arriba').asInteger;
                SetNivel(FieldByName('secu_nivel').asInteger);
                Width := 100;
                onDragDrop := doDragDrop;
                onDblClick := doSeleccionarContenedor;
            End;
            //Siguiente
            Next;
        End;
        Close;
    End;
    //Actualizar los conectores
    With grid_conectores, quer_sele_Conectores do
    Begin
         If Active then Close;
         Open;
         While not Eof do
         Begin
              Conector := tPCPConnector.Create(Self);
              With Conector do
              Begin
                  Parent := Scro;
                  Control1 := 'cont_'+ FieldByName('cons_proceso').asString;
                  Control2 := 'cont_'+ FieldByName('cons_proc_siguiente').asString;
                  Arrows.EndStyle := asArrow;
                  Arrows.EndSize := 10;
                  Arrows.BeginStyle := asDiamondArrow;
                  Arrows.BeginSize := 5;
                  Name := 'cone_'+
                    FieldByName('cons_proceso').asString +'_'+ FieldByName('cons_proc_siguiente').asString;
                  Caption := '';
                  onDblClick := doEliminarConector;
              End;
              //Agregarlo al grid
              With Grid_Conectores do
              Begin
                RowCount := RowCount + 1;
                Cells[ColumnByName['cons_origen'].Index, RowCount - 1] :=  FieldByName('cons_proceso').asString;
                Cells[ColumnByName['cons_destino'].Index, RowCount - 1] :=  FieldByName('cons_proc_siguiente').asString;
                Cells[ColumnByName['nomb_conector'].Index, RowCount - 1] :='cone_'+
                    FieldByName('cons_proceso').asString +'_'+ FieldByName('cons_proc_siguiente').asString;
              End;
              //Siguiente
              Next;
         End;
    End;
end;
{****************************************************************
Procedimiento   : acti_cancelarExecute
Objetivo        : Cancela la acción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 19 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_plan_depe_procesos.acti_cancelarExecute(Sender: TObject);
begin
  inherited;
  if (Confirmar(cosDeseaCancelar) = mrYes) Then
  Begin
    doCargar(Sender);
    myTabla_Guardar.Post;
  End;
end;
{****************************************************************
Procedimiento   : ActionList1Update
Objetivo        : Actualizar el estado de las acciones
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 19 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_plan_depe_procesos.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  acti_guardar.Enabled := (myTabla_guardar.State in [dsInsert, dsEdit]);
  acti_cancelar.Enabled := (myTabla_guardar.State in [dsInsert, dsEdit]); 
end;

procedure Tfn1_plan_depe_procesos.scroClick(Sender: TObject);
begin
  inherited;
  doIniciarEdicionDataSet(myTabla_guardar);
end;

end.

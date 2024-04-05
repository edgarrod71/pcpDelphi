unit UN1_Pers_Reingresos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, ExtCtrls,
  dxEditor, dxEdLib, dxDBELib, TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls,
  SoCtrls, SCLDBLabel, RxLookup, PCPLookUpComboEdit, SohoBtns, SCLButton,
  Boxes, PCPFrame, RxMemDS, dxTL, dxDBCtrl, dxDBGrid, ufra_maqu_ubicacion,
  dfsSplitter, dxDBTLCl, dxGrClms, TBXDkPanels, TBXButtonSCL,
  PCPProceso, SCLDBGrid, ufra_sele_pers_lista;

type
  TFN1_Pers_Reingresos1 = class(T_fvent_modal)
    PCPFrame2: TPCPFrame;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel68: TSCLDBLabel;
    SCLDBLabel40: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLButton27: TTBXButtonSCL;
    ENumero_Documento: TdxDBEdit;
    DBInicial: TdxDBDateEdit;
    DBObservaciones: TdxDBMemo;
    CBTipo_Documento: TPCPLookUpComboEdit;
    CBTipo_Movimiento: TPCPLookUpComboEdit;
    SCLButton3: TTBXButtonSCL;
    DSQTurnos: TDataSource;
    Panel1: TPanel;
    PCPFrame3: TPCPFrame;
    ffra_maqu_ubicacion2: Tffra_maqu_ubicacion;
    Panel3: TPanel;
    SCLDBLabel2: TSCLDBLabel;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    SCLButton2: TTBXButtonSCL;
    PCPFrame4: TPCPFrame;
    ffra_maqu_ubicacion1: Tffra_maqu_ubicacion;
    Panel2: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    SCLButton1: TTBXButtonSCL;
    Acti_Reingreso: TAction;
    TMovimiento: TRxMemoryData;
    DSMovimiento: TDataSource;
    TMovimientoCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    TMovimientoFECH_INICIAL: TDateTimeField;
    TMovimientoFECH_FINAL: TDateTimeField;
    TMovimientoCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    TMovimientoNUME_DOCUMENTO: TStringField;
    TMovimientoOBSERVACIONES: TStringField;
    TMovimientoCONS_UBIC_TIPO: TIntegerField;
    TMovimientoCONS_EMPRESA: TIntegerField;
    TMovimientoCONS_AREA: TIntegerField;
    TMovimientoCONS_PLANTA: TIntegerField;
    TMovimientoCONS_PLAN_LINEA: TIntegerField;
    TMovimientoCONS_LINE_SECCION: TIntegerField;
    TMovimientoCONS_BODEGA: TIntegerField;
    TMovimientoOTRA_UBICACION: TStringField;
    TMovimientoCONS_TURNO: TIntegerField;
    SPReingreso: TStoredProc;
    QTipo_Movimientos: TQuery;
    QTipo_MovimientosCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    QTipo_MovimientosCONS_FAMI_MOVIMIENTO: TIntegerField;
    QTipo_MovimientosCODI_PERS_TIPO_MOVIMIENTO: TStringField;
    QTipo_MovimientosNOMB_PERS_TIPO_MOVIMIENTO: TStringField;
    QTipo_MovimientosFECH_SISTEMA: TDateTimeField;
    QTipo_MovimientosUSUA_SISTEMA: TStringField;
    DSQTipo_Movimientos: TDataSource;
    DSQTipo_Documento_Movimiento: TDataSource;
    TBXItem1: TTBXItem;
    QTipo_Documento_Movimiento: TQuery;
    QTurnos: TQuery;
    QPersonal1: TQuery;
    DSQPersonal1: TDataSource;
    SCLDBLabel10: TSCLDBLabel;
    CBSolicita: TPCPLookUpComboEdit;
    SCLDBLabel11: TSCLDBLabel;
    CBAprobo: TPCPLookUpComboEdit;
    TMovimientoCONS_SOLICITA: TIntegerField;
    TMovimientoCONS_APROBO: TIntegerField;
    Panel4: TPanel;
    SCLDBLabel4: TSCLDBLabel;
    PCPLookUpComboEdit3: TPCPLookUpComboEdit;
    SCLButton4: TTBXButtonSCL;
    Panel5: TPanel;
    SCLDBLabel5: TSCLDBLabel;
    PCPLookUpComboEdit4: TPCPLookUpComboEdit;
    SCLButton7: TTBXButtonSCL;
    Panel6: TPanel;
    SCLDBLabel6: TSCLDBLabel;
    PCPLookUpComboEdit5: TPCPLookUpComboEdit;
    SCLButton8: TTBXButtonSCL;
    TMovimientoCONS_PERS_CARGO: TIntegerField;
    TMovimientoCONS_PERS_CENT_COSTO: TIntegerField;
    TMovimientoCONS_COST_GRUPO: TIntegerField;
    QCargos: TQuery;
    QCentro_Costos: TQuery;
    QSub_Centro_Costo: TQuery;
    DSQCargos: TDataSource;
    DSQCentro_Costos: TDataSource;
    DSQSub_Centro_Costo: TDataSource;
    quer_pers_solicitar: TQuery;
    data_pers_solicitar: TDataSource;
    quer_pers_aprobar: TQuery;
    data_pers_aprobar: TDataSource;
    fram_list_personal: Tffra_sele_pers_lista;
    SCLDBLabel65: TSCLDBLabel;
    DBFinal: TdxDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure ffra_maqu_ubicacion2comb_tipo_ubicacionChange(
      Sender: TObject);
    procedure TTemporalAfterScroll(DataSet: TDataSet);
    procedure Acti_ReingresoExecute(Sender: TObject);
    procedure ffra_maqu_ubicacion1comb_tipo_ubicacionChange(
      Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure fram_list_personalgrid_pers_disponibleChangeNode(
      Sender: TObject; OldNode, Node: TdxTreeListNode);
    procedure TMovimientoAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure TMovimientoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Reingresos1: TFN1_Pers_Reingresos1;

Const
  CosModificacionRealizada  		= 'El movimiento de reingreso fue realizado de manera exitosa.';

implementation

uses _cons_pcp, _func_varias, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 17 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Reingresos1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir tablas auxiliares
  AbrirDataSet(QTipo_Movimientos);
  AbrirDataSet(QTurnos);
  AbrirDataSet(TMovimiento);
  AbrirDataSet(QPersonal1);
  AbrirDataSet(quer_pers_solicitar);
  AbrirDataSet(quer_pers_aprobar);
  AbrirDataSet(QTipo_Documento_Movimiento);
  AbrirDataSet(QCargos);
  AbrirDataSet(QCentro_Costos);
  AbrirDataSet(QSub_Centro_Costo);
  InicializarFrame(ffra_maqu_ubicacion1);
  InicializarFrame(ffra_maqu_ubicacion2);
  InicializarFrame(fram_list_personal);
  //Inicializar controles DB
  InicializarCombo(CBTipo_Movimiento);
  //Si no hay personal, salir
  if fram_list_personal.quer_pers_disponible.RecordCount = 0 Then
  Begin
      EjecutarMensaje(Caption, cosErrorPersonalNoHayPersonalEnBaja, mtInformation, [mbOk], 0);
      Close;
  End;
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : ffra_maqu_ubicacion2comb_tipo_ubicacionChange
Objetivo        : Llenar los campos vacios depende del tipo de ubicación
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 17 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Reingresos1.ffra_maqu_ubicacion2comb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  ffra_maqu_ubicacion2.comb_tipo_ubicacionChange(Sender);
  If TMovimiento.State In [dsEdit, dsInsert] Then
    With ffra_maqu_ubicacion2 Do
    Begin
      If quer_maqu_ubicaciones.FieldByName('VER_EMPRESA').AsInteger = -1 Then
      Begin
        TMovimiento.FieldByName('CONS_EMPRESA').AsInteger := 0;
        TMovimiento.FieldByName('CONS_AREA').AsInteger := 0;
      End;
      If quer_maqu_ubicaciones.FieldByName('VER_PLANTA').AsInteger = -1 Then
      Begin
        TMovimiento.FieldByName('CONS_PLANTA').AsInteger := 0;
        TMovimiento.FieldByName('CONS_PLAN_LINEA').AsInteger := 0;
        TMovimiento.FieldByName('CONS_LINE_SECCION').AsInteger := 0;
      End;
      If quer_maqu_ubicaciones.FieldByName('VER_BODEGA').AsInteger = -1 Then
        TMovimiento.FieldByName('CONS_BODEGA').AsInteger := 0;
      If quer_maqu_ubicaciones.FieldByName('VER_OTRA_UBICACION').AsInteger = -1 Then
        TMovimiento.FieldByName('OTRA_UBICACION').AsString := '';
    End;
end;

{****************************************************************
Procedimiento   : TTemporalAfterScroll
Objetivo        : Mostrar la ubicación
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 17 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Reingresos1.TTemporalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ffra_maqu_ubicacion1.comb_tipo_ubicacion.OnChange(ffra_maqu_ubicacion1.comb_tipo_ubicacion);
  ffra_maqu_ubicacion2.comb_tipo_ubicacion.OnChange(ffra_maqu_ubicacion2.comb_tipo_ubicacion);
end;

{****************************************************************
Procedimiento   : Acti_ReingresoExecute
Objetivo        : Grabar los reingresos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 17 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Reingresos1.Acti_ReingresoExecute(Sender: TObject);
{Var
	I : Integer;}
begin
  inherited;
  //Verificar que Existan registros de Personal
  If fram_list_personal.quer_pers_disponible.RecordCount = 0 Then
  Begin
    EjecutarMensaje(cosErrorPersonalNoHayPersonalEnBaja, mtError, [mbOk], 0);
  	Exit;
  End;
  //Verificar que no falte información requerida para el movimiento
  If TMovimiento.State In [dsEdit, dsInsert] Then
          TMovimiento.Post;
  //Verificar que exista información del movimiento
  If TMovimiento.RecordCount = 0 Then
  Begin
    EjecutarMensaje(cosErrorPersonalNoHayPersonalEnBaja, mtError, [mbOk], 0);
    Exit;
  End;
  //Parametros de entrada del SP
  SPReingreso.Close;
  SPReingreso.ParamByName('PE_CONS_PERS_TIPO_MOVIMIENTO').AsInteger :=
      TMovimiento.Fieldbyname('CONS_PERS_TIPO_MOVIMIENTO').AsInteger;
  SPReingreso.ParamByName('PE_CONS_PERS_MOVI_TIPO_DOCU').AsInteger :=
      TMovimiento.Fieldbyname('CONS_PERS_MOVI_TIPO_DOCUMENTO').AsInteger;
  SPReingreso.ParamByName('PE_NUME_DOCUMENTO').AsString :=
      TMovimiento.Fieldbyname('NUME_DOCUMENTO').AsString;
  SPReingreso.ParamByName('PE_FECH_INICIAL').AsDateTime :=
      TMovimiento.Fieldbyname('FECH_INICIAL').AsDateTime;
  SPReingreso.ParamByName('PE_FECH_FINAL').Clear; //Sin fecha final
  if cbSolicita.EstaVacio Then
      SPReingreso.ParamByName('PE_CONS_SOLICITA').Value := Null
  Else
      SPReingreso.ParamByName('PE_CONS_SOLICITA').Value := cbSolicita.KeyValue;
  if cbAprobo.EstaVacio Then
      SPReingreso.ParamByName('PE_CONS_APROBO').Value := Null
  Else
      SPReingreso.ParamByName('PE_CONS_APROBO').Value := cbAprobo.KeyValue;
  SPReingreso.ParamByName('PE_OBSERVACIONES').AsString :=
      TMovimiento.Fieldbyname('OBSERVACIONES').AsString;
  SPReingreso.ParamByName('PE_CONS_PERSONAL').AsInteger :=
      fram_list_personal.quer_pers_disponible.FieldByName('CONS_PERSONAL').AsInteger;
  //Si la ubicación está vacía, asignar la anterior
  If TMovimiento.FieldByName('CONS_UBIC_TIPO').AsString = '' Then
  Begin
      SPReingreso.ParamByName('PE_CONS_UBIC_TIPO').AsInteger :=
        fram_list_personal.quer_pers_disponible.FieldByName('CONS_UBIC_TIPO').AsInteger;
      SPReingreso.ParamByName('PE_CONS_EMPRESA').AsInteger :=
        fram_list_personal.quer_pers_disponible.FieldByName('CONS_EMPRESA').AsInteger;
      SPReingreso.ParamByName('PE_CONS_AREA').AsInteger :=
        fram_list_personal.quer_pers_disponible.FieldByName('CONS_AREA').AsInteger;
      SPReingreso.ParamByName('PE_CONS_PLANTA').AsInteger :=
        fram_list_personal.quer_pers_disponible.FieldByName('CONS_PLANTA').AsInteger;
      SPReingreso.ParamByName('PE_CONS_PLAN_LINEA').AsInteger :=
        fram_list_personal.quer_pers_disponible.FieldByName('CONS_PLAN_LINEA').AsInteger;
      SPReingreso.ParamByName('PE_CONS_LINE_SECCION').AsInteger :=
        fram_list_personal.quer_pers_disponible.FieldByName('CONS_LINE_SECCION').AsInteger;
      SPReingreso.ParamByName('PE_CONS_BODEGA').AsInteger :=
        fram_list_personal.quer_pers_disponible.FieldByName('CONS_BODEGA').AsInteger;
      SPReingreso.ParamByName('PE_OTRA_UBICACION').AsString :=
        fram_list_personal.quer_pers_disponible.FieldByName('OTRA_UBICACION').AsString;
  End
  Else
  //Asignar la ubicación indicada
  Begin
    SPReingreso.ParamByName('PE_CONS_UBIC_TIPO').AsInteger :=
      TMovimiento.FieldByName('CONS_UBIC_TIPO').AsInteger;
    SPReingreso.ParamByName('PE_CONS_EMPRESA').AsInteger :=
      TMovimiento.FieldByName('CONS_EMPRESA').AsInteger;
    SPReingreso.ParamByName('PE_CONS_AREA').AsInteger :=
      TMovimiento.FieldByName('CONS_AREA').AsInteger;
    SPReingreso.ParamByName('PE_CONS_PLANTA').AsInteger :=
      TMovimiento.FieldByName('CONS_PLANTA').AsInteger;
    SPReingreso.ParamByName('PE_CONS_PLAN_LINEA').AsInteger :=
      TMovimiento.FieldByName('CONS_PLAN_LINEA').AsInteger;
    SPReingreso.ParamByName('PE_CONS_LINE_SECCION').AsInteger :=
      TMovimiento.FieldByName('CONS_LINE_SECCION').AsInteger;
    SPReingreso.ParamByName('PE_CONS_BODEGA').AsInteger :=
      TMovimiento.FieldByName('CONS_BODEGA').AsInteger;
    SPReingreso.ParamByName('PE_OTRA_UBICACION').AsString :=
      TMovimiento.FieldByName('OTRA_UBICACION').AsString;
  End;
  If TMovimiento.FieldByName('CONS_TURNO').AsString = '' Then
    SPReingreso.ParamByName('PE_CONS_TURNO').AsInteger :=
      fram_list_personal.quer_pers_disponible.FieldByName('CONS_TURNO').AsInteger
  Else
    SPReingreso.ParamByName('PE_CONS_TURNO').AsInteger :=
            TMovimiento.FieldByName('CONS_TURNO').AsInteger;
  If TMovimiento.FieldByName('CONS_PERS_CARGO').AsString = '' Then
    SPReingreso.ParamByName('PE_CONS_PERS_CARGO').AsInteger :=
      fram_list_personal.quer_pers_disponible.FieldByName('CONS_PERS_CARGO').AsInteger
  Else
    SPReingreso.ParamByName('PE_CONS_PERS_CARGO').AsInteger :=
            TMovimiento.FieldByName('CONS_PERS_CARGO').AsInteger;
  If TMovimiento.FieldByName('CONS_PERS_CENT_COSTO').AsString = '' Then
    SPReingreso.ParamByName('PE_CONS_PERS_CENT_COSTO').AsInteger :=
      fram_list_personal.quer_pers_disponible.FieldByName('CONS_PERS_CENT_COSTO').AsInteger
  Else
    SPReingreso.ParamByName('PE_CONS_PERS_CENT_COSTO').AsInteger :=
            TMovimiento.FieldByName('CONS_PERS_CENT_COSTO').AsInteger;
  If TMovimiento.FieldByName('CONS_COST_GRUPO').AsString = '' Then
    SPReingreso.ParamByName('PE_CONS_COST_GRUPO').AsInteger :=
      fram_list_personal.quer_pers_disponible.FieldByName('CONS_COST_GRUPO').AsInteger
  Else
    SPReingreso.ParamByName('PE_CONS_COST_GRUPO').AsInteger :=
      TMovimiento.FieldByName('CONS_COST_GRUPO').AsInteger;
  //Ejecutar
  SPReingreso.ExecProc;
  SPReingreso.Close;
  //Mostrar el mensaje
  EjecutarMensaje(CosModificacionRealizada, mtInformation, [mbOk], 0);
  NecesitaActualizar := True;
  RefreshDataSet(fram_list_personal.quer_pers_disponible);
end;

{****************************************************************
Procedimiento   : ffra_maqu_ubicacion1comb_tipo_ubicacionChange
Objetivo        : Hacer efectivo el onChange del combo de
									tipo de ubicación
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Reingresos1.ffra_maqu_ubicacion1comb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  ffra_maqu_ubicacion1.comb_tipo_ubicacionChange(Sender);
end;
{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Actualizar los controles al activar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Pers_Reingresos1.FormActivate(Sender: TObject);
begin
  inherited;
  padr_acti_modificar.Enabled := False;
  padr_acti_eliminar.Enabled := False;
  padr_acti_modificar.Visible := False;
  padr_acti_eliminar.Visible := False;
end;
{****************************************************************
Procedimiento   : fram_list_personalgrid_pers_disponibleChangeNode
Objetivo        : Actualizar la información del personal seleccionado
                  cuando cambie la selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Pers_Reingresos1.fram_list_personalgrid_pers_disponibleChangeNode(
  Sender: TObject; OldNode, Node: TdxTreeListNode);
begin
  inherited;
  if (Node = Nil) Then Exit;
  //Actualizar la ubicación
  ffra_maqu_ubicacion1comb_tipo_ubicacionChange(Sender);
  ffra_maqu_ubicacion2comb_tipo_ubicacionChange(Sender);
end;
{****************************************************************
Procedimiento   : TMovimientoAfterInsert
Objetivo        : Valores predeterminados del movimiento de traslado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Pers_Reingresos1.TMovimientoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  With TMovimiento do
  Begin
      FieldByName('fech_inicial').Value := NowDate ;
  End;
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles al mostrar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Pers_Reingresos1.FormShow(Sender: TObject);
begin
  inherited;
  //Actualizar la ubicación
  if (fram_list_personal.quer_pers_disponible.Active) and
     (fram_list_personal.quer_pers_disponible.RecordCount > 0) Then
  ffra_maqu_ubicacion1comb_tipo_ubicacionChange(Sender);
  ffra_maqu_ubicacion2comb_tipo_ubicacionChange(Sender);
  Update;
end;
{****************************************************************
Procedimiento   : TMovimientoBeforePost
Objetivo        : Validar los datos antes de guardar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Jul-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure TFN1_Pers_Reingresos1.TMovimientoBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidarDatosDataSet(TMovimiento);
end;

end.

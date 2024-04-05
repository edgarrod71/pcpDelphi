unit UN1_Pers_Traslados1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, ExtCtrls,
  dxEditor, dxEdLib, dxDBELib, TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls,
  SoCtrls, SCLDBLabel, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit,
  Boxes, PCPFrame, RxMemDS, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dfsSplitter, ufra_maqu_ubicacion, TBXDkPanels, TBXButtonSCL,
  PCPProceso;

type
  TFN1_Pers_Traslados1 = class(T_fvent_modal)
    Tabla_VentanaCONS_PERS_MOVIMIENTO: TIntegerField;
    Tabla_VentanaCONS_PERSONAL: TIntegerField;
    Tabla_VentanaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    Tabla_VentanaFECH_INICIAL: TDateTimeField;
    Tabla_VentanaFECH_FINAL: TDateTimeField;
    Tabla_VentanaNUME_DOCUMENTO: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    PCPFrame2: TPCPFrame;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel68: TSCLDBLabel;
    SCLDBLabel65: TSCLDBLabel;
    SCLButton27: TTBXButtonSCL;
    ENumero_Documento: TdxDBEdit;
    DBInicial: TdxDBDateEdit;
    DBObservaciones: TdxDBEdit;
    DBFinal: TdxDBDateEdit;
    TTemporal: TRxMemoryData;
    DSTemporal: TDataSource;
    TTemporalCONS_PERSONAL: TIntegerField;
    TTemporalNOMB_COMPLETO: TStringField;
    TTemporalCONS_UBIC_TIPO: TIntegerField;
    TTemporalCONS_EMPRESA: TIntegerField;
    TTemporalCONS_AREA: TIntegerField;
    TTemporalCONS_PLANTA: TIntegerField;
    TTemporalCONS_PLAN_LINEA: TIntegerField;
    TTemporalCONS_LINE_SECCION: TIntegerField;
    TTemporalCONS_BODEGA: TIntegerField;
    TTemporalOTRA_UBICACION: TStringField;
    TTemporalCONS_TURNO: TIntegerField;
    PCPFrame1: TPCPFrame;
    DBPersonal: TdxDBGrid;
    TTemporalCODI_PERSONAL: TStringField;
    Panel1: TPanel;
    PCPFrame3: TPCPFrame;
    PCPFrame4: TPCPFrame;
    dfsSplitter2: TdfsSplitter;
    ffra_maqu_ubicacion1: Tffra_maqu_ubicacion;
    ffra_maqu_ubicacion2: Tffra_maqu_ubicacion;
    Panel3: TPanel;
    SCLDBLabel2: TSCLDBLabel;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    SCLButton2: TTBXButtonSCL;
    DSQTurnos: TDataSource;
    DSQTipo_Documento_Movimiento: TDataSource;
    dfsSplitter3: TdfsSplitter;
    Panel2: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    SCLButton1: TTBXButtonSCL;
    Acti_Traslados: TAction;
    SPTraslados: TStoredProc;
    TBXItem1: TTBXItem;
    SCLDBLabel40: TSCLDBLabel;
    CBTipo_Documento: TPCPLookUpComboEdit;
    SCLDBLabel3: TSCLDBLabel;
    CBTipo_Movimiento: TPCPLookUpComboEdit;
    SCLButton3: TTBXButtonSCL;
    QTipo_Movimientos: TQuery;
    DSQTipo_Movimientos: TDataSource;
    QTipo_MovimientosCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    QTipo_MovimientosCONS_FAMI_MOVIMIENTO: TIntegerField;
    QTipo_MovimientosCODI_PERS_TIPO_MOVIMIENTO: TStringField;
    QTipo_MovimientosNOMB_PERS_TIPO_MOVIMIENTO: TStringField;
    QTipo_MovimientosFECH_SISTEMA: TDateTimeField;
    QTipo_MovimientosUSUA_SISTEMA: TStringField;
    Tabla_VentanaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    TMovimiento: TRxMemoryData;
    TMovimientoCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    TMovimientoFECH_INICIAL: TDateTimeField;
    TMovimientoFECH_FINAL: TDateTimeField;
    TMovimientoCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    TMovimientoNUME_DOCUMENTO: TStringField;
    TMovimientoOBSERVACIONES: TStringField;
    DSMovimiento: TDataSource;
    TMovimientoCONS_UBIC_TIPO: TIntegerField;
    TMovimientoCONS_EMPRESA: TIntegerField;
    TMovimientoCONS_AREA: TIntegerField;
    TMovimientoCONS_PLANTA: TIntegerField;
    TMovimientoCONS_PLAN_LINEA: TIntegerField;
    TMovimientoCONS_LINE_SECCION: TIntegerField;
    TMovimientoCONS_BODEGA: TIntegerField;
    TMovimientoOTRA_UBICACION: TStringField;
    TMovimientoCONS_TURNO: TIntegerField;
    DBPersonalCONS_PERSONAL: TdxDBGridMaskColumn;
    DBPersonalCODI_PERSONAL: TdxDBGridMaskColumn;
    DBPersonalNOMB_COMPLETO: TdxDBGridMaskColumn;
    DBPersonalCONS_UBIC_TIPO: TdxDBGridMaskColumn;
    DBPersonalCONS_EMPRESA: TdxDBGridMaskColumn;
    DBPersonalCONS_AREA: TdxDBGridMaskColumn;
    DBPersonalCONS_PLANTA: TdxDBGridMaskColumn;
    DBPersonalCONS_PLAN_LINEA: TdxDBGridMaskColumn;
    DBPersonalCONS_LINE_SECCION: TdxDBGridMaskColumn;
    DBPersonalCONS_BODEGA: TdxDBGridMaskColumn;
    DBPersonalOTRA_UBICACION: TdxDBGridMaskColumn;
    DBPersonalCONS_TURNO: TdxDBGridMaskColumn;
    QTipo_Documento_Movimiento: TQuery;
    QTurnos: TQuery;
    QPersonal: TQuery;
    DSQPersonal: TDataSource;
    SCLDBLabel10: TSCLDBLabel;
    CBSolicita: TPCPLookUpComboEdit;
    SCLButton5: TTBXButtonSCL;
    SCLDBLabel11: TSCLDBLabel;
    CBAprobo: TPCPLookUpComboEdit;
    SCLButton6: TTBXButtonSCL;
    TMovimientoCONS_SOLICITA: TIntegerField;
    TMovimientoCONS_APROBO: TIntegerField;
    QCentro_Costos: TQuery;
    QSub_Centros: TQuery;
    DSQCentro_Costos: TDataSource;
    DSQSub_Centros: TDataSource;
    QCargos: TQuery;
    DSQCargos: TDataSource;
    SCLDBLabel16: TSCLDBLabel;
    PCPLookUpComboEdit10: TPCPLookUpComboEdit;
    SCLButton4: TTBXButtonSCL;
    SCLDBLabel44: TSCLDBLabel;
    PCPLookUpComboEdit6: TPCPLookUpComboEdit;
    SCLButton7: TTBXButtonSCL;
    SCLDBLabel45: TSCLDBLabel;
    PCPLookUpComboEdit7: TPCPLookUpComboEdit;
    SCLButton8: TTBXButtonSCL;
    TMovimientoCONS_PERS_CARGO: TIntegerField;
    TMovimientoCONS_PERS_CENT_COSTO: TIntegerField;
    TMovimientoCONS_COST_GRUPO: TIntegerField;
    TTemporalCONS_PERS_CARGO: TIntegerField;
    TTemporalCONS_PERS_CENT_COSTO: TIntegerField;
    TTemporalCONS_COST_GRUPO: TIntegerField;
    DBPersonalColumn13: TdxDBGridMaskColumn;
    DBPersonalColumn14: TdxDBGridMaskColumn;
    DBPersonalColumn15: TdxDBGridMaskColumn;
    procedure ffra_maqu_ubicacion2comb_tipo_ubicacionChange(
      Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TTemporalAfterScroll(DataSet: TDataSet);
    procedure Acti_TrasladosExecute(Sender: TObject);
    procedure TMovimientoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Traslados1: TFN1_Pers_Traslados1;

Const
  CosModificacionRealizada  = 'Traslados realizado con éxito';

implementation

uses _func_varias, _cons_pcp;

{$R *.DFM}

{****************************************************************
Procedimiento   : ffra_maqu_ubicacion2comb_tipo_ubicacionChange
Objetivo        : Llenar los campos vacios depende del tipo de ubicación
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 17 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Traslados1.ffra_maqu_ubicacion2comb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  ffra_maqu_ubicacion2.comb_tipo_ubicacionChange(Sender);

  //Llenar los campos vacios con 0 que es el registro No Asignado
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
Procedimiento   : FormCreate
Objetivo        : Abrir las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 17 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Traslados1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir las tablas auxiliares
  AbrirDataSet(QTipo_Documento_Movimiento);
  AbrirDataSet(QTurnos);
  AbrirDataSet(QTipo_Movimientos);
  AbrirDataSet(QPersonal);

  AbrirDataSet(QCentro_Costos);
  AbrirDataSet(QSub_Centros);
  AbrirDataSet(QCargos);

  TTemporal.Open;
  TMovimiento.Open;
end;

{****************************************************************
Procedimiento   : TTemporalAfterScroll
Objetivo        : Muestro la ubicación del personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Traslados1.TTemporalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ffra_maqu_ubicacion1.comb_tipo_ubicacion.OnChange(ffra_maqu_ubicacion1.comb_tipo_ubicacion);
  ffra_maqu_ubicacion2.comb_tipo_ubicacion.OnChange(ffra_maqu_ubicacion2.comb_tipo_ubicacion);
end;

{****************************************************************
Procedimiento   : Acti_TrasladosExecute
Objetivo        : Ingresar los traslados
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 17 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Traslados1.Acti_TrasladosExecute(Sender: TObject);
Var
  I : Integer;
begin
  inherited;
	//Verificar que Existan registros de Personal
	If TTemporal.RecordCount = 0 Then
	Begin
    EjecutarMensaje(CosErrorPersonal, mtError, [mbOk], 0);
  	Exit;
  End;
	//Verificar que existan personal seleccionado
  If DBPersonal.SelectedCount = 0 Then
  Begin
    EjecutarMensaje(CosErrorPersonalSeleccionado, mtError, [mbOk], 0);
    Exit;
  End;
	//Verificar que no falte información requerida para el movimiento
	If TMovimiento.State In [dsEdit, dsInsert] Then
		TMovimiento.Post;
	//Verificar que exista información del movimiento
  If TMovimiento.RecordCount = 0 Then
  Begin
    EjecutarMensaje(CosErrorDatosMovimiento, mtError, [mbOk], 0);
    Exit;
  End;

	//Dehabilitar los controles de la tabla temporal
  TTemporal.DisableControls;
	For I := 0 To DBPersonal.Count - 1 Do
  	If DBPersonal.Items[I].Selected Then
    Begin
      SPTraslados.Close;
      SPTraslados.ParamByName('PE_CONS_PERS_TIPO_MOVIMIENTO').AsInteger :=
        TMovimiento.Fieldbyname('CONS_PERS_TIPO_MOVIMIENTO').AsInteger;
      SPTraslados.ParamByName('PE_CONS_PERS_MOVI_TIPO_DOCU').AsInteger :=
        TMovimiento.Fieldbyname('CONS_PERS_MOVI_TIPO_DOCUMENTO').AsInteger;
      SPTraslados.ParamByName('PE_NUME_DOCUMENTO').AsString :=
        TMovimiento.Fieldbyname('NUME_DOCUMENTO').AsString;
      SPTraslados.ParamByName('PE_FECH_INICIAL').AsDateTime :=
        TMovimiento.Fieldbyname('FECH_INICIAL').AsDateTime;
      SPTraslados.ParamByName('PE_FECH_FINAL').AsDateTime :=
        TMovimiento.Fieldbyname('FECH_FINAL').AsDateTime;
      SPTraslados.ParamByName('PE_CONS_SOLICITA').Value := Null;
      SPTraslados.ParamByName('PE_CONS_APROBO').Value := Null;
			If TMovimiento.Fieldbyname('CONS_SOLICITA').AsString <> '' Then
        SPTraslados.ParamByName('PE_CONS_SOLICITA').AsInteger :=
          TMovimiento.Fieldbyname('CONS_SOLICITA').AsInteger;
			If TMovimiento.Fieldbyname('CONS_APROBO').AsString <> '' Then
        SPTraslados.ParamByName('PE_CONS_APROBO').AsInteger :=
          TMovimiento.Fieldbyname('CONS_APROBO').AsInteger;
      SPTraslados.ParamByName('PE_OBSERVACIONES').AsString :=
        TMovimiento.Fieldbyname('OBSERVACIONES').AsString;
      SPTraslados.ParamByName('PE_CONS_PERSONAL').AsInteger :=
        DBPersonal.Items[I].Values[0];
      SPTraslados.ParamByName('PE_CONS_UBIC_TIPO').AsInteger :=
        TMovimiento.Fieldbyname('CONS_UBIC_TIPO').AsInteger;
      SPTraslados.ParamByName('PE_CONS_EMPRESA').AsInteger :=
        TMovimiento.Fieldbyname('CONS_EMPRESA').AsInteger;
      SPTraslados.ParamByName('PE_CONS_AREA').AsInteger :=
        TMovimiento.Fieldbyname('CONS_AREA').AsInteger;
      SPTraslados.ParamByName('PE_CONS_PLANTA').AsInteger :=
        TMovimiento.Fieldbyname('CONS_PLANTA').AsInteger;
      SPTraslados.ParamByName('PE_CONS_PLAN_LINEA').AsInteger :=
        TMovimiento.Fieldbyname('CONS_PLAN_LINEA').AsInteger;
      SPTraslados.ParamByName('PE_CONS_LINE_SECCION').AsInteger :=
        TMovimiento.Fieldbyname('CONS_LINE_SECCION').AsInteger;
      SPTraslados.ParamByName('PE_CONS_BODEGA').AsInteger :=
        TMovimiento.Fieldbyname('CONS_BODEGA').AsInteger;
      SPTraslados.ParamByName('PE_OTRA_UBICACION').AsString :=
        TMovimiento.Fieldbyname('OTRA_UBICACION').AsString;
      If TMovimiento.Fieldbyname('CONS_TURNO').AsString <> '' Then
        SPTraslados.ParamByName('PE_CONS_TURNO').AsInteger :=
          TMovimiento.Fieldbyname('CONS_TURNO').AsInteger
      Else
        SPTraslados.ParamByName('PE_CONS_TURNO').AsInteger :=
          DBPersonal.Items[I].Values[11];
      If TMovimiento.Fieldbyname('CONS_PERS_CARGO').AsString <> '' Then
        SPTraslados.ParamByName('PE_CONS_PERS_CARGO').AsInteger :=
          TMovimiento.Fieldbyname('CONS_PERS_CARGO').AsInteger
      Else
        SPTraslados.ParamByName('PE_CONS_PERS_CARGO').AsInteger :=
          DBPersonal.Items[I].Values[12];
      If TMovimiento.Fieldbyname('CONS_PERS_CENT_COSTO').AsString <> '' Then
        SPTraslados.ParamByName('PE_CONS_PERS_CENT_COSTO').AsInteger :=
          TMovimiento.Fieldbyname('CONS_PERS_CENT_COSTO').AsInteger
      Else
        SPTraslados.ParamByName('PE_CONS_PERS_CENT_COSTO').AsInteger :=
          DBPersonal.Items[I].Values[13];
      If TMovimiento.Fieldbyname('CONS_COST_GRUPO').AsString <> '' Then
        SPTraslados.ParamByName('PE_CONS_COST_GRUPO').AsInteger :=
          TMovimiento.Fieldbyname('CONS_COST_GRUPO').AsInteger
      Else
        SPTraslados.ParamByName('PE_CONS_COST_GRUPO').AsInteger :=
          DBPersonal.Items[I].Values[14];
      SPTraslados.ExecProc;
      SPTraslados.Close;
			//Elimino el personal de la tabla temporal
      If TTemporal.Locate('CONS_PERSONAL', DBPersonal.Items[I].Values[0], []) Then
      	TTemporal.Delete;
	  End;
  //Habilito los controles de la tabla temporal
  TTemporal.EnableControls;
  EjecutarMensaje(CosModificacionRealizada, mtInformation, [mbOk], 0);
	//Cierro la forma
  If TTemporal.RecordCount = 0 Then
	  Close;
end;

{****************************************************************
Procedimiento   : TMovimientoBeforePost
Objetivo        : Verificar que no falte ningún campo requerido
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 09 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Traslados1.TMovimientoBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidarDatosDataSet(TMovimiento);
end;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Habilitar la variable NecesitaActualizar para que
								  actualice la consulta del child
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 09 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Traslados1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  NecesitaActualizar := True;
end;

end.

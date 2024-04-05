unit un1_maqu_traslados1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, dxExEdtr, dxCntner, Db, DBTables, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ExtCtrls, dxEditor, dxEdLib, dxDBELib,
  TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls, SoCtrls, SCLDBLabel,
  AdvPanel, RxLookup, PCPLookUpComboEdit, SohoBtns, SCLButton,
  ufra_fotografiaDB,  ufra_maqu_ubicacion, PictureContainer,
  DBCtrls, dfsSplitter, Boxes, PCPFrame, RxMemDS, dxPageControl,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, TBXDkPanels, TBXButtonSCL,
  PCPProceso;

type
  Tfn1_maqu_traslados1 = class(T_fvent_modal)
    TBXItem2: TTBXItem;
    Tabla_VentanaCONS_RECU_MOVIMIENTO: TIntegerField;
    Tabla_VentanaCONS_RECU_TIPO_MOVIMIENTO: TIntegerField;
    Tabla_VentanaCONS_RECURSO: TIntegerField;
    Tabla_VentanaCONS_TIPO_DOCUMENTO: TIntegerField;
    Tabla_VentanaNUME_DOCUMENTO: TStringField;
    Tabla_VentanaCONS_SOLICITA: TIntegerField;
    Tabla_VentanaCONS_ENTREGA: TIntegerField;
    Tabla_VentanaCONS_RECIBE: TIntegerField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaFECH_INICIAL: TDateTimeField;
    Tabla_VentanaFECH_FINAL: TDateTimeField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    DSQTipo_Documento_Movimiento: TDataSource;
    DSQPersonal: TDataSource;
    FMovimiento: TPCPFrame;
    SCLDBLabel40: TSCLDBLabel;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel65: TSCLDBLabel;
    SCLDBLabel30: TSCLDBLabel;
    SCLDBLabel31: TSCLDBLabel;
    SCLDBLabel33: TSCLDBLabel;
    SCLDBLabel68: TSCLDBLabel;
    CBTipo_Documento: TPCPLookUpComboEdit;
    SCLButton27: TTBXButtonSCL;
    DBNumero_Documento: TdxDBEdit;
    DBFecha_Inicial: TdxDBDateEdit;
    DBObservaciones: TdxDBEdit;
    DBFecha_Final: TdxDBDateEdit;
    DBSolicitado: TPCPLookUpComboEdit;
    SCLButton6: TTBXButtonSCL;
    DBEntregado: TPCPLookUpComboEdit;
    SCLButton7: TTBXButtonSCL;
    DBRecibido: TPCPLookUpComboEdit;
    SCLButton8: TTBXButtonSCL;
    TRecursos_Temporal: TRxMemoryData;
    DSRecursos_Temporal: TDataSource;
    TRecursos_TemporalCODI_RECURSO: TStringField;
    TRecursos_TemporalCODI_INTE_RECURSO: TStringField;
    TRecursos_TemporalNOMB_RECU_GRUPO: TStringField;
    TRecursos_TemporalNOMB_RECU_TIPO: TStringField;
    TRecursos_TemporalNOMB_RECU_FAMILIA: TStringField;
    TRecursos_TemporalNOMB_RECU_MARCA: TStringField;
    TRecursos_TemporalNUME_SERIE: TStringField;
    TRecursos_TemporalFECH_INICIAL: TDateTimeField;
    TRecursos_TemporalCONS_RECURSO: TIntegerField;
    PCPFrame1: TPCPFrame;
    DBPersonal: TdxDBGrid;
    Acti_Modificar_Traslado: TAction;
    FUbicacion: TPCPFrame;
    ffra_maqu_ubicacion1: Tffra_maqu_ubicacion;
    TRecursos_TemporalCODI_EMPRESA: TStringField;
    TRecursos_TemporalNOMB_EMPRESA: TStringField;
    TRecursos_TemporalCODI_AREA: TStringField;
    TRecursos_TemporalNOMB_AREA: TStringField;
    TRecursos_TemporalCODI_PLANTA: TStringField;
    TRecursos_TemporalNOMB_PLANTA: TStringField;
    TRecursos_TemporalCODI_LINEA: TStringField;
    TRecursos_TemporalNOMB_LINEA: TStringField;
    TRecursos_TemporalCODI_SECCION: TStringField;
    TRecursos_TemporalNOMB_SECCION: TStringField;
    TRecursos_TemporalCODI_BODEGA: TStringField;
    TRecursos_TemporalNOMB_BODEGA: TStringField;
    TRecursos_TemporalOTRA_UBICACION: TStringField;
    DBPersonalCONS_RECURSO: TdxDBGridMaskColumn;
    DBPersonalCODI_RECURSO: TdxDBGridMaskColumn;
    DBPersonalCODI_INTE_RECURSO: TdxDBGridMaskColumn;
    DBPersonalNOMB_RECU_GRUPO: TdxDBGridMaskColumn;
    DBPersonalNOMB_RECU_TIPO: TdxDBGridMaskColumn;
    DBPersonalNOMB_RECU_FAMILIA: TdxDBGridMaskColumn;
    DBPersonalNOMB_RECU_MARCA: TdxDBGridMaskColumn;
    DBPersonalNUME_SERIE: TdxDBGridMaskColumn;
    DBPersonalFECH_INICIAL: TdxDBGridDateColumn;
    DBPersonalCODI_EMPRESA: TdxDBGridMaskColumn;
    DBPersonalNOMB_EMPRESA: TdxDBGridMaskColumn;
    DBPersonalCODI_AREA: TdxDBGridMaskColumn;
    DBPersonalNOMB_AREA: TdxDBGridMaskColumn;
    DBPersonalCODI_PLANTA: TdxDBGridMaskColumn;
    DBPersonalNOMB_PLANTA: TdxDBGridMaskColumn;
    DBPersonalCODI_LINEA: TdxDBGridMaskColumn;
    DBPersonalNOMB_LINEA: TdxDBGridMaskColumn;
    DBPersonalCODI_SECCION: TdxDBGridMaskColumn;
    DBPersonalNOMB_SECCION: TdxDBGridMaskColumn;
    DBPersonalCODI_BODEGA: TdxDBGridMaskColumn;
    DBPersonalNOMB_BODEGA: TdxDBGridMaskColumn;
    DBPersonalOTRA_UBICACION: TdxDBGridMaskColumn;
    TMovimientos: TTable;
    DSMovimientos: TDataSource;
    TBXItem1: TTBXItem;
    SPModificar_Ubicacion: TStoredProc;
    TMovimiento: TRxMemoryData;
    DSMovimiento: TDataSource;
    TMovimientoCONS_TIPO_DOCUMENTO: TIntegerField;
    TMovimientoNUME_DOCUMENTO: TStringField;
    TMovimientoCONS_SOLICITA: TIntegerField;
    TMovimientoCONS_ENTREGA: TIntegerField;
    TMovimientoCONS_RECIBE: TIntegerField;
    TMovimientoFECH_INICIAL: TDateTimeField;
    TMovimientoFECH_FINAL: TDateTimeField;
    TMovimientoOBSERVACIONES: TStringField;
    TMovimientoCONS_UBIC_TIPO: TIntegerField;
    TMovimientoCONS_EMPRESA: TIntegerField;
    TMovimientoCONS_AREA: TIntegerField;
    TMovimientoCONS_PLANTA: TIntegerField;
    TMovimientoCONS_BODEGA: TIntegerField;
    TMovimientoCONS_PLAN_LINEA: TIntegerField;
    TMovimientoCONS_LINE_SECCION: TIntegerField;
    TMovimientoOTRA_UBICACION: TStringField;
    QTipo_Documento_Movimiento: TQuery;
    QPersonal: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure ffra_maqu_ubicacion1comb_tipo_ubicacionChange(
      Sender: TObject);
    procedure Acti_Modificar_TrasladoExecute(Sender: TObject);
    procedure TMovimientoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_traslados1: Tfn1_maqu_traslados1;

Const
	CosModificacionRealizada = 'Modificación de ubicación realizada con Exito';

implementation
uses _func_varias, _cons_pcp, _Traductor;
{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 7 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_traslados1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QTipo_Documento_Movimiento);
  AbrirDataSet(QPersonal);

  TRecursos_Temporal.Open;
  TMovimiento.Open;
  
  InicializarFrame(ffra_maqu_ubicacion1);
  ffra_maqu_ubicacion1.comb_tipo_ubicacion.OnChange(Sender);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 7 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_traslados1.ffra_maqu_ubicacion1comb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  ffra_maqu_ubicacion1.comb_tipo_ubicacionChange(Sender);
	FUbicacion.Height := ffra_maqu_ubicacion1.Height + 24;
end;

{****************************************************************
Procedimiento   : Acti_Modificar_TrasladoExecute
Objetivo        : Ejecutar traslados
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 7 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_traslados1.Acti_Modificar_TrasladoExecute(
  Sender: TObject);
Var
	I : Integer;
begin
  inherited;
	//Verificar que Existan registros de Personal
	If TRecursos_Temporal.RecordCount = 0 Then
	Begin
    EjecutarMensaje(CosErrorRecurso, mtError, [mbOk], 0);
  	Exit;
  End;
	//Verificar que existan personal seleccionado
  If DBPersonal.SelectedCount = 0 Then
  Begin
    EjecutarMensaje(CosErrorRecursoSeleccionado, mtError, [mbOk], 0);
    Exit;
  End;
	//Guardar la información del movimiento en la tabla temporal
	If TMovimiento.State In [dsEdit, dsInsert] Then
    TMovimiento.Post;
	//Verificar que exista información del movimiento
  If TMovimiento.RecordCount = 0 Then
  Begin
    EjecutarMensaje(CosErrorDatosMovimiento, mtError, [mbOk], 0);
    Exit;
  End;

  //Deshabilitar los controles de la tabla temporal
  TRecursos_Temporal.DisableControls;
	For I := 0 To DBPersonal.Count - 1 Do
  	If DBPersonal.Items[I].Selected Then
		Begin
			SPModificar_Ubicacion.Close;
      SPModificar_Ubicacion.ParamByName('PE_CONS_RECU_TIPO_MOVIMIENTO').AsInteger := 2;
      SPModificar_Ubicacion.ParamByName('PE_CONS_RECURSO').AsInteger :=
        DBPersonal.Items[I].Values[0];
      SPModificar_Ubicacion.ParamByName('PE_CONS_TIPO_DOCUMENTO').AsInteger :=
        TMovimiento.FieldByName('CONS_TIPO_DOCUMENTO').AsInteger;
      SPModificar_Ubicacion.ParamByName('PE_NUME_DOCUMENTO').AsString :=
        TMovimiento.FieldByName('NUME_DOCUMENTO').AsString;
      If TMovimiento.FieldByName('CONS_SOLICITA').AsInteger > 0 Then
        SPModificar_Ubicacion.ParamByName('PE_CONS_SOLICITA').AsInteger :=
          TMovimiento.FieldByName('CONS_SOLICITA').AsInteger
      Else
        SPModificar_Ubicacion.ParamByName('PE_CONS_SOLICITA').Clear;
      If TMovimiento.FieldByName('CONS_ENTREGA').AsInteger > 0 Then
        SPModificar_Ubicacion.ParamByName('PE_CONS_ENTREGA').AsInteger :=
          TMovimiento.FieldByName('CONS_ENTREGA').AsInteger
      Else
        SPModificar_Ubicacion.ParamByName('PE_CONS_ENTREGA').Clear;
      If TMovimiento.FieldByName('CONS_RECIBE').AsInteger > 0 Then
        SPModificar_Ubicacion.ParamByName('PE_CONS_RECIBE').AsInteger :=
          TMovimiento.FieldByName('CONS_RECIBE').AsInteger
      Else
        SPModificar_Ubicacion.ParamByName('PE_CONS_RECIBE').Clear;
      SPModificar_Ubicacion.ParamByName('PE_FECH_INICIAL').AsDateTime :=
        TMovimiento.FieldByName('FECH_INICIAL').AsDateTime;
      SPModificar_Ubicacion.ParamByName('PE_FECH_FINAL').AsDateTime :=
        TMovimiento.FieldByName('FECH_FINAL').AsDateTime;
      SPModificar_Ubicacion.ParamByName('PE_OBSERVACIONES').AsString :=
        DBObservaciones.Text;
      SPModificar_Ubicacion.ParamByName('PE_CONS_UBIC_TIPO').AsInteger :=
        TMovimiento.FieldByName('CONS_UBIC_TIPO').AsInteger;
      SPModificar_Ubicacion.ParamByName('PE_CONS_EMPRESA').AsInteger :=
        TMovimiento.FieldByName('CONS_EMPRESA').AsInteger;
      SPModificar_Ubicacion.ParamByName('PE_CONS_AREA').AsInteger :=
        TMovimiento.FieldByName('CONS_AREA').AsInteger;
      SPModificar_Ubicacion.ParamByName('PE_CONS_PLANTA').AsInteger :=
        TMovimiento.FieldByName('CONS_PLANTA').AsInteger;
      SPModificar_Ubicacion.ParamByName('PE_CONS_PLAN_LINEA').AsInteger :=
        TMovimiento.FieldByName('CONS_PLAN_LINEA').AsInteger;
      SPModificar_Ubicacion.ParamByName('PE_CONS_LINE_SECCION').AsInteger :=
        TMovimiento.FieldByName('CONS_LINE_SECCION').AsInteger;
      SPModificar_Ubicacion.ParamByName('PE_CONS_BODEGA').AsInteger :=
        TMovimiento.FieldByName('CONS_BODEGA').AsInteger;
      SPModificar_Ubicacion.ParamByName('PE_OTRA_UBICACION').AsString :=
        TMovimiento.FieldByName('OTRA_UBICACION').AsString;
      SPModificar_Ubicacion.ExecProc;
      SPModificar_Ubicacion.Close;
			//Eliminar el recurso de la tabla temporal
      If TRecursos_Temporal.Locate('CONS_RECURSO', DBPersonal.Items[I].Values[0], []) then
        TRecursos_Temporal.Delete;
	  End;
  //Habilitar los controles de la tabla temporal
  TRecursos_Temporal.EnableControls;
  EjecutarMensaje(CosModificacionRealizada, mtConfirmation, [mbOk],0);
  NecesitaActualizar := True;
  //Cerrar Forma
	If TRecursos_Temporal.RecordCount = 0 Then
	  Close;
end;

{****************************************************************
Procedimiento   : TMovimientoBeforePost
Objetivo        : Validar campos requeridos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 7 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_traslados1.TMovimientoBeforePost(DataSet: TDataSet);
begin
  inherited;
	If ffra_maqu_ubicacion1.quer_maqu_ubicaciones.FieldByName('VER_EMPRESA').AsInteger = -1 Then
  Begin
    TMovimiento.FieldByName('CONS_EMPRESA').AsInteger := 0;
    TMovimiento.FieldByName('CONS_AREA').AsInteger := 0;
  End;
	If ffra_maqu_ubicacion1.quer_maqu_ubicaciones.FieldByName('VER_PLANTA').AsInteger = -1 Then
  Begin
    TMovimiento.FieldByName('CONS_PLANTA').AsInteger := 0;
    TMovimiento.FieldByName('CONS_PLAN_LINEA').AsInteger := 0;
    TMovimiento.FieldByName('CONS_LINE_SECCION').AsInteger := 0;
  End;
	If ffra_maqu_ubicacion1.quer_maqu_ubicaciones.FieldByName('VER_BODEGA').AsInteger = -1 Then
    TMovimiento.FieldByName('CONS_BODEGA').AsInteger := 0;
	If ffra_maqu_ubicacion1.quer_maqu_ubicaciones.FieldByName('VER_OTRA_UBICACION').AsInteger = -1 Then
    TMovimiento.FieldByName('OTRA_UBICACION').AsString := '';

  ValidarDatosDataSet(TMovimiento);
end;

end.

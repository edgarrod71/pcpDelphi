unit un1_maqu_reingresos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  dxEdLib, dxDBELib, DBCtrls, 
  SoSplit, dxEditor, StdCtrls, SohoBtns, SCLButton, RxLookup,
  PCPLookUpComboEdit, ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, SoCtrls,
  SCLDBLabel, dxPageControl, Boxes, PCPFrame,
  un1_maqu_traslados1, RxMemDS, ufra_maqu_ubicacion, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, _vent_modal, TBXDkPanels, TBXButtonSCL,
  PCPProceso;

type
  Tfn1_maqu_reingresos1 = class(T_fvent_modal)
    TBXItem3: TTBXItem;
    TMovimientos: TTable;
    DSMovimientos: TDataSource;
    TMovimiento: TRxMemoryData;
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
    TMovimientoCONS_PLAN_LINEA: TIntegerField;
    TMovimientoCONS_LINE_SECCION: TIntegerField;
    TMovimientoCONS_BODEGA: TIntegerField;
    TMovimientoOTRA_UBICACION: TStringField;
    DSMovimiento: TDataSource;
    DSQTipo_Documento_movimiento: TDataSource;
    DSQPersonal: TDataSource;
    FMovimiento: TPCPFrame;
    SCLDBLabel40: TSCLDBLabel;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel65: TSCLDBLabel;
    SCLDBLabel30: TSCLDBLabel;
    SCLDBLabel68: TSCLDBLabel;
    CBTipo_Documento: TPCPLookUpComboEdit;
    SCLButton27: TTBXButtonSCL;
    DBNumero_Documento: TdxDBEdit;
    DBFecha_Inicial: TdxDBDateEdit;
    DBObservaciones: TdxDBEdit;
    DBFecha_Final: TdxDBDateEdit;
    DBSolicitado: TPCPLookUpComboEdit;
    SCLButton6: TTBXButtonSCL;
    FUbicacion: TPCPFrame;
    ffra_maqu_ubicacion1: Tffra_maqu_ubicacion;
    PCPFrame1: TPCPFrame;
    DBPersonal: TdxDBGrid;
    DBPersonalCONS_RECURSO: TdxDBGridMaskColumn;
    DBPersonalCODI_RECURSO: TdxDBGridMaskColumn;
    DBPersonalCODI_INTE_RECURSO: TdxDBGridMaskColumn;
    DBPersonalNOMB_RECU_GRUPO: TdxDBGridMaskColumn;
    DBPersonalNOMB_RECU_TIPO: TdxDBGridMaskColumn;
    DBPersonalNOMB_RECU_FAMILIA: TdxDBGridMaskColumn;
    DBPersonalNOMB_RECU_MARCA: TdxDBGridMaskColumn;
    DBPersonalFECH_INICIAL: TdxDBGridDateColumn;
    DBPersonalNUME_SERIE: TdxDBGridMaskColumn;
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
    QRecursos: TQuery;
    DSQRecursos: TDataSource;
    QRecursosCONS_RECURSO: TIntegerField;
    QRecursosCODI_RECURSO: TStringField;
    QRecursosCODI_INTE_RECURSO: TStringField;
    QRecursosCONS_RECU_TIPO_MOVIMIENTO: TIntegerField;
    QRecursosNOMB_RECU_TIPO_MOVIMIENTO: TStringField;
    QRecursosFECH_INICIAL: TDateTimeField;
    QRecursosNOMB_RECU_GRUPO: TStringField;
    QRecursosNOMB_RECU_TIPO: TStringField;
    QRecursosNOMB_RECU_FAMILIA: TStringField;
    QRecursosNOMB_RECU_MARCA: TStringField;
    QRecursosNUME_SERIE: TStringField;
    QRecursosCODI_EMPRESA: TStringField;
    QRecursosNOMB_EMPRESA: TStringField;
    QRecursosCODI_AREA: TStringField;
    QRecursosNOMB_AREA: TStringField;
    QRecursosCODI_PLANTA: TStringField;
    QRecursosNOMB_PLANTA: TStringField;
    QRecursosCODI_LINEA: TStringField;
    QRecursosNOMB_LINEA: TStringField;
    QRecursosCODI_SECCION: TStringField;
    QRecursosNOMB_SECCION: TStringField;
    QRecursosCODI_BODEGA: TStringField;
    QRecursosNOMB_BODEGA: TStringField;
    QRecursosOTRA_UBICACION: TStringField;
    SCLDBLabel3: TSCLDBLabel;
    CBTipo_Movimiento: TPCPLookUpComboEdit;
    SCLButton3: TTBXButtonSCL;
    QTipo_Movimientos: TQuery;
    DSQTipo_Movimientos: TDataSource;
    QTipo_MovimientosCONS_RECU_TIPO_MOVIMIENTO: TIntegerField;
    QTipo_MovimientosCONS_FAMI_MOVIMIENTO: TIntegerField;
    QTipo_MovimientosCODI_RECU_TIPO_MOVIMIENTO: TStringField;
    QTipo_MovimientosNOMB_RECU_TIPO_MOVIMIENTO: TStringField;
    QTipo_MovimientosOBSERVACIONES: TStringField;
    QTipo_MovimientosFECH_SISTEMA: TDateTimeField;
    QTipo_MovimientosUSUA_SISTEMA: TStringField;
    TMovimientoCONS_RECU_TIPO_MOVIMIENTO: TIntegerField;
    CBBajas: TdxCheckEdit;
    SPReingreso: TStoredProc;
    Acti_Reingreso: TAction;
    QTipo_Documento_movimiento: TQuery;
    QPersonal: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure ffra_maqu_ubicacion1comb_tipo_ubicacionChange(
      Sender: TObject);
    procedure CBBajasChange(Sender: TObject);
    procedure Acti_ReingresoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_reingresos1: Tfn1_maqu_reingresos1;

Const
	CosModificacionRealizada = 'Modificación de ubicación realizada con Exito';

implementation
uses _func_varias, _cons_pcp, _Traductor;
{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 10 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_reingresos1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QTipo_Documento_Movimiento);
  AbrirDataSet(QTipo_Movimientos);
  AbrirDataSet(QPersonal);
  AbrirDataSet(QRecursos);

  InicializarFrame(ffra_maqu_ubicacion1);
  AbrirDataSet(TMovimiento);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : ffra_maqu_ubicacion1comb_tipo_ubicacionChange
Objetivo        : Llenar los campos vacios depende del tipo de ubicación
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 10 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_reingresos1.ffra_maqu_ubicacion1comb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  ffra_maqu_ubicacion1.comb_tipo_ubicacionChange(Sender);

  If TMovimiento.State In [dsEdit, dsInsert] Then
    With ffra_maqu_ubicacion1 Do
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
Procedimiento   : CBBajasChange
Objetivo        : Filtrar las bajas del personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 10 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_reingresos1.CBBajasChange(Sender: TObject);
begin
  inherited;
  //Todas la bajas del personal
	If CBBajas.Checked Then
  Begin
    QRecursos.Close;
    QRecursos.Filter := '';
    QRecursos.Filtered := False;
    QRecursos.Open;
  End
  //Bajas temporales del personal
  Else
  Begin
    QRecursos.Close;
    QRecursos.Filter := 'CONS_RECU_TIPO_MOVIMIENTO <> 4';
    QRecursos.Filtered := True;
    QRecursos.Open;
  End;
end;

{****************************************************************
Procedimiento   : Acti_ReingresoExecute
Objetivo        : Grabar los reingresos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 10 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_reingresos1.Acti_ReingresoExecute(Sender: TObject);
Var
	I : Integer;
begin
  inherited;
	//Verificar que Existan registros de Personal
	If QRecursos.RecordCount = 0 Then
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
  QRecursos.DisableControls;
	For I := 0 To DBPersonal.Count - 1 Do
  	If DBPersonal.Items[I].Selected Then
		Begin
			SPReingreso.Close;
      SPReingreso.ParamByName('PE_CONS_RECU_TIPO_MOVIMIENTO').AsInteger :=
      	TMovimiento.FieldByName('CONS_RECU_TIPO_MOVIMIENTO').AsInteger;
      SPReingreso.ParamByName('PE_CONS_RECURSO').AsInteger :=
        DBPersonal.Items[I].Values[0];
      SPReingreso.ParamByName('PE_CONS_TIPO_DOCUMENTO').AsInteger :=
        TMovimiento.FieldByName('CONS_TIPO_DOCUMENTO').AsInteger;
      SPReingreso.ParamByName('PE_NUME_DOCUMENTO').AsString :=
        TMovimiento.FieldByName('NUME_DOCUMENTO').AsString;
      If TMovimiento.FieldByName('CONS_SOLICITA').AsString <> '' Then
        SPReingreso.ParamByName('PE_CONS_SOLICITA').AsInteger :=
          TMovimiento.FieldByName('CONS_SOLICITA').AsInteger
      Else
        SPReingreso.ParamByName('PE_CONS_SOLICITA').value := Null;

      If TMovimiento.FieldByName('CONS_ENTREGA').AsString <> '' Then
        SPReingreso.ParamByName('PE_CONS_ENTREGA').AsInteger :=
          TMovimiento.FieldByName('CONS_ENTREGA').AsInteger
      Else
        SPReingreso.ParamByName('PE_CONS_ENTREGA').value := Null;

      If TMovimiento.FieldByName('CONS_RECIBE').AsString <> '' Then
        SPReingreso.ParamByName('PE_CONS_RECIBE').AsInteger :=
          TMovimiento.FieldByName('CONS_RECIBE').AsInteger
      Else
        SPReingreso.ParamByName('PE_CONS_RECIBE').value := Null;


      SPReingreso.ParamByName('PE_FECH_INICIAL').AsDateTime :=
        TMovimiento.FieldByName('FECH_INICIAL').AsDateTime;
      SPReingreso.ParamByName('PE_FECH_FINAL').AsDateTime :=
        TMovimiento.FieldByName('FECH_FINAL').AsDateTime;
      SPReingreso.ParamByName('PE_OBSERVACIONES').AsString :=
        TMovimiento.FieldByName('OBSERVACIONES').AsString;
			If TMovimiento.FieldByname('CONS_UBIC_TIPO').AsString <> '' Then
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
      End
      Else
      Begin
        QRecursos.Locate('CONS_RECURSO', DBPersonal.Items[I].Values[0], []);
        SPReingreso.ParamByName('PE_CONS_UBIC_TIPO').AsInteger :=
          QRecursos.FieldByName('CONS_UBIC_TIPO').AsInteger;
        SPReingreso.ParamByName('PE_CONS_EMPRESA').AsInteger :=
          QRecursos.FieldByName('CONS_EMPRESA').AsInteger;
        SPReingreso.ParamByName('PE_CONS_AREA').AsInteger :=
          QRecursos.FieldByName('CONS_AREA').AsInteger;
        SPReingreso.ParamByName('PE_CONS_PLANTA').AsInteger :=
          QRecursos.FieldByName('CONS_PLANTA').AsInteger;
        SPReingreso.ParamByName('PE_CONS_PLAN_LINEA').AsInteger :=
          QRecursos.FieldByName('CONS_PLAN_LINEA').AsInteger;
        SPReingreso.ParamByName('PE_CONS_LINE_SECCION').AsInteger :=
          QRecursos.FieldByName('CONS_LINE_SECCION').AsInteger;
        SPReingreso.ParamByName('PE_CONS_BODEGA').AsInteger :=
          QRecursos.FieldByName('CONS_BODEGA').AsInteger;
        SPReingreso.ParamByName('PE_OTRA_UBICACION').AsString :=
          QRecursos.FieldByName('OTRA_UBICACION').AsString;
      End;
      SPReingreso.ExecProc;
      SPReingreso.Close;
	  End;
  //habilitar los controles de la tabla temporal
  QRecursos.EnableControls;
	//Refresco la consulta de los recursos con bajas
  QRecursos.Close;
  QRecursos.Open;
  EjecutarMensaje(CosModificacionRealizada, mtConfirmation, [mbOk],0);
  NecesitaActualizar := True;
  //Cerrar la forma
	If QRecursos.RecordCount = 0 Then
	  Close;
end;

end.

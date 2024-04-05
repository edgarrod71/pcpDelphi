unit un1_maqu_bajas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  dxEdLib, dxDBELib, SoSplit, _vent_modal, 
  dxEditor, StdCtrls, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit,
  ExtCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, SoCtrls, SCLDBLabel, DBCtrls,
  dxPageControl, Boxes, PCPFrame, RxMemDS, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, un1_maqu_traslados1, ufra_maqu_ubicacion,
  TBXDkPanels, TBXButtonSCL, PCPProceso;

type
  Tfn1_maqu_bajas1 = class(T_fvent_modal)
    DSQTipo_Documento_Movimiento: TDataSource;
    DSQPersonal: TDataSource;
    TMovimiento: TRxMemoryData;
    TMovimientoCONS_TIPO_DOCUMENTO: TIntegerField;
    TMovimientoNUME_DOCUMENTO: TStringField;
    TMovimientoCONS_SOLICITA: TIntegerField;
    TMovimientoFECH_INICIAL: TDateTimeField;
    TMovimientoFECH_FINAL: TDateTimeField;
    TMovimientoOBSERVACIONES: TStringField;
    DSMovimiento: TDataSource;
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
    TRecursos_Temporal: TRxMemoryData;
    TRecursos_TemporalCONS_RECURSO: TIntegerField;
    TRecursos_TemporalCODI_RECURSO: TStringField;
    TRecursos_TemporalCODI_INTE_RECURSO: TStringField;
    TRecursos_TemporalNOMB_RECU_GRUPO: TStringField;
    TRecursos_TemporalNOMB_RECU_TIPO: TStringField;
    TRecursos_TemporalNOMB_RECU_FAMILIA: TStringField;
    TRecursos_TemporalNOMB_RECU_MARCA: TStringField;
    TRecursos_TemporalNUME_SERIE: TStringField;
    TRecursos_TemporalFECH_INICIAL: TDateTimeField;
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
    DSRecursos_Temporal: TDataSource;
    PCPFrame1: TPCPFrame;
    DBRecursos: TdxDBGrid;
    DBRecursosCONS_RECURSO: TdxDBGridMaskColumn;
    DBRecursosCODI_RECURSO: TdxDBGridMaskColumn;
    DBRecursosCODI_INTE_RECURSO: TdxDBGridMaskColumn;
    DBRecursosNOMB_RECU_GRUPO: TdxDBGridMaskColumn;
    DBRecursosNOMB_RECU_TIPO: TdxDBGridMaskColumn;
    DBRecursosNOMB_RECU_FAMILIA: TdxDBGridMaskColumn;
    DBRecursosNOMB_RECU_MARCA: TdxDBGridMaskColumn;
    DBRecursosFECH_INICIAL: TdxDBGridDateColumn;
    DBRecursosNUME_SERIE: TdxDBGridMaskColumn;
    DBRecursosCODI_EMPRESA: TdxDBGridMaskColumn;
    DBRecursosNOMB_EMPRESA: TdxDBGridMaskColumn;
    DBRecursosCODI_AREA: TdxDBGridMaskColumn;
    DBRecursosNOMB_AREA: TdxDBGridMaskColumn;
    DBRecursosCODI_PLANTA: TdxDBGridMaskColumn;
    DBRecursosNOMB_PLANTA: TdxDBGridMaskColumn;
    DBRecursosCODI_LINEA: TdxDBGridMaskColumn;
    DBRecursosNOMB_LINEA: TdxDBGridMaskColumn;
    DBRecursosCODI_SECCION: TdxDBGridMaskColumn;
    DBRecursosNOMB_SECCION: TdxDBGridMaskColumn;
    DBRecursosCODI_BODEGA: TdxDBGridMaskColumn;
    DBRecursosNOMB_BODEGA: TdxDBGridMaskColumn;
    DBRecursosOTRA_UBICACION: TdxDBGridMaskColumn;
    QTipo_Movimiento: TQuery;
    DSQTipo_Movimiento: TDataSource;
    SCLDBLabel1: TSCLDBLabel;
    CBTipo_Movimiento: TPCPLookUpComboEdit;
    SCLButton1: TTBXButtonSCL;
    TMovimientoCONS_RECU_TIPO_MOVIMIENTO: TIntegerField;
    SPBajas: TStoredProc;
    Acti_Bajas: TAction;
    TBXItem1: TTBXItem;
    QTipo_MovimientoCONS_RECU_TIPO_MOVIMIENTO: TIntegerField;
    QTipo_MovimientoCONS_FAMI_MOVIMIENTO: TIntegerField;
    QTipo_MovimientoCODI_RECU_TIPO_MOVIMIENTO: TStringField;
    QTipo_MovimientoNOMB_RECU_TIPO_MOVIMIENTO: TStringField;
    QTipo_MovimientoOBSERVACIONES: TStringField;
    QTipo_MovimientoFECH_SISTEMA: TDateTimeField;
    QTipo_MovimientoUSUA_SISTEMA: TStringField;
    QTipo_Documento_Movimiento: TQuery;
    QPersonal: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure TMovimientoBeforePost(DataSet: TDataSet);
    procedure Acti_BajasExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_bajas1: Tfn1_maqu_bajas1;

Const
	CosModificacionRealizada = 'Bajas realizadas con Exito';

implementation
uses _func_varias, _cons_pcp, _Traductor;
{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_bajas1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QTipo_Documento_Movimiento);
  AbrirDataSet(QPersonal);
  AbrirDataSet(QTipo_Movimiento);

  TMovimiento.Open;
  TRecursos_Temporal.Open;
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : TMovimientoBeforePost
Objetivo        : Validar campos requeridos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_bajas1.TMovimientoBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidarDatosDataSet(TMovimiento);
end;

{****************************************************************
Procedimiento   : Acti_BajasExecute
Objetivo        : Ejecutar las bajas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_bajas1.Acti_BajasExecute(Sender: TObject);
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
  If DBRecursos.SelectedCount = 0 Then
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
  For I := 0 To DBRecursos.Count - 1 Do
  	If DBRecursos.Items[I].Selected Then
    Begin
			SPBajas.Close;
      SPBajas.ParamByName('PE_CONS_RECU_TIPO_MOVIMIENTO').AsInteger :=
        TMovimiento.FieldByName('CONS_RECU_TIPO_MOVIMIENTO').AsInteger;
      SPBajas.ParamByName('PE_CONS_RECURSO').AsInteger :=
        DBRecursos.Items[I].Values[0];
      SPBajas.ParamByName('PE_CONS_TIPO_DOCUMENTO').AsInteger :=
        TMovimiento.FieldByName('CONS_TIPO_DOCUMENTO').AsInteger;
      SPBajas.ParamByName('PE_NUME_DOCUMENTO').AsString :=
        TMovimiento.FieldByName('NUME_DOCUMENTO').AsString;
      SPBajas.ParamByName('PE_CONS_SOLICITA').AsInteger :=
        TMovimiento.FieldByName('CONS_SOLICITA').AsInteger;
      SPBajas.ParamByName('PE_FECH_INICIAL').AsDateTime :=
        TMovimiento.FieldByName('FECH_INICIAL').AsDateTime;
      SPBajas.ParamByName('PE_FECH_FINAL').AsDateTime :=
        TMovimiento.FieldByName('FECH_FINAL').AsDateTime;
      SPBajas.ParamByName('PE_OBSERVACIONES').AsString :=
        DBObservaciones.Text;
      SPBajas.ExecProc;
      SPBajas.Close;
			//Eliminar el personal de la tabla temporal
      If TRecursos_Temporal.Locate('CONS_RECURSO', DBRecursos.Items[I].Values[0], []) Then
	      TRecursos_Temporal.Delete;
    End;
  //Habilitar los controles de la tabla temporal
  TRecursos_Temporal.EnableControls;
  EjecutarMensaje(CosModificacionRealizada, mtConfirmation, [mbOk],0);
  NecesitaActualizar := True;
  //Cerrar la forma
  If TRecursos_Temporal.RecordCount = 0 Then
	  Close;
end;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Asignar verdadero a la variable necesitaactualizar
									para que refresca la consulta del child
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_bajas1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  NecesitaActualizar := True;
end;

end.

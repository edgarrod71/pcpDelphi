unit UN1_Pers_Bajas1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  DBTables, SCLPropiedadesForm, DBActns, ActnList, ImgList, ExtCtrls,
  dxEditor, dxEdLib, dxDBELib, TB2Item, TBX, TB2Dock, TB2Toolbar, StdCtrls,
  SoCtrls, SCLDBLabel, SohoBtns, SCLButton, RxLookup, PCPLookUpComboEdit,
  Boxes, PCPFrame, dxTL, dxDBCtrl, dxDBGrid, RxMemDS, TBXDkPanels,
  TBXButtonSCL, PCPProceso;

type
  TFN1_Pers_Bajas1 = class(T_fvent_modal)
    DSQTipo_Documento: TDataSource;
    PCPFrame2: TPCPFrame;
    SCLDBLabel40: TSCLDBLabel;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel68: TSCLDBLabel;
    SCLDBLabel65: TSCLDBLabel;
    CBTipo_Documento: TPCPLookUpComboEdit;
    SCLButton27: TTBXButtonSCL;
    ENumero_Documento: TdxDBEdit;
    DBInicial: TdxDBDateEdit;
    DBObservaciones: TdxDBEdit;
    DBFinal: TdxDBDateEdit;
    SCLDBLabel1: TSCLDBLabel;
    CBTipo_Movimiento: TPCPLookUpComboEdit;
    SCLButton1: TTBXButtonSCL;
    PCPFrame1: TPCPFrame;
    DBPersonal: TdxDBGrid;
    DSQTipo_Movimiento: TDataSource;
    QTipo_Movimiento: TQuery;
    QTipo_MovimientoCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    QTipo_MovimientoCONS_FAMI_MOVIMIENTO: TIntegerField;
    QTipo_MovimientoCODI_PERS_TIPO_MOVIMIENTO: TStringField;
    QTipo_MovimientoNOMB_PERS_TIPO_MOVIMIENTO: TStringField;
    QTipo_MovimientoFECH_SISTEMA: TDateTimeField;
    QTipo_MovimientoUSUA_SISTEMA: TStringField;
    TTemporal: TRxMemoryData;
    DSTemporal: TDataSource;
    TTemporalCONS_PERSONAL: TIntegerField;
    TTemporalCODI_PERSONAL: TStringField;
    TTemporalNOMB_COMPLETO: TStringField;
    Acti_Modi_Bajas: TAction;
    SPModificacion: TStoredProc;
    TBXItem1: TTBXItem;
    Tabla_VentanaCONS_PERS_MOVIMIENTO: TIntegerField;
    Tabla_VentanaCONS_PERSONAL: TIntegerField;
    Tabla_VentanaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    Tabla_VentanaFECH_INICIAL: TDateTimeField;
    Tabla_VentanaFECH_FINAL: TDateTimeField;
    Tabla_VentanaNUME_DOCUMENTO: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    DBPersonalCONS_PERSONAL: TdxDBGridMaskColumn;
    DBPersonalCODI_PERSONAL: TdxDBGridMaskColumn;
    DBPersonalNOMB_COMPLETO: TdxDBGridMaskColumn;
    QTipo_Documento: TQuery;
    TMovimiento: TRxMemoryData;
    TMovimientoCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    TMovimientoCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    TMovimientoNUME_DOCUMENTO: TStringField;
    TMovimientoFECH_INICIAL: TDateField;
    TMovimientoFECH_FINAL: TDateField;
    TMovimientoOBSERVACIONES: TStringField;
    TMovimientoCONS_SOLICITA: TIntegerField;
    TMovimientoCONS_APROBO: TIntegerField;
    SCLDBLabel2: TSCLDBLabel;
    CBSolicita: TPCPLookUpComboEdit;
    SCLButton2: TTBXButtonSCL;
    SCLDBLabel3: TSCLDBLabel;
    SCLButton3: TTBXButtonSCL;
    CBAprobo: TPCPLookUpComboEdit;
    DSMovimiento: TDataSource;
    QPersonal: TQuery;
    DSQPersonal: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Acti_Modi_BajasExecute(Sender: TObject);
    procedure TMovimientoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Bajas1: TFN1_Pers_Bajas1;

Const
  CosModificacionRealizada  		= 'Modificación de bajas realizada con éxito';

implementation

uses _cons_pcp, _func_varias;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 17 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Bajas1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QTipo_Documento);
  AbrirDataSet(QTipo_Movimiento);
  AbrirDataSet(QPersonal);

  TMovimiento.Open;
  TTemporal.Open;
end;

{****************************************************************
Procedimiento   : Acti_Modi_BajasExecute
Objetivo        : Grabar las bajas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 17 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Bajas1.Acti_Modi_BajasExecute(Sender: TObject);
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
  TTemporal.DisableControls;
	For I := 0 To DBPersonal.Count - 1 Do
  	If DBPersonal.Items[I].Selected Then
    Begin
      SPModificacion.Close;
      //Tipo de movimiento
      SPModificacion.ParamByName('PE_CONS_PERS_TIPO_MOVIMIENTO').AsInteger :=
        TMovimiento.FieldByname('CONS_PERS_TIPO_MOVIMIENTO').AsInteger;
      //Tipo de documento del movimiento
      SPModificacion.ParamByName('PE_CONS_PERS_MOVI_TIPO_DOCU').AsInteger :=
        TMovimiento.FieldByname('CONS_PERS_MOVI_TIPO_DOCUMENTO').AsInteger;
      //Número del documento del Movimiento
      SPModificacion.ParamByName('PE_NUME_DOCUMENTO').AsString :=
        TMovimiento.FieldByName('NUME_DOCUMENTO').AsString;
      //Fecha Inicial del Movimiento
      SPModificacion.ParamByName('PE_FECH_INICIAL').AsDateTime :=
        TMovimiento.FieldByName('FECH_INICIAL').AsDateTime;
      //Fecha Final del Movimiento
      SPModificacion.ParamByName('PE_FECH_FINAL').AsDateTime :=
        TMovimiento.FieldByName('FECH_FINAL').AsDateTime;
      //Observaciones del Movimiento
      SPModificacion.ParamByName('PE_OBSERVACIONES').AsString :=
        TMovimiento.FieldByName('OBSERVACIONES').AsString;

      SPModificacion.ParamByName('PE_CONS_APROBO').Value := Null;
      SPModificacion.ParamByName('PE_CONS_SOLICITA').Value := Null;

      //Solicitado Por
			If TMovimiento.FieldByName('CONS_SOLICITA').AsString <> '' Then
        SPModificacion.ParamByName('PE_CONS_SOLICITA').AsInteger :=
          TMovimiento.FieldByName('CONS_SOLICITA').AsInteger;
      //Aprobado Por
			If TMovimiento.FieldByName('CONS_APROBO').AsString <> '' Then
        SPModificacion.ParamByName('PE_CONS_APROBO').AsInteger :=
          TMovimiento.FieldByName('CONS_APROBO').AsInteger;
      //Personal al cual se hará el Movimiento
      SPModificacion.ParamByName('PE_CONS_PERSONAL').AsInteger :=
        DBPersonal.Items[I].Values[0];
      SPModificacion.ExecProc;
      SPModificacion.Close;
      //Eliminar el personal de la tabla temporal
      If TTemporal.Locate('CONS_PERSONAL', DBPersonal.Items[I].Values[0], []) Then
	      TTemporal.Delete;
		End;
	//Habilitar los controles de la tabla temporal
  TTemporal.EnableControls;
  EjecutarMensaje(CosModificacionRealizada, mtInformation, [mbOk], 0);
  //Cerrar la forma
	If TTemporal.RecordCount = 0 Then
	Begin
	  NecesitaActualizar := True;
	  Close;
  End;  
end;

{****************************************************************
Procedimiento   : TMovimientoBeforePost
Objetivo        : Validar campos requeridos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Bajas1.TMovimientoBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidarDatosDataSet(TMovimiento);
end;

end.

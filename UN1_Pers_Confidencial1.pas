{ 17/03/2004 02:19:06 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:44:44 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 05/03/2004 10:40:16 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:44 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Pers_Confidencial1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, SCLPropiedadesForm, DBActns, ActnList, Db, ImgList,
  dxCntner, dxEditor, dxEdLib, dxDBELib, ExtCtrls, TB2Item, TBX, TB2Dock,
  TB2Toolbar, StdCtrls, dxExEdtr, dxDBEdtr, SCLDBLabel, DBTables, RxLookup,
  PCPLookUpComboEdit, SoCtrls, SohoBtns, SCLButton, PictureContainer,
  AdvPanel, RxMemDS, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, Boxes,
  PCPFrame, dfsSplitter, TBXDkPanels, TBXButtonSCL, PCPProceso;

type
  TFN1_Pers_Confidencial1 = class(T_fvent_modal)
    TTemporal: TRxMemoryData;
    TTemporalCONS_PERSONAL: TIntegerField;
    TTemporalCODI_PERSONAL: TStringField;
    TTemporalNOMB_COMPLETO: TStringField;
    TTemporalNUME_CONTRATO: TStringField;
    TTemporalAUXI_TRANSPORTE: TFloatField;
    TTemporalAUXI_SALARIAL: TFloatField;
    TTemporalCONS_PERS_NIVE_SALARIAL: TIntegerField;
    TTemporalCODI_PERS_NIVE_SALARIAL: TStringField;
    TTemporalVALO_SALARIO: TIntegerField;
    TTemporalCONS_PERS_TIPO_CONTRATO: TIntegerField;
    TTemporalCODI_PERS_TIPO_CONTRATO: TStringField;
    TTemporalNOMB_PERS_TIPO_CONTRATO: TStringField;
    TTemporalCONS_PERI_PAGO: TIntegerField;
    TTemporalCODI_PERI_PAGO: TStringField;
    TTemporalNOMB_PERI_PAGO: TStringField;
    TTemporalFECH_SISTEMA: TDateField;
    TTemporalUSUA_SISTEMA: TStringField;
    DSTemporal: TDataSource;
    DSQTipo_Documento: TDataSource;
    DSQPeriodo_Pago: TDataSource;
    DSQNivel_Salarial: TDataSource;
    DSQTipo_Contrato: TDataSource;
    SPModificacion: TStoredProc;
    PCPFrame1: TPCPFrame;
    PCPFrame2: TPCPFrame;
    SCLDBLabel40: TSCLDBLabel;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel68: TSCLDBLabel;
    SCLDBLabel65: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    CBTipo_Documento: TPCPLookUpComboEdit;
    SCLButton27: TTBXButtonSCL;
    ENumero_Documento: TdxDBEdit;
    DBInicial: TdxDBDateEdit;
    DBObservaciones: TdxDBEdit;
    DBFinal: TdxDBDateEdit;
    CBNivel_Salarial: TPCPLookUpComboEdit;
    CBPeriodo_Pago: TPCPLookUpComboEdit;
    CBTipo_Contrato: TPCPLookUpComboEdit;
    SCLButton2: TTBXButtonSCL;
    SCLButton4: TTBXButtonSCL;
    SCLButton3: TTBXButtonSCL;
    TBXItem1: TTBXItem;
    Acti_Modi_Confidencial: TAction;
    DBPersonal: TdxDBGrid;
    DBPersonalCODI_PERSONAL: TdxDBGridMaskColumn;
    DBPersonalNOMB_COMPLETO: TdxDBGridMaskColumn;
    DBPersonalNUME_CONTRATO: TdxDBGridMaskColumn;
    DBPersonalAUXI_TRANSPORTE: TdxDBGridMaskColumn;
    DBPersonalAUXI_SALARIAL: TdxDBGridMaskColumn;
    DBPersonalCODI_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn;
    DBPersonalVALO_SALARIO: TdxDBGridMaskColumn;
    DBPersonalCODI_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    DBPersonalNOMB_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    DBPersonalCODI_PERI_PAGO: TdxDBGridMaskColumn;
    DBPersonalNOMB_PERI_PAGO: TdxDBGridMaskColumn;
    DBPersonalFECH_SISTEMA: TdxDBGridDateColumn;
    DBPersonalUSUA_SISTEMA: TdxDBGridMaskColumn;
    TTemporalNOMB_PERS_NIVE_SALARIAL: TStringField;
    DBPersonalNOMB_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn;
    Bevel1: TBevel;
    SCLDBLabel1: TSCLDBLabel;
    DBIncremento: TdxCurrencyEdit;
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
    QTipo_Contrato: TQuery;
    QNivel_Salarial: TQuery;
    QPeriodo_Pago: TQuery;
    QTipo_Documento: TQuery;
    SCLDBLabel13: TSCLDBLabel;
    DBAviso: TdxDBEdit;
    SCLDBLabel14: TSCLDBLabel;
    CBIncentivo: TdxDBCheckEdit;
    TMovimiento: TRxMemoryData;
    DSMovimiento: TDataSource;
    TMovimientoDIAS_VENC_CONTRATO: TIntegerField;
    TMovimientoAPLI_INCENTIVO: TIntegerField;
    TMovimientoCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    TMovimientoNUME_DOCUMENTO: TStringField;
    TMovimientoFECH_INICIAL: TDateField;
    TMovimientoFECH_FINAL: TDateField;
    TMovimientoOBSERVACIONES: TStringField;
    TMovimientoCONS_PERS_CARGO: TIntegerField;
    TMovimientoCONS_PERS_TIPO_CONTRATO: TIntegerField;
    TMovimientoCONS_PERI_PAGO: TIntegerField;
    TMovimientoCONS_PERS_NIVE_SALARIAL: TIntegerField;
    SCLDBLabel4: TSCLDBLabel;
    DBSalario: TdxDBCurrencyEdit;
    TMovimientoSALARIO: TFloatField;
    DBPersonalCONS_PERSONAL: TdxDBGridMaskColumn;
    DBPersonalCONS_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn;
    DBPersonalCONS_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    DBPersonalCONS_PERI_PAGO: TdxDBGridMaskColumn;
    DBAux_Salarial: TdxDBCurrencyEdit;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    DBAux_Transporte: TdxDBCurrencyEdit;
    TMovimientoAUXI_SALARIAL: TFloatField;
    TMovimientoAUXI_TRANSPORTE: TFloatField;
    TTemporalDIAS_VENC_CONTRATO: TIntegerField;
    TTemporalAPLI_INCENTIVO: TIntegerField;
    DBPersonalDIAS_VENC_CONTRATO: TdxDBGridMaskColumn;
    DBPersonalAPLI_INCENTIVO: TdxDBGridCheckColumn;
    TMovimientoNUME_CONTRATO: TStringField;
    SCLDBLabel9: TSCLDBLabel;
    DBNumero_Contrato: TdxDBEdit;
    SCLDBLabel10: TSCLDBLabel;
    CBSolicita: TPCPLookUpComboEdit;
    SCLButton5: TTBXButtonSCL;
    SCLDBLabel11: TSCLDBLabel;
    CBAprobo: TPCPLookUpComboEdit;
    SCLButton6: TTBXButtonSCL;
    TMovimientoCONS_SOLICITA: TIntegerField;
    TMovimientoCONS_APROBO: TIntegerField;
    QPersonal: TQuery;
    DSQPersonal: TDataSource;
    procedure Acti_Modi_ConfidencialExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TMovimientoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Confidencial1: TFN1_Pers_Confidencial1;

Const
  CosModificacionRealizada  = 'Modificación de datos confidenciales realizada con éxito';

implementation

uses _func_varias, _cons_pcp;

{$R *.DFM}

{****************************************************************
Procedimiento   : Acti_Modi_ConfidencialExecute
Objetivo        : Modificar los datos confidenciales de el personal
									seleccionado
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 14 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidencial1.Acti_Modi_ConfidencialExecute(
  Sender: TObject);
Var
	I, Indice : Integer;
  Incremento_Nivel : Boolean;
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
  Incremento_Nivel := True;
  For I := 0 To DBPersonal.Count - 1 Do
  	If DBPersonal.Items[I].Selected Then
    Begin
      SPModificacion.Close;
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
      SPModificacion.ParamByName('PE_CONS_SOLICITA').Value := Null;
      SPModificacion.ParamByName('PE_CONS_APROBO').Value := Null;
      //Solicitado por
			If TMovimiento.FieldByName('CONS_SOLICITA').AsString <> '' Then
        SPModificacion.ParamByName('PE_CONS_SOLICITA').AsInteger :=
          TMovimiento.FieldByName('CONS_SOLICITA').AsInteger;
      //Aprobado por
			If TMovimiento.FieldByName('CONS_APROBO').AsString <> '' Then
        SPModificacion.ParamByName('PE_CONS_APROBO').AsInteger :=
          TMovimiento.FieldByName('CONS_APROBO').AsInteger;
      //Personal al cual se hará el Movimiento
      SPModificacion.ParamByName('PE_CONS_PERSONAL').AsInteger :=
        DBPersonal.Items[I].Values[0];
      //Tipo de Contrato a asignar
      If TMovimiento.FieldByName('CONS_PERS_TIPO_CONTRATO').AsString <> '' Then
        SPModificacion.ParamByName('PE_CONS_PERS_TIPO_CONTRATO').AsInteger :=
          TMovimiento.FieldbyName('CONS_PERS_TIPO_CONTRATO').AsInteger
      Else
			Begin
        Indice := DBPersonal.ColumnByFieldName('CONS_PERS_TIPO_CONTRATO').Index;
        SPModificacion.ParamByName('PE_CONS_PERS_TIPO_CONTRATO').AsInteger :=
          DBPersonal.Items[I].Values[Indice];
			End;
      //Período de Pago a asignar
      If TMovimiento.FieldByName('CONS_PERI_PAGO').AsString <> '' Then
        SPModificacion.ParamByName('PE_CONS_PERI_PAGO').AsInteger :=
          TMovimiento.FieldbyName('CONS_PERI_PAGO').AsInteger
      Else
			Begin
        Indice := DBPersonal.ColumnByFieldName('CONS_PERI_PAGO').Index;
        SPModificacion.ParamByName('PE_CONS_PERI_PAGO').AsInteger :=
          DBPersonal.Items[I].Values[Indice];
			End;
      //Nivel Salarial a asignar
      If TMovimiento.FieldByName('CONS_PERS_NIVE_SALARIAL').AsString <> '' Then
        SPModificacion.ParamByName('PE_CONS_PERS_NIVE_SALARIAL').AsInteger :=
          TMovimiento.FieldbyName('CONS_PERS_NIVE_SALARIAL').AsInteger
      Else
			Begin
        Indice := DBPersonal.ColumnByFieldName('CONS_PERS_NIVE_SALARIAL').Index;
        SPModificacion.ParamByName('PE_CONS_PERS_NIVE_SALARIAL').AsInteger :=
          DBPersonal.Items[I].Values[Indice];
			End;
      //Número de contrato a asignar
			If TMovimiento.FieldbyName('NUME_CONTRATO').AsString <> '' Then
        SPModificacion.ParamByName('PE_NUME_CONTRATO').AsString :=
          TMovimiento.FieldbyName('NUME_CONTRATO').AsString
      Else
			Begin
        Indice := DBPersonal.ColumnByFieldName('NUME_CONTRATO').Index;
        SPModificacion.ParamByName('PE_NUME_CONTRATO').AsString :=
          DBPersonal.Items[I].Strings[Indice];
			End;
      //Auxilio Salarial a asignar
      If TMovimiento.FieldbyName('AUXI_SALARIAL').AsString <> '' Then
        SPModificacion.ParamByName('PE_AUXI_SALARIAL').AsFloat :=
          TMovimiento.FieldbyName('AUXI_SALARIAL').AsFloat
      Else
			Begin
        Indice := DBPersonal.ColumnByFieldName('AUXI_SALARIAL').Index;
        SPModificacion.ParamByName('PE_AUXI_SALARIAL').AsFloat :=
          DBPersonal.Items[I].Values[indice];
			End;
      //Auxilio de Transporte a asignar
      If TTemporal.FieldbyName('AUXI_TRANSPORTE').AsString <> '' Then
        SPModificacion.ParamByName('PE_AUXI_TRANSPORTE').AsFloat :=
          TMovimiento.FieldbyName('AUXI_TRANSPORTE').AsFloat
      Else
			Begin
        Indice := DBPersonal.ColumnByFieldName('AUXI_SALARIAL').Index;
        SPModificacion.ParamByName('PE_AUXI_TRANSPORTE').AsFloat :=
          DBPersonal.Items[I].Values[Indice];
			End;
      //Salario a asignar
			If TMovimiento.FieldbyName('SALARIO').AsString <> '' Then
        SPModificacion.ParamByName('PE_VALO_SALARIO').AsInteger :=
          TMovimiento.FieldbyName('SALARIO').AsInteger
      Else
			Begin
        Indice := DBPersonal.ColumnByFieldName('VALO_SALARIO').Index;
        SPModificacion.ParamByName('PE_VALO_SALARIO').AsInteger :=
          DBPersonal.Items[I].Values[Indice];
			End;
      //Vencimiento de Contrato
			If TMovimiento.FieldbyName('DIAS_VENC_CONTRATO').AsString <> '' Then
        SPModificacion.ParamByName('PE_DIAS_VENC_CONTRATO').AsInteger :=
          TMovimiento.FieldbyName('DIAS_VENC_CONTRATO').AsInteger
      Else
			Begin
        Indice := DBPersonal.ColumnByFieldName('DIAS_VENC_CONTRATO').Index;
        SPModificacion.ParamByName('PE_DIAS_VENC_CONTRATO').AsInteger :=
          DBPersonal.Items[I].Values[Indice];
			End;
      //Aplica incentivos
			If TMovimiento.FieldbyName('APLI_INCENTIVO').AsString <> '' Then
        SPModificacion.ParamByName('PE_APLI_INCENTIVO').AsInteger :=
          TMovimiento.FieldbyName('APLI_INCENTIVO').AsInteger
      Else
			Begin
        Indice := DBPersonal.ColumnByFieldName('APLI_INCENTIVO').Index;
        SPModificacion.ParamByName('PE_APLI_INCENTIVO').AsInteger :=
          DBPersonal.Items[I].Values[Indice];
			End;
      //Incremento Salarial a asignar
      SPModificacion.ParamByName('PE_INCR_SALARIO').AsFloat :=
        DBIncremento.Value;
      //Aplicar incremento salarial al Nivel Salarial
      If Incremento_Nivel Then
      Begin
        SPModificacion.ParamByName('PE_INCR_NIVEL').AsInteger := 1;
        Incremento_Nivel := False
      End
      Else
        SPModificacion.ParamByName('PE_INCR_NIVEL').AsInteger := -1;
      SPModificacion.ExecProc;
			//Eliminar el personal en la tabla temporal
      If TTemporal.Locate('CONS_PERSONAL', DBPersonal.Items[I].Values[0], []) Then
	      TTemporal.Delete;
    End;
  //Habilitar los controles de la tabla
  TTemporal.EnableControls;
  EjecutarMensaje(CosModificacionRealizada, mtInformation, [mbOk], 0);
  NecesitaActualizar := True;
  //Cerrar la forma
	If TTemporal.RecordCount = 0 Then
	  Close;
end;

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 11 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidencial1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QTipo_Contrato);
  AbrirDataSet(QNivel_Salarial);
  AbrirDataSet(QPeriodo_Pago);
  AbrirDataSet(QTipo_Documento);
  AbrirDataSet(QPersonal);
  TTemporal.Open;
  TMovimiento.Open;
end;

{****************************************************************
Procedimiento   : TMovimientoBeforePost
Objetivo        : Validar campos requeridos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 15 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidencial1.TMovimientoBeforePost(DataSet: TDataSet);
begin
  inherited;
  //Validar que el Salario este entre el rango del Nivel Salarial
  QNivel_Salarial.Locate('CONS_PERS_NIVE_SALARIAL',
  	TMovimientoCONS_PERS_NIVE_SALARIAL.AsInteger, []);
  If ((TMovimientoSALARIO.AsInteger < QNivel_Salarial.FieldByName('VALO_MINIMO').AsInteger)
  	Or (TMovimientoSALARIO.AsInteger > QNivel_Salarial.FieldByName('VALO_MAXIMO').AsInteger)) Then
  Begin
    EjecutarMensaje(CosSalarioEntreRangoNivel, mtConfirmation, [mbOk], 0);
    TMovimientoSALARIO.AsInteger := QNivel_Salarial.FieldByName('VALO_MINIMO').AsInteger;
  End;
  ValidarDatosDataSet(TMovimiento);
end;

end.

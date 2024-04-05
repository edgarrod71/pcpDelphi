unit UN1_Pers_Confidenciales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  StdCtrls, SohoBtns, SCLButton, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  RxLookup, PCPLookUpComboEdit, SoCtrls, SCLDBLabel, RxMemDS, ActnList,
  ImgList, ExtCtrls, Boxes, PCPFrame;

type
  TFN1_Pers_Confidenciales = class(TForm)
    QPersonal: TQuery;
    DSQPersonal: TDataSource;
    QPersonalCONS_PERSONAL: TIntegerField;
    QPersonalCODI_PERSONAL: TStringField;
    QPersonalPRIM_APELLIDO: TStringField;
    QPersonalSEGU_APELLIDO: TStringField;
    QPersonalNOMBRES: TStringField;
    QPersonalNOMB_COMPLETO: TStringField;
    QPersonalCODI_PERS_CARGO: TStringField;
    QPersonalNOMB_PERS_CARGO: TStringField;
    QPersonalCODI_PERS_NIVE_SALARIAL: TStringField;
    QPersonalVALO_NIVE_SALARIAL: TIntegerField;
    QPersonalCODI_PERS_TIPO_CONTRATO: TStringField;
    QPersonalNOMB_PERS_TIPO_CONTRATO: TStringField;
    QPersonalNUME_CONTRATO: TStringField;
    QPersonalCODI_PERI_PAGO: TStringField;
    QPersonalNOMB_PERI_PAGO: TStringField;
    QPersonalAUXI_TRANSPORTE: TFloatField;
    QPersonalAUXI_SALARIAL: TFloatField;
    QPersonalFECH_SISTEMA: TDateTimeField;
    QPersonalUSUA_SISTEMA: TStringField;
    TTemporal: TRxMemoryData;
    DSTemporal: TDataSource;
    TTemporalCONS_PERSONAL: TIntegerField;
    TTemporalCODI_PERSONAL: TStringField;
    TTemporalNOMB_COMPLETO: TStringField;
    TTemporalNUME_CONTRATO: TStringField;
    TTemporalAUXI_TRANSPORTE: TFloatField;
    TTemporalAUXI_SALARIAL: TFloatField;
    TPeriodo_Pago: TTable;
    DSPeriodo_Pago: TDataSource;
    TNivel_Salarial: TTable;
    DSNivel_Salarial: TDataSource;
    TTipo_Contrato: TTable;
    DSTipo_Contrato: TDataSource;
    TCargos: TTable;
    DSCargos: TDataSource;
    ActionList1: TActionList;
    Acti_Adicionar: TAction;
    Acti_Grabar: TAction;
    Acti_Eliminar: TAction;
    padr_imag_tem1_colo: TImageList;
    Acti_Salir: TAction;
    QPersonalCONS_PERS_CARGO: TIntegerField;
    QPersonalCONS_PERS_NIVE_SALARIAL: TIntegerField;
    QPersonalCONS_PERS_TIPO_CONTRATO: TIntegerField;
    QPersonalCONS_PERI_PAGO: TIntegerField;
    Splitter2: TSplitter;
    TTemporalCONS_PERS_CARGO: TIntegerField;
    TTemporalCONS_PERS_NIVE_SALARIAL: TIntegerField;
    TTemporalCONS_PERS_TIPO_CONTRATO: TIntegerField;
    TTemporalCONS_PERI_PAGO: TIntegerField;
    PCPFrame1: TPCPFrame;
    DBPersonal: TdxDBGrid;
    DBPersonalCONS_PERSONAL: TdxDBGridMaskColumn;
    DBPersonalCODI_PERSONAL: TdxDBGridMaskColumn;
    DBPersonalPRIM_APELLIDO: TdxDBGridMaskColumn;
    DBPersonalSEGU_APELLIDO: TdxDBGridMaskColumn;
    DBPersonalNOMBRES: TdxDBGridMaskColumn;
    DBPersonalCODI_PERS_CARGO: TdxDBGridMaskColumn;
    DBPersonalNOMB_PERS_CARGO: TdxDBGridMaskColumn;
    DBPersonalCODI_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn;
    DBPersonalVALO_NIVE_SALARIAL: TdxDBGridMaskColumn;
    DBPersonalCODI_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    DBPersonalNOMB_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    DBPersonalNUME_CONTRATO: TdxDBGridMaskColumn;
    DBPersonalCODI_PERI_PAGO: TdxDBGridMaskColumn;
    DBPersonalNOMB_PERI_PAGO: TdxDBGridMaskColumn;
    DBPersonalAUXI_TRANSPORTE: TdxDBGridMaskColumn;
    DBPersonalAUXI_SALARIAL: TdxDBGridMaskColumn;
    DBPersonalFECH_SISTEMA: TdxDBGridDateColumn;
    DBPersonalUSUA_SISTEMA: TdxDBGridMaskColumn;
    PCPFrame2: TPCPFrame;
    Panel1: TPanel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    CBNivel_Salarial: TPCPLookUpComboEdit;
    CBPeriodo_Pago: TPCPLookUpComboEdit;
    SCLButton3: TSCLButton;
    SCLButton4: TSCLButton;
    CBTipo_Contrato: TPCPLookUpComboEdit;
    SCLButton2: TSCLButton;
    CBCargo: TPCPLookUpComboEdit;
    SCLButton1: TSCLButton;
    SCLButton5: TSCLButton;
    SCLButton6: TSCLButton;
    SCLButton23: TSCLButton;
    SCLButton26: TSCLButton;
    PCPFrame3: TPCPFrame;
    DBAsignacion: TdxDBGrid;
    DBAsignacionCONS_PERSONAL: TdxDBGridMaskColumn;
    DBAsignacionCODI_PERSONAL: TdxDBGridMaskColumn;
    DBAsignacionNOMB_COMPLETO: TdxDBGridMaskColumn;
    DBAsignacionNUME_CONTRATO: TdxDBGridMaskColumn;
    DBAsignacionAUXI_TRANSPORTE: TdxDBGridMaskColumn;
    DBAsignacionAUXI_SALARIAL: TdxDBGridMaskColumn;
    Panel2: TPanel;
    SCLDBLabel40: TSCLDBLabel;
    CBTipo_Documento: TPCPLookUpComboEdit;
    SCLButton27: TSCLButton;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel68: TSCLDBLabel;
    SCLDBLabel65: TSCLDBLabel;
    TTipo_Documento: TTable;
    DSTipo_Documento: TDataSource;
    ENumero_Documento: TdxEdit;
    DBInicial: TdxDateEdit;
    DBObservaciones: TdxEdit;
    DBFinal: TdxDateEdit;
    SPModificacion: TStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure Acti_AdicionarExecute(Sender: TObject);
    procedure Acti_EliminarExecute(Sender: TObject);
    procedure DSTemporalStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Acti_GrabarExecute(Sender: TObject);
    procedure Acti_SalirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Confidenciales: TFN1_Pers_Confidenciales;

implementation

uses _vent_modal, _func_varias, _cons_pcp;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 11 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidenciales.FormCreate(Sender: TObject);
begin
  TCargos.Open;
  TTipo_Contrato.Open;
  TNivel_Salarial.Open;
  TPeriodo_Pago.Open;
  TTipo_Documento.Open;

  QPersonal.Open;
  TTemporal.Open;
end;

{****************************************************************
Procedimiento   : Acti_AdicionarExecute
Objetivo        : Adicionar en la tabla temporal el personal seleccionado
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 11 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidenciales.Acti_AdicionarExecute(Sender: TObject);
Var
	I : Integer;
begin
	If DBPersonal.SelectedCount < 1 Then
  	Exit;
  //Insertar el personal seleccionado en la tabla temporal
  For I := 0 To DBPersonal.Count - 1 Do
  	If DBPersonal.Items[I].Selected Then
    	If Not TTemporal.Locate('CONS_PERSONAL',
        StrToInt(DBPersonal.Items[I].Strings[0]), []) Then
      Begin
        TTemporal.Insert;
        TTemporalCONS_PERSONAL.AsInteger :=
        	QPersonal.FieldByName('CONS_PERSONAL').AsInteger;
        TTemporalCONS_PERI_PAGO.AsInteger :=
        	QPersonal.FieldByName('CONS_PERI_PAGO').AsInteger;
        TTemporalCONS_PERS_CARGO.AsInteger :=
        	QPersonal.FieldByName('CONS_PERS_CARGO').AsInteger;
        TTemporalCONS_PERS_NIVE_SALARIAL.AsInteger :=
        	QPersonal.FieldByName('CONS_PERS_NIVE_SALARIAL').AsInteger;
        TTemporalCONS_PERS_TIPO_CONTRATO.AsInteger :=
        	QPersonal.FieldByName('CONS_PERS_TIPO_CONTRATO').AsInteger;
        TTemporalCODI_PERSONAL.AsString :=
        	QPersonal.FieldByName('CODI_PERSONAL').AsString;
        TTemporalNOMB_COMPLETO.AsString :=
        	QPersonal.FieldByName('NOMB_COMPLETO').AsString;
        TTemporalNUME_CONTRATO.AsString :=
        	QPersonal.FieldByName('NUME_CONTRATO').AsString;
        TTemporalAUXI_SALARIAL.AsInteger :=
        	QPersonal.FieldByName('AUXI_SALARIAL').AsInteger;
        TTemporalAUXI_TRANSPORTE.AsInteger :=
        	QPersonal.FieldByName('AUXI_TRANSPORTE').AsInteger;
        TTemporal.Post;
      End;
end;

{****************************************************************
Procedimiento   : Acti_EliminarExecute
Objetivo        : Eliminar de la tabla temporal el personal seleccionado
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 11 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidenciales.Acti_EliminarExecute(Sender: TObject);
begin
	If TTemporal.RecordCount < 0 Then
  	Exit;
  TTemporal.Delete;
  //Si la tabla temporal no tiene registros se deshabilita la acción de eliminar
	If TTemporal.RecordCount < 1 Then
    Acti_Eliminar.Enabled := False
  Else
    Acti_Eliminar.Enabled := True;
end;

{****************************************************************
Procedimiento   : DSTemporalStateChange
Objetivo        : Habilitar o deshabilitar la acción de Eliminar
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 11 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidenciales.DSTemporalStateChange(Sender: TObject);
begin
	If TTemporal.RecordCount < 1 Then
    Acti_Eliminar.Enabled := False
  Else
    Acti_Eliminar.Enabled := True;
end;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Destruir la forma
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 11 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidenciales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	Release;
end;

{****************************************************************
Procedimiento   : Acti_GrabarExecute
Objetivo        : Modificar los datos confidenciales de el personal
									seleccionado
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 11 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidenciales.Acti_GrabarExecute(Sender: TObject);
Var
  Mensaje : String;
begin
	//Verificar que no falte información requerida para el movimiento
	Mensaje := '';
	If CBTipo_Documento.Text = '' Then
  	Mensaje := Mensaje + 'Tipo Documento,';
	If ENumero_Documento.Text = '' Then
  	Mensaje := Mensaje + 'Número Documento,';
	If DBInicial.Text = '' Then
  	Mensaje := Mensaje + 'Fecha Inicial,';
  Mensaje := Copy(Mensaje, 1, Length(Mensaje) - 1);
  If Mensaje <> '' Then
  Begin
    EjecutarMensaje(cosFaltanDatos, Mensaje, mtConfirmation, [mbOk],0);
  	Exit;
  End;

  TTemporal.First;
  While Not TTemporal.EOF Do
  Begin
		SPModificacion.Close;
    //Tipo de documento del movimiento
    SPModificacion.ParamByName('PE_CONS_TIPO_DOCUMENTO').AsInteger :=
      TTipo_Documento.FieldByname('CONS_TIPO_DOCUMENTO').AsInteger;
    //Número del documento del Movimiento
    SPModificacion.ParamByName('PE_NUME_DOCUMENTO').AsString :=
      ENumero_Documento.Text;
    //Fecha Inicial del Movimiento
    SPModificacion.ParamByName('PE_FECH_INICIAL').AsDateTime :=
      DBInicial.Date;
    //Fecha Final del Movimiento
    If DBFinal.Text <> '' Then
      SPModificacion.ParamByName('PE_FECH_FINAL').AsDateTime :=
        DBFinal.Date
    Else
      SPModificacion.ParamByName('PE_FECH_FINAL').AsDateTime := varEmpty;
    //Observaciones del Movimiento
    SPModificacion.ParamByName('PE_OBSERVACIONES').AsString :=
      DBObservaciones.Text;
    //Personal al cual se hará el Movimiento
    SPModificacion.ParamByName('PE_CONS_PERSONAL').AsInteger :=
      TTemporal.FieldByname('CONS_PERSONAL').AsInteger;
		//Cargo a asignar
		If CBCargo.Text <> '' Then
      SPModificacion.ParamByName('PE_CONS_PERS_CARGO').AsInteger :=
        TCargos.FieldbyName('CONS_PERS_CARGO').AsInteger
    Else
      SPModificacion.ParamByName('PE_CONS_PERS_CARGO').AsInteger :=
        TTemporal.FieldbyName('CONS_PERS_CARGO').AsInteger;
		//Tipo de Contrato a asignar
		If CBTipo_Contrato.Text <> '' Then
      SPModificacion.ParamByName('PE_CONS_PERS_TIPO_CONTRATO').AsInteger :=
        TTipo_Contrato.FieldbyName('CONS_PERS_TIPO_CONTRATO').AsInteger
    Else
      SPModificacion.ParamByName('PE_CONS_PERS_TIPO_CONTRATO').AsInteger :=
        TTemporal.FieldbyName('CONS_PERS_TIPO_CONTRATO').AsInteger;
		//Período de Pago a asignar
		If CBPeriodo_Pago.Text <> '' Then
      SPModificacion.ParamByName('PE_CONS_PERI_PAGO').AsInteger :=
        TPeriodo_Pago.FieldbyName('CONS_PERI_PAGO').AsInteger
    Else
      SPModificacion.ParamByName('PE_CONS_PERI_PAGO').AsInteger :=
        TTemporal.FieldbyName('CONS_PERI_PAGO').AsInteger;
		//Nivel Salarial a asignar
		If CBNivel_Salarial.Text <> '' Then
      SPModificacion.ParamByName('PE_CONS_PERS_NIVE_SALARIAL').AsInteger :=
        TNivel_Salarial.FieldbyName('CONS_PERS_NIVE_SALARIAL').AsInteger
    Else
      SPModificacion.ParamByName('PE_CONS_PERS_NIVE_SALARIAL').AsInteger :=
        TTemporal.FieldbyName('CONS_PERS_NIVE_SALARIAL').AsInteger;
    //Número de contrato a asignar
		SPModificacion.ParamByName('PE_NUME_CONTRATO').AsString :=
      TTemporal.FieldbyName('NUME_CONTRATO').AsString;
    //Auxilio Salarial a asignar
		SPModificacion.ParamByName('PE_AUXI_SALARIAL').AsFloat :=
      TTemporal.FieldbyName('AUXI_SALARIAL').AsFloat;
    //Auxilio de Transporte a asignar
		SPModificacion.ParamByName('PE_AUXI_TRANSPORTE').AsFloat :=
      TTemporal.FieldbyName('AUXI_TRANSPORTE').AsFloat;
    SPModificacion.ExecProc;
    TTemporal.Next;
  End;
  EjecutarMensaje('Modificación de datos confidenciales realizada con éxito',
  	mtConfirmation, [mbOk], 0);
  //Actualizar la consulta de Personal
  QPersonal.Close;
  QPersonal.Open;
  //Limpiar tabla temporal
  TTemporal.EmptyTable;
end;

{****************************************************************
Procedimiento   : Acti_SalirExecute
Objetivo        : Cerrar la forma
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 11 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidenciales.Acti_SalirExecute(Sender: TObject);
begin
	Close;
end;

end.

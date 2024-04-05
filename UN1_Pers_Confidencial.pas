{ 05/03/2004 10:40:17 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 05/03/2004 10:37:45 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
unit UN1_Pers_Confidencial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_child, SCLPropiedadesForm, Db, DBTables, ImgList, Menus, TB2Item,
  TBX, ActnList, ExtCtrls, TB2Toolbar, dxTLClms, dxTL, TB2Dock,
  TBXDkPanels, dxCntner, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  dxPageControl, dxExEdtr, StdCtrls, SohoBtns, SCLButton, RxLookup,
  PCPLookUpComboEdit, SoCtrls, SCLDBLabel, Boxes, PCPFrame, RxMemDS,
  dxEditor, dxEdLib, DBCtrls, ufra_edit_reportes, dfsSplitter,
  JvExControls, JvComponent, JvGradientHeaderPanel, PCPTituloGradiente,
  SCLDBGrid;

type
  TFN1_Pers_Confidencial = class(T_fvent_child)
    consultaCONS_PERSONAL: TIntegerField;
    consultaCODI_PERSONAL: TStringField;
    consultaPRIM_APELLIDO: TStringField;
    consultaSEGU_APELLIDO: TStringField;
    consultaNOMBRES: TStringField;
    consultaNOMB_COMPLETO: TStringField;
    consultaCODI_PERS_CARGO: TStringField;
    consultaNOMB_PERS_CARGO: TStringField;
    consultaCODI_PERS_NIVE_SALARIAL: TStringField;
    consultaVALO_NIVE_SALARIAL: TIntegerField;
    consultaCODI_PERS_TIPO_CONTRATO: TStringField;
    consultaNOMB_PERS_TIPO_CONTRATO: TStringField;
    consultaNUME_CONTRATO: TStringField;
    consultaCODI_PERI_PAGO: TStringField;
    consultaNOMB_PERI_PAGO: TStringField;
    consultaAUXI_TRANSPORTE: TFloatField;
    consultaAUXI_SALARIAL: TFloatField;
    consultaFECH_SISTEMA: TDateTimeField;
    consultaUSUA_SISTEMA: TStringField;
    consultaCONS_PERS_CARGO: TIntegerField;
    consultaCONS_PERS_NIVE_SALARIAL: TIntegerField;
    consultaCONS_PERS_TIPO_CONTRATO: TIntegerField;
    consultaCONS_PERI_PAGO: TIntegerField;
    TTemporal: TRxMemoryData;
    DSTemporal: TDataSource;
    TCargos: TTable;
    TTipo_Contrato: TTable;
    TNivel_Salarial: TTable;
    TPeriodo_Pago: TTable;
    TTipo_Documento: TTable;
    DSTipo_Documento: TDataSource;
    DSPeriodo_Pago: TDataSource;
    DSNivel_Salarial: TDataSource;
    DSTipo_Contrato: TDataSource;
    DSCargos: TDataSource;
    SPModificacion: TStoredProc;
    Splitter2: TSplitter;
    PCPFrame1: TPCPFrame;
    SCLDBLabel40: TSCLDBLabel;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel68: TSCLDBLabel;
    SCLDBLabel65: TSCLDBLabel;
    CBTipo_Documento: TPCPLookUpComboEdit;
    SCLButton27: TSCLButton;
    ENumero_Documento: TdxEdit;
    DBInicial: TdxDateEdit;
    DBObservaciones: TdxEdit;
    DBFinal: TdxDateEdit;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    CBNivel_Salarial: TPCPLookUpComboEdit;
    CBPeriodo_Pago: TPCPLookUpComboEdit;
    CBTipo_Contrato: TPCPLookUpComboEdit;
    CBCargo: TPCPLookUpComboEdit;
    SCLButton1: TSCLButton;
    SCLButton2: TSCLButton;
    SCLButton4: TSCLButton;
    SCLButton3: TSCLButton;
    Acti_Modi_Confidencial: TAction;
    TBXItem6: TTBXItem;
    padr_gridCONS_PERSONAL: TdxDBGridMaskColumn;
    padr_gridCODI_PERSONAL: TdxDBGridMaskColumn;
    padr_gridPRIM_APELLIDO: TdxDBGridMaskColumn;
    padr_gridSEGU_APELLIDO: TdxDBGridMaskColumn;
    padr_gridNOMBRES: TdxDBGridMaskColumn;
    padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    padr_gridCONS_PERS_CARGO: TdxDBGridMaskColumn;
    padr_gridCODI_PERS_CARGO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_CARGO: TdxDBGridMaskColumn;
    padr_gridCONS_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn;
    padr_gridCODI_PERS_NIVE_SALARIAL: TdxDBGridMaskColumn;
    padr_gridVALO_NIVE_SALARIAL: TdxDBGridMaskColumn;
    padr_gridCONS_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    padr_gridCODI_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERS_TIPO_CONTRATO: TdxDBGridMaskColumn;
    padr_gridNUME_CONTRATO: TdxDBGridMaskColumn;
    padr_gridCONS_PERI_PAGO: TdxDBGridMaskColumn;
    padr_gridCODI_PERI_PAGO: TdxDBGridMaskColumn;
    padr_gridNOMB_PERI_PAGO: TdxDBGridMaskColumn;
    padr_gridAUXI_TRANSPORTE: TdxDBGridMaskColumn;
    padr_gridAUXI_SALARIAL: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    TTemporalCONS_PERSONAL: TIntegerField;
    TTemporalCODI_PERSONAL: TStringField;
    TTemporalPRIM_APELLIDO: TStringField;
    TTemporalSEGU_APELLIDO: TStringField;
    TTemporalNOMBRES: TStringField;
    TTemporalNOMB_COMPLETO: TStringField;
    TTemporalCODI_PERS_CARGO: TStringField;
    TTemporalNOMB_PERS_CARGO: TStringField;
    TTemporalCODI_PERS_NIVE_SALARIAL: TStringField;
    TTemporalVALO_NIVE_SALARIAL: TIntegerField;
    TTemporalCODI_PERS_TIPO_CONTRATO: TStringField;
    TTemporalNOMB_PERS_TIPO_CONTRATO: TStringField;
    TTemporalNUME_CONTRATO: TStringField;
    TTemporalCODI_PERI_PAGO: TStringField;
    TTemporalNOMB_PERI_PAGO: TStringField;
    TTemporalFECH_SISTEMA: TDateField;
    TTemporalUSUA_SISTEMA: TStringField;
    TTemporalCONS_PERS_CARGO: TIntegerField;
    TTemporalCONS_PERS_NIVE_SALARIAL: TIntegerField;
    TTemporalCONS_PERS_TIPO_CONTRATO: TIntegerField;
    TTemporalCONS_PERI_PAGO: TIntegerField;
    TTemporalAUXI_TRANSPORTE: TFloatField;
    TTemporalAUXI_SALARIAL: TFloatField;
    TTemporalCHEQUEADO: TIntegerField;
    padr_gridColumn24: TdxDBGridCheckColumn;
    procedure FormCreate(Sender: TObject);
    procedure Acti_Modi_ConfidencialExecute(Sender: TObject);
    procedure consultaAfterOpen(DataSet: TDataSet);
    procedure TTemporalBeforePost(DataSet: TDataSet);
    procedure padr_gridCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure padr_gridColumn24ToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Pers_Confidencial: TFN1_Pers_Confidencial;

implementation

uses _func_varias, _cons_pcp;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Deshabilita las acciones de Nuevo, Eliminar y
									abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 11 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidencial.FormCreate(Sender: TObject);
begin
  inherited;
  //Deshabilitar Acciones
  padr_acti_nuevo.Enabled := False;
  padr_acti_modificar.Enabled := False;
  padr_acti_eliminar.Enabled := False;

  //Abrir tablas auxiliares
  TCargos.Open;
  TTipo_Contrato.Open;
  TNivel_Salarial.Open;
  TPeriodo_Pago.Open;
  TTipo_Documento.Open;
end;

{****************************************************************
Procedimiento   : Acti_Modi_ConfidencialExecute
Objetivo        : Modificar los datos confidenciales de el personal
									seleccionado
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 11 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidencial.Acti_Modi_ConfidencialExecute(
  Sender: TObject);
Var
	Mensaje : String;
begin
  inherited;
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
		If TTemporalCHEQUEADO.AsInteger = 1 Then
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
    End;  
    TTemporal.Next;
  End;
  EjecutarMensaje('Modificación de datos confidenciales realizada con éxito',
  	mtConfirmation, [mbOk], 0);
  //Actualizar la consulta
  padr_acti_actualizar.Execute;
end;

{****************************************************************
Procedimiento   : consultaAfterOpen
Objetivo        : Carga los datos de la consulta en la tabla temporal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 11 de Mayo de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Confidencial.consultaAfterOpen(DataSet: TDataSet);
Var
	I: Integer;
begin
  inherited;
	If Not TTemporal.Active Then
    TTemporal.Open
  Else
  	TTemporal.EmptyTable;  
  //Cargar Consulta a tabla temporal
  While Not consulta.EOF Do
  Begin
    TTemporal.Insert;
		For I := 0 To consulta.FieldCount - 1 Do
      TTemporal.Fields[I].Value := consulta.Fields[I].Value;
    TTemporal.Post;
    consulta.Next;
  End;

end;

procedure TFN1_Pers_Confidencial.TTemporalBeforePost(DataSet: TDataSet);
begin
  inherited;
  If TTemporalCHEQUEADO.AsString = '' Then
  	TTemporalCHEQUEADO.AsInteger := -1;
end;

procedure TFN1_Pers_Confidencial.padr_gridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  inherited;
  if ANode.HasChildren then
    Exit;
  //Negrilla en el nombre cuando es él el responsable
  Value := ANode.Values[padr_grid.ColumnByFieldName('CHEQUEADO').Index];
  if not VarIsNull(Value) then
  begin
    if Value = 1 then
    begin
      aFont.Color := clMaroon;
    end
    else
    begin
      aFont.Color := clWindowText;
    end
  end;
end;

procedure TFN1_Pers_Confidencial.padr_gridColumn24ToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
begin
  inherited;
	padr_grid.Repaint;
end;

end.

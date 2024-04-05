unit UN1_Pers_Maes_Anulados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  dxCntner, Db, SCLPropiedadesForm, DBActns, ActnList, ImgList, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TB2Item, TBX,
  TB2Dock, TB2Toolbar, Boxes, PCPFrame, SohoBtns, SCLButton, RxLookup,
  PCPLookUpComboEdit, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  RxMemDS, TBXDkPanels, TBXButtonSCL, dfsSplitter, PCPProceso;

type
  TFN1_Pers_Maes_Anulados = class(T_fvent_modal)
    PCPFrame1: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    CBResponsable: TPCPLookUpComboEdit;
    SCLButton2: TTBXButtonSCL;
    SCLDBLabel2: TSCLDBLabel;
    DBObservaciones: TdxDBEdit;
    PCPFrame2: TPCPFrame;
    PCPFrame3: TPCPFrame;
    DBPersonal: TdxDBGrid;
    DBMovimientos: TdxDBGrid;
    QPersonal: TQuery;
    DSQPersonal: TDataSource;
    DSQMovimientos: TDataSource;
    QMovimientos: TQuery;
    QPersonalCONS_PERSONAL: TIntegerField;
    QPersonalCODI_PERSONAL: TStringField;
    QPersonalNOMB_COMPLETO: TStringField;
    QMovimientosCONS_PERS_MOVIMIENTO: TIntegerField;
    QMovimientosCONS_PERSONAL: TIntegerField;
    QMovimientosFECH_INICIAL: TDateTimeField;
    QMovimientosFECH_FINAL: TDateTimeField;
    QMovimientosNUME_DOCUMENTO: TStringField;
    QMovimientosOBSERVACIONES: TStringField;
    QMovimientosNOMB_PERS_TIPO_MOVIMIENTO: TStringField;
    QMovimientosNOMB_PERS_MOVI_TIPO_DOCUMENTO: TStringField;
    DBPersonalCONS_PERSONAL: TdxDBGridMaskColumn;
    DBPersonalCODI_PERSONAL: TdxDBGridMaskColumn;
    DBPersonalNOMB_COMPLETO: TdxDBGridMaskColumn;
    DBMovimientosCONS_PERS_MOVIMIENTO: TdxDBGridMaskColumn;
    DBMovimientosCONS_PERSONAL: TdxDBGridMaskColumn;
    DBMovimientosNOMB_PERS_TIPO_MOVIMIENTO: TdxDBGridMaskColumn;
    DBMovimientosNOMB_PERS_MOVI_TIPO_DOCUMENTO: TdxDBGridMaskColumn;
    DBMovimientosNUME_DOCUMENTO: TdxDBGridMaskColumn;
    DBMovimientosFECH_INICIAL: TdxDBGridDateColumn;
    DBMovimientosFECH_FINAL: TdxDBGridDateColumn;
    DBMovimientosOBSERVACIONES: TdxDBGridMaskColumn;
    Acti_Anular_Movimientos: TAction;
    TAnulados: TRxMemoryData;
    DSAnulados: TDataSource;
    TAnuladosCONS_PERSONAL: TIntegerField;
    TAnuladosOBSERVACIONES: TStringField;
    QInsertar: TQuery;
    QResponsables: TQuery;
    DSQResponsables: TDataSource;
    QResponsablesCONS_PERSONAL: TIntegerField;
    QResponsablesNOMB_COMPLETO: TStringField;
    QMovimientosCODI_PERSONAL: TStringField;
    QMovimientosNOMB_COMPLETO: TStringField;
    DBMovimientosCODI_PERSONAL: TdxDBGridMaskColumn;
    DBMovimientosNOMB_COMPLETO: TdxDBGridMaskColumn;
    TBItem1: TTBItem;
    dfsSplitter1: TdfsSplitter;
    procedure DBPersonalSelectedCountChange(Sender: TObject);
    procedure Acti_Anular_MovimientosExecute(Sender: TObject);
    procedure TAnuladosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBPersonalChangeNodeEx(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tipo_Movimiento : String;
    procedure Consultar_Movimientos;
  end;

var
  FN1_Pers_Maes_Anulados: TFN1_Pers_Maes_Anulados;

Const
	Cabeza_Consulta = 'SELECT CONS_PERSONAL, CODI_PERSONAL, NOMB_COMPLETO ' +
										'FROM GLO_PERSONAL ' +
										'WHERE CONS_PERSONAL IN( ' +
										' SELECT M.CONS_PERSONAL ' +
										' FROM GLO_PERS_MOVIMIENTOS M, GLO_PERS_TIPO_MOVIMIENTO T ' +
										' WHERE M.CONS_PERS_TIPO_MOVIMIENTO = T.CONS_PERS_TIPO_MOVIMIENTO ' +
										'  AND T.CONS_FAMI_MOVIMIENTO <> 1 ';
	Pie_Consulta			= '  AND M.CONS_PERS_MOVIMIENTO NOT IN( ' +
										'   SELECT CONS_PERS_MOVIMIENTO ' +
										'   FROM GLO_PERS_MOVI_ANULADOS)) ' +
										'ORDER BY CONS_PERSONAL ';
implementation

uses _func_varias, _cons_pcp, _Traductor;

{$R *.DFM}

procedure TFN1_Pers_Maes_Anulados.Consultar_Movimientos;
Var
	I : Integer;
  Personal : String;
Const
	Encabezado = 'SELECT M.CONS_PERS_MOVIMIENTO, M.CONS_PERSONAL, M.FECH_INICIAL, ' +
							 ' M.FECH_FINAL, M.NUME_DOCUMENTO, M.OBSERVACIONES, ' +
							 ' T.NOMB_PERS_TIPO_MOVIMIENTO, D.NOMB_PERS_MOVI_TIPO_DOCUMENTO ' +
							 'FROM GLO_PERS_MOVIMIENTOS M, GLO_PERS_TIPO_MOVIMIENTO T, ' +
							 ' GLO_PERS_MOVI_TIPO_DOCUMENTO D ' +
							 'WHERE M.CONS_PERS_TIPO_MOVIMIENTO = T.CONS_PERS_TIPO_MOVIMIENTO ' +
							 ' AND M.CONS_PERS_MOVI_TIPO_DOCUMENTO = D.CONS_PERS_MOVI_TIPO_DOCUMENTO ' +
							 ' AND M.CONS_PERS_MOVIMIENTO NOT IN ( ' +
							 '  SELECT CONS_PERS_MOVIMIENTO ' +
							 '  FROM GLO_PERS_MOVI_ANULADOS) ';
	Orden = 'ORDER BY M.CONS_PERS_MOVIMIENTO';
begin
  QMovimientos.Close;
  QMovimientos.Sql.Clear;
  Personal := '';
  For I := 0 To DBPersonal.Count - 1 Do
  	If DBPersonal.Items[I].Selected Then
    	Personal := Personal + DBPersonal.Items[I].Strings[0] + ',';
  Personal := Copy(Personal, 1, Length(Personal) - 1);
  If Personal <> '' Then
  Begin
		QMovimientos.Sql.Add(Encabezado);
		QMovimientos.Sql.Add('AND T.CONS_FAMI_MOVIMIENTO IN (' + Tipo_Movimiento + ')');
    QMovimientos.Sql.Add('AND M.CONS_PERSONAL IN (' + Personal + ')');
 		QMovimientos.Sql.Add(Orden);
    QMovimientos.Open;
  End;
end;

procedure TFN1_Pers_Maes_Anulados.DBPersonalSelectedCountChange(
  Sender: TObject);
begin
  inherited;
  Consultar_Movimientos;
  DBMovimientos.Columns[2].Visible := (DBPersonal.SelectedCount > 1);
  DBMovimientos.Columns[3].Visible := (DBPersonal.SelectedCount > 1);
end;

procedure TFN1_Pers_Maes_Anulados.Acti_Anular_MovimientosExecute(
  Sender: TObject);
Var
	I : Integer;
Const
	CosAnulados = 'Movimientos Anulados con Exito';
  CosTituloMensaje = 'Transacción exitosa';
begin
  inherited;
	//Grabo los datos de la anulación
	If (TAnulados.State In [dsEdit, dsInsert]) Then
  	try
      TAnulados.Post;
    except
			Abort;
    end;
  //Verifico que esten los datos de la anulación
  If TAnulados.RecordCount = 0 Then
  	Exit;

  //Verifico que este seleccionado al menos 1 movimiento
	If DBMovimientos.SelectedCount = 0 Then
  	Exit;

  //Busco los movimientos seleccionados
	For I := 0 To DBMovimientos.Count - 1 Do
  	If DBMovimientos.Items[I].Selected Then
    Begin
			QInsertar.Close;
      QInsertar.ParamByName('CONS_PERS_MOVIMIENTO').AsInteger :=
      	DBMovimientos.Items[I].Values[0];
      QInsertar.ParamByName('CONS_PERSONAL').AsInteger :=
        TAnulados.FieldByName('CONS_PERSONAL').AsInteger;
      QInsertar.ParamByName('OBSERVACIONES').AsString :=
				TAnulados.FieldByName('OBSERVACIONES').AsString;
      QInsertar.ExecSQL;
      QInsertar.Close;
    End;
  EjecutarMensaje(CosTituloMensaje, CosAnulados, mtinformation, [mbOk], 0);
  NecesitaActualizar := True;
	QPersonal.Close;
  QPersonal.Open;
  If QPersonal.RecordCount = 0 Then
  	Close;
end;

procedure TFN1_Pers_Maes_Anulados.TAnuladosBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidarDatosDataSet(TAnulados);
end;

procedure TFN1_Pers_Maes_Anulados.FormCreate(Sender: TObject);
begin
  inherited;
  AbrirDataSet(QResponsables);
  TAnulados.Open;
  Insertar_Palabras(Self, WKLenguaje);
end;

procedure TFN1_Pers_Maes_Anulados.DBPersonalChangeNodeEx(Sender: TObject);
begin
  inherited;
  Consultar_Movimientos;
end;

end.

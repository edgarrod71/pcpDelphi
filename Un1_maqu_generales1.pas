unit Un1_maqu_generales1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, RxMemDS, Db, dxExEdtr, dxEdLib, dxDBELib, ufra_fotografiaDB,
  SoSplit, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxEditor, StdCtrls,
  TBXDkPanels, TBXButtonSCL, RxLookup, PCPLookUpComboEdit, PCPFrame,
  SCLTabs, PictureContainer, DBTables, AdvPanel,
  SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes, PCPProceso,
  SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock, TB2Toolbar;

  
type
  Tfn1_maqu_generales1 = class(T_fvent_modal)
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
    DSQGrupos: TDataSource;
    DSQTipo_Recurso: TDataSource;
    DSQFamilias: TDataSource;
    DSQMarcas: TDataSource;
    DSQTipo_Puntada: TDataSource;
    DSRecursos: TDataSource;
    TRecursos: TTable;
    TRecursosCONS_RECURSO: TIntegerField;
    TRecursosCODI_RECURSO: TStringField;
    TRecursosCODI_INTE_RECURSO: TStringField;
    TRecursosCONS_RECU_GRUPO: TIntegerField;
    TRecursosCONS_RECU_TIPO: TIntegerField;
    TRecursosCONS_RECU_FAMILIA: TIntegerField;
    TRecursosCONS_RECU_MARCA: TIntegerField;
    TRecursosCLASE: TStringField;
    TRecursosNUME_SERIE: TStringField;
    TRecursosCONS_RECU_TIPO_PUNTADA: TIntegerField;
    TRecursosRPM: TIntegerField;
    pagina: TSCLPageControl;
    PCRecurso: TSCLTabSheet;
    PCPFrame2: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel16: TSCLDBLabel;
    DBCodigo_Recurso: TdxDBEdit;
    DBCodigo_Interno: TdxDBEdit;
    CBGrupo_Recurso: TPCPLookUpComboEdit;
    CBTipo_Recurso: TPCPLookUpComboEdit;
    CBFamilia_Recurso: TPCPLookUpComboEdit;
    CBMarca_Recurso: TPCPLookUpComboEdit;
    DBClase: TdxDBEdit;
    SCLButton1: TTBXButtonSCL;
    SCLButton2: TTBXButtonSCL;
    SCLButton3: TTBXButtonSCL;
    SCLButton4: TTBXButtonSCL;
    PCGenerales: TSCLTabSheet;
    PCImagen: TSCLTabSheet;
    Tabla_VentanaCODI_RECURSO: TStringField;
    TRecursosPRESTAMO: TIntegerField;
    TRecursosVELOCIDAD: TFloatField;
    TRecursosIMAGEN: TBlobField;
    TRecursosAJUS_IMAGEN: TIntegerField;
    PCPFrame3: TPCPFrame;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    Label1: TLabel;
    DBSerie: TdxDBEdit;
    CBTipo_Puntada: TPCPLookUpComboEdit;
    DBRPM: TdxDBCurrencyEdit;
    SCLButton5: TTBXButtonSCL;
    DBVelocidad_Corte: TdxDBCurrencyEdit;
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
    CBPrestamo: TdxDBCheckEdit;
    QCaracteristicas_Asignadas: TQuery;
    DSCaracteristicas_Asignadas: TDataSource;
    TCaracteristicas_Asignadas: TTable;
    TCaracteristicas_AsignadasCONS_RECU_CARACTERISTICA: TIntegerField;
    TCaracteristicas_AsignadasCONS_RECURSO: TIntegerField;
    TCaracteristicas_AsignadasCONS_RECU_TIPO_CARACTERISTICA: TIntegerField;
    TCaracteristicas_AsignadasVALOR: TStringField;
    TCaracteristicas_AsignadasCODI_TIPO_CARACTERISTICA: TStringField;
    TCaracteristicas_AsignadasNOMB_TIPO_CARACTERISTICA: TStringField;
    PCPFrame7: TPCPFrame;
    DBAsignados: TdxDBGrid;
    DBAsignadosCONS_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosCODI_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosNOMB_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosVALOR: TdxDBGridMaskColumn;
    QGrupos: TQuery;
    QTipo_Recurso: TQuery;
    QFamilias: TQuery;
    QMarcas: TQuery;
    QTipo_Puntada: TQuery;
    QTipo_Documento_Movimiento: TQuery;
    QPersonal: TQuery;
    TRecursosDETA_IMAGEN: TBlobField;
    TRecursosAJUS_DETA_IMAGEN: TIntegerField;
    PCPFrame1: TPCPFrame;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    PCPFrame4: TPCPFrame;
    ffra_fotografiaDB2: Tffra_fotografiaDB;
    sohoSplitter1: TsohoSplitter;
    TCaracteristicas_Temporal: TRxMemoryData;
    DSCaracteristicas_Temporal: TDataSource;
    TCaracteristicas_TemporalVALOR: TStringField;
    TCaracteristicas_TemporalCODI_TIPO_CARACTERISTICA: TStringField;
    TCaracteristicas_TemporalNOMB_TIPO_CARACTERISTICA: TStringField;
    QCaracteristicas_AsignadasCONS_TIPO_CARACTERISTICA: TIntegerField;
    QCaracteristicas_AsignadasCODI_TIPO_CARACTERISTICA: TStringField;
    QCaracteristicas_AsignadasNOMB_TIPO_CARACTERISTICA: TStringField;
    QCaracteristicas_AsignadasCONS_RECU_TIPO_CARACTERISTICA: TIntegerField;
    QEliminar_Caracteristicas: TQuery;
    procedure TRecursosBeforePost(DataSet: TDataSet);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DSRecursosStateChange(Sender: TObject);
    procedure CBPrestamoChange(Sender: TObject);
    procedure DSCaracteristicas_AsignadasStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TCaracteristicas_AsignadasAfterOpen(DataSet: TDataSet);
    procedure CBFamilia_RecursoChange(Sender: TObject);
    procedure Tabla_VentanaAfterPost(DataSet: TDataSet);
    procedure TCaracteristicas_AsignadasBeforePost(DataSet: TDataSet);
    procedure CBGrupo_RecursoChange(Sender: TObject);
    procedure CBTipo_RecursoChange(Sender: TObject);
    procedure Tabla_VentanaBeforeCancel(DataSet: TDataSet);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure DSCaracteristicas_TemporalStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fn1_maqu_generales1: Tfn1_maqu_generales1;

implementation
uses _func_varias, _cons_pcp, _Traductor;
{$R *.DFM}

{****************************************************************
Procedimiento   : TRecursosBeforePost
Objetivo        : Valida que no falte ningún campo requerido
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 7 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_generales1.TRecursosBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidarDatosDataSet(TRecursos);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Guardar el recurso
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 7 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_generales1.Tabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
	If (TRecursos.State In [dsEdit, dsInsert]) Then
    try
      TRecursos.Post;
    except
			Abort;
    end;
{	If (TCaracteristicas_Asignadas.State In [dsEdit, dsInsert]) Then
    try
      TCaracteristicas_Asignadas.Post;
    except
			Abort;
    end;}
end;

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 7 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_generales1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  TCaracteristicas_Temporal.Open;

  AbrirDataSet(QTipo_Documento_Movimiento);
  AbrirDataSet(QPersonal);

  AbrirDataSet(QGrupos);
  AbrirDataSet(QTipo_Recurso);
  AbrirDataSet(QFamilias);
  AbrirDataSet(QMarcas);

  AbrirDataSet(QTipo_Puntada);

  TRecursos.Filter := 'CONS_RECURSO = ' +
    Tabla_Ventana.FieldByName('CONS_RECURSO').AsString;
  TRecursos.Filtered := True;
  AbrirDataSet(TRecursos);

  AbrirDataSet(QCaracteristicas_Asignadas);
  AbrirDataSet(TCaracteristicas_Asignadas);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : DSRecursosStateChange
Objetivo        : Poner en edición la tabla maestra si la detalle
									esta en edición
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 7 de junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_generales1.DSRecursosStateChange(Sender: TObject);
begin
  inherited;
	If ((DSRecursos.State = dsEdit) And (Tabla_Ventana.State = dsBrowse)) Then
    Tabla_Ventana.Edit;
end;

procedure Tfn1_maqu_generales1.CBPrestamoChange(Sender: TObject);
begin
  inherited;
  //Habilito o deshabilito la fecha final
	If CBPrestamo.Checked Then
    DBFecha_Final.Enabled := True
  Else
	Begin
    DBFecha_Final.Enabled := False;
    If (Tabla_Ventana.State In [dsInsert,dsEdit]) Then
      Tabla_Ventana.FieldByName('FECH_FINAL').AsString := '';
  End;
end;

procedure Tfn1_maqu_generales1.DSCaracteristicas_AsignadasStateChange(
  Sender: TObject);
begin
  inherited;
	If ((DSCaracteristicas_Asignadas.State = dsEdit) And (Tabla_Ventana.State = dsBrowse)) Then
    Tabla_Ventana.Edit;
end;

procedure Tfn1_maqu_generales1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  NecesitaActualizar := True;
end;

procedure Tfn1_maqu_generales1.TCaracteristicas_AsignadasAfterOpen(
  DataSet: TDataSet);
{Var
	I : Integer;}
begin
  inherited;
	While Not TCaracteristicas_Asignadas.EOF Do
  Begin
    TCaracteristicas_Temporal.Insert;
    TCaracteristicas_TemporalCODI_TIPO_CARACTERISTICA.AsString :=
    	TCaracteristicas_Asignadas.FieldByname('CODI_TIPO_CARACTERISTICA').AsString;
    TCaracteristicas_TemporalNOMB_TIPO_CARACTERISTICA.AsString :=
    	TCaracteristicas_Asignadas.FieldByname('NOMB_TIPO_CARACTERISTICA').AsString;
    TCaracteristicas_TemporalVALOR.AsString :=
    	TCaracteristicas_Asignadas.FieldByname('VALOR').AsString;
    TCaracteristicas_Temporal.Post;
  	TCaracteristicas_Asignadas.Next;
  End;
end;

procedure Tfn1_maqu_generales1.CBFamilia_RecursoChange(Sender: TObject);
begin
  inherited;
  TCaracteristicas_Temporal.First;
  While Not TCaracteristicas_Temporal.EOF Do
  Begin
		If Not QCaracteristicas_Asignadas.Locate('CODI_TIPO_CARACTERISTICA',
    	TCaracteristicas_TemporalCODI_TIPO_CARACTERISTICA.AsString, []) Then
      TCaracteristicas_Temporal.Delete
    Else
			TCaracteristicas_Temporal.Next;
  End;

  QCaracteristicas_Asignadas.First;
  While Not QCaracteristicas_Asignadas.EOF Do
  Begin
		If Not TCaracteristicas_Temporal.Locate('CODI_TIPO_CARACTERISTICA',
    	QCaracteristicas_Asignadas.FieldByName('CODI_TIPO_CARACTERISTICA').AsString, []) Then
    Begin
      TCaracteristicas_Temporal.Insert;
      TCaracteristicas_TemporalCODI_TIPO_CARACTERISTICA.AsString :=
        QCaracteristicas_Asignadas.FieldByname('CODI_TIPO_CARACTERISTICA').AsString;
      TCaracteristicas_TemporalNOMB_TIPO_CARACTERISTICA.AsString :=
        QCaracteristicas_Asignadas.FieldByname('NOMB_TIPO_CARACTERISTICA').AsString;
      TCaracteristicas_TemporalVALOR.AsString := 'NA';
      TCaracteristicas_Temporal.Post;
    End;
  	QCaracteristicas_Asignadas.Next;
  End;
end;

procedure Tfn1_maqu_generales1.Tabla_VentanaAfterPost(DataSet: TDataSet);
begin
  inherited;
  QEliminar_Caracteristicas.Close;
  QEliminar_Caracteristicas.ExecSQL;
  QEliminar_Caracteristicas.Close;
  TCaracteristicas_Asignadas.Refresh;

  TCaracteristicas_Temporal.First;
  While Not TCaracteristicas_Temporal.EOF Do
  Begin
    QCaracteristicas_Asignadas.Locate('CODI_TIPO_CARACTERISTICA',
    	TCaracteristicas_AsignadasCODI_TIPO_CARACTERISTICA.AsString, []);
    TCaracteristicas_Asignadas.Insert;
		TCaracteristicas_Asignadas.FieldByname('CONS_RECU_TIPO_CARACTERISTICA').AsInteger :=
			QCaracteristicas_Asignadas.FieldByname('CONS_RECU_TIPO_CARACTERISTICA').AsInteger;
    TCaracteristicas_Asignadas.FieldByname('VALOR').AsString :=
    	TCaracteristicas_Temporal.FieldByname('VALOR').AsString;
    TCaracteristicas_Asignadas.Post;
		TCaracteristicas_Temporal.Next;
  End;
  TCaracteristicas_Temporal.First;
end;

procedure Tfn1_maqu_generales1.TCaracteristicas_AsignadasBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  TCaracteristicas_Asignadas.FieldByName('CONS_RECU_CARACTERISTICA').AsInteger :=
    GenerarSecuencia('GLO_RECU_CARACTERISTICAS', 'CONS_RECU_CARACTERISTICA');
end;

procedure Tfn1_maqu_generales1.CBGrupo_RecursoChange(Sender: TObject);
begin
  inherited;
  TRecursos.FieldByName('CONS_RECU_TIPO').Clear;
  TRecursos.FieldByName('CONS_RECU_FAMILIA').Clear;
end;

procedure Tfn1_maqu_generales1.CBTipo_RecursoChange(Sender: TObject);
begin
  inherited;
  TRecursos.FieldByName('CONS_RECU_FAMILIA').Clear;
end;

procedure Tfn1_maqu_generales1.Tabla_VentanaBeforeCancel(
  DataSet: TDataSet);
begin
  inherited;
	If TRecursos.State In [dsEdit, dsInsert] Then
    TRecursos.Cancel;
end;

procedure Tfn1_maqu_generales1.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
  If Tabla_Ventana.State = dsEdit Then
    TRecursos.Edit;
end;

procedure Tfn1_maqu_generales1.DSCaracteristicas_TemporalStateChange(
  Sender: TObject);
begin
  inherited;
	If TCaracteristicas_Temporal.State = dsEdit Then
    Tabla_Ventana.Edit;
end;

end.

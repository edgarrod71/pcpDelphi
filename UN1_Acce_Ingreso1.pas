unit UN1_Acce_Ingreso1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, DBTables, AdvPanel, dxExEdtr,
  RxMemDS, Db, dxEdLib, dxDBELib, dxEditor, ufra_fotografiaDB, SoSplit,
  ufra_maqu_ubicacion, dxTL, dxDBCtrl, dxDBGrid, dxCntner, TBXDkPanels,
  TBXButtonSCL, RxLookup, PCPLookUpComboEdit, PCPFrame, SCLTabs,
  SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes, PCPProceso,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock,
  TB2Toolbar, dxDBTLCl, dxGrClms;

  
type
  TFN1_Acce_Ingreso1 = class(T_fvent_modal)
    Tabla_VentanaCONS_ACCE_MOVIMIENTO: TIntegerField;
    Tabla_VentanaCONS_ACCE_TIPO_MOVIMIENTO: TIntegerField;
    Tabla_VentanaCONS_ACCESORIO: TIntegerField;
    Tabla_VentanaCONS_TIPO_DOCUMENTO: TIntegerField;
    Tabla_VentanaNUME_DOCUMENTO: TStringField;
    Tabla_VentanaCONS_SOLICITA: TIntegerField;
    Tabla_VentanaCONS_ENTREGA: TIntegerField;
    Tabla_VentanaCONS_RECIBE: TIntegerField;
    Tabla_VentanaFECH_INICIAL: TDateTimeField;
    Tabla_VentanaFECH_FINAL: TDateTimeField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    QTipo_Documento: TQuery;
    DSQTipo_Documento: TDataSource;
    QPersonal: TQuery;
    DSQPersonal: TDataSource;
    dxPageControl1: TSCLPageControl;
    PCGenerales: TSCLTabSheet;
    TAccesorios: TTable;
    DSAccesorios: TDataSource;
    PCPFrame1: TPCPFrame;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    dxDBEdit3: TdxDBEdit;
    PCPLookUpComboEdit4: TPCPLookUpComboEdit;
    PCPLookUpComboEdit5: TPCPLookUpComboEdit;
    SCLDBLabel11: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    PCPLookUpComboEdit6: TPCPLookUpComboEdit;
    SCLDBLabel13: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    SCLDBLabel14: TSCLDBLabel;
    dxDBEdit5: TdxDBEdit;
    SCLDBLabel15: TSCLDBLabel;
    dxDBEdit6: TdxDBEdit;
    PCUbicacion: TSCLTabSheet;
    PCImagenes: TSCLTabSheet;
    PCPFrame2: TPCPFrame;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    PCPFrame4: TPCPFrame;
    ffra_fotografiaDB2: Tffra_fotografiaDB;
    sohoSplitter1: TsohoSplitter;
    TTraslados: TTable;
    DSTraslados: TDataSource;
    PCCaracteristicas: TSCLTabSheet;
    PCPFrame7: TPCPFrame;
    DBAsignados: TdxDBGrid;
    TAccesorios_Temporal: TRxMemoryData;
    DSAccesorios_Temporal: TDataSource;
    DSTraslados_Temporal: TDataSource;
    TTraslados_Temporal: TRxMemoryData;
    TAccesoriosCONS_ACCESORIO: TIntegerField;
    TAccesoriosNUME_INVE_ACCESORIO: TStringField;
    TAccesoriosCONS_ACCE_GRUPO: TIntegerField;
    TAccesoriosCONS_ACCE_TIPO: TIntegerField;
    TAccesoriosCONS_RECU_MARCA: TIntegerField;
    TAccesoriosNUME_SERIE: TStringField;
    TAccesoriosUSO: TStringField;
    TAccesoriosMATE_RECOMENDADO: TStringField;
    TAccesoriosIMAGEN: TBlobField;
    TAccesoriosAJUS_IMAGEN: TIntegerField;
    TAccesoriosDETA_IMAGEN: TBlobField;
    TAccesoriosAJUS_DETA_IMAGEN: TIntegerField;
    TTrasladosCONS_ACCE_MOVIMIENTO: TIntegerField;
    TTrasladosCONS_UBIC_TIPO: TIntegerField;
    TTrasladosCONS_EMPRESA: TIntegerField;
    TTrasladosCONS_AREA: TIntegerField;
    TTrasladosCONS_PLANTA: TIntegerField;
    TTrasladosCONS_PLAN_LINEA: TIntegerField;
    TTrasladosCONS_LINE_SECCION: TIntegerField;
    TTrasladosCONS_BODEGA: TIntegerField;
    TTrasladosOTRA_UBICACION: TStringField;
    TAccesorios_TemporalCONS_ACCESORIO: TIntegerField;
    TAccesorios_TemporalNUME_INVE_ACCESORIO: TStringField;
    TAccesorios_TemporalCONS_ACCE_GRUPO: TIntegerField;
    TAccesorios_TemporalCONS_ACCE_TIPO: TIntegerField;
    TAccesorios_TemporalCONS_RECU_MARCA: TIntegerField;
    TAccesorios_TemporalNUME_SERIE: TStringField;
    TAccesorios_TemporalUSO: TStringField;
    TAccesorios_TemporalMATE_RECOMENDADO: TStringField;
    TAccesorios_TemporalIMAGEN: TBlobField;
    TAccesorios_TemporalAJUS_IMAGEN: TIntegerField;
    TAccesorios_TemporalDETA_IMAGEN: TBlobField;
    TAccesorios_TemporalAJUS_DETA_IMAGEN: TIntegerField;
    TTraslados_TemporalCONS_UBIC_TIPO: TIntegerField;
    TTraslados_TemporalCONS_EMPRESA: TIntegerField;
    TTraslados_TemporalCONS_AREA: TIntegerField;
    TTraslados_TemporalCONS_PLANTA: TIntegerField;
    TTraslados_TemporalCONS_PLAN_LINEA: TIntegerField;
    TTraslados_TemporalCONS_LINE_SECCION: TIntegerField;
    TTraslados_TemporalCONS_BODEGA: TIntegerField;
    TTraslados_TemporalOTRA_UBICACION: TStringField;
    Tabla_VentanaNUME_INVE_ACCESORIO: TStringField;
    QGrupos: TQuery;
    DSQGrupos: TDataSource;
    QTipos: TQuery;
    DSQTipos: TDataSource;
    QMarcas: TQuery;
    DSQMarcas: TDataSource;
    FMovimiento: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    CBTipo_Documento: TPCPLookUpComboEdit;
    SCLDBLabel2: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    SCLDBLabel3: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    SCLDBLabel4: TSCLDBLabel;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    SCLDBLabel5: TSCLDBLabel;
    PCPLookUpComboEdit3: TPCPLookUpComboEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel7: TSCLDBLabel;
    dxDBDateEdit2: TdxDBDateEdit;
    SCLDBLabel8: TSCLDBLabel;
    edit_observaciones: TdxDBMemo;
    dxPageControl2: TSCLPageControl;
    dxTabSheet1: TSCLTabSheet;
    PCPFrame6: TPCPFrame;
    ffra_maqu_ubicacion1: Tffra_maqu_ubicacion;
    dxTabSheet2: TSCLTabSheet;
    PCPFrame3: TPCPFrame;
    SCLDBLabel16: TSCLDBLabel;
    CBCodigo_Recuso: TPCPLookUpComboEdit;
    SCLButton7: TTBXButtonSCL;
    SCLDBLabel17: TSCLDBLabel;
    CBCodigo_Interno_Recruso: TPCPLookUpComboEdit;
    SCLButton8: TTBXButtonSCL;
    PCPFrame5: TPCPFrame;
    ffra_maqu_ubicacion2: Tffra_maqu_ubicacion;
    SCLDBLabel18: TSCLDBLabel;
    dxDBEdit7: TdxDBEdit;
    SCLDBLabel19: TSCLDBLabel;
    dxDBEdit8: TdxDBEdit;
    SCLDBLabel20: TSCLDBLabel;
    dxDBEdit9: TdxDBEdit;
    SCLDBLabel21: TSCLDBLabel;
    dxDBEdit10: TdxDBEdit;
    SCLDBLabel22: TSCLDBLabel;
    dxDBEdit11: TdxDBEdit;
    SCLDBLabel23: TSCLDBLabel;
    dxDBEdit12: TdxDBEdit;
    QRecursos: TQuery;
    DSQRecursos: TDataSource;
    TTrasladosCONS_RECURSO: TIntegerField;
    TTraslados_TemporalCONS_RECURSO: TIntegerField;
    QRecurso_Ubicacion: TQuery;
    DSQRecurso_Ubicacion: TDataSource;
    TCaracteristicas_Asignadas_Temporal: TRxMemoryData;
    TCaracteristicas_Asignadas_TemporalVALOR: TStringField;
    TCaracteristicas_Asignadas_TemporalCODI_ACCE_TIPO_CARACTERISTIC: TStringField;
    DSCaracteristicas_Asignadas_Temporal: TDataSource;
    QTipo_Caracteristicas_Tipo: TQuery;
    TCaracteristicas_Asignadas_TemporalNOMB_ACCE_TIPO_CARACTERISTICA: TStringField;
    DBAsignadosCODI_ACCE_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosNOMB_ACCE_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosVALOR: TdxDBGridMaskColumn;
    TCaracteristicas_Asignadas: TTable;
    DSCaracteristicas_Asignadas: TDataSource;
    TCaracteristicas_AsignadasCONS_ACCE_CARACTERISTICA: TIntegerField;
    TCaracteristicas_AsignadasCONS_ACCESORIO: TIntegerField;
    TCaracteristicas_AsignadasCONS_ACCE_CARA_TIPO: TIntegerField;
    TCaracteristicas_AsignadasVALOR: TStringField;
    TCaracteristicas_AsignadasFECH_SISTEMA: TDateTimeField;
    TCaracteristicas_AsignadasUSUA_SISTEMA: TStringField;
    TCaracteristicas_AsignadasCODI_ACCE_TIPO_CARACTERISTICA: TStringField;
    TCaracteristicas_AsignadasNOMB_ACCE_TIPO_CARACTERISTICA: TStringField;
    CBPrestamo: TdxDBCheckEdit;
    TAccesoriosPRESTAMO: TIntegerField;
    TAccesorios_TemporalPRESTAMO: TIntegerField;
    TAccesoriosDIME_ENTRADA: TFloatField;
    TAccesoriosDIME_SALIDA: TFloatField;
    TAccesorios_TemporalDIME_ENTRADA: TFloatField;
    TAccesorios_TemporalDIME_SALIDA: TFloatField;
    SCLDBLabel24: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel25: TSCLDBLabel;
    dxDBEdit13: TdxDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    TSCLTabSheet1: TSCLTabSheet;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    Acciones: TActionList;
    Acti_Adicionar: TAction;
    Acti_Eliminar: TAction;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    DBRecursos: TdxDBGrid;
    TRecursos: TTable;
    DSRecursos: TDataSource;
    TRecursosCONS_ACCE_RECURSO: TIntegerField;
    TRecursosCONS_ACCESORIO: TIntegerField;
    TRecursosCONS_RECU_GRUPO: TIntegerField;
    TRecursosCONS_RECU_TIPO: TIntegerField;
    TRecursosCONS_RECU_FAMILIA: TIntegerField;
    TRecursosCONS_RECU_MARCA: TIntegerField;
    TRecursosCLASE: TStringField;
    QGrupo_Recurso: TQuery;
    DSQGrupo_Recurso: TDataSource;
    DSQTipo_Recurso: TDataSource;
    QTipo_Recurso: TQuery;
    DSQFamilia_Recurso: TDataSource;
    QFamilia_Recurso: TQuery;
    QMarcas_Recurso: TQuery;
    DSQMarcas_Recurso: TDataSource;
    TRecursosNOMB_RECU_GRUPO: TStringField;
    TRecursosNOMB_RECU_TIPO: TStringField;
    TRecursosNOMB_RECU_FAMILIA: TStringField;
    TRecursosNOMB_RECU_MARCA: TStringField;
    DBRecursosCONS_ACCE_RECURSO: TdxDBGridMaskColumn;
    DBRecursosCONS_ACCESORIO: TdxDBGridMaskColumn;
    DBRecursosCONS_RECU_GRUPO: TdxDBGridMaskColumn;
    DBRecursosCONS_RECU_TIPO: TdxDBGridMaskColumn;
    DBRecursosCONS_RECU_FAMILIA: TdxDBGridMaskColumn;
    DBRecursosCONS_RECU_MARCA: TdxDBGridMaskColumn;
    DBRecursosNOMB_RECU_GRUPO: TdxDBGridLookupColumn;
    DBRecursosNOMB_RECU_TIPO: TdxDBGridLookupColumn;
    DBRecursosNOMB_RECU_FAMILIA: TdxDBGridLookupColumn;
    DBRecursosNOMB_RECU_MARCA: TdxDBGridLookupColumn;
    DBRecursosCLASE: TdxDBGridMaskColumn;
    TRecursos_Temporal: TRxMemoryData;
    DSRecursos_Temporal: TDataSource;
    TRecursos_TemporalCONS_RECU_GRUPO: TIntegerField;
    TRecursos_TemporalCONS_RECU_TIPO: TIntegerField;
    TRecursos_TemporalCONS_RECU_FAMILIA: TIntegerField;
    TRecursos_TemporalCONS_RECU_MARCA: TIntegerField;
    TRecursos_TemporalCLASE: TStringField;
    TRecursos_TemporalNOMB_RECU_GRUPO: TStringField;
    TRecursos_TemporalNOMB_RECU_TIPO: TStringField;
    TRecursos_TemporalNOMB_RECU_FAMILIA: TStringField;
    TRecursos_TemporalNOMB_RECU_MARCA: TStringField;
    TRecursos_TemporalCONS_ACCE_RECURSO: TIntegerField;
    TRecursos_TemporalCONS_ACCESORIO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure ffra_maqu_ubicacion1comb_tipo_ubicacionChange(
      Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure TAccesorios_TemporalBeforePost(DataSet: TDataSet);
    procedure TTraslados_TemporalBeforePost(DataSet: TDataSet);
    procedure Tabla_VentanaAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBCodigo_RecusoChange(Sender: TObject);
    procedure ffra_maqu_ubicacion2comb_tipo_ubicacionChange(
      Sender: TObject);
    procedure PCPLookUpComboEdit5Change(Sender: TObject);
    procedure TCaracteristicas_Asignadas_TemporalBeforePost(
      DataSet: TDataSet);
    procedure TCaracteristicas_AsignadasBeforePost(DataSet: TDataSet);
    procedure Acti_AdicionarExecute(Sender: TObject);
    procedure TRecursos_TemporalBeforePost(DataSet: TDataSet);
    procedure TRecursosBeforePost(DataSet: TDataSet);
    procedure DSAccesoriosStateChange(Sender: TObject);
    procedure Acti_EliminarExecute(Sender: TObject);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FN1_Acce_Ingreso1: TFN1_Acce_Ingreso1;

implementation

uses _func_varias, UFN1_Acce_Ingr_Recursos1, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abrir tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 24 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.FormCreate(Sender: TObject);
begin
  inherited;
	//Abrir tablas auxiliares
  AbrirDataSet(QTipo_Documento);
  AbrirDataSet(QPersonal);
  AbrirDataSet(QGrupos);
  AbrirDataSet(QTipos);
  AbrirDataSet(QMarcas);
  AbrirDataSet(QRecursos);
  AbrirDataSet(QRecurso_Ubicacion);
  AbrirDataSet(QTipo_Caracteristicas_Tipo);
  AbrirDataSet(QGrupo_Recurso);
  AbrirDataSet(QTipo_Recurso);
  AbrirDataSet(QFamilia_Recurso);
  AbrirDataSet(QMarcas_Recurso);

  AbrirDataSet(TAccesorios);
  AbrirDataSet(TTraslados);
  AbrirDataSet(TCaracteristicas_Asignadas);
  AbrirDataSet(TRecursos);

  //Abrir tablas temporales
  TAccesorios_Temporal.Open;
  TTraslados_Temporal.Open;
  TCaracteristicas_Asignadas_Temporal.Open;
  TRecursos_Temporal.Open;

  //Abrir DataSet del frame
  InicializarFrame(ffra_maqu_ubicacion1);
  InicializarFrame(ffra_maqu_ubicacion2);

  //Color del grid
  ColorGrid(DBRecursos);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Cambiar de dataset
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.data_ventanaStateChange(Sender: TObject);
Var
	I : Integer;
begin
  inherited;
	//Se deshabilita o Habilitan los controles de la forma para que no se pueda editar
{  SetControlEnabled(PCGenerales, 	(Tabla_Ventana.State = dsInsert));
  SetControlEnabled(PCUbicacion, 	(Tabla_Ventana.State = dsInsert));
  SetControlEnabled(PCImagenes, 	(Tabla_Ventana.State = dsInsert));
	SetControlEnabled(FMovimiento, 	(Tabla_Ventana.State = dsInsert));}

	If Tabla_Ventana.State = dsInsert Then
  Begin
    TAccesorios_Temporal.EmptyTable;
    TTraslados_Temporal.EmptyTable;
    TRecursos_Temporal.EmptyTable;

    DBRecursos.DataSource := DSRecursos_Temporal;
    CBPrestamo.DataSource := DSAccesorios_Temporal;

    DBAsignados.DataSource := DSCaracteristicas_Asignadas_Temporal;

    //Cambia los controles del frame de imagen
    ffra_fotografiaDB2.fram_fotografia.DataSource := DSAccesorios_Temporal;
    ffra_fotografiaDB2.fram_chec_ajustar.DataSource := DSAccesorios_Temporal;

    ffra_fotografiaDB1.fram_fotografia.DataSource := DSAccesorios_Temporal;
    ffra_fotografiaDB1.fram_chec_ajustar.DataSource := DSAccesorios_Temporal;

    //Cambia los controles del frame de ubicaciones
    For I := 0 To ffra_maqu_ubicacion1.ComponentCount - 1 Do
      //Cambia el Datasource a los Labels
      If (ffra_maqu_ubicacion1.Components[I] Is TSCLDBLabel) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TSCLDBLabel) Do
        Begin
          If DataSource = DSAccesorios Then
            DataSource := DSAccesorios_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal;
        End
      //Cambia el Datasource a los Edits
      Else If (ffra_maqu_ubicacion1.Components[I] Is TdxDBEdit) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TdxDBEdit) Do
        Begin
          If DataSource = DSAccesorios Then
            DataSource := DSAccesorios_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal;
        End
      //Cambia el Datasource a los ComboEdit
      Else If (ffra_maqu_ubicacion1.Components[I] Is TPCPLookUpComboEdit) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TPCPLookUpComboEdit) Do
        Begin
          If DataSource = DSAccesorios Then
            DataSource := DSAccesorios_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal;
        End;

		For I := 0 To Self.ComponentCount - 1 Do
      //Cambia el Datasource a los Labels
    	If (Self.Components[I] Is TSCLDBLabel) Then
				With (Self.Components[I] As TSCLDBLabel) Do
        Begin
          If DataSource = DSAccesorios Then
            DataSource := DSAccesorios_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal
          Else If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal;
        End
      //Cambia el Datasource a los Currency
    	Else If (Self.Components[I] Is TdxDBCurrencyEdit) Then
				With (Self.Components[I] As TdxDBCurrencyEdit) Do
        Begin
          If DataSource = DSAccesorios Then
            DataSource := DSAccesorios_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal
          Else If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal;
        End
      //Cambia el Datasource a los Edits
    	Else If (Self.Components[I] Is TdxDBEdit) Then
				With (Self.Components[I] As TdxDBEdit) Do
        Begin
          If DataSource = DSAccesorios Then
            DataSource := DSAccesorios_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal
          Else If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal;
        End
      //Cambia el Datasource a los DateEdits
    	Else If (Self.Components[I] Is TdxDBDateEdit) Then
				With (Self.Components[I] As TdxDBDateEdit) Do
        Begin
          If DataSource = DSAccesorios Then
            DataSource := DSAccesorios_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal
          Else If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal;
        End
      //Cambia el Datasource a los ComboEdit
    	Else If (Self.Components[I] Is TPCPLookUpComboEdit) Then
				With (Self.Components[I] As TPCPLookUpComboEdit) Do
        Begin
          If DataSource = DSAccesorios Then
            DataSource := DSAccesorios_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal
          Else If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal;
        End
  End
  Else
  Begin
    DBAsignados.DataSource := DSCaracteristicas_Asignadas;

		DBRecursos.DataSource := DSRecursos;
    CBPrestamo.DataSource := DSAccesorios;

    //Cambia los controles del frame de imagen
    ffra_fotografiaDB2.fram_fotografia.DataSource := DSAccesorios;
    ffra_fotografiaDB2.fram_chec_ajustar.DataSource := DSAccesorios;

    ffra_fotografiaDB1.fram_fotografia.DataSource := DSAccesorios;
    ffra_fotografiaDB1.fram_chec_ajustar.DataSource := DSAccesorios;

    //Cambia los controles del frame de ubicaciones
    For I := 0 To ffra_maqu_ubicacion1.ComponentCount - 1 Do
      //Cambia el Datasource a los Labels
      If (ffra_maqu_ubicacion1.Components[I] Is TSCLDBLabel) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TSCLDBLabel) Do
        Begin
          If DataSource = DSAccesorios_Temporal Then
            DataSource := DSAccesorios
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados;
        End
      //Cambia el Datasource a los Edits
      Else If (ffra_maqu_ubicacion1.Components[I] Is TdxDBEdit) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TdxDBEdit) Do
        Begin
          If DataSource = DSAccesorios_Temporal Then
            DataSource := DSAccesorios
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados;
        End
      //Cambia el Datasource a los ComboEdit
      Else If (ffra_maqu_ubicacion1.Components[I] Is TPCPLookUpComboEdit) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TPCPLookUpComboEdit) Do
        Begin
          If DataSource = DSAccesorios_Temporal Then
            DataSource := DSAccesorios
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados;
        End;

		For I := 0 To Self.ComponentCount - 1 Do
      //Cambia el Datasource a los Labels
    	If (Self.Components[I] Is TSCLDBLabel) Then
				With (Self.Components[I] As TSCLDBLabel) Do
        Begin
          If DataSource = DSAccesorios_Temporal Then
            DataSource := DSAccesorios
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados
          Else If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos;
        End
      //Cambia el Datasource a los Currency
    	Else If (Self.Components[I] Is TdxDBCurrencyEdit) Then
				With (Self.Components[I] As TdxDBCurrencyEdit) Do
        Begin
          If DataSource = DSAccesorios_Temporal Then
            DataSource := DSAccesorios
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados
          Else If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos;
        End
      //Cambia el Datasource a los Edits
    	Else If (Self.Components[I] Is TdxDBEdit) Then
				With (Self.Components[I] As TdxDBEdit) Do
        Begin
          If DataSource = DSAccesorios_Temporal Then
            DataSource := DSAccesorios
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados
          Else If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos;
        End
      //Cambia el Datasource a los DateEdits
    	Else If (Self.Components[I] Is TdxDBDateEdit) Then
				With (Self.Components[I] As TdxDBDateEdit) Do
        Begin
          If DataSource = DSAccesorios_Temporal Then
            DataSource := DSAccesorios
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados
          Else If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos;
        End
      //Cambia el Datasource a los ComboEdit
    	Else If (Self.Components[I] Is TPCPLookUpComboEdit) Then
				With (Self.Components[I] As TPCPLookUpComboEdit) Do
        Begin
          If DataSource = DSAccesorios_Temporal Then
            DataSource := DSAccesorios
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados
          Else If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos;
        End
  End;
end;

{****************************************************************
Procedimiento   : ffra_maqu_ubicacion1comb_tipo_ubicacionChange
Objetivo        : Asignar nul al campo CONS_RECURSO y dejar los campos
									de ubicación en planta por defecto
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.ffra_maqu_ubicacion1comb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  ffra_maqu_ubicacion1.comb_tipo_ubicacionChange(Sender);
  If Tabla_Ventana.State = dsInsert Then
  Begin
		If TTraslados_Temporal.FieldByName('CONS_UBIC_TIPO').AsInteger <> 0 Then
	    TTraslados_Temporal.FieldByName('CONS_RECURSO').Value := Null;
    With ffra_maqu_ubicacion1 Do
    Begin
      TTraslados_Temporal.Edit;
      If quer_maqu_ubicaciones.FieldByName('VER_EMPRESA').AsInteger = -1 Then
      Begin
        TTraslados_Temporal.FieldByName('CONS_EMPRESA').AsInteger := 0;
        TTraslados_Temporal.FieldByName('CONS_AREA').AsInteger := 0;
      End;
      If quer_maqu_ubicaciones.FieldByName('VER_PLANTA').AsInteger = -1 Then
      Begin
        TTraslados_Temporal.FieldByName('CONS_PLANTA').AsInteger := 0;
        TTraslados_Temporal.FieldByName('CONS_PLAN_LINEA').AsInteger := 0;
        TTraslados_Temporal.FieldByName('CONS_LINE_SECCION').AsInteger := 0;
      End;
      If quer_maqu_ubicaciones.FieldByName('VER_BODEGA').AsInteger = -1 Then
        TTraslados_Temporal.FieldByName('CONS_BODEGA').AsInteger := 0;
      If quer_maqu_ubicaciones.FieldByName('VER_OTRA_UBICACION').AsInteger = -1 Then
        TTraslados_Temporal.FieldByName('OTRA_UBICACION').AsString := '';
    End;
  End
  Else If Tabla_Ventana.State = dsEdit Then
  Begin
		If TTraslados.FieldByName('CONS_UBIC_TIPO').AsInteger <> 0 Then
	    TTraslados.FieldByName('CONS_RECURSO').Value := Null;
    With ffra_maqu_ubicacion1 Do
    Begin
      TTraslados.Edit;
      If quer_maqu_ubicaciones.FieldByName('VER_EMPRESA').AsInteger = -1 Then
      Begin
        TTraslados.FieldByName('CONS_EMPRESA').AsInteger := 0;
        TTraslados.FieldByName('CONS_AREA').AsInteger := 0;
      End;
      If quer_maqu_ubicaciones.FieldByName('VER_PLANTA').AsInteger = -1 Then
      Begin
        TTraslados.FieldByName('CONS_PLANTA').AsInteger := 0;
        TTraslados.FieldByName('CONS_PLAN_LINEA').AsInteger := 0;
        TTraslados.FieldByName('CONS_LINE_SECCION').AsInteger := 0;
      End;
      If quer_maqu_ubicaciones.FieldByName('VER_BODEGA').AsInteger = -1 Then
        TTraslados.FieldByName('CONS_BODEGA').AsInteger := 0;
      If quer_maqu_ubicaciones.FieldByName('VER_OTRA_UBICACION').AsInteger = -1 Then
        TTraslados.FieldByName('OTRA_UBICACION').AsString := '';
    End;
  End;
end;

{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Validar campos requeridos y guardar los registros
									dependientes
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.Tabla_VentanaBeforePost(DataSet: TDataSet);
Var
	I : Integer;
begin
	//Verifico que la tabla este en inserción
  If Tabla_Ventana.State = dsInsert Then
  Begin
    //Verifico que la tabla temporal de datos del recurso este guardada
    If (TAccesorios_Temporal.State In [dsEdit, dsInsert]) Then
    try TAccesorios_Temporal.Post;
    except Abort;
    end;

    //Verifico que la tabla temporal de traslados este guardada
    If (TTraslados_Temporal.State In [dsEdit, dsInsert]) Then
    try TTraslados_Temporal.Post;
    except Abort;
    end;

    //Verifico que existan registros en la tabla de Recursos
    If TAccesorios_Temporal.RecordCount < 1 Then
    Begin
      EjecutarMensaje('Ingrese la información del Accesorio', mtConfirmation, [mbOk], 0);
      Abort;
    End;
    //Verifico que existan registros en la tabla de Traslados
    If TTraslados_Temporal.RecordCount < 1 Then
    Begin
      EjecutarMensaje('Ingrese la información de la Ubicación del Accesorio', mtConfirmation, [mbOk], 0);
      Abort;
    End;

    Try
      //Trasladar los datos del Recurso
      TAccesorios.Close;
      TTraslados.Close;
      TCaracteristicas_Asignadas.Close;
      TRecursos.Close;
      AbrirDataSet(TAccesorios);
      TAccesorios.Insert;
      For I := 0 To TAccesorios.FieldCount - 1 Do
        TAccesorios.Fields[I].Value := TAccesorios_Temporal.Fields[I].Value;
      TAccesorios.Post;
    Except
      Abort;
    End;

    AbrirDataSet(TTraslados);
    AbrirDataSet(TCaracteristicas_Asignadas);
    AbrirDataSet(TRecursos);

    Tabla_Ventana.FieldByName('CONS_ACCESORIO').Value :=
      TAccesorios.FieldByName('CONS_ACCESORIO').Value;
    Tabla_Ventana.FieldByName('CONS_ACCE_TIPO_MOVIMIENTO').AsInteger := 1;
  End;  
  inherited;
end;

{****************************************************************
Procedimiento   : TAccesorios_TemporalBeforePost
Objetivo        : Validar campos requeridos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.TAccesorios_TemporalBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  TAccesorios_TemporalCONS_ACCESORIO.AsInteger :=
	  GenerarSecuencia('GLO_ACCESORIOS', 'CONS_ACCESORIO');
  ValidarDatosDataSet(TAccesorios_Temporal);
end;

{****************************************************************
Procedimiento   : TTraslados_TemporalBeforePost
Objetivo        : Validar campos requeridos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.TTraslados_TemporalBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  ValidarDatosDataSet(TTraslados_Temporal);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaAfterPost
Objetivo        : Guardar la ubicación de Accesorio
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.Tabla_VentanaAfterPost(DataSet: TDataSet);
Var
	I : Integer;
begin
  inherited;
	If TTraslados_Temporal.RecordCount > 0 Then
    Try
      //Traslado los datos Confidenciales
      TTraslados.Insert;
      For I := 1 To TTraslados.FieldCount - 1 Do
        TTraslados.Fields[I].Value := TTraslados_Temporal.Fields[I - 1].Value;
      TTraslados.Post;
    Except
      TTraslados.Close;
      TTraslados.Open;
    End;

	If TRecursos_Temporal.RecordCount > 0 Then
    Try
      //Traslado los recursos asignados
      TRecursos.Insert;
      TRecursos.FieldByName('CONS_ACCE_RECURSO').AsInteger :=
        GenerarSecuencia('GLO_ACCE_RECURSOS', 'CONS_ACCE_RECURSO');
      For I := 2 To TRecursos.FieldCount - 1 Do
        TRecursos.Fields[I].Value := TRecursos_Temporal.Fields[I].Value;
      TRecursos.Post;
    Except
      TRecursos.Close;
      TRecursos.Open;
    End;

  TCaracteristicas_Asignadas_Temporal.First;
  While Not TCaracteristicas_Asignadas_Temporal.EOF Do
  Begin
    QTipo_Caracteristicas_Tipo.Locate('CODI_ACCE_TIPO_CARACTERISTICA',
      TCaracteristicas_Asignadas_Temporal.FieldByName('CODI_ACCE_TIPO_CARACTERISTICA').AsString, []);
    TCaracteristicas_Asignadas.Insert;
    TCaracteristicas_Asignadas.FieldByName('CONS_ACCE_CARA_TIPO').AsInteger :=
      QTipo_Caracteristicas_Tipo.FieldByName('CONS_ACCE_CARA_TIPO').AsInteger;
    TCaracteristicas_Asignadas.FieldByName('VALOR').AsString :=
      TCaracteristicas_Asignadas_Temporal.FieldByName('VALOR').AsString;
    TCaracteristicas_Asignadas.Post;
    TCaracteristicas_Asignadas_Temporal.Next;
  End;
end;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Asignar verdadero a la variable NecesitaActualizar
									para refrescar la consulta del child
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  NecesitaActualizar := True;
end;

{****************************************************************
Procedimiento   : CBCodigo_RecusoChange
Objetivo        : Asignar a los campos de ubicación en planta por defecto
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.CBCodigo_RecusoChange(Sender: TObject);
begin
  inherited;
  If Tabla_Ventana.State = dsInsert Then
  Begin
    TTraslados_Temporal.Edit;
    TTraslados_Temporal.FieldByName('CONS_UBIC_TIPO').AsInteger := 0;
    ffra_maqu_ubicacion1.comb_tipo_ubicacion.OnChange(ffra_maqu_ubicacion1.comb_tipo_ubicacion);
//    QRecurso_Ubicacion.Close;
//    QRecurso_Ubicacion.Open;
	  ffra_maqu_ubicacion2.comb_tipo_ubicacion.OnChange(ffra_maqu_ubicacion2.comb_tipo_ubicacion);
  End
  Else If Tabla_Ventana.State = dsInsert Then
  Begin
    TTraslados.Edit;
    TTraslados.FieldByName('CONS_UBIC_TIPO').AsInteger := 0;
    ffra_maqu_ubicacion1.comb_tipo_ubicacion.OnChange(ffra_maqu_ubicacion1.comb_tipo_ubicacion);
//    QRecurso_Ubicacion.Close;
//    QRecurso_Ubicacion.Open;
	  ffra_maqu_ubicacion2.comb_tipo_ubicacion.OnChange(ffra_maqu_ubicacion2.comb_tipo_ubicacion);
  End;
end;

{****************************************************************
Procedimiento   : ffra_maqu_ubicacion2comb_tipo_ubicacionChange
Objetivo        : Mostrar Ubicación del Recurso
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Viernes 25 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.ffra_maqu_ubicacion2comb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  ffra_maqu_ubicacion2.comb_tipo_ubicacionChange(Sender);
end;

procedure TFN1_Acce_Ingreso1.PCPLookUpComboEdit5Change(Sender: TObject);
begin
  inherited;
	If Tabla_Ventana.State = dsInsert Then
	Begin
    //Elimino las características que no son del tipo de recurso
    TCaracteristicas_Asignadas_Temporal.First;
    While Not TCaracteristicas_Asignadas_Temporal.EOF Do
    Begin
      If Not QTipo_Caracteristicas_Tipo.Locate('CODI_ACCE_TIPO_CARACTERISTICA',
        TCaracteristicas_Asignadas_Temporal.FieldByName('CODI_ACCE_TIPO_CARACTERISTICA').AsString, []) Then
      Begin
        TCaracteristicas_Asignadas_Temporal.Delete;
        TCaracteristicas_Asignadas_Temporal.First;
      End
      Else
      	TCaracteristicas_Asignadas_Temporal.Next;
    End;

    //Inserto las características del tipo de recurso
    While Not QTipo_Caracteristicas_Tipo.EOF Do
    Begin
      //Inserto las nuevas características
      If Not TCaracteristicas_Asignadas_Temporal.Locate('CODI_ACCE_TIPO_CARACTERISTICA',
        QTipo_Caracteristicas_Tipo.FieldByName('CODI_ACCE_TIPO_CARACTERISTICA').AsString, []) Then
      Begin
        TCaracteristicas_Asignadas_Temporal.Insert;
        TCaracteristicas_Asignadas_Temporal.FieldByName('CODI_ACCE_TIPO_CARACTERISTICA').AsString :=
          QTipo_Caracteristicas_Tipo.FieldByName('CODI_ACCE_TIPO_CARACTERISTICA').AsString;
        TCaracteristicas_Asignadas_Temporal.FieldByName('NOMB_ACCE_TIPO_CARACTERISTICA').AsString :=
          QTipo_Caracteristicas_Tipo.FieldByName('NOMB_ACCE_TIPO_CARACTERISTICA').AsString;
        TCaracteristicas_Asignadas_Temporal.Post;
      End;
      QTipo_Caracteristicas_Tipo.Next;
    End;
  End;
end;

procedure TFN1_Acce_Ingreso1.TCaracteristicas_Asignadas_TemporalBeforePost(
  DataSet: TDataSet);
begin
  inherited;
	If TCaracteristicas_Asignadas_Temporal.FieldByName('VALOR').AsString = '' Then
  	TCaracteristicas_Asignadas_Temporal.FieldByName('VALOR').AsString := 'NA';
end;

procedure TFN1_Acce_Ingreso1.TCaracteristicas_AsignadasBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  TCaracteristicas_Asignadas.FieldByName('CONS_ACCE_CARACTERISTICA').AsInteger :=
    GenerarSecuencia('GLO_ACCE_CARACTERISTICAS', 'CONS_ACCE_CARACTERISTICA');
end;

{****************************************************************
Procedimiento   : Acti_AdicionarExecute
Objetivo        : Adicionar recurso
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Enero 22 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.Acti_AdicionarExecute(Sender: TObject);
begin
  inherited;
  //Crear la ventana
	FN1_Acce_Ingr_Recursos1 := TFN1_Acce_Ingr_Recursos1.Create(Self);
  With FN1_Acce_Ingr_Recursos1 Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := poScreenCenter;
    Cons_Accesorio := Self.TAccesorios.FieldByName('CONS_ACCESORIO').AsInteger;
    FN1_Acce_Ingr_Recursos1.Caption := 'Asignando Recurso';
    FN1_Acce_Ingr_Recursos1.data_ventana.DataSet := DBRecursos.DataSource.DataSet;
    FN1_Acce_Ingr_Recursos1.data_ventana.DataSet.Insert;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : TRecursos_TemporalBeforePost
Objetivo        : Validar campos requeridos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Enero 22 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.TRecursos_TemporalBeforePost(
  DataSet: TDataSet);
begin
  inherited;
	//Verificar que la tabla este en inserción
  If TRecursos_Temporal.State = dsInsert Then
  	//Asignar el consecutivo identificador del registro
    TRecursos_Temporal.FieldByName('CONS_ACCE_RECURSO').AsInteger :=
    	GenerarSecuencia('GLO_ACCE_RECURSOS', 'CONS_ACCE_RECURSO');

	//Validar campos requeridos
  ValidarDatosDataSet(TRecursos_Temporal);
end;

{****************************************************************
Procedimiento   : TRecursosBeforePost
Objetivo        : Asignar el consecutivo identificador del registro
									y validar campos requeridos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Enero 22 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.TRecursosBeforePost(DataSet: TDataSet);
begin
  inherited;
	//Verificar que la tabla este en inserción
  If TRecursos.State = dsInsert Then
  	//Asignar el consecutivo identificador del registro
    TRecursos.FieldByName('CONS_ACCE_RECURSO').AsInteger :=
    	GenerarSecuencia('GLO_ACCE_RECURSOS', 'CONS_ACCE_RECURSO');
	//Validar campos requeridos
  ValidarDatosDataSet(TRecursos);
end;

{****************************************************************
Procedimiento   : DSAccesoriosStateChange
Objetivo        : Editar la tabla principal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Enero 22 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.DSAccesoriosStateChange(Sender: TObject);
begin
  inherited;
	//Verificar que sea un dataset
  If (Sender Is TDataSource) Then
  	//Verificar que la tabla este en edición o inserción
    If (((Sender As TDataSource).DataSet.State = dsEdit)
     And (Tabla_Ventana.State = dsBrowse)) Then
      Tabla_Ventana.Edit;
end;

{****************************************************************
Procedimiento   : Acti_EliminarExecute
Objetivo        : Eliminar recursos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Enero 22 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.Acti_EliminarExecute(Sender: TObject);
Var
	I, Indice : Integer;
begin
  inherited;
  //Verificar que existen registros
  If DBRecursos.DataSource.DataSet.RecordCount = 0 Then
  	Exit;

	//Verificar que existen registros seleccionados
  If DBRecursos.SelectedCount = 0 Then
  	Exit; 

	//Localizar el campo principal
  Indice := DBRecursos.ColumnByFieldName('CONS_ACCE_RECURSO').Index;

  //Deshabilitar los controles de la tabla
  DBRecursos.DataSource.DataSet.DisableControls;

  //Recorrer los registros del grid
  For I := 0 To DBRecursos.Count - 1 Do
  	//Verificar que el registro este seleccionado
    If DBRecursos.Items[I].Selected Then
    Begin
			//Localizar el registro
      DBRecursos.DataSource.DataSet.Locate('CONS_ACCE_RECURSO', DBRecursos.Items[I].Values[Indice], []);
      //Eliminar el registro
      DBRecursos.DataSource.DataSet.Delete;
    End;

  //Habilitar los controles de la tabla
  DBRecursos.DataSource.DataSet.EnableControls;
end;

{****************************************************************
Procedimiento   : Tabla_VentanaAfterScroll
Objetivo        : Localizar el accesorio
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Enero 22 de 2006
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Acce_Ingreso1.Tabla_VentanaAfterScroll(DataSet: TDataSet);
begin
  inherited;
	//Localizar el accesorio
  If TAccesorios.Active Then
		TAccesorios.Locate('CONS_ACCESORIO', Tabla_Ventana.FieldByname('CONS_ACCESORIO').AsInteger, []);
	ffra_maqu_ubicacion1.comb_tipo_ubicacion.OnChange(ffra_maqu_ubicacion1.comb_tipo_ubicacion);
end;

end.

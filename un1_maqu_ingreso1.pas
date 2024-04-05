{ 18/03/2004 11:51:19 a.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 17/03/2004 04:22:06 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in   }
{ 16/03/2004 05:43:58 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked out / }
{ 10/03/2004 04:40:09 p.m. (GMT-5:00) > [tecnologia on TECNOLOGIASCL] checked in Ingreso de recursos (modal)  }

unit un1_maqu_ingreso1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, RxMemDS, Db, dxExEdtr, dxEdLib, dxDBELib, ufra_fotografiaDB,
  SoSplit, ufra_maqu_ubicacion, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  dxEditor, StdCtrls, TBXDkPanels, TBXButtonSCL, RxLookup,
  PCPLookUpComboEdit, PCPFrame, SCLTabs, PictureContainer, DBTables,
  Placemnt, AdvPanel, SCLPropiedadesForm, DBActns, ActnList, ImgList,
  Boxes, PCPProceso, SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock,
  TB2Toolbar, EDBImage;




type
  Tfn1_maqu_ingreso1 = class(T_fvent_modal)
    pagina: TSCLPageControl;
    PCGenerales: TSCLTabSheet;
    PCUbicacion: TSCLTabSheet;
    PCImagen: TSCLTabSheet;
    Panel2: TPanel;
    Bevel1: TBevel;
    FMovimiento: TPCPFrame;
    SCLDBLabel40: TSCLDBLabel;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel65: TSCLDBLabel;
    CBTipo_Documento: TPCPLookUpComboEdit;
    DBNumero_Documento: TdxDBEdit;
    DBFecha_Inicial: TdxDBDateEdit;
    DBObservaciones: TdxDBMemo;
    DBFecha_Final: TdxDBDateEdit;
    SCLDBLabel30: TSCLDBLabel;
    DBSolicitado: TPCPLookUpComboEdit;
    SCLDBLabel31: TSCLDBLabel;
    DBEntregado: TPCPLookUpComboEdit;
    SCLDBLabel33: TSCLDBLabel;
    DBRecibido: TPCPLookUpComboEdit;
    DSQTipo_Documento_Movimiento: TDataSource;
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
    SCLDBLabel68: TSCLDBLabel;
    PCPFrame6: TPCPFrame;
    ffra_maqu_ubicacion1: Tffra_maqu_ubicacion;
    DSQPersonal: TDataSource;
    DSQGrupos: TDataSource;
    DSQTipo_Recurso: TDataSource;
    DSQFamilias: TDataSource;
    DSQMarcas: TDataSource;
    DSQTipo_Puntada: TDataSource;
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
    TRecursos: TTable;
    DSRecursos: TDataSource;
    TTraslados: TTable;
    DSTraslados: TDataSource;
    TRecursos_Temporal: TRxMemoryData;
    TTraslados_Temporal: TRxMemoryData;
    DSRecursos_Temporal: TDataSource;
    DSTraslados_Temporal: TDataSource;
    TRecursosCONS_RECURSO: TIntegerField;
    TRecursosCODI_RECURSO: TStringField;
    TRecursosCODI_INTE_RECURSO: TStringField;
    TRecursosCONS_RECU_GRUPO: TIntegerField;
    TRecursosCONS_RECU_TIPO: TIntegerField;
    TRecursosCONS_RECU_FAMILIA: TIntegerField;
    TRecursosCONS_RECU_MARCA: TIntegerField;
    TRecursosCLASE: TStringField;
    TRecursosNUME_SERIE: TStringField;
    TRecursos_TemporalCONS_RECURSO: TIntegerField;
    TRecursos_TemporalCODI_RECURSO: TStringField;
    TRecursos_TemporalCODI_INTE_RECURSO: TStringField;
    TRecursos_TemporalCONS_RECU_GRUPO: TIntegerField;
    TRecursos_TemporalCONS_RECU_TIPO: TIntegerField;
    TRecursos_TemporalCONS_RECU_FAMILIA: TIntegerField;
    TRecursos_TemporalCONS_RECU_MARCA: TIntegerField;
    TRecursos_TemporalCLASE: TStringField;
    TRecursos_TemporalNUME_SERIE: TStringField;
    TTrasladosCONS_RECU_MOVIMIENTO: TIntegerField;
    TTrasladosCONS_UBIC_TIPO: TIntegerField;
    TTrasladosCONS_EMPRESA: TIntegerField;
    TTrasladosCONS_AREA: TIntegerField;
    TTrasladosCONS_PLANTA: TIntegerField;
    TTrasladosCONS_PLAN_LINEA: TIntegerField;
    TTrasladosCONS_LINE_SECCION: TIntegerField;
    TTrasladosCONS_BODEGA: TIntegerField;
    TTraslados_TemporalCONS_UBIC_TIPO: TIntegerField;
    TTraslados_TemporalCONS_EMPRESA: TIntegerField;
    TTraslados_TemporalCONS_AREA: TIntegerField;
    TTraslados_TemporalCONS_PLANTA: TIntegerField;
    TTraslados_TemporalCONS_PLAN_LINEA: TIntegerField;
    TTraslados_TemporalCONS_LINE_SECCION: TIntegerField;
    TTraslados_TemporalCONS_BODEGA: TIntegerField;
    QConsecutivo_Recurso: TQuery;
    Tabla_VentanaCODI_RECURSO: TStringField;
    QCaracteristicas_Asignadas: TQuery;
    QCaracteristicas_AsignadasCONS_TIPO_CARACTERISTICA: TIntegerField;
    QCaracteristicas_AsignadasCODI_TIPO_CARACTERISTICA: TStringField;
    QCaracteristicas_AsignadasNOMB_TIPO_CARACTERISTICA: TStringField;
    DSCaracteristicas_Asignadas: TDataSource;
    QEliminar_Caracteristica: TQuery;
    TCaracteristicas_Asignadas: TTable;
    TCaracteristicas_AsignadasCONS_RECU_CARACTERISTICA: TIntegerField;
    TCaracteristicas_AsignadasCONS_RECURSO: TIntegerField;
    TCaracteristicas_AsignadasCONS_RECU_TIPO_CARACTERISTICA: TIntegerField;
    TCaracteristicas_AsignadasVALOR: TStringField;
    QCaracteristicas_AsignadasCONS_RECU_TIPO_CARACTERISTICA: TIntegerField;
    TCaracteristicas_AsignadasCODI_TIPO_CARACTERISTICA: TStringField;
    TCaracteristicas_AsignadasNOMB_TIPO_CARACTERISTICA: TStringField;
    TCaracteristicas_Asignadas_Temporal: TRxMemoryData;
    TCaracteristicas_Asignadas_TemporalVALOR: TStringField;
    TCaracteristicas_Asignadas_TemporalCODI_TIPO_CARACTERISTICA: TStringField;
    TCaracteristicas_Asignadas_TemporalNOMB_TIPO_CARACTERISTICA: TStringField;
    DSCaracteristicas_Asignadas_Temporal: TDataSource;
    Acti_Nuev_Caracteristica: TAction;
    Acti_Elim_Caracteristica: TAction;
    QTipo_Caracteristicas_Tipo: TQuery;
    QConsecutivo_Caracteristica: TQuery;
    PCPFrame7: TPCPFrame;
    DBAsignados: TdxDBGrid;
    DBAsignadosCONS_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosCODI_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosNOMB_TIPO_CARACTERISTICA: TdxDBGridMaskColumn;
    DBAsignadosVALOR: TdxDBGridMaskColumn;
    TRecursosPRESTAMO: TIntegerField;
    TRecursosIMAGEN: TBlobField;
    TRecursosAJUS_IMAGEN: TIntegerField;
    TRecursos_TemporalPRESTAMO: TIntegerField;
    TRecursos_TemporalIMAGEN: TBlobField;
    TRecursos_TemporalAJUS_IMAGEN: TIntegerField;
    CBPrestamo: TdxDBCheckEdit;
    QGrupos: TQuery;
    QTipo_Recurso: TQuery;
    QFamilias: TQuery;
    QMarcas: TQuery;
    QTipo_Puntada: TQuery;
    QTipo_Documento_Movimiento: TQuery;
    QPersonal: TQuery;
    TTrasladosOTRA_UBICACION: TStringField;
    TTraslados_TemporalOTRA_UBICACION: TStringField;
    TRecursosDETA_IMAGEN: TBlobField;
    TRecursosAJUS_DETA_IMAGEN: TIntegerField;
    TRecursos_TemporalDETA_IMAGEN: TBlobField;
    TRecursos_TemporalAJUS_DETA_IMAGEN: TIntegerField;
    sohoSplitter1: TsohoSplitter;
    PCPFrame1: TPCPFrame;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    PCPFrame4: TPCPFrame;
    ffra_fotografiaDB2: Tffra_fotografiaDB;
    PCExtendido: TSCLTabSheet;
    FExtendido: TPCPFrame;
    SCLDBLabel10: TSCLDBLabel;
    PCPLookUpComboEdit1: TPCPLookUpComboEdit;
    SCLDBLabel11: TSCLDBLabel;
    PCPLookUpComboEdit2: TPCPLookUpComboEdit;
    SCLDBLabel13: TSCLDBLabel;
    PCPLookUpComboEdit3: TPCPLookUpComboEdit;
    SCLDBLabel14: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    SCLDBLabel15: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    SCLDBLabel17: TSCLDBLabel;
    dxDBEdit3: TdxDBEdit;
    SCLDBLabel18: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    SCLDBLabel19: TSCLDBLabel;
    dxDBEdit5: TdxDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    TExtendido: TTable;
    TExtendidoCONS_RECURSO: TIntegerField;
    TExtendidoCONS_ACCIONAMIENTO: TIntegerField;
    TExtendidoCONS_TIPO_EXTENDIDO: TIntegerField;
    TExtendidoCONS_PRES_TEJIDO: TIntegerField;
    TExtendidoANCH_MAXIMO: TFloatField;
    TExtendidoANCH_MINIMO: TFloatField;
    TExtendidoVELO_EXTENDIDO: TFloatField;
    TExtendidoALTU_EXTE_MAXIMO: TFloatField;
    TExtendidoALTU_EXTE_MINIMO: TFloatField;
    DSExtendido: TDataSource;
    TExtendido_Temporal: TRxMemoryData;
    DSExtendido_Temporal: TDataSource;
    TExtendido_TemporalCONS_ACCIONAMIENTO: TIntegerField;
    TExtendido_TemporalCONS_TIPO_EXTENDIDO: TIntegerField;
    TExtendido_TemporalCONS_PRES_TEJIDO: TIntegerField;
    TExtendido_TemporalANCH_MAXIMO: TFloatField;
    TExtendido_TemporalANCH_MINIMO: TFloatField;
    TExtendido_TemporalVELO_EXTENDIDO: TFloatField;
    TExtendido_TemporalALTU_EXTE_MAXIMO: TFloatField;
    TExtendido_TemporalALTU_EXTE_MINIMO: TFloatField;
    QAccionamiento: TQuery;
    DSQAccionamiento: TDataSource;
    DSQTipo_Extendido: TDataSource;
    QTipo_Extendido: TQuery;
    DSQPresentacion_Tejido: TDataSource;
    QPresentacion_Tejido: TQuery;
    PCCorte: TSCLTabSheet;
    PCPFrame5: TPCPFrame;
    SCLDBLabel20: TSCLDBLabel;
    SCLDBLabel21: TSCLDBLabel;
    SCLDBLabel23: TSCLDBLabel;
    SCLDBLabel24: TSCLDBLabel;
    SCLDBLabel26: TSCLDBLabel;
    SCLDBLabel27: TSCLDBLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    PCPLookUpComboEdit4: TPCPLookUpComboEdit;
    PCPLookUpComboEdit5: TPCPLookUpComboEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    QAccionamiento_Corte: TQuery;
    DSQAccionamiento_Corte: TDataSource;
    SCLDBLabel22: TSCLDBLabel;
    dxDBEdit11: TdxDBEdit;
    Label12: TLabel;
    SCLDBLabel28: TSCLDBLabel;
    dxDBEdit12: TdxDBEdit;
    Label13: TLabel;
    TCorte: TTable;
    DSCorte: TDataSource;
    TCorteCONS_RECURSO: TIntegerField;
    TCorteCONS_ACCI_CORTE: TIntegerField;
    TCorteCONS_CUCHILLA: TIntegerField;
    TCorteDIMENSION: TFloatField;
    TCorteVELO_MAXI_CORTE: TFloatField;
    TCorteVELO_MINI_CORTE: TFloatField;
    TCorteVELO_PROM_CORTE: TFloatField;
    TCorteALTU_MAX_CORTE: TFloatField;
    TCorteALTU_MINI_CORTE: TFloatField;
    TCorte_Temporal: TRxMemoryData;
    DSCorte_Temporal: TDataSource;
    TCorte_TemporalCONS_RECURSO: TIntegerField;
    TCorte_TemporalCONS_ACCI_CORTE: TIntegerField;
    TCorte_TemporalCONS_CUCHILLA: TIntegerField;
    TCorte_TemporalDIMENSION: TFloatField;
    TCorte_TemporalVELO_MAXI_CORTE: TFloatField;
    TCorte_TemporalVELO_MINI_CORTE: TFloatField;
    TCorte_TemporalVELO_PROM_CORTE: TFloatField;
    TCorte_TemporalALTU_MAX_CORTE: TFloatField;
    TCorte_TemporalALTU_MINI_CORTE: TFloatField;
    DSQCuchillas: TDataSource;
    QCuchillas: TQuery;
    PCFusionado: TSCLTabSheet;
    PCPFrame8: TPCPFrame;
    SCLDBLabel25: TSCLDBLabel;
    SCLDBLabel29: TSCLDBLabel;
    SCLDBLabel32: TSCLDBLabel;
    SCLDBLabel35: TSCLDBLabel;
    SCLDBLabel36: TSCLDBLabel;
    SCLDBLabel37: TSCLDBLabel;
    SCLDBLabel38: TSCLDBLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    CBTipo_Fusionado: TPCPLookUpComboEdit;
    PCPLookUpComboEdit7: TPCPLookUpComboEdit;
    PCPLookUpComboEdit8: TPCPLookUpComboEdit;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    SCLDBLabel7: TSCLDBLabel;
    DBSerie: TdxDBEdit;
    SCLDBLabel39: TSCLDBLabel;
    DBCantidad_Fusionado: TdxDBEdit;
    TFusionado: TTable;
    DSFusionado: TDataSource;
    TFusionadoCONS_RECURSO: TIntegerField;
    TFusionadoCONS_TIPO_FUSIONADO: TIntegerField;
    TFusionadoCANTIDAD: TIntegerField;
    TFusionadoDIME_PLAT_ANCHO: TFloatField;
    TFusionadoDIME_PLAT_LARGO: TFloatField;
    TFusionadoDIME_PLAT_AREA: TFloatField;
    TFusionadoCONS_ACCI_FUSIONADO: TIntegerField;
    TFusionadoCONS_SIST_PRESION: TIntegerField;
    TFusionadoVELOCIDAD: TFloatField;
    QTipo_Fusionado: TQuery;
    DSQTipo_Fusionado: TDataSource;
    DSQAccionamiento_Fusionado: TDataSource;
    QAccionamiento_Fusionado: TQuery;
    DSQSistema_Presion: TDataSource;
    QSistema_Presion: TQuery;
    TFusionado_Temporal: TRxMemoryData;
    DSFusionado_Temporal: TDataSource;
    TFusionado_TemporalCONS_RECURSO: TIntegerField;
    TFusionado_TemporalCONS_TIPO_FUSIONADO: TIntegerField;
    TFusionado_TemporalCANTIDAD: TIntegerField;
    TFusionado_TemporalDIME_PLAT_ANCHO: TFloatField;
    TFusionado_TemporalDIME_PLAT_LARGO: TFloatField;
    TFusionado_TemporalDIME_PLAT_AREA: TFloatField;
    TFusionado_TemporalCONS_ACCI_FUSIONADO: TIntegerField;
    TFusionado_TemporalCONS_SIST_PRESION: TIntegerField;
    TFusionado_TemporalVELOCIDAD: TFloatField;
    PCCostura: TSCLTabSheet;
    PCPFrame9: TPCPFrame;
    SCLDBLabel43: TSCLDBLabel;
    SCLDBLabel44: TSCLDBLabel;
    SCLDBLabel45: TSCLDBLabel;
    SCLDBLabel46: TSCLDBLabel;
    SCLDBLabel47: TSCLDBLabel;
    Label21: TLabel;
    SCLDBLabel48: TSCLDBLabel;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit18: TdxDBEdit;
    dxDBEdit19: TdxDBEdit;
    dxDBEdit20: TdxDBEdit;
    dxDBEdit21: TdxDBEdit;
    dxDBEdit22: TdxDBEdit;
    SCLDBLabel34: TSCLDBLabel;
    dxDBEdit23: TdxDBEdit;
    SCLDBLabel41: TSCLDBLabel;
    dxDBEdit24: TdxDBEdit;
    SCLDBLabel49: TSCLDBLabel;
    SCLDBLabel50: TSCLDBLabel;
    dxDBEdit25: TdxDBEdit;
    dxDBEdit26: TdxDBEdit;
    TCostura: TTable;
    DSCostura: TDataSource;
    TCosturaCONS_RECURSO: TIntegerField;
    TCosturaTRANSPORTE: TStringField;
    TCosturaARRASTRE: TStringField;
    TCosturaAJUSTE: TStringField;
    TCosturaNUME_AGUJAS: TIntegerField;
    TCosturaSEPA_AGUJAS: TFloatField;
    TCosturaALTU_PRENSATELAS: TFloatField;
    TCosturaLARG_PUNT_MAXIMO: TFloatField;
    TCosturaLARG_PUNT_MINIMO: TFloatField;
    TCosturaANCH_COST_MAXIMO: TFloatField;
    TCosturaANCH_COST_MINIMO: TFloatField;
    TCostura_Temporal: TRxMemoryData;
    DSCostura_Temporal: TDataSource;
    TCostura_TemporalCONS_RECURSO: TIntegerField;
    TCostura_TemporalTRANSPORTE: TStringField;
    TCostura_TemporalARRASTRE: TStringField;
    TCostura_TemporalAJUSTE: TStringField;
    TCostura_TemporalNUME_AGUJAS: TIntegerField;
    TCostura_TemporalSEPA_AGUJAS: TFloatField;
    TCostura_TemporalALTU_PRENSATELAS: TFloatField;
    TCostura_TemporalLARG_PUNT_MAXIMO: TFloatField;
    TCostura_TemporalLARG_PUNT_MINIMO: TFloatField;
    TCostura_TemporalANCH_COST_MAXIMO: TFloatField;
    TCostura_TemporalANCH_COST_MINIMO: TFloatField;
    PCPlanchado: TSCLTabSheet;
    PCPFrame10: TPCPFrame;
    dxDBCheckEdit1: TdxDBCheckEdit;
    SCLDBLabel51: TSCLDBLabel;
    PCPLookUpComboEdit9: TPCPLookUpComboEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    SCLDBLabel52: TSCLDBLabel;
    PCPLookUpComboEdit10: TPCPLookUpComboEdit;
    SCLDBLabel53: TSCLDBLabel;
    dxDBEdit27: TdxDBEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    SCLDBLabel54: TSCLDBLabel;
    PCPLookUpComboEdit11: TPCPLookUpComboEdit;
    SCLDBLabel55: TSCLDBLabel;
    PCPLookUpComboEdit12: TPCPLookUpComboEdit;
    dxDBCheckEdit4: TdxDBCheckEdit;
    SCLDBLabel56: TSCLDBLabel;
    PCPLookUpComboEdit13: TPCPLookUpComboEdit;
    SCLDBLabel57: TSCLDBLabel;
    dxDBEdit28: TdxDBEdit;
    TPlanchado: TTable;
    DSPlanchado: TDataSource;
    TPlanchadoCONS_RECURSO: TIntegerField;
    TPlanchadoPLANCHA: TIntegerField;
    TPlanchadoCONS_TIPO_PLANCHADO: TIntegerField;
    TPlanchadoMESA: TIntegerField;
    TPlanchadoCONS_SIST_PLANCHADO: TIntegerField;
    TPlanchadoUTIL_MESA: TStringField;
    TPlanchadoBRAZO: TIntegerField;
    TPlanchadoCONS_TIPO_BRAZO: TIntegerField;
    TPlanchadoCONS_SIST_PLAN_BRAZO: TIntegerField;
    TPlanchadoPRENSA: TIntegerField;
    TPlanchadoCONS_TIPO_PRENSA: TIntegerField;
    TPlanchadoUTIL_PRENSA: TStringField;
    TPlanchado_Temporal: TRxMemoryData;
    DSPlanchado_Temporal: TDataSource;
    TPlanchado_TemporalCONS_RECURSO: TIntegerField;
    TPlanchado_TemporalPLANCHA: TIntegerField;
    TPlanchado_TemporalCONS_TIPO_PLANCHADO: TIntegerField;
    TPlanchado_TemporalMESA: TIntegerField;
    TPlanchado_TemporalCONS_SIST_PLANCHADO: TIntegerField;
    TPlanchado_TemporalUTIL_MESA: TStringField;
    TPlanchado_TemporalBRAZO: TIntegerField;
    TPlanchado_TemporalCONS_TIPO_BRAZO: TIntegerField;
    TPlanchado_TemporalCONS_SIST_PLAN_BRAZO: TIntegerField;
    TPlanchado_TemporalPRENSA: TIntegerField;
    TPlanchado_TemporalCONS_TIPO_PRENSA: TIntegerField;
    TPlanchado_TemporalUTIL_PRENSA: TStringField;
    QTipo_Planchado: TQuery;
    DSQTipo_Planchado: TDataSource;
    QSistema_Planchado: TQuery;
    DSQTipo_Brazo: TDataSource;
    QTipo_Brazo: TQuery;
    QTipo_Prensa: TQuery;
    DSQTipo_Prensa: TDataSource;
    DSQSistema_Planchado: TDataSource;
    QSistema_Planchado_Brazo: TQuery;
    DSQSistema_Planchado_Brazo: TDataSource;
    TCosturaCONS_RECU_TIPO_PUNTADA: TIntegerField;
    TCosturaVELOCIDAD: TFloatField;
    TCosturaRPM: TIntegerField;
    TCostura_TemporalCONS_RECU_TIPO_PUNTADA: TIntegerField;
    TCostura_TemporalVELOCIDAD: TFloatField;
    TCostura_TemporalRPM: TIntegerField;
    Label1: TLabel;
    SCLDBLabel58: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    CBTipo_Puntada: TPCPLookUpComboEdit;
    DBRPM: TdxDBCurrencyEdit;
    DBVelocidad_Corte: TdxDBCurrencyEdit;
    EDBImage1: TEDBImage;
    procedure FormCreate(Sender: TObject);
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure ffra_maqu_ubicacion1comb_tipo_ubicacionChange(
      Sender: TObject);
    procedure TRecursos_TemporalBeforePost(DataSet: TDataSet);
    procedure TTraslados_TemporalBeforePost(DataSet: TDataSet);
    procedure Tabla_VentanaAfterPost(DataSet: TDataSet);
    procedure Acti_Nuev_CaracteristicaExecute(Sender: TObject);
    procedure padr_acti_actualizarClick(Sender: TObject);
    procedure TCaracteristicas_Asignadas_TemporalBeforePost(
      DataSet: TDataSet);
    procedure TCaracteristicas_AsignadasBeforePost(DataSet: TDataSet);
    procedure CBPrestamoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBFamilia_RecursoClick(Sender: TObject);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure DSRecursosStateChange(Sender: TObject);
    procedure Tabla_VentanaAfterScroll(DataSet: TDataSet);
    procedure CBTipo_FusionadoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
		Modificar, Insertando : Boolean;
    procedure Eliminar_Datos;
  end;

var
  fn1_maqu_ingreso1: Tfn1_maqu_ingreso1;

implementation
uses _cons_pcp, _MDI, _func_varias, _Traductor;
{$R *.DFM}

{****************************************************************
Procedimiento   : Eliminar_Datos
Objetivo        : Eliminar los datos especiales vacios
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Enero 22 de 2006
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.Eliminar_Datos;
Var
	I : Integer;
  Eliminar : Boolean;
begin
	//Verificar que la tabla extendido este abierta
  If TExtendido.Active Then
  Begin
		//Inicializar variables
    Eliminar := True;

    //Recorrer los campos
    For I := 1 To TExtendido.FieldCount - 1 Do
    	//Verificar si esta vacio el campo
      If TExtendido.Fields[I].AsString <> '' Then
      	Eliminar := False;

    //Verificar si se elimina
    If Eliminar Then
    	//Eliminar el registro
      Try TExtendido.Delete;
      Except End;
  End;
	//Verificar que la tabla corte este abierta
  If TCorte.Active Then
  Begin
		//Inicializar variables
    Eliminar := True;

    //Recorrer los campos
    For I := 1 To TCorte.FieldCount - 1 Do
    	//Verificar si esta vacio el campo
      If TCorte.Fields[I].AsString <> '' Then
      	Eliminar := False;

    //Verificar si se elimina
    If Eliminar Then
    	//Eliminar el registro
      Try TCorte.Delete;
      Except End;
  End;
	//Verificar que la tabla fusionado este abierta
  If TFusionado.Active Then
  Begin
		//Inicializar variables
    Eliminar := True;

    //Recorrer los campos
    For I := 1 To TFusionado.FieldCount - 1 Do
    	//Verificar si esta vacio el campo
      If TFusionado.Fields[I].AsString <> '' Then
      	Eliminar := False;

    //Verificar si se elimina
    If Eliminar Then
    	//Eliminar el registro
      Try TFusionado.Delete;
      Except End;
  End;
	//Verificar que la tabla costura este abierta
  If TCostura.Active Then
  Begin
		//Inicializar variables
    Eliminar := True;

    //Recorrer los campos
    For I := 1 To TCostura.FieldCount - 1 Do
    	//Verificar si esta vacio el campo
      If TCostura.Fields[I].AsString <> '' Then
      	Eliminar := False;

    //Verificar si se elimina
    If Eliminar Then
    	//Eliminar el registro
      Try TCostura.Delete;
      Except End;
  End;
end;

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Junio 1 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.FormCreate(Sender: TObject);
begin
  inherited;
  //Abrir tablas auxiliares
  Modificar := True;
  TCaracteristicas_Asignadas_Temporal.Open;

  TRecursos_Temporal.Open;
  TTraslados_Temporal.Open;
  TExtendido_Temporal.Open;
  TCorte_Temporal.Open;
  TFusionado_Temporal.Open;
  TCostura_Temporal.Open;
  TPlanchado_Temporal.Open;

  AbrirDataSet(QTipo_Documento_Movimiento);
  AbrirDataSet(QPersonal);

  AbrirDataSet(QGrupos);
  AbrirDataSet(QTipo_Recurso);
  AbrirDataSet(QFamilias);
  AbrirDataSet(QTipo_Caracteristicas_Tipo);
  AbrirDataSet(QMarcas);
  AbrirDataSet(QAccionamiento);
  AbrirDataSet(QTipo_Extendido);
  AbrirDataSet(QPresentacion_Tejido);
  AbrirDataSet(QAccionamiento_Corte);
  AbrirDataSet(QCuchillas);
  AbrirDataSet(QTipo_Fusionado);
  AbrirDataSet(QAccionamiento_Fusionado);
  AbrirDataSet(QSistema_Presion);
  AbrirDataSet(QTipo_Planchado);
  AbrirDataSet(QSistema_Planchado);
  AbrirDataSet(QTipo_Brazo);
  AbrirDataSet(QSistema_Planchado_Brazo);
  AbrirDataSet(QTipo_Prensa);

  AbrirDataSet(QTipo_Puntada);

  AbrirDataSet(TRecursos);
  AbrirDataSet(TTraslados);
  AbrirDataSet(TExtendido);
  AbrirDataSet(TCorte);
  AbrirDataSet(TFusionado);
  AbrirDataSet(TCostura);
  AbrirDataSet(TPlanchado);

  InicializarFrame(ffra_maqu_ubicacion1);

  AbrirDataSet(QCaracteristicas_Asignadas);
  AbrirDataSet(TCaracteristicas_Asignadas);
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaAfterPost
Objetivo        : Se guarda la informaci�n de las demas tablas
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Junio 1 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.Tabla_VentanaBeforePost(DataSet: TDataSet);
Var
  I : Integer;
begin
  inherited;
  Insertando := (Tabla_Ventana.State = dsInsert);
  If Tabla_Ventana.State = dsInsert Then Begin
    //Verifico que la tabla temporal de datos del recurso este guardada
    If (TRecursos_Temporal.State In [dsEdit, dsInsert]) Then
    try TRecursos_Temporal.Post;
    except Abort;
    end;

    //Verifico que la tabla temporal de traslados este guardada
    If (TTraslados_Temporal.State In [dsEdit, dsInsert]) Then
    try TTraslados_Temporal.Post;
    except Abort;
    end;

    //Verifico que existan registros en la tabla de Recursos
    If TRecursos_Temporal.RecordCount < 1 Then Begin
      EjecutarMensaje('Ingrese la informaci�n del Recurso', mtConfirmation, [mbOk], 0);
      Abort;
    End;
    //Verifico que existan registros en la tabla de Traslados
    If TTraslados_Temporal.RecordCount < 1 Then Begin
      EjecutarMensaje('Ingrese la informaci�n de la Ubicaci�n del Recurso', mtConfirmation, [mbOk], 0);
      Abort;
    End;

    If Not TRecursos.Active Then Begin
      TRecursos.MasterSource := Nil;
//      TRecursos.MasterFields := '';
//      TRecursos.IndexFieldNames := '';
      DSRecursos.DataSet := Nil;
      AbrirDataSet(TRecursos);
    End;

    Try
      //Trasladar los datos del Recurso
      TRecursos.Insert;
      For I := 0 To TRecursos.FieldCount - 1 Do
        TRecursos.Fields[I].Value := TRecursos_Temporal.Fields[I].Value;
      TRecursos.Post;
    Except
      Abort;
    End;

    Tabla_Ventana.FieldByName('CONS_RECU_MOVIMIENTO').AsInteger :=
      GenerarSecuencia('GLO_RECU_MOVIMIENTOS', 'CONS_RECU_MOVIMIENTO');
    Tabla_Ventana.FieldByName('CONS_RECURSO').Value :=
      TRecursos.FieldByName('CONS_RECURSO').Value;
    Tabla_Ventana.FieldByName('CONS_RECU_TIPO_MOVIMIENTO').AsInteger := 1;
  End;
end;

{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Cambiar Datasource a una clase de componente
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Martes 1 de Junio de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.data_ventanaStateChange(Sender: TObject);
var
  I : Integer;

  procedure AssignDataSources2Controls_2(const Form: TForm;
      const ODS, DDS: array of TDataSource);
  var
    i, j: Integer;
  begin
    if High(ODS) = High(DDS) then
    try
    for i := 0 to High(ODS) do
      for j := 0 to Form.ComponentCount - 1 do
        if (Form.Components[j] is TSCLDBLabel) and
           ((Form.Components[j] as TSCLDBLabel).DataSource = ODS[i]) then
          (Form.Components[j] as TSCLDBLabel).DataSource := DDS[i]
        else
        if (Form.Components[j] is TdxDBCurrencyEdit) and
           ((Form.Components[j] as TdxDBCurrencyEdit).DataSource = ODS[i]) then
          (Form.Components[j] as TdxDBCurrencyEdit).DataSource := DDS[i]
        else
        if (Form.Components[j] is TdxDBEdit) and
           ((Form.Components[j] as TdxDBEdit).DataSource = ODS[i]) then
          (Form.Components[j] as TdxDBEdit).DataSource := DDS[i]
        else
        if (Form.Components[j] is TdxDBDateEdit) and
           ((Form.Components[j] as TdxDBDateEdit).DataSource = ODS[i]) then
          (Form.Components[j] as TdxDBDateEdit).DataSource := DDS[i]
        else
        if (Form.Components[j] is TPCPLookupComboEdit) and
          ((Form.Components[j] as TPCPLookupComboEdit).DataSource = ODS[i]) then
          (Form.Components[j] as TPCPLookupComboEdit).DataSource := DDS[i]
        else
        if (Form.Components[j] is TdxDBCheckEdit) and
           ((Form.Components[j] as TdxDBCheckEdit).DataSource = ODS[i]) then
          (Form.Components[j] as TdxDBCheckEdit).DataSource := DDS[i];
    except
      raise;
    end;
  end;

begin
  inherited;
	//Se deshabilita o Habilitan los controles de la forma para que no se pueda editar
{  SetControlEnabled(PCRecurso, 	 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCGenerales, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCUbicacion, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCExtendido, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCCorte, 		 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCFusionado, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCCostura, 	 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCPlanchado, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCImagen, 	 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(FMovimiento, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));}

  case Tabla_Ventana.State of
    dsInsert : begin
      TRecursos_Temporal.EmptyTable;
      TTraslados_Temporal.EmptyTable;
      TCaracteristicas_Asignadas_Temporal.EmptyTable;
      TExtendido_Temporal.EmptyTable;
      TCorte_Temporal.EmptyTable;
      TFusionado_Temporal.EmptyTable;
      TCostura_Temporal.EmptyTable;
      TPlanchado_Temporal.EmptyTable;

      //Cambia los controles de las caracter�sticas
      DBAsignados.DataSource := DSCaracteristicas_Asignadas_Temporal;
      CBPrestamo.DataSource := DSRecursos_Temporal;

      //Cambia los controles del frame de imagen
      ffra_fotografiaDB2.fram_fotografia.DataSource := DSRecursos_Temporal;
      ffra_fotografiaDB2.fram_chec_ajustar.DataSource := DSRecursos_Temporal;

      ffra_fotografiaDB1.fram_fotografia.DataSource := DSRecursos_Temporal;
      ffra_fotografiaDB1.fram_chec_ajustar.DataSource := DSRecursos_Temporal;

      //Cambia los controles del frame de ubicaciones
      For I := 0 To ffra_maqu_ubicacion1.ComponentCount - 1 Do
        //Cambia el Datasource a los Labels
        If (ffra_maqu_ubicacion1.Components[I] Is TSCLDBLabel) Then
          With (ffra_maqu_ubicacion1.Components[I] As TSCLDBLabel) Do Begin
            If DataSource = DSRecursos Then
              DataSource := DSRecursos_Temporal
            Else If DataSource = DSTraslados Then
              DataSource := DSTraslados_Temporal;
          End
        //Cambia el Datasource a los Edits
        Else If (ffra_maqu_ubicacion1.Components[I] Is TdxDBEdit) Then
          With (ffra_maqu_ubicacion1.Components[I] As TdxDBEdit) Do Begin
            If DataSource = DSRecursos Then
              DataSource := DSRecursos_Temporal
            Else If DataSource = DSTraslados Then
              DataSource := DSTraslados_Temporal;
          End
        //Cambia el Datasource a los ComboEdit
        Else If (ffra_maqu_ubicacion1.Components[I] Is TPCPLookUpComboEdit) Then
          With (ffra_maqu_ubicacion1.Components[I] As TPCPLookUpComboEdit) Do Begin
            If DataSource = DSRecursos Then
              DataSource := DSRecursos_Temporal
            Else If DataSource = DSTraslados Then
              DataSource := DSTraslados_Temporal;
          End;

(*          AssignDataSources2Controls_2(Self,
            [DSRecursos, DSTraslados, DSExtendido,
             DSCorte, DSFusionado, DSCostura, DSPlanchado],
            [DSRecursos_Temporal, DSTraslados_Temporal, DSExtendido_Temporal,
             DSCorte_Temporal, DSFusionado_Temporal, DSCostura_Temporal,
             DSPlanchado_Temporal]); *)
      End;

    dsBrowse : Begin
      //Cambia los controles de las caracter�sticas
      DBAsignados.DataSource := DSCaracteristicas_Asignadas;
      CBPrestamo.DataSource := DSRecursos;

      //Cambia los controles del frame de imagen
      ffra_fotografiaDB2.fram_fotografia.DataSource := DSRecursos;
      ffra_fotografiaDB2.fram_chec_ajustar.DataSource := DSRecursos;

      ffra_fotografiaDB1.fram_fotografia.DataSource := DSRecursos;
      ffra_fotografiaDB1.fram_chec_ajustar.DataSource := DSRecursos;

      //Cambia los controles del frame de ubicaciones
      For I := 0 To ffra_maqu_ubicacion1.ComponentCount - 1 Do
        //Cambia el Datasource a los Labels
        If (ffra_maqu_ubicacion1.Components[I] Is TSCLDBLabel) Then
          With (ffra_maqu_ubicacion1.Components[I] As TSCLDBLabel) Do
          Begin
            If DataSource = DSRecursos_Temporal Then
              DataSource := DSRecursos
            Else If DataSource = DSTraslados_Temporal Then
              DataSource := DSTraslados;
          End
        //Cambia el Datasource a los Edits
        Else If (ffra_maqu_ubicacion1.Components[I] Is TdxDBEdit) Then
          With (ffra_maqu_ubicacion1.Components[I] As TdxDBEdit) Do
          Begin
            If DataSource = DSRecursos_Temporal Then
              DataSource := DSRecursos
            Else If DataSource = DSTraslados_Temporal Then
              DataSource := DSTraslados;
          End
        //Cambia el Datasource a los ComboEdit
        Else If (ffra_maqu_ubicacion1.Components[I] Is TPCPLookUpComboEdit) Then
          With (ffra_maqu_ubicacion1.Components[I] As TPCPLookUpComboEdit) Do  Begin
            If DataSource = DSRecursos_Temporal Then
              DataSource := DSRecursos
            Else If DataSource = DSTraslados_Temporal Then
              DataSource := DSTraslados;
          End;

(*          AssignDataSources2Controls_2(Self,
            [DSRecursos_Temporal, DSTraslados_Temporal, DSExtendido_Temporal,
             DSCorte_Temporal, DSFusionado_Temporal, DSCostura_Temporal,
             DSPlanchado_Temporal],
            [DSRecursos, DSTraslados, DSExtendido,
             DSCorte, DSFusionado, DSCostura, DSPlanchado]);*)
      end;
  end; //case
end;

{****************************************************************
Procedimiento   : ffra_maqu_ubicacion1comb_tipo_ubicacionChange
Objetivo        : Modificar los datos de los campos de ubicaci�n
									seg�n tipo de ubicaci�n
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Junio 1 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.ffra_maqu_ubicacion1comb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  ffra_maqu_ubicacion1.comb_tipo_ubicacionChange(Sender);
  If Tabla_Ventana.State = dsInsert Then
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
    End
  Else If Tabla_Ventana.State = dsEdit Then
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
    End
end;

{****************************************************************
Procedimiento   : TRecursos_TemporalBeforePost
Objetivo        : Validar campos requeridos
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Junio 1 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.TRecursos_TemporalBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Se asigna el �ltimo consecutivo de la tabla
  If TRecursos_Temporal.State = dsInsert Then Begin
    QConsecutivo_Recurso.Close;
    QConsecutivo_Recurso.Open;
    TRecursos_Temporal.FieldByName('CONS_RECURSO').Value :=
      QConsecutivo_Recurso.FieldByName('SECUENCIA').Value;
    QConsecutivo_Recurso.Close;
  End;

  //Verifico que no falte ning�n campo requerido
  ValidarDatosDataSet(TRecursos_Temporal);
end;

{****************************************************************
Procedimiento   : TTraslados_TemporalBeforePost
Objetivo        : Validar campos requeridos
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Junio 1 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.TTraslados_TemporalBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //Verifico que no falte ning�n campo requerido
  ValidarDatosDataSet(TTraslados_Temporal);
end;

{****************************************************************
Procedimiento   : Tabla_VentanaAfterPost
Objetivo        : Grabar las demas tablas
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Junio 1 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.Tabla_VentanaAfterPost(DataSet: TDataSet);
Var
  I : Integer;
begin
  inherited;
	If Insertando Then
  Begin
		Modificar := False;
    If Not TTraslados.Active Then
    Begin
      TTraslados.MasterSource := Nil;
	    AbrirDataSet(TTraslados);
    End;
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
    TTraslados.Close;
    TTraslados.MasterSource := data_ventana;
    AbrirDataSet(TTraslados);

      If TExtendido_Temporal.RecordCount > 0 Then
      Try
        //Traslado los datos de extendido
        TExtendido.Insert;
        For I := 1 To TExtendido.FieldCount - 1 Do
          TExtendido.Fields[I].Value := TExtendido_Temporal.Fields[I - 1].Value;
        TExtendido.Post;
      Except
        TExtendido.Close;
        TExtendido.Open;
      End;

      If TCorte_Temporal.RecordCount > 0 Then
      Try
        //Traslado los datos de corte
        TCorte.Insert;
        For I := 1 To TCorte.FieldCount - 1 Do
          TCorte.Fields[I].Value := TCorte_Temporal.Fields[I - 1].Value;
        TCorte.Post;
      Except
        TCorte.Close;
        TCorte.Open;
      End;

      If TFusionado_Temporal.RecordCount > 0 Then
      Try
        //Traslado los datos de fusionado
        TFusionado.Insert;
        For I := 1 To TFusionado.FieldCount - 1 Do
          TFusionado.Fields[I].Value := TFusionado_Temporal.Fields[I - 1].Value;
        TFusionado.Post;
      Except
        TFusionado.Close;
        TFusionado.Open;
      End;

      If TCostura_Temporal.RecordCount > 0 Then
      Try
        //Traslado los datos de costura
        TCostura.Insert;
        For I := 1 To TCostura.FieldCount - 1 Do
          TCostura.Fields[I].Value := TCostura_Temporal.Fields[I - 1].Value;
        TCostura.Post;
      Except
        TCostura.Close;
        TCostura.Open;
      End;

      If TPlanchado_Temporal.RecordCount > 0 Then
      Try
        //Traslado los datos de planchado
        TPlanchado.Insert;
        For I := 1 To TPlanchado.FieldCount - 1 Do
          TPlanchado.Fields[I].Value := TPlanchado_Temporal.Fields[I - 1].Value;
        TPlanchado.Post;
      Except
        TPlanchado.Close;
        TPlanchado.Open;
      End;

    If Not TRecursos.Active Then
    Begin
      TRecursos.MasterSource := data_ventana;
      DSRecursos.DataSet := TRecursos;
    	AbrirDataSet(TRecursos);
    End;

    If DSRecursos.DataSet = Nil Then
    	DSRecursos.DataSet := TRecursos;

    If TCaracteristicas_Asignadas_Temporal.RecordCount > 0 Then
    Begin
      TCaracteristicas_Asignadas_Temporal.First;
      While Not TCaracteristicas_Asignadas_Temporal.EOF Do
      Begin
        QTipo_Caracteristicas_Tipo.Locate('CODI_TIPO_CARACTERISTICA',
          TCaracteristicas_Asignadas_Temporal.FieldByName('CODI_TIPO_CARACTERISTICA').AsString, []);
        TCaracteristicas_Asignadas.Insert;
        TCaracteristicas_Asignadas.FieldByName('CONS_RECU_TIPO_CARACTERISTICA').AsInteger :=
          QTipo_Caracteristicas_Tipo.FieldByName('CONS_RECU_TIPO_CARACTERISTICA').AsInteger;
        TCaracteristicas_Asignadas.FieldByName('VALOR').AsString :=
          TCaracteristicas_Asignadas_Temporal.FieldByName('VALOR').AsString;
        TCaracteristicas_Asignadas.Post;
        TCaracteristicas_Asignadas_Temporal.Next;
      End;
    End;
  End;
  //Eliminar los registros vacios
  Eliminar_Datos;
  Modificar := True;
end;

{****************************************************************
Procedimiento   : Acti_Nuev_CaracteristicaExecute
Objetivo        : Adicionar las caracteristicas seleccionadas
									en el grid de caracter�sticas Disponibles
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Lunes Junio 7 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.Acti_Nuev_CaracteristicaExecute(
  Sender: TObject);
begin
  inherited;
end;

{****************************************************************
Procedimiento   : padr_acti_actualizarClick
Objetivo        : Adiciono las caracter�sticas especiales del tipo
									de Recurso
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Miercoles Junio 9 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.padr_acti_actualizarClick(Sender: TObject);
begin
  inherited;
  CBTipo_Recurso.OnClick(Sender);
end;

{****************************************************************
Procedimiento   : TCaracteristicas_Asignadas_TemporalBeforePost
Objetivo        : Verifico que el valor de la caracter�stica especial
		  no quede vacio
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Miercoles Junio 9 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.TCaracteristicas_Asignadas_TemporalBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If TCaracteristicas_Asignadas_Temporal.FieldByName('VALOR').AsString = '' Then
    TCaracteristicas_Asignadas_Temporal.FieldByName('VALOR').AsString := 'NA';
end;

{****************************************************************
Procedimiento   : TCaracteristicas_AsignadasBeforePost
Objetivo        : Asigo el consecutivo del registro
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Miercoles Junio 9 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.TCaracteristicas_AsignadasBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  QConsecutivo_Caracteristica.Close;
  QConsecutivo_Caracteristica.Open;
  DataSet.FieldByName('CONS_RECU_CARACTERISTICA').AsInteger :=
    QConsecutivo_Caracteristica.FieldByName('SECUENCIA').AsInteger;
//  QConsecutivo_Caracteristica.Close;  // Esto sobra aqu�. by Edgarrod
end;

{****************************************************************
Procedimiento   : CBPrestamoChange
Objetivo        : Habilito / deshabilito la fecha de devoluci�n
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Miercoles Junio 9 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.CBPrestamoChange(Sender: TObject);
begin
  inherited;
  //Habilito o deshabilito la fecha final
    If CBPrestamo.Checked Then
    DBFecha_Final.Enabled := True
  Else Begin
    DBFecha_Final.Enabled := False;
    If (Tabla_Ventana.State In [dsInsert,dsEdit]) Then
      Tabla_Ventana.FieldByName('FECH_FINAL').AsString := '';
  End;
end;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Actualizar el child
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Lunes Junio 7 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  NecesitaActualizar := True;
end;

{****************************************************************
Procedimiento   : CBFamilia_RecursoClick
Objetivo        : Elimino las caracteristicas seleccionadas
									en el grid de caracter�sticas Asignadas
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Lunes Junio 7 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.CBFamilia_RecursoClick(Sender: TObject);
begin
  inherited;
  If Tabla_Ventana.State = dsInsert Then Begin
    //Elimino las caracter�sticas que no son del tipo de recurso
    TCaracteristicas_Asignadas_Temporal.First;
    While Not TCaracteristicas_Asignadas_Temporal.EOF Do
      If Not QTipo_Caracteristicas_Tipo.Locate('CODI_TIPO_CARACTERISTICA',
        TCaracteristicas_Asignadas_Temporal.FieldByName('CODI_TIPO_CARACTERISTICA').AsString, []) Then
      Begin
        TCaracteristicas_Asignadas_Temporal.Delete;
        TCaracteristicas_Asignadas_Temporal.First;
      End
      Else
      	TCaracteristicas_Asignadas_Temporal.Next;

    //Inserto las caracter�sticas del tipo de recurso
    While Not QTipo_Caracteristicas_Tipo.EOF Do Begin
      //Inserto las nuevas caracter�sticas
      If Not TCaracteristicas_Asignadas_Temporal.Locate('CODI_TIPO_CARACTERISTICA',
        QTipo_Caracteristicas_Tipo.FieldByName('CODI_TIPO_CARACTERISTICA').AsString, []) Then
      Begin
        TCaracteristicas_Asignadas_Temporal.Insert;
        TCaracteristicas_Asignadas_Temporal.FieldByName('CODI_TIPO_CARACTERISTICA').AsString :=
          QTipo_Caracteristicas_Tipo.FieldByName('CODI_TIPO_CARACTERISTICA').AsString;
        TCaracteristicas_Asignadas_Temporal.FieldByName('NOMB_TIPO_CARACTERISTICA').AsString :=
          QTipo_Caracteristicas_Tipo.FieldByName('NOMB_TIPO_CARACTERISTICA').AsString;
        TCaracteristicas_Asignadas_Temporal.Post;
      end;
      QTipo_Caracteristicas_Tipo.Next;
    end;
  end
  else if Tabla_Ventana.State = dsEdit then begin
    //Elimino las caracter�sticas que no son del tipo de recurso
    TCaracteristicas_Asignadas.First;
    While Not TCaracteristicas_Asignadas.EOF Do
    Begin
      If Not QTipo_Caracteristicas_Tipo.Locate('CONS_RECU_TIPO_CARACTERISTICA',
        TCaracteristicas_Asignadas.FieldByName('COINS_RECU_TIPO_CARACTERISTICA').AsString, []) Then
      Begin
        TCaracteristicas_Asignadas.Delete;
        TCaracteristicas_Asignadas.First;
      End
      Else
      	TCaracteristicas_Asignadas.Next;
    End;

    //Inserto las caracter�sticas del tipo de recurso
    While Not QTipo_Caracteristicas_Tipo.EOF Do
    Begin
      //Inserto las nuevas caracter�sticas
      If Not TCaracteristicas_Asignadas.Locate('CONS_RECU_TIPO_CARACTERISTICA',
        QTipo_Caracteristicas_Tipo.FieldByName('CONS_RECU_TIPO_CARACTERISTICA').AsString, []) Then
      Begin
        TCaracteristicas_Asignadas.Insert;
        TCaracteristicas_Asignadas.FieldByName('CONS_RECU_TIPO_CARACTERISTICA').AsString :=
          QTipo_Caracteristicas_Tipo.FieldByName('CONS_RECU_TIPO_CARACTERISTICA').AsString;
        TCaracteristicas_Asignadas.FieldByName('VALOR').AsString := 'NA';
        TCaracteristicas_Asignadas.Post;
      End;
      QTipo_Caracteristicas_Tipo.Next;
    End;
  End;
end;

{****************************************************************
Procedimiento   : Tabla_VentanaAfterInsert
Objetivo        : Ejecutar la accion del CheckEdit de prestamo
Realizado por   : Gustavo Mu�oz (DESARROLLO)
Fecha           : Lunes Junio 7 de 2004
Versi�n         : pcp4000
*****************************************************************}
procedure Tfn1_maqu_ingreso1.Tabla_VentanaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //Campos por defecto
//  With tabla_Ventana do
  DataSet.FieldByName('FECH_INICIAL').Value := NowDate;
  CBPrestamo.OnChange(CBPrestamo);
end;

procedure Tfn1_maqu_ingreso1.DSRecursosStateChange(Sender: TObject);
begin
  inherited;
  //Verificar que sea un TTable
  If Modificar Then
    If (Sender Is TDataSource) Then
      If (((Sender As TDataSource).DataSet.State In [dsEdit, dsInsert])
        And (Tabla_Ventana.State = dsBrowse)) Then
          padr_acti_modificar.Execute;
end;

procedure Tfn1_maqu_ingreso1.Tabla_VentanaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with ffra_maqu_ubicacion1 do
    comb_tipo_ubicacion.OnChange(ffra_maqu_ubicacion1.comb_tipo_ubicacion);
end;

procedure Tfn1_maqu_ingreso1.CBTipo_FusionadoChange(Sender: TObject);
begin
  inherited;
  If CBTipo_Fusionado.Text <> '' Then
    DBCantidad_Fusionado.Enabled := (CBTipo_Fusionado.KeyValue <> 2);
end;
end.



procedure Tfn1_maqu_ingreso1.data_ventanaStateChange(Sender: TObject);
Var
	I : Integer;
begin
  inherited;
	//Se deshabilita o Habilitan los controles de la forma para que no se pueda editar
{  SetControlEnabled(PCRecurso, 	 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCGenerales, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCUbicacion, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCExtendido, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCCorte, 		 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCFusionado, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCCostura, 	 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCPlanchado, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(PCImagen, 	 	(Tabla_Ventana.State In [dsInsert, dsEdit]));
  SetControlEnabled(FMovimiento, 	(Tabla_Ventana.State In [dsInsert, dsEdit]));}


  If Tabla_Ventana.State = dsInsert Then
	Begin
    TRecursos_Temporal.EmptyTable;
    TTraslados_Temporal.EmptyTable;
    TCaracteristicas_Asignadas_Temporal.EmptyTable;
    TExtendido_Temporal.EmptyTable;
    TCorte_Temporal.EmptyTable;
    TFusionado_Temporal.EmptyTable;
    TCostura_Temporal.EmptyTable;
    TPlanchado_Temporal.EmptyTable;
    TRecursos.Close;
    TTraslados.Close;
    TRecursos.MasterSource := Nil;
    DSRecursos.DataSet := Nil;
    TTraslados.MasterSource := Nil;

    //Cambia los controles de las caracter�sticas
    DBAsignados.DataSource := DSCaracteristicas_Asignadas_Temporal;
    CBPrestamo.DataSource := DSRecursos_Temporal;

    //Cambia los controles del frame de imagen
    ffra_fotografiaDB2.fram_fotografia.DataSource := DSRecursos_Temporal;
    ffra_fotografiaDB2.fram_chec_ajustar.DataSource := DSRecursos_Temporal;

    ffra_fotografiaDB1.fram_fotografia.DataSource := DSRecursos_Temporal;
    ffra_fotografiaDB1.fram_chec_ajustar.DataSource := DSRecursos_Temporal;

    //Cambia los controles del frame de ubicaciones
    For I := 0 To ffra_maqu_ubicacion1.ComponentCount - 1 Do
      //Cambia el Datasource a los Labels
      If (ffra_maqu_ubicacion1.Components[I] Is TSCLDBLabel) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TSCLDBLabel) Do
        Begin
          If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal;
        End
      //Cambia el Datasource a los Edits
      Else If (ffra_maqu_ubicacion1.Components[I] Is TdxDBEdit) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TdxDBEdit) Do
        Begin
          If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal;
        End
      //Cambia el Datasource a los ComboEdit
      Else If (ffra_maqu_ubicacion1.Components[I] Is TPCPLookUpComboEdit) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TPCPLookUpComboEdit) Do
        Begin
          If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal;
        End;

		For I := 0 To Self.ComponentCount - 1 Do
      //Cambia el Datasource a los Labels
    	If (Self.Components[I] Is TSCLDBLabel) Then
				With (Self.Components[I] As TSCLDBLabel) Do
        Begin
          If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal
          Else If DataSource = DSExtendido Then
            DataSource := DSExtendido_Temporal
          Else If DataSource = DSCorte Then
            DataSource := DSCorte_Temporal
          Else If DataSource = DSFusionado Then
            DataSource := DSFusionado_Temporal
          Else If DataSource = DSCostura Then
            DataSource := DSCostura_Temporal
          Else If DataSource = DSPlanchado Then
            DataSource := DSPlanchado_Temporal;
        End
      //Cambia el Datasource a los Currency
    	Else If (Self.Components[I] Is TdxDBCurrencyEdit) Then
				With (Self.Components[I] As TdxDBCurrencyEdit) Do
        Begin
          If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal
          Else If DataSource = DSExtendido Then
            DataSource := DSExtendido_Temporal
          Else If DataSource = DSCorte Then
            DataSource := DSCorte_Temporal
          Else If DataSource = DSFusionado Then
            DataSource := DSFusionado_Temporal
          Else If DataSource = DSCostura Then
            DataSource := DSCostura_Temporal
          Else If DataSource = DSPlanchado Then
            DataSource := DSPlanchado_Temporal;
        End
      //Cambia el Datasource a los Edits
    	Else If (Self.Components[I] Is TdxDBEdit) Then
				With (Self.Components[I] As TdxDBEdit) Do
        Begin
          If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal
          Else If DataSource = DSExtendido Then
            DataSource := DSExtendido_Temporal
          Else If DataSource = DSCorte Then
            DataSource := DSCorte_Temporal
          Else If DataSource = DSFusionado Then
            DataSource := DSFusionado_Temporal
          Else If DataSource = DSCostura Then
            DataSource := DSCostura_Temporal
          Else If DataSource = DSPlanchado Then
            DataSource := DSPlanchado_Temporal;
        End
      //Cambia el Datasource a los DateEdits
    	Else If (Self.Components[I] Is TdxDBDateEdit) Then
				With (Self.Components[I] As TdxDBDateEdit) Do
        Begin
          If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal
          Else If DataSource = DSExtendido Then
            DataSource := DSExtendido_Temporal
          Else If DataSource = DSCorte Then
            DataSource := DSCorte_Temporal
          Else If DataSource = DSFusionado Then
            DataSource := DSFusionado_Temporal
          Else If DataSource = DSCostura Then
            DataSource := DSCostura_Temporal
          Else If DataSource = DSPlanchado Then
            DataSource := DSPlanchado_Temporal;
        End
      //Cambia el Datasource a los ComboEdit
    	Else If (Self.Components[I] Is TPCPLookUpComboEdit) Then
				With (Self.Components[I] As TPCPLookUpComboEdit) Do
        Begin
          If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal
          Else If DataSource = DSExtendido Then
            DataSource := DSExtendido_Temporal
          Else If DataSource = DSCorte Then
            DataSource := DSCorte_Temporal
          Else If DataSource = DSFusionado Then
            DataSource := DSFusionado_Temporal
          Else If DataSource = DSCostura Then
            DataSource := DSCostura_Temporal
          Else If DataSource = DSPlanchado Then
            DataSource := DSPlanchado_Temporal;
        End
      //Cambia el Datasource a los ComboEdit
    	Else If (Self.Components[I] Is TdxDBCheckEdit) Then
				With (Self.Components[I] As TdxDBCheckEdit) Do
        Begin
          If DataSource = DSRecursos Then
            DataSource := DSRecursos_Temporal
          Else If DataSource = DSTraslados Then
            DataSource := DSTraslados_Temporal
          Else If DataSource = DSExtendido Then
            DataSource := DSExtendido_Temporal
          Else If DataSource = DSCorte Then
            DataSource := DSCorte_Temporal
          Else If DataSource = DSFusionado Then
            DataSource := DSFusionado_Temporal
          Else If DataSource = DSCostura Then
            DataSource := DSCostura_Temporal
          Else If DataSource = DSPlanchado Then
            DataSource := DSPlanchado_Temporal;
        End;

	End
//
  Else
	Begin
    If Not TRecursos.Active Then
    Begin
      TRecursos.MasterSource := data_ventana;
      DSRecursos.DataSet := TRecursos;
    	AbrirDataSet(TRecursos);
    End;
    If Not TTraslados.Active Then
    Begin
      TTraslados.MasterSource := data_ventana;
	    AbrirDataSet(TTraslados);
    End;

    //Cambia los controles de las caracter�sticas
    DBAsignados.DataSource := DSCaracteristicas_Asignadas;
    CBPrestamo.DataSource := DSRecursos;

    //Cambia los controles del frame de imagen
    ffra_fotografiaDB2.fram_fotografia.DataSource := DSRecursos;
    ffra_fotografiaDB2.fram_chec_ajustar.DataSource := DSRecursos;

    ffra_fotografiaDB1.fram_fotografia.DataSource := DSRecursos;
    ffra_fotografiaDB1.fram_chec_ajustar.DataSource := DSRecursos;

    //Cambia los controles del frame de ubicaciones
    For I := 0 To ffra_maqu_ubicacion1.ComponentCount - 1 Do
      //Cambia el Datasource a los Labels
      If (ffra_maqu_ubicacion1.Components[I] Is TSCLDBLabel) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TSCLDBLabel) Do
        Begin
          If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados;
        End
      //Cambia el Datasource a los Edits
      Else If (ffra_maqu_ubicacion1.Components[I] Is TdxDBEdit) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TdxDBEdit) Do
        Begin
          If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados;
        End
      //Cambia el Datasource a los ComboEdit
      Else If (ffra_maqu_ubicacion1.Components[I] Is TPCPLookUpComboEdit) Then
      	With (ffra_maqu_ubicacion1.Components[I] As TPCPLookUpComboEdit) Do
        Begin
          If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados;
        End;

		For I := 0 To Self.ComponentCount - 1 Do
      //Cambia el Datasource a los Labels
    	If (Self.Components[I] Is TSCLDBLabel) Then
				With (Self.Components[I] As TSCLDBLabel) Do
        Begin
          If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados
          Else If DataSource = DSExtendido_Temporal Then
            DataSource := DSExtendido
          Else If DataSource = DSCorte_Temporal Then
            DataSource := DSCorte
          Else If DataSource = DSFusionado_Temporal Then
            DataSource := DSFusionado
          Else If DataSource = DSCostura_Temporal Then
            DataSource := DSCostura
          Else If DataSource = DSPlanchado_Temporal Then
            DataSource := DSPlanchado;
        End
      //Cambia el Datasource a los Currency
    	Else If (Self.Components[I] Is TdxDBCurrencyEdit) Then
				With (Self.Components[I] As TdxDBCurrencyEdit) Do
        Begin
          If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados
          Else If DataSource = DSExtendido_Temporal Then
            DataSource := DSExtendido
          Else If DataSource = DSCorte_Temporal Then
            DataSource := DSCorte
          Else If DataSource = DSFusionado_Temporal Then
            DataSource := DSFusionado
          Else If DataSource = DSCostura_Temporal Then
            DataSource := DSCostura
          Else If DataSource = DSPlanchado_Temporal Then
            DataSource := DSPlanchado;
        End
      //Cambia el Datasource a los Edits
    	Else If (Self.Components[I] Is TdxDBEdit) Then
				With (Self.Components[I] As TdxDBEdit) Do
        Begin
          If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados
          Else If DataSource = DSExtendido_Temporal Then
            DataSource := DSExtendido
          Else If DataSource = DSCorte_Temporal Then
            DataSource := DSCorte
          Else If DataSource = DSFusionado_Temporal Then
            DataSource := DSFusionado
          Else If DataSource = DSCostura_Temporal Then
            DataSource := DSCostura
          Else If DataSource = DSPlanchado_Temporal Then
            DataSource := DSPlanchado;
        End
      //Cambia el Datasource a los DateEdits
    	Else If (Self.Components[I] Is TdxDBDateEdit) Then
				With (Self.Components[I] As TdxDBDateEdit) Do
        Begin
          If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados
          Else If DataSource = DSExtendido_Temporal Then
            DataSource := DSExtendido
          Else If DataSource = DSCorte_Temporal Then
            DataSource := DSCorte
          Else If DataSource = DSFusionado_Temporal Then
            DataSource := DSFusionado
          Else If DataSource = DSCostura_Temporal Then
            DataSource := DSCostura
          Else If DataSource = DSPlanchado_Temporal Then
            DataSource := DSPlanchado;
        End
      //Cambia el Datasource a los ComboEdit
    	Else If (Self.Components[I] Is TPCPLookUpComboEdit) Then
				With (Self.Components[I] As TPCPLookUpComboEdit) Do
        Begin
          If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados
          Else If DataSource = DSExtendido_Temporal Then
            DataSource := DSExtendido
          Else If DataSource = DSCorte_Temporal Then
            DataSource := DSCorte
          Else If DataSource = DSFusionado_Temporal Then
            DataSource := DSFusionado
          Else If DataSource = DSCostura_Temporal Then
            DataSource := DSCostura
          Else If DataSource = DSPlanchado_Temporal Then
            DataSource := DSPlanchado;
        End
      //Cambia el Datasource a los ComboEdit
    	Else If (Self.Components[I] Is TdxDBCheckEdit) Then
				With (Self.Components[I] As TdxDBCheckEdit) Do
        Begin
          If DataSource = DSRecursos_Temporal Then
            DataSource := DSRecursos
          Else If DataSource = DSTraslados_Temporal Then
            DataSource := DSTraslados
          Else If DataSource = DSExtendido_Temporal Then
            DataSource := DSExtendido
          Else If DataSource = DSCorte_Temporal Then
            DataSource := DSCorte
          Else If DataSource = DSFusionado_Temporal Then
            DataSource := DSFusionado
          Else If DataSource = DSCostura_Temporal Then
            DataSource := DSCostura
          Else If DataSource = DSPlanchado_Temporal Then
            DataSource := DSPlanchado;
        End;
	End;
end;


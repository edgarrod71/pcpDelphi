{*******************************************************************}
{       Softconf Limitada                                           }
{       Planeación y Control de la Producción                       }
{                                                                   }
{       Todos los derechos reservados (c) 1998-2004                 }
{       Software de Confianza   Softconf Limitada                   }
{                                                                   }
{       Todo el contenido de este archivo está protegido por las    }
{       leyes colombianas y por las Leyes y Tratados                }
{       Internacionales.                                            }
{                                                                   }
{       Su reproducción no autorizada, la ingeniería inversa y la   }
{       distribución total o parcial del código contenido en este   }
{       archivo está estrictamente prohibido y podrá tener severas  }
{       consecuencias civiles y penales.                            }
{                                                                   }
{       RESTRICCIONES                                               }
{                                                                   }
{       ESTE CODIGO Y TODOS LOS ARCHIVOS RELACIONADOS               }
{       (DCU, OBJ, DLL, ETC.) SON CONFIDENCIALES Y SU               }
{       PROPIETARIO ES SOFTCONF LIMITADA.                           }
{                                                                   }
{                                                                   }
{       www.softwaredeconfianza.com                                 }
{       tecnologia@softwaredeconfianza.com                          }
{*******************************************************************
        Unit            : un1_meto_estandar1
        Objetivo        : Elaboración de métodos estándar (detalle)
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Mayo 31 de 2004
        Versión         : pcp4000
*******************************************************************}
                                        
unit un1_meto_estandar1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, Menus, TB2Item, TBX, AsgFindDialog, dxEditor, StdActns, Db,
  TBXDkPanels, TBXButtonSCL, dxDBTL, ufra_historialDB, TBXExtItems,
  dxEdLib, ufra_fotografiaDB, RxLookup, PCPLookUpComboEdit, DBCtrls,
  dxExEdtr, dxDBELib, StdCtrls, PCPFrame, SCLTabs, Grids, BaseGrid,
  AdvGrid, AdvCGrid, SCLColumnGrid, dxDBTLCl, dxGrClms, dxDBGrid, dxTL,
  dxDBCtrl, dxCntner, ExtCtrls, dfsSplitter, TB97, TB97Tlwn,
  PictureContainer, DBTables, AdvPanel, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, Boxes, PCPProceso, SoCtrls, SCLDBLabel,
  TB2Dock, TB2Toolbar;
  
type
  //RC20.5
  TElementoCST = Record
      Existe        : Boolean;
      tien_formula  : Boolean;
      codi_elemento : String[12];
      nomb_elemento : String[60];
      Tiempo        : Real;
      Distancia     : String;
      Dificultad    : String;
      Posicionamiento   : String;
      cons_cst_distancia    : Integer;
      cons_cst_dificultad   : Integer;
      cons_cst_posicionamiento  : Integer;
      var_1    : String;
      var_2    : String;
      var_3    : String;
      var_4    : String;
      var_5    : String;
      var_6    : String;
      var_7    : String;
      var_8    : String;
      var_9    : String;
      var_10    : String;
  End;



  Tfn1_meto_estandar1 = class(T_fvent_modal)
    page: TSCLPageControl;
    page_otro_datos: TSCLTabSheet;
    PCPFrame1: TPCPFrame;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    dxDBCurrencyEdit1: TdxDBCurrencyEdit;
    dxDBCurrencyEdit2: TdxDBCurrencyEdit;
    dxDBCurrencyEdit3: TdxDBCurrencyEdit;
    dxDBCurrencyEdit4: TdxDBCurrencyEdit;
    SCLDBLabel12: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    PCPFrame3: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel5: TSCLDBLabel;
    edit_codi_operacion: TdxDBEdit;
    edit_nomb_operacion: TdxDBEdit;
    comb_proceso: TPCPLookUpComboEdit;
    comb_tipo_operacion: TPCPLookUpComboEdit;
    comb_componente: TPCPLookUpComboEdit;
    page_recursos: TSCLTabSheet;
    PCPFrame5: TPCPFrame;
    SCLDBLabel13: TSCLDBLabel;
    SCLDBLabel14: TSCLDBLabel;
    SCLDBLabel15: TSCLDBLabel;
    SCLDBLabel16: TSCLDBLabel;
    SCLDBLabel17: TSCLDBLabel;
    SCLDBLabel18: TSCLDBLabel;
    SCLDBLabel19: TSCLDBLabel;
    SCLDBLabel20: TSCLDBLabel;
    PCPLookUpComboEdit5: TPCPLookUpComboEdit;
    PCPLookUpComboEdit6: TPCPLookUpComboEdit;
    comb_recu_familia: TPCPLookUpComboEdit;
    PCPLookUpComboEdit8: TPCPLookUpComboEdit;
    dxDBEdit3: TdxDBEdit;
    PCPLookUpComboEdit9: TPCPLookUpComboEdit;
    dxDBCurrencyEdit5: TdxDBCurrencyEdit;
    dxDBCurrencyEdit6: TdxDBCurrencyEdit;
    page_pues_trabajo: TSCLTabSheet;
    dxPageControl1: TSCLPageControl;
    dxTabSheet3: TSCLTabSheet;
    dxTabSheet4: TSCLTabSheet;
    dxTabSheet5: TSCLTabSheet;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    dxDBMemo2: TdxDBMemo;
    ffra_fotografiaDB2: Tffra_fotografiaDB;
    page_elementos: TSCLTabSheet;
    acci_ventana: TActionList;
    acti_insertar: TAction;
    acti_adicionar: TAction;
    acti_eliminar: TAction;
    acti_move_arriba: TAction;
    acti_move_abajo: TAction;
    acti_copiar: TdxEditCopy;
    acti_cortar: TdxEditCut;
    acti_pegar: TdxEditPaste;
    acti_importar: TAction;
    acti_impo_sele_todos: TAction;
    acti_impo_importar: TAction;
    PCPFrame6: TPCPFrame;
    PCPFrame7: TPCPFrame;
    PCPFrame8: TPCPFrame;
    PCPFrame9: TPCPFrame;
    pane_tiempos: TPCPFrame;
    SCLDBLabel21: TSCLDBLabel;
    edit_prod_hora: TdxCurrencyEdit;
    SCLDBLabel22: TSCLDBLabel;
    edit_prod_dia: TdxCurrencyEdit;
    SCLDBLabel23: TSCLDBLabel;
    edit_cost_unidad: TdxCurrencyEdit;
    SCLDBLabel24: TSCLDBLabel;
    SCLDBLabel25: TSCLDBLabel;
    SCLDBLabel26: TSCLDBLabel;
    SCLDBLabel27: TSCLDBLabel;
    edit_tiem_manual: TdxCurrencyEdit;
    SCLDBLabel28: TSCLDBLabel;
    edit_tiem_maquina: TdxCurrencyEdit;
    edit_porc_manual: TdxCurrencyEdit;
    dfsSplitter2: TdfsSplitter;
    SCLDBLabel31: TSCLDBLabel;
    SCLDBLabel32: TSCLDBLabel;
    SCLDBLabel33: TSCLDBLabel;
    Tabla_VentanaCONS_OPER_COSTURA: TIntegerField;
    Tabla_VentanaCONS_PROCESO: TIntegerField;
    Tabla_VentanaCONS_OPER_COST_TIPO: TIntegerField;
    Tabla_VentanaCONS_COMP_GRUPO: TIntegerField;
    Tabla_VentanaNOMB_OPER_COSTURA: TStringField;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaPUNT_POR_CENTIMETRO: TFloatField;
    Tabla_VentanaSUPL_CONSTANTE: TSmallintField;
    Tabla_VentanaSUPL_VARIABLE: TSmallintField;
    Tabla_VentanaCOMP_LARG_COSTURA: TStringField;
    Tabla_VentanaCONS_RECU_GRUPO: TIntegerField;
    Tabla_VentanaCONS_RECU_TIPO: TIntegerField;
    Tabla_VentanaCONS_RECU_FAMILIA: TIntegerField;
    Tabla_VentanaCONS_RECU_MARCA: TIntegerField;
    Tabla_VentanaCLAS_RECURSO: TStringField;
    Tabla_VentanaCONS_RECU_TIPO_PUNTADA: TIntegerField;
    Tabla_VentanaREVO_POR_MINUTO: TIntegerField;
    Tabla_VentanaSUPL_MAQUINA: TSmallintField;
    Tabla_VentanaCONS_ACCE_FAMILIA: TIntegerField;
    Tabla_VentanaIMAG_PUES_TRABAJO: TBlobField;
    Tabla_VentanaAJUS_IMAG_PUES_TRABAJO: TIntegerField;
    Tabla_VentanaIMAG_DIST_PUES_TRABAJO: TBlobField;
    Tabla_VentanaAJUS_IMAG_DIST_PUES_TRABAJO: TIntegerField;
    Tabla_VentanaTIEM_CRONOMETRO: TIntegerField;
    quer_procesos: TQuery;
    data_procesos: TDataSource;
    quer_oper_tipos: TQuery;
    data_oper_tipos: TDataSource;
    quer_grup_componentes: TQuery;
    data_grupo_componentes: TDataSource;
    quer_recu_tipos: TQuery;
    data_recu_tipos: TDataSource;
    quer_recu_grupos: TQuery;
    data_recu_grupos: TDataSource;
    quer_recu_familias: TQuery;
    data_recu_familias: TDataSource;
    quer_recu_gruposCONS_RECU_GRUPO: TIntegerField;
    quer_recu_gruposNOMB_RECU_GRUPO: TStringField;
    quer_recu_tiposCONS_RECU_GRUPO: TIntegerField;
    quer_recu_tiposCONS_RECU_TIPO: TIntegerField;
    quer_recu_tiposNOMB_RECU_TIPO: TStringField;
    quer_recu_familiasCONS_RECU_FAMILIA: TIntegerField;
    quer_recu_familiasNOMB_RECU_FAMILIA: TStringField;
    quer_recu_familiasPORC_SUPLEMENTO: TSmallintField;
    quer_recu_marcas: TQuery;
    data_recu_marcas: TDataSource;
    quer_tipo_puntada: TQuery;
    data_tipo_puntada: TDataSource;
    TBXDock2: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem6: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem8: TTBXItem;
    TBXItem7: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXItem19: TTBXItem;
    TBXItem18: TTBXItem;
    TBXItem17: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    boto_importar: TTBXVisibilityToggleItem;
    edit_tiem_tmu_3: TdxDBCurrencyEdit;
    page_historial: TSCLTabSheet;
    TBXLabelItem1: TTBXLabelItem;
    edit_nume_elementos: TdxCurrencyEdit;
    TBControlItem2: TTBControlItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    grid: TSCLColumnGrid;
    quer_elem_cst: TQuery;
    quer_elem_cstCODI_ELEM_CST: TStringField;
    quer_elem_cstNOMB_ELEM_CST: TStringField;
    quer_elem_cstCONS_CST_DIFICULTAD: TIntegerField;
    quer_elem_cstCONS_CST_DISTANCIA: TIntegerField;
    quer_elem_cstCONS_CST_POSICIONAMIENTO: TIntegerField;
    quer_elem_cstTIEM_CST: TFloatField;
    quer_elem_cstSOFTCONF: TIntegerField;
    quer_elem_cstNOMB_ANALISTA: TStringField;
    quer_elem_cstDESCRIPCION: TStringField;
    quer_elem_cstFECH_MODIFICACION: TDateTimeField;
    quer_elem_cstUSUA_MODIFICACION: TStringField;
    quer_elem_cstFECH_SISTEMA: TDateTimeField;
    quer_elem_cstUSUA_SISTEMA: TStringField;
    quer_distancias: TQuery;
    quer_dificultades: TQuery;
    quer_posicionamientos: TQuery;
    quer_distanciasCONS_CST_DISTANCIA: TIntegerField;
    quer_distanciasNOMB_CST_DISTANCIA: TStringField;
    quer_dificultadesCONS_CST_DIFICULTAD: TIntegerField;
    quer_dificultadesNOMB_CST_DIFICULTAD: TStringField;
    quer_posicionamientosCONS_CST_POSICIONAMIENTO: TIntegerField;
    quer_posicionamientosNOMB_CST_POSICIONAMIENTO: TStringField;
    quer_elem_cstDISTANCIA: TStringField;
    quer_elem_cstDIFICULTAD: TStringField;
    quer_elem_cstPOSICIONAMIENTO: TStringField;
    quer_elem_guardar: TQuery;
    quer_elem_eliminar: TQuery;
    quer_movimientos: TQuery;
    quer_oper_cost_importar: TQuery;
    quer_oper_cost_importarCONS_OPER_COSTURA: TIntegerField;
    quer_oper_cost_importarNOMB_OPER_COSTURA: TStringField;
    quer_oper_cost_importarCONS_PROCESO: TIntegerField;
    quer_oper_cost_importarCODI_PROCESO: TStringField;
    quer_oper_cost_importarNOMB_PROCESO: TStringField;
    quer_oper_cost_importarCONS_OPER_COST_TIPO: TIntegerField;
    quer_oper_cost_importarCODI_OPER_COST_TIPO: TStringField;
    quer_oper_cost_importarNOMB_OPER_COST_TIPO: TStringField;
    quer_oper_cost_importarCONS_COMP_GRUPO: TIntegerField;
    quer_oper_cost_importarCODI_COMP_GRUPO: TStringField;
    quer_oper_cost_importarNOMB_COMP_GRUPO: TStringField;
    quer_oper_cost_importarFECH_SISTEMA: TDateTimeField;
    quer_oper_cost_importarUSUA_SISTEMA: TStringField;
    quer_oper_cost_importarPUNT_POR_CENTIMETRO: TFloatField;
    quer_oper_cost_importarSUPL_CONSTANTE: TSmallintField;
    quer_oper_cost_importarSUPL_VARIABLE: TSmallintField;
    quer_oper_cost_importarCOMP_LARG_COSTURA: TStringField;
    quer_oper_cost_importarCONS_RECU_FAMILIA: TIntegerField;
    quer_oper_cost_importarCODI_RECU_FAMILIA: TStringField;
    quer_oper_cost_importarNOMB_RECU_FAMILIA: TStringField;
    quer_oper_cost_importarREVO_POR_MINUTO: TIntegerField;
    quer_oper_cost_importarSUPL_MAQUINA: TSmallintField;
    quer_oper_cost_importarCONS_ACCE_FAMILIA: TIntegerField;
    quer_oper_cost_importarIMAG_PUES_TRABAJO: TBlobField;
    quer_oper_cost_importarAJUS_IMAG_PUES_TRABAJO: TIntegerField;
    quer_oper_cost_importarIMAG_DIST_PUES_TRABAJO: TBlobField;
    quer_oper_cost_importarAJUS_IMAG_DIST_PUES_TRABAJO: TIntegerField;
    quer_oper_cost_importarTIEM_CRONOMETRO: TIntegerField;
    quer_oper_cost_importarTIEM_2: TFloatField;
    data_oper_cost_importar: TDataSource;
    pane_importar: TToolWindow97;
    dfsSplitter3: TdfsSplitter;
    TBXDock1: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    TBXItem20: TTBXItem;
    TBXItem21: TTBXItem;
    padr_grid: TdxDBGrid;
    padr_gridCONS_OPER_COSTURA: TdxDBGridMaskColumn;
    padr_gridNOMB_OPER_COSTURA: TdxDBGridMaskColumn;
    padr_gridNOMB_PROCESO: TdxDBGridMaskColumn;
    padr_gridNOMB_OPER_COST_TIPO: TdxDBGridMaskColumn;
    padr_gridNOMB_COMP_GRUPO: TdxDBGridMaskColumn;
    padr_gridTIEM_ASIGNADO: TdxDBGridMaskColumn;
    padr_gridTIEM_2: TdxDBGridMaskColumn;
    padr_gridFECH_SISTEMA: TdxDBGridDateColumn;
    padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn;
    padr_gridDESCRIPCION: TdxDBGridMaskColumn;
    padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn;
    padr_gridPUNT_POR_CENTIMETRO: TdxDBGridMaskColumn;
    padr_gridSUPL_CONSTANTE: TdxDBGridMaskColumn;
    padr_gridSUPL_VARIABLE: TdxDBGridMaskColumn;
    padr_gridLARG_COSTURA: TdxDBGridMaskColumn;
    padr_gridCOMP_LARG_COSTURA: TdxDBGridMaskColumn;
    padr_gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn;
    padr_gridREVO_POR_MINUTO: TdxDBGridMaskColumn;
    padr_gridCONS_ACCE_FAMILIA: TdxDBGridMaskColumn;
    grid_importar: TSCLColumnGrid;
    edit_supl_constante: TdxDBCurrencyEdit;
    edit_supl_variable: TdxDBCurrencyEdit;
    edit_supl_maquina: TdxDBCurrencyEdit;
    edit_porc_maquina: TdxCurrencyEdit;
    edit_tiem_tmu_1: TdxCurrencyEdit;
    edit_tiem_tmu_2: TdxCurrencyEdit;
    edit_tiem_2_1: TdxCurrencyEdit;
    edit_tiem_2_2: TdxCurrencyEdit;
    edit_tiem_2_3: TdxCurrencyEdit;
    Tabla_VentanaTIEM_ASIGNADO: TFloatField;
    acti_sele_todos: TAction;
    TBXItem1: TTBXItem;
    grid_find: TAdvGridFindDialog;
    acti_buscar: TAction;
    TBXItem2: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    pop_grid: TTBXPopupMenu;
    TBXItem3: TTBXItem;
    TBXItem9: TTBXItem;
    TBXItem10: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem13: TTBXItem;
    TBXItem14: TTBXItem;
    TBXItem15: TTBXItem;
    TBXItem16: TTBXItem;
    TBXItem22: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    TBXVisibilityToggleItem1: TTBXVisibilityToggleItem;
    fram_historial: Tffra_historialDB;
    tabl_oper_cost_historial: TTable;
    tabl_oper_cost_historialCONS_ANOTACION: TIntegerField;
    tabl_oper_cost_historialCONS_OPER_COSTURA: TIntegerField;
    tabl_oper_cost_historialTEXT_ANOTACION: TStringField;
    tabl_oper_cost_historialFECH_SISTEMA: TDateTimeField;
    tabl_oper_cost_historialUSUA_SISTEMA: TStringField;
    Panel3: TPanel;
    SCLDBLabel29: TSCLDBLabel;
    SCLDBLabel35: TSCLDBLabel;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    quer_gene_variacion: TQuery;
    Tabla_Ventanacodi_proceso: TStringField;
    Tabla_Ventanacodi_tipo_operacion: TStringField;
    Tabla_Ventanacodi_comp_grupo: TStringField;
    Tabla_VentanaCODI_OPER_COSTURA: TStringField;
    page_dependencias: TSCLTabSheet;
    quer_oper_cost_importarTIEM_ASIGNADO: TFloatField;
    padr_gridColumn21: TdxDBGridColumn;
    chec_tiem_cronometro: TdxDBCheckEdit;
    edit_tiem_cronometro: TdxDBCurrencyEdit;
    quer_oper_cost_importarCODI_OPER_COSTURA: TStringField;
    pane_depe_1: TPCPFrame;
    Panel4: TPanel;
    dfsSplitter4: TdfsSplitter;
    pane_depe_2: TPCPFrame;
    Panel5: TPanel;
    quer_depe_0: TQuery;
    quer_depe_0CONS_CONSULTA: TIntegerField;
    quer_depe_0PADR_CONSULTA: TIntegerField;
    quer_depe_0VALO_TABL_DEPENDENCIA: TStringField;
    data_depe_0: TDataSource;
    DBTreeList: TdxDBTreeList;
    DBTreeListCONS_CONSULTA: TdxDBTreeListMaskColumn;
    DBTreeListPADR_CONSULTA: TdxDBTreeListMaskColumn;
    DBTreeListVALO_TABL_DEPENDENCIA: TdxDBTreeListMaskColumn;
    DBTreeListCONS_TABL_DEPENDENCIA: TdxDBTreeListMaskColumn;
    quer_depe_0INDE_IMAGEN: TIntegerField;
    dxDBTreeList1: TdxDBTreeList;
    dxDBTreeListMaskColumn1: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn2: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn3: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn4: TdxDBTreeListMaskColumn;
    acti_reno_elemento: TAction;
    quer_comp_listado: TQuery;
    quer_depe_1: TQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    IntegerField4: TIntegerField;
    data_depe_1: TDataSource;
    quer_depe_0CONS_TABL_DEPENDENCIA: TStringField;
    quer_depe_1CONS_TABL_DEPENDENCIA: TStringField;
    TBXSeparatorItem9: TTBXSeparatorItem;
    TBXItem23: TTBXItem;
    TBXItem24: TTBXItem;
    TBXItem25: TTBXItem;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXItem26: TTBXItem;
    TBXItem27: TTBXItem;
    TBXItem28: TTBXItem;
    acti_impr_info_general: TAction;
    acti_impr_list_elementos: TAction;
    acti_impr_pues_trabajo: TAction;
    tabl_repo_elementos: TTable;
    tabl_repo_totales: TTable;
    SCLDBLabel30: TSCLDBLabel;
    TBXButtonSCL1: TTBXButtonSCL;
    TBXButtonSCL2: TTBXButtonSCL;
    TBXButtonSCL3: TTBXButtonSCL;
    SCLDBLabel6: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    SCLDBLabel36: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    TBXItem29: TTBXItem;
    TBXItem30: TTBXItem;
    TBXSeparatorItem10: TTBXSeparatorItem;
    Tabla_VentanaTIEM_CRON_ASIGNADO: TFloatField;
    SCLDBLabel37: TSCLDBLabel;
    dxDBCurrencyEdit7: TdxDBCurrencyEdit;
    labe_unid_2: TLabel;
    Tabla_VentanaCOST_OPERACION: TFloatField;
    PCPFrame4: TPCPFrame;
    SCLDBLabel38: TSCLDBLabel;
    dxDBCurrencyEdit8: TdxDBCurrencyEdit;
    DBText1: TDBText;
    SCLDBLabel39: TSCLDBLabel;
    comb_pago_habilidad: TPCPLookUpComboEdit;
    Tabla_VentanaCONS_FORM_PAGO_HABILIDAD: TIntegerField;
    quer_form_pago_habilidad: TQuery;
    data_form_pago_habilidad: TDataSource;
    quer_form_pago_habilidadCONS_FORM_PAGO_HABILIDAD: TIntegerField;
    quer_form_pago_habilidadCODI_FORM_PAGO_HABILIDAD: TStringField;
    quer_form_pago_habilidadVALO_HORA_PRODUCCION: TFloatField;
    TBXVisibilityToggleItem2: TTBXVisibilityToggleItem;
    Tabla_VentanaDESCRIPCION: TMemoField;
    Tabla_VentanaMODI_PUES_TRABAJO: TMemoField;
    Tabla_VentanaSECU_MOVIMIENTOS: TMemoField;
    quer_oper_cost_importarDESCRIPCION: TMemoField;
    quer_oper_cost_importarMODI_PUES_TRABAJO: TMemoField;
    quer_oper_cost_importarSECU_MOVIMIENTOS: TMemoField;
    edit_tiem_total: TdxDBCurrencyEdit;
    SCLDBLabel34: TSCLDBLabel;
    edit_porc_total: TdxCurrencyEdit;
    Tabla_VentanaIMAGEN: TBlobField;
    Tabla_VentanaAJUSTE: TStringField;
    Tabla_VentanaAJUS_IMAGEN: TIntegerField;
    PCPFrame2: TPCPFrame;
    PCPFrame10: TPCPFrame;
    Panel1: TPanel;
    dxDBMemo1: TdxDBMemo;
    PCPFrame11: TPCPFrame;
    ffra_fotografiaDB3: Tffra_fotografiaDB;
    SCLDBLabel40: TSCLDBLabel;
    dxDBEdit7: TdxDBEdit;
    dfsSplitter1: TdfsSplitter;
    Tabla_VentanaLARG_COSTURA: TIntegerField;
    quer_oper_cost_importarLARG_COSTURA: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure labe_actividadClick(Sender: TObject);
    procedure Tabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure comb_recu_familiaChange(Sender: TObject);
    procedure acti_copiarExecute(Sender: TObject);
    procedure acti_cortarExecute(Sender: TObject);
    procedure acti_pegarExecute(Sender: TObject);
    procedure doHacerCalculos(Sender: TadvColumnGrid);
    procedure doIniciarEdicion(Sender: TObject);
    procedure doRenumerar(Sender: TAdvColumnGrid);
    procedure acti_insertarExecute(Sender: TObject);
    procedure acti_adicionarExecute(Sender: TObject);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure acti_move_arribaExecute(Sender: TObject);
    procedure acti_move_abajoExecute(Sender: TObject);
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure acci_ventanaUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure gridCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure gridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure DoKeyDownGrid(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure page_elementosShow(Sender: TObject);
    procedure doCalcularRepeat(Sender : TADVColumnGrid; nume_elemento : Integer; codi_cst : String; 
                MostrarError : Boolean = True; EsParaCalculo : Boolean = True);
    procedure doCalcularElemento(Sender : TADVColumnGrid; nume_elemento : Integer; codi_cst : String;
                        ColocarNoExiste : Boolean = True);
    Function tiem_elemento(codi_cst : String; MostrarError : Boolean = True): TElementoCST;
    procedure Tabla_VentanaBeforePost(DataSet: TDataSet);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure doLlamarMovimientos(Sender: TAdvColumnGrid);
    procedure DoLlamarElementosImportar(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure acti_impo_sele_todosExecute(Sender: TObject);
    procedure acti_impo_importarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pane_importarVisibleChanged(Sender: TObject);
    Procedure DoSumarTiempoElementos(Sender : TADVColumnGrid; var tiem_manual : Real; var tiem_maquina : Real;
                elem_inicial : Integer = -1; elem_final : Integer = -1; AplicarFrecuencia : Boolean = True);
    procedure gridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure acti_sele_todosExecute(Sender: TObject);
    procedure acti_buscarExecute(Sender: TObject);
    procedure tabl_oper_cost_historialBeforePost(DataSet: TDataSet);
    procedure CambiosEnCodigo(Sender: TField);
    procedure Tabla_VentanaAfterPost(DataSet: TDataSet);
    procedure chec_tiem_cronometroChange(Sender: TObject);
    procedure page_dependenciasShow(Sender: TObject);
    procedure DBTreeListCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure padr_acti_expo_xlsExecute(Sender: TObject);
    procedure padr_acti_expo_HTMLExecute(Sender: TObject);
    procedure padr_acti_expo_arch_sepa_comasExecute(Sender: TObject);
    procedure acti_impr_info_generalExecute(Sender: TObject);
    procedure acti_impr_list_elementosExecute(Sender: TObject);
    procedure acti_impr_pues_trabajoExecute(Sender: TObject);
    procedure gridGridHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: String);
    procedure edit_codi_operacionEnter(Sender: TObject);
    procedure gridDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure pane_videoResize(Sender: TObject);
    procedure pane_videoVisibleChanged(Sender: TObject);
    
    
  private
    { Private declarations }
    var_vent_inicializada             : Boolean;
    var_OmitirCalculos                : Boolean;
    var_CambiosEnCodigo               : Boolean;
    Function CodigoTieneFormula(peCodi_CST : String) : Boolean;
  public
    { Public declarations }
  end;

ResourceString
    cosErrorRepeat      = 'La sentencia RPT no está siendo utilizada correctamente.';
    cosErrorEnElementoNo = 'El error ocurrió en el elemento No.';
    cosDeseaHabilitarTiempoCronometro = 'Si habilita el tiempo cronómetro para esta operación, perderá los elementos que la compongan.'+#13+#13+
                                'Desea continuar?';
    cosCambioDeCodigo   = 'Alguno de los componentes de la operación cambiaron.  Se sugiere revisar el código asignado a la operación.';
    cosSinCodigoOperacion = 'CODIGO:';
    cosActualizandoTiempo = 'Actualizando tiempos...';

    cosHintTM       = 'Largo de costura = %s'+#13+
                      'Puntadas por centímetro = %s'+#13+
                      'Revoluciones por minuto = %s'+#13+
                      'Factor de velocidad = %s'+#13+
                      'Grado de dificultad = %s'+#13+
                      'Paradas con precisión = %s'+#13+
                      'Precisión de la parada = %s';

Const
    arre_erro_Repeat:Array[1..4] Of String=(
        'Formato inválido.'+#13+#13+' Use:'+#13+'RPT(<desde>-<hasta>) sin espacios.',
        'El número de elemento inicial no es válido',
        'El número de elemento final no es válido',
        'El RPT no puede contenerse a sí mismo.');


var
  fn1_meto_estandar1: Tfn1_meto_estandar1;
  var_long_repeat : Integer;

// Funciones de repetición de elementos
//....................................................................
Function EsRepeat(X:String):Boolean;
Function RepeatDesde(X:STring):Integer;
Function RepeatHasta(X:STring):Integer;
Function EsRepeatCorrecto(x:String):Boolean;
  

implementation

uses _MDI, un0_opciones, _func_varias, _cons_pcp, _func_pcp, _vari_pcp,
  un1_meto_cst_tiem_maquina, urn1_meto_oper_cst_info_operacion,
  urn1_meto_oper_cst_list_elementos, urn1_meto_oper_cst_puest_trabjo,
  un1_meto_refe_list_operaciones, _uData, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.FormCreate(Sender: TObject);
begin
  inherited;
  //Inicializar controles y variables
  var_long_repeat := Length(cosCSTRepeat);
  page.ActivePage := page_otro_datos;
  var_vent_inicializada := False;
  var_OmitirCalculos := False;
  var_cambiosEnCodigo := False;
  pane_importar.BringToFront;
  SetTotalColumn(Grid.ColumnByName['gridTIEM_TMU']);
  SetTotalColumn(Grid.ColumnByName['gridTIEM_2']);
  With grid do
  Begin
      HideColumn(ColumnByName['gridCONS_CST_DISTANCIA'].Index);
      HideColumn(ColumnByName['gridCONS_CST_DIFICULTAD'].Index);
      HideColumn(ColumnByName['gridCONS_CST_POSICIONAMIENTO'].Index);
      HideColumn(ColumnByName['VAR_1'].Index);
      HideColumn(ColumnByName['VAR_2'].Index);
      HideColumn(ColumnByName['VAR_3'].Index);
      HideColumn(ColumnByName['VAR_4'].Index);
      HideColumn(ColumnByName['VAR_5'].Index);
      HideColumn(ColumnByName['VAR_6'].Index);
      HideColumn(ColumnByName['VAR_7'].Index);
      HideColumn(ColumnByName['VAR_8'].Index);
      HideColumn(ColumnByName['VAR_9'].Index);
      HideColumn(ColumnByName['VAR_10'].Index);
  End;
  With grid_importar do
  Begin
      HideColumn(ColumnByName['gridCONS_CST_DISTANCIA'].Index);
      HideColumn(ColumnByName['gridCONS_CST_DIFICULTAD'].Index);
      HideColumn(ColumnByName['gridCONS_CST_POSICIONAMIENTO'].Index);
      HideColumn(ColumnByName['gridCONS_CST_DISTANCIA'].Index);
      HideColumn(ColumnByName['gridCONS_CST_DIFICULTAD'].Index);
      HideColumn(ColumnByName['gridCONS_CST_POSICIONAMIENTO'].Index);
      HideColumn(ColumnByName['VAR_1'].Index);
      HideColumn(ColumnByName['VAR_2'].Index);
      HideColumn(ColumnByName['VAR_3'].Index);
      HideColumn(ColumnByName['VAR_4'].Index);
      HideColumn(ColumnByName['VAR_5'].Index);
      HideColumn(ColumnByName['VAR_6'].Index);
      HideColumn(ColumnByName['VAR_7'].Index);
      HideColumn(ColumnByName['VAR_8'].Index);
      HideColumn(ColumnByName['VAR_9'].Index);
      HideColumn(ColumnByName['VAR_10'].Index);
  End;
  InicializarADVFindDialog(grid_Find);
  //Abrir las consultas
  AbrirDataSet(quer_procesos);
  AbrirDataSet(quer_oper_tipos);
  AbrirDataSet(quer_grup_componentes);
  //AbrirDataSet(quer_personal);
  AbrirDataSet(quer_recu_grupos);
  AbrirDataSet(quer_recu_tipos);
  AbrirDataSet(quer_recu_familias);
  AbrirDataSet(quer_recu_marcas);
  AbrirDataset(quer_tipo_puntada);
  AbrirDataSet(quer_elem_cst);
  AbrirDataSet(quer_oper_cost_importar);
  AbrirDataSet(tabl_oper_cost_historial);
  AbrirDataSet(quer_form_pago_habilidad);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : EsRepeat
Objetivo        : Indica si un codigo tiene la palabra REPEAT
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
Function EsRepeat(X:String):Boolean;
Begin
       Result:=Pos(cosCSTREPEAT,X) = 1;
End;
{****************************************************************
Procedimiento   : RepeatDesde
Objetivo        : Devuelve el rango inicial del REPEAT
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
Function RepeatDesde(X:STring):Integer;
Var
   Separa:Integer;
   Valor:String;
Begin
   Result:=0;
   Try
     Separa:=Pos('-',X);
     If Separa>0 Then //Existe El separador
     Begin
         //Sacarlo
         Try
           Valor:=Copy(X,var_long_repeat + 2,Separa - (var_long_repeat + 2));
         Except
           Valor:='0';
         End;
         //Convertirlo
         Try
            Result:=StrTOInt(Valor);
         Except
            Result:=0;
         End;
     End;
   Except
         Result:=0;
   End;
End;
{****************************************************************
Procedimiento   : RepeatHasta
Objetivo        : Devuelve el rango final del REPEAT
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
Function RepeatHasta(X:STring):Integer;
Var
   Separa:Integer;
   Faltan:Integer;
   Valor:String;
Begin
   Result:=0;
   Try
     Separa:=Pos('-',X);
     If Separa>0 Then //Existe El separador
     Begin
         //Sacarlo
         Try
           Faltan:=Length(x)-Separa-1;  //-1 por el parentesis final
           Valor:=Copy(X,Separa+1,Faltan);
         Except
           Valor:='0';
         End;
         //Convertirlo
         Try
            Result:=StrTOInt(Valor);
         Except
            Result:=0;
         End;
     End;
   Except
         Result:=0;
   End;
End;
{****************************************************************
Procedimiento   : EsRepeatCorrecto
Objetivo        : Evalua y valida la sentencia REPEAT
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
Function EsRepeatCorrecto(x:String):Boolean;
Begin
     Result:=True;
     If (Pos('(',x)<> var_long_repeat + 1) Then Result:=False;
     If Pos(')',x)<>Length(x) Then Result:=False;
     If Pos('-',x)<=0 Then Result:=False;
End;


{****************************************************************
Procedimiento   : labe_actividadClick
Objetivo        : Mostrar la ventana de opciones para cambiar
                  la actividad
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.labe_actividadClick(Sender: TObject);
begin
  inherited;
  if var_usua_activo <> 'SYSDBA' Then Exit;
  if (Not _fmdi.acti_n0_opciones.Enabled) Then Exit;
  //Crear la ventana de opciones
  Application.CreateForm(Tfn0_opciones, fn0_opciones);
  //Posicionar la ventana
  fn0_opciones.lista.FocusedNumber := 1;
  //Mostrarla
  fn0_opciones.ShowModal;
end;

procedure Tfn1_meto_estandar1.Tabla_VentanaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  var_CambiosEnCodigo := True;
  //Valores por defecto
  With tabla_ventana do
  Begin
      FieldByName('tiem_cronometro').Value := -1;
      FieldByName('tiem_asignado').Value := 0;
      FieldByName('cost_operacion').Value := 0;
  End;
  //Inicializar los controles de las ventanas
  LimpiarGrid(Grid);
  Grid.RowCount := 2;
end;
{****************************************************************
Procedimiento   : comb_recu_familiaChange
Objetivo        : Cambiar el valor del suplemento máquina cuando
                  cambie la familia
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.comb_recu_familiaChange(Sender: TObject);
begin
  inherited;
  If (tabla_ventana.State in [dsEdit, dsInsert]) and (comb_recu_familia.Text<>'') Then
        tabla_ventana.FieldByName('supl_maquina').Value := quer_recu_familias.FieldByName('porc_suplemento').AsFloat;
end;
{****************************************************************
Procedimiento   : acti_copiarExecute
Objetivo        : Ejecuta la acción de copiar las filas
                  seleccionadas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_copiarExecute(Sender: TObject);
{Var
        var_auxi_integer        : Integer;
        var_auxi_integer2       : Integer;}
begin
    //Si está en edición, copiar el texto
    If Grid.EditMode Then
       Inherited
    //Copiar las celdas completas
    Else
    Begin
            Grid.CopiarSeleccion;
{         GridCopy.Clear;
         GridCopy.RowCount := (Grid.Selection.bottom - Grid.Selection.Top + 1);
         var_auxi_integer2 := 0;
         For var_auxi_integer := Grid.Selection.Top to Grid.Selection.Bottom do
         Begin
                //Copiar
                GridCopy.Rows[var_auxi_integer2] := Grid.Rows[var_auxi_integer];
                //Incrementar el contador
                var_auxi_integer2 := var_auxi_integer2 + 1;
         End;}
    End;
end;
{****************************************************************
Procedimiento   : acti_cortarExecute
Objetivo        : Ejecuta la acción de cortar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_cortarExecute(Sender: TObject);
{Var
        var_row_inicial  : Integer;  }
begin
  //Si está editanto, cortar      
  If Grid.EditMode then
     inherited
  Else
  Begin
     doIniciarEdicion(Sender);
     grid.CortarSeleccion;
     doHacerCalculos(Grid);
     { var_row_inicial := Grid.Selection.Top;
      //Copiar
      acti_CopiarExecute(Sender);
      //Eliminar
      If (Grid.Selection.Bottom - Grid.Selection.Top + 1)>coiContadorMinimoBarraProgreso Then
                ProgresoBarraEstado(Format(cosEliminando,['']));
      Grid.RemoveRows(Grid.Selection.Top, Grid.Selection.Bottom - Grid.Selection.Top + 1);
      ProgresoBarraEstado;
      if Not var_OmitirCalculos then DoHacerCalculos(Grid);
      If Grid.RowCount=0 Then Exit;
      if var_row_inicial>grid.RowCount-1 Then grid.Row := grid.RowCount -1
      Else Grid.Row := var_row_inicial;}
  End;
end;
{****************************************************************
Procedimiento   : acti_pegarExecute
Objetivo        : Ejecuta la acción de pegar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_pegarExecute(Sender: TObject);
{Var
        var_auxi_integer        : Integer;
        var_row_original        : Integer;   }
begin
    //Si está en pegar el texto, copiar el texto
    If Grid.EditMode Then
       Inherited
    //Copiar las celdas completas
    Else
    Begin               
         //Pegar los valores
        { Grid.DefaultDrawing := False;
         var_row_original := grid.Row;
         For var_auxi_integer := gridCopy.RowCount downto 1 do
         Begin
                If (GridCopy.RowCount>coiContadorMinimoBarraProgreso) Then
                        ProgresoBarraEstado(cosTrabajando ,gridCopy.RowCount-var_auxi_integer+1, gridCopy.RowCount);
                //Insertar
                acti_insertarExecute(Sender); 
                Grid.Rows[var_row_original] := GridCopy.Rows[var_auxi_integer-1];
         End;
         Grid.Row := var_row_original;
         doIniciarEdicion(Sender);
         if Not var_OmitirCalculos Then doHacerCalculos(Grid);
         ProgresoBarraEstado;
         Grid.DefaultDrawing := True;
         DarFoco(Grid); }
         doIniciarEdicion(Sender);
         grid.PegarSeleccion;
         doHacerCalculos(Grid);
    End;
end;
{****************************************************************
Procedimiento   : doHacerCalculos
Objetivo        : Recalcular los resultados del método
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.doHacerCalculos(Sender: TADVColumnGrid);
Var
        var_auxi_integer        : Integer;
        var_codi_cst            : String;
        var_tiem_tmu            : Real;
        var_frecuencia          : Real;
        var_tiem_manual         : Real;
        var_tiem_maquina        : Real;
        var_tiem_total          : Real;
        var_elementoCST     : TElementoCST;
begin
  inherited;
  //Salir si es tiempo cronómetro
  If (chec_tiem_cronometro.Checked) Then Exit;
  doRenumerar(Sender);
  //RC20.12 - Titulo del tiempo
  pane_tiempos.Caption := Format(cosTiemposActividad, [_fMDI.tabl_pcp_opciones.FieldByName('INGE_METO_TIPO_ACTIVIDAD').asString]);
  //Inicializar los contadores
  var_tiem_manual := 0;
  var_tiem_maquina := 0;
  With Sender do
  Begin
        For var_auxi_integer := 1 to RowCount - 1 do
        Begin
              //Inicializar la frecuencia
              var_frecuencia := 0;
              //Recalcular los tiempos de los codigos y los REPEAT
              If Not var_OmitirCalculos then
              Begin
                   //Asignar el codigo a una variable local
                   var_codi_cst := Cells[ColumnByName['gridCODI_CST'].Index, var_auxi_integer];
                   //Sin codigo
                   If var_codi_cst = '' Then var_tiem_tmu := 0
                   Else
                   //Tiempo MAQUINA
                   if var_codi_cst = 'TM' then
                   Begin
                        Try
                             var_tiem_tmu := StrToFloat(Cells[ColumnByName['gridTIEM_TMU'].Index, var_auxi_integer]);
                        Except
                             var_tiem_tmu := 0;
                        End;
                        var_frecuencia := 1;
                   End
                   Else
                   //Tiempo REPEAT
                   If EsRepeat(var_codi_cst) Then
                   Begin
                       doCalcularRepeat(Sender, var_auxi_integer, var_codi_cst);
                       Try
                           var_tiem_tmu := StrToFloat(Cells[ColumnByName['gridTIEM_TMU'].Index, var_auxi_integer]);
                       Except
                           var_tiem_tmu := 0;
                       End;
                   End
                   Else
                   //Otros códigos (BD NO formulados)
                   If not CodigoTieneFormula(var_codi_cst) Then
                   Begin
                     var_ElementoCST := tiem_elemento(var_codi_cst);
                     var_tiem_tmu := var_ElementoCST.Tiempo;
                   End
                   //Si no, es el tiempo del grid
                   Else
                       Try
                           var_tiem_tmu := StrToFloat(Cells[ColumnByName['gridTIEM_TMU'].Index, var_auxi_integer]);
                       Except
                           var_tiem_tmu := 0;
                       End;
              End;
              //Validar la frecuencia
              Try
                  //Si no la han cambiado, buscarla
                  If var_frecuencia = 0 Then
                      var_frecuencia := StrToFloat(Cells[ColumnByName['gridFRECUENCIA'].Index, var_auxi_integer]);
                  if var_frecuencia < 0 Then var_frecuencia := 1;
                  //Darle formato a la frecuencia
                  Cells[ColumnByName['gridFRECUENCIA'].Index, var_auxi_integer] := FormatFloat(FormatoFloat(False), var_frecuencia);
              Except
                  var_frecuencia := 1;
                  Cells[ColumnByName['gridFRECUENCIA'].Index, var_auxi_integer] := FormatFloat(FormatoFloat(False),1);
              End;
              //Validar el tiempo (EL REPEAT YA LO TIENE CALCULADO)
              If esRepeat(Cells[ColumnByName['gridCODI_CST'].Index, var_auxi_integer]) Then
                var_frecuencia := 1;
              //Recalcular el tiempo (ELEMENTOS DB)
              If not CodigoTieneFormula(var_codi_cst) Then
              Begin
                  Try
                      Cells[ColumnByName['gridTIEM_TMU'].Index, var_auxi_integer] := FormatFloat(FormatoFloat(False),var_tiem_tmu * var_frecuencia);
                  Except
                      Cells[ColumnByName['gridTIEM_TMU'].Index, var_auxi_integer] := FormatFloat(FormatoFloat(False),0);
                  End;
              End;
              //Tiempo en la unidad de medida secundaria
              Try
                  Cells[ColumnByName['gridTIEM_2'].Index, var_auxi_integer] := FormatFloat(FormatoFloat(False), var_tiem_tmu * var_frecuencia * _fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_unid_medi_factor').AsFloat);
              Except
                  Cells[ColumnByName['gridTIEM_2'].Index, var_auxi_integer] := FormatFloat(FormatoFloat(False), 0);
              End;
        End;
        //Sumarlos
        DoSumarTiempoElementos(Grid, var_tiem_manual, var_tiem_maquina);
        //Tiempos totales del elemento
        edit_tiem_tmu_1.Value := var_tiem_manual + var_tiem_maquina;
        edit_tiem_2_1.Value := edit_tiem_tmu_1.Value * _fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_unid_medi_factor').AsFloat;
        //Sumar los suplementos
        var_tiem_manual := var_tiem_manual * (1+(tabla_ventana.FieldByName('supl_constante').AsFloat/100) + 
                                                    (tabla_ventana.FieldByName('supl_variable').AsFloat/100));
        var_tiem_maquina := (var_tiem_maquina * (1+(tabla_ventana.FieldByName('supl_maquina').AsFloat/100)));
        edit_tiem_tmu_2.Value := var_tiem_manual + var_tiem_maquina;
        edit_tiem_2_2.Value := edit_tiem_tmu_2.Value * _fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_unid_medi_factor').AsFloat;
        //Aplicar actividad
        var_tiem_manual := var_tiem_manual * _fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_tipo_acti_factor').AsFloat;
        var_tiem_maquina := var_tiem_maquina * _fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_tipo_acti_factor').AsFloat;
        //Escribir los valores de la suma
        edit_tiem_manual.Value := var_tiem_manual;
        edit_tiem_maquina.Value := var_tiem_maquina;
        var_tiem_total := var_tiem_manual + var_tiem_maquina;
        //% de participacion
        if (var_tiem_total) = 0 Then
        Begin
             edit_porc_manual.Value := 0;
             edit_porc_maquina.Value := 0;
             edit_porc_total.Value := 0;
        End
        Else
        Begin
             edit_porc_manual.Value := (var_tiem_manual / var_tiem_total) * 100;
             edit_porc_maquina.Value := (var_tiem_maquina / var_tiem_total) * 100;
             edit_porc_total.Value := 100;
        End;
        //Tiempo real concedido
        If (tabla_ventana.State = dsEdit) Then
        Begin
            tabla_ventana.FieldByName('tiem_asignado').Value :=  (var_tiem_manual + var_tiem_maquina);
            tabla_ventana.FieldByName('tiem_cronometro').Value := -1;
        End;
        edit_tiem_2_3.value :=  tabla_ventana.FieldByName('tiem_asignado').AsFloat * _fmdi.Tabl_pcp_opciones.FieldByName('inge_meto_unid_medi_factor').AsFloat;
        //Produccion por hora
        if ( edit_tiem_2_3.value > 0) Then
            edit_prod_Hora.Value := 60 /  edit_tiem_2_3.value
        Else
            edit_prod_Hora.Value := 0;
        //Produccion por dia
        if ( edit_tiem_2_3.value > 0) Then
            edit_prod_Dia.Value := 480 /  edit_tiem_2_3.value
        Else
            edit_prod_Dia.Value := 0;

  End;
end;
{****************************************************************
Procedimiento   : doIniciarEdicion
Objetivo        : Simular el inicio de edición
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tfn1_meto_estandar1.doIniciarEdicion(Sender: TObject);
begin
  inherited;
  if not (Tabla_Ventana.State in  [dsEdit, dsInsert]) and Not(Variables.SoloLectura) Then
    Begin
        padr_acti_modificar.Execute;
        if not (tabla_ventana.State in [dsEdit, dsInsert]) then tabla_Ventana.Edit;
    End;
end;
{****************************************************************
Procedimiento   : doRenumerar
Objetivo        : Renumera la primera columna
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.doRenumerar(Sender: TADVColumnGrid);
begin
  inherited;
  //Numerar la columna 1
  Sender.AutoNumberCol(0);
  edit_nume_elementos.Value := Grid.RowCount - 1;
end;
{****************************************************************
Procedimiento   : acti_insertarExecute
Objetivo        : Inserta un elemento en la posición actual
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_insertarExecute(Sender: TObject);
begin
  inherited;
  //Si solamente está el título, adicionar
  If Grid.RowCount <= 1 Then
        acti_AdicionarExecute(Sender)      
  //Insertar
  Else
        Grid.InsertRows(grid.Selection.Top, grid.selection.bottom - grid.Selection.Top + 1);
  DoIniciarEdicion(Sender);
  DoHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_adicionarExecute
Objetivo        : Adiciona una elemento al final del grid
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_adicionarExecute(Sender: TObject);
begin
  inherited;
  Grid.InsertRows(grid.RowCount, 1);
  Grid.Row := Grid.RowCount - 1;
  DoIniciarEdicion(Sender);
  DoHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_eliminarExecute
Objetivo        : Elimina los elementos seleccionados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_eliminarExecute(Sender: TObject);
begin
  inherited;
  If Confirmar(cosDeseaEliminar) = mrYes then
  Begin
      Update;
      If (Grid.Selection.Bottom - Grid.Selection.Top + 1)>50
        Then ProgresoBarraEstado(Format(cosEliminando,['']));  
      Grid.RemoveRows(Grid.Selection.Top, Grid.Selection.Bottom - Grid.Selection.Top + 1);
      ProgresoBarraEstado;
  End;
  DoIniciarEdicion(Sender);
  doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_move_arribaExecute
Objetivo        : Mueve hacia arriaba los elementos seleccionados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_move_arribaExecute(Sender: TObject);
{Var
        var_inic_top, var_inic_bottom : Integer;  }
begin
  inherited;
  {var_OmitirCalculos := True;
  If (grid.Selection.Top<=1) or (Grid.RowCount<=1) Then Exit;
  //Seleccion inicial
  var_inic_top := Grid.Selection.Top;
  var_inic_bottom := Grid.Selection.Bottom;
  //Cortarla
  acti_cortarExecute(Sender);
  //Seleccion anterior
  Grid.Row := var_inic_top - 1;
  //Pegar
  acti_pegarExecute(Sender);
  Grid.SelectRows(var_inic_top - 1, var_inic_bottom - var_inic_top + 1);
  var_OmitirCalculos := False;
  doHacerCalculos(Grid);    }
   grid.MoverHaciaArriba;
   doIniciarEdicion(Sender);
   doHacerCalculos(Grid);
end;
{****************************************************************
Procedimiento   : acti_move_abajoExecute
Objetivo        : Mueve hacia abajo los elementos seleccionados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_move_abajoExecute(Sender: TObject);
{Var
        var_inic_top, var_inic_bottom : Integer;
        var_is_last_row : Boolean;     }
begin
  inherited;
{  var_OmitirCalculos := True;
  If (grid.Selection.Bottom=Grid.RowCount-1) or (Grid.RowCount<=1) Then Exit;
  //Seleccion inicial
  var_inic_top := Grid.Selection.Top;
  var_inic_bottom := Grid.Selection.Bottom;
  var_is_last_row := (Grid.Selection.Bottom = Grid.RowCount - 2);
  //Cortarla
  acti_cortarExecute(Sender);
  //Validar la última fila
  if var_is_last_row then 
        grid.rowCount := Grid.RowCount + 1;
  //Seleccion anterior
  if var_inic_top<grid.RowCount - 1 then
      Grid.Row := var_inic_top + 1
  Else
      Grid.Row := Grid.RowCount - 1;  
  //Pegar
  acti_pegarExecute(Sender);
  //Si es la última, eliminarla
  if var_is_last_row then Grid.RemoveRows(Grid.RowCount - 1, 1);
  Grid.SelectRows(var_inic_top + 1, var_inic_bottom - var_inic_top + 1);
  var_OmitirCalculos := False;
  doHacerCalculos(Grid);  }
   grid.MoverHaciaAbajo;
   doIniciarEdicion(Sender);
   doHacerCalculos(Grid);
end;

procedure Tfn1_meto_estandar1.padr_accionesUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
End;
{****************************************************************
Procedimiento   : acci_ventanaUpdate
Objetivo        : Actualiza el estado de las acciones de la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acci_ventanaUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  acti_copiar.Enabled := True;
  acti_pegar.Enabled := True;
  acti_cortar.Enabled := True;
  acti_move_arriba.Enabled := Not((grid.Selection.Top<=1) or (Grid.RowCount<=1)); 
  acti_move_abajo.Enabled := Not ((grid.Selection.Bottom=Grid.RowCount-1) or (Grid.RowCount<=1));
end;

procedure Tfn1_meto_estandar1.gridCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
  inherited;
  With Grid do
  Begin
        //Deshabilitar las caracteristicas del elemento
        If aCol>Grid.ColumnByName['gridFRECUENCIA'].Index Then
              CanEdit := False;
        //No cambiar la frecuencia en TM
        If (Acol = ColumnByName['gridFRECUENCIA'].Index) and
             (
             (Pos('TM', Cells[ColumnByName['gridCODI_CST'].Index, aRow])=1) or
              (CodigoTieneFormula(Cells[ColumnByName['gridCODI_CST'].Index, aRow]))) Then
                 CanEdit := False;
  End;
end;
{****************************************************************
Procedimiento   : gridGetAlignment
Objetivo        : Configurar la alineación en el grids
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.gridGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  //Centrar titulos
  if aRow = 0 then hAlign := taCenter;
  if (aCol = 0) and (aRow>0) Then hAlign := taRightJustify;
end;

procedure Tfn1_meto_estandar1.DoKeyDownGrid(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
        var_codi_cst    : String;
        var_tm  : TCSTVariablesAdicionales;
begin
  inherited;
  //Enter (en los codigos)
  If (Key = vk_Return) Then
  Begin
        With Grid Do
        Begin
               //Columna del codigo CST
               If (Col in [ColumnByName['gridCODI_CST'].Index,ColumnByName['gridFRECUENCIA'].Index]) Then
               Begin
                    //Asignar el código a una variable
                    var_codi_cst := Cells[ColumnByName['gridCODI_CST'].Index, Row];
                    //Verificar si es un TIEMPO MAQUINA (TM)
                    If var_codi_cst = 'TM' Then
                    Begin
                          Application.CreateForm(Tfn1_meto_cst_tiem_maquina, fn1_meto_cst_tiem_maquina);
                          //Inicializar la variable
                          With var_tm do
                            begin
                                Try var_1 := StrToFloat(Cells[ColumnByName['VAR_1'].Index, Row]); Except var_1 := 0; End;
                                Try VAR_2 := StrToFloat(Cells[ColumnByName['VAR_2'].Index, Row]); Except VAR_2 := 0; End;
                                Try VAR_3 := StrToFloat(Cells[ColumnByName['VAR_3'].Index, Row]); Except VAR_3 := 0; End;
                                Try VAR_4 := StrToFloat(Cells[ColumnByName['VAR_4'].Index, Row]); Except VAR_4 := 0; End;
                                Try VAR_5 := StrToFloat(Cells[ColumnByName['VAR_5'].Index, Row]); Except VAR_5 := 0; End;
                                Try VAR_6 := StrToFloat(Cells[ColumnByName['VAR_6'].Index, Row]); Except VAR_6 := 0; End;
                                Try VAR_7 := StrToFloat(Cells[ColumnByName['VAR_7'].Index, Row]); Except VAR_7 := 0; End;
                                Try VAR_8 := StrToFloat(Cells[ColumnByName['VAR_8'].Index, Row]); Except VAR_8 := 0; End;
                                Try VAR_9 := StrToFloat(Cells[ColumnByName['VAR_9'].Index, Row]); Except VAR_9 := 0; End;
                                Try VAR_10 := StrToFloat(Cells[ColumnByName['VAR_10'].Index, Row]); Except VAR_10 := 0; End;
                            End;
                          //Abrir la ventana de TM
                          var_tm := fn1_meto_cst_tiem_maquina.doEjecutarFormulario(var_tm);
                          if (var_tm.var_1 > 0) then
                            Begin
                                Cells[ColumnByName['VAR_1'].Index, Row] := FloatToStr(var_tm.var_1);
                                Cells[ColumnByName['VAR_2'].Index, Row] := FloatToStr(var_tm.var_2);
                                Cells[ColumnByName['VAR_3'].Index, Row] := FloatToStr(var_tm.var_3);
                                Cells[ColumnByName['VAR_4'].Index, Row] := FloatToStr(var_tm.var_4);
                                Cells[ColumnByName['VAR_5'].Index, Row] := FloatToStr(var_tm.var_5);
                                Cells[ColumnByName['VAR_6'].Index, Row] := FloatToStr(var_tm.var_6);
                                Cells[ColumnByName['VAR_7'].Index, Row] := FloatToStr(var_tm.var_7);
                                Cells[ColumnByName['VAR_8'].Index, Row] := FloatToStr(var_tm.var_8);
                                Cells[ColumnByName['VAR_9'].Index, Row] := FloatToStr(var_tm.var_9);
                                Cells[ColumnByName['VAR_10'].Index, Row] := FloatToStr(var_tm.var_10);
                                Cells[ColumnByName['gridTIEM_TMU'].Index, Row] := FloatToStr(var_tm.var_10);

                                //Nombre de la operación
                                Cells[ColumnByName['gridNOMB_ELEM_CST'].Index, Row] :=
                                        Format(cosCoser, [Cells[ColumnByName['VAR_1'].Index, Row],
                                                          Cells[ColumnByName['VAR_2'].Index, Row],
                                                          Cells[ColumnByName['VAR_3'].Index, Row],
                                                          Cells[ColumnByName['VAR_7'].Index, Row],
                                                          Cells[ColumnByName['VAR_4'].Index, Row],
                                                          Cells[ColumnByName['VAR_5'].Index, Row],
                                                          Cells[ColumnByName['VAR_6'].Index, Row]]);
                            End;
                    End{TIEMPO_MAQUINA}
                    Else
                    //Verificar si es un REPEAT
                    If EsRepeat(var_codi_cst) Then
                    Begin
                        doCalcularRepeat(Grid, row, var_codi_cst);
                    End {REPEAT}
                    Else
                    //Codigo CST digitado
                    DoCalcularElemento(Grid, row, var_codi_cst);
               End;
       End;
  End;
  //Iniciar la edicion
  if Not (Key in [vk_up, vk_left, vk_down, vk_right]) Then
  Begin
        doIniciarEdicion(Sender);
  End;
  if (key = vk_return) Then
  Begin
        //Hacer los calculos
        doHacerCalculos(Grid);
  End;
end;
{****************************************************************
Procedimiento   : page_elementosShow
Objetivo        : Configurar el page_elementos antes de mostrarlo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 03 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.page_elementosShow(Sender: TObject);
begin
  inherited;
  //Actualizar los cálculos
  doHacerCalculos(Grid);
end;

procedure Tfn1_meto_estandar1.doCalcularRepeat(Sender : TADVColumnGrid; nume_elemento : Integer; codi_cst : String;
        MostrarError : Boolean = True; EsParaCalculo : Boolean = True);
var
        var_auxi_integer        : Integer;
        var_auxi_float  : Real;
        var_repe_desde, var_repe_hasta  : Integer;
        var_nume_error  : Integer;
        var_frecuencia  : Real;
begin
  inherited;
  {NOTA:LAS COLUMNAS CONS_CST_DISTANCIA Y CONS_CST_DIFICULTAD
        SE UTILIZAN PARA GUARDAR LAS POSICIONES DEL REPEAT}
  //Inicializar (sin error)
  var_nume_error := 0;
  With Sender Do
  Begin
     //Identificar el alcance del repeat
     if EsParaCalculo then
     Begin
         //Si es para cálculo, el alcance lo da el texto escrito
         var_repe_desde := RepeatDesde(codi_cst);
         var_repe_hasta := RepeatHasta(codi_cst);
     End
     Else
     Begin
        //Si no es para calculo, el alcance lo dan los valores guardados en el grid
        Try
           var_repe_desde := StrToInt(Cells[ColumnByName['gridCONS_CST_DISTANCIA'].Index, nume_elemento]);
        Except
           var_repe_desde := 0;
        End;
        Try
           var_repe_hasta := StrToInt(Cells[ColumnByName['gridCONS_CST_DIFICULTAD'].Index, nume_elemento]);
        Except
           var_repe_hasta := 0;
        End;
        //Armar de nuevo el repeat
        codi_cst := cosCSTREPEAT+'('+IntToStr(var_repe_desde)+'-'+IntToStr(var_repe_hasta)+')';
        Cells[ColumnByName['gridCODI_CST'].Index, nume_elemento] := codi_cst;
     End;
     //Validar el repeat
     If (Not EsRepeatCorrecto(codi_cst)) Then var_nume_error := 1;
     //Desde menor que 0
     If (var_repe_desde <=0) Then var_nume_error := 2;
     //Hasta menor que desde
     If (var_repe_hasta < var_repe_desde) Then var_nume_error := 3;
     //Hasta mayor que el final
     If (var_repe_hasta >= nume_elemento) Then var_nume_error := 4;
     //Si hay Error, salir
     If var_nume_error>0 Then
     Begin
        if MostrarError Then
                EjecutarMensaje(cosErrorRepeat, arre_erro_Repeat[1], mtError, [mbOk], 0);
        (* #fvcstodostart
           $priority = 3
           $responsible = tecnologia
           $item = FORM : METODO ESTANDA Agregar comentario de error en REPEAT
           #fvcstodoend *)
//        AddComment(ColumnByName['gridCODI_CST'].Index, nume_elemento, arre_erro_Repeat[1]);
        Exit;
     End;
     //Obtener la frecuencia
     Try
            var_frecuencia := StrToFloat(Cells[ColumnByName['gridFRECUENCIA'].Index, nume_elemento]);
     Except
            var_frecuencia := 1;
     End;
     if var_frecuencia < 0 Then var_frecuencia := 1;
     //Calcular el REPEAT
     var_auxi_float:=0;
     For var_auxi_integer := var_repe_desde To var_repe_hasta Do
        Try
                var_auxi_float := var_auxi_float + StrToFloat(Cells[ColumnByName['gridTIEM_TMU'].Index,var_auxi_integer]);
        Except;
        End;
     //Valor
     Grid.Cells[ColumnByName['gridFRECUENCIA'].Index, nume_elemento]:=FormatFloat(FormatoFloat(False), var_frecuencia);
     Cells[ColumnByName['gridTIEM_TMU'].Index, nume_elemento] :=FormatFloat(FormatoFloat(False) ,var_auxi_float * var_frecuencia);
     Cells[ColumnByName['gridCONS_CST_DISTANCIA'].Index, nume_elemento] := IntToStr(var_repe_desde);
     Cells[ColumnByName['gridCONS_CST_DIFICULTAD'].Index, nume_elemento] := IntToStr(var_repe_hasta);
  End;{With GRID}
end;

{****************************************************************
Procedimiento   : tiem_elemento
Objetivo        : Devuelve el tiempo de un codigo CST
                  Si no existe, devuelve 1
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 04 de 2004
Versión         : pcp4000
*****************************************************************}
Function Tfn1_meto_estandar1.tiem_elemento(codi_cst : String; MostrarError : Boolean = True):TElementoCST;
var
    var_pos   : Integer;
    var_S  : String;
    var_solo_codigo   : String;
    var_i1  : Integer;
    var_i2  : IntegeR;
begin
  inherited;
  //Inicializar
  With Result do
  Begin
    Existe := False;
    tien_formula := False;
    codi_elemento := codi_cst;
    nomb_elemento := '';
    tiempo := 0;
    distancia := '';
    dificultad := '';
    posicionamiento := '';
    cons_cst_distancia := 0;
    cons_cst_dificultad := 0;
    cons_cst_posicionamiento := 0;
    var_1 := '';
    var_2 := '';
    var_3 := '';
    var_4 := '';
    var_5 := '';
    var_6 := '';
    var_7 := '';
    var_8 := '';
    var_9 := '';
    var_10:= '';
  End;
  //Validar el codigo
  if codi_cst = '' Then
        Exit;
  //RC20.5
  Result.Existe := True;
  Result.tien_formula := True;
  //----------CODIGO FORMULADO---------//
  //ET//
  If (Pos('ET', codi_cst)=1) Then
  Begin
       var_solo_codigo := 'ET';
       //Verificar si es un código ya escrito
       var_pos := pos('/', codi_cst);
       if (var_pos > 0) Then
       Begin
            Try
              //Seleccionar el primer numero
              var_s := Copy(codi_cst, Length(var_solo_codigo) + 1, var_pos - Length(var_solo_codigo) - 1);
              Result.Var_1 := var_S;
              var_i1 := StrToInt(Result.Var_1);
              var_s := Copy(codi_cst, Length(var_solo_codigo+'/') + Length(Result.var_1) + 1, Length(codi_Cst) - Length(var_solo_codigo) - Length(Result.var_1) - 1);
              Result.Var_2 := var_S;
              var_i2 := StrToInt(var_s);
              Result.Tiempo := 15.2 * (var_i1 / var_i2);
              Result.codi_elemento := var_solo_codigo + IntToStr(var_i1) + '/' + IntToStr(var_i2);
              Result.nomb_elemento := Format(cosMTMET, [IntToStr(var_i1) + '/' + IntToStr(var_i2)]);
              Result.var_1 := IntToStr(var_i1);
              Result.var_2 := IntToStr(var_i2);
            Except
                Result.Existe := False;
                Result.Tiempo := 0;
            End;
       End
       Else
       //Solamente si el codigo es ESTRICTAMENTE IGUAL
       If (codi_cst = 'ET') Then
       //Preguntar las variables
       Begin
                    var_i1 := pcpInputForm(cosMTMDistanciasDeDesplazamiento, cosMTMDistanciaT, tvPositiveInteger, 0);
                    Var_i2 := pcpInputForm(cosMTMDistanciasDeDesplazamiento, cosMTMDistanciaD, tvPositiveInteger, 0);
                    if (Var_i2 = 0) then var_i2 := 1;
                    Result.Tiempo := 15.2 * (var_i1 / var_i2);
                    if (Result.Tiempo > 20) then Result.Tiempo := 20;
                    //Modificar el código
                    Result.codi_elemento := var_solo_codigo + IntToStr(var_i1) + '/' + IntToStr(var_i2);
                    Result.nomb_elemento := Format(cosMTMET, [IntToStr(var_i1) + '/' + IntToStr(var_i2)]);
                    Result.var_1 := IntToStr(var_i1);
                    Result.var_2 := IntToStr(var_i2);
       End;
  End
  Else
  //AD - ANOTAR DATOS//
  If (Pos('AD', codi_cst)=1) Then
  Begin
       var_solo_codigo := 'AD';
       //Verificar si tiene datos
       if (Length(codi_cst) <> Length(var_solo_codigo)) Then
       Begin
            Try
              //Seleccionar el valor numérico
              var_s := Copy(codi_cst, Length(var_solo_codigo) + 1, Length(codi_cst) - Length(var_solo_codigo));
              var_i1 := StrToInt(var_s);
              if var_i1 <= 0 Then var_i1 := 1;
              Result.Var_1 := IntToStr(var_i1);
              Result.Tiempo := (var_i1 * 84.5) + 55;
              Result.codi_elemento := var_solo_codigo + IntToStr(var_i1);
              Result.nomb_elemento := Format(cosCSTAnotarDatosEnPlanilla, ['('+IntToStr(var_i1)+')']);
              Result.var_1 := IntToStr(var_i1);
            Except
                Result.Existe := False;
                Result.Tiempo := 0;
            End;
       End
       Else
       //Solamente si el codigo es ESTRICTAMENTE IGUAL
       If (codi_cst = 'AD') Then
       //Preguntar las variables
       Begin
                    var_i1 := pcpInputForm(Format(cosCSTAnotarDatosEnPlanilla, ['']), cosCSTNumeroDePalabras, tvPositiveInteger, 1);
                    if (Var_i1 <= 0) then var_i2 := 1;
                    //Modificar el código
                    Result.Tiempo := (var_i1 * 84.5) + 55;
                    Result.codi_elemento := var_solo_codigo + IntToStr(var_i1);
                    Result.nomb_elemento := Format(cosCSTAnotarDatosEnPlanilla, ['('+IntToStr(var_i1)+')']);
                    Result.var_1 := IntToStr(var_i1);
       End;
  End
  Else
  //RH - REVISAR HOJA DE CONTROL//
  If (Pos('RH', codi_cst)=1) Then
  Begin
       var_solo_codigo := 'RH';
       //Verificar si tiene datos
       if (Length(codi_cst) <> Length(var_solo_codigo)) Then
       Begin
            Try
              //Seleccionar el valor numérico
              var_s := Copy(codi_cst, Length(var_solo_codigo) + 1, Length(codi_cst) - Length(var_solo_codigo));
              var_i1 := StrToInt(var_s);
              if var_i1 <= 0 Then var_i1 := 1;
              Result.Var_1 := IntToStr(var_i1);
              Result.Tiempo := (var_i1 * 5) + 212;
              Result.codi_elemento := var_solo_codigo + IntToStr(var_i1);
              Result.nomb_elemento := Format(cosCSTRevisarHojaDeControl, ['('+IntToStr(var_i1)+')']);
              Result.var_1 := IntToStr(var_i1);
            Except
                Result.Existe := False;
                Result.Tiempo := 0;
            End;
       End
       Else
       //Solamente si el codigo es ESTRICTAMENTE IGUAL
       If (codi_cst = 'RH') Then
       //Preguntar las variables
       Begin
                    var_i1 := pcpInputForm(Format(cosCSTRevisarHojaDeControl, ['']), cosCSTNumeroDePalabras, tvPositiveInteger, 1);
                    if (Var_i1 <= 0) then var_i2 := 1;
                    //Modificar el código
                    Result.Tiempo := (var_i1 * 5) + 212;
                    Result.codi_elemento := var_solo_codigo + IntToStr(var_i1);
                    Result.nomb_elemento := Format(cosCSTRevisarHojaDeControl, ['('+IntToStr(var_i1)+')']);
                    Result.var_1 := IntToStr(var_i1);
       End;
  End

  //---------ESTA EN LA BD-------------//
  Else
  Begin
      Result.tien_formula := False;
      //Buscarlo en la base de datos
      if (quer_elem_cst.Active) and (quer_elem_cst.Locate('codi_elem_cst', codi_cst, [])) then
      Begin
         With quer_elem_cst do
         Begin
           Result.Existe := True;
           Result.Tiempo := quer_elem_cst.FieldByName('tiem_cst').asFloat;
           Result.Nomb_Elemento := FieldByName('NOMB_ELEM_CST').asString;
           Result.Distancia := FieldByName('DISTANCIA').asString;
           Result.Dificultad := FieldByName('DIFICULTAD').asString;
           Result.Posicionamiento := FieldByName('POSICIONAMIENTO').asString;
           Result.cons_cst_Distancia := FieldByName('CONS_CST_DISTANCIA').asInteger;
           Result.cons_cst_Dificultad := FieldByName('CONS_CST_DIFICULTAD').asInteger;
           Result.cons_cst_Posicionamiento := FieldByName('CONS_CST_POSICIONAMIENTO').asInteger;
         End
      End
      Else
         Result.Existe := False;
  End;
end;
{****************************************************************
Procedimiento   : doCalcularElemento
Objetivo        : Calcula el tiempo de un elemento
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 04 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.doCalcularElemento(Sender : TADVColumnGrid; nume_elemento : Integer; codi_cst : String;
        ColocarNoExiste : Boolean = True);
var
        var_elementoCST : TElementoCST;
Begin
    //Buscar el elemento digitado
    With Sender, quer_elem_cst do
    Begin
        //Verificar que el elemento exista
        var_ElementoCST := tiem_elemento(codi_cst);
        if var_ElementoCST.Existe Then
        Begin
                 //Codigo
                 Cells[ColumnByName['gridCODI_CST'].Index, nume_elemento]:= var_elementoCST.codi_elemento;
                 //Nombre
                 if ColocarNoExiste Then
                        Cells[ColumnByName['gridNOMB_ELEM_CST'].Index, nume_elemento]:= var_elementoCST.nomb_elemento;
                 //Distancia
                 if var_elementoCST.cons_cst_distancia > 0 Then
                    Cells[ColumnByName['gridDISTANCIA'].Index, nume_elemento]:= var_elementoCST.Distancia
                 Else
                    Cells[ColumnByName['gridDISTANCIA'].Index, nume_elemento]:='';
                 //Dificultad
                 if var_elementoCST.cons_cst_dificultad > 0 Then
                     Cells[ColumnByName['gridDIFICULTAD'].Index, nume_elemento]:= var_ElementoCST.Dificultad
                 Else
                     Cells[ColumnByName['gridDIFICULTAD'].Index, nume_elemento] := '';
                 //Posicionamiento
                 if var_elementoCST.cons_cst_posicionamiento > 0 Then
                    Cells[ColumnByName['gridPOSICIONAMIENTO'].Index, nume_elemento] := var_ElementoCST.Posicionamiento
                 Else
                    Cells[ColumnByName['gridPOSICIONAMIENTO'].Index, nume_elemento] := '';
                 //Tiempo
                 Cells[ColumnByName['gridTIEM_TMU'].Index, nume_elemento]:=FormatFloat(FormatoFloat(False), var_elementoCST.Tiempo);
                 Cells[ColumnByName['gridCONS_CST_DISTANCIA'].Index, nume_elemento]:= IntToStr(var_ElementoCST.cons_cst_distancia);
                 Cells[ColumnByName['gridCONS_CST_DIFICULTAD'].Index, nume_elemento]:= IntToStr(var_ElementoCST.cons_cst_dificultad);
                 Cells[ColumnByName['gridCONS_CST_POSICIONAMIENTO'].Index, nume_elemento]:= IntToStr(var_ElementoCST.cons_cst_posicionamiento);
        End
        Else
        Begin
//            For Desde:=2 to 8 Do Grid.Cells[Desde,Grid.Row]:='';
            if (codi_cst <> '') Then
                Grid.Cells[2, nume_elemento]:='Elemento No Existe';
        End;
    End;
End;
{****************************************************************
Procedimiento   : Tabla_VentanaBeforePost
Objetivo        : Ejecutar las acciones requeridas antes de
                  guardar el maestro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 04 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.Tabla_VentanaBeforePost(DataSet: TDataSet);
Var
        var_auxi_integer        : Integer;
        var_i           : Integer;
begin
  inherited;  
  //Guardar las cambios realizados al listado de elementos
  Try
       Update;
       //Iniciar la transaccion
       ProgresoBarraEstado(cosTrabajando);
       StartDBTransaction;
       //Ver si se necesita cambiar el código
       If (tabla_ventana.State <> dsInsert) and (var_cambiosEnCodigo) Then
          EjecutarMensaje(cosCambioDeCodigo , mtInformation, [mbOK], 0);
       //Continuar el guardado (Si no está insertando ni es tiemop cronómetro)
       If Not (tabla_ventana.State = dsInsert) and Not(chec_tiem_cronometro.Checked) Then
       Begin
             doHacerCalculos(Grid);
             //Eliminar los registros actuales
             quer_elem_eliminar.ExecSQL;
             //Guardar
             With quer_elem_guardar, grid do
             Begin
                  For var_auxi_integer := 1 to RowCount-1 do
                  Begin
                       ProgresoBarraEstado(cosGuardando, var_auxi_integer, RowCount - 1);
                       ParamByName('cons_oper_costura').Value := tabla_ventana.FieldByName('cons_oper_costura').asInteger;
                       ParamByName('secu_oper_cost_elemento').Value := var_auxi_integer;
                       ParamByName('codi_elem_cst').Value := Cells[ColumnByName['gridCODI_CST'].Index, var_auxi_integer];
                       ParamByName('nomb_elem_cst').Value := Cells[ColumnByName['gridNOMB_ELEM_CST'].Index, var_auxi_integer];
                       ParamByName('frecuencia').Value := StrToFloat(Cells[ColumnByName['gridFRECUENCIA'].Index, var_auxi_integer]);
                       ParamByName('tiem_cst').Value := StrToFloat(Cells[ColumnByName['gridTIEM_TMU'].Index, var_auxi_integer]);
                       For var_i := 1 to coiCSTNumeroVariablesAdicionales do
                         Try
                            ParamByName('VAR_'+IntToStr(var_i)).Value :=
                                StrToFloat(Cells[ColumnByName['VAR_'+IntToStr(var_i)].Index, var_auxi_integer]);
                         Except
                            ParamByName('VAR_'+IntToStr(var_i)).Value := 0;
                         End;
                       ExecSQL;       
                 End;
              End;
       End;
       //Hacer permanentes los cambios
       ProgresoBarraEstado(cosCommiting);
       CommitDBWork;
  Except
     On E:Exception do
     Begin
        //Deshacer los cambios
        ProgresoBarraEstado(cosRollingBack);
        RollBackDBWork;
        //Mensaje
        ProgresoBarraEstado(cosOcurrioUnError);
        EjecutarMensajeError(e.Message+#13+#13+
                cosErrorEnElementoNo+IntToStr(var_auxi_integer));
        //Abortar la operacion de guardado
        ProgresoBarraEstado;
        Abort;
     End;
  End;
  ProgresoBarraEstado;
End;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actuaizar los controles cuando cambie el estado
                  de la tabla principal
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 04 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.data_ventanaStateChange(Sender: TObject);
begin
  inherited;
//  edit_codi_operacion.enabled := (tabla_ventana.State = dsInsert);
  if not edit_codi_operacion.Enabled then ActiveControl := edit_nomb_operacion;
  //Ocultar la pagina de elementos al insertar
  page_elementos.TabVisible := (tabla_Ventana.Active) and (Tabla_Ventana.State <> dsInsert) and (Not chec_tiem_cronometro.Checked);
  page_historial.TabVisible := (tabla_Ventana.Active) and (Tabla_Ventana.State <> dsInsert);
  page_dependencias.TabVisible := (tabla_Ventana.Active) and (Tabla_Ventana.State <> dsInsert);
  acti_impr_info_general.Enabled := (tabla_Ventana.Active) and Not(Tabla_ventana.State in [dsEdit, dsInsert]);
end;
{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles al mostrar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.FormShow(Sender: TObject);
begin
  inherited;
  //Verificar si ya fue inicializada la ventana
  If not var_vent_inicializada then
  Begin
       //Caption de los panel de dependencia
       pane_depe_1.Caption := Format(cosDependen, [variables.Genero+' '+Variables.NombreAMostrar]);
       pane_depe_2.Caption := Format(cosDependeDe, [variables.Genero+' '+Variables.NombreAMostrar]);
       //Si no está insertando, llamar los movimientos del elemento
       If tabla_ventana.State<>dsInsert then
          DoLlamarMovimientos(Grid)
       Else
          Grid.RowCount := 2;
       //Actualizar el tiempo cronómetro
       chec_tiem_cronometroChange(Sender);
  End;                           
  //Dar por inicializada la ventana
  var_vent_inicializada := True;
end;
{****************************************************************
Procedimiento   : doLlamarMovimientos
Objetivo        : Cargar los elementos de una operación dada 
                  en el grid solicitante
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 04 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.doLlamarMovimientos(Sender: TAdvColumnGrid);
Var
        var_auxi_integer        : Integer;
        var_i   : Integer;
begin
  inherited;
  var_OmitirCalculos := True;
  //Limpiar la tabla
  LimpiarGrid(Sender);
  Sender.RowCount := 1;
  quer_movimientos.Close;
  //Parametros de la consulta (dependiendo si es para importación o datos del elemento)
  If Sender = Grid_importar Then   
  begin
     if quer_oper_cost_importar.RecordCount = 0 Then Exit;
     quer_movimientos.ParamByName('cons_oper_costura').Value := quer_oper_cost_importar.FieldByName('cons_oper_costura').AsString
  End
  Else 
     quer_movimientos.ParamByName('cons_oper_costura').Value := Tabla_Ventana.FieldByName('cons_oper_costura').AsString;
  Try
      With quer_movimientos, Sender do
      Begin
           AbrirDataSet(quer_movimientos); 
           //Numero de registros
           RowCount := RecordCount + 1;
           //Mostrar los valores
           For var_auxi_integer := 1 to RowCount - 1 do
           Begin
                    If RowCount>coiContadorMinimoBarraProgreso Then    
                        ProgresoBarraEstado(cosConsultando,var_auxi_integer,RowCount-1); 
                    Cells[columnByName['gridCODI_CST'].index, var_auxi_integer] := FieldByName('codi_elem_cst').AsString;
                    Cells[columnByName['gridNOMB_ELEM_CST'].index, var_auxi_integer] := FieldByName('nomb_elem_cst').asString;
                    Cells[columnByName['gridFRECUENCIA'].index, var_auxi_integer] := FormatFloat(FormatoFloat(False),(FieldByName('frecuencia').asFloat));
                    Cells[columnByName['gridTIEM_TMU'].index, var_auxi_integer] := FormatFloat(FormatoFloat(False),(FieldByName('tiem_cst').asFloat));
                    //Valores del elemento
                    If quer_elem_cst.Locate('CODI_ELEM_CST', FieldByName('codi_elem_cst').AsString, []) Then
                    Begin
                         Cells[columnByName['gridDISTANCIA'].index, var_auxi_integer] := quer_elem_cst.FieldByName('distancia').AsString;
                         Cells[columnByName['gridDIFICULTAD'].index, var_auxi_integer] := quer_elem_cst.FieldByName('dificultad').AsString;
                         Cells[columnByName['gridPOSICIONAMIENTO'].index, var_auxi_integer] := quer_elem_cst.FieldByName('posicionamiento').AsString;
                    End;
                    for var_i := 1 to coiCSTNumeroVariablesAdicionales do
                        Cells[ColumnByName['VAR_'+IntToStr(var_i)].index, var_auxi_integer] := FieldByName('var_'+IntToStr(var_i)).asString; 
                    Next;
           End;
      End;
  Except
        on E:Exception do
        Begin
            ProgresoBarraEstado(cosOcurrioUnError);
            EjecutarMensajeError(e.message);
        End;
  End;
  quer_movimientos.Close;
  ProgresoBarraEstado;
  var_OmitirCalculos := False;
  DoHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : DoLlamarElementosImportar
Objetivo        : Llamar los elementos de la operación seleccionada
                  en el grid de importación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.DoLlamarElementosImportar(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
begin
  inherited;
  DoLlamarMovimientos(Grid_importar);
end;
{****************************************************************
Procedimiento   : acti_impo_sele_todosExecute
Objetivo        : Seleccionar todos los elementos del grid de importación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_impo_sele_todosExecute(Sender: TObject);
begin
  inherited;
  Grid_Importar.SelectRows(1,Grid_importar.RowCount-1);
end;
{****************************************************************
Procedimiento   : acti_impo_importarExecute
Objetivo        : Ejecutar la acción de importar
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_impo_importarExecute(Sender: TObject);
Var
        var_auxi_integer        : Integer;
        var_row_original        : Integer;
        var_i                   : Integer;
begin
    Inherited;
    //Copiar las celdas completas
    Begin               
         //Pegar los valores
         Grid.DefaultDrawing := False;
         var_row_original := grid.Row;
         //Verificar que tenga por lo menos una fila
         if Grid.RowCount = 1 Then Grid.RowCount := 2;
         //Recorrer las columnas existentes
         For var_auxi_integer := Grid_Importar.Selection.Bottom downto Grid_Importar.Selection.Top do
         Begin
                If (Grid_Importar.Selection.Bottom-Grid_Importar.Selection.Top+1>25) Then
                        ProgresoBarraEstado(cosTrabajando ,Grid_Importar.RowCount-var_auxi_integer+1, Grid_Importar.RowCount);
                //Insertar
                acti_insertarExecute(Sender);
                Grid.Rows[var_row_original] := Grid_Importar.Rows[var_auxi_integer];
                //Adicionales
                Grid.Cells[Grid_Importar.ColumnByName['gridCONS_CST_DISTANCIA'].Index, var_row_original] := 
                        Grid_Importar.Cells[Grid_Importar.ColumnByName['gridCONS_CST_DISTANCIA'].Index, var_auxi_integer];
                Grid.Cells[Grid_Importar.ColumnByName['gridCONS_CST_DIFICULTAD'].Index, var_row_original] := 
                        Grid_Importar.Cells[Grid_Importar.ColumnByName['gridCONS_CST_DIFICULTAD'].Index, var_auxi_integer];
                Grid.Cells[Grid_Importar.ColumnByName['gridCONS_CST_POSICIONAMIENTO'].Index, var_row_original] :=
                        Grid_Importar.Cells[Grid_Importar.ColumnByName['gridCONS_CST_POSICIONAMIENTO'].Index, var_auxi_integer];
                For var_i := 1 to coiCSTNumeroVariablesAdicionales do
                    Grid.Cells[Grid_Importar.ColumnByName['VAR_'+IntToStr(var_i)].Index, var_row_original] :=
                        Grid_Importar.Cells[Grid_Importar.ColumnByName['VAR_'+IntToStr(var_i)].Index, var_auxi_integer];
         End;
         Grid.Row := var_row_original;
         doIniciarEdicion(Sender);
         doHacerCalculos(Grid);
         ProgresoBarraEstado;
         Grid.DefaultDrawing := True;
    End;
end;
{****************************************************************
Procedimiento   : FormActivate
Objetivo        : Actualizar la ventana al mostrarla
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.FormActivate(Sender: TObject);
begin
  inherited;
  grid.columnByName['gridTIEM_2'].Header := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_unid_medida').AsString;
  grid_importar.columnByName['gridTIEM_2'].Header := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_unid_medida').AsString;
  padr_gridTIEM_2.Caption := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_unid_medida').AsString;
  labe_unid_2.Caption := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_unid_medida').AsString;
end;
{****************************************************************
Procedimiento   : pane_importarVisibleChanged
Objetivo        : Actualizar la consulta de importación cuando 
                  se muestre la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.pane_importarVisibleChanged(Sender: TObject);
begin
  inherited;
  If pane_importar.Visible then
     doLlamarMovimientos(grid_importar);
end;
{****************************************************************
Procedimiento   : DoSumarTiempoElementos
Objetivo        : Suma el tiempo de los elementos indicados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 07 de 2004
Versión         : pcp4000
*****************************************************************}
Procedure Tfn1_meto_estandar1.DoSumarTiempoElementos(Sender : TADVColumnGrid; var tiem_manual : Real; var tiem_maquina : Real;
                elem_inicial : Integer = -1; elem_final : Integer = -1; AplicarFrecuencia : Boolean = True);
Var
        var_auxi_integer        : Integer;              
        var_tiem_maquina        : Real;
        var_tiem_manual         : Real;  
        var_tiem_maqu_recursivo : Real;
        var_tiem_manu_recursivo : Real;
        var_repe_desde          : Integer;
        var_repe_hasta          : Integer;
        var_frecuencia          : Float;
Begin
        With Sender Do
        Begin
              //Validar las variables de entrada
              if elem_inicial = -1 then elem_inicial := 1;
              if elem_final = -1 Then elem_final := RowCount - 1;
              //Inicializar las variables
              var_tiem_maquina := 0;
              var_tiem_manual := 0;
              //Recorrer el grid
              For var_auxi_integer := elem_inicial to elem_final do
              Begin
                    //Suma de Tiempo máquina
                    If (Pos('TM', Cells[ColumnByName['gridCODI_CST'].Index, var_auxi_integer]) = 1)   Then
                       Try
                           var_tiem_maquina := var_tiem_maquina + StrToFloat(Cells[ColumnByName['gridTIEM_TMU'].Index, var_auxi_integer])
                       Except
                       End
                    Else
                    //Suma del repeat
                    If EsRepeat(Cells[ColumnByName['gridCODI_CST'].Index, var_auxi_integer]) Then
                    Begin
                         //Obtener la frecuencia del elemento
                         var_frecuencia := 1;
                         if AplicarFrecuencia then 
                             Try
                                    var_frecuencia := StrToFloat(Cells[ColumnByName['gridFRECUENCIA'].Index, var_auxi_integer]);
                             Except
                             End;
                         //Hacer Recursiva la suma de tiempo del repeat
                         var_repe_desde := RepeatDesde(Cells[ColumnByName['gridCODI_CST'].Index, var_auxi_integer]);
                         var_repe_hasta := RepeatHasta(Cells[ColumnByName['gridCODI_CST'].Index, var_auxi_integer]);
                         //Validar el Repeat
                         if (var_auxi_integer<=var_repe_desde) or ((var_auxi_integer>=var_repe_desde) and (var_auxi_integer<=var_repe_hasta)) Then
                         Begin
                             var_tiem_maqu_recursivo := 0;
                             var_tiem_manu_recursivo := 0;
                         End
                         Else doSumarTiempoElementos(Sender, var_tiem_manu_recursivo, var_tiem_maqu_recursivo, var_repe_desde, var_repe_hasta, False);
                         //Aplicar la frecuencia
                         var_tiem_maqu_recursivo := var_tiem_maqu_recursivo * var_frecuencia;
                         var_tiem_manu_recursivo := var_tiem_manu_recursivo * var_frecuencia;
                         //Sumarlos al total
                         var_tiem_maquina := var_tiem_maquina + var_tiem_maqu_recursivo;
                         var_tiem_manual := var_tiem_manual + var_tiem_manu_recursivo;
                    End
                    //Elementos normales
                    Else    
                      Try
                        var_tiem_manual := var_tiem_manual + StrToFloat(Cells[ColumnByName['gridTIEM_TMU'].Index, var_auxi_integer]);
                      Except
                      End;
              End;
        End;
        tiem_manual := var_tiem_manual;
        tiem_maquina := var_tiem_maquina;
End;
{****************************************************************
Procedimiento   : gridGetCellColor
Objetivo        : Asignar el color de la celda al pintarla
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.gridGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  inherited;
  With Grid do
  Begin
        //Deshabilitar frecuencia en TM
        If (Acol = ColumnByName['gridFRECUENCIA'].Index) and
           ((Pos('TM',Cells[ColumnByName['gridCODI_CST'].Index, aRow]) = 1)or
           (CodigoTieneFormula(Cells[ColumnByName['gridCODI_CST'].Index, aRow]))) Then
               ABrush.Color := clBtnFace;
        //Colores segun el tipo de elemento
        If (ACol = 0) and (aRow>0) Then
        Begin
            If (Pos('TM', Cells[ColumnByName['gridCODI_CST'].Index, aRow]) = 1) Then aBrush.Color := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_colo_maquina').AsInteger
            Else
            If EsRepeat(Cells[ColumnByName['gridCODI_CST'].Index, aRow]) Then aBrush.Color := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_colo_repeat').AsInteger
            Else
            If (Cells[ColumnByName['gridCODI_CST'].Index, aRow] = '') Then aBrush.Color := clBtnFace
            Else
            aBrush.Color := _fmdi.tabl_pcp_opciones.FieldByName('inge_meto_colo_manual').AsInteger
        End;
  End;
end;
{****************************************************************
Procedimiento   : acti_sele_todosExecute
Objetivo        : Seleccionar todos los elementos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_sele_todosExecute(Sender: TObject);
begin
  inherited;
  //Seleccionar todos los elementos
  grid.SelectRows(1,grid.RowCount-1);
end;

procedure Tfn1_meto_estandar1.acti_buscarExecute(Sender: TObject);
begin
  inherited;
  grid_find.Execute;
end;
{****************************************************************
Procedimiento   : tabl_oper_cost_historialBeforePost
Objetivo        : Generar la secuencia para la tabla de historial
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.tabl_oper_cost_historialBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  GenerarSecuencia(tabl_oper_cost_historial);
end;
{****************************************************************
Procedimiento   : CambiosEnCodigo
Objetivo        : Controlar cuando es necesario cambiar el código de la 
                  operación
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.CambiosEnCodigo(
  Sender: TField);
begin
  inherited;
  //Actualizar la variable de control de cambios del codigo
  var_cambiosEnCodigo := True;
end;

procedure Tfn1_meto_estandar1.Tabla_VentanaAfterPost(DataSet: TDataSet);
begin
  inherited;
  //Actualizar la variable de control de cambio en las operaciones
  var_nece_actu_operaciones := true;
  //Actualizar la variable de control de cambios del codigo
  var_cambiosEnCodigo := False;
  If ExisteVentana(Tfn1_meto_refe_list_operaciones, False) Then
     _fmdi.MostrarAlerta(cosAtencion, cosDebeActualizarMetodos,1);
end;
{****************************************************************
Procedimiento   : chec_tiem_cronometroChange
Objetivo        : Prevenir al usuario cuando está seleccionando
                  tiempo cronómetro
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.chec_tiem_cronometroChange(Sender: TObject);
begin
  inherited;
  //Verificar si tiene elementos
  If var_vent_inicializada Then
     //Si se va a habiitar , consultar los elementos
     if chec_tiem_Cronometro.Checked Then
     Begin
          If tabla_ventana.FieldByName('tiem_asignado').AsFloat>0 Then
             if Confirmar(cosDeseaHabilitarTiempoCronometro)=mrNo then
                chec_tiem_cronometro.Checked := False;
     End
  Else
     if (tabla_Ventana.State in [dsInsert, dsEdit]) Then
     Begin
         tabla_Ventana.FieldByName('tiem_cron_asignado').Value := 0;
         tabla_Ventana.FieldByName('tiem_asignado').Value := 0;
     End;
  edit_tiem_cronometro.Enabled := chec_tiem_cronometro.Checked;
  edit_tiem_cronometro.Update;
  page_elementos.TabVisible := (tabla_Ventana.Active) and (Tabla_Ventana.State <> dsInsert) and (Not chec_tiem_cronometro.Checked);
  page_elementos.Update;
  page.Update;
end;
{****************************************************************
Procedimiento   : page_dependenciasShow
Objetivo        : Actualizar la pagina de dependencias al mostrarla
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.page_dependenciasShow(Sender: TObject);
begin
  inherited;
  RefreshDataSet(quer_depe_0);
  RefreshDataSet(quer_depe_1);
end;
{****************************************************************
Procedimiento   : DBTreeListCustomDrawCell
Objetivo        : Contar el número de hijos de los items de la lista    
                  de dependencias
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_meto_estandar1.DBTreeListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  If Not aNode.HasChildren Then Exit;
  aText := aText + '   ('+IntToStr(aNode.Count)+')';
  If aNode.Count > 0 Then aFont.Style := [fsBold];
end;
{****************************************************************
Procedimiento   : padr_acti_expo_xlsExecute
Objetivo        : Exportar los elementos a EXCEL
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tfn1_meto_estandar1.padr_acti_expo_xlsExecute(Sender: TObject);
begin
  inherited;
  ExportarGridAExcel(Grid);
end;
{****************************************************************
Procedimiento   : padr_acti_expo_HTMLExecute
Objetivo        : Exportar los elementos a HTML
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tfn1_meto_estandar1.padr_acti_expo_HTMLExecute(Sender: TObject);
begin
  inherited;
  ExportarGridAHTML(Grid);
end;
{****************************************************************
Procedimiento   : padr_acti_expo_arch_sepa_comasExecute
Objetivo        : Exportar los elementos a texto
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tfn1_meto_estandar1.padr_acti_expo_arch_sepa_comasExecute(
  Sender: TObject);
begin
  inherited;
  ExportarGridATexto(Grid);
end;
{****************************************************************
Procedimiento   : acti_impr_info_generalExecute
Objetivo        : Ejecutar el reporte de información general
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_impr_info_generalExecute(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(Trn1_meto_oper_cst_info_operacion, rn1_meto_oper_cst_info_operacion);
  rn1_meto_oper_cst_info_operacion.DoEjecutarInforme(tabla_ventana.FieldByName('cons_oper_costura').asInteger);
end;
{****************************************************************
Procedimiento   : acti_impr_list_elementosExecute
Objetivo        :
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 12 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_impr_list_elementosExecute(
  Sender: TObject);
var
    var_fila    : Integer;
begin
  inherited;
  //Recalcular indicadores
  doHacerCalculos(Grid);
  With tabl_repo_elementos, Grid do
    Begin
        //Preparar una tabla local para el reporte
        Close;
        CreateTable;
        Open;
        //Recorrer los elementos de la operación
        For var_fila := 1 To RowCount - 1 do
            Begin
                 //Insertar el registro
                 Insert;
                 FieldByName('nume_elemento').Value := var_fila;
                 FieldByName('codi_elem_cst').Value := Cells[ColumnByName['gridCODI_CST'].Index, var_fila];
                 FieldByName('nomb_elem_cst').Value := Cells[ColumnByName['gridNOMB_ELEM_CST'].Index, var_fila];
                 FieldByName('frecuencia').Value := Cells[ColumnByName['gridFRECUENCIA'].Index, var_fila];
                 FieldByName('distancia').Value := Cells[ColumnByName['gridDISTANCIA'].Index, var_fila];
                 FieldByName('dificultad').Value := Cells[ColumnByName['gridDIFICULTAD'].Index, var_fila];
                 FieldByName('posicionamiento').Value := Cells[ColumnByName['gridPOSICIONAMIENTO'].Index, var_fila];
                 FieldByName('tiem_tmu').Value := StrToFloat(Cells[ColumnByName['gridTIEM_TMU'].Index, var_fila]);
                 FieldByName('tiem_2').Value := StrToFloat(Cells[ColumnByName['gridTIEM_2'].Index, var_fila]);
                 Post;
            End;
        //Cerrar la tabla local
        Close;
    End;
    //Crear la tabla local del resumen para el reporte
    With tabl_repo_totales, grid do
        Begin
            Close;
            CreateTable;
            Open;
            //Insertar los valores
            Insert;
            FieldByName('prod_hora').Value := FormatFloat('0', edit_prod_hora.Value);
            FieldByName('prod_dia').Value := FormatFloat('0',  edit_prod_dia.Value);
            FieldByName('cost_unidad').Value := FormatFloat('$ ,0.00',  edit_cost_unidad.Value);
            FieldByName('supl_constante').Value := FormatFloat(',0.00 %', edit_supl_constante.Value);
            FieldByName('supl_variable').Value := FormatFloat(',0.00 %', edit_supl_variable.Value);
            FieldByName('supl_maquina').Value := FormatFloat(',0.00 %', edit_supl_maquina.Value);
            FieldByName('porc_part_manual1').Value := FormatFloat(',0.000', edit_tiem_manual.Value);
            FieldByName('porc_part_manual2').Value := FormatFloat(',0.00 %', edit_porc_manual.Value);
            FieldByName('porc_part_maquina').Value := FormatFloat(',0.000', edit_tiem_maquina.Value);
            FieldByName('porc_part_maquina2').Value := FormatFloat(',0.00 %', edit_porc_maquina.Value);
            FieldByName('porc_part_total').Value := FormatFloat(',0.000', edit_tiem_total.Value);
            FieldByName('porc_part_total2').Value := FormatFloat(',0.00 %', edit_porc_total.Value);
            FieldByName('tota_tn1').Value := FormatFloat(FormatoFloat, edit_tiem_tmu_1.Value);
            FieldByName('tota_tn2').Value := FormatFloat(FormatoFloat, edit_tiem_2_1.Value);
            FieldByName('tota_tnsupl1').Value := FormatFloat(FormatoFloat, edit_tiem_tmu_2.Value);
            FieldByName('tota_tnsupl2').Value := FormatFloat(FormatoFloat, edit_tiem_2_2.Value);
            FieldByName('tota_estandar1').Value := FormatFloat(FormatoFloat, tabla_ventana.FieldByName('tiem_asignado').asFloat);
            FieldByName('tota_estandar2').Value := FormatFloat(FormatoFloat, edit_tiem_2_3.Value);
            Post;
        End;
    //Crear el reporte
    Application.CreateForm(Trn1_meto_oper_cst_list_elementos, rn1_meto_oper_cst_list_elementos);
    rn1_meto_oper_cst_list_elementos.doEjecutarInforme(tabla_ventana.FieldByName('cons_oper_costura').AsInteger);
end;
{****************************************************************
Procedimiento   : acti_impr_pues_trabajoExecute
Objetivo        : Mostrar el informe del puesto de trabajo
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 14 de 2004
Versión         : pcp4003
*****************************************************************}
procedure Tfn1_meto_estandar1.acti_impr_pues_trabajoExecute(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(Trn1_meto_oper_cst_puest_trabjo, rn1_meto_oper_cst_puest_trabjo);
  rn1_meto_oper_cst_puest_trabjo.doEjecutarInforme(tabla_ventana.FieldByName('cons_oper_costura').asInteger);
end;

procedure Tfn1_meto_estandar1.gridGridHint(Sender: TObject; ARow,
  ACol: Integer; var hintstr: String);
begin
  inherited;
  hintStr := '';
  if (aCol = Grid.ColumnByName['gridCODI_CST'].Index) and (aRow > 0) Then
    Begin
      With grid do
        Begin
            //Verificar si es un tiempo máquina
            if (Cells[ColumnByName['gridCODI_CST'].Index, aRow] = 'TM')
                Then hintSTR := Format(cosHintTM,
                        [Cells[ColumnByName['VAR_1'].Index, aRow],
                         Cells[ColumnByName['VAR_2'].Index, aRow],
                         Cells[ColumnByName['VAR_3'].Index, aRow],
                         Cells[ColumnByName['VAR_7'].Index, aRow],
                         Cells[ColumnByName['VAR_4'].Index, aRow],
                         Cells[ColumnByName['VAR_5'].Index, aRow],
                         Cells[ColumnByName['VAR_6'].Index, aRow]]);
        End;
    End;
end;
{****************************************************************
Procedimiento   : edit_codi_operacionEnter
Objetivo        : Generar el código de la operación 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure Tfn1_meto_estandar1.edit_codi_operacionEnter(Sender: TObject);
begin
  inherited;
  //Si no está insertando salir
  If Tabla_Ventana.State <> dsInsert then Exit;
  //Si ya tiene código, salir
  If (tabla_ventana.FieldByName('codi_oper_costura').asString <> '') Then Exit;
  //Verificar que tenga proceso, tipo de operación y componente
  if (comb_Proceso.EstaVacio) Then
  Begin
      EjecutarMensaje(cosDebeSeleccionarUnProceso, mtInformation, [mbok], 0);
      DarFoco(comb_Proceso);
      Exit;
  End;
  if (comb_tipo_operacion.EstaVacio) Then
  Begin
      EjecutarMensaje(cosDebeSeleccionarUntipo_operacion, mtInformation, [mbok], 0);
      DarFoco(comb_tipo_operacion);
      Exit;
  End;
  if (comb_componente.EstaVacio) Then
  Begin
      EjecutarMensaje(cosDebeSeleccionarUnComponente, mtInformation, [mbok], 0);
      DarFoco(comb_componente);
      Exit;
  End;
  //Generar el codigo
  tabla_ventana.FieldByName('codi_oper_costura').Value :=
            quer_procesos.FieldByName('codi_proceso').asString +
            quer_grup_componentes.FieldByName('codi_comp_grupo').asString +
            quer_oper_tipos.FieldByName('codi_oper_cost_tipo').asString;
  edit_codi_operacion.SetSelection(Length(edit_codi_operacion.Text), Length(edit_codi_operacion.Text), False);
end;
{****************************************************************
Procedimiento   : gridDblClickCell
Objetivo        : Editar los codigo al dar doble click                  
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 19 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_meto_estandar1.gridDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
    var_key : Word;
begin
  inherited;
  //Doble click sobre el código
  if (ACol = grid.ColumnByName['gridCODI_CST'].Index) Then
  Begin
      //Verificar si es tiempo máquina
     If (UpperCase(Grid.Cells[aCol, aRow]) = 'TM') Then
     Begin
           //Simular un ENTER
           var_key := vk_Return;
           DoKeyDownGrid(Sender, var_key, []);
     End;
  End;
end;
{****************************************************************
Procedimiento   : pane_videoResize
Objetivo        : Cambiar el tamaño al frame del video
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 19 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_meto_estandar1.pane_videoResize(Sender: TObject);
begin
  inherited;
  {fram_video.Width := Width;
  fram_video.Height := Height;
  fram_Video.Video.Width := Width;
  fram_Video.Video.Height := Height;}
end;

procedure Tfn1_meto_estandar1.pane_videoVisibleChanged(Sender: TObject);
begin
  inherited;
{  if pane_video.Visible Then
     fram_video.doEjecutarFrame('D:\_personal\Descargas\Video\Operaciones\metodos.m1v')
  Else
     fram_video.Video.close;}
end;
{****************************************************************
Procedimiento   : CodigoTieneFormula
Objetivo        : Indica si un código CST es formulado o por tiempo directamente
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 23 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
Function Tfn1_meto_estandar1.CodigoTieneFormula(peCodi_CST : String) : Boolean;
Var
    var_codigo  : String;
Begin
    var_codigo := UpperCase(peCodi_CST);
    Result := (Pos('ET', var_Codigo) = 1) or
              (Pos('RH', var_Codigo) = 1) or
              (Pos('AD', var_Codigo) = 1)
    ;
End;
end.

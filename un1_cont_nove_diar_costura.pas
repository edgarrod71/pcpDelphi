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
        Unit            : un1_cont_nove_diar_costura
        Objetivo        : Control diario de producción
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Julio 28 de 2004
        Versión         : pcp4000
*******************************************************************}
unit un1_cont_nove_diar_costura;




interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal_alone, kbmMemTable, Db, RxMemDS, dxEdLib, dxCurrencyEditPCP,
  DBCtrls, StdCtrls, dxDBTLCl, dxGrClms, dxDBGrid, SCLDBGrid, dxExEdtr,
  Grids, BaseGrid, AdvGrid, AdvCGrid, SCLColumnGrid, dxTL, dxDBCtrl,
  dxCntner, SCLTabs, TBXDkPanels, TBXButtonSCL, SohoBtns, SCLButton,
  RxLookup, PCPLookUpComboEdit, dxDBELib, PCPFrame, dxEditor, TB2Item,
  PictureContainer, DBTables, AdvPanel, SCLPropiedadesForm,
  DBActns, ActnList, ImgList, ExtCtrls, Boxes, PCPProceso, SoCtrls,
  SCLDBLabel, TBX, TB2Dock, TB2Toolbar, Menus, ufra_mens_atencion,
  FuncionParser, JvExControls, JvComponent, JvImageSquare;

  
type
  Tfn1_cont_nove_diar_costura = class(T_fvent_modal_alone)
    panel: TPCPFrame;
    myTabla_ventana: TRxMemoryData;
    Panel1: TPanel;
    TBControlItem1: TTBControlItem;
    labe_fech_lectura: TLabel;
    edit_fech_lectura: TdxDateEdit;
    quer_info_personal: TQuery;
    data_info_personal: TDataSource;
    quer_cons_personal: TQuery;
    quer_cons_personalCONS_PERSONAL: TIntegerField;
    quer_sele_nove_diarias: TQuery;
    quer_cons_personalNOMB_COMPLETO: TStringField;
    myTabla_ventanacons_personal: TIntegerField;
    myTabla_ventanafech_lectura: TDateField;
    myTabla_ventananume_lectura: TIntegerField;
    myTabla_ventanacons_cont_nove_diaria: TIntegerField;
    myTabla_ventananomb_completo: TStringField;
    myTabla_ventanacons_empresa: TIntegerField;
    myTabla_ventanacons_planta: TIntegerField;
    myTabla_ventanacons_plan_linea: TIntegerField;
    myTabla_ventanacons_line_seccion: TIntegerField;
    myTabla_ventanacons_turno: TIntegerField;
    quer_empresas: TQuery;
    data_empresas: TDataSource;
    quer_plantas: TQuery;
    data_plantas: TDataSource;
    quer_plan_lineas: TQuery;
    data_plan_lineas: TDataSource;
    quer_line_secciones: TQuery;
    data_line_secciones: TDataSource;
    quer_turnos: TQuery;
    data_turnos: TDataSource;
    myTabla_ventanaminu_contratados: TIntegerField;
    quer_inse_nove_diarias: TQuery;
    myTabla_ventanahora_inicio: TTimeField;
    myTabla_ventanahora_final: TTimeField;
    quer_sele_nove_improductivos: TQuery;
    quer_sele_nove_improductivosCONS_CONT_NOVE_IMPRODUCTIVO: TIntegerField;
    quer_sele_nove_improductivosCONS_IMPRODUCTIVO: TIntegerField;
    quer_sele_nove_improductivosCODI_IMPRODUCTIVO: TStringField;
    quer_sele_nove_improductivosCONS_IMPR_FAMILIA: TIntegerField;
    quer_sele_nove_improductivosNOMB_IMPRODUCTIVO: TStringField;
    quer_sele_nove_improductivosCONS_SUB_IMPRODUCTIVO: TIntegerField;
    quer_sele_nove_improductivosCODI_SUB_IMPRODUCTIVO: TStringField;
    quer_sele_nove_improductivosNOMB_SUB_IMPRODUCTIVO: TStringField;
    quer_sele_nove_improductivosCONS_PROD_ORDEN: TIntegerField;
    quer_sele_nove_improductivosNUME_PROD_ORDEN: TStringField;
    quer_sele_nove_improductivosCODI_IMPR_FAMILIA: TStringField;
    quer_sele_nove_improductivosFECH_SISTEMA: TDateTimeField;
    quer_sele_nove_improductivosUSUA_SISTEMA: TStringField;
    data_sele_improductivos: TDataSource;
    quer_sele_nove_improductivosMINU_IMPRODUCTIVOS: TIntegerField;
    pane_info: TPanel;
    Panel2: TPanel;
    labe_codigo: TSCLDBLabel;
    edit_codi_personal: TdxEdit;
    pane_seleccion: TPanel;
    SCLDBLabel2: TSCLDBLabel;
    labe_nume_lectura: TSCLDBLabel;
    labe_empresa: TSCLDBLabel;
    labe_seccion: TSCLDBLabel;
    labe_planta: TSCLDBLabel;
    labe_linea: TSCLDBLabel;
    labe_turno: TSCLDBLabel;
    labe_minutos: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    edit_nume_lectura: TdxSpinEdit;
    edit_minu_contratados: TdxDBCalcEdit;
    comb_empresa: TPCPLookUpComboEdit;
    comb_planta: TPCPLookUpComboEdit;
    comb_linea: TPCPLookUpComboEdit;
    comb_seccion: TPCPLookUpComboEdit;
    comb_turno: TPCPLookUpComboEdit;
    boto_iniciar: TSCLButton;
    pane_page: TPanel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem4: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem2: TTBXItem;
    page: TSCLPageControl;
    page_improductivos: TSCLTabSheet;
    grid_improductivos: TdxDBGrid;
    grid_improductivosCONS_CONT_NOVE_IMPRODUCTIVO: TdxDBGridMaskColumn;
    grid_improductivosCONS_IMPRODUCTIVO: TdxDBGridMaskColumn;
    grid_improductivosCODI_IMPR_FAMILIA: TdxDBGridMaskColumn;
    grid_improductivosCODI_IMPRODUCTIVO: TdxDBGridMaskColumn;
    grid_improductivosCONS_IMPR_FAMILIA: TdxDBGridMaskColumn;
    grid_improductivosNOMB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    grid_improductivosCONS_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    grid_improductivosCODI_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    grid_improductivosNOMB_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn;
    grid_improductivosCONS_PROD_ORDEN: TdxDBGridMaskColumn;
    grid_improductivosMINU_IMPRODUCTIVOS: TdxDBGridMaskColumn;
    grid_improductivosNUME_PROD_ORDEN: TdxDBGridMaskColumn;
    grid_improductivosFECH_SISTEMA: TdxDBGridDateColumn;
    grid_improductivosUSUA_SISTEMA: TdxDBGridMaskColumn;
    page_abonados: TSCLTabSheet;
    page_extras: TSCLTabSheet;
    page_corte: TSCLTabSheet;
    page_fabricacion: TSCLTabSheet;
    acti_ventana: TActionList;
    acti_nuevo: TAction;
    acti_modificar: TAction;
    acti_eliminar: TAction;
    TBXSeparatorItem1: TTBXSeparatorItem;
    quer_sele_nove_improductivosCONS_RECURSO: TIntegerField;
    quer_dele_nove_improductivos: TQuery;
    quer_improductivos: TQuery;
    quer_sub_improductivos: TQuery;
    quer_prod_ordenes: TQuery;
    quer_recursos: TQuery;
    quer_sele_nove_abonados: TQuery;
    data_nove_abonados: TDataSource;
    quer_dele_nove_abonados: TQuery;
    quer_sele_nove_abonadosCONS_CONT_NOVE_ABONADO: TIntegerField;
    quer_sele_nove_abonadosCONS_ABONADO: TIntegerField;
    quer_sele_nove_abonadosCONS_CONT_NOVE_DIARIA: TIntegerField;
    quer_sele_nove_abonadosCODI_ABONADO: TStringField;
    quer_sele_nove_abonadosNOMB_ABONADO: TStringField;
    quer_sele_nove_abonadosCONS_PROD_ORDEN: TIntegerField;
    quer_sele_nove_abonadosNUME_PROD_ORDEN: TStringField;
    quer_sele_nove_abonadosMINU_ABONADOS: TFloatField;
    quer_sele_nove_abonadosMINU_REAL_ABONADOS: TFloatField;
    quer_sele_nove_abonadosFECH_SISTEMA: TDateTimeField;
    quer_sele_nove_abonadosUSUA_SISTEMA: TStringField;
    quer_sele_nove_hora_extras: TQuery;
    data_sele_nove_hora_extras: TDataSource;
    quer_dele_nove_hora_extras: TQuery;
    quer_sele_nove_hora_extrasCONS_CONT_NOVE_HORA_EXTRA: TIntegerField;
    quer_sele_nove_hora_extrasCONS_CONT_NOVE_DIARIA: TIntegerField;
    quer_sele_nove_hora_extrasCONS_HORA_EXTRA: TIntegerField;
    quer_sele_nove_hora_extrasCODI_HORA_EXTRA: TStringField;
    quer_sele_nove_hora_extrasNOMB_HORA_EXTRA: TStringField;
    quer_sele_nove_hora_extrasCONS_PROD_ORDEN: TIntegerField;
    quer_sele_nove_hora_extrasMINU_EXTRAS: TIntegerField;
    quer_sele_nove_hora_extrasFECH_SISTEMA: TDateTimeField;
    quer_sele_nove_hora_extrasUSUA_SISTEMA: TStringField;
    grid_extras: TdxDBGrid;
    quer_sele_nove_hora_extrasNUME_PROD_ORDEN: TStringField;
    grid_extrasCONS_CONT_NOVE_HORA_EXTRA: TdxDBGridMaskColumn;
    grid_extrasCONS_CONT_NOVE_DIARIA: TdxDBGridMaskColumn;
    grid_extrasCONS_HORA_EXTRA: TdxDBGridMaskColumn;
    grid_extrasCODI_HORA_EXTRA: TdxDBGridMaskColumn;
    grid_extrasNOMB_HORA_EXTRA: TdxDBGridMaskColumn;
    grid_extrasCONS_PROD_ORDEN: TdxDBGridMaskColumn;
    grid_extrasMINU_EXTRAS: TdxDBGridMaskColumn;
    grid_extrasNUME_PROD_ORDEN: TdxDBGridMaskColumn;
    grid_extrasFECH_SISTEMA: TdxDBGridDateColumn;
    grid_extrasUSUA_SISTEMA: TdxDBGridMaskColumn;
    quer_abonados: TQuery;
    quer_hora_extras: TQuery;
    acti_paros: TAction;
    acti_abonados: TAction;
    acti_hora_extras: TAction;
    acti_corte: TAction;
    acti_fabricacion: TAction;
    subp_fabricacion: TSCLPageControl;
    page_tiqu_fabricacion: TSCLTabSheet;
    page_erro_fabricacion: TSCLTabSheet;
    pane_tiqu_fabricacion: TPanel;
    SCLDBLabel1: TSCLDBLabel;
    edit_codi_barr_fabri_completo: TdxEdit;
    tabl_erro_fabricacion: TRxMemoryData;
    data_erro_fabricacion: TDataSource;
    quer_inse_tiqu_fabricacion: TQuery;
    tabl_erro_fabricacioncodi_barras: TStringField;
    tabl_erro_fabricacionnume_paquete: TIntegerField;
    tabl_erro_fabricacionnume_lote: TIntegerField;
    tabl_erro_fabricacionsecu_operacion: TIntegerField;
    tabl_erro_fabricacionnomb_operacion: TStringField;
    tabl_erro_fabricacionmens_error: TStringField;
    grid_erro_fabricacion: TdxDBGrid;
    grid_erro_fabricacioncodi_barras: TdxDBGridMaskColumn;
    grid_erro_fabricacionnume_prod_orden: TdxDBGridMaskColumn;
    grid_erro_fabricacionnume_paquete: TdxDBGridMaskColumn;
    grid_erro_fabricacionnume_lote: TdxDBGridMaskColumn;
    grid_erro_fabricacionsecu_operacion: TdxDBGridMaskColumn;
    grid_erro_fabricacionnomb_operacion: TdxDBGridMaskColumn;
    chec_partir: TdxCheckEdit;
    quer_inse_tiqu_fabr_partidos: TQuery;
    grid_erro_fabricacionmens_error: TdxDBGridMemoColumn;
    quer_elim_lectura: TQuery;
    pane_indicadores: TPCPFrame;
    Label30: TSCLDBLabel;
    Label29: TSCLDBLabel;
    Label33: TSCLDBLabel;
    Label34: TSCLDBLabel;
    Label35: TSCLDBLabel;
    Label36: TSCLDBLabel;
    Label38: TSCLDBLabel;
    edit_resu_efic_obtenida: TdxCurrencyEditPCP;
    edit_resu_nume_tiquetes: TdxCurrencyEditPCP;
    edit_resu_cantidad: TdxCurrencyEditPCP;
    edit_resu_tiem_no_Estandar: TdxCurrencyEditPCP;
    edit_resu_tiem_ausentismo: TdxCurrencyEditPCP;
    edit_resu_tiem_extra: TdxCurrencyEditPCP;
    edit_resu_tiem_improductivo: TdxCurrencyEditPCP;
    edit_resu_efic_promedio: TdxCurrencyEditPCP;
    edit_resu_amc: TdxCurrencyEditPCP;
    edit_resu_amp: TdxCurrencyEditPCP;
    quer_sele_nove_tiqu_fabricacion: TQuery;
    quer_elim_tiqu_fabricacion: TQuery;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tabl_erro_fabricacionnume_prod_orden: TStringField;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem1: TTBXItem;
    acti_gene_tiquetes: TAction;
    boto_buscar: TTBXButtonSCL;
    acti_busc_personal: TAction;
    quer_minu_disponibles: TQuery;
    quer_form_pago: TQuery;
    data_form_pago: TDataSource;
    quer_form_pago_dividido: TQuery;
    quer_actu_valo_tiquetes: TQuery;
    quer_actu_valo_tiqu_cero: TQuery;
    quer_form_pago_diferencial: TQuery;
    quer_form_pago_mixto: TQuery;
    quer_inse_nove_pago: TQuery;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    quer_inse_tiqu_corte: TQuery;
    subp_Corte: TSCLPageControl;
    page_tiqu_corte: TSCLTabSheet;
    page_erro_corte: TSCLTabSheet;
    pane_tiqu_corte: TPanel;
    SCLDBLabel13: TSCLDBLabel;
    edit_codi_barr_corte_completo: TdxEdit;
    grid_tiqu_corte: TSCLColumnGrid;
    quer_elim_tiqu_corte: TQuery;
    quer_sele_nove_tiqu_corte: TQuery;
    acti_sele_todos: TAction;
    TBXItem5: TTBXItem;
    quer_form_pago_aprendizaje: TQuery;
    data_abonados: TDataSource;
    tabl_tiqu_fabricacion: TkbmMemTable;
    tabl_tiqu_fabricacionCODI_BARRAS: TStringField;
    tabl_tiqu_fabricacionCONS_CONT_NOVE_TIQU_FABRICACION: TIntegerField;
    tabl_tiqu_fabricacionNOMB_PROD_PAQU_TIPO: TStringField;
    tabl_tiqu_fabricacionNUME_PROD_ORDEN: TStringField;
    tabl_tiqu_fabricacionNUME_LOTE: TIntegerField;
    tabl_tiqu_fabricacionNUME_PAQUETE: TIntegerField;
    tabl_tiqu_fabricacionSECU_OPERACION: TIntegerField;
    tabl_tiqu_fabricacionNOMB_OPERACION: TStringField;
    tabl_tiqu_fabricacionCANT_UNIDADES: TIntegerField;
    tabl_tiqu_fabricacionVALO_HORA_PRODUCCION: TFloatField;
    tabl_tiqu_fabricacionCONS_ABONADO: TIntegerField;
    grid_tiqu_fabricacion: TSCLDBGrid;
    data_tiqu_fabricacion: TDataSource;
    tabl_tiqu_fabricacionTIEM_PAQUETE: TFloatField;
    tabl_tiqu_fabricacionVALO_TIQUETE: TFloatField;
    grid_tiqu_fabricacionCONS_CONT_NOVE_TIQU_FABRICACION: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionCODI_BARRAS: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionNOMB_PROD_PAQU_TIPO: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionNUME_PROD_ORDEN: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionNUME_LOTE: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionNUME_PAQUETE: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionSECU_OPERACION: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionNOMB_OPERACION: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionCANT_UNIDADES: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionVALO_HORA_PRODUCCION: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionCONS_ABONADO: TdxDBGridMaskColumn;
    grid_tiqu_fabricacionTIEM_PAQUETE: TdxDBGridColumn;
    grid_tiqu_fabricacionVALO_TIQUETE: TdxDBGridColumn;
    tabl_tiqu_Fabr_suma: TkbmMemTable;
    tabl_tiqu_Fabr_sumaCANT_UNIDADES: TIntegerField;
    tabl_tiqu_Fabr_sumaVALO_HORA_PRODUCCION: TFloatField;
    tabl_tiqu_Fabr_sumaTIEM_PAQUETE: TFloatField;
    boto_inic_lectura: TTBXButtonSCL;
    pop_Grids: TTBXPopupMenu;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXItem8: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXItem9: TTBXItem;
    TBXItem10: TTBXItem;
    Label4: TSCLDBLabel;
    edit_resu_tiem_estandar: TdxCurrencyEditPCP;
    page_curva: TSCLTabSheet;
    subp_curva: TSCLPageControl;
    page_tiqu_curva: TSCLTabSheet;
    pane_tiqu_curva: TPanel;
    grid_tiqu_curva: TSCLDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dxDBGridMaskColumn5: TdxDBGridMaskColumn;
    dxDBGridMaskColumn6: TdxDBGridMaskColumn;
    dxDBGridMaskColumn7: TdxDBGridMaskColumn;
    dxDBGridMaskColumn8: TdxDBGridMaskColumn;
    dxDBGridMaskColumn9: TdxDBGridMaskColumn;
    dxDBGridMaskColumn10: TdxDBGridMaskColumn;
    dxDBGridMaskColumn11: TdxDBGridMaskColumn;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    page_erro_curva: TSCLTabSheet;
    SCLDBLabel4: TSCLDBLabel;
    edit_codi_barr_curva: TdxEdit;
    quer_Sele_nove_Curva: TQuery;
    Label5: TSCLDBLabel;
    edit_minu_curva: TdxCurrencyEditPCP;
    quer_sele_nove_tiqu_curva: TQuery;
    tabl_Tiqu_curva: TkbmMemTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    IntegerField5: TIntegerField;
    FloatField1: TFloatField;
    IntegerField6: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    data_tiqu_curva: TDataSource;
    tabl_tiqu_curv_suma: TkbmMemTable;
    IntegerField7: TIntegerField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    acti_curva: TAction;
    quer_sele_nove_abonadosMINU_TRABAJADOS: TIntegerField;
    grid_abonados: TdxDBGrid;
    grid_abonadosCONS_CONT_NOVE_ABONADO: TdxDBGridMaskColumn;
    grid_abonadosCONS_ABONADO: TdxDBGridMaskColumn;
    grid_abonadosCONS_CONT_NOVE_DIARIA: TdxDBGridMaskColumn;
    grid_abonadosCODI_ABONADO: TdxDBGridMaskColumn;
    grid_abonadosNOMB_ABONADO: TdxDBGridMaskColumn;
    grid_abonadosCONS_PROD_ORDEN: TdxDBGridMaskColumn;
    grid_abonadosMINU_TRABAJADOS: TdxDBGridColumn;
    grid_abonadosMINU_ABONADOS: TdxDBGridMaskColumn;
    grid_abonadosNUME_PROD_ORDEN: TdxDBGridMaskColumn;
    grid_abonadosMINU_REAL_ABONADOS: TdxDBGridMaskColumn;
    grid_abonadosFECH_SISTEMA: TdxDBGridDateColumn;
    grid_abonadosUSUA_SISTEMA: TdxDBGridMaskColumn;
    quer_sele_nove_abonadosTIQUETES: TIntegerField;
    quer_extr_rangos: TQuery;
    quer_upda_nove_diarias: TQuery;
    quer_sele_nove_abonadosVALO_HORA: TFloatField;
    quer_sele_nove_abonadosVALO_TOTAL: TFloatField;
    grid_abonadosVALO_HORA: TdxDBGridColumn;
    grid_abonadosVALO_TOTAL: TdxDBGridColumn;
    page_invisible: TSCLTabSheet;
    Label31: TSCLDBLabel;
    Label1: TSCLDBLabel;
    edit_resu_tiem_tiqu_fabricacion: TdxCurrencyEditPCP;
    edit_resu_tiem_tiqu_corte: TdxCurrencyEditPCP;
    SCLDBLabel7: TSCLDBLabel;
    edit_resu_tiem_traba_no_estandar: TdxCurrencyEditPCP;
    SCLDBLabel10: TSCLDBLabel;
    edit_gana_no_estandar: TdxCurrencyEditPCP;
    SCLDBLabel12: TSCLDBLabel;
    edit_mini_gara_no_Estandar: TdxCurrencyEditPCP;
    Panel3: TPanel;
    chec_curv_estandar: TRadioButton;
    chec_curv_no_estandar: TRadioButton;
    SCLDBLabel24: TSCLDBLabel;
    edit_resu_tiem_traba_estandar: TdxCurrencyEditPCP;
    quer_bono_produccion: TQuery;
    QMinimo_Empresa: TQuery;
    quer_sele_nove_improductivosVALO_HORA: TFloatField;
    quer_sele_nove_improductivosVALO_MINIMO: TFloatField;
    quer_sele_nove_abonadosVALO_MINIMO: TFloatField;
    quer_sele_nove_abonadosVALO_GARANTIZADO: TFloatField;
    quer_sele_nove_improductivosVALO_TOTAL: TFloatField;
    quer_sele_nove_improductivosVALO_GARANTIZADO: TFloatField;
    pane_bihorarios: TPanel;
    labe_hora_inicial: TSCLDBLabel;
    edit_hora_inicial: TdxDBTimeEdit;
    labe_hora_final: TSCLDBLabel;
    edit_hora_final: TdxDBTimeEdit;
    page_indicadores: TSCLTabSheet;
    pane_indi_pago: TPCPFrame;
    SCLDBLabel14: TSCLDBLabel;
    SCLDBLabel15: TSCLDBLabel;
    SCLDBLabel16: TSCLDBLabel;
    SCLDBLabel17: TSCLDBLabel;
    SCLDBLabel18: TSCLDBLabel;
    SCLDBLabel20: TSCLDBLabel;
    Label2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel11: TSCLDBLabel;
    SCLDBLabel21: TSCLDBLabel;
    edit_mini_garantizado: TdxCurrencyEditPCP;
    edit_gana_produccion: TdxCurrencyEditPCP;
    edit_ajus_al_minimo: TdxCurrencyEditPCP;
    edit_tota_devengado: TdxCurrencyEditPCP;
    dxDBEdit2: TdxDBEdit;
    pane_form_pago_codigo: TPanel;
    dxDBEdit3: TdxDBEdit;
    edit_valo_hora_produccion: TdxCurrencyEditPCP;
    boto_info_valo_hora_produccion: TSCLButton;
    edit_gana_prod_minutos: TdxCurrencyEditPCP;
    edit_mini_gara_turno: TdxCurrencyEditPCP;
    pane_bono_extras: TPanel;
    SCLDBLabel5: TSCLDBLabel;
    edit_bono_hora_extra: TdxCurrencyEditPCP;
    edit_prod_no_estandar: TdxCurrencyEditPCP;
    edit_gana_prod_NO_estandar: TdxCurrencyEditPCP;
    ajus_al_mini_no_estandar: TdxCurrencyEditPCP;
    edit_bono_curva: TdxCurrencyEditPCP;
    pane_bono_produccion: TPanel;
    SCLDBLabel19: TSCLDBLabel;
    edit_bono_produccion: TdxCurrencyEditPCP;
    Label3: TSCLDBLabel;
    edit_resu_tiem_curva: TdxCurrencyEditPCP;
    mens_no_curva: Tffra_mens_atencion;
    quer_efic_promedio: TQuery;
    func_indi1: TFuncionParser;
    func_indi2: TFuncionParser;
    func_indi3: TFuncionParser;
    SCLDBLabel25: TSCLDBLabel;
    edit_resu_tiem_abonado: TdxCurrencyEditPCP;
    pane_indi_productividad: TPCPFrame;
    SCLDBLabel9: TSCLDBLabel;
    prod_obte_estandar: TdxCurrencyEditPCP;
    SCLDBLabel26: TSCLDBLabel;
    prod_trab_estandar: TdxCurrencyEditPCP;
    SCLDBLabel22: TSCLDBLabel;
    prod_efic_estandar: TdxCurrencyEditPCP;
    scllabel27: TSCLDBLabel;
    prod_obte_no_estandar: TdxCurrencyEditPCP;
    SCLDBLabel28: TSCLDBLabel;
    prod_trab_no_estandar: TdxCurrencyEditPCP;
    SCLDBLabel29: TSCLDBLabel;
    prod_efic_no_estandar: TdxCurrencyEditPCP;
    SCLDBLabel30: TSCLDBLabel;
    prod_obte_curva: TdxCurrencyEditPCP;
    SCLDBLabel31: TSCLDBLabel;
    prod_trab_curva: TdxCurrencyEditPCP;
    SCLDBLabel32: TSCLDBLabel;
    prod_efic_curva: TdxCurrencyEditPCP;
    SCLDBLabel33: TSCLDBLabel;
    prod_tota_obtenidos: TdxCurrencyEditPCP;
    SCLDBLabel34: TSCLDBLabel;
    prod_Tota_trabajados: TdxCurrencyEditPCP;
    SCLDBLabel35: TSCLDBLabel;
    prod_efic_media: TdxCurrencyEditPCP;
    imag_ver_indicadores: TJvImageSquare;
    quer_sele_nove_improductivosESTANDAR: TIntegerField;
    grid_improductivosESTANDAR: TdxDBGridCheckColumn;
    SCLDBLabel23: TSCLDBLabel;
    edit_resu_impr_estandar: TdxCurrencyEditPCP;
    SCLDBLabel27: TSCLDBLabel;
    edit_resu_impr_no_estandar: TdxCurrencyEditPCP;
    SCLDBLabel36: TSCLDBLabel;
    edit_resu_tiem_ause_estandar: TdxCurrencyEditPCP;
    SCLDBLabel37: TSCLDBLabel;
    edit_resu_tiem_ause_no_estandar: TdxCurrencyEditPCP;
    quer_sele_nove_hora_extrasESTANDAR: TIntegerField;
    grid_extrasESTANDAR: TdxDBGridCheckColumn;
    SCLDBLabel38: TSCLDBLabel;
    edit_resu_tiem_extr_estandar: TdxCurrencyEditPCP;
    SCLDBLabel39: TSCLDBLabel;
    edit_resu_tiem_extr_no_estandar: TdxCurrencyEditPCP;
    procedure FormCreate(Sender: TObject);
    procedure edit_nume_lecturaChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edit_codi_personalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_codi_personalChange(Sender: TObject);
    procedure edit_nume_lecturaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure myTabla_ventanaAfterInsert(DataSet: TDataSet);
    procedure comb_empresaChange(Sender: TObject);
    procedure comb_plantaChange(Sender: TObject);
    procedure comb_lineaChange(Sender: TObject);
    procedure boto_iniciarClick(Sender: TObject);
    procedure EditarTablaVentana(Sender: TObject);
    procedure doAceptar(Sender: TObject);
    procedure acti_ventanaUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure acti_nuevoExecute(Sender: TObject);
    procedure grid_improductivosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acti_eliminarExecute(Sender: TObject);
    procedure doCambiarPagina(Sender: TObject);
    procedure pageChange(Sender: TObject);
    procedure data_erro_fabricacionStateChange(Sender: TObject);
    procedure edit_codi_barr_fabri_completoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure padr_accionesUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure padr_acti_eliminarExecute(Sender: TObject);
    procedure quer_sele_nove_improductivosAfterOpen(DataSet: TDataSet);
    procedure doHacerCalculos(Sender: TObject);
    procedure quer_sele_nove_abonadosAfterOpen(DataSet: TDataSet);
    procedure quer_sele_nove_hora_extrasAfterOpen(DataSet: TDataSet);
    procedure doLlamarTiquetes(Sender: TObject);
    procedure doCalcularMinutosContratados(Sender: TObject);
    procedure acti_gene_tiquetesExecute(Sender: TObject);
    procedure boto_buscarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure myTabla_ventanaBeforeCancel(DataSet: TDataSet);
    procedure padr_acti_cancelarUpdate(Sender: TObject);
    procedure padr_acti_cancelarExecute(Sender: TObject);
    procedure edit_codi_barr_corte_completoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure acti_sele_todosExecute(Sender: TObject);
    procedure page_tiqu_fabricacionShow(Sender: TObject);
    procedure tabl_tiqu_fabricacionCalcFields(DataSet: TDataSet);
    procedure tabl_tiqu_fabricacionAfterOpen(DataSet: TDataSet);
    procedure chec_partirChange(Sender: TObject);
    procedure edit_nume_lecturaExit(Sender: TObject);
    procedure tabl_Tiqu_curvaCalcFields(DataSet: TDataSet);
    procedure tabl_Tiqu_curvaAfterOpen(DataSet: TDataSet);
    procedure edit_minu_contratadosExit(Sender: TObject);
    procedure quer_sele_nove_abonadosCalcFields(DataSet: TDataSet);
    procedure quer_sele_nove_improductivosCalcFields(DataSet: TDataSet);
    procedure func_indi1ParserError(Sender: TObject; ParseError: Integer);
    procedure func_indi2ParserError(Sender: TObject; ParseError: Integer);
    procedure func_indi3ParserError(Sender: TObject; ParseError: Integer);
    procedure func_indi1PideVariable(Sender: TObject; Variable: String;
      var Valor: Extended; var Found: Boolean);
    procedure imag_ver_indicadoresClick(Sender: TObject);
  private
    { Private declarations }
    var_llamando        : Boolean;
    var_eliminando  : Boolean;
    var_biho_seleccionado       : Boolean;
    var_minu_turno      : Integer;
    Function func_valo_hora_prod_mixto : Real;
    Function ExtrasPorCodigos : Boolean;
  public
    { Public declarations }
  end;

ResourceString
        cosCodigoPersonalNoExiste = 'El código del personal no existe.';
        cosEscribaUnidadesPaquete       = 'Escriba las unidades reportadas:';
        cosDeseaEliminarLecturaActual   = 'Desea eliminar la lectura del operario %s?';
var
  fn1_cont_nove_diar_costura: Tfn1_cont_nove_diar_costura;

const
        idExtras        = 0;
        idImproductivos = 1;
        idCorte         = 2;
        idFabricacion   = 3;
        idNoEstandar    = 4;
        idCurva         = 5;

implementation

uses _func_varias, _MDI, _func_pcp, un1_cont_nove_improductivos, _cons_pcp,
  un1_cont_nove_abonados, un1_cont_nove_hora_extras,
  un1_cont_nove_gene_tiquete, _vent_child, ubPersonal, _Traductor;

{$R *.DFM}
{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.FormCreate(Sender: TObject);
begin
  page_invisible.TabVisible := False;
  imag_ver_indicadores.HiColor := clFondoAplicacion;
  page.ActivePageIndex := 0;
  pane_bono_produccion.BevelOuter := bvNone;
  inherited;
  //Inicializar los controles
  var_minu_turno := 0;
  var_eliminando := False;
  var_biho_seleccionado := False;
  edit_fech_lectura.Date := NowDate;
  var_llamando := False;
  myTabla_ventana.Close;
  if Not ExtrasPorCodigos Then
  Begin
      page_Extras.TabVisible := False;
      page.ActivePageIndex := idImproductivos;
      labe_minutos.Caption := cosMinutosTrabajados;
      AbrirDataSet(quer_extr_rangos);
      pane_bono_Extras.BevelOuter := bvNone;
      if (quer_extr_rangos.FieldByName('sele_diarias').asInteger = 1) Then
          pane_bono_Extras.Visible := True;
  End;
  ColorGrid(grid_improductivos);
  ColorGrid(grid_abonados);
  ColorGrid(grid_extras);
  ColorGrid(grid_tiqu_corte);
  ColorGrid(grid_erro_fabricacion);
  SetTotalColumn(grid_tiqu_corte.ColumnByName['TIEM_PAQUETE']);
  SetTotalColumn(grid_tiqu_corte.ColumnByName['VALO_TIQUETE']);
  grid_tiqu_Corte.ActiveCellShow := False;
  pane_page.align := alClient;
  pane_form_pago_codigo.BevelOuter := bvNone;
  //Abrir las consultas
  AbrirDataSet(quer_empresas);
  AbrirDataSet(quer_plantas);
  AbrirDataSet(quer_plan_lineas);
  AbrirDataSet(quer_line_secciones);
  AbrirDataSet(quer_turnos);
  AbrirDataSet(quer_improductivos);
  AbrirDataSet(quer_sub_improductivos);
  AbrirDataSet(quer_prod_ordenes);
  AbrirDataSet(quer_recursos);
  AbrirDataSet(quer_abonados);
  AbrirDataSet(quer_hora_extras);
  AbrirDataSet(tabl_erro_fabricacion);
  quer_form_pago.Prepare;
  AbrirDataSet(quer_form_pago);
  AbrirDataSet(quer_form_pago_dividido);
  AbrirDataSet(quer_form_pago_diferencial);
  AbrirDataSet(quer_form_pago_mixto);
  AbrirDataSet(quer_form_pago_aprendizaje);
  AbrirDataSet(quer_Sele_nove_curva);
  quer_cons_personal.Prepare;
  quer_info_personal.Prepare;
  quer_sele_nove_diarias.Prepare;
  quer_sele_nove_improductivos.Prepare;
  quer_sele_nove_abonados.Prepare;
  quer_sele_nove_hora_extras.Prepare;
  quer_inse_tiqu_fabricacion.Prepare;
  quer_inse_tiqu_fabr_partidos.Prepare;
  quer_sele_nove_tiqu_fabricacion.Prepare;
  quer_sele_nove_tiqu_corte.Prepare;
  quer_bono_produccion.Prepare;
  AbrirDataSet(quer_bono_produccion);
  Insertar_Palabras(Self, WKLenguaje);
end;
{****************************************************************
Procedimiento   : edit_nume_lecturaChange
Objetivo        : Actualizar los controles cuando cambie el
                  número de lectura (bihorario)
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.edit_nume_lecturaChange(
  Sender: TObject);
begin
  inherited;
  var_biho_seleccionado := False;
  edit_hora_inicial.Enabled := (edit_nume_lectura.intValue > 0);
  edit_hora_final.Enabled := (edit_nume_lectura.intValue > 0);
  pane_bihorarios.visible := (edit_nume_lectura.intValue > 0);
  var_biho_seleccionado := False;
  //Anular los negativos
  if (edit_nume_lectura.intValue < 0) then edit_nume_lectura.Value := 0;
  //Actualizar la tabla ventana
  With myTabla_ventana do
  Begin
      if (active) then
        EdItarTablaVentana(Sender);
      FieldByName('nume_lectura').Value := edit_nume_lectura.IntValue;
      Post;
  End;
end;
{****************************************************************
Procedimiento   : FormDestroy
Objetivo        : Liberar controles antes de destruir
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.FormDestroy(Sender: TObject);
begin
  Unprepare(quer_info_personal);
  Unprepare(quer_cons_personal);
  Unprepare(quer_sele_nove_diarias);
  Unprepare(quer_sele_nove_abonados);
  UnPrepare(quer_sele_nove_hora_extras);
  Unprepare(quer_inse_tiqu_fabricacion);
  Unprepare(quer_inse_tiqu_fabr_partidos);
  Unprepare(quer_sele_nove_tiqu_fabricacion);
  Unprepare(quer_sele_nove_tiqu_corte);
  Unprepare(quer_form_pago);
  Unprepare(quer_bono_produccion);
  if _fMDI.data_base_pcp.InTransaction Then
     RollBackDBWork;
  inherited;
end;

procedure Tfn1_cont_nove_diar_costura.edit_codi_personalKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_Return then
  Begin
      //Buscar información del personal
      if edit_codi_personal.text = '' Then Exit;
      //Limpiar el valor de minutos en curva -> esto podría ir en otro lado
      edit_minu_curva.Value := 0;
      chec_curv_estandar.Checked := True;
      
      //Buscar el código
      With quer_cons_personal do
      Begin
           if Active then close;
           paramByName('codi_personal').Value := edit_codi_personal.Text;
           Open;
           //Si el código no existe, mostrar un mensaje
           if (RecordCount = 0) then
           Begin
                EjecutarMensajeError(cosCodigoPersonalNoExiste);
                Close;
                edit_codi_personal.SelectAll;
                Exit;
           End;
           //Abrir la tabla temporal
           with myTabla_ventana do
           Begin
                open;
                Insert;
                FieldByName('cons_personal').Value := quer_cons_personal.FieldByName('cons_personal').asInteger;
                FieldByName('nomb_completo').Value := quer_cons_personal.FieldByName('nomb_completo').asString;
                Post;
           End;
           //Cerrar la consulta de personal
           Close;
      End;
      //Dar foco al número de lectura
      darFoco(edit_nume_lectura);
  End;
end;
{****************************************************************
Procedimiento   : edit_codi_personalChange
Objetivo        : Actualizar los controles cuando cambie
                  el código del personal
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.edit_codi_personalChange(
  Sender: TObject);
begin
  inherited;
  //Cerrar la consulta de personal
  if (quer_cons_personal.Active) then quer_cons_personal.Close;
  if (quer_info_personal.Active) then quer_info_personal.Close;
  if (myTabla_ventana.Active) then myTabla_ventana.Close;
  var_biho_seleccionado := False;
  pane_page.visible := False;
end;
{****************************************************************
Procedimiento   : data_info_personalStateChange
Objetivo        : Actualizar los controles cuando cambie el estdo
                  de la consulta de información del pesonal
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.edit_nume_lecturaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
Var
        aDataSet        : TQuery;  
begin
  inherited;
  //Si es ESCAPE cancelar y volver al codigo
  if key = vk_Escape then
  Begin
       myTabla_ventana.Close;
       var_biho_seleccionado := False;
       if DarFoco(edit_codi_personal) Then
        edit_codi_personal.SelectAll;
  End;
  if key = vk_return then
  Begin
       var_llamando := True;
       //Consultar si existe alguna lectura que coincida
       With quer_sele_nove_diarias do
       Begin
            if active then Close;
            Open;
            //Si encontró, asignar los valores a la tabla ventana
            if (RecordCount > 0) then
                aDataSet := quer_sele_nove_diarias
            Else
            //Si no, abrir la consulta de información del personal
                aDataSet := quer_info_personal;
       End;
       If (aDataSet <> quer_sele_nove_diarias) then
       Begin
                quer_sele_nove_diarias.Close;
                //Abrir la consulta de información del personal
                with quer_info_personal do
                Begin
                     if active then close;
                     Open;
                End;
       End;
       //Dar por seleccionado el bihorario
       var_biho_seleccionado := True;
       //Escribir los valores de la consulta, en la tabla temporal
       With myTabla_ventana do
       Begin
             //Iniciar la edición de la tabla ventana
             EditarTablaVentana(Sender);
             FieldByName('cons_empresa').Value := aDataSet.FieldByName('cons_empresa').AsInteger;
             FieldByName('cons_planta').Value := aDataSet.FieldByName('cons_planta').AsInteger;
             FieldByName('cons_plan_linea').Value := aDataSet.FieldByName('cons_plan_linea').AsInteger;
             FieldByName('cons_line_seccion').Value := aDataSet.FieldByName('cons_line_seccion').AsInteger;
             FieldByName('cons_turno').Value := aDataSet.FieldByName('cons_turno').AsInteger;
             //Si el registro existía, traer la hora inicial y final y los minutos
             if (aDataSet = quer_sele_nove_diarias) Then
             Begin
                 FieldByName('cons_cont_nove_diaria').Value := aDataSet.FieldByName('cons_cont_nove_diaria').AsInteger;
                 FieldByName('hora_inicio').Value := aDataSet.FieldByName('hora_inicio').asDateTime;
                 FieldByName('hora_final').Value := aDataSet.FieldByName('hora_final').asDateTime;
                 FieldByName('minu_contratados').Value := aDataSet.FieldByName('minu_contratados').AsInteger;
             End;
             Post;
       End;
       //Cerrar la fuente de datos
       if (aDataSet <> Nil) and (aDataSet.Active) then aDataSet.Close;
       //Consultar el tiempo trabajado en curva
       edit_minu_curva.Value := quer_Sele_nove_curva.FieldByName('minu_trab_curva').asInteger;
       if (quer_Sele_nove_curva.FieldByName('curv_estandar').asInteger = 1) Then
           chec_curv_estandar.Checked := True
       Else
           chec_curv_NO_estandar.Checked := True;
       //Deshabilitar los controles
       if edit_nume_lectura.intValue = 0 then
           DarFoco(edit_minu_contratados)
       Else
           DarFoco(edit_hora_inicial);
       var_llamando := False;
  End;
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles cuando cambie
                  el estado de la tabla de la ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.data_ventanaStateChange(
  Sender: TObject);
begin
  inherited;
  //Numero de lectura
  SetControlEnabled(pane_seleccion, (myTabla_ventana.Active));
  edit_nume_lectura.Enabled := (myTabla_ventana.Active);
  edit_fech_lectura.enabled := Not(myTabla_ventana.Active);
  edit_hora_inicial.Enabled := (edit_nume_lectura.intValue > 0);
  edit_hora_final.Enabled := (edit_nume_lectura.intValue > 0);
  edit_codi_personal.enabled := Not(myTabla_ventana.Active);
  acti_busc_personal.Enabled := Not(myTabla_ventana.Active);
end;
{****************************************************************
Procedimiento   : myTabla_ventanaAfterInsert
Objetivo        : Inicializar el registro de la tabla temporal
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.myTabla_ventanaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With myTabla_ventana do
  Begin
       FieldByName('fech_lectura').Value := edit_fech_lectura.Date;
       FieldByName('nume_lectura').Value := edit_nume_lectura.Value;
  End;
end;
{****************************************************************
Procedimiento   : comb_empresaChange
Objetivo        : Limpiar los datos cuando cambie la planta
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.comb_empresaChange(Sender: TObject);
begin
  inherited;
  if var_llamando then exit;
  //Limpiar los demás valores
  With myTabla_ventana do
  Begin
       EditarTablaVentana(Sender);
       FieldByName('cons_planta').Clear;
       FieldByName('cons_plan_linea').Clear;
       FieldByName('cons_line_seccion').Clear;
       Post; 
  End;
end;
{****************************************************************
Procedimiento   : comb_plantaChange
Objetivo        : Limpiar la linea y la seccion cuando cambie la
                  planta
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.comb_plantaChange(Sender: TObject);
begin
  inherited;
  if var_llamando then exit;
  //Limpiar los demás valores
  With myTabla_ventana do
  Begin
       EditarTablaVentana(Sender);
       FieldByName('cons_plan_linea').Clear;
       FieldByName('cons_line_seccion').Clear;
       Post; 
  End;

end;
{****************************************************************
Procedimiento   : comb_lineaChange
Objetivo        : Limpiar la sección cuando cambie la línea
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.comb_lineaChange(Sender: TObject);
begin
  inherited;
  if var_llamando then exit;
  //Limpiar los demás valores
  With myTabla_ventana do
  Begin
       EditarTablaVentana(Sender);
       FieldByName('cons_line_seccion').Clear;
       Post; 
  End;

end;

procedure Tfn1_cont_nove_diar_costura.boto_iniciarClick(Sender: TObject);
begin
  inherited;
  //Validar que se pueda generar la lectura
  if (Edit_Codi_personal.Text = '') Then
  Begin
      DarFoco(edit_codi_personal);
      Raise Exception.Create(Format(cosCampoObligatorio, [cosCodigo]));
  End;
  //Validar el número de lectura
  if (Edit_Nume_Lectura.IntValue < 0) Then
  Begin
      DarFoco(edit_nume_lectura);
      Raise Exception.Create(Format(cosErrorValorXNoValido, [edit_nume_lectura.Text, labe_nume_lectura.Caption]));
  End;
  //Validar las horas de inicio (Eliminado para el valor 12:00)
{  if (edit_nume_Lectura.IntValue > 0) then
  Begin
      //Hora inicial
      If (myTabla_Ventana.FieldByName('hora_inicio').asDateTime = 0) Then
      Begin
        DarFoco(edit_Hora_inicial);
        Raise Exception.Create(Format(cosCampoObligatorio, [labe_hora_inicial.Caption]));
      End;
      //Hora final
      If (myTabla_Ventana.FieldByName('hora_final').asDateTime = 0) Then
      Begin
        DarFoco(edit_Hora_final);
        Raise Exception.Create(Format(cosCampoObligatorio, [labe_hora_final.Caption]));
      End;
  End;}
  //Validar los minutos contratados
  if (myTabla_Ventana.FieldByName('minu_contratados').AsInteger < 0) Then
  Begin
      DarFoco(edit_minu_contratados);
      Raise Exception.Create(Format(cosErrorValorXNoValido, [edit_minu_contratados.Text, labe_minutos.Caption]));
  End;
  //Validar la empresa
  if (comb_empresa.EstaVacio) Then
  Begin
      DarFoco(comb_empresa);
      Raise Exception.Create(Format(cosCampoObligatorio, [labe_empresa.Caption]));
  End;
  //Validar la planta
  if (comb_planta.EstaVacio) Then
  Begin
      DarFoco(comb_planta);
      Raise Exception.Create(Format(cosCampoObligatorio, [labe_planta.Caption]));
  End;
  //Validar la linea
  if (comb_linea.EstaVacio) Then
  Begin
      DarFoco(comb_linea);
      Raise Exception.Create(Format(cosCampoObligatorio, [labe_linea.Caption]));
  End;
  //Validar la seccion
  if (comb_seccion.EstaVacio) Then
  Begin
      DarFoco(comb_seccion);
      Raise Exception.Create(Format(cosCampoObligatorio, [labe_seccion.Caption]));
  End;
  //Validar la turno
  if (comb_turno.EstaVacio) Then
  Begin
      DarFoco(comb_turno);
      Raise Exception.Create(Format(cosCampoObligatorio, [labe_turno.Caption]));
  End;

  //Si el consecutivo de la novedad está vacío, insertar
  Try
        StartDBTransaction;
        if varIsNull(myTabla_ventana.FieldByName('cons_cont_nove_diaria').Value) Then
        Begin
            //Generar la secuencia
            EditarTablaVentana(Sender);
            myTabla_ventana.FieldByName('cons_cont_nove_diaria').Value :=
              generarSecuencia('PCP_CONT_NOVE_DIARIAS', 'CONS_CONT_NOVE_DIARIA');
            myTabla_ventana.Post;
            quer_inse_nove_diarias.ExecSQL;
        End
        Else
        Begin
            //Actualizar el tiempo y la ubicación
            quer_upda_nove_diarias.ExecSQL;
        End;
        If ExtrasPorCodigos Then
            page.activePageIndex := idExtras
        Else
            page.ActivePageIndex := idImproductivos;
        //Limpiar la tabla de errores de fabricacion
        tabl_erro_fabricacion.Close;
        tabl_erro_fabricacion.Open;
        //Limpiar los controles del resumen
        edit_resu_nume_tiquetes.Value := 0;
        edit_resu_cantidad.Value := 0;
        edit_resu_tiem_curva.Value := 0;
        edit_resu_tiem_tiqu_fabricacion.Value := 0;
        edit_resu_tiem_tiqu_corte.Value := 0;
        edit_resu_tiem_estandar.Value := 0;
        edit_resu_tiem_abonado.Value := 0;
        edit_resu_impr_estandar.Value := 0;
        edit_resu_impr_no_estandar.Value := 0;
        edit_resu_tiem_no_Estandar.Value := 0;
        edit_resu_tiem_ause_estandar.Value := 0;
        edit_resu_tiem_ause_no_estandar.Value := 0;
        edit_resu_tiem_traba_no_estandar.Value := 0;
        edit_resu_tiem_extr_estandar.Value := 0;
        edit_resu_tiem_extr_no_estandar.Value := 0;
        edit_resu_tiem_traba_estandar.Value := 0;
        edit_gana_no_estandar.Value := 0;
        edit_resu_tiem_improductivo.Value := 0;
        edit_resu_tiem_ausentismo.Value := 0;
        edit_resu_tiem_extra.Value := 0;
        edit_resu_efic_promedio.Value := 0;
        edit_resu_amc.Value := 0;
        edit_resu_amp.Value := 0;
        edit_resu_efic_obtenida.Value := 0;
        prod_efic_estandar.Value := 0;
        prod_efic_no_estandar.Value := 0;
        //Limpiar los controles de la forma de pago
        edit_valo_hora_produccion.Value := 0;
        edit_mini_garantizado.Value := 0;
        edit_mini_gara_turno.Value := 0;
        edit_gana_prod_minutos.Value := 0;
        edit_gana_produccion.Value := 0;
        edit_gana_prod_NO_estandar.Value := 0;
        edit_mini_gara_no_Estandar.Value := 0;
        edit_ajus_al_minimo.Value := 0;
        edit_bono_hora_extra.Value := 0;
        edit_prod_no_estandar.Value := 0;
        ajus_al_mini_no_estandar.Value := 0;
        edit_bono_produccion.Value := 0;
        edit_bono_curva.Value := 0;
        edit_tota_devengado.Value := 0;
        //Abrir las consultas
        AbrirDataSet(quer_sele_nove_improductivos);
        AbrirDataSet(quer_sele_nove_abonados);
        AbrirDataSet(quer_sele_nove_hora_extras);
        pane_page.visible := True;
        chec_partir.Checked := False;
        edit_codi_barr_fabri_completo.Clear;
        edit_codi_barr_corte_completo.Clear;
        darFoco(grid_improductivos);
        //Calculos de datos fijos iniciales
        //Valor hora de producción
        Case (quer_form_pago.FieldByName('cons_sis_form_pago').asInteger) Of
             //1-Lineal
            fpValorHoraProduccion    : edit_valo_hora_produccion.Value := quer_form_pago.FieldByName('valo_hora_produccion').asFloat;
            //2-Dividido
            fpDividido  : Begin
                if quer_form_pago_dividido.Locate('codi_form_pago_dividido', quer_form_pago.FieldByName('para_1').asString, []) then
                    edit_valo_hora_produccion.Value :=
                        (quer_form_pago_dividido.FieldByName('valo_fact_1').asFloat * quer_form_pago_dividido.FieldByName('porc_fact_1').asFloat) +
                        (quer_form_pago_dividido.FieldByName('valo_fact_2').asFloat * quer_form_pago_dividido.FieldByName('porc_fact_2').asFloat) +
                        (quer_form_pago_dividido.FieldByName('valo_fact_3').asFloat * quer_form_pago_dividido.FieldByName('porc_fact_3').asFloat) +
                        (quer_form_pago_dividido.FieldByName('valo_fact_4').asFloat * quer_form_pago_dividido.FieldByName('porc_fact_4').asFloat)
                Else
                    edit_valo_hora_produccion.Value := 0;
            End;
            //Por habilidad
            fpNivelDeHabilidad  :  edit_valo_hora_produccion.Value := quer_form_pago.FieldByName('valo_hora_produccion').asFloat;
            //Curva de aprendizaje
            fpCurvaAprendizaje  : Begin
                //Buscar la forma de pago
                if quer_form_pago_aprendizaje.Locate('codi_form_pago_aprendizaje', quer_form_pago.FieldByName('para_1').asString, []) then
                Begin
                    //Pago general vhmp
                    if quer_form_pago_aprendizaje.FieldByName('CONS_VALO_HORA_MINI_GARANTIZADO').asInteger = 1 Then
                          edit_valo_hora_produccion.Value := quer_form_pago_aprendizaje.FieldByName('VALO_HORA_MINI_GARANTIZADO').asFloat
                    //Calculo promedio
                    Else
                        edit_valo_hora_produccion.Value := 999; //OJO--PENDIENTE--CALCULO PROMEDIO DE LA OPERARIA
                End
                Else
                    edit_valo_hora_produccion.Value := 0;
            End;
            //Otros
            Else
                edit_valo_hora_produccion.Value := 0;
        End;

        //Valor mínimo garantizado - Cuando es mixto, es diferente
        {
        ----------------RETIRADO EN RC20.8----------------------
        TODOS LAS FORMAS DE PAGO TIENEN EL MISMO PAGO MÍNIMO
        Case (quer_form_pago.FieldByName('cons_sis_form_pago').asInteger) of
            fpMixtoLinealYDividido : //Mixto
                edit_mini_garantizado.Value := (myTabla_Ventana.FieldByName('minu_contratados').asInteger / 60) * quer_form_pago.FieldByName('valo_hora_mini_garantizado').asFloat;
            fpCurvaAprendizaje : //Curva aprendizaje
                edit_mini_garantizado.Value := 100; //OJO--PENDIENTE
            Else //Todos los demás
                edit_mini_garantizado.Value := (myTabla_Ventana.FieldByName('minu_contratados').asInteger / 60) * quer_form_pago_mixto.FieldByName('valo_hora_mini_garantizado').asFloat;
        End;
        --------------------------------------------------------
        }

        edit_mini_garantizado.Value := quer_form_pago.FieldByName('valo_hora_mini_garantizado').asFloat;
        edit_mini_gara_Turno.Value := (myTabla_Ventana.FieldByName('minu_contratados').AsInteger / 60) * quer_form_pago.FieldByName('valo_hora_mini_garantizado').asFloat;
        //edit_mini_gara_Turno.Value := ((myTabla_Ventana.FieldByName('minu_contratados').asInteger) / 60) * quer_form_pago.FieldByName('valo_hora_mini_garantizado').asFloat;

        //Si la forma de pago es habilidad, mostrar el botón de información
        //--------------PENDIENTE-------------RETIRADO TEMPORALMENTE EN RC20.13 - SE DEBE REACTIVAR
        //boto_info_valo_hora_produccion.Visible := (quer_form_pago.FieldByName('cons_sis_form_pago').asInteger = fpNivelDeHabilidad);
        //Llamar tiquetes de producción
        doLlamarTiquetes(Sender);
        //Deshabilitar el panel para que no cambien los datos
        pane_info.Enabled := False;
        //Mostrar/Ocultar los datos de forma de pago, dependiendo de la parametrización del personal
        pane_form_pago_codigo.Visible := (quer_form_pago.FieldByName('cons_sis_form_pago').asInteger in [fpDividido, fpValorHoraDiferencial, fpCurvaAprendizaje]);
        //Mostrar/Ocultar la curva de aprendizaje
        mens_no_curva.Visible := not (quer_form_pago.FieldByName('cons_form_pago_aprendizaje').asInteger > 0);
        subp_curva.Visible := (quer_form_pago.FieldByName('cons_form_pago_aprendizaje').asInteger > 0);
        //Eficiencia promedio
        With quer_efic_promedio do
        Begin
             Close;
             AbrirDataSet(quer_efic_promedio);
             edit_resu_efic_promedio.Value := FieldByName('EFIC_PROMEDIO').asFloat;
             Close;
        End;
        //CommitDBWork;
  Except
        on e:Exception do
        Begin
                RollBackDBWork;
                EjecutarMensajeError(e.Message);
                //Vaciar el consecutivo
                EditarTablaVentana(Sender);
                myTabla_ventana.FieldByName('cons_cont_nove_diaria').Clear;
        End;
  End;
  if (myTabla_ventana.State in [dsInsert, dsEdit]) Then myTabla_ventana.Post;
  //Configurar los controles visuales
  pane_bono_produccion.Visible := quer_bono_produccion.FieldByName('cons_peri_pago').AsInteger = 1; //-> Mostrar el bono de producción si es diario
  //Rehacer los calculos
  quer_sele_nove_hora_extrasAfterOpen(Nil);
  quer_sele_nove_improductivosAfterOpen(Nil);
  quer_sele_nove_abonadosAfterOpen(Nil);
  doHacerCalculos(sender);
end;
{****************************************************************
Procedimiento   : EditarTablaVentana
Objetivo        : Inicia la edición de la tabla ventana
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.EditarTablaVentana(Sender: TObject);
begin
  inherited;
  with myTabla_ventana do
      if Not(state in [dsInsert, dsEdit]) Then
              Edit;
end;
{****************************************************************
Procedimiento   : doAceptar
Objetivo        : Finaliza la edición e inicia una nueva
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.doAceptar(Sender: TObject);
begin
  inherited;
  if not var_eliminando then
  Begin
      //Actualizar el valor hora de los tiquetes de producción - RC16
      //El tipo de pago 4-Por habilidad no se actualiza ya que conserva el valor de la operación
      If (quer_Form_pago.FieldByName('cons_sis_form_pago').asInteger <> fpNivelDeHabilidad) and
         (quer_Form_pago.FieldByName('cons_sis_form_pago').asInteger <> fpPagoPorOperacion) Then
      Begin
        With quer_actu_valo_tiquetes do
        Begin
            ParamByName('CONS_CONT_NOVE_DIARIA').Value := myTabla_Ventana.FieldByName('CONS_CONT_NOVE_DIARIA').asInteger;
            ParamByName('VALO_HORA_PRODUCCION').Value := edit_valo_hora_produccion.Value;
            ExecSQL;
        End;
      End
      Else
      //Si es por habilidad, liquidar al valor del operario las que no tengan tiempo
      Begin
          With quer_actu_valo_tiqu_cero do
          Begin
            ParamByName('CONS_CONT_NOVE_DIARIA').Value := myTabla_Ventana.FieldByName('CONS_CONT_NOVE_DIARIA').asInteger;
            ParamByName('VALO_HORA_PRODUCCION').Value := edit_valo_hora_produccion.Value;
            ExecSQL;
          End;
      End;
      //Actualizar el registro del pago
      With quer_inse_nove_pago do
      Begin

          ParamByName('cons_cont_nove_diaria').Value := myTabla_Ventana.FieldByName('CONS_CONT_NOVE_DIARIA').asInteger;
          ParamByName('cons_form_pago').Value := quer_form_pago.FieldByName('cons_sis_form_pago').asInteger;
          ParamByName('codi_form_pago').Value := quer_form_pago.FieldByName('para_1').asString;
          ParamByName('valo_hora_produccion').Value := edit_valo_hora_produccion.Value;
          ParamByName('valo_mini_garantizado').Value := edit_mini_garantizado.Value;
          ParamByName('VALO_PAGO_MINIMO').Value := edit_mini_gara_turno.Value;
          ParamByName('VALO_MINI_GARA_ESTANDAR').Value := (edit_resu_tiem_traba_estandar.Value / 60) * edit_mini_garantizado.Value;
          ParamByName('VALO_MINI_GARA_NO_ESTANDAR').Value := (edit_resu_tiem_traba_no_estandar.Value / 60) * edit_mini_garantizado.Value;;
          ParamByName('VALO_GANA_ESTANDAR').Value := edit_gana_produccion.Value;
          ParamByName('VALO_GANA_NO_ESTANDAR').Value := edit_gana_prod_NO_estandar.Value;
          ParamByName('VALO_AJUS_AL_MINI_ESTANDAR').Value := edit_ajus_al_minimo.Value;
          ParamByName('VALO_AJUS_AL_MINI_NO_ESTANDAR').Value := ajus_al_mini_no_estandar.Value;
          ParamByName('VALO_BONO_HORA_EXTRAS').Value := edit_bono_hora_extra.Value;
          ParamByName('VALO_BONO_PRODUCCION').Value := edit_bono_produccion.Value;
          ParamByName('VALO_BONO_CURVA').Value := edit_bono_curva.Value;
          ParamByName('VALO_TOTA_DEVENGADO').Value := edit_tota_devengado.Value;
          ParamByName('MINU_TRAB_ESTANDAR').Value := edit_resu_tiem_traba_estandar.Value;
          ParamByName('MINU_TRAB_NO_ESTANDAR').Value := edit_resu_tiem_traba_no_estandar.Value;
          ParamByName('MINU_TRAB_CURVA').Value := edit_minu_curva.Value;
          ParamByName('MINU_EXTR_ESTANDAR').Value := edit_resu_tiem_extr_estandar.Value;
          ParamByName('MINU_EXTR_NO_ESTANDAR').Value := edit_resu_tiem_extr_no_estandar.Value;
          ParamByName('MINU_AUSE_ESTANDAR').Value := edit_resu_tiem_ause_estandar.Value;
          ParamByName('MINU_AUSE_NO_ESTANDAR').Value := edit_resu_tiem_ause_NO_estandar.Value;
          ParamByName('MINU_IMPR_ESTANDAR').Value := edit_resu_impr_estandar.Value;
          ParamByName('MINU_IMPR_NO_ESTANDAR').Value := edit_resu_impr_NO_estandar.Value;
          ParamByName('MINU_PROD_ESTANDAR').Value := edit_gana_prod_minutos.Value;
          ParamByName('MINU_PROD_CORTE').Value := edit_resu_tiem_tiqu_corte.Value;
          ParamByName('MINU_PROD_FABRICACION').Value := edit_resu_tiem_tiqu_fabricacion.Value;
          ParamByName('MINU_PROD_NO_ESTANDAR').Value := edit_prod_no_estandar.Value;
          ParamByName('MINU_PROD_CURVA').Value := edit_resu_tiem_curva.Value;
          if chec_curv_estandar.Checked Then
              ParamByName('CURV_ESTANDAR').Value := 1
          Else
              ParamByName('CURV_ESTANDAR').Value := -1;
          ExecSQL;
      End;
  End;
  pane_info.enabled := True;
  if _fMDI.data_base_pcp.InTransaction Then
      CommitDBWork;
  myTabla_ventana.Close;
  //Cerrar las consultas
  quer_sele_nove_improductivos.Close;
  pane_page.visible := False;
  var_biho_seleccionado := False;
  darFoco(edit_codi_personal);
  //edit_codi_personal.Clear; -> Deshabilitado en RC20.13 para que no borre el código anterior
  edit_Codi_personal.SelectAll;
end;

procedure Tfn1_cont_nove_diar_costura.acti_ventanaUpdate(
  Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  acti_nuevo.enabled := (pane_page.visible) and
        (page.activePageIndex in [idExtras, idImproductivos, idNoEstandar]);
  acti_modificar.enabled := (pane_page.visible) and
        (page.activePageIndex in [idExtras, idImproductivos, idNoEstandar]);
  acti_eliminar.enabled := (pane_page.visible) and
        ((page.activePageIndex in [idExtras, idImproductivos, idNoEstandar]) or
        (
        ((page.activePageIndex = idCorte) and {(subp_fabricacion.ActivePageIndex = 0) and}
         (grid_tiqu_corte.RowCount > 1))) or
        (
        ((page.activePageIndex = idFabricacion) and (subp_fabricacion.ActivePageIndex = 0))) or
        (
        ((page.activePageIndex = idCurva) and (subp_curva.ActivePageIndex = 0)))
        );
  acti_sele_todos.Enabled := (pane_page.visible) and
        (page.activePageIndex in [idCorte, idFabricacion, idCurva]);
end;
{****************************************************************
Procedimiento   : acti_nuevoExecute
Objetivo        : Ejecutar la acción de Nuevo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.acti_nuevoExecute(Sender: TObject);
begin
  inherited;
  Case page.ActivePageIndex of
        //hora_extras
        idExtras : Begin
                 Application.CreateForm(Tfn1_cont_nove_hora_extras, fn1_cont_nove_hora_extras);
                 fn1_cont_nove_hora_extras.doEjecutarVentana(myTabla_ventana.FieldByName('cons_cont_nove_diaria').AsInteger, quer_sele_nove_hora_extras, (Sender = acti_nuevo),
                        quer_hora_extras, quer_prod_ordenes);
        End;
        //Paros improductivos
        idImproductivos : Begin
                 Application.CreateForm(Tfn1_cont_nove_improductivos, fn1_cont_nove_improductivos);
                 fn1_cont_nove_improductivos.doEjecutarVentana(myTabla_ventana.FieldByName('cons_cont_nove_diaria').AsInteger, quer_sele_nove_improductivos, (Sender = acti_nuevo),
                        quer_improductivos, quer_sub_improductivos, quer_prod_ordenes, quer_recursos);
        End;
        //Abonados
        idNoEstandar : Begin
                 Application.CreateForm(Tfn1_cont_nove_abonados, fn1_cont_nove_abonados);
                 fn1_cont_nove_abonados.doEjecutarVentana(myTabla_ventana.FieldByName('cons_cont_nove_diaria').AsInteger, quer_sele_nove_abonados, (Sender = acti_nuevo),
                        quer_abonados, quer_prod_ordenes);
        End;
  End;
  padr_Acti_actualizar.Execute;
  doHacerCalculos(sender);
end;
{****************************************************************
Procedimiento   : minu_improductivos
Objetivo        : Controlar pulsaciones en los grids de paros,
                  extras y abonados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.grid_improductivosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Abrir la ventana de modificación 
  if key = vk_return then acti_modificar.Execute;
end;

procedure Tfn1_cont_nove_diar_costura.acti_eliminarExecute(
  Sender: TObject);
var
        var_fila        : Integer;
begin
  inherited;
  if confirmar(cosDeseaEliminar)=mrNo then Exit;
  Case page.ActivePageIndex of
        //hora_extras
        idExtras: Begin
                quer_dele_nove_hora_extras.ExecSQL;
                RefreshQuery(quer_sele_nove_hora_extras);
        End;
        //Paros improductivos
        idImproductivos: Begin
                quer_dele_nove_improductivos.ExecSQL;
                RefreshQuery(quer_sele_nove_improductivos);
        End;
        //Abonados
        idNoEstandar: Begin
             //Minutos
                quer_dele_nove_abonados.ExecSQL;
                RefreshQuery(quer_sele_nove_abonados);
        End;
        //Tiqutes corte
        idCorte:Begin
           With grid_tiqu_corte, quer_elim_tiqu_corte do
               for var_fila := 1 to RowCount - 1 do
                   if RowSelect[var_fila] Then
                   Begin
                        ParamByName('codi_barras').Value := Cells[ColumnByName['CODI_BARRAS'].Index, var_fila];
                        ExecSQL;
                   End;
           doLlamarTiquetes(Sender);
        end;
        //Tiqutes fabricacion
        idFabricacion:Begin
           With grid_tiqu_fabricacion, quer_elim_tiqu_fabricacion do
               for var_fila := 1 to Count do
                   if Items[var_fila - 1].Selected Then
                   Begin
                        ParamByName('cons_cont_nove_tiqu_fabricacion').Value := Items[var_fila - 1].Values[ColumnByFieldName('CONS_CONT_NOVE_TIQU_FABRICACION').Index];
                        ExecSQL;
                   End;
           doLlamarTiquetes(Sender);
        end;
        //Curva de aprendizaje
        idCurva : Begin
           With grid_tiqu_curva, quer_elim_tiqu_fabricacion do
               for var_fila := 1 to Count do
                   if Items[var_fila - 1].Selected Then
                   Begin
                        ParamByName('cons_cont_nove_tiqu_fabricacion').Value := Items[var_fila - 1].Values[ColumnByFieldName('CONS_CONT_NOVE_TIQU_FABRICACION').Index];
                        ExecSQL;
                   End;
           doLlamarTiquetes(Sender);
        End;
  End;
  padr_Acti_actualizar.Execute;
  doHacerCalculos(sender);
end;
{****************************************************************
Procedimiento   : doCambiarPagina
Objetivo        : Pasar a la página seleccionada
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.doCambiarPagina(Sender: TObject);
begin
  inherited;
  If Not (Sender is TAction) then Exit;
  //Pasar a la pagina activa
  page.ActivePageIndex := (Sender as TAction).Tag;
end;
{****************************************************************
Procedimiento   : pageChange
Objetivo        : Actualizar los controles al cambiar la pagina activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.pageChange(Sender: TObject);
begin
  inherited;
  //Dar el foco al grid que le corresponde
  Case page.ActivePageIndex of
        idImproductivos: darFoco(Grid_improductivos);
        idNoEstandar: Begin
            darFoco(Grid_abonados);
        End;
        idExtras: darFoco(Grid_extras);
        idCorte: Begin
                grid_erro_fabricacion.Parent := page_erro_corte;
                subp_corte.ActivePage := page_tiqu_corte;
                darFoco(edit_codi_barr_corte_completo);
        End;
        idFabricacion: Begin
                subp_fabricacion.ActivePage := page_tiqu_fabricacion;

                darFoco(edit_codi_barr_fabri_completo);
                grid_erro_fabricacion.Parent := page_erro_fabricacion;
        End;
        idCurva : Begin
                darFoco(edit_codi_barr_curva); 
                grid_erro_fabricacion.Parent := page_erro_Curva;
        End;
  End;
end;
{****************************************************************
Procedimiento   : data_erro_fabricacionStateChange
Objetivo        : Mostrar el mensaje de fabricacion
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.data_erro_fabricacionStateChange(
  Sender: TObject);
begin
  inherited;
  //Fabricacion
  page_erro_fabricacion.TabVisible := (tabl_erro_fabricacion.Active) and (tabl_erro_fabricacion.RecordCount > 0);
  subp_fabricacion.HideTabs := Not page_erro_fabricacion.TabVisible;
  //Corte
  page_erro_corte.TabVisible := (tabl_erro_fabricacion.Active) and (tabl_erro_fabricacion.RecordCount > 0);
  subp_corte.HideTabs := Not page_erro_fabricacion.TabVisible;
  //Curva
  page_erro_curva.TabVisible := (tabl_erro_fabricacion.Active) and (tabl_erro_fabricacion.RecordCount > 0);
  subp_curva.HideTabs := Not page_erro_fabricacion.TabVisible;
end;
{****************************************************************
Procedimiento   : edit_codi_barr_fabri_completoKeyDown
Objetivo        : Generar la lectura de un tiquete de fabricación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.edit_codi_barr_fabri_completoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
Var
        var_colu        : Integer;
        aDataSet        : TQuery;
        var_unidades    : Integer;
        var_Tabl_Destino        : TKBMMemTable;
begin
  inherited;
  If key = vk_return then
  Begin
        Try
             //Si está vacío, salir
             if (page.activePageIndex = idFabricacion) and (edit_codi_barr_fabri_completo.Text = '') Then Exit;
             if (page.activePageIndex = idCurva) and (edit_codi_barr_curva.Text = '') Then Exit;
             //Asignar el texto del código de barras
             if (page.activePageIndex = idCurva) then edit_codi_barr_fabri_completo.Text :=  edit_codi_barr_curva.Text;
             if (page.activePageIndex = idFabricacion) then edit_codi_barr_curva.Text :=  edit_codi_barr_fabri_completo.Text;
             //Si está en abonados y no hay código seleccionado, salir
             if (page.ActivePage = page_Abonados) then
             Begin
                //--------------PENDIENTE-------------
                {if comb_tiqu_abonados.EstaVacio then
                Begin
                     //Mostrarle al usuario que hubo un error
                     doControlError(pane_tiqu_abonados);
                     EjecutarMensajeBalon(comb_tiqu_abonados, cosDatosIncompletos, cosSeleccioneCodigoAbonado, ikInformation, True, False);
                     darFoco(comb_tiqu_abonados);
                     Exit;
                End;}
             End;
             //Verificar si es un tiquete de fabricacion
             if (Pos('9', edit_codi_barr_fabri_completo.Text) = 1) Then
             Begin
                  page.activePage := page_CORTE;
                  edit_codi_barr_corte_completo.Text := edit_codi_barr_fabri_completo.Text;
                  edit_codi_barr_corte_completoKeyDown(Sender, key, Shift);
                  Exit;
             End;

             //Identificar si es con o sin paquete partido
             if (chec_partir.Checked) and (page.ActivePageIndex = idFabricacion) then
                aDataSet := quer_inse_tiqu_fabr_partidos
             Else
                aDataSet := quer_inse_tiqu_fabricacion;
             With aDataSet do
             Begin
                 if Active then Close;
                 paramByName('codi_barras').Value := edit_codi_barr_fabri_completo.Text;
                 paramByName('cons_cont_nove_diaria').Value := myTabla_ventana.FieldByName('cons_cont_nove_diaria').AsInteger;
                 //--------------PENDIENTE------------- abonados
                 {If (page.ActivePage = page_abonados) then
                    ParamByName('cons_abonado').Value := comb_tiqu_abonados.KeyValue
                 Else}
                    //ParamByName('cons_cont_nove_abonado').Clear;
                 //Si está chec partir paquetes, pedir unidades
                 if chec_partir.Checked then
                 Begin
                        var_unidades := pcpInputForm(Format(cosAdicionando, ['']), cosEscribaUnidadesPaquete, tvInteger, 0);
                        if (var_unidades <= 0) Then Exit;
                        ParamByName('cant_unidades').Value := var_unidades;
                 End;
                 open;
                 //Verificar si hay error
                 if FieldByName('hubo_error').AsInteger = 1 then
                 Begin
                     Case page.ActivePageIndex of
                        idFabricacion : doControlError(pane_tiqu_fabricacion);
                        idCurva : doControlError(pane_tiqu_curva);
                     End;
                     //Insertarlo en la tabla de errores
                     tabl_erro_fabricacion.Insert;
                     tabl_erro_fabricacion.FieldByName('codi_barras').Value := FieldByName('codi_barras').asString;
                     tabl_erro_fabricacion.FieldByName('nume_prod_orden').Value := FieldByName('nume_prod_orden').asString;
                     tabl_erro_fabricacion.FieldByName('nume_paquete').Value := FieldByName('nume_paquete').asInteger;
                     tabl_erro_fabricacion.FieldByName('nume_lote').Value := FieldByName('nume_lote').asInteger;
                     tabl_erro_fabricacion.FieldByName('secu_operacion').Value := FieldByName('secu_operacion').asInteger;
                     tabl_erro_fabricacion.FieldByName('nomb_operacion').Value := FieldByName('nomb_operacion').asString;
                     tabl_erro_fabricacion.FieldByName('mens_error').Value := FieldByName('mens_error').asString;
                     tabl_erro_fabricacion.Post;
                 End
                 Else
                 Begin
                      //Evaluar en qué tabla se guardarán los tiquetes
                      if (FieldByName('es_Curva').asInteger = 1) then
                      Begin
                         var_Tabl_Destino := tabl_tiqu_curva;
                         if Self.Active Then //--> para que no lo haga cuando está la ventana de generación de tiquetes
                             page.ActivePageIndex := idCurva;
                      End
                      Else
                      Begin
                         var_Tabl_Destino := tabl_tiqu_fabricacion;
                         page.ActivePageIndex := idFabricacion;
                      End;
                      //Insertar el tiquete
                      var_Tabl_Destino.Insert;
                      var_Tabl_Destino.FieldByName('codi_barras').Value := FieldByName('codi_barras').asString;
                      var_Tabl_Destino.FieldByName('cons_cont_nove_tiqu_fabricacion').Value := FieldByName('cons_cont_nove_tiqu_fabricacion').asInteger;
                      var_Tabl_Destino.FieldByName('NOMB_PROD_PAQU_TIPO').Value := FieldByName('NOMB_PROD_PAQU_TIPO').asString;
                      var_Tabl_Destino.FieldByName('NUME_PROD_ORDEN').Value := FieldByName('NUME_PROD_ORDEN').asString;
                      var_Tabl_Destino.FieldByName('NUME_LOTE').Value := FieldByName('NUME_LOTE').asInteger;
                      var_Tabl_Destino.FieldByName('NUME_PAQUETE').Value := FieldByName('NUME_PAQUETE').asInteger;
                      var_Tabl_Destino.FieldByName('SECU_OPERACION').Value := FieldByName('SECU_OPERACION').asInteger;
                      var_Tabl_Destino.FieldByName('NOMB_OPERACION').Value := FieldByName('NOMB_OPERACION').asString;
                      var_Tabl_Destino.FieldByName('CANT_UNIDADES').Value := FieldByName('CANT_UNIDADES').asInteger;
                      var_Tabl_Destino.FieldByName('TIEM_PAQUETE').Value := FieldByName('TIEM_PAQUETE').asFloat;
                      //Valor hora producción- RC16
                      //Si es 4 - Habilidad o es un abonado, dejar el tiempo de la consulta
                      if (quer_form_pago.FieldByName('cons_sis_form_pago').AsInteger = fpNivelDeHabilidad) or
                         (page.ActivePage = page_abonados)
                           Then
                      Begin
                          //Si es mayor que cero, aplica
                          if (FieldByName('VALO_HORA_PRODUCCION').AsFloat > 0) then
                             var_tabl_destino.FieldByName('VALO_HORA_PRODUCCION').Value := FieldByName('VALO_HORA_PRODUCCION').AsFloat
                          //Si es cero, se paga al valor producción dado
                          Else
                              var_tabl_destino.FieldByName('VALO_HORA_PRODUCCION').Value := edit_valo_hora_produccion.Value;
                      End
                      Else
                          var_tabl_destino.FieldByName('VALO_HORA_PRODUCCION').Value := edit_valo_hora_produccion.Value;
                      //Tipo de abonado
                      //--------------PENDIENTE-------------abonados
                      {if (page.ActivePage = page_abonados) Then
                          var_tabl_destino.FieldByName('CONS_ABONADO').Value := comb_tiqu_abonados.KeyValue;}
                      //Guardar
                      var_tabl_destino.Post;
                      doHacerCalculos(Sender);
                 End;
                 Close;
             End;
      Except
          On e:Exception do
          Begin
                EjecutarMensajeError(e.Message);
                if (var_tabl_destino.State in [dsInsert, dsEdit]) Then var_tabl_destino.Cancel;
          End;
      end;
      //Cerrar la consulta
      if (aDataSet <> Nil) and  (aDataSet.active) then aDataSet.Close;
      //Dar el foco
      Case Page.ActivePageIndex of
            idFabricacion : Begin
                darFoco(edit_codi_barr_fabri_completo);
                if edit_codi_barr_fabri_completo.Focused then
                   edit_codi_barr_fabri_completo.SelectAll;
            End;
            idCurva     : Begin
                darFoco(edit_codi_barr_curva);
                if edit_codi_barr_curva.Focused then
                   edit_codi_barr_curva.SelectAll;
            End;
      End;
      //Anular el enter
      key := Word(#0);
  End;
end;
{****************************************************************
Procedimiento   : padr_accionesUpdate
Objetivo        : Actualizar las acciones del padre
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.padr_accionesUpdate(
  Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  padr_acti_aceptar.Enabled := not (edit_codi_personal.Enabled);
  padr_acti_eliminar.Enabled := not (edit_codi_personal.Enabled);
end;
{****************************************************************
Procedimiento   : padr_acti_eliminarExecute
Objetivo        : Eliminar la lectura actual
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.padr_acti_eliminarExecute(
  Sender: TObject);
begin
  //inherited;
  if Confirmar(Format(cosDeseaEliminarLecturaActual, [myTabla_ventana.FieldByName('nomb_completo').AsString]))=mrNo then Exit;
  var_eliminando := True;
  quer_elim_lectura.ExecSQL;
  doAceptar(Sender);
  var_eliminando := False;
end;


{****************************************************************
Procedimiento   : quer_sele_nove_improductivosAfterOpen
Objetivo        : Calcular los totales de improductivos para la
                  lectura activa
Realizado por   : Tecnologia
Fecha           : 20-Sep-2005
Argumentos      : DataSet: TDataSet
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.quer_sele_nove_improductivosAfterOpen(
  DataSet: TDataSet);
Var
   Total : Integer;
   TotalAu : Integer;
   TotalEstandar        : Float;
   TotalNoEstandar      : Float;
   TotalAUEstandar      : Float;
   TotalAUNOEstandar    : Float;
   Minutos      : Integer;
begin
  inherited;
  Total := 0;
  TotalAU := 0;
  TotalEstandar := 0;
  TotalNoEstandar := 0;
  TotalAUEstandar := 0;
  TotalAUNOEstandar := 0;
  //Recorrerla y calcular el total
  With quer_sele_nove_improductivos Do
  Begin
      First;
      While not eof do
      Begin
          minutos := FieldByName('minu_improductivos').asInteger;
          if FieldByName('CODI_IMPR_FAMILIA').AsString = 'AU'  Then
               TotalAU := TotalAU + minutos
          Else
               Total := Total + minutos;
          //Evaluar si es estándar o NO estándar (RC20.19)
          If (FieldByName('ESTANDAR').AsInteger = 1) Then
          Begin
               if (FieldByName('CODI_IMPR_FAMILIA').AsString = 'AU') Then
                   TotalAUEstandar := TotalAUEstandar + minutos
               Else
                    TotalEstandar := TotalEstandar + minutos;
          End
          Else
          Begin
               if (FieldByName('CODI_IMPR_FAMILIA').AsString = 'AU') Then
                   TotalAUNOEstandar := TotalAUNOEstandar + minutos
               Else
                   TotalNOEstandar := TotalNOEstandar + minutos;
          End;
          Next;
      End;
      //Reposicionar el cursor en la tabla (First)
      First;
      //Escribir los valores en controles
      edit_resu_tiem_ausentismo.Value := TotalAU;
      edit_resu_tiem_improductivo.Value := Total;
      edit_resu_impr_estandar.Value := TotalEstandar;
      edit_resu_impr_NO_estandar.Value := TotalNoEstandar;
      edit_resu_tiem_ause_estandar.Value := TotalAUEstandar;
      edit_resu_tiem_ause_no_estandar.Value := TotalAUNoEstandar;
  End;
  doHacerCalculos(Self);
end;


{****************************************************************
Procedimiento   : quer_sele_nove_abonadosAfterOpen
Objetivo        : Calcular los tiempos abonados para la lectura
                  activa
Realizado por   : Tecnologia
Fecha           : 20-Sep-2005
Argumentos      : DataSet: TDataSet
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.quer_sele_nove_abonadosAfterOpen(
  DataSet: TDataSet);
Var
        Total : Real;
        Tota_trabajado  : Real;
        tota_ganado     : Real;
        tota_garantizado        : Real;
begin
  inherited;
  Total := 0;
  Tota_trabajado := 0;
  Tota_Ganado := 0;
  Tota_Garantizado := 0;
  //Recorrerla y calcular el total
  With quer_sele_nove_abonados Do
  Begin
      First;
      While not eof do
      Begin
          Total := Total + FieldByName('minu_abonados').asFloat;
          Tota_trabajado := Tota_trabajado + FieldByName('minu_trabajados').asFloat;
          tota_ganado := Tota_Ganado + FieldByName('valo_total').asFloat;
          tota_garantizado := Tota_Garantizado + FieldByName('valo_garantizado').asFloat;
          Next;
      End;
      First;
      edit_resu_tiem_abonado.Value := Total;
      edit_resu_tiem_traba_no_estandar.Value := Tota_trabajado;
      edit_gana_no_estandar.Value := tota_ganado;
      edit_gana_prod_NO_estandar.Value := tota_ganado;
      edit_mini_gara_no_Estandar.Value := tota_Garantizado;

  End;
  doHacerCalculos(Self);
End;
{****************************************************************
Procedimiento   : quer_sele_nove_hora_extrasAfterOpen
Objetivo        : Calcular el tiempo extra para la lectura activa
Realizado por   : Tecnologia
Fecha           : 20-Sep-2005
Argumentos      : DataSet: TDataSet
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.quer_sele_nove_hora_extrasAfterOpen(
  DataSet: TDataSet);
Var
        Total : Real;
        TotalEstandar   : Real;
        TotalNoEstandar : Real;
begin
  inherited;
  if ExtrasPorCodigos Then
  Begin
      Total := 0;
      TotalEstandar := 0;
      TotalNoEstandar := 0;
      //Recorrerla y calcular el total
      With quer_sele_nove_hora_extras Do
      Begin
          First;
          While not eof do
          Begin
              Total := Total + FieldByName('minu_extras').AsInteger;
              If (FieldByName('estandar').asInteger = 1) Then
                  TotalEstandar := TotalEstandar + FieldByName('minu_extras').asInteger
              Else
                  TotalNoEstandar := TotalNoEstandar + FieldByName('minu_extras').asInteger;
              Next;
          End;
          First;
      End;
  End
  Else
  Begin
        Total := myTabla_Ventana.FieldByName('minu_contratados').asFloat - var_minu_turno;
        if Total < 0 then Total := 0;
  End;
  edit_resu_tiem_extra.Value := Total;
  edit_resu_tiem_extr_estandar.Value := TotalEstandar;
  edit_resu_tiem_extr_NO_estandar.Value := TotalNOEstandar;
  doHacerCalculos(Self);
end;
{****************************************************************
Procedimiento   : doHacerCalculos
Objetivo        : Calcula los indicadores de la lectura
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.doHacerCalculos(Sender: TObject);
Var
    var_unidades : integer;
    var_i : integer;
    var_hora_obtenidas  : Real;
    var_suma_valo_tiquetes   : Real;
    var_tiem_obte_corte  : Real;
    var_tiem_obte_fabricacion : Real;
    var_tiem_obte_curva  : Real;
    var_tiem_obte_extra  : Real;
    var_porc_bono_extra     : Real;
    var_valo_hora_extras    : Real;
    var_valo_indi_produccion        : Real;
    var_tiem_obte_estandar  : Real;
    var_tiem_obte_no_estandar   : Real;
begin
  inherited;
  if not pane_page.visible then Exit;
  //-----INDICADORES DE PRODUCCION ---------------------------------------------
  edit_resu_nume_tiquetes.Value := grid_tiqu_corte.RowCount - 1 + tabl_tiqu_fabricacion.RecordCount + tabl_Tiqu_curva.RecordCount;
  if edit_resu_nume_tiquetes.AsInteger < 0 Then edit_resu_nume_tiquetes.Value := 0;
  //::TIEMPOS ESTÁNDAR Y UNIDADES
  var_tiem_obte_corte := 0;
  var_tiem_obte_curva := 0;
  var_tiem_obte_fabricacion := 0;
  var_unidades := 0;
  var_suma_valo_tiquetes := 0;
  //Sumar tiempo corte
  With grid_tiqu_corte do
  Begin
      For var_i := 1 to rowCount-1 do
      Begin
           Try
              var_tiem_obte_corte := var_tiem_obte_corte + strtofloat(cells[ColumnByName['TIEM_PAQUETE'].Index, var_i]);
           except
           end;
      End;
  End;
  //Tiempo de fabricación
  With tabl_tiqu_fabr_suma do
  Begin
      First;
      While not eof do
      Begin
          var_tiem_obte_fabricacion := var_tiem_obte_fabricacion + FieldByName('TIEM_PAQUETE').AsFloat;
          var_unidades := var_unidades + FieldByName('CANT_UNIDADES').asInteger;
          var_suma_valo_tiquetes := var_suma_valo_tiquetes + (((FieldByName('TIEM_PAQUETE').AsFloat) / 60) *
                                   FieldByName('VALO_HORA_PRODUCCION').AsFloat);
          Next;
      End;
  End;
  //Tiempo en curva
  With tabl_tiqu_curv_suma do
  Begin
      First;
      While not eof do
      Begin
          var_tiem_obte_curva := var_tiem_obte_curva + FieldByName('TIEM_PAQUETE').AsFloat;
          var_unidades := var_unidades + FieldByName('CANT_UNIDADES').asInteger;
          var_suma_valo_tiquetes := var_suma_valo_tiquetes + (((FieldByName('TIEM_PAQUETE').AsFloat) / 60) *
                                   FieldByName('VALO_HORA_PRODUCCION').AsFloat);
          Next;
      End;
  End;
  edit_resu_cantidad.Value := var_unidades;
  edit_resu_tiem_tiqu_fabricacion.Value := var_tiem_obte_fabricacion;
  edit_resu_tiem_tiqu_corte.Value := var_tiem_obte_corte;
  edit_resu_Tiem_curva.Value := var_tiem_obte_curva;

  var_tiem_obte_estandar := var_tiem_obte_corte + var_tiem_obte_fabricacion;
  var_tiem_obte_no_estandar := edit_resu_tiem_abonado.Value;
  //Si la curva es en estándar, sumar el tiempo al estándar (RC20.19)
  if chec_curv_estandar.Checked Then
     var_tiem_obte_estandar := var_tiem_obte_estandar + var_tiem_obte_curva
  Else
     var_tiem_obte_no_estandar := var_tiem_obte_no_estandar + var_tiem_obte_Curva;

  edit_resu_tiem_estandar.Value := var_tiem_obte_Estandar;
  edit_resu_tiem_no_Estandar.Value := var_tiem_obte_no_estandar;

  //Tiempo trabajado en estándar (RC20.13)
  If ExtrasPorCodigos Then
    edit_resu_tiem_traba_estandar.Value := myTabla_ventana.FieldbyName('minu_contratados').AsInteger -  edit_minu_curva.Value - edit_resu_tiem_traba_no_estandar.Value
  Else
    edit_resu_tiem_traba_estandar.Value := myTabla_ventana.FieldbyName('minu_contratados').AsInteger -  {edit_resu_tiem_extra.Value -???} edit_minu_curva.Value - edit_resu_tiem_traba_no_estandar.Value;



  //-------INDICADORES DE PRODUCCION --------
  //TOTALES
  func_indi1.Parse;
  edit_resu_amc.Value := func_indi1.ParseValor;
  func_indi2.Parse;
  edit_resu_amp.Value := func_indi2.ParseValor;
  func_indi3.Parse;
  edit_resu_efic_obtenida.Value := func_indi3.ParseValor;
  //-------------------------------------------------------Calculos de pago de producción - RC16-----------------------------
  var_hora_obtenidas  := var_tiem_obte_estandar / 60;
  edit_gana_prod_minutos.Value := var_tiem_obte_estandar;
  edit_prod_no_estandar.Value := var_tiem_obte_no_estandar;

  //::Evaluar el método de pago y liquidar lo ganado por producción
  If (quer_form_pago.FieldByName('cons_sis_form_pago').asInteger in [fpValorHoraProduccion, fpDividido]) Then
         edit_gana_produccion.Value := var_hora_obtenidas * edit_valo_hora_produccion.Value
  Else
  //5-Pago diferencial
  If (quer_form_pago.FieldByName('cons_sis_form_pago').asInteger = fpValorHoraDiferencial) Then
  Begin
          With quer_form_pago_diferencial do
          Begin
              If Not active Then AbrirDataSet(quer_form_pago_diferencial);
              Filter := 'rang_inicial <= '+ FloatToStr(edit_resu_amc.Value) + ' and ' +
                        'rang_final >= '+ FloatToStr(edit_resu_amc.Value);
              //Si el valor de la hora producción cambió, recalcular el valor de los tiquetes
              if (edit_valo_hora_produccion.Value <> FieldByName('valo_hora_produccion').asFloat) Then
              Begin
                      tabl_tiqu_fabricacion.First;
                      While not tabl_tiqu_fabricacion.Eof do
                      Begin
                          tabl_tiqu_fabricacion.Edit;
                          tabl_tiqu_fabricacion.FieldByName('valo_hora_produccion').Value := FieldByName('valo_hora_produccion').asFloat;
                          tabl_tiqu_fabricacion.Post;
                          tabl_tiqu_fabricacion.Next;
                      End;
                      edit_valo_hora_produccion.Value := FieldByName('valo_hora_produccion').asFloat;
              End;
              edit_gana_produccion.Value := var_hora_obtenidas * edit_valo_hora_produccion.Value;
          End;
  End
  Else
  //6-Mixto (lineal y dividido)
  If (quer_form_pago.FieldByName('cons_sis_form_pago').asInteger = fpMixtoLinealYDividido) Then
  Begin
          With quer_form_pago_mixto do
          Begin
              //Calcular el valor hora producción
              edit_valo_hora_produccion.Value := quer_form_pago_mixto.FieldByName('valo_hora_prod_1').asFloat;
              //Si el valor de la hora producción cambió, recalcular el valor de los tiquetes
              tabl_tiqu_fabricacion.First;
              While not tabl_tiqu_fabricacion.Eof do
              Begin
                  tabl_tiqu_fabricacion.Edit;
                  tabl_tiqu_fabricacion.FieldByName('valo_hora_produccion').Value := func_valo_hora_prod_mixto;
                  tabl_tiqu_fabricacion.Post;
                  tabl_tiqu_fabricacion.Next;
              End;
              edit_gana_produccion.Value := func_valo_hora_prod_mixto;
          End;
  End
  Else
      //Las demás formas de pago son por la suma de los valores de los tiquetes
      edit_gana_produccion.Value := var_suma_valo_tiquetes;




  //Ajuste al minimo
  If (quer_form_pago.FieldByName('cons_sis_form_pago').asInteger <> fpMixtoLinealYDividido) Then
    if (edit_mini_gara_turno.Value > edit_gana_produccion.Value) then
        edit_ajus_al_minimo.Value := (((myTabla_Ventana.FieldByName('minu_contratados').asInteger/60) - (edit_resu_tiem_traba_no_estandar.Value / 60)) *                    edit_mini_garantizado.Value) - edit_gana_produccion.Value    Else
        edit_ajus_al_minimo.Value := 0;
  If edit_ajus_al_minimo.Value < 0 Then edit_ajus_al_minimo.Value := 0;

  //Pago en NO ESTANDAR
  If (edit_gana_prod_NO_estandar.Value < edit_mini_gara_no_Estandar.Value) then
      ajus_al_mini_no_estandar.Value := edit_mini_gara_no_Estandar.Value - edit_gana_prod_NO_estandar.Value
  Else
      ajus_al_mini_no_estandar.Value := 0;

  //Pago total
  edit_tota_devengado.Value := edit_gana_produccion.Value + edit_ajus_al_minimo.Value +
                               edit_gana_prod_NO_estandar.Value + ajus_al_mini_no_estandar.Value;
  //Ajustar el pago total para que no sea inferior al minimo
  if (edit_tota_devengado.Value < edit_mini_gara_turno.Value) Then
      edit_tota_devengado.Value := edit_mini_gara_turno.Value;
  //Indicadores del resumen de producción obtenida (algunos datos ya están calculados)
  prod_obte_estandar.Value := edit_resu_tiem_tiqu_fabricacion.Value;
  prod_trab_estandar.Value := edit_resu_tiem_traba_estandar.Value + edit_resu_tiem_extr_estandar.Value;//RC20.21 Se suman las extra
  Try
      prod_efic_estandar.Value := (prod_obte_estandar.Value / (prod_trab_estandar.Value)) * 100;
  Except
      prod_efic_estandar.Value := 0;
  End;
  prod_obte_no_estandar.Value := edit_resu_tiem_no_Estandar.Value;
  prod_trab_no_estandar.Value := edit_resu_tiem_traba_no_estandar.Value + edit_resu_tiem_extr_no_estandar.Value;
  Try
      prod_efic_NO_estandar.Value := (edit_resu_tiem_no_Estandar.Value / (edit_resu_tiem_traba_no_estandar.Value)) * 100;
  Except
      prod_efic_NO_estandar.Value := 0;
  End;
  prod_obte_curva.Value := edit_resu_tiem_curva.Value;
  prod_trab_curva.Value := edit_minu_curva.Value;
  Try
      prod_efic_curva.Value := (prod_obte_curva.Value / prod_trab_curva.Value) * 100;
  Except
      prod_efic_curva.Value := 0;
  End;
  prod_tota_obtenidos.Value := prod_obte_estandar.Value + prod_obte_no_estandar.Value + prod_obte_curva.Value;
  prod_tota_trabajados.Value := prod_trab_estandar.Value + prod_trab_no_estandar.Value + prod_trab_curva.Value;
  Try
      prod_efic_media.Value := (prod_tota_obtenidos.Value / prod_tota_trabajados.Value) * 100;
  Except
      prod_efic_media.Value := 0;
  End;
end;
{****************************************************************
Procedimiento   : doLlamarTiquetes
Objetivo        : Carga los tiquetes leidos para el operario en la
                  fecha seleccionada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.doLlamarTiquetes(Sender: TObject);
var
        var_colu        : Integer;
begin
   inherited;
   //Llamar los tiquetes leidos de corte
   limpiarGrid(grid_tiqu_corte);
   grid_tiqu_corte.RowCount := 1;
   With quer_sele_nove_tiqu_corte do
   Begin
       if active then Close;
       open;
        With grid_tiqu_corte do
            While not Eof do
            Begin
                RowCount := RowCount + 1;
                For var_colu := 1 to ColumnByName['NOMB_MATE_REFERENCIA'].Index + 1 do
                  Cells[var_colu - 1, RowCount - 1] := FieldByName(Columns[var_colu - 1].Name).asString;

                Cells[ColumnByName['CANT_PAQUETES'].Index, RowCount - 1] := FieldByName('CANT_UNIDADES').AsString;
                Cells[ColumnByName['NOMB_CORT_UNID_MEDIDA'].Index, RowCount - 1] := FieldByName('NOMB_CORT_UNID_MEDIDA').AsSTring;
                Cells[ColumnByName['TIEM_PAQUETE'].Index, RowCount - 1] := FormatFloat('0.000', FieldByName('TIEM_OPERACION').AsFloat);
                //Valor del tiquete - RC16
                Cells[ColumnByName['VALO_HORA_PRODUCCION'].Index, RowCount - 1] := FormatFloat('0.000', 0);
                //Valor del tiquete
                Cells[ColumnByName['VALO_TIQUETE'].Index, RowCount - 1] := FormatFloat('0.00', 0);
                Cells[ColumnByName['CONS_TIQU_CONTROL'].Index, RowCount - 1] := FormatFloat('0', 0);
                Row := RowCount - 1;
                Next;
            End;
        Close;
   End;
   //Llamar los tiquetes de fabricación
   tabl_tiqu_fabricacion.Close;
   tabl_tiqu_fabricacion.Open;
   tabl_tiqu_fabricacion.LoadFromDataSet(quer_sele_nove_tiqu_fabricacion, [mtcpoAppend]);
   //Llamar los tiquetes en curva
   tabl_tiqu_curva.Close;
   tabl_tiqu_curva.Open;
   tabl_tiqu_curva.LoadFromDataSet(quer_sele_nove_tiqu_curva, [mtcpoAppend]);


   doHacerCalculos(Sender);
end;
{****************************************************************
Procedimiento   : doCalcularMinutosContratados
Objetivo        : Calcula los minutos contratados de la novedad
                  de acuerdo al turno o al bihorario  
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.doCalcularMinutosContratados(
  Sender: TObject);
begin
  inherited;
  if not myTabla_Ventana.Active then Exit;
  //Buscar los minutos del turno
  With quer_minu_disponibles Do
  Begin
      Close;
      ParamByName('cons_turno').Value := myTabla_ventana.FieldByName('cons_turno').asInteger;
      ParamByName('dia_semana').Value := DayOfWeek(edit_fech_lectura.Date);
      Open;
      var_minu_turno := FieldByName('minu_disponibles').asInteger;
      Close;
  End;
  //Si la lectura es de todo el turno, mostrarlo
  if (edit_nume_lectura.Value = 0) Then
  Begin
        //Actualizar la tabla ventana
        With myTabla_ventana do
        Begin
            if (active) then
              EdItarTablaVentana(Sender);
            if FieldByName('minu_contratados').asInteger = 0 Then
               FieldByName('minu_contratados').Value := var_minu_turno;
            FieldByName('hora_inicio').Value := '00:00:00';
            FieldByName('hora_final').Value := '00:00:00';
            Post;
        End;
  End
  Else
  //Bihorario
  Begin
      //Verificar que la tabla esté en edición
      if Not(myTabla_ventana.State in [dsInsert, dsEdit]) Then Exit;
      With myTabla_ventana do
        if (FieldByName('hora_final').asDateTime <= FieldByName('hora_inicio').asDateTime) Then
            FieldByName('minu_contratados').asInteger := 0
        Else
            FieldByName('minu_contratados').asInteger := Trunc((FieldByName('hora_final').asDateTime - FieldByName('hora_inicio').asDateTime) * 24 * 60);
  End;
  edit_minu_contratados.SelectAll;
  //No permitir cambio de ubicación para turno completo
  comb_empresa.Enabled := (edit_nume_lectura.Value > 0) and (var_biho_seleccionado);
  comb_planta.Enabled := (edit_nume_lectura.Value > 0) and (var_biho_seleccionado);
  comb_linea.Enabled := (edit_nume_lectura.Value > 0) and (var_biho_seleccionado);
  comb_seccion.Enabled := (edit_nume_lectura.Value > 0) and (var_biho_seleccionado);
  comb_Turno.Enabled := (edit_nume_lectura.Value > 0) and (var_biho_seleccionado);
end;
{****************************************************************
Procedimiento   : acti_gene_tiquetesExecute
Objetivo        : Ejecuta la acción de generación de tiquetes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.acti_gene_tiquetesExecute(
  Sender: TObject);
begin
  inherited;
  if not pane_page.Visible Then Exit;
  //Cambiarse de página
  page.ActivePage := page_fabricacion;
  //Crear la ventana
  Application.CreateForm(Tfn1_cont_nove_gene_tiquete, fn1_cont_nove_gene_tiquete);
  fn1_cont_nove_gene_tiquete.DoEjecutarVentana(edit_codi_barr_fabri_completo, edit_codi_barr_fabri_completo.OnKeyDown);
end;

{****************************************************************
Procedimiento   : boto_buscarClick
Objetivo        : Buscar el personal desde una lista
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.boto_buscarClick(Sender: TObject);
Var
    var_codigo  :   Variant;
    var_Key     : Word;
    var_Shift   : TShiftState;
begin
  inherited;
  Application.CreateForm(Tbpersonal, bpersonal);
  var_codigo := bPersonal.doBuscar(edit_Fech_lectura.Date, 'codi_personal');
  if VarIsNull(var_codigo) Then Exit;
  edit_codi_personal.Text := var_codigo;
  darFoco(edit_codi_personal);
  WindowState := wsMaximized;
  var_key := vk_Return;
  var_Shift := [];
  edit_codi_personalKeyDown(Sender, var_Key, var_Shift);
end;
{****************************************************************
Procedimiento   : FormCloseQuery
Objetivo        : Verificar que al salir no está en edición
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if myTabla_Ventana.Active then
      Case EjecutarMensaje(cosDeseaGuardar, mtConfirmation, [mbYes, mbNo, mbCancel], 0) Of
        mrYes:    if not variables.sololectura then
            if padr_acti_aceptar.Enabled then
                padr_acti_aceptar.Execute;
        mrNo:	  data_ventana.DataSet.Cancel;
        mrCancel: CanClose := False;
      End;
end;
{****************************************************************
Procedimiento   : func_valo_hora_prod_mixto
Objetivo        : Calcula el valor hora producción MIXTO (6) con
                  las variables actuales
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
Function Tfn1_cont_nove_diar_costura.func_valo_hora_prod_mixto : Real;
var
    var_eficiencia  : Float;
    var_hora_producidas : Float;
    var_sala_base   : Float;
    Var_Gustavo, Var_Obtenidos, Var_Trabajados,
    Var_Lineal, Var_Efic_Real, Var_Efic_Inferior,
    Var_Dife_Horas, Var_Incentivo : Float;
Begin
  //Calculo de eficiencia
  If (data_ventana.DataSet.FieldByname('minu_contratados').AsFloat -
    edit_resu_tiem_traba_no_estandar.Value) <> 0 Then
    var_eficiencia := (edit_gana_prod_minutos.Value /
     (data_ventana.DataSet.FieldByname('minu_contratados').AsFloat -
      edit_resu_tiem_traba_no_estandar.Value)) * 100
  Else
    var_eficiencia := 0;

  //Horas producidas
  var_hora_producidas := edit_gana_prod_minutos.Value / 60;

  //Inicializar variables
  Var_Obtenidos := 0;
  Var_Trabajados := 0;
  var_sala_base := 0;

  //Sumar los obtenidos y trabajados
  quer_sele_nove_abonados.First;
  While Not quer_sele_nove_abonados.EOF Do
  Begin
    Var_Obtenidos := quer_sele_nove_abonados.FieldByName('MINU_ABONADOS').AsFloat;
    Var_Trabajados := quer_sele_nove_abonados.FieldByName('MINU_TRABAJADOS').AsFloat;
    quer_sele_nove_abonados.Next;
  End;

  //Valor mínimo empresa
  QMinimo_Empresa.Close;
  AbrirDataSet(QMinimo_Empresa);

  //Lineal
  if ((var_eficiencia < quer_form_pago_mixto.FieldByName('RANG_INFE_1').asFloat)
    Or (var_eficiencia > quer_form_pago_mixto.FieldByName('RANG_SUPE_1').asFloat)) Then
  Begin

    //Salario base horas trabajadas
    var_sala_base := edit_valo_hora_produccion.Value * var_hora_producidas;

    Var_Gustavo := ((data_ventana.DataSet.FieldByname('minu_contratados').AsFloat -
        edit_resu_tiem_traba_no_estandar.Value) / 60) * edit_mini_garantizado.Value;
    If var_sala_base < Var_Gustavo  Then
      edit_ajus_al_minimo.Value := Var_Gustavo - var_sala_base
    Else
      edit_ajus_al_minimo.Value;
    Result := var_sala_base;

    //Ganado No Estandar
    If Var_Obtenidos <> 0 Then
			If Result > 0 Then
        //Valor mínimo empresa
        edit_gana_prod_NO_estandar.Value := (Var_Obtenidos / 60) *
          QMinimo_Empresa.FieldByName('VALO_HORA_MINI_EMPRESA').AsFloat
      Else
      	edit_gana_prod_NO_estandar.Value := 0
    Else
    	edit_gana_prod_NO_estandar.Value := 0;    

    //Mínimo garantizado No estandar
    If Var_Trabajados <> 0 Then
      var_sala_base := (Var_Trabajados / 60) * edit_mini_garantizado.Value;

    //Ajuste al mínimo No estandar
    If edit_gana_prod_NO_estandar.Value > 0 Then
      If edit_gana_prod_NO_estandar.Value < var_sala_base Then
        ajus_al_mini_no_estandar.Value := var_sala_base - edit_gana_prod_NO_estandar.Value
      Else
        ajus_al_mini_no_estandar.Value := 0
    Else
      ajus_al_mini_no_estandar.Value := 0;
  End
  //Dividido
  Else
  Begin
    //Inicializar variables
    Var_Lineal := 0;
    //Líneal con base
    Var_Lineal := var_hora_producidas * quer_form_pago_mixto.FieldByName('VALO_HORA_PROD_2').asFloat;
    //Eficiencia real
    Var_Efic_Real := (((data_ventana.DataSet.FieldByname('minu_contratados').AsFloat -
      edit_resu_tiem_traba_no_estandar.Value) / 60) * var_eficiencia) / 100;
    //Eficiencia inferior
    Var_Efic_Inferior := (((data_ventana.DataSet.FieldByname('minu_contratados').AsFloat -
      edit_resu_tiem_traba_no_estandar.Value) / 60) * quer_form_pago_mixto.FieldByName('rang_infe_1').asFloat) / 100;
    //Diferencia sobre horas
    Var_Dife_Horas := Var_Efic_Real - Var_Efic_Inferior;
    //Pago incentivos
    Var_Incentivo := Var_Dife_Horas * quer_form_pago_mixto.FieldByName('VALO_HORA_PROD_3').asFloat;
    //Ganado en estandar
    Result := Var_Lineal + Var_Incentivo;
    //Mínimo garantizado
    Var_Sala_Base := ((data_ventana.DataSet.FieldByname('minu_contratados').AsFloat -
      edit_resu_tiem_traba_no_estandar.Value) / 60) * edit_mini_garantizado.Value;
    //Ajuste al mínimo estandar
    If Result > 0 Then
      If Result < Var_Sala_Base Then
        edit_ajus_al_minimo.Value := Var_Sala_Base - Result
      Else
        edit_ajus_al_minimo.Value := 0
    Else
      edit_ajus_al_minimo.Value := 0;

    //Ganado No estandar
    edit_gana_prod_NO_estandar.Value := (Var_Obtenidos / 60) *
      QMinimo_Empresa.FieldByName('VALO_HORA_MINI_EMPRESA').AsFloat;
    Var_Sala_Base := (Var_Trabajados / 60) * edit_mini_garantizado.Value;

    //Ajuste al mínimo No estandar
    If edit_gana_prod_NO_estandar.Value > 0 Then
      If edit_gana_prod_NO_estandar.Value < Var_Sala_Base Then
        ajus_al_mini_no_estandar.Value := Var_Sala_Base - edit_gana_prod_NO_estandar.Value
      Else
        ajus_al_mini_no_estandar.Value := 0
    Else
    	ajus_al_mini_no_estandar.Value := 0;

    
  End;
End;
{****************************************************************
Procedimiento   : myTabla_ventanaBeforeCancel
Objetivo        : 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 11 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.myTabla_ventanaBeforeCancel(
  DataSet: TDataSet);
begin
  inherited;

end;
{****************************************************************
Procedimiento   : padr_acti_cancelarUpdate
Objetivo        : Actualizar la acción de cancelar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 11 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.padr_acti_cancelarUpdate(
  Sender: TObject);
begin
  inherited;
  padr_acti_cancelar.Enabled := myTabla_Ventana.Active;
end;
{****************************************************************
Procedimiento   : padr_acti_cancelarExecute
Objetivo        : Cancelar los cambios realizaod
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 11 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.padr_acti_cancelarExecute(
  Sender: TObject);
begin
  //inherited;
  if (Confirmar(cosDeseaCancelar)=mrYes) Then
  Begin
    if _fMDI.data_base_pcp.InTransaction Then
        RollBackDBWork;
    pane_info.enabled := True;
    myTabla_ventana.Close;
    //Cerrar las consultas
    quer_sele_nove_improductivos.Close;
    pane_page.visible := False;
    var_biho_seleccionado := False;
    darFoco(edit_codi_personal);
    edit_codi_personal.Clear;
  End;
end;
{****************************************************************
Procedimiento   : edit_codi_barr_corte_completoKeyDown
Objetivo        : Controla las pulsaciones sobre el control de
                  adición de tiquetes de CORTE
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 12 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.edit_codi_barr_corte_completoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
Var
        var_colu        : Integer;
        var_unidades    : Integer;
begin
  inherited;
  If key = vk_return then
  Begin
        Try
             //Si está vacío, salir
             if edit_codi_barr_corte_completo.Text = '' Then Exit;
             //Verificar si es un tiquete de CORTE
             if (Pos('9', edit_codi_barr_corte_completo.Text) <> 1) Then
             Begin
                  page.activePage := page_fabricacion;
                  edit_codi_barr_fabri_completo.Text := edit_codi_barr_corte_completo.Text;
                  edit_codi_barr_fabri_completoKeyDown(Sender, key, Shift);
                  Exit;
             End;
             With quer_inse_tiqu_corte do
             Begin
                 if Active then Close;
                 paramByName('codi_barras').Value := edit_codi_barr_corte_completo.Text;
                 paramByName('cons_cont_nove_diaria').Value := myTabla_ventana.FieldByName('cons_cont_nove_diaria').AsInteger;
                 Open;
                 //Verificar si hay error
                 if FieldByName('hubo_error').AsInteger = 1 then
                 Begin
                     //Mostrarle al usuario que hubo un error
                     doControlError(pane_tiqu_corte);
                     //Insertarlo en la tabla de errores
                     tabl_erro_fabricacion.Insert;
                     tabl_erro_fabricacion.FieldByName('codi_barras').Value := FieldByName('codi_barras').asString;
                     tabl_erro_fabricacion.FieldByName('nume_prod_orden').Value := FieldByName('nume_prod_orden').asString;
                     tabl_erro_fabricacion.FieldByName('nume_paquete').Value := FieldByName('nume_paquete').asInteger;
                     tabl_erro_fabricacion.FieldByName('nume_lote').Value := FieldByName('nume_lote').asInteger;
                     tabl_erro_fabricacion.FieldByName('secu_operacion').Value := FieldByName('secu_operacion').asInteger;
                     tabl_erro_fabricacion.FieldByName('nomb_operacion').Value := FieldByName('nomb_operacion').asString;
                     tabl_erro_fabricacion.FieldByName('mens_error').Value := FieldByName('mens_error').asString;
                     tabl_erro_fabricacion.Post;
                 End
                 Else
                 Begin
                      With grid_tiqu_corte do
                      Begin
                        While not Eof do
                        Begin
                            RowCount := RowCount + 1;
                            //Campos de la consulta
                            For var_colu := 1 to ColumnByName['CONS_TIQU_CONTROL'].Index do
                              Cells[var_colu - 1, RowCount - 1] := FieldByName(Columns[var_colu - 1].Name).asString;
                            //Valor del tiquete - RC16
                            //Si es 4 - Habilidad, dejar el tiempo de la consulta
                            if (quer_form_pago.FieldByName('cons_sis_form_pago').AsInteger = fpNivelDeHabilidad) Then
                            Begin
                                //Si es mayor que cero, aplica
                                if (FieldByName('VALO_HORA_PRODUCCION').AsFloat > 0) then
                                   Cells[ColumnByName['VALO_HORA_PRODUCCION'].Index, RowCount - 1] := FormatFloat('0.000', FieldByName('VALO_HORA_PRODUCCION').AsFloat)
                                //Si es cero, se paga al valor producción dado
                                Else
                                    Cells[ColumnByName['VALO_HORA_PRODUCCION'].Index, RowCount - 1] := FormatFloat('0.000', edit_valo_hora_produccion.Value);
                            End
                            Else
                                Cells[ColumnByName['VALO_HORA_PRODUCCION'].Index, RowCount - 1] := FormatFloat('0.000', edit_valo_hora_produccion.Value);
                            //Valor del tiquete
                            Cells[ColumnByName['VALO_TIQUETE'].Index, RowCount - 1] := FormatFloat('0.00',
                                    (StrToFloat(Cells[ColumnByName['TIEM_PAQUETE'].Index, RowCount - 1])/60) * StrToFloat(Cells[ColumnByName['VALO_HORA_PRODUCCION'].Index, RowCount - 1]));
                            Row := RowCount - 1;
                            Next;
                        End;
                        doHacerCalculos(Sender);
                      End;
                 End;
                 Close;
             End;
      Except
          On e:Exception do
                EjecutarMensajeError(e.Message);
      end;
      //Cerrar la consulta
      if (quer_inse_tiqu_corte.active) then quer_inse_tiqu_corte.Close;
      //Dar el foco
      darFoco(edit_codi_barr_corte_completo);
      if edit_codi_barr_corte_completo.Focused then
         edit_codi_barr_corte_completo.SelectAll;
      //Anular el enter
      key := Word(#0);
  End;
end;
{****************************************************************
Procedimiento   : acti_sele_todosExecute
Objetivo        : Seleccionar todos los registros
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 12 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.acti_sele_todosExecute(
  Sender: TObject);
begin
  inherited;
  Case page.ActivePageIndex of
        //Paros improductivos
        idImproductivos: grid_improductivos.SelectAll;
        //Abonados
        idNoEstandar: grid_abonados.SelectAll;
        //hora_extras
        idExtras: grid_extras.SelectAll;
        //Tiqutes corte
        idCorte: if grid_tiqu_corte.RowCount > 1 Then
            grid_tiqu_corte.SelectRows(1, grid_tiqu_corte.RowCount - 1);
        //Tiqutes fabricacion
        idFabricacion: grid_tiqu_fabricacion.SelectAll;
        //Curva
        idCurva : grid_tiqu_curva.SelectAll;
  End;
end;
{****************************************************************
Procedimiento   : page_tiqu_fabricacionShow
Objetivo        : Actualiza la pagina de lecutra de tiquetes cuando
                  se muestra
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 14 de 2005
Versión         : pcp4.0.20.4
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.page_tiqu_fabricacionShow(
  Sender: TObject);
begin
  inherited;
  //Seleccionar el control activo de acuerdo con la página actual
  //--------------PENDIENTE-------------abonados
  {if pane_tiqu_abonados.Visible Then DarFoco(comb_tiqu_abonados)
  Else DarFoco(edit_codi_barr_fabri_completo);}
end;

{****************************************************************
Procedimiento   : tabl_tiqu_fabricacionCalcFields
Objetivo        : Calcular los valores de los campos calculados
                  en la tabla de tiquetes de fabricación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.tabl_tiqu_fabricacionCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  With tabl_tiqu_fabricacion do
  Begin
      FieldByName('valo_tiquete').Value := (FieldByName('tiem_paquete').asFloat / 60) * FieldByName('valo_hora_produccion').asFloat;
  End;
end;
{****************************************************************
Procedimiento   : tabl_tiqu_fabricacionAfterOpen
Objetivo        : Abrir la consulta de la suma de tiquetes de fabricación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.tabl_tiqu_fabricacionAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
    AbrirDataSet(tabl_tiqu_fabr_suma);
end;
{****************************************************************
Procedimiento   : chec_partirChange
Objetivo        : Cambiar el color al check de tiquetes partidos
                  para que sea más visible su selección
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.chec_partirChange(Sender: TObject);
begin
  inherited;
  with chec_partir do
    if Checked then Color := clRed
    else Color := clWhite;
end;
{****************************************************************
Procedimiento   : edit_nume_lecturaExit
Objetivo        : Ejecutar el enter sobre el número de lectura
                  (bihorario) por código cuando el usuario
                  sale con el mouse
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.edit_nume_lecturaExit(
  Sender: TObject);
Var
        var_Tecla       : Word;
begin
  inherited;
  var_Tecla := vk_Return;
  If not var_biho_seleccionado Then
     edit_nume_lecturaKeyDown(Sender,  var_Tecla, []);
end;
{****************************************************************
Procedimiento   : tabl_Tiqu_curvaCalcFields
Objetivo        : Dar valor a los campos calculados de la tabla
                  temporal de tiquetes en curva
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.tabl_Tiqu_curvaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  With tabl_tiqu_curva do
  Begin
      FieldByName('valo_tiquete').Value := (FieldByName('tiem_paquete').asFloat / 60) * FieldByName('valo_hora_produccion').asFloat;
  End;
end;
{****************************************************************
Procedimiento   : tabl_Tiqu_curvaAfterOpen
Objetivo        : Abrir la consulta de suma cuando se abra la
                  de tiquetes de curva
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.tabl_Tiqu_curvaAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  AbrirDataSet(tabl_tiqu_curv_suma);
end;
{****************************************************************
Procedimiento   : ExtrasPorCodigos
Objetivo        : Indica si el control de horas extras es por códigos
                  o es general
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Function Tfn1_cont_nove_diar_costura.ExtrasPorCodigos : Boolean;
Begin
    Result := (_fmdi.tabl_pcp_opciones.FieldByName('CONT_PROD_HORA_EXTR_DETALLADA').asInteger = 1);
End;
{****************************************************************
Procedimiento   : edit_minu_contratadosExit
Objetivo        : Guardar los cambios al salir de los minutos contratados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.edit_minu_contratadosExit(
  Sender: TObject);
begin
  inherited;
  CheckAndPostDataSet(myTabla_Ventana);
end;
{****************************************************************
Procedimiento   : quer_sele_nove_abonadosCalcFields
Objetivo        : Dar valor a los campos calculados del abonado (no estándar)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 15-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.quer_sele_nove_abonadosCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  With quer_sele_nove_abonados do
  Begin
      FieldByName('valo_Total').Value := (FieldByName('minu_abonados').asFloat / 60) * FieldByName('valo_hora').asFloat;
      FieldByName('valo_garantizado').Value := (FieldByName('minu_trabajados').asFloat / 60) * FieldByName('valo_minimo').asFloat;

  End;

end;
{****************************************************************
Procedimiento   : quer_sele_nove_improductivosCalcFields
Objetivo        : Dar valor a los campos calculados en los paros improductivos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-Ago-2005
Versión         : pcp4.0.20.18
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.quer_sele_nove_improductivosCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  With quer_sele_nove_improductivos do
  Begin
      FieldByName('valo_Total').Value := (FieldByName('minu_improductivos').asFloat / 60) * FieldByName('valo_hora').asFloat;
      FieldByName('valo_garantizado').Value := (FieldByName('minu_improductivos').asFloat / 60) * FieldByName('valo_minimo').asFloat;

  End;
end;
{****************************************************************
Procedimiento   : func_indi1ParserError
Objetivo        : Controlar errores en el primer indicador de productividad
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Sep-2005
Argumentos      : Sender: TObject; ParseError: Integer
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.func_indi1ParserError(
  Sender: TObject; ParseError: Integer);
begin
  inherited;
  edit_resu_amc.Value := 0;
end;
{****************************************************************
Procedimiento   : func_indi2ParserError
Objetivo        : Controlar errores en el segundo indicador de productividad
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Sep-2005
Argumentos      : Sender: TObject; ParseError: Integer
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.func_indi2ParserError(
  Sender: TObject; ParseError: Integer);
begin
  inherited;
  edit_resu_amc.Value := 0;
end;
{****************************************************************
Procedimiento   : func_indi3ParserError
Objetivo        : Controlar errores en el tercer indicador de productividad
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Sep-2005
Argumentos      : Sender: TObject; ParseError: Integer
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.func_indi3ParserError(
  Sender: TObject; ParseError: Integer);
begin
  inherited;
  edit_resu_efic_obtenida.Value := 0;
end;
{****************************************************************
Procedimiento   : func_indi1PideVariable
Objetivo        : Dar los valores a las variables para el cálculo de los indicadores
                  de producción
Realizado por   : Tecnologia
Fecha           : 12-Sep-2005
Argumentos      : Sender: TObject; Variable: String; var Valor: Extended; var Found: Boolean
Versión         : pcp4.0.20.19
*****************************************************************}
procedure Tfn1_cont_nove_diar_costura.func_indi1PideVariable(
  Sender: TObject; Variable: String; var Valor: Extended;
  var Found: Boolean);
begin
  inherited;
  //Si la tabla maestra está cerrada, salir
  if Not myTabla_Ventana.Active Then
  Begin
      Found := False;
      Valor := 0;
      Exit;
  End;
  //Evaluar el nombre de la variable
  Variable := UpperCase(Variable);
  Found := True;
  if            (Variable = 'MINU_CONTRATADOS')         Then Valor := myTabla_Ventana.FieldByName('minu_contratados').AsInteger
  Else if       (Variable = 'TIQU_LEIDOS')              Then Valor := edit_resu_nume_tiquetes.AsInteger
  Else if       (Variable = 'UNID_PROCESADAS')          Then Valor := edit_resu_cantidad.AsInteger
  Else if       (Variable = 'TIEM_TRAB_ESTANDAR')       Then Valor := edit_resu_tiem_traba_estandar.asInteger
  Else if       (Variable = 'TIEM_OBTE_ESTANDAR')       Then Valor := edit_resu_tiem_tiqu_fabricacion.Value
  Else if       (Variable = 'TIEM_TRAB_NOESTANDAR')     Then Valor := edit_resu_tiem_traba_NO_estandar.AsInteger
  Else if       (Variable = 'TIEM_OBTE_NOESTANDAR')     Then Valor := edit_resu_tiem_abonado.Value
  Else if       (Variable = 'TIEM_TRAB_CURVA')          Then Valor := edit_minu_curva.AsInteger
  Else if       (Variable = 'TIEM_OBTE_CURVA')          Then Valor := edit_resu_tiem_curva.Value
  Else if       (Variable = 'TIEM_AUSENTISMO')          Then Valor := edit_resu_tiem_ausentismo.AsInteger
  Else if       (Variable = 'TIEM_IMPRODUCTIVO')        Then Valor := edit_resu_tiem_improductivo.AsInteger
  Else if       (Variable = 'TIEM_EXTRA')               Then Valor := edit_resu_tiem_extra.AsInteger
  Else if       (Variable = 'TIEM_AUSE_ESTANDAR')       Then Valor := edit_resu_tiem_ause_estandar.AsInteger
  Else if       (Variable = 'TIEM_AUSE_NOESTANDAR')     Then Valor := edit_resu_tiem_ause_NO_Estandar.AsInteger
  Else if       (Variable = 'TIEM_IMPR_ESTANDAR')       Then Valor := edit_resu_impr_estandar.AsInteger
  Else if       (Variable = 'TIEM_IMPR_NOESTANDAR')     Then Valor := edit_resu_impr_NO_estandar.AsInteger
  Else if       (Variable = 'TIEM_EXTR_ESTANDAR')       Then Valor := edit_resu_tiem_extr_estandar.AsInteger
  Else if       (Variable = 'TIEM_EXTR_NOESTANDAR')     Then Valor := edit_resu_tiem_extr_NO_estandar.AsInteger
  Else
  Begin
      Found := False;
      Valor := 0;
  End;
end;
procedure Tfn1_cont_nove_diar_costura.imag_ver_indicadoresClick(Sender: TObject);
begin
  inherited;
  page.ActivePage := page_Indicadores;
end;

end.

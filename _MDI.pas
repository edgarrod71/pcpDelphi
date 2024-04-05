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
        Unit            : _MDI.pas
        Objetivo        : Ventana principal del proyecto PCP (MDIForm)
        Realizado por   : Mauricio Vargas (TECNOLOGIA)
        Fecha           : Enero de 2004
        Versión         : pcp4000
*******************************************************************}
{$I DEFINICIONES.INC}

unit _MDI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB2Dock, TBX, TB2Toolbar, TB2Item, ActnList, TBXSwitcher, TFlatHintUnit,
  Db, DBTables, stdCtrls, JvJVCLUtils,

  // Temas de TBX
  //....................................................................
  tbxStripesTheme,
  tbxAthenTheme, tbxDreamTheme,
  tbxNexos3Theme, tbxRomaTheme, tbxOfficeKTheme,
  tbxOfficeXPTheme,TBXNewOfficeTheme,
  tbxReliferTheme, tbxSentimoXTheme,
  tbxXitoTheme, ExtCtrls,
  RxMemDS, Menus, dxEditor, StdActns, ImgList,
  AppEvent, SohoBtns, SCLButton, JvExControls, JvComponent,
  JvGradientHeaderPanel, PCPTituloGradiente,
  JvOutlookBar, SCLOutlookBar, AdvNavBar, TBXDkPanels, TBXMDI,
  TBXSwitcherItem, SoCtrls, SCLDBLabel, RxLookup, PCPLookUpComboEdit,
  dxCntner, dxExEdtr, dxDBEdtr, dxDBELib, TBXButtonSCL, AdvPanel, Buttons,
  JvBaseDlg, JvDesktopAlert, TBXExtItems, JvBalloonHint, JvNavigationPane,
  ComCtrls, JvExExtCtrls, dxPageControl, SCLTabs, dxEdLib,
  JvComponentBase;

const
  wm_End_Splash = wm_user + 396;

type
  T_fMDI = class(TForm)
    dock_arriba: TTBXDock;
    barra: TTBXToolbar;
    AccionesMenus: TActionList;
    acti_n1_para_plantas: TAction;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXItem1: TTBXItem;
    acti_n1_para_empresa: TAction;
    mdi_switcher: TTBXSwitcher;
    dock_izquierda: TTBXDock;
    dock_abajo: TTBXDock;
    dock_derecha: TTBXDock;
    barr_ventanas: TTBXToolbar;
    Wind_list: TTBXMDIWindowItem;
    data_base_pcp: TDatabase;
    acti_n0_inic_conexion: TAction;
    TBXItem2: TTBXItem;
    acti_n0_fina_conexion: TAction;
    TBXItem3: TTBXItem;
    acti_n0_salir: TAction;
    TBXItem4: TTBXItem;
    menu_herramientas: TTBXSubmenuItem;
    TBXSubmenuItem4: TTBXSubmenuItem;
    TBXSwitcherItem1: TTBXSwitcherItem;
    TBXSubmenuItem5: TTBXSubmenuItem;
    TBXVisibilityToggleItem1: TTBXVisibilityToggleItem;
    TBXItem6: TTBXItem;
    acti_n1_para_paises: TAction;
    EventosAplicacion: TAppEvents;
    acti_n1_refe_marcas: TAction;
    TBXSubmenuItem7: TTBXSubmenuItem;
    TBXItem5: TTBXItem;
    acti_n1_refe_lineas: TAction;
    acti_n1_refe_edades: TAction;
    acti_n1_refe_estilos: TAction;
    acti_n1_refe_grupos: TAction;
    acti_n1_refe_estados: TAction;
    acti_n1_refe_temporadas: TAction;
    acti_n1_refe_grup_tallas: TAction;
    acti_n1_refe_lavados: TAction;
    acti_n1_refe_bordados: TAction;
    acti_n1_refe_estampados: TAction;
    acti_n1_refe_colores: TAction;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    TBXItem10: TTBXItem;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    TBXItem13: TTBXItem;
    TBXItem14: TTBXItem;
    TBXItem15: TTBXItem;
    TBXItem16: TTBXItem;
    TBXItem17: TTBXItem;
    TBXItem18: TTBXItem;
    Acti_n1_para_departamentos: TAction;
    Acti_n1_para_municipios: TAction;
    TBXItem19: TTBXItem;
    Acti_n1_para_areas: TAction;
    TBXItem20: TTBXItem;
    TBXItem21: TTBXItem;
    Acti_n1_para_secciones: TAction;
    TBXItem22: TTBXItem;
    acti_n1_refe_maestro: TAction;
    acti_n1_refe_camb_estado: TAction;
    TBXItem23: TTBXItem;
    TBXItem24: TTBXItem;
    TBXItem25: TTBXItem;
    TBXItem30: TTBXItem;
    Acti_n1_para_bodegas: TAction;
    TBXItem31: TTBXItem;
    Acti_n1_para_turnos: TAction;
    TBXItem32: TTBXItem;
    Acti_n1_para_Centro_Costos: TAction;
    TBXItem33: TTBXItem;
    Acti_n1_para_Cargos: TAction;
    TBXItem34: TTBXItem;
    TBXItem35: TTBXItem;
    menu_personal: TTBXSubmenuItem;
    Acti_n1_para_tipo_contrato: TAction;
    TBXItem36: TTBXItem;
    Acti_n1_para_nive_salarial: TAction;
    TBXItem37: TTBXItem;
    TBXSubmenuItem11: TTBXSubmenuItem;
    acti_n1_maqu_grupos: TAction;
    acti_n1_maqu_tipos: TAction;
    acti_n1_maqu_familias: TAction;
    acti_n1_maqu_marcas: TAction;
    TBXSubmenuItem13: TTBXSubmenuItem;
    TBXSubmenuItem14: TTBXSubmenuItem;
    TBXItem40: TTBXItem;
    TBXItem41: TTBXItem;
    TBXItem42: TTBXItem;
    TBXItem43: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem44: TTBXItem;
    acti_n1_maqu_tipo_movimientos: TAction;
    acti_n1_maqu_ingreso: TAction;
    TBXItem45: TTBXItem;
    acti_n1_maqu_tipo_puntada: TAction;
    TBXItem49: TTBXItem;
    Acti_n1_para_prestaciones: TAction;
    TBXItem52: TTBXItem;
    Acti_n1_para_improductivos: TAction;
    TBXItem53: TTBXItem;
    Acti_n1_para_sub_improductivos: TAction;
    TBXItem54: TTBXItem;
    TBXSubmenuItem15: TTBXSubmenuItem;
    Acti_n1_para_lineas: TAction;
    TBXItem56: TTBXItem;
    TBXSubmenuItem17: TTBXSubmenuItem;
    TBXSubmenuItem20: TTBXSubmenuItem;
    TBXSubmenuItem23: TTBXSubmenuItem;
    menu_ingenieria: TTBXSubmenuItem;
    TBXSubmenuItem25: TTBXSubmenuItem;
    TBXSubmenuItem27: TTBXSubmenuItem;
    TBXSubmenuItem28: TTBXSubmenuItem;
    TBXSubmenuItem29: TTBXSubmenuItem;
    TBXSubmenuItem30: TTBXSubmenuItem;
    TBXSubmenuItem32: TTBXSubmenuItem;
    TBXSubmenuItem33: TTBXSubmenuItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXSubmenuItem55: TTBXSubmenuItem;
    TBXSubmenuItem56: TTBXSubmenuItem;
    acti_n1_refe_grup_colores: TAction;
    TBXItem38: TTBXItem;
    acti_n1_refe_sub_grup_colores: TAction;
    TBXItem57: TTBXItem;
    acti_n1_refe_tono_colores: TAction;
    TBXItem58: TTBXItem;
    Acti_n1_pers_maestro: TAction;
    TBXSubmenuItem59: TTBXSubmenuItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    dock_barra: TTBXDock;
    imagenesPCP: TImageList;
    padr_acciones: TActionList;
    padr_acti_buscar: TAction;
    padr_acti_imprimir: TAction;
    padr_acti_ayuda: TAction;
    padr_acti_salir: TAction;
    padr_acti_nuevo: TAction;
    padr_acti_modificar: TAction;
    padr_acti_eliminar: TAction;
    padr_acti_actualizar: TAction;
    padr_acti_vertodo: TAction;
    padr_acti_ajus_alto: TAction;
    padr_acti_expo_excel: TAction;
    padr_acti_expo_html: TAction;
    padr_acti_expo_txt: TAction;
    padr_acti_aceptar: TAction;
    padr_acti_cancelar: TAction;
    padr_acti_duplicar: TAction;
    padr_acti_elim_todos: TAction;
    padr_acti_cerr_carp_activa: TAction;
    acti_padr_cerr_todas_carpetas: TAction;
    padr_acti_ver_lista: TAction;
    padr_acti_comu_sele_rang_fechas: TAction;
    padr_acti_mejo_ajuste: TAction;
    barr_archivo: TTBXToolbar;
    padr_boto_nuevo: TTBXItem;
    padr_boto_modificar: TTBXItem;
    padr_boto_eliminar: TTBXItem;
    padr_sepa_1: TTBXSeparatorItem;
    padr_acti_guardar: TAction;
    padr_acti_guar_cerrar: TAction;
    padr_boto_guardar: TTBXItem;
    padr_boto_guar_cerrar: TTBXItem;
    padr_boto_cancelar: TTBXItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    padr_boto_actualizar: TTBXItem;
    barr_edicion: TTBXToolbar;
    padr_boto_buscar: TTBXSubmenuItem;
    padr_acti_copiar: TdxEditCopy;
    padr_acti_cortar: TdxEditCut;
    padr_acti_pegar: TdxEditPaste;
    TBXSeparatorItem10: TTBXSeparatorItem;
    TBXItem50: TTBXItem;
    TBXItem51: TTBXItem;
    TBXItem59: TTBXItem;
    padr_boto_imprimir: TTBXItem;
    TBXItem39: TTBXItem;
    padr_boto_vertodo: TTBXItem;
    padr_boto_ajus_alto: TTBXItem;
    TBXSeparatorItem11: TTBXSeparatorItem;
    padr_boto_conf_vista: TTBXVisibilityToggleItem;
    TBXSeparatorItem12: TTBXSeparatorItem;
    padr_boto_exportar: TTBXSubmenuItem;
    padr_boto_Expo_excel: TTBXItem;
    padr_boto_Expo_html: TTBXItem;
    padr_boto_expo_txt: TTBXItem;
    padr_sepa_4: TTBXSeparatorItem;
    padr_boto_ayuda: TTBXItem;
    padr_boto_salir: TTBXItem;
    imag_grandes: TImageList;
    imag_pequenas: TImageList;
    padr_acti_imag_grandes: TAction;
    acti_n1_refe_tipo_variaciones: TAction;
    TBXItem60: TTBXItem;
    TBXSubmenuItem61: TTBXSubmenuItem;
    TBXSubmenuItem62: TTBXSubmenuItem;
    TBXItem61: TTBXItem;
    TBXItem62: TTBXItem;
    TBXItem63: TTBXItem;
    TBXItem64: TTBXItem;
    TBXItem65: TTBXItem;
    TBXItem66: TTBXItem;
    acti_n2_mate_grupos: TAction;
    menu_parametrizacion: TTBXSubmenuItem;
    menu_recursos: TTBXSubmenuItem;
    menu_sesion: TTBXSubmenuItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem67: TTBXItem;
    acti_n2_mate_subgrupos: TAction;
    acti_n2_mate_referencias: TAction;
    acti_n2_mate_unid_medida: TAction;
    TBXItem68: TTBXItem;
    acti_n2_insu_grupos: TAction;
    acti_n2_insu_subgrupos: TAction;
    acti_n2_insu_referencias: TAction;
    acti_n1_meto_procesos: TAction;
    TBXItem69: TTBXItem;
    TBXItem70: TTBXItem;
    TBXItem71: TTBXItem;
    TBXItem72: TTBXItem;
    acti_n1_meto_comp_grupos: TAction;
    acti_n1_meto_comp_variaciones: TAction;
    acti_n1_meto_oper_tipos: TAction;
    acti_n1_meto_elem_cst: TAction;
    acti_n1_meto_esta_cst: TAction;
    TBXItem73: TTBXItem;
    TBXItem74: TTBXItem;
    acti_n0_opciones: TAction;
    TBXSeparatorItem13: TTBXSeparatorItem;
    TBXItem75: TTBXItem;
    TBXVisibilityToggleItem2: TTBXVisibilityToggleItem;
    acti_ventanas: TActionList;
    acti_vent_minimizar: TAction;
    acti_vent_cerrar: TAction;
    acti_vent_cascada: TAction;
    acti_vent_restaurar: TAction;
    acti_vent_mosa_horizontal: TAction;
    acti_vent_mosa_vertical: TAction;
    menu_ventanas: TTBXSubmenuItem;
    TBXItem76: TTBXItem;
    TBXItem78: TTBXItem;
    TBXItem77: TTBXItem;
    TBXSeparatorItem15: TTBXSeparatorItem;
    TBXItem81: TTBXItem;
    TBXItem80: TTBXItem;
    TBXItem79: TTBXItem;
    TBXSeparatorItem14: TTBXSeparatorItem;
    TBXMDIWindowItem1: TTBXMDIWindowItem;
    acti_n1_meto_comp_secu_operaciones: TAction;
    TBXItem82: TTBXItem;
    imag_varias: TImageList;
    acti_n1_maqu_tipo_caracteristicas: TAction;
    TBXItem46: TTBXItem;
    Acti_n1_pers_movi_tipo_documento: TAction;
    TBXItem47: TTBXItem;
    acti_n1_meto_refe_secu_operaciones: TAction;
    TBXItem48: TTBXItem;
    acti_n1_meto_refe_secu_oper_corte: TAction;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem83: TTBXItem;
    acti_n1_refe_list_materiales: TAction;
    Acti_n1_acce_grupos: TAction;
    Acti_n1_acce_tipos: TAction;
    TBXItem84: TTBXItem;
    TBXItem85: TTBXItem;
    Acti_n1_acce_tipo_caracteristica: TAction;
    TBXItem86: TTBXItem;
    Acti_n1_Acce_Ingreso: TAction;
    TBXSubmenuItem68: TTBXSubmenuItem;
    TBXItem87: TTBXItem;
    acti_n2_come_capt_pedidos: TAction;
    acti_n2_come_zonas: TAction;
    acti_n2_come_vendedores: TAction;
    acti_n2_come_clientes: TAction;
    acti_n2_come_prio_pedidos: TAction;
    menu_comercial: TTBXSubmenuItem;
    TBXSubmenuItem69: TTBXSubmenuItem;
    TBXItem88: TTBXItem;
    TBXItem89: TTBXItem;
    TBXItem90: TTBXItem;
    TBXItem91: TTBXItem;
    TBXItem92: TTBXItem;
    acti_n2_come_pedi_cons_general: TAction;
    TBXSubmenuItem70: TTBXSubmenuItem;
    TBXItem93: TTBXItem;
    acti_n1_plan_ordenes: TAction;
    menu_planeacion: TTBXSubmenuItem;
    TBXItem94: TTBXItem;
    Acti_n1_para_firmas: TAction;
    Acti_n1_para_prioridades: TAction;
    TBXSeparatorItem18: TTBXSeparatorItem;
    TBXItem95: TTBXItem;
    TBXItem96: TTBXItem;
    Acti_n1_cons_pers_general: TAction;
    TBXItem97: TTBXItem;
    Acti_n1_pers_tipo_movimiento: TAction;
    TBXItem98: TTBXItem;
    acti_n1_prod_ordenes: TAction;
    acti_n1_prod_etapas: TAction;
    Acti_n1_cons_pers_historial: TAction;
    TBXItem101: TTBXItem;
    Acti_n1_maqu_cons_general: TAction;
    TBXItem102: TTBXItem;
    Acti_n1_maqu_cons_traslados: TAction;
    TBXItem103: TTBXItem;
    Acti_n1_maqu_cons_plantas: TAction;
    TBXItem104: TTBXItem;
    pop_ventanas: TTBXPopupMenu;
    TBXItem105: TTBXItem;
    TBXItem106: TTBXItem;
    TBXItem107: TTBXItem;
    TBXSeparatorItem19: TTBXSeparatorItem;
    TBXItem108: TTBXItem;
    TBXItem109: TTBXItem;
    TBXItem110: TTBXItem;
    acti_n1_prod_depe_etapas: TAction;
    acti_n1_prod_etap_avance: TAction;
    acti_n1_prod_orde_trazo: TAction;
    imag__produccion: TImageList;
    imag__comercial: TImageList;
    imag__diseno: TImageList;
    imag_general32: TImageList;
    acti_n1_prod_orde_list_chequeo: TAction;
    data_base_security: TDatabase;
    quer_usuarios: TQuery;
    tabl_usuarios: TRxMemoryData;
    tabl_roles: TRxMemoryData;
    quer_roles: TQuery;
    acti_n1_prod_paqu_tipos: TAction;
    TBXItem115: TTBXItem;
    acti_n1_prod_paqu_tipo_proceso: TAction;
    acti_n1_prod_orde_dist_paqu_corte: TAction;
    acti_n2_prod_expl_materiales: TAction;
    acti_n1_prod_pedi_asociados: TAction;
    Acti_n1_acce_cons_general: TAction;
    TBXItem120: TTBXItem;
    Acti_n1_acce_cons_traslados: TAction;
    TBXItem121: TTBXItem;
    Acti_n1_acce_cons_plantas: TAction;
    TBXItem55: TTBXItem;
    TBXItem122: TTBXItem;
    acti_n1_plan_matr_polifuncionalidad: TAction;
    TBXItem123: TTBXItem;
    acti_n1_plan_cale_produccion: TAction;
    TBXItem124: TTBXItem;
    acti_n1_plan_line_especialidades: TAction;
    TBXItem125: TTBXItem;
    acti_n1_plan_secc_procesos: TAction;
    TBXItem126: TTBXItem;
    menu_control_produccion: TTBXSubmenuItem;
    TBXSeparatorItem23: TTBXSeparatorItem;
    TBXItem128: TTBXItem;
    TBXItem130: TTBXItem;
    TBXItem131: TTBXItem;
    acti_n1_cont_abonados: TAction;
    acti_n1_cont_extras: TAction;
    acti_n1_cont_reprocesos: TAction;
    acti_n1_nove_diarias: TAction;
    acti_n1_nove_reprocesos: TAction;
    acti_n1_refe_entrepiernas: TAction;
    TBXItem132: TTBXItem;
    TBXSeparatorItem25: TTBXSeparatorItem;
    TBXSeparatorItem26: TTBXSeparatorItem;
    acti_n2_come_monedas: TAction;
    TBXSeparatorItem27: TTBXSeparatorItem;
    acti_n2_come_mone_trm: TAction;
    TBXItem133: TTBXItem;
    TBXItem134: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    acti_n2_prot_maestro: TAction;
    menu_prototipos: TTBXSubmenuItem;
    TBXItem135: TTBXItem;
    acti_n2_prot_list_materiales: TAction;
    TBXItem136: TTBXItem;
    acti_n2_prot_list_oper_costura: TAction;
    TBXSeparatorItem30: TTBXSeparatorItem;
    TBXItem137: TTBXItem;
    acti_n2_prot_camb_estado: TAction;
    TBXSeparatorItem31: TTBXSeparatorItem;
    TBXItem138: TTBXItem;
    acti_n0_segu_usua_permisos: TAction;
    TBXSubmenuItem8: TTBXSubmenuItem;
    TBXItem139: TTBXItem;
    acti_n0_segu_crea_usuarios: TAction;
    quer_abri_permisos: TQuery;
    TBXItem140: TTBXItem;
    TBXVisibilityToggleItem3: TTBXVisibilityToggleItem;
    acti_n0_acce_directos: TAction;
    TBXItem141: TTBXItem;
    pop_accesos: TTBXPopupMenu;
    boto_carp_nueva: TTBXItem;
    quer_acce_inse_carpeta: TQuery;
    quer_acce_sele_carpeta: TQuery;
    TBXItem143: TTBXItem;
    TBXSeparatorItem32: TTBXSeparatorItem;
    boto_carp_eliminar: TTBXItem;
    quer_acce_dele_carpeta: TQuery;
    quer_acce_upda_carpeta: TQuery;
    boto_carp_modificar: TTBXItem;
    TBXSeparatorItem33: TTBXSeparatorItem;
    boto_acce_eliminar: TTBXItem;
    quer_acce_inse_icono: TQuery;
    quer_acce_sele_icono: TQuery;
    data_acce_sele_carpeta: TDataSource;
    quer_acce_dele_icono: TQuery;
    acti_n2_come_comp_envio: TAction;
    TBXItem142: TTBXItem;
    DataSource1: TDataSource;
    ImagenesMenus: TImageList;
    TBControlItem3: TTBControlItem;
    imag_tipo_acceso: TImage;
    labe_tipo_acceso: TTBXLabelItem;
    TBXSeparatorItem34: TTBXSeparatorItem;
    acti_n0_segu_camb_contrasena: TAction;
    TBXItem144: TTBXItem;
    TBXSeparatorItem35: TTBXSeparatorItem;
    acti_n0_usua_bloq_sesion: TAction;
    Panel1: TPanel;
    pane_titu_mdi: TPanel;
    labe_titu_mdi: TPCPTituloGradiente;
    Shape3: TShape;
    Shape1: TShape;
    Panel2: TPanel;
    Relo_actualizador: TTimer;
    acti_n2_come_pedi_cons_por_cliente: TAction;
    TBXItem146: TTBXItem;
    imag_estados: TImageList;
    TBXItem116: TTBXItem;
    acti_n1_meto_punt_control: TAction;
    barr_usuario: TTBXDockablePanel;
    navi: TAdvNavBar;
    nave_tareas: TAdvNavBarPanel;
    nave_accesos: TAdvNavBarPanel;
    barr_accesos: TSCLOutlookBar;
    TBXSeparatorItem21: TTBXSeparatorItem;
    TBXSubmenuItem44: TTBXSubmenuItem;
    TBXSubmenuItem18: TTBXSubmenuItem;
    TBXItem147: TTBXItem;
    TBXItem148: TTBXItem;
    TBXItem149: TTBXItem;
    TBXItem150: TTBXItem;
    TBXSubmenuItem19: TTBXSubmenuItem;
    TBXItem151: TTBXItem;
    TBXItem152: TTBXItem;
    menu_form_pago: TTBXSubmenuItem;
    menu_costos: TTBXSubmenuItem;
    menu_inventario: TTBXSubmenuItem;
    menu_referencias: TTBXSubmenuItem;
    TBXSubmenuItem73: TTBXSubmenuItem;
    TBXItem155: TTBXItem;
    TBXItem156: TTBXItem;
    TBXItem157: TTBXItem;
    TBXItem158: TTBXItem;
    TBXItem159: TTBXItem;
    TBXItem166: TTBXItem;
    TBXItem167: TTBXItem;
    TBXItem168: TTBXItem;
    TBXItem169: TTBXItem;
    TBXItem170: TTBXItem;
    TBXSubmenuItem75: TTBXSubmenuItem;
    TBXItem171: TTBXItem;
    TBXItem173: TTBXItem;
    TBXItem174: TTBXItem;
    TBXItem175: TTBXItem;
    TBXItem176: TTBXItem;
    TBXItem177: TTBXItem;
    TBXItem178: TTBXItem;
    TBXItem179: TTBXItem;
    TBXItem180: TTBXItem;
    TBXItem181: TTBXItem;
    TBXItem182: TTBXItem;
    TBXItem183: TTBXItem;
    TBXItem184: TTBXItem;
    TBXItem185: TTBXItem;
    TBXItem186: TTBXItem;
    TBXSubmenuItem60: TTBXSubmenuItem;
    TBXSubmenuItem78: TTBXSubmenuItem;
    TBXItem187: TTBXItem;
    TBXSubmenuItem79: TTBXSubmenuItem;
    TBXSubmenuItem80: TTBXSubmenuItem;
    TBXSubmenuItem81: TTBXSubmenuItem;
    TBXItem172: TTBXItem;
    TBXItem188: TTBXItem;
    TBXItem189: TTBXItem;
    TBXItem190: TTBXItem;
    TBXItem191: TTBXItem;
    TBXItem192: TTBXItem;
    TBXItem193: TTBXItem;
    TBXSubmenuItem82: TTBXSubmenuItem;
    TBXItem194: TTBXItem;
    TBXItem195: TTBXItem;
    TBXSubmenuItem83: TTBXSubmenuItem;
    TBXItem196: TTBXItem;
    TBXItem197: TTBXItem;
    TBXItem198: TTBXItem;
    TBXSubmenuItem84: TTBXSubmenuItem;
    TBXItem199: TTBXItem;
    TBXItem200: TTBXItem;
    TBXSubmenuItem85: TTBXSubmenuItem;
    menu_refe_fich_tecnicas: TTBXSubmenuItem;
    TBXItem201: TTBXItem;
    TBXItem202: TTBXItem;
    TBXItem203: TTBXItem;
    TBXItem204: TTBXItem;
    TBXItem205: TTBXItem;
    TBXItem206: TTBXItem;
    TBXItem207: TTBXItem;
    TBXSeparatorItem28: TTBXSeparatorItem;
    TBXSubmenuItem9: TTBXSubmenuItem;
    TBXItem209: TTBXItem;
    TBXItem210: TTBXItem;
    TBXItem211: TTBXItem;
    TBXItem212: TTBXItem;
    TBXItem213: TTBXItem;
    TBXItem214: TTBXItem;
    TBXItem215: TTBXItem;
    TBXItem216: TTBXItem;
    TBXItem217: TTBXItem;
    TBXItem218: TTBXItem;
    TBXSubmenuItem16: TTBXSubmenuItem;
    TBXItem219: TTBXItem;
    TBXSubmenuItem34: TTBXSubmenuItem;
    TBXSubmenuItem39: TTBXSubmenuItem;
    TBXSubmenuItem41: TTBXSubmenuItem;
    TBXItem230: TTBXItem;
    TBXItem231: TTBXItem;
    TBXItem232: TTBXItem;
    TBXItem233: TTBXItem;
    TBXItem234: TTBXItem;
    TBXItem235: TTBXItem;
    TBXSubmenuItem42: TTBXSubmenuItem;
    TBXItem240: TTBXItem;
    TBXItem241: TTBXItem;
    TBXItem242: TTBXItem;
    TBXItem243: TTBXItem;
    TBXItem244: TTBXItem;
    TBXItem245: TTBXItem;
    menu_produccion: TTBXSubmenuItem;
    acti_n1_prod_loteo: TAction;
    TBXItem246: TTBXItem;
    acti_n1_prod_plan_detallada: TAction;
    TBXItem247: TTBXItem;
    acti_n1_para_estr_organizacional: TAction;
    TBXItem248: TTBXItem;
    acti_n1_prod_oper_corte: TAction;
    acti_n1_prod_oper_costura: TAction;
    TBXItem249: TTBXItem;
    TBXItem250: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    imag_barr_usuario: TImageList;
    acti_n1_prod_estado: TAction;
    TBXItem251: TTBXItem;
    TBXItem252: TTBXItem;
    acti_n1_pers_ingreso: TAction;
    TBXItem253: TTBXItem;
    acti_n1_pers_bajas: TAction;
    acti_n1_pers_carn_diseno: TAction;
    acti_n1_pers_carn_impresion: TAction;
    TBXItem254: TTBXItem;
    TBXItem255: TTBXItem;
    acti_n1_pers_reingresos: TAction;
    acti_n1_pers_traslados: TAction;
    acti_n1_pers_cons_por_ubicacion: TAction;
    TBXItem256: TTBXItem;
    acti_n1_pers_dato_confidenciales: TAction;
    TBXItem257: TTBXItem;
    mdi_menu_referencia: TTBXPopupMenu;
    TBXItem258: TTBXItem;
    TBXItem262: TTBXItem;
    TBXItem264: TTBXItem;
    acti_actu_consultas: TAction;
    TBXItem266: TTBXItem;
    TBXItem267: TTBXItem;
    TBXItem268: TTBXItem;
    acti_n1_prod_cons_gene_fecha: TAction;
    TBXSubmenuItem49: TTBXSubmenuItem;
    TBXItem269: TTBXItem;
    acti_n1_prod_cons_busqueda: TAction;
    TBXItem270: TTBXItem;
    mdi_menu_orde_produccion: TTBXPopupMenu;
    acti_n1_prod_cons_maes_lotes: TAction;
    TBXItem259: TTBXItem;
    imag_anulado: TImageList;
    imag_finalizado: TImageList;
    acti_n1_prod_cons_maestro: TAction;
    TBXItem260: TTBXItem;
    mdi_menu_prototipos: TTBXPopupMenu;
    acti_n1_prod_trazar: TAction;
    acti_n1_prod_soli_mate_prima: TAction;
    mdi_menu_comercial: TTBXPopupMenu;
    acti_n1_pedi_expl_mate_detallada: TAction;
    menu_come_explosion: TTBXSubmenuItem;
    TBXItem261: TTBXItem;
    imag_list_materiales: TImageList;
    acti_n1_pedi_expl_mate_agru_mate_orden: TAction;
    TBXItem145: TTBXItem;
    acti_n1_pedi_expl_mate_agru_material: TAction;
    TBXItem271: TTBXItem;
    labe_conexion: TSCLDBLabel;
    acti_n1_plan_cons_orde_produccion: TAction;
    TBXItem272: TTBXItem;
    imag_ventanas: TImageList;
    tabl_pcp_opciones: TTable;
    data_pcp_opciones: TDataSource;
    pane_botones: TAdvPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    boto_info_unidades: TTBXButtonSCL;
    padr_boto_menu_Referencia: TTBXButtonSCL;
    acti_n1_prod_extender: TAction;
    acti_n1_prod_cortar: TAction;
    acti_n1_prod_liqu_corte: TAction;
    acti_n1_prod_tiqu_produccion: TAction;
    acti_n1_prod_cons_prog_linea: TAction;
    TBXSeparatorItem29: TTBXSeparatorItem;
    TBXItem273: TTBXItem;
    acti_ajus_tablas: TAction;
    SpeedButton3: TSpeedButton;
    acti_plan_Depe_procesos: TAction;
    TBXItem274: TTBXItem;
    quer_moneda: TQuery;
    tabl_configuracion: TRxMemoryData;
    data_configuracion: TDataSource;
    tabl_configuracionSIMB_MONEDA: TStringField;
    Altert_Stack: TJvDesktopAlertStack;
    Alertas: TJvDesktopAlert;
    TBXItem99: TTBXItem;
    TBXSubmenuItem2: TTBXSubmenuItem;
    TBXItem111: TTBXItem;
    TBXItem112: TTBXItem;
    TBXItem113: TTBXItem;
    acti_n1_form_pago_parametrizacion: TAction;
    acti_n1_form_pago_hora_prod_lineal: TAction;
    acti_n1_form_pago_valo_hora_prod_movil: TAction;
    TBXItem160: TTBXItem;
    acti_n1_form_pago_valo_pago_habilidad: TAction;
    acti_n1_form_pago_valo_hora_habilidad: TAction;
    acti_n1_form_pago_valo_hora_diferencial: TAction;
    acti_n1_prod_cons_avan_paquetes: TAction;
    acti_n1_cont_cons_diaria: TAction;
    TBXItem117: TTBXItem;
    TBXItem118: TTBXItem;
    acti_n1_form_pago_valo_hora_dividido: TAction;
    acti_n1_form_pago_personal: TAction;
    TBXItem114: TTBXItem;
    acti_n1_form_pago_mixto_line_dividido: TAction;
    acti_n1_cont_nove_cons_deve_grupo: TAction;
    TBXSubmenuItem3: TTBXSubmenuItem;
    TBXItem119: TTBXItem;
    TBXItem153: TTBXItem;
    acti_n1_nove_cons_deve_grup_sin_ubicacion: TAction;
    TBXItem154: TTBXItem;
    barr_estado: TPanel;
    Panel4: TPanel;
    labe_esta_estado: TLabel;
    Panel5: TPanel;
    prog_estado: TProgressBar;
    Panel6: TPanel;
    acti_n1_cali_defectos: TAction;
    TBXItem161: TTBXItem;
    acti_n1_nove_calidad: TAction;
    TBXItem127: TTBXItem;
    acti_n1_cont_nove_defe_cons_orden: TAction;
    TBXSubmenuItem6: TTBXSubmenuItem;
    TBXSeparatorItem20: TTBXSeparatorItem;
    TBXSeparatorItem37: TTBXSeparatorItem;
    TBXSeparatorItem36: TTBXSeparatorItem;
    TBXSeparatorItem22: TTBXSeparatorItem;
    acti_n1_prod_soli_insumos: TAction;
    acti_n1_pedi_expl_mate_agrupada: TAction;
    TBXSeparatorItem16: TTBXSeparatorItem;
    TBXItem129: TTBXItem;
    jvEstilo: TJvNavPaneStyleManager;
    JvNavPanelDivider3: TJvNavPanelDivider;
    quer_elim_filtro: TQuery;
    acti_n1_plan_orde_expl_materiales: TAction;
    TBXSubmenuItem10: TTBXSubmenuItem;
    TBXItem162: TTBXItem;
    quer_inse_filtro: TQuery;
    imag_observaciones: TImageList;
    imagenes_reportes_objetos: TTBImageList;
    acti_n1_form_pago_curv_aprendizaje: TAction;
    TBXSeparatorItem24: TTBXSeparatorItem;
    TBXSubmenuItem12: TTBXSubmenuItem;
    TBXItem100: TTBXItem;
    acti_n1_form_pago_asignacion: TAction;
    mens_balon: TJvBalloonHint;
    quer_menu_adic_llamar: TQuery;
    menu_sin_clasificacion: TTBXSubmenuItem;
    imagenesDisenoVentanas: TTBImageList;
    TBXSeparatorItem39: TTBXSeparatorItem;
    boto_adic_personal: TTBXSubmenuItem;
    TBXSeparatorItem40: TTBXSeparatorItem;
    boto_adic_parametrizacion: TTBXSubmenuItem;
    TBXSeparatorItem41: TTBXSeparatorItem;
    boto_adic_form_pago: TTBXSubmenuItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    boto_adic_recursos: TTBXSubmenuItem;
    TBXSeparatorItem42: TTBXSeparatorItem;
    boto_adic_ingenieria: TTBXSubmenuItem;
    TBXSeparatorItem43: TTBXSeparatorItem;
    boto_adic_referencias: TTBXSubmenuItem;
    TBXSeparatorItem44: TTBXSeparatorItem;
    boto_adic_costos: TTBXSubmenuItem;
    TBXSeparatorItem45: TTBXSeparatorItem;
    boto_adic_comercial: TTBXSubmenuItem;
    TBXSeparatorItem46: TTBXSeparatorItem;
    boto_Adic_inventarios: TTBXSubmenuItem;
    TBXSeparatorItem47: TTBXSeparatorItem;
    boto_adic_planeacion: TTBXSubmenuItem;
    TBXSeparatorItem48: TTBXSeparatorItem;
    boto_adic_produccion: TTBXSubmenuItem;
    TBXSeparatorItem49: TTBXSeparatorItem;
    boto_adic_cont_produccion: TTBXSubmenuItem;
    TBXSeparatorItem50: TTBXSeparatorItem;
    boto_adic_herramientas: TTBXSubmenuItem;
    quer_menu_adic_ejecutar: TQuery;
    acit_n0_dise_objetos: TAction;
    TBXItem165: TTBXItem;
    acti_n1_meto_tiem_cicl_maquina: TAction;
    TBXItem208: TTBXItem;
    TBXSeparatorItem51: TTBXSeparatorItem;
    TBXItem220: TTBXItem;
    acti_n1_form_pago_bonos: TAction;
    acti_n1_form_pago_mixto_vhp_curv_aprendizaje: TAction;
    ContenedorMDI: TSCLPageControl;
    TBXSeparatorItem17: TTBXSeparatorItem;
    acti_n1_pers_sistema: TAction;
    TBXItem223: TTBXItem;
    acti_n1_refe_cata_imagenes: TAction;
    acti_n1_refe_fich_maestro: TAction;
    acti_n1_refe_fich_hoja_dise_caratula: TAction;
    acti_n1_refe_fich_hoja_diseno: TAction;
    TBXItem225: TTBXItem;
    TBXSeparatorItem52: TTBXSeparatorItem;
    acti_n1_refe_fich_espe_gene_diseno: TAction;
    TBXItem26: TTBXItem;
    acti_n1_refe_fich_espe_dise_detalles: TAction;
    TBXItem27: TTBXItem;
    acti_n1_refe_fich_espe_empaque: TAction;
    TBXItem28: TTBXItem;
    acti_n1_refe_fich_espe_construccion: TAction;
    TBXItem29: TTBXItem;
    acti_n1_refe_fich_medi_especiales: TAction;
    TBXItem226: TTBXItem;
    acti_n1_refe_fich_medi_pren_terminada: TAction;
    TBXItem227: TTBXItem;
    acti_n1_refe_fich_espe_presentacion: TAction;
    TBXItem228: TTBXItem;
    acti_n1_refe_fich_espe_materiales: TAction;
    acti_n1_refe_fich_insu_fabricacion: TAction;
    acti_n1_refe_fich_insu_empaque: TAction;
    TBXSeparatorItem53: TTBXSeparatorItem;
    TBXSeparatorItem54: TTBXSeparatorItem;
    acti_n2_prot_fich_maestro: TAction;
    TBXSubmenuItem31: TTBXSubmenuItem;
    TBXItem224: TTBXItem;
    TBXSeparatorItem55: TTBXSeparatorItem;
    TBXItem238: TTBXItem;
    TBXItem239: TTBXItem;
    TBXItem265: TTBXItem;
    TBXItem275: TTBXItem;
    TBXItem276: TTBXItem;
    TBXItem277: TTBXItem;
    TBXItem278: TTBXItem;
    TBXItem279: TTBXItem;
    TBXItem280: TTBXItem;
    acti_n2_prot_fich_dise_caratula: TAction;
    acti_n2_prot_fich_hoja_diseno: TAction;
    acti_n2_prot_fich_espe_gene_diseno: TAction;
    acti_n2_prot_fich_espe_dise_detalles: TAction;
    acti_n2_prot_fich_espe_empaque: TAction;
    acti_n2_prot_fich_espe_Construccion: TAction;
    acti_n2_prot_fich_medi_especiales: TAction;
    acti_n2_prot_fich_espe_pren_terminada: TAction;
    acti_n2_prot_fich_espe_presentacion: TAction;
    acti_n2_prot_fich_espe_materiales: TAction;
    acti_n2_prot_fich_espe_insu_fabricacion: TAction;
    acti_n2_prot_fich_espe_insu_empaque: TAction;
    acti_n1_form_pago: TAction;
    TBXItem284: TTBXItem;
    acti_n1_form_pago_asig_bonos: TAction;
    TBXItem285: TTBXItem;
    acti_n1_cont_nove_pago_bruto: TAction;
    TBXItem286: TTBXItem;
    acti_n1_cont_nove_efic_diaria: TAction;
    TBXItem287: TTBXItem;
    TBXSubmenuItem35: TTBXSubmenuItem;
    TBXSeparatorItem57: TTBXSeparatorItem;
    acti_n1_cont_curv_apre_operario: TAction;
    TBXItem221: TTBXItem;
    TBXSeparatorItem56: TTBXSeparatorItem;
    imag_reportes_32: TImageList;
    acti_n1_pers_cons_hist_movimientos: TAction;
    TBXItem222: TTBXItem;
    acti_n1_pers_cons_cont_por_vencerse: TAction;
    quer_sistema: TQuery;
    TBXItem288: TTBXItem;
    TBXSeparatorItem58: TTBXSeparatorItem;
    acti_n1_prod_dise_tiquetes: TAction;
    acti_n1_prod_lanz_sin_pedido: TAction;
    TBXSubmenuItem36: TTBXSubmenuItem;
    TBXItem289: TTBXItem;
    TBXItem290: TTBXItem;
    TBXSubmenuItem37: TTBXSubmenuItem;
    TBXItem291: TTBXItem;
    TBXItem292: TTBXItem;
    TBXItem293: TTBXItem;
    acti_n1_prod_tiqu_impr_distribucion: TAction;
    acti_n1_prod_tiqu_impr_tiqu_produccion: TAction;
    TBXSeparatorItem59: TTBXSeparatorItem;
    TBXItem163: TTBXItem;
    acti_n1_cont_nove_indi_eficiencia: TAction;
    TBXItem164: TTBXItem;
    Acti_N1_Pers_Por_Estado: TAction;
    TBXItem263: TTBXItem;
    Acti_N1_Pers_Por_Antiguedad: TAction;
    TBXItem294: TTBXItem;
    Acti_N1_Pers_Por_Cargos: TAction;
    TBXItem295: TTBXItem;
    Acti_N1_Pers_Por_Turnos: TAction;
    TBXItem296: TTBXItem;
    Acti_N1_Pers_Por_Nive_Salariales: TAction;
    TBXItem297: TTBXItem;
    Acti_N1_Maqu_Ingresos: TAction;
    TBXSubmenuItem26: TTBXSubmenuItem;
    TBXItem298: TTBXItem;
    Acti_N1_Maqu_Bajas: TAction;
    TBXItem299: TTBXItem;
    Acti_N1_Maqu_Antiguedad: TAction;
    TBXItem300: TTBXItem;
    Acti_N1_Maqu_Traslados: TAction;
    TBXItem301: TTBXItem;
    Acti_N1_Acce_ingresos: TAction;
    TBXSubmenuItem22: TTBXSubmenuItem;
    TBXItem302: TTBXItem;
    Acti_N1_Acce_Bajas: TAction;
    Acti_N1_Acce_Antiguedad: TAction;
    TBXItem303: TTBXItem;
    TBXItem304: TTBXItem;
    Acti_N1_Acce_Traslados: TAction;
    TBXItem305: TTBXItem;
    TBXSubmenuItem21: TTBXSubmenuItem;
    TBXItem306: TTBXItem;
    TBXItem307: TTBXItem;
    TBXItem308: TTBXItem;
    TBXItem309: TTBXItem;
    TBXItem310: TTBXItem;
    TBXItem311: TTBXItem;
    Acti_N1_Pers_Polifuncionalidad: TAction;
    TBXItem312: TTBXItem;
    FlatHint1: TFlatHint;
    TBItem1: TTBItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EventosAplicacionException(Sender: TObject; E: Exception);

		//Conexión base de datos
    procedure acti_n0_inic_conexionExecute(Sender: TObject);
    procedure acti_n0_fina_conexionExecute(Sender: TObject);
    procedure data_base_pcpAfterConnect(Sender: TObject);
    procedure actu_boto_conexion(Sender: TObject);
    procedure data_base_pcpAfterDisconnect(Sender: TObject);
    procedure acti_n0_salirExecute(Sender: TObject);

		//Parametrización Empresa
    procedure acti_n1_para_empresaExecute(Sender: TObject);
    procedure acti_n1_para_paisesExecute(Sender: TObject);
    procedure Acti_n1_para_departamentosExecute(Sender: TObject);
    procedure Acti_n1_para_municipiosExecute(Sender: TObject);
    procedure Acti_n1_para_areasExecute(Sender: TObject);
    procedure acti_n1_para_plantasExecute(Sender: TObject);
    procedure Acti_n1_para_seccionesExecute(Sender: TObject);
    procedure Acti_n1_para_bodegasExecute(Sender: TObject);
    procedure Acti_n1_para_turnosExecute(Sender: TObject);
    procedure Acti_n1_para_Centro_CostosExecute(Sender: TObject);
    procedure Acti_n1_para_CargosExecute(Sender: TObject);
    procedure Acti_n1_para_tipo_contratoExecute(Sender: TObject);
    procedure Acti_n1_para_nive_salarialExecute(Sender: TObject);
    procedure Acti_n1_para_improductivosExecute(Sender: TObject);
    procedure Acti_n1_para_sub_improductivosExecute(Sender: TObject);
    procedure Acti_n1_para_prestacionesExecute(Sender: TObject);

		//Personal
    procedure Acti_n1_pers_maestroExecute(Sender: TObject);

    //Referencias
    procedure Acti_n1_para_lineasExecute(Sender: TObject);
    procedure acti_n1_refe_marcasExecute(Sender: TObject);
    procedure acti_n1_refe_lineasExecute(Sender: TObject);
    procedure acti_n1_refe_edadesExecute(Sender: TObject);
    procedure acti_n1_refe_gruposExecute(Sender: TObject);
    procedure acti_n1_refe_estilosExecute(Sender: TObject);
    procedure acti_n1_refe_estadosExecute(Sender: TObject);
    procedure acti_n1_refe_temporadasExecute(Sender: TObject);
    procedure acti_n1_refe_grup_tallasExecute(Sender: TObject);
    procedure acti_n1_refe_lavadosExecute(Sender: TObject);
    procedure acti_n1_refe_bordadosExecute(Sender: TObject);
    procedure acti_n1_refe_estampadosExecute(Sender: TObject);
    procedure acti_n1_refe_coloresExecute(Sender: TObject);
    procedure acti_n1_refe_maestroExecute(Sender: TObject);
    procedure acti_n1_refe_grup_coloresExecute(Sender: TObject);
    procedure acti_n1_refe_sub_grup_coloresExecute(Sender: TObject);
    procedure acti_n1_refe_tono_coloresExecute(Sender: TObject);

 		//Maquinaria
    procedure acti_n1_maqu_gruposExecute(Sender: TObject);
    procedure acti_n1_maqu_tiposExecute(Sender: TObject);
    procedure acti_n1_maqu_familiasExecute(Sender: TObject);
    procedure acti_n1_maqu_marcasExecute(Sender: TObject);
    procedure acti_n1_maqu_tipo_movimientosExecute(Sender: TObject);
    procedure acti_n1_maqu_ingresoExecute(Sender: TObject);
    procedure acti_n1_maqu_tipo_puntadaExecute(Sender: TObject);
    procedure actualizarAcciones(Sender: TObject);
    procedure doHandAcciones(Sender: TObject);
    procedure padr_acti_imag_grandesExecute(Sender: TObject);
    procedure acti_n1_refe_tipo_variacionesExecute(Sender: TObject);
    procedure acti_n2_mate_gruposExecute(Sender: TObject);
    procedure acti_n2_mate_subgruposExecute(Sender: TObject);
    procedure acti_n2_mate_referenciasExecute(Sender: TObject);
    procedure acti_n2_mate_unid_medidaExecute(Sender: TObject);
    procedure acti_n2_insu_gruposExecute(Sender: TObject);
    procedure acti_n2_insu_subgruposExecute(Sender: TObject);
    procedure acti_n2_insu_referenciasExecute(Sender: TObject);
    procedure acti_n1_refe_camb_estadoExecute(Sender: TObject);
    procedure acti_n1_meto_procesosExecute(Sender: TObject);
    procedure acti_n1_meto_comp_gruposExecute(Sender: TObject);
    procedure acti_n1_meto_comp_variacionesExecute(Sender: TObject);
    procedure acti_n1_meto_oper_tiposExecute(Sender: TObject);
    procedure acti_n0_opcionesExecute(Sender: TObject);
    procedure acti_n1_meto_elem_cstExecute(Sender: TObject);
    procedure acti_n1_meto_esta_cstExecute(Sender: TObject);
    procedure actualizarAccionesVentanas(Sender: TObject);
    procedure acti_vent_minimizarExecute(Sender: TObject);
    procedure acti_vent_restaurarExecute(Sender: TObject);
    procedure acti_vent_cerrarExecute(Sender: TObject);
    procedure acti_vent_cascadaExecute(Sender: TObject);
    procedure acti_vent_mosa_horizontalExecute(Sender: TObject);
    procedure acti_vent_mosa_verticalExecute(Sender: TObject);
    procedure Wind_listUpdate(Sender: TObject);
    procedure acti_n1_meto_comp_secu_operacionesExecute(Sender: TObject);
    procedure acti_n1_maqu_tipo_caracteristicasExecute(Sender: TObject);
    procedure Acti_n1_pers_movi_tipo_documentoExecute(Sender: TObject);
    procedure acti_n1_meto_refe_secu_operacionesExecute(Sender: TObject);
    procedure acti_n1_meto_refe_secu_oper_corteExecute(Sender: TObject);
    procedure acti_n1_refe_list_materialesExecute(Sender: TObject);
    procedure Acti_n1_acce_gruposExecute(Sender: TObject);
    procedure Acti_n1_acce_tiposExecute(Sender: TObject);
    procedure Acti_n1_acce_tipo_caracteristicaExecute(Sender: TObject);
    procedure Acti_n1_Acce_IngresoExecute(Sender: TObject);
    procedure acti_n2_come_zonasExecute(Sender: TObject);
    procedure acti_n2_come_vendedoresExecute(Sender: TObject);
    procedure acti_n2_come_clientesExecute(Sender: TObject);
    procedure acti_n2_come_prio_pedidosExecute(Sender: TObject);
    procedure acti_n2_come_capt_pedidosExecute(Sender: TObject);
    procedure acti_n2_come_pedi_cons_generalExecute(Sender: TObject);
    procedure acti_n1_plan_ordenesExecute(Sender: TObject);
    procedure Acti_n1_para_firmasExecute(Sender: TObject);
    procedure Acti_n1_para_prioridadesExecute(Sender: TObject);
    procedure Acti_n1_cons_pers_generalExecute(Sender: TObject);
    procedure Acti_n1_pers_tipo_movimientoExecute(Sender: TObject);
    procedure acti_n1_prod_ordenesExecute(Sender: TObject);
    procedure acti_n1_prod_etapasExecute(Sender: TObject);
    procedure Acti_n1_cons_pers_historialExecute(Sender: TObject);
    procedure Acti_n1_maqu_cons_generalExecute(Sender: TObject);
    procedure Acti_n1_maqu_cons_trasladosExecute(Sender: TObject);
    procedure Acti_n1_maqu_cons_plantasExecute(Sender: TObject);
    procedure EventosAplicacionActiveControlChange(Sender: TObject);
    procedure acti_n1_prod_depe_etapasExecute(Sender: TObject);
    procedure acti_n1_prod_etap_avanceExecute(Sender: TObject);
    procedure acti_n1_prod_orde_trazoExecute(Sender: TObject);
    procedure data_base_securityBeforeConnect(Sender: TObject);
    procedure doLlamarUsuarios(Sender: TObject);
    procedure data_base_pcpBeforeConnect(Sender: TObject);
    procedure acti_n1_prod_paqu_tiposExecute(Sender: TObject);
    procedure acti_n1_prod_paqu_tipo_procesoExecute(Sender: TObject);
    procedure acti_n1_prod_orde_dist_paqu_corteExecute(Sender: TObject);
    procedure acti_n2_prod_expl_materialesExecute(Sender: TObject);
    procedure acti_n1_prod_pedi_asociadosExecute(Sender: TObject);
    procedure Acti_n1_acce_cons_generalExecute(Sender: TObject);
    procedure Acti_n1_acce_cons_trasladosExecute(Sender: TObject);
    procedure Acti_n1_acce_cons_plantasExecute(Sender: TObject);
    procedure acti_n1_refe_espe_disenoExecute(Sender: TObject);
    procedure acti_n1_refe_espe_costuraExecute(Sender: TObject);
    procedure acti_n1_plan_matr_polifuncionalidadExecute(Sender: TObject);
    procedure acti_n1_plan_cale_produccionExecute(Sender: TObject);
    procedure acti_n1_plan_line_especialidadesExecute(Sender: TObject);
    procedure acti_n1_plan_secc_procesosExecute(Sender: TObject);
    procedure acti_n1_nove_diariasExecute(Sender: TObject);
    procedure acti_n1_cont_abonadosExecute(Sender: TObject);
    procedure acti_n1_cont_extrasExecute(Sender: TObject);
    procedure acti_n1_refe_espe_presentacionExecute(Sender: TObject);
    procedure acti_n1_refe_entrepiernasExecute(Sender: TObject);
    procedure acti_n2_come_monedasExecute(Sender: TObject);
    procedure acti_n2_come_mone_trmExecute(Sender: TObject);
    procedure acti_n2_prot_maestroExecute(Sender: TObject);
    procedure acti_n2_prot_list_materialesExecute(Sender: TObject);
    procedure acti_n2_prot_list_oper_costuraExecute(Sender: TObject);
    procedure acti_n2_prot_camb_estadoExecute(Sender: TObject);
    procedure acti_n0_segu_usua_permisosExecute(Sender: TObject);
    procedure doPermisosMenu(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure data_base_pcpBeforeDisconnect(Sender: TObject);
    procedure acti_n0_segu_crea_usuariosExecute(Sender: TObject);
    procedure AccionesMenusExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure acti_n0_acce_directosExecute(Sender: TObject);
    procedure doInicializarAccesos(Sender: TObject);
    procedure barr_accesosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure barr_accesosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure barr_accesosButtonClick(Sender: TObject; Index: Integer);
    procedure boto_carp_nuevaClick(Sender: TObject);
    procedure boto_carp_eliminarClick(Sender: TObject);
    procedure boto_carp_modificarClick(Sender: TObject);
    procedure boto_acce_eliminarClick(Sender: TObject);
    procedure barr_accesosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure acti_n2_come_comp_envioExecute(Sender: TObject);
    procedure EventosAplicacionActiveFormChange(Sender: TObject);
    procedure acti_n0_segu_camb_contrasenaExecute(Sender: TObject);
    procedure acti_n0_usua_bloq_sesionExecute(Sender: TObject);
    procedure acti_n2_pedi_expl_mate_pedidoExecute(Sender: TObject);
    procedure Relo_actualizadorTimer(Sender: TObject);
    procedure acti_n2_pedi_expl_materialesExecute(Sender: TObject);
    procedure acti_n2_come_pedi_cons_por_clienteExecute(Sender: TObject);
    procedure acti_n1_meto_punt_controlExecute(Sender: TObject);
    procedure acti_n1_prod_loteoExecute(Sender: TObject);
    procedure acti_n1_prod_plan_detalladaExecute(Sender: TObject);
    procedure acti_n1_para_estr_organizacionalExecute(Sender: TObject);
    procedure acti_n1_prod_oper_corteExecute(Sender: TObject);
    procedure acti_n1_prod_estadoExecute(Sender: TObject);
    procedure acti_n1_pers_ingresoExecute(Sender: TObject);
    procedure acti_n1_pers_bajasExecute(Sender: TObject);
    procedure acti_n1_pers_trasladosExecute(Sender: TObject);
    procedure acti_n1_pers_cons_por_ubicacionExecute(Sender: TObject);
    procedure acti_n1_pers_dato_confidencialesExecute(Sender: TObject);
    procedure acti_n1_prod_oper_costuraExecute(Sender: TObject);
    procedure acti_actu_consultasExecute(Sender: TObject);
    procedure acti_n1_prod_cons_gene_fechaExecute(Sender: TObject);
    procedure acti_n1_prod_cons_busquedaExecute(Sender: TObject);
    procedure acti_n1_prod_cons_maes_lotesExecute(Sender: TObject);
    procedure acti_n1_prod_cons_maestroExecute(Sender: TObject);
    procedure acti_n1_prod_trazarExecute(Sender: TObject);
    procedure acti_n1_prod_soli_mate_primaExecute(Sender: TObject);
    procedure acti_n1_pedi_expl_mate_detalladaExecute(Sender: TObject);
    procedure acti_n1_pedi_expl_mate_agru_mate_ordenExecute(Sender: TObject);
    procedure acti_n1_pedi_expl_mate_agru_materialExecute(Sender: TObject);
    procedure acti_n1_plan_cons_orde_produccionExecute(
      Sender: TObject);
    procedure acti_n1_prod_extenderExecute(Sender: TObject);
    procedure acti_n1_prod_cortarExecute(Sender: TObject);
    procedure acti_n1_prod_liqu_corteExecute(Sender: TObject);
    procedure acti_n1_prod_tiqu_produccionExecute(Sender: TObject);
    procedure acti_n1_prod_cons_prog_lineaExecute(Sender: TObject);
    procedure acti_ajus_tablasExecute(Sender: TObject);
    procedure acti_plan_Depe_procesosExecute(Sender: TObject);
    procedure acti_n1_form_pago_parametrizacionExecute(Sender: TObject);
    procedure acti_n1_form_pago_hora_prod_linealExecute(Sender: TObject);
    procedure acti_n1_form_pago_valo_hora_prod_movilExecute(Sender: TObject);
    procedure acti_n1_form_pago_valo_pago_habilidadExecute(
      Sender: TObject);
    procedure acti_n1_form_pago_valo_hora_habilidadExecute(
      Sender: TObject);
    procedure acti_n1_form_pago_valo_hora_diferencialExecute(
      Sender: TObject);
    procedure acti_n1_prod_cons_avan_paquetesExecute(Sender: TObject);
    procedure acti_n1_cont_cons_diariaExecute(Sender: TObject);
    procedure acti_n1_form_pago_valo_hora_divididoExecute(Sender: TObject);
    procedure acti_n1_form_pago_personalExecute(Sender: TObject);
    procedure acti_n1_form_pago_mixto_line_divididoExecute(Sender: TObject);
    procedure acti_n1_cont_nove_cons_deve_grupoExecute(Sender: TObject);
    procedure acti_n1_nove_cons_deve_grup_sin_ubicacionExecute(Sender: TObject);
    procedure acti_n1_cali_defectosExecute(Sender: TObject);
    procedure acti_n1_nove_calidadExecute(Sender: TObject);
    procedure acti_n1_cont_nove_defe_cons_ordenExecute(Sender: TObject);
    procedure acti_n1_prod_soli_insumosExecute(Sender: TObject);
    procedure acti_n1_pedi_expl_mate_agrupadaExecute(Sender: TObject);
    procedure acti_n1_plan_orde_expl_materialesExecute(Sender: TObject);
    procedure acti_n1_pers_carn_disenoExecute(Sender: TObject);
    procedure acti_n1_pers_carn_impresionExecute(Sender: TObject);
    procedure acti_n1_form_pago_curv_aprendizajeExecute(Sender: TObject);
    procedure acti_n1_form_pago_asignacionExecute(Sender: TObject);
    procedure doLlamarMenusAdicionales(Sender: TObject);
    procedure acti_Conf_menu_adicional(Sender: TObject);
    procedure TBXItem163Click(Sender: TObject);
    procedure acit_n0_dise_objetosExecute(Sender: TObject);
    procedure acti_n1_meto_tiem_cicl_maquinaExecute(Sender: TObject);
    procedure acti_n1_form_pago_bonosExecute(Sender: TObject);
    procedure acti_n1_form_pago_mixto_vhp_curv_aprendizajeExecute(
      Sender: TObject);
    procedure acti_n1_pers_sistemaExecute(Sender: TObject);
    procedure acti_n1_refe_cata_imagenesExecute(Sender: TObject);
    procedure acti_n1_refe_fich_hoja_dise_caratulaExecute(Sender: TObject);
    procedure acti_n1_refe_fich_maestroExecute(Sender: TObject);
    procedure acti_n1_refe_fich_hoja_disenoExecute(Sender: TObject);
    procedure acti_n1_refe_fich_espe_gene_disenoExecute(Sender: TObject);
    procedure acti_n1_refe_fich_espe_dise_detallesExecute(Sender: TObject);
    procedure acti_n1_refe_fich_espe_empaqueExecute(Sender: TObject);
    procedure acti_n1_refe_fich_espe_construccionExecute(Sender: TObject);
    procedure acti_n1_refe_fich_medi_especialesExecute(Sender: TObject);
    procedure acti_n1_refe_fich_medi_pren_terminadaExecute(
      Sender: TObject);
    procedure acti_n1_refe_fich_espe_presentacionExecute(Sender: TObject);
    procedure acti_n2_prot_fich_maestroExecute(Sender: TObject);
    procedure acti_n2_prot_fich_dise_caratulaExecute(Sender: TObject);
    procedure acti_n2_prot_fich_hoja_disenoExecute(Sender: TObject);
    procedure acti_n2_prot_fich_espe_gene_disenoExecute(Sender: TObject);
    procedure acti_n2_prot_fich_espe_dise_detallesExecute(Sender: TObject);
    procedure acti_n2_prot_fich_espe_empaqueExecute(Sender: TObject);
    procedure acti_n2_prot_fich_espe_ConstruccionExecute(Sender: TObject);
    procedure acti_n2_prot_fich_medi_especialesExecute(Sender: TObject);
    procedure acti_n2_prot_fich_espe_pren_terminadaExecute(
      Sender: TObject);
    procedure acti_n2_prot_fich_espe_presentacionExecute(Sender: TObject);
    procedure acti_n1_form_pagoExecute(Sender: TObject);
    procedure acti_n1_form_pago_asig_bonosExecute(Sender: TObject);
    procedure acti_n1_cont_nove_pago_brutoExecute(Sender: TObject);
    procedure acti_n1_cont_nove_efic_diariaExecute(Sender: TObject);
    procedure acti_n1_cont_curv_apre_operarioExecute(Sender: TObject);
    procedure TBXItem153Click(Sender: TObject);
    procedure acti_n1_pers_reingresosExecute(Sender: TObject);
    procedure acti_n1_pers_cons_hist_movimientosExecute(Sender: TObject);
    procedure acti_n1_pers_cons_cont_por_vencerseExecute(Sender: TObject);
    procedure acti_n1_prod_dise_tiquetesExecute(Sender: TObject);
    procedure TBXItem289Click(Sender: TObject);
    procedure acti_n1_prod_lanz_sin_pedidoExecute(Sender: TObject);
    procedure acti_n1_prod_tiqu_impr_distribucionExecute(Sender: TObject);
    procedure acti_n1_prod_tiqu_impr_tiqu_produccionExecute(
      Sender: TObject);
    procedure acti_n1_cont_nove_indi_eficienciaExecute(Sender: TObject);
    procedure Acti_N1_Pers_Por_EstadoExecute(Sender: TObject);
    procedure Acti_N1_Pers_Por_AntiguedadExecute(Sender: TObject);
    procedure Acti_N1_Pers_Por_CargosExecute(Sender: TObject);
    procedure Acti_N1_Pers_Por_TurnosExecute(Sender: TObject);
    procedure Acti_N1_Pers_Por_Nive_SalarialesExecute(Sender: TObject);
    procedure Acti_N1_Maqu_IngresosExecute(Sender: TObject);
    procedure Acti_N1_Maqu_BajasExecute(Sender: TObject);
    procedure Acti_N1_Maqu_AntiguedadExecute(Sender: TObject);
    procedure Acti_N1_Maqu_TrasladosExecute(Sender: TObject);
    procedure Acti_N1_Acce_ingresosExecute(Sender: TObject);
    procedure Acti_N1_Acce_BajasExecute(Sender: TObject);
    procedure Acti_N1_Acce_AntiguedadExecute(Sender: TObject);
    procedure Acti_N1_Acce_TrasladosExecute(Sender: TObject);
{    procedure Acti_InglesExecute(Sender: TObject);
    procedure Acti_EspanolExecute(Sender: TObject);
    procedure Acti_FrancesExecute(Sender: TObject);
    procedure Acti_ItalianoExecute(Sender: TObject);
    procedure Acti_AlemanExecute(Sender: TObject);
    procedure Acti_PortuguesExecute(Sender: TObject);}
    procedure Acti_Language(Sender: TObject);
    procedure Acti_N1_Pers_PolifuncionalidadExecute(Sender: TObject);
    procedure TBXAboutClick(Sender: TObject);
  private
    { Private declarations }
    var_Aplicacion_Inicializada : Boolean;
    var_curr_acceso : tjvOutlookBarButton;
    var_acce_adic_llamados      : Boolean;
    Procedure EnterXTab(var Msg: TMsg; var Handled: Boolean);
    Procedure doInicializarAvisos;
    procedure End_Splash(var Msg: TMessage); message wm_end_splash;
  public
    { Public declarations }
    var_esta_conectando : Boolean;
    var_Saliendo        :       Boolean;
    Procedure MostrarAlerta(peTituloAlerta, peTextoAlerta : String; peTipoAlerta : Integer);
    Function EncontrarMenuPadre(peNombreMenu : String; peComponente : TTBXSubMenuItem = Nil) : TTBCustomItem;
    Procedure DoOutLookBarCustomDraw(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
        AStage: TJvOutlookBarCustomDrawStage; AIndex: integer; ADown,  AInside: boolean; var DefaultDraw:boolean);

  end;

var
  _fMDI: T_fMDI;
  h1 : THandle;

Const
        cos_inicio_pcp  = 'pcpmasterkey';
        cos_alia_roles = 'SOFTCONF';
        cos_alia_usuarios = 'SEGURIDAD_SOFTCONF';


implementation

uses
  //Version 4.0
  _func_varias, _func_pcp, n0_cont_entrada, MensajesSCL, _vari_pcp, _cons_colores, _func_db,

  //Parametrización Empresa
  n1_para_empresas, un1_para_empresas1, UN1_Para_Paises, un1_para_paises1,
  UN1_Para_Departamentos, UN1_Para_Departamentos1, UN1_Para_Municipios, UN1_Para_Municipios1,
  UN1_Para_Areas, UN1_Para_Areas1, n1_para_plantas, UN1_para_plantas1,
  UN1_Para_Secciones, UN1_Para_Secciones1, UN1_referencias, un1_referenciasb,
  UN1_Para_Bodegas, UN1_Para_Bodegas1, UN1_Para_Turnos, UN1_Para_Turnos1,
  UN1_Para_Cent_Costos, UN1_Para_Cent_Costos1, UN1_Para_Cargos, UN1_Para_Cargos1,
  UN1_Para_Tipo_Contrato, UN1_Para_Tipo_Contrato1, UN1_Para_Nive_Salariales, UN1_Para_Nive_Salariales1,
  UN1_Pers_Prestaciones1, UN1_Para_Improductivos, UN1_Para_Improductivos1,
  UN1_Para_Sub_Improductivos, UN1_Para_Sub_Improductivos1, UN1_Para_Lineas, UN1_Para_Lineas1,
  UN1_Para_Colo_Grupos, UN1_Para_Colo_Grupos1, Un1_Para_Colo_Sub_Grupos, Un1_Para_Colo_Sub_Grupos1,
  UN1_Para_Colo_Tonos, UN1_Para_Colo_Tonos1,

  //Referencias
  un1_refe_edades, un1_refe_edades1, un1_refe_grupos, un1_refe_grupos1,
  un1_refe_estilos, un1_refe_estilos1, un1_refe_estados, un1_refe_estados1,
  un1_refe_temporadas, un1_refe_temporadas1, un1_refe_grup_tallas, un1_refe_grup_tallas1,
  un1_refe_lavados, un1_refe_lavados1, un1_refe_bordados, un1_refe_bordados1,
  un1_refe_estampados, un1_refe_estampados1, un1_refe_colores, un1_refe_colores1,
  un1_refe_marcas, un1_refe_marcas1, un1_refe_lineas, un1_refe_lineas1,

  //Maquinaria
  un1_maqu_grupos, un1_maqu_grupos1, un1_maqu_tipos, un1_maqu_tipos1,
  un1_maqu_familias, un1_maqu_familias1, un1_maqu_marcas, un1_maqu_marcas1,
  un1_maqu_tipo_movimiento, un1_maqu_tipo_movimiento1, un1_maqu_ingreso, un1_maqu_ingreso1,
  un1_maqu_tipo_puntada, un1_maqu_tipo_puntada1, un1_maqu_traslados, un1_maqu_traslados1,
  un1_maqu_bajas, un1_maqu_bajas1, un1_maqu_reingresos, un1_maqu_reingresos1,
  un1_maqu_cons_rela_ingr_inventario,

  //Personal
  UN1_Pers_Ingreso, UN1_Pers_Ingreso1, _vent_child,
  un1_refe_tipo_variaciones, un1_refe_tipo_variaciones1, un1_mate_grupos,
  un1_mate_grupos1, un1_mate_subgrupos, un1_mate_subgrupos1,
  un1_mate_referencias, un1_mate_referencias1, un1_mate_unid_medida,
  un1_mate_unid_medida1, un1_insu_grupos, un1_insu_grupos1,
  un1_insu_subgrupos, un1_insu_subgrupos1, un1_insu_referencias,
  un1_insu_referencias1,  un1_meto_comp_grupos, un1_meto_comp_grupos1, un1_meto_procesos,
  un1_meto_procesos1, un1_meto_comp_variaciones, un1_meto_comp_variaciones1,
  un1_meto_oper_cost_tipos, Un1_meto_oper_cost_tipos1, un0_opciones,
  un1_meto_elem_cst, un1_meto_elem_cst1, un1_meto_estandar,
  un1_meto_estandar1, un1_refe_camb_estado, un1_meto_comp_list_operaciones,
  UN1_Para_Tipo_Caracteristicas, UN1_Para_Tipo_Caracteristicas1,
  UN1_Pers_Movi_Tipo_Documento, UN1_Pers_Movi_Tipo_Documento1,
  un1_meto_refe_list_operaciones,
  un1_refe_list_materiales, un1_meto_refe_list_oper_corte, UN1_Acce_Grupos,
  UN1_Acce_Grupos1, UN1_Acce_Tipos, UN1_Acce_Tipos1,
  UN1_Acce_Caracteristicas, UN1_Acce_Caracteristicas1, UN1_Acce_Ingreso,
  UN1_Acce_Ingreso1, un2_come_clientes, un2_come_clientes1,
  un2_come_pedidos, un2_come_pedidos1, un2_come_prio_pedidos,
  un2_come_prio_pedidos1, un2_come_vendedores, un2_come_zonas,
  un2_come_zonas2, un2_come_vendedores2, un2_come_pedi_cons_general,
  un2_come_pedi_planeacion, UN1_Para_Firmas, UN1_Para_Firmas1,
  UN1_Para_Prioridades, UN1_Para_Prioridades1, UCN1_Pers_General,
  Un1_Pers_Tipo_Movimientos, Un1_Pers_Tipo_Movimientos1,
  UCN1_Pers_Historial, UCN1_Maqu_General,
  UCN1_Maqu_Traslados, UCN1_Maqu_Cons_Plantas, 
  un1_prod_paqu_tipos, un1_prod_paqu_tipos1, 
  _cons_pcp, 
  UCN1_Acce_General, UCN1_Acce_Traslados, UCN1_Acce_Cons_Plantas,
  un2_pers_matr_polifuncionalidad, un1_plan_cale_produccion,
  un1_plan_line_especialidades, un1_plan_secc_procesos, un1_cont_abonados,
  un1_cont_abonados1, un1_cont_nove_diar_costura, un1_cont_hora_extras,
  un1_cont_hora_extras1,
  un1_refe_entrepiernas, un1_refe_entrepiernas1, un1_para_monedas,
  un1_para_monedas1, un1_para_mone_trm, un1_para_mone_trm1, un2_prototipos,
  un2_prototipos1, un2_prot_list_materiales, un2_prot_list_oper_costura,
  un2_prot_camb_estado, un0_usua_permisos, un0_usua_mantenimiento,
  un0_acce_directos, un2_come_comp_envio, un2_come_comp_envio1,
  un0_usua_camb_contrasena, un0_usua_bloq_sesion,
  un2_come_pedi_explosion,
  un2_come_pedi_cons_por_cliente, un1_inge_punt_control,
  un1_inge_punt_control1, un1_prod_loteo, un1_prod_plan_detallada,
  un1_para_estructura, un1_prod_oper_corte, un1_prod_estado, un1_pers_bajas,
  un1_pers_traslados2, ucn1_pers_ubicacion, un1_pers_dato_confidenciales,
  un1_prod_oper_costura, ucn1_prod_cons_gene_fechas,
  ucn1_prod_cons_gene_unidad, ucn1_prod_cons_maestro,
  ucn1_prod_cons_maes_lotes, un1_prod_orde_trazar,
  un1_prod_orde_soli_mate_prima, un1_come_pedi_expl_detallada,
  un1_come_pedi_expl_agru_mate_orde_compra,
  un1_come_pedi_expl_agru_material, ucn1_prod_cons_pedidos,
  un1_prod_orde_extender, un1_prod_orde_corte, un1_prod_orde_liqu_corte,
  un1_prod_orde_dist_paquetes, ucn1_prod_cons_prog_linea,
  un1_plan_depe_procesos, un1_form_pago_parametrizacion,
  un1_form_pago_valo_hora_produccion, un1_form_pago_valo_hora_prod_movil,
  un1_form_pago_valo_hora_habilidad, un1_form_pago_valo_hora_habilidad1,
  un1_form_pago_valo_habilidad, un1_form_pago_diferencial,
  un1_form_pago_diferencial1, ucn1_prod_avan_tiquetes,
  ucn1_cont_nove_diarias, un1_form_pago_dividido, un1_form_pago_dividido1,
  un1_form_pago_personal, un1_form_pago_mixto, ucn1_cont_nove_pago_grupal,
  ucn1_cont_nove_pago_grup_sin_ubicacion, un1_cali_defectos,
  un1_cali_defectos1, un1_cont_nove_defectos,
  ucn1_cont_nove_defe_orde_produccion, un1_prod_orde_soli_inusmos,
  un1_come_pedi_expl_agrupada, un1_plan_orde_expl_materiales,
  un1_come_pedi_expl_vari_pedidos, un1_pers_dise_carne1,
  un1_pers_dise_carne, un1_pers_impr_carne, un1_form_pago_curv_aprendizaje,
  un1_form_pago_curv_aprendizaje1, un1_form_pago_personal1,
  un0_conf_cons_lista, un0_conf_editor, 
  un0_dise_consultas, uInformesRL, un1_prod_dise_tiquetes1, un0_dise_child,
  un1_meto_tiem_cicl_maquina, un1_meto_tiem_cicl_maquina1,
  un1_pers_ingreso_3, un1_form_pago_bonos, un1_form_pago_bonos1,
  un1_pers_sistema, un1_refe_cata_imagenes, un1_refe_fich_maestro,
  un1_refe_fich_funciones,
  un1_refe_00_maestro, un1_refe_fich_maestro_vista,
  un1_refe_fich_00Seleccion, UN1_Pers_Reingresos1,
  un2_prot_fich_maestro_vista,
  //RC20.13
  un1_pers_form_pago, un1_pers_form_pago1, un1_cont_hora_extr_rangos,
  un1_pers_form_pago_bonos, un1_pers_form_pago_bonos1,
  ucn1_cont_nove_pago_bruto, ucn1_cont_nove_efic_diario,
  un1_cont_prod_curv_apre_operario, ucn1_cont_nove_efic_grupo,
  un1_pers_hist_movimientos, un1_pers_cons_venc_contrato,
  un1_prod_dise_tiquetes, ucn1_prod_unid_producidas,
  un1_prod_lanz_orde_sin_pedido, un1_prod_orde_dist_paqu_imprimir,
  uwn1_prod_fabr_impr_tiquetes, un1_cont_prod_cons_indi_eficiencias,
  UFCN1_Pers_Estados, UFCN1_Pers_Por_Antiguedad, UFCN1_Pers_Por_Cargos,
  UFCN1_Pers_Por_Turnos, UFCN1_Pers_Por_Nive_Salarial, UFCN1_Recu_Ingresos,
  UFCN1_Recu_Bajas, UFCN1_Recu_Antiguedad, UFCN1_Recu_Traslados,
  UFCN1_Acce_Ingresos, UFCN1_Acce_Bajas, UFCN1_Acce_Antiguedad,
  UFCN1_Acce_Traslados, _Traductor, UN1_Pers_Polifuncionalidad1;

  {usesl}

{$R *.DFM}

{****************************************************************
Procedimiento   : EnterXTab
Objetivo        : Enter por tab
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2003
Versión         : pcp4000
*****************************************************************}
Procedure T_fMDI.EnterXTab(var Msg: TMsg; var Handled: Boolean);
Var
	actual : TWinControl;
  dpd : Boolean;
Begin
    If (Screen.ActiveControl=Nil) then Exit;
    Dpd:=False;
    Actual := Screen.ActiveControl;
    //Si desea saber el nombre de un control y no lo encuentra,
    //habilite la siguiente linea:
    //labe_esta_estado.Caption := actual.classname;
    //Controles que se excluyen
    If (
          (UpperCase(Actual.ClassName) = 'TADVSTRINGGRID')
       or (UpperCase(Actual.ClassName) = 'TADVCOLUMNGRID')
       or (UpperCase(Actual.ClassName) = 'TSCLCOLUMNGRID')
       or (UpperCase(Actual.ClassName) = 'TDXDBGRID')
       or (UpperCase(Actual.ClassName) = 'TSCLDBGRID')
       or (UpperCase(Actual.ClassName) = 'TDXDBMEMO')
       or (UpperCase(Actual.ClassName) = 'TBITBTN')
       or (UpperCase(Actual.ClassName) = 'TBUTTON')
       or (UpperCase(Actual.ClassName) = 'TSCLBUTTON')
       or (UpperCase(Actual.ClassName) = 'TGRIDSPIN')
       or (UpperCase(Actual.ClassName) = 'TGRIDCOMBO')
       or (UpperCase(Actual.ClassName) = 'TGRIDEDITBTN')
       or (UpperCase(Actual.ClassName) = 'TTBXBUTTON')
       or (UpperCase(Actual.ClassName) = 'TTBXBUTTONSCL')
       or (UpperCase(Actual.ClassName) = 'TELPROPERTYINSPECTOR')
       or (UpperCase(Actual.ClassName) = 'TELDESIGNPANEL')
       or (UpperCase(Actual.ClassName) = 'TDPFORM')
       or (UpperCase(Actual.ClassName) = 'TJVWIDEHLEDITOR')
       or (UpperCase(Actual.ClassName) = 'TCXDBFILTERCONTROL')
       or (UpperCase(Actual.ClassName) = 'TCXCUSTOMCOMBOBOXINNEREDIT')
       or (UpperCase(Actual.ClassName) = 'TCXCUSTOMINNERTEXTEDIT')
       or (UpperCase(Actual.ClassName) = 'TDXMEMO')
    ) Then Exit;
    //Dar TAB
    Begin
       If (
          (UpperCase(Actual.ClassName) = 'TDBCOMBOBOX') 
       or (UpperCase(Actual.ClassName) = 'TCOMBOBOX') 
       or (UpperCase(Actual.ClassName) = 'TPCPLOOKUPCOMBOEDIT') 
       or (UpperCase(Actual.ClassName) = 'TDXLOOKUPEDIT')
       or (UpperCase(Actual.ClassName) = 'TDXDBDATEEDIT')
       ) Then
       Begin
               If (Actual is TComboBox)Then
                 With Actual as TCustomComboBox Do
                    Dpd:= DroppedDown
               Else
               If Actual is TPCPLookupComboEdit Then
                 With Actual As TPCPLookupComboEdit Do
                    Dpd:= IsDropDown
               Else
               If (Actual is tdxLookUpEdit) then
                 With Actual as TDxLookUpEdit Do
                    Dpd := DroppedDown
               Else
               If (Actual is tdxDBLookUpEdit) then
                 With Actual as TDxDBLookUpEdit Do
                    Dpd := DroppedDown
               Else
               If (Actual is tdxDBDateEdit) then
                 With Actual as tdxDBDateEdit Do
                    Dpd := DroppedDown;
       End;
       If Not DpD Then //file://Enviar el Return
          if Msg.message = WM_KEYDOWN then
				    if Msg.wParam = VK_RETURN then
            	If ((UpperCase(actual.Name) <> UpperCase('EBuscar')) And
              	(UpperCase(actual.Name) <> UpperCase('EBuscar1')) And
              	(UpperCase(actual.Name) <> UpperCase('EBuscar2')) And
                (Actual.Tag <> - 15)
                ) Then
		            Msg.wParam := VK_TAB;
    End;        
  //  Else
  //  Begin {Si es otra de las teclas}
  {    If Msg.Message = WM_KEYDOWN Then
      Begin
         if Msg.WPAram = VK_RETURN then
            Inherited Click;
      End;
    End;}
End;

{****************************************************************
Procedimiento   : acti_n1_para_empresaExecute
Objetivo        : Crear la ventana de codificación de Empresas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_para_empresaExecute(Sender: TObject);
begin
        AbrirModulo(Tfn1_para_empresas, fsMDIChild, tfn1_para_empresas1);
end;

{****************************************************************
Procedimiento   : acti_n0_inic_conexionExecute
Objetivo        : Se conecta con la base de datos  
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n0_inic_conexionExecute(Sender: TObject);
begin
  // Abrir la conexion de base de datos PCP
  //....................................................................
  If Not data_base_pcp.Connected then Begin
    // Crear la ventana de acceso de usuarios
    //....................................................................
    Application.CreateForm(Tfn0_cont_entrada, fn0_cont_entrada);
    fn0_cont_entrada.ShowModal;  {Entrada de Login}
  End;
end;

{****************************************************************
Procedimiento   : acti_n0_fina_conexionExecute
Objetivo        : Cierra la conexión de la base de datos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n0_fina_conexionExecute(Sender: TObject);
begin
        // Cerrar la conexión
        //....................................................................
        data_base_pcp.Close;
end;

{****************************************************************
Procedimiento   : data_base_pcpAfterConnect
Objetivo        : Actualiza el estado del botón de conexión
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.data_base_pcpAfterConnect(Sender: TObject);
var
    i : tvari_pcp;
begin
        //Actualizar los botones de conexión.
        //....................................................................
        actu_boto_conexion(Sender);
        doLlamarMenusAdicionales(Sender);
        //Obtener el path Local
        var_pathLocal := GetBDEAliasPath('PCPLOCAL');
        if var_pathLocal[Length(var_pathLocal)] <> '\' Then
            var_pathLocal := var_PathLocal + '\';
        //Abrir la tabla de opciones
        tabl_pcp_opciones.Close;
        AbrirDataSet(tabl_pcp_opciones);
        //RC13--Cargar los básicos adicionales de otras tablas
        tabl_Configuracion.Close;
        tabl_Configuracion.Open;
        With tabl_Configuracion do
        Begin
            Insert;
            //Consulta de moneda
            quer_moneda.Close;
            AbrirDataSet(quer_moneda);
            FieldByName('simb_moneda').Value := quer_moneda.FieldByName('simb_moneda').asString;

            //Guardar
            Post;
        End;
        //Buscar el nombre del usuario
        var_usua_activo := data_base_pcp.Params.Values['USER NAME'];
        var_role_activo := data_base_pcp.Params.Values['ROLE NAME'];
        var_pass_activo := data_base_pcp.Params.Values['PASSWORD'];
        //Cambiar el caption
        Caption := Application.Title+' - '+labe_conexion.Caption+' - ['+var_usua_activo;
        if var_role_activo<>'' Then Caption:= Caption + ':'+var_role_activo;
        Caption := Caption +']';
        SetEsperaVisible(False);
        //Llamar los permisos
        With quer_abri_permisos do
          Begin
              Close;
              ParamByName('usuario').Value := var_usua_activo;
              ParamByName('role_name').Value := var_role_activo;
              Open;
              doPermisosMenu(Sender);
          End;
        //Llamar las carpetas activas
        With quer_acce_sele_carpeta do
          Begin
              Close;
              ParamByName('usuario').Value := var_usua_activo;
              Open;
              doInicializarAccesos(Sender);
          End;
        //Inicializar las variables globales de pcp
        For i := Low(variables) to High(variables) do
             variables[i] := 0;
        //Inicializaciones
//        doInicializarAvisos;
end;

{****************************************************************
Procedimiento   : actu_boto_conexion
Objetivo        : Establecer lo estado de los botones de conexión
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.actu_boto_conexion(Sender: TObject);
begin
        // Establecer el estado de los botones de conexión
        //....................................................................
        acti_n0_inic_conexion.Enabled := Not data_base_pcp.Connected;
        acti_n0_inic_conexion.Visible := Not data_base_pcp.Connected;
        acti_n0_fina_conexion.Enabled := data_base_pcp.Connected;
        acti_n0_fina_conexion.Visible := data_base_pcp.Connected;
end;

{****************************************************************
Procedimiento   : data_base_pcpAfterDisconnect
Objetivo        : desconectar y conectar la base de datos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.data_base_pcpAfterDisconnect(Sender: TObject);
begin
        // Mostrar la ventana de conexion para iniciar nueva sesión
        //....................................................................
        if not var_saliendo then
        Begin
                // Actualizar los botones de conexión
                //....................................................................
                var_curr_acceso := Nil;
                actu_boto_conexion(Sender);
                acti_n0_inic_conexionExecute(Sender);
        End;
end;

{****************************************************************
Procedimiento   : acti_n0_salirExecute
Objetivo        : Cerrar la aplicación
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n0_salirExecute(Sender: TObject);
begin
        // Salir de PCP
        //....................................................................
        Close;
end;

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Inicializar Variables
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.FormCreate(Sender: TObject);
Var
  Info: TAnimationInfo;
begin
  WKLenguaje_Anterior := 1;
  WKLenguaje := 1;

  ContenedorMDI.Align := alClient;
       	Application.OnMessage := EnterXTab;
        var_acce_adic_llamados := False;
        //Iniicializar los colores
        Color := clFondoAplicacion;
        barr_Usuario.Color := clFondoAplicacion;


        //RC20.5 - BARRAS DE EDICIÓN DE VENTANAS
        pane_titu_mdi.Color := clLineaGradiente;
        labe_titu_mdi.GradientStartColor := clInicioGradienteHard;
        labe_titu_mdi.GradientEndColor := clFinGradienteHard;
        labe_titu_mdi.LabelFont.Color := clTextoGradienteHard;
        pane_botones.Color := clInicioGradienteHard;
        pane_botones.ColorTo := clFinGradienteHard;
        barr_Accesos.OnCustomDraw := DoOutLookBarCustomDraw;
        //Cambiar las imágenes
        imag_pequenas.assign(ImagenesPCP);
        //Splitter del navigator
        navi.SplitterPosition := 100;
        var_curr_acceso := Nil;
        barr_accesos.ActivePageIndex := 0;
        var_Aplicacion_Inicializada := False;
        AutoHints(Self, True);
        //Deshabilitar los menus
        doPermisosMenu(Sender);
        //No animar ventanas
        ZeroMemory(@Info,SizeOf(Info));
        Info.cbSize := SizeOf(TAnimationInfo);
        BOOL(Info.iMinAnimate) := False;
        SystemParametersInfo(SPI_SETANIMATION, SizeOf(Info), @Info, 0);
        //
        var_esta_conectando := False;
        var_anclarHijos := False;
        //Deshabilitar los menus
        doPermisosMenu(Sender);
        {$IFDEF BARRA_MDI}
                barr_archivo.Visible := True;
                barr_edicion.Visible := True;
        {$ENDIF}
        {$IFNDEF BARRA_ESTADO}
           barr_estado.Visible := False;
        {$ENDIF}
        //Imagenes de las ventanas
        Wind_List.Images := imag_ventanas;
        Wind_List.ImageIndex := 1;
        ProgresoBarraEstado;
        ActualizarAcciones(Sender);
        // Inicializar las variables globales
        //....................................................................
        BaseDatosPCP := data_base_pcp.DataBaseName;
        var_Saliendo := False;
        Color_Requerido := clRed;
        //Deshabilitar los menus
        doPermisosMenu(Sender);
        doInicializarAccesos(Sender);
        // Tema por defecto
        //....................................................................
        mdi_Switcher.Theme := 'OfficeXP';
        //mdi_Switcher.Theme := 'Roma';
        acti_ajus_tablas.Enabled := True;
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : FormClose
Objetivo        : Cerrar la conexión de la base de datos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    var_Saliendo := True;
	_fMDI.data_base_pcp.Close;
end;


{****************************************************************
Procedimiento   : acti_n1_para_paisesExecute
Objetivo        : Crear la ventana de codificación de Paises
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 12 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_para_paisesExecute(Sender: TObject);
begin
	AbrirModulo(TFN1_Para_Paises, fsMDIChild, tfn1_para_paises1);
end;


{****************************************************************
Procedimiento   : EventosAplicationException
Objetivo        : Capturar las excepciones de la aplicación
                  para mostrar mensajes personalizados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 13 de 20034
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.EventosAplicacionException(Sender: TObject; E: Exception);
begin
   ProgresoBarraEstado(cosOcurrioUnError);
   //Mostrar el mensaje del error
   {if (e is EDBEngineError) Then
        EjecutarMensaje(cosError + ' (en la base de datos)', e.message, mtError, [mbOk], 0)

   Else   }
        EjecutarMensaje(cosOcurrioUnErrorMientrasSeEjecutaba , e.message, mtError, [mbOk], 0);
   //Restaurar la barra de estado
   ProgresoBarraEstado;
end;



{****************************************************************
Procedimiento   : acti_n1_refe_marcasExecute
Objetivo        : Crear la ventana de parametrización de marcas de productos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 13 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_marcasExecute(Sender: TObject);
begin
        AbrirModulo(TFn1_refe_marcas, fsMDIChild, TFn1_refe_marcas1);
end;


{****************************************************************
Procedimiento   : acti_n1_para_departamentosExecute
Objetivo        : Crear la ventana de codificación de Departamentos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_departamentosExecute(Sender: TObject);
begin
	AbrirModulo(TFN1_Para_Departamentos, fsMDIChild, TFN1_Para_Departamentos1);
end;

{****************************************************************
Procedimiento   : acti_n1_para_municipiosExecute
Objetivo        : Crear la ventana de codificación de Municipios
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Febrero 16 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_municipiosExecute(Sender: TObject);
begin
	AbrirModulo(TFN1_Para_Municipios, fsMDIChild, TFN1_Para_Municipios1);
end;

{****************************************************************
Procedimiento   : acti_n1_refe_LineasExecute
Objetivo        : Crea el módulo METODOS > PRODUCTOS > PARAMETRIZACION > LINEAS
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_lineasExecute(Sender: TObject);
begin
        AbrirModulo(Tfn1_refe_lineas, fsMDIChild, Tfn1_refe_lineas1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_edadesExecute
Objetivo        : Crear el módulo METODOS > PRODUCTOS > PARAMETRIZACION > EDADES
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_edadesExecute(Sender: TObject);
begin
     AbrirModulo(tfn1_refe_edades, fsMDIChild, Tfn1_refe_edades1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_gruposExecute
Objetivo        : Crear el módulo METODOS > PRODUCTOS > PARAMETRIZACION > GRUPOS
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           :
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_gruposExecute(Sender: TObject);
begin
        AbrirModulo(tfn1_refe_grupos, fsMDIChild, Tfn1_refe_grupos1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_estilosExecute
Objetivo        : Crear el módulo METODOS > PRODUCTOS > PARAMETRIZACION>ESTILOS
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_estilosExecute(Sender: TObject);
begin
        AbrirModulo(tfn1_refe_estilos, fsMDIChild, Tfn1_refe_estilos1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_estadosExecute
Objetivo        : Crea el módulo METODOS>PRODUCTOS>PARAMETRIZACION>ESTADOS
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_estadosExecute(Sender: TObject);
begin
        AbrirModulo(Tfn1_refe_estados, fsMDIChild, Tfn1_refe_estados1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_temporadasExecute
Objetivo        : Crea el módulo METODOS>PRODUCTOS>PARAMETRIZACION>TEMPORADAS
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_temporadasExecute(Sender: TObject);
begin
        AbrirModulo(tfn1_refe_temporadas, fsMDIChild, Tfn1_refe_temporadas1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_grup_tallasExecute
Objetivo        : Crear el módulo METODOS>PRODUCTOS>PARAMETRIZACION>GRUPOS DE TALLAS
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_grup_tallasExecute(Sender: TObject);
begin
        AbrirModulo(tfn1_refe_grup_tallas, fsMDIChild, Tfn1_refe_grup_tallas1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_lavadosExecute
Objetivo        : Crear el módulo METODOS>PRODUCTOS>PARAMETRIZACION>LAVADOS
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_lavadosExecute(Sender: TObject);
begin
        AbrirModulo(tfn1_refe_lavados, fsMDIChild, Tfn1_refe_lavados1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_bordadosExecute
Objetivo        : Crear el módulo METODOS>PRODUCTOS>PARAMETRIZACION>BORDADOS
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_bordadosExecute(Sender: TObject);
begin
        AbrirModulo(tfn1_refe_bordados, fsMDIChild, Tfn1_refe_bordados1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_estampadosExecute
Objetivo        : Crear el módulo METODOS>PRODUCTOS>PARAMETRIZACION>ESTAMPADOS
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_estampadosExecute(Sender: TObject);
begin
        AbrirModulo(tfn1_refe_estampados, fsMDIChild, Tfn1_refe_estampados1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_coloresExecute
Objetivo        : Crear el módulo METODOS>PRODUCTOS>PARAMETRIZACION>COLORES
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_coloresExecute(Sender: TObject);
begin
        AbrirModulo(tfn1_refe_colores, fsMDIChild, Tfn1_refe_colores1);
end;

{****************************************************************
Procedimiento   : Acti_n1_para_areasExecute
Objetivo        : Crear módulo de Areas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 23 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_areasExecute(Sender: TObject);
begin
	AbrirModulo(TFN1_Para_Areas, fsMDIChild, TFN1_Para_Areas1);
end;

{****************************************************************
Procedimiento   : acti_n1_para_plantasExecute
Objetivo        : Crear módulo de Plantas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 23 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_para_plantasExecute(Sender: TObject);
begin
	AbrirModulo(Tfn1_para_plantas, fsMDIChild, Tfn1_para_plantas1);
end;


{****************************************************************
Procedimiento   : acti_n1_para_plantasExecute
Objetivo        : Crear módulo de Secciones
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 23 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_seccionesExecute(Sender: TObject);
begin
	AbrirModulo(TFN1_Para_Secciones, fsMDIChild, TFN1_Para_Secciones1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_creacionExecute
Objetivo        : Crear el módulo METODOS>PRODUCTOS>CREACION>REGISTRO
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Febrero 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_maestroExecute(Sender: TObject);
begin
        AbrirModulo(tfn1_referencias, fsMDIChild, Tfn1_referencias1);
end;

{****************************************************************
Procedimiento   : Acti_n1_para_bodegasExecute
Objetivo        : Crear módulo de Bodegas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 24 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_bodegasExecute(Sender: TObject);
begin
	AbrirModulo(tFN1_Para_Bodegas, fsMDIChild, TFN1_Para_Bodegas1);
end;

{****************************************************************
Procedimiento   : Acti_n1_para_turnosExecute
Objetivo        : Crear módulo de Turnos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 24 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_turnosExecute(Sender: TObject);
begin
	AbrirModulo(TFN1_Para_Turnos, fsMDIChild, TFN1_Para_Turnos1);
end;

{****************************************************************
Procedimiento   : Acti_n1_para_Centro_CostosExecute
Objetivo        : Crear módulo de Centro de Costos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 24 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_Centro_CostosExecute(Sender: TObject);
begin
	AbrirModulo(TFN1_Para_Cent_Costos, fsMDIChild, TFN1_Para_Cent_Costos1);
end;

{****************************************************************
Procedimiento   : Acti_n1_para_CargosExecute
Objetivo        : Crear módulo de Cargos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 24 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_CargosExecute(Sender: TObject);
begin
	AbrirModulo(TFN1_Para_Cargos, fsMDIChild, TFN1_Para_Cargos1);
end;

{****************************************************************
Procedimiento   : Acti_n1_para_tipo_contratoExecute
Objetivo        : Crear módulo de Tipo de Contratos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 24 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_tipo_contratoExecute(Sender: TObject);
begin
	AbrirModulo(TFN1_Para_Tipo_Contrato, fsMDIChild, TFN1_Para_Tipo_Contrato1);
end;

{****************************************************************
Procedimiento   : Acti_n1_para_nive_salarialExecute
Objetivo        : Crear módulo de Nivel Salarial
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Martes 24 de febrero de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_nive_salarialExecute(Sender: TObject);
begin
	AbrirModulo(TFN1_Para_Nive_Salariales, fsMDIChild, TFN1_Para_Nive_Salariales1);
end;

{****************************************************************
Procedimiento   : acti_n1_maqu_gruposExecute
Objetivo        : Crear el módulo de Grupos de maquinaria
                  NIVEL 1> MAQUINARIA > PARAMETRIZACION > GRUPOS
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_maqu_gruposExecute(Sender: TObject);
begin
        AbrirModulo(tfn1_maqu_grupos, fsMDIChild, tfn1_maqu_grupos1);
end;
{****************************************************************
Procedimiento   : acti_n1_maqu_tiposExecute
Objetivo        : Crear el módulo de parametrización de tipos de
                  recursos (maquinaria)
                  NIVEL1 > MAQUINARIA > PARAMETRIZACION > TIPOS
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_maqu_tiposExecute(Sender: TObject);
begin
        AbrirModulo(tfn1_maqu_tipos, fsMDIChild, Tfn1_maqu_tipos1);

end;
{****************************************************************
Procedimiento   : acti_n1_maqu_familiasExecute
Objetivo        : Crear el módulo de familias de recursos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_maqu_familiasExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_maqu_familias, fsMDIChild, TFn1_maqu_familias1);

end;
{****************************************************************
Procedimiento   : acti_n1_maqu_marcasExecute
Objetivo        : Crear el módulo de parametrización de marcas de
                  recursos y maquinaria
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 08 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_maqu_marcasExecute(Sender: TObject);
begin
        AbrirModulo(Tfn1_maqu_marcas, fsMDIChild, Tfn1_maqu_marcas1);
end;
{****************************************************************
Procedimiento   : acti_n1_maqu_tipo_movimientoExecute
Objetivo        : Crear el modulo de tipos de movimientos de recursos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_maqu_tipo_movimientosExecute(Sender: TObject);
begin
AbrirModulo(Tfn1_maqu_tipo_movimiento, fsMDIChild, Tfn1_maqu_tipo_movimiento1);
end;
{****************************************************************
Procedimiento   : acti_n1_maqu_ingresoExecute
Objetivo        : Crear el módulo de ingreso de recursos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_maqu_ingresoExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_maqu_ingreso, fsMDIChild, Tfn1_maqu_ingreso1);
end;
{****************************************************************
Procedimiento   : acti_n1_maqu_tipo_puntadaExecute
Objetivo        : Crear módulo de tipos de puntada para recursos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Marzo 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_maqu_tipo_puntadaExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_maqu_tipo_puntada, fsMDIChild, Tfn1_maqu_tipo_puntada1);
end;

{****************************************************************
Procedimiento   : Acti_n1_para_prestacionesExecute
Objetivo        : Abrir el módulo de prestaciones del personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Sábado 20 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_prestacionesExecute(Sender: TObject);
begin
  If Not ExisteVentana(TFN1_Pers_Prestaciones1) Then Begin
    FN1_Pers_Prestaciones1 := TFN1_Pers_Prestaciones1.Create(Self);
    FN1_Pers_Prestaciones1.WindowState := wsMaximized;
    FN1_Pers_Prestaciones1.Show;
  End;
end;

{****************************************************************
Procedimiento   : Acti_n1_para_improductivosExecute
Objetivo        : Abrir el módulo de improductivos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Sábado 20 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_improductivosExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Para_Improductivos, fsMDIChild, TFN1_Para_Improductivos1);
end;

{****************************************************************
Procedimiento   : Acti_n1_para_sub_improductivosExecute
Objetivo        : Abrir el módulo de sub improductivos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Sábado 20 de Marzo de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_sub_improductivosExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Para_Sub_Improductivos, fsMDIChild, TFN1_Para_Sub_Improductivos1);
end;


{****************************************************************
Procedimiento   : Acti_n1_para_lineasExecute
Objetivo        : Abrir Módulo de Líneas
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Abril 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_lineasExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Para_Lineas, fsMDIChild, TFN1_Para_Lineas1);
end;

{****************************************************************
Procedimiento   : acti_n1_refe_grup_coloresExecute
Objetivo        : Abrir Módulo de Grupo de Colores
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 6 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_grup_coloresExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Para_Colo_Grupos, fsMDIChild, TFN1_Para_Colo_Grupos1);
end;

{****************************************************************
Procedimiento   : acti_n1_ref_sub_grup_coloresExecute
Objetivo        : Abrir Módulo de Subgrupo de Colores
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 6 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_sub_grup_coloresExecute(Sender: TObject);
begin
  AbrirModulo(TFn1_Para_Colo_Sub_Grupos, fsMDIChild, TFn1_Para_Colo_Sub_Grupos1);
end;

{****************************************************************
Procedimiento   : acti_n1_ref_tono_coloresExecute
Objetivo        : Abrir Módulo de Tonos de Colores
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 6 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_tono_coloresExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Para_Colo_Tonos, fsMDIChild, TFN1_Para_Colo_Tonos1);
end;

{****************************************************************
Procedimiento   : Acti_n1_pers_ingresoExecute
Objetivo        : Abrir Módulo de Ingreso de Personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_pers_maestroExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Pers_Ingreso, fsMDIChild, TFN1_Pers_Ingreso1);
end;

procedure T_fMDI.actualizarAcciones(Sender: TObject);
Var
        var_auxi_integer : Integer;
begin
      //Deshabilitar todas las opciones de la barra principal

      //Barra de archivo
      For var_auxi_integer := 1 to padr_acciones.ActionCount do
                padr_acciones.Actions[var_auxi_integer-1].OnExecute := Nil;
      padr_boto_conf_vista.Control := Nil;
      padr_boto_conf_vista.Enabled := False;
      padr_boto_exportar.Enabled := False;
end;

procedure T_fMDI.doHandAcciones(Sender: TObject);
begin
        (Sender as TAction).Enabled :=
                assigned((Sender as TAction).onExecute);
end;
{****************************************************************
Procedimiento   : ver_icon_grandesClick
Objetivo        : Mostrar iconos grandes en la barra de herramientas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.padr_acti_imag_grandesExecute(Sender: TObject);
begin

end;
{****************************************************************
Procedimiento   : acti_n1_refe_tipo_variacionesExecute
Objetivo        : Crear el módulo de codificación de tipos de variaciones
                  de referencias de productos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_tipo_variacionesExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_refe_tipo_variaciones, fsMDIChild, Tfn1_refe_tipo_variaciones1);
end;
{****************************************************************
Procedimiento   : acti_mate_gruposExecute
Objetivo        : Abrir el módulo de codificación de grupos de 
                  materiales
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_mate_gruposExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_mate_grupos, fsMDIChild, Tfn1_mate_grupos1);
end;
{****************************************************************
Procedimiento   : acti_mate_subgruposExecute
Objetivo        : Abrir el módulo de subgrupos de materiales
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_mate_subgruposExecute(Sender: TObject);
begin
        AbrirModulo(Tfn1_mate_subgrupos, fsMDIChild, Tfn1_mate_subgrupos1);
end;
{****************************************************************
Procedimiento   : acti_mate_referenciasExecute
Objetivo        : Abrir el módulo de referencias de materiales
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_mate_referenciasExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_mate_referencias, fsMDIChild, Tfn1_mate_referencias1);
end;
{****************************************************************
Procedimiento   : acti_mate_unid_medidaExecute
Objetivo        : Abrir el módulo de unidades de medida para materiales
                  e insumos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_mate_unid_medidaExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_mate_unid_medida, fsMDIChild, Tfn1_mate_unid_medida1);
end;
{****************************************************************
Procedimiento   : acti_insu_gruposExecute
Objetivo        : Abrir el módulo de grupos de insumos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_insu_gruposExecute(Sender: TObject);
begin
        AbrirModulo(Tfn1_insu_grupos, fsMDIChild, Tfn1_insu_grupos1);
end;
{****************************************************************
Procedimiento   : acti_insu_subgruposExecute
Objetivo        : Abrir el módulo de subgrupos de insumos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_insu_subgruposExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_insu_subgrupos, fsMDIChild, Tfn1_insu_subgrupos1);
end;
{****************************************************************
Procedimiento   : acti_insu_referenciasExecute
Objetivo        : Abrir el módulo de referencias de insumos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_insu_referenciasExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_insu_referencias, fsMDIChild, Tfn1_insu_referencias1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_camb_estadoExecute
Objetivo        : Abrir el módulo de cambios de estado de referencias
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_camb_estadoExecute(Sender: TObject);
begin
  If Not ExisteVentana(tfn1_refe_camb_estado) Then
    Application.CreateForm(Tfn1_refe_camb_estado, fn1_refe_camb_estado);
end;
{****************************************************************
Procedimiento   : acti_meto_procesosExecute
Objetivo        : Abrir el módulo de codificación de procesos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_meto_procesosExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_meto_procesos, fsMDIChild, Tfn1_meto_procesos1);
end;
{****************************************************************
Procedimiento   : acti_meto_comp_gruposExecute
Objetivo        : Abrir el módulo de codificación de grupos de
                  componentes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_meto_comp_gruposExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_meto_comp_grupos, fsMDIChild, Tfn1_meto_comp_grupos1);
end;
{****************************************************************
Procedimiento   : acti_meto_comp_variacionesExecute
Objetivo        : Abrir el módulo de variaciones de componentes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_meto_comp_variacionesExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_meto_comp_variaciones, fsMDIChild, Tfn1_meto_comp_variaciones1);
end;
{****************************************************************
Procedimiento   : acti_meto_oper_tiposExecute
Objetivo        : Abrir el módulo de tipos de operaciones de costura
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_meto_oper_tiposExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_meto_oper_cost_tipos, fsMDIChild, Tfn1_meto_oper_cost_tipos1);
end;
{****************************************************************
Procedimiento   : acti_n0_opcionesExecute
Objetivo        :
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           :
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n0_opcionesExecute(Sender: TObject);
begin
  Application.CreateForm(Tfn0_opciones, fn0_opciones);
  fn0_opciones.ShowModal;
end;
{****************************************************************
Procedimiento   : acti_meto_elem_cstExecute
Objetivo        : Abrir el módulo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_meto_elem_cstExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_meto_elem_cst, fsMDIChild, Tfn1_meto_elem_cst1);
end;
{****************************************************************
Procedimiento   : acti_meto_esta_cstExecute
Objetivo        : Abrir el módulo de creación de operaciones
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Mayo 31 de 2004
Versión         : pcp4000            _
*****************************************************************}
procedure T_fMDI.acti_n1_meto_esta_cstExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_meto_estandar, fsMDIChild, Tfn1_meto_estandar1);
end;
{****************************************************************
Procedimiento   : actualizarAccionesVentanas
Objetivo        : Actualiza el estado de las acciones de ventanas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.actualizarAccionesVentanas(Sender: TObject);
begin
        If (Sender is TAction) and (Sender <> acti_vent_cerrar) Then
           (Sender as TAction).Enabled := MDIChildCount>0;
        //Actualizar el panel MDI de texto
        if Not var_AnclarHijos then Begin
           {$IFDEF PCP4}
              pane_titu_mdi.Visible := ((Not var_AnclarHijos));// and (MDIChildCount >0));
              //pane_titu_mdi.Visible := False;
              if pane_titu_mdi.visible then
                 if ActiveMDIChild <> Nil then Begin
                   if labe_titu_mdi.labelCaption <> ActiveMDIChild.Caption Then
                     labe_titu_mdi.labelCaption := ActiveMDIChild.Caption;
                 End
                 Else if labe_titu_mdi.labelCaption <>  cosNombreAplicacion Then
                    labe_titu_mdi.labelCaption :=  cosNombreAplicacion;
           imag_tipo_acceso.Visible := (labe_titu_mdi.labelCaption <>  cosNombreAplicacion);
           labe_tipo_acceso.Visible := (labe_titu_mdi.labelCaption <>  cosNombreAplicacion);
           {$ELSE}
              pane_titu_mdi.Visible := False;
           {$ENDIF}
        End;
end;
{****************************************************************
Procedimiento   : acti_vent_minimizarExecute
Objetivo        : Minimizar la ventana activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_vent_minimizarExecute(Sender: TObject);
begin
        MDIChildren[0].WindowState := wsMinimized;
end;
{****************************************************************
Procedimiento   : acti_vent_restaurarExecute
Objetivo        : Restaurar la ventana activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_vent_restaurarExecute(Sender: TObject);
begin
 //Si está minimizada restaurarla       
 if (MDIChildren[0].WindowState = wsMinimized) 
    or (MDIChildren[0].WindowState = wsMaximized) then
      MDIChildren[0].WindowState := wsNormal
 //Si no, maximizarla
 Else
       MDIChildren[0].WindowState := wsMaximized; 
end;
{****************************************************************
Procedimiento   : acti_vent_cerrarExecute
Objetivo        : Cerrar la ventna activa
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_vent_cerrarExecute(Sender: TObject);
begin
    if MDIChildCount > 0 Then
        MDIChildren[0].Close
    Else
         Close;
end;
{****************************************************************
Procedimiento   : acti_vent_cascadaExecute
Objetivo        : Cascada en las ventanas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_vent_cascadaExecute(Sender: TObject);
begin
        Cascade;
end;
{****************************************************************
Procedimiento   : acti_vent_mosa_horizontalExecute
Objetivo        : Mosaico horizontal de las ventanas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_vent_mosa_horizontalExecute(Sender: TObject);
begin
        TileMode := tbHorizontal;
        Tile;
end;
{****************************************************************
Procedimiento   : acti_vent_mosa_verticalExecute
Objetivo        : Mosaico vertical de las ventanas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_vent_mosa_verticalExecute(Sender: TObject);
begin
        TileMode := tbVertical;
        Tile;
end;
{****************************************************************
Procedimiento   : Wind_listUpdate
Objetivo        : Actualizar los items de la barra de ventanas
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 01 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Wind_listUpdate(Sender: TObject);
var
        var_auxi_integer : Integer;
begin
        For var_auxi_integer := 1 to wind_list.Count do
        Begin
              wind_list.Items[var_auxi_integer-1].Images := ImagenesMenus;
              //Asignar la imagen a la ventana
//              if (MDIChildren[var_auxi_integer-1].HelpContext <> 0) then
//                   wind_list.Items[var_auxi_integer-1].ImageIndex := MDIChildren[var_auxi_integer-1].HelpContext
//              Else
                   wind_list.Items[var_auxi_integer-1].ImageIndex := coi_SinIcono;
              //Configuracion de la vista
              wind_list.Items[var_auxi_integer-1].DisplayMode := nbdmImageAndText;
        End;
end;
{****************************************************************
Procedimiento   : acti_meto_comp_secu_operacionesExecute
Objetivo        : Crear el módulo de listado de operaciones
                  para componentes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_meto_comp_secu_operacionesExecute(Sender: TObject);
begin
  If Not ExisteVentana(tfn1_meto_comp_list_operaciones) Then
     Application.CreateForm(Tfn1_meto_comp_list_operaciones, fn1_meto_comp_list_operaciones);
end;

{****************************************************************
Procedimiento   : acti_n1_maqu_tipo_caracteristicasExecute
Objetivo        : Abrir módulo de tipo de características especiales
                  para los recursos
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles Junio 09 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_maqu_tipo_caracteristicasExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Para_Tipo_Caracteristicas, fsMDIChild, TFN1_Para_Tipo_Caracteristicas1);
end;

procedure T_fMDI.Acti_n1_pers_movi_tipo_documentoExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Pers_Movi_Tipo_Documento, fsMDIChild, TFN1_Pers_Movi_Tipo_Documento1);
end;
{****************************************************************
Procedimiento   : acti_meto_refe_secu_operacionesExecute
Objetivo        : Abrir el módulo de listado de operaciones para
                  referencias
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_meto_refe_secu_operacionesExecute(Sender: TObject);
begin
        If not ExisteVentana(tfn1_meto_refe_list_operaciones) Then
                Application.CreateForm(tfn1_meto_refe_list_operaciones, fn1_meto_refe_list_operaciones);
end;
{****************************************************************
Procedimiento   : acti_meto_refe_secu_oper_corteExecute
Objetivo        : Abrir el módulo de creación de secuencia de operaciones
                  de corte.
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 12 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_meto_refe_secu_oper_corteExecute(Sender: TObject);
begin
        If Not ExisteVentana(Tfn1_meto_refe_list_oper_corte) Then
                Application.CreateForm(Tfn1_meto_refe_list_oper_corte, fn1_meto_refe_list_oper_corte);
End;
{****************************************************************
Procedimiento   : acti_n1_refe_list_materialesExecute
Objetivo        : Abrir el módulo de creación de listas de materiales
                  por referencias
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_list_materialesExecute(Sender: TObject);
begin
           //Esta ventana se puede abrir varias veces
           Application.CreateForm(tfn1_refe_list_materiales, fn1_refe_list_materiales);
end;

{****************************************************************
Procedimiento   : Acti_n1_acce_gruposExecute
Objetivo        : Crear el módulo de Grupos de Accesorios
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 24 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_acce_gruposExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Acce_Grupos, fsMDIChild, TFN1_Acce_Grupos1);
end;

{****************************************************************
Procedimiento   : Acti_n1_acce_tiposExecute
Objetivo        : Crear el módulo de Tipos de Accesorios
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 24 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_acce_tiposExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Acce_Tipos, fsMDIChild, TFN1_Acce_Tipos1);
end;

{****************************************************************
Procedimiento   : Acti_n1_acce_tipo_caracteristicaExecute
Objetivo        : Crear el módulo de Tipos de Características
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 24 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_acce_tipo_caracteristicaExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Acce_Caracteristicas, fsMDIChild, TFN1_Acce_Caracteristicas1);
end;

{****************************************************************
Procedimiento   : Acti_Acce_IngresoExecute
Objetivo        : Crear el módulo de Ingreso de Accesorios
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Jueves 24 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_Acce_IngresoExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Acce_Ingreso, fsMDIChild, TFN1_Acce_Ingreso1);
end;

{****************************************************************
Procedimiento   : acti_n2_come_zonasExecute
Objetivo        : Abrir el módulo de parametrización de zonas comerciales
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 23 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_come_zonasExecute(Sender: TObject);
begin
  AbrirModulo(Tfn2_come_zonas, fsMDIChild, Tfn2_come_zonas2);
end;
{****************************************************************
Procedimiento   : acti_n2_come_vendedoresExecute
Objetivo        : Abrir el módulo de parametrización de vendedoers
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_come_vendedoresExecute(Sender: TObject);
begin
  AbrirModulo(Tfn2_come_vendedores, fsMDIChild, Tfn2_come_vendedores2);
end;
{****************************************************************
Procedimiento   : acti_n2_come_clientesExecute
Objetivo        : Abrir el módulo de clientes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_come_clientesExecute(Sender: TObject);
begin
  AbrirModulo(Tfn2_come_clientes, fsMDIChild, Tfn2_come_clientes1);
end;
{****************************************************************
Procedimiento   : acti_n2_come_prio_pedidosExecute
Objetivo        : Abrir el módulo de prioridades de pedidos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_come_prio_pedidosExecute(Sender: TObject);
begin
  AbrirModulo(Tfn2_come_prio_pedidos, fsMDIChild, Tfn2_come_prio_pedidos1);
end;
{****************************************************************
Procedimiento   : acti_n2_come_capt_pedidosExecute
Objetivo        : Abrir el módulo de captura de pedidos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 24 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_come_capt_pedidosExecute(Sender: TObject);
begin
  AbrirModulo(Tfn2_come_pedidos, fsMDIChild, Tfn2_come_pedidos1);
end;
{****************************************************************
Procedimiento   : acti_n2_come_pedi_cons_generalExecute
Objetivo        : Abrir la consulta general de pedidos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_come_pedi_cons_generalExecute(Sender: TObject);
begin
    If Not ExisteVentana(tfn2_come_pedi_cons_general) then
        Application.CreateForm(Tfn2_come_pedi_cons_general, fn2_come_pedi_cons_general);
end;
{****************************************************************
Procedimiento   : acti_n1_plan_ordenesExecute
Objetivo        : Abrir el módulo de planeación de ordenes de trabajo
                  desde pedidos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Junio 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_plan_ordenesExecute(Sender: TObject);
begin
    If Not ExisteVentana(Tfn2_come_pedi_planeacion) Then
        Application.CreateForm(Tfn2_come_pedi_planeacion, fn2_come_pedi_planeacion);
end;

{****************************************************************
Procedimiento   : Acti_n1_para_firmasExecute
Objetivo        : Abrir el módulo de Firmas (Opciones de Impresión)
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 30 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_firmasExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Para_Firmas, fsMDIChild, TFN1_Para_Firmas1);
end;

{****************************************************************
Procedimiento   : Acti_n1_para_prioridadesExecute
Objetivo        : Abrir el módulo de Prioridades (Opciones de Impresión)
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 30 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_para_prioridadesExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Para_Prioridades, fsMDIChild, TFN1_Para_Prioridades1);
end;

{****************************************************************
Procedimiento   : Acti_n1_cons_pers_generalExecute
Objetivo        : Abrir el módulo general para consultas de personal
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 07 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_cons_pers_generalExecute(Sender: TObject);
begin
  AbrirModulo(TCN1_Pers_General, fsMDIChild, nil);
end;

{****************************************************************
Procedimiento   : Acti_n1_pers_tipo_movimientoExecute
Objetivo        : Abrir el módulo de Tipos de Movimiento (Personal)
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 07 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_pers_tipo_movimientoExecute(Sender: TObject);
begin
  AbrirModulo(TFn1_Pers_Tipo_Movimientos, fsMDIChild, TFn1_Pers_Tipo_Movimientos1);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_ordenesExecute
Objetivo        : Abrir el módulo de órdenes de producción
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_prod_ordenesExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : acti_n1_prod_etapasExecute
Objetivo        : Abrir el módulo de parametrización de etapas
                  de producción
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 07 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_prod_etapasExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Acti_n1_cons_pers_historialExecute
Objetivo        : Abrir el módulo de consulta de historial de personal
                  para impresión
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Martes 12 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_cons_pers_historialExecute(Sender: TObject);
begin
  AbrirModulo(TCN1_Pers_Historial, fsMDIChild, nil);
end;

{****************************************************************
Procedimiento   : Acti_n1_maqu_cons_generalExecute
Objetivo        : Abrir el módulo de consulta general de Recursos
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Martes 12 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_maqu_cons_generalExecute(Sender: TObject);
begin
  AbrirModulo(TCN1_Maqu_General, fsMDIChild, nil);
end;

{****************************************************************
Procedimiento   : Acti_n1_maqu_cons_trasladosExecute
Objetivo        : Abrir el módulo de consulta Movimiento de
                  Recursos (Traslados)
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Martes 12 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_maqu_cons_trasladosExecute(Sender: TObject);
begin
  AbrirModulo(TCN1_Maqu_Traslados, fsMDIChild, nil);
end;

{****************************************************************
Procedimiento   : Acti_n1_maqu_cons_plantasExecute
Objetivo        : Abrir el módulo de consulta Recursos por planta
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Martes 12 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_maqu_cons_plantasExecute(Sender: TObject);
begin
  AbrirModulo(TCN1_Maqu_Cons_Plantas, fsMDIChild, nil);
end;

{****************************************************************
Procedimiento   : EventosAplicacionActiveControlChange
Objetivo        : Actualizar la ventana cuando cambie el control activo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 14 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.EventosAplicacionActiveControlChange(Sender: TObject);
begin
        if var_saliendo then exit;
        //Actualizar el panel de caption MDI
        if Not var_AnclarHijos then 
        Begin
           {$IFDEF PCP4}
              pane_titu_mdi.Visible := ((Not var_AnclarHijos));// and (MDIChildCount >0));
              //pane_titu_mdi.Visible := False;
              if pane_titu_mdi.visible then
                 if ActiveMDIChild <> Nil then Begin
                   if labe_titu_mdi.labelCaption <> ActiveMDIChild.Caption Then
                     labe_titu_mdi.labelCaption := ActiveMDIChild.Caption;
                 End
                 Else
                    if labe_titu_mdi.labelCaption <>  cosNombreAplicacion Then
                       labe_titu_mdi.labelCaption :=  cosNombreAplicacion;
           imag_tipo_acceso.Visible := (labe_titu_mdi.labelCaption <>  cosNombreAplicacion);
           labe_tipo_acceso.Visible := (labe_titu_mdi.labelCaption <>  cosNombreAplicacion);
           {$ELSE}
              pane_titu_mdi.Visible := False;
           {$ENDIF}
        End;
end;
{****************************************************************
Procedimiento   : acti_n1_prod_depe_etapasExecute
Objetivo        : Abrir el módulo de dependencia de las etapas de
                  producción
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_prod_depe_etapasExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : acti_n1_prod_camb_etapaExecute
Objetivo        : Abrir el módulo de cambio en la etapa de 
                  producción de una orden
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_prod_etap_avanceExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : acti_n1_prod_orde_trazoExecute
Objetivo        : Abrir el módulo de consulta/lanzamiento
                  de ordenes de trazo
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_prod_orde_trazoExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : data_base_securityBeforeConnect
Objetivo        : Inicializar los parametros de conexión de la db de usuarios
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.data_base_securityBeforeConnect(Sender: TObject);
begin
        With data_base_security do
        Begin
            Params.Clear;
            Params.Add('user name=INICIO_PCP');
            Params.Add('password='+cos_inicio_pcp);
        End;
end;
{****************************************************************
Procedimiento   : doLlamarUsuarios
Objetivo        : Consulta los usuarios y roles disponibles
                  y carga las tablas tabl_usuarios y tabl_roles
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.doLlamarUsuarios(Sender: TObject);
begin
  Try
    //Si está abierta la ventana de inicio de sesión, no cargar los usuarios
    if var_esta_conectando Then Exit;
    //Carga en la tabla_usuarios, los usuarios registrados
    //en el servidor ---------------------------------------
    With data_base_security do Begin
      If Active then Close;
      AliasName := cos_alia_usuarios;
      Open;
    End;
    //Reabrir las consultas
    if quer_usuarios.active then quer_usuarios.Close;
    quer_usuarios.Open;
    if tabl_usuarios.active then tabl_usuarios.Close;
    tabl_usuarios.Open;
    //Insertar los usuarios en la tabla de memoria
    With quer_usuarios do
      While not eof do begin
        tabl_usuarios.AppendRecord([FieldByName('user_name').AsString,
                                    FieldByName('role_name').AsString,
                                    FieldByName('first_name').AsString,
                                    FieldByName('last_name').asString]);
{        FieldByName('user_name').Value := quer_usuarios.FieldByName('user_name').asString;
        FieldByName('role_name').Value := quer_usuarios.FieldByName('role_name').AsString;
        FieldByName('first_name').Value := quer_usuarios.FieldByName('first_name').asString;
        FieldByName('last_name').Value := quer_usuarios.FieldByName('last_name').asString;
}     quer_usuarios.Next;
    end;
    //Cerrar consultas
    quer_usuarios.Close;
    data_base_security.Close;  // agregar un repeat until Closed
    //Carga en la tabla_roles, los roles registrados
    //en el servidor -----------------------------------------
    With data_base_security do Begin
       If Active then Close;
       if (UpperCase(labe_conexion.Caption) = UpperCase(cosSoftconf)) Then
          AliasName := labe_conexion.Caption
       Else
          AliasName := cosSoftconf + labe_conexion.Caption;
       Update;
       Sleep(30);
       Open;
    End;
    //Reabrir las consultas
    if quer_roles.active then quer_roles.Close;
    quer_roles.Open;
    if tabl_roles.active then tabl_roles.Close;
    tabl_roles.Open;
    //Insertar los usuarios en la tabla de memoria
    With tabl_roles do
      While not quer_roles.eof do begin
        AppendRecord([quer_roles.FieldByName('rdb$role_name').AsString]);
        quer_roles.Next;
      End;

    //Cerrar consultas
    quer_roles.Close;
    data_base_security.Close;
  Except
     On E:Exception do
      EjecutarMensajeError(e.Message);
  End;
end;
{****************************************************************
Procedimiento   : data_base_pcpBeforeConnect
Objetivo        : Prepara la aplicación antes de abrir la
                  conexión principal con la base de datos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.data_base_pcpBeforeConnect(Sender: TObject);
begin
        SetEsperaVisible(True);
        doLlamarUsuarios(Sender);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_paqu_tiposExecute
Objetivo        : Abrir el módulo de parametrización de tipos
                  de distribución de paquetes
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_prod_paqu_tiposExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_prod_paqu_tipos, fsMDIChild, Tfn1_prod_paqu_tipos1)
end;
{****************************************************************
Procedimiento   : acti_n1_prod_paqu_tipo_procesoExecute
Objetivo        : Abrir el módulo de tipo de distribución
                  por procesos
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_prod_paqu_tipo_procesoExecute(Sender: TObject);
begin
//  AbrirModulo(Tfn1_prod_proc_paqu_tipos, fsMDIChild, Tfn1_prod_proc_paqu_tipos1);
end;

{****************************************************************
Procedimiento   : acti_n1_prod_orde_dist_paqu_corteExecute
Objetivo        : Abrir la distribución de paquetes de corte
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 15 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_prod_orde_dist_paqu_corteExecute(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : acti_n2_prod_expl_materialesExecute
Objetivo        : Abrir el módulo de explosión de materiales
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 19 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_prod_expl_materialesExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : acti_n1_prod_pedi_asociadosExecute
Objetivo        : Ejecutar la acción de ver pedidos asociados
                  por orden de producción
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 21 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_prod_pedi_asociadosExecute(Sender: TObject);
begin
end;

{****************************************************************
Procedimiento   : Acti_n1_acce_cons_generalExecute
Objetivo        : Abrir el módulo de consulta general de Accesorios
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Viernes 23 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_acce_cons_generalExecute(Sender: TObject);
begin
  AbrirModulo(TCN1_Acce_General, fsMDIChild, Nil);
end;

{****************************************************************
Procedimiento   : Acti_n1_acce_cons_trasladosExecute
Objetivo        : Abrir el módulo de Movimiento de Accesorios (Traslados)
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Viernes 23 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_acce_cons_trasladosExecute(Sender: TObject);
begin
  AbrirModulo(TCN1_Acce_Traslados, fsMDIChild, Nil);
end;

{****************************************************************
Procedimiento   : Acti_n1_acce_cons_trasladosExecute
Objetivo        : Abrir el módulo de consulta Accesorios por planta
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Viernes 23 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Acti_n1_acce_cons_plantasExecute(Sender: TObject);
begin
  AbrirModulo(TCN1_Acce_Cons_Plantas, fsMDIChild, Nil);
end;

{****************************************************************
Procedimiento   : acti_n1_refe_espe_disenoExecute
Objetivo        : Abrir el módulo de hoja de diseño de referencias
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Lunes 26 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_espe_disenoExecute(Sender: TObject);
begin
  //Deshabilitado en RC20.9 por cambio de metodología y estructura en disco
  //AbrirModulo(TFN1_Refe_Diseno, fsMDIChild, TFN1_Refe_Diseno1);
end;

{****************************************************************
Procedimiento   : acti_n1_refe_hoja_costuraExecute
Objetivo        : Abrir el módulo de hoja de costura de referencias
Realizado por   : Gustavo Muñoz(DESARROLLO)
Fecha           : Lunes 26 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_espe_costuraExecute(Sender: TObject);
begin
  //Deshabilitado en RC20.9 por cambio de metodología y estructura en disco
  //AbrirModulo(TFN1_Refe_Costura, fsMDIChild, TFN1_Refe_Costura1);
end;
{****************************************************************
Procedimiento   : acti_n1_plan_matr_polifuncionalidadExecute
Objetivo        : Abrir el módulo de matriz de polifuncionalidad
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_plan_matr_polifuncionalidadExecute(
  Sender: TObject);
begin
  if not ExisteVentana(Tfn2_pers_matr_polifuncionalidad) Then
    Application.CreateForm(Tfn2_pers_matr_polifuncionalidad, fn2_pers_matr_polifuncionalidad);
end;
{****************************************************************
Procedimiento   : acti_n1_plan_cale_produccionExecute
Objetivo        : Abrir el calendario de producción
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_plan_cale_produccionExecute(Sender: TObject);
begin
        if not ExisteVentana(Tfn1_plan_cale_produccion) then
                Application.CreateForm(Tfn1_plan_cale_produccion, fn1_plan_cale_produccion);
end;
{****************************************************************
Procedimiento   : acti_n1_plan_line_especialidadesExecute
Objetivo        : Abrir el módulo de especialidades por planta
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_plan_line_especialidadesExecute(Sender: TObject);
begin
        if not ExisteVentana(Tfn1_plan_line_especialidades) Then
                Application.CreateForm(Tfn1_plan_line_especialidades, fn1_plan_line_especialidades);
end;
{****************************************************************
Procedimiento   : acti_n1_plan_secc_procesosExecute
Objetivo        : Abrir el módulo de procesos por sección
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_plan_secc_procesosExecute(Sender: TObject);
begin
        if not ExisteVentana(Tfn1_plan_secc_procesos) Then
                Application.CreateForm(Tfn1_plan_secc_procesos, fn1_plan_secc_procesos);
end;
{****************************************************************
Procedimiento   : acti_n1_nove_diariasExecute
Objetivo        : Abrir el módulo de control diario de novedades
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_nove_diariasExecute(Sender: TObject);
begin
        //AbrirModulo(Tfn1_cont_nove_diar_costura, fsMDIChild, Nil);
        Application.CreateForm(Tfn1_cont_nove_diar_costura, fn1_cont_nove_diar_costura);
        fn1_cont_nove_diar_costura.ShowModal;
end;
{****************************************************************
Procedimiento   : acti_n1_cont_abonadosExecute
Objetivo        : Abrir el módulo de abonados
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_cont_abonadosExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_cont_abonados, fsMDIChild, Tfn1_cont_abonados1);
end;

{****************************************************************
Procedimiento   : acti_n1_cont_extrasExecute
Objetivo        : Abrir el módulo de horas extras
Realizado por   : Mauricio Vargas (TECNOLOGIA)
Fecha           : Julio 26 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_cont_extrasExecute(Sender: TObject);
begin
  if (tabl_pcp_opciones.FieldByName('CONT_PROD_HORA_EXTR_DETALLADA').AsInteger = 1) Then
      AbrirModulo(Tfn1_cont_hora_extras, fsMDIChild, Tfn1_cont_hora_extras1)
  Else
      Application.CreateForm(Tfn1_cont_hora_extr_rangos, fn1_cont_hora_extr_rangos);
end;

{****************************************************************
Procedimiento   : acti_n1_refe_espe_presentacionExecute
Objetivo        : Abrir el módulo de presentación de las referencias
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Miercoles 27 de Julio de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_espe_presentacionExecute(Sender: TObject);
begin
  //Deshabilitado en RC20.9 por cambio de metodología y estructura en disco
  //AbrirModulo(TFN1_Refe_Presentacion, fsMDIChild, TFN1_Refe_Presentacion1);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_entrepiernasExecute
Objetivo        : Abrir el módulo de parametrización de entrepiernas
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 22 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_refe_entrepiernasExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_refe_entrepiernas, fsMDIChild, Tfn1_refe_entrepiernas1);
end;
{****************************************************************
Procedimiento   : acti_n1_para_monedasExecute
Objetivo        : Abrir el módulo de parametrización de monedas
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_come_monedasExecute(Sender: TObject);
begin
     AbrirModulo(tfn1_para_monedas, fsMDIChild, Tfn1_para_monedas1);
end;
{****************************************************************
Procedimiento   : acti_n1_para_mone_trmExecute
Objetivo        : Abrir el módulo de asignación de TRM por moneda
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_come_mone_trmExecute(Sender: TObject);
begin
        AbrirModulo(Tfn1_para_mone_trm, fsMDIChild,   Tfn1_para_mone_trm1);
end;
{****************************************************************
Procedimiento   : acti_n2_prot_maestroExecute
Objetivo        : Abrir el maestro de prototipos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_prot_maestroExecute(Sender: TObject);
begin
  AbrirModulo(Tfn2_prototipos, fsMDIChild, Tfn2_prototipos1);
end;
{****************************************************************
Procedimiento   : acti_n2_prot_list_materialesExecute
Objetivo        : Abrir el módulo de listas de materiales de prototipos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_prot_list_materialesExecute(Sender: TObject);
begin
     If Not ExisteVentana(Tfn2_prot_list_materiales) Then
        Application.CreateForm(Tfn2_prot_list_materiales, fn2_prot_list_materiales);
end;
{****************************************************************
Procedimiento   : acti_n2_prot_list_oper_costuraExecute
Objetivo        : Abrir el listado de operaciones de costura
                  para prototipos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 25 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_prot_list_oper_costuraExecute(Sender: TObject);
begin
    If Not ExisteVentana(Tfn2_prot_list_oper_costura) Then
        Application.CreateForm(Tfn2_prot_list_oper_costura, fn2_prot_list_oper_costura);
end;
{****************************************************************
Procedimiento   : acti_n2_prot_camb_estadoExecute
Objetivo        : Abrir el módulo de cambio de estado de prototipos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_prot_camb_estadoExecute(Sender: TObject);
begin
  If Not ExisteVentana(tfn2_prot_camb_estado) Then
    Application.CreateForm(tfn2_prot_camb_estado, fn2_prot_camb_estado);
end;
{****************************************************************
Procedimiento   : acti_n0_segu_usua_permisosExecute
Objetivo        : Abrir el módulo de asignación de permisos
                  por usuario o grupo
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n0_segu_usua_permisosExecute(Sender: TObject);
begin
  If Not ExisteVentana(Tfn0_usua_permisos) Then
  Application.CreateForm(Tfn0_usua_permisos, fn0_usua_permisos);
end;
{****************************************************************
Procedimiento   : doPermisosMenu
Objetivo        : Dar los permisos del menu
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.doPermisosMenu(Sender: TObject);
    Procedure AsignarPermisoMenu(vComponente : TTBCustomItem);
        Var
            vContador   : Integer;
            vNombre : String;
        Begin
            //Excluir los separadores
            If ((vComponente is TTBXSeparatorItem) or
                (vComponente is TTBXVisibilityToggleItem) or
                (vComponente is TTBXMDIWindowItem) or
                (vComponente.Count > 0) or
                (vComponente.Name = '')
                ) Then
                     vComponente.Enabled := True
            Else
                With quer_abri_permisos do
                    Begin
                        //Ver si tiene accion
                        if (vComponente.Action = Nil) then vNombre := vComponente.Name
                        Else vNombre := vComponente.Action.Name; 
                        //Ver si tiene el permiso
                        if (quer_abri_permisos.Active) then
                            vComponente.Enabled := (quer_abri_permisos.Locate('menu', vNombre, [])) or (var_usua_activo = 'SYSDBA')
                        Else
                            vComponente.Enabled := False;
                    End;
            //Asignarle el enabled a la accion
            if (vComponente.Action <> Nil) then TAction(vComponente.Action).Enabled := vComponente.Enabled;
            //Recursivo para los hijos
            if (vComponente.Count > 0) then
               for vContador := 1 to vComponente.Count do
                  AsignarPermisoMenu(vComponente.Items[vContador - 1]);
        End;
Var
    vCurr_parent    : Integer;
    vContador : Integer;
begin
      //Recorrer los items del menu
      For vcurr_parent := 1 to Barra.Items.Count do
        For vContador := 1 to Barra.Items[vcurr_parent - 1].Count do
            AsignarPermisoMenu(Barra.Items[vcurr_parent - 1].Items[vContador - 1]);
end;
{****************************************************************
Procedimiento   : data_base_pcpBeforeDisconnect
Objetivo        : Liberar los controles antes de desconectarse
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.data_base_pcpBeforeDisconnect(Sender: TObject);
var
    var_i   : Integer;
begin
    if (Confirmar(cosDeseaCerrarSesion)=mrNo) Then Abort;
    //Si no están todas cerradas no salir
    Application.ProcessMessages;
    ProgresoBarraEstado(cosCerrandoTodasLasVentanas);
    if (Application.MainForm.MDIChildCount > 0 ) then
    Begin
        //Intentar cerrar las ventanas
        For var_i := 1 to Application.MainForm.MDIChildCount do
        Try
            MDIChildren[0].Close;
        Except
        End;
    End;
    ProgresoBarraEstado;
    {if (Application.MainForm.MDIChildCount > 0 ) then
        Raise Exception.Create(cosNoPuedeCerrarVentanasAbiertas);}
    Try
        if not var_saliendo then
            Begin
                //Deshabilitar los menus
                quer_abri_permisos.Close;
                doPermisosMenu(Sender);
            End;
    Except
    End;
end;
{****************************************************************
Procedimiento   : acti_n0_segu_crea_usuariosExecute
Objetivo        : Abrir el módulo de creación de usuarios
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n0_segu_crea_usuariosExecute(Sender: TObject);
begin
  If Not ExisteVentana(Tfn0_usua_mantenimiento) Then
    Application.CreateForm(Tfn0_usua_mantenimiento, fn0_usua_mantenimiento);
end;
{****************************************************************
Procedimiento   : ActionList1Execute
Objetivo        : Capturar la última acción ejecutada
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 31 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.AccionesMenusExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
    var_ulti_menu := action.name;
end;
{****************************************************************
Procedimiento   : acti_n0_acce_directosExecute
Objetivo        : Abrir la ventana de configuración de accesos
                  directos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n0_acce_directosExecute(Sender: TObject);
begin
    If Not ExisteVentana(tfn0_acce_directos) Then
      Application.CreateForm(Tfn0_acce_directos, fn0_acce_directos);
end;
{****************************************************************
Procedimiento   : doInicializarAccesos
Objetivo        : Inicializa los accesos cuando hay cambio de usuario
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.doInicializarAccesos(Sender: TObject);
Var
    vContador : Integer;
    vBoton  : tjvOutlookBarButton;
    vPagina : tjvOutlookBarPage;
    vContador2 : Integer;
begin
    //Eliminar las paginas
    For vContador := 1 to barr_accesos.pages.Count do
        barr_accesos.Pages.Items[0].Destroy;
    //Si no esta abierta la consulta de carpetas activas, salir
    If Not quer_acce_sele_carpeta.Active then Exit;
    quer_acce_sele_icono.Open;
    vContador2 := 0;
    //Crear las carpetas
    With quer_acce_sele_carpeta do
      While not eof do
        Begin
            vPagina := barr_accesos.pages.Add;
            vPagina.Caption := FieldByName('titu_pagina').AsString;
            vPagina.Font.Name := 'Tahoma';
            vPagina.Font.Color := clBlack;
            vPagina.Color := clZebra;
            //Crear los botones
            While not quer_acce_sele_icono.Eof do
              Begin
                //Crear el boton
                vBoton := barr_accesos.pages.Items[vContador2].Buttons.Add;
                vBoton.Caption := quer_acce_sele_icono.FieldByName('titu_icono').AsString;
                vBoton.ImageIndex := coi_SinIcono;
                //Asumir que no hay accion
                vBoton.Tag := -1;
                //Buscar la accion
                For vContador := 1 to AccionesMenus.ActionCount do
                    if AccionesMenus.Actions[vContador - 1].Name = quer_acce_sele_icono.FieldByName('nomb_objeto').AsString Then
                      Begin
                         vBoton.Tag := vContador - 1;
                         if TAction(AccionesMenus.Actions[vContador - 1]).ImageIndex <> -1 then
                             vBoton.ImageIndex := TAction(AccionesMenus.Actions[vContador - 1]).ImageIndex;
                      End;
                quer_acce_sele_icono.Next;
              End;
            Next;
            //Incrementar el contador de la pagina activa
            inc(vContador2);
        End;
    quer_acce_sele_carpeta.Close;
    quer_acce_sele_icono.Close;
end;

{****************************************************************
Procedimiento   : barr_accesosDragOver
Objetivo        : Acepta soltar menus en la barra de accesos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.barr_accesosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := ExisteVentana(Tfn0_acce_directos, False);
end;
{****************************************************************
Procedimiento   : barr_accesosDragDrop
Objetivo        : Crea un nuevo acceso directo en la barra de accesos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.barr_accesosDragDrop(Sender, Source: TObject; X,
  Y: Integer);
Var
    vBoton  : tjvOutlookBarButton;
    vContador   : Integer;
begin
    //Verificar que existan carpetas
    if barr_accesos.Pages.Count = 0 then
        raise Exception.Create(cosDebeCrearCarpeta);
    If Not ExisteVentana(Tfn0_acce_directos, False) Then Exit;
    if Not fn0_acce_directos.tabla.FieldByName('asignable').AsBoolean then Exit;
        Begin
            //Crear el boton en la base de datos
            With quer_acce_inse_icono do
                Begin
                    ParamByName('usuario').Value := var_usua_activo;
                    ParamByName('titu_pagina').Value := barr_accesos.activePage.Caption;
                    ParamByName('nomb_objeto').Value := fn0_acce_directos.tabla.FieldByName('nomb_objeto').AsString;
                    ParamByName('titu_icono').Value := fn0_acce_directos.tabla.FieldByName('caption').AsString;
                    ExecSQL;
                End;
            //Crear el boton
            vBoton := barr_accesos.pages.Items[barr_accesos.ActivePageIndex].Buttons.Add;
            vBoton.Caption := fn0_acce_directos.tabla.FieldByName('caption').AsString;
            vBoton.ImageIndex := coi_SinIcono;
            //Asumir que no hay accion
            vBoton.Tag := -1;
            //Buscar la accion
            For vContador := 1 to AccionesMenus.ActionCount do
                if AccionesMenus.Actions[vContador - 1].Name = fn0_acce_directos.tabla.FieldByName('nomb_objeto').AsString Then
                  Begin
                    vBoton.Tag := vContador - 1;
                    if TAction(AccionesMenus.Actions[vContador - 1]).ImageIndex <> -1 then
                       vBoton.ImageIndex := TAction(AccionesMenus.Actions[vContador - 1]).ImageIndex;
                  End;
        End;
end;
{****************************************************************
Procedimiento   : barr_accesosButtonClick
Objetivo        : Ejecuta el click en un botón de la barra de accesos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.barr_accesosButtonClick(Sender: TObject; Index: Integer);
Var
    vBoton  : tjvOutlookBarButton;
begin
    vBoton := barr_accesos.Pages[barr_accesos.ActivePageIndex].Buttons.Items[index];
    if vBoton.Tag <> -1 Then
        if TAction(AccionesMenus.Actions[vBoton.Tag]).Enabled then
            AccionesMenus.Actions[vBoton.Tag].Execute;
end;
{****************************************************************
Procedimiento   : boto_carp_nuevaClick
Objetivo        : Crear una nueva carpeta en los accesos directos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.boto_carp_nuevaClick(Sender: TObject);
var
    vNombre : String;
    vPagina : tjvOutlookBarPage;
begin
    vNombre := pcpInputForm(Format(cosAdicionando, [cosCarpeta]), cosEscribaNombreCarpeta, tvString, '');
    //Validar el nombre
    if vNombre = '' Then exit;
    //Crear la carpeta en la base de datos
    With quer_acce_inse_carpeta do
        Begin
            ParamByName('usuario').Value := var_usua_activo;
            ParamByName('titu_pagina').Value := vNombre;
            ExecSQL;
        End;
    vPagina := barr_accesos.pages.Add;
    vPagina.Caption := vNombre;
    vPagina.Font.Name := 'Tahoma';
    vPagina.Font.Color := clBlack;
    vPagina.Color := clZebra;
end;
{****************************************************************
Procedimiento   : boto_carp_eliminarClick
Objetivo        : Eliminar una de las carpetas de los
                  accesos directos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.boto_carp_eliminarClick(Sender: TObject);
begin
    if Confirmar(Format(cosEliminarRegistro, [cosCarpeta, '('+barr_accesos.pages.items[barr_accesos.activepageindex].Caption+')']))=mrYes then
      Begin
        //Eliminar la carpeta en la base de datos
        With quer_acce_dele_carpeta do
            Begin
                ParamByName('usuario').Value := var_usua_activo;
                ParamByName('titu_pagina').Value := barr_accesos.pages.items[barr_accesos.activepageindex].Caption;
                ExecSQL;
            End;
        //Eliminarla del componente
        barr_accesos.pages.items[barr_accesos.activepageindex].Destroy;
      End;
end;
{****************************************************************
Procedimiento   : boto_carp_modificarClick
Objetivo        : Modificar el nombre de una carpeta de los
                  accesos directos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.boto_carp_modificarClick(Sender: TObject);
var
    vNombre : String;
begin
    vNombre := pcpInputForm(Format(cosEditando, [cosCarpeta]), cosEscribaNombreCarpeta, tvString, '');
    //Validar el nombre
    if vNombre = '' Then exit;
    //Crear la carpeta en la base de datos
    With quer_acce_upda_carpeta do
        Begin
            ParamByName('usuario').Value := var_usua_activo;
            ParamByName('titu_pagina').Value := barr_accesos.pages.items[barr_accesos.activepageindex].Caption;
            ParamByName('new_titu_pagina').Value := vNombre;
            ExecSQL;
        End;
    barr_accesos.pages.items[barr_accesos.activepageindex].Caption := vNombre;
end;
{****************************************************************
Procedimiento   : boto_acce_eliminarClick
Objetivo        : Eliminar un acceso directo
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.boto_acce_eliminarClick(Sender: TObject);
begin
    if var_curr_acceso = Nil then Exit;
    if Confirmar(Format(cosEliminarRegistro, [cosAccesoDirecto, '('+var_curr_acceso.caption+')']))=mrYes then
      Begin
        //Eliminar la carpeta en la base de datos
        With quer_acce_dele_icono do
            Begin
                ParamByName('usuario').Value := var_usua_activo;
                ParamByName('titu_pagina').Value := barr_accesos.pages.items[barr_accesos.activepageindex].Caption;
                ParamByName('titu_icono').Value := var_curr_acceso.Caption;
                ExecSQL;
            End;
        //Eliminar el boton
        var_curr_acceso.Destroy;
      End;
end;
{****************************************************************
Procedimiento   : barr_accesosMouseMove
Objetivo        : Actualizar el boton sobre el cual pasa el mouse
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.barr_accesosMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
    var_curr_acceso := barr_accesos.GetButtonAtPos(Point(x,y));
end;
{****************************************************************
Procedimiento   : acti_n2_come_comp_envioExecute
Objetivo        : Abrir el módulo de compañías de envío
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 02 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_come_comp_envioExecute(Sender: TObject);
begin
  AbrirModulo(Tfn2_come_comp_envio, fsMDIChild, Tfn2_come_comp_envio1);
end;
{****************************************************************
Procedimiento   : EventosAplicacionActiveFormChange
Objetivo        : Actualiza los controles MDI cuando cambie la ventana MDIChild
                  activa
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.EventosAplicacionActiveFormChange(Sender: TObject);
begin
end;
{****************************************************************
Procedimiento   : acti_n0_segu_camb_contrasenaExecute
Objetivo        : Ejecutar la acción de cambiar la contraseña del usuario
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n0_segu_camb_contrasenaExecute(Sender: TObject);
begin
  Application.CreateForm(Tfn0_usua_camb_contrasena, fn0_usua_camb_contrasena);
  fn0_usua_camb_contrasena.ShowModal;
end;
{****************************************************************
Procedimiento   : acti_n0_usua_bloq_sesionExecute
Objetivo        : Bloquear la sesión activa
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 20 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n0_usua_bloq_sesionExecute(Sender: TObject);
begin
  Application.CreateForm(Tfn0_usua_bloq_sesion, fn0_usua_bloq_sesion);
  fn0_usua_bloq_sesion.ShowModal;
end;
{****************************************************************
Procedimiento   : acti_n2_pedi_expl_mate_pedidoExecute
Objetivo        : Abrir la consulta de explosión de materiales por pedido
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 22 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_pedi_expl_mate_pedidoExecute(Sender: TObject);
begin
    //Deshabilitado en 4.0.0.6
    //Cambiado por varias explosiones de materiales por pedido
end;
{****************************************************************
Procedimiento   : Relo_actualizadorTimer
Objetivo        : Actualiza los controles del MDI
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 22 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.Relo_actualizadorTimer(Sender: TObject);
begin
          if (var_Saliendo) then Exit;
          Try
              relo_actualizador.Enabled := False;
              Application.ProcessMessages;
              {//Ocultar/Mostrar el panel de tipos de acceso
              _fmdi.imag_tipo_acceso.Visible := (_fMDI.MDIChildCount > 0);
              _fmdi.labe_tipo_acceso.Visible := (_fMDI.MDIChildCount > 0);
              pane_titu_mdi.Visible := (_fMDI.MDIChildCount > 0);  }
          Finally
              relo_actualizador.Enabled := True;
          End;
end;
{****************************************************************
Procedimiento   : acti_n2_pedi_expl_materialesExecute
Objetivo        : Abrir la consulta de explosión de materiales
                  basada en pedidos
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 27 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_pedi_expl_materialesExecute(Sender: TObject);
begin
//  if Not ExisteVentana(Tfn2_come_pedi_explosion) Then
//    Application.CreateForm(Tfn2_come_pedi_explosion, fn2_come_pedi_explosion);
//  Inhabilitada en RC19 por cambio en el menú -> varias explosiones
end;
{****************************************************************
Procedimiento   : acti_n2_come_pedi_por_clienteExecute
Objetivo        : Abrir la consulta de pedidos por cliente
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Septiembre 28 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n2_come_pedi_cons_por_clienteExecute(Sender: TObject);
begin
  If Not ExisteVentana(Tfn2_come_pedi_cons_por_cliente) Then
    Application.CreateForm(Tfn2_come_pedi_cons_por_cliente, fn2_come_pedi_cons_por_cliente);
end;
{****************************************************************
Procedimiento   : acti_n1_meto_punt_controlExecute
Objetivo        : Abrir el módulo de puntos de control de producción
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Octubre 04 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.acti_n1_meto_punt_controlExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_inge_punt_control, fsMdiChild, Tfn1_inge_punt_control1);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_loteoExecute
Objetivo        : Abrir el módulo de loteo de órdenes de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 19 de 2004
Versión         : pcp4003
*****************************************************************}
procedure T_fMDI.acti_n1_prod_loteoExecute(Sender: TObject);
begin
  If Not ExisteVentana(tfn1_prod_loteo) Then
     Application.CreateForm(Tfn1_prod_loteo, fn1_prod_loteo);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_plan_detalladaExecute
Objetivo        : Abrir el módulo de planeación detallada de ordenes
                  de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 22 de 2004
Versión         : pcp4003
*****************************************************************}
procedure T_fMDI.acti_n1_prod_plan_detalladaExecute(Sender: TObject);
begin
    If not ExisteVentana(Tfn1_prod_plan_detallada) Then
      Application.CreateForm(Tfn1_prod_plan_detallada, fn1_prod_plan_detallada);
end;
{****************************************************************
Procedimiento   : acti_n1_para_estr_organizacionalExecute
Objetivo        : Abre el módulo de parametrización de la estructura
                  organizacional
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 22 de 2004
Versión         : pcp4003
*****************************************************************}
procedure T_fMDI.acti_n1_para_estr_organizacionalExecute(Sender: TObject);
begin
    if not ExisteVentana(Tfn1_para_estructura) then
       Application.CreateForm(Tfn1_para_estructura, fn1_para_estructura);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_oper_corteExecute
Objetivo        : Abrir el módulo de operaciones de corte por lote
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 28 de 2004
Versión         : pcp4003
*****************************************************************}
procedure T_fMDI.acti_n1_prod_oper_corteExecute(Sender: TObject);
begin
    If not ExisteVentana(Tfn1_prod_oper_corte) Then
      Application.CreateForm(Tfn1_prod_oper_corte, fn1_prod_oper_corte);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_estadoExecute
Objetivo        : Crear la ventana de estado de ordenes de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Octubre 28 de 2004
Versión         : pcp4003
*****************************************************************}
procedure T_fMDI.acti_n1_prod_estadoExecute(Sender: TObject);
begin
  If Not ExisteVentana(Tfn1_prod_estado) Then
    Application.CreateForm(Tfn1_prod_estado, fn1_prod_estado);
end;
{****************************************************************
Procedimiento   : acti_n1_pers_ingresoExecute
Objetivo        : Abrir el módulo de creación de personal
Realizado por   : Mauricio Vargas Echeverry           
Fecha           : Noviembre 02 de 2004
Versión         : pcp4003
*****************************************************************}
procedure T_fMDI.acti_n1_pers_ingresoExecute(Sender: TObject);
begin
   //If Not ExisteVentana(Tfn1_pers_ingreso_3) Then
   //       Application.CreateForm(Tfn1_pers_ingreso_3, fn1_pers_ingreso_3);

    If Not ExisteVentana(TFN1_Pers_Ingreso1, True) Then
      Begin
         Application.CreateForm(TFN1_Pers_Ingreso1, FN1_Pers_Ingreso1);
         fn1_pers_ingreso1.doInsertar('');
         fn1_pers_ingreso1.FormStyle := fsMDIChild;
      End;
    
end;
{****************************************************************
Procedimiento   : acti_n1_pers_bajasExecute
Objetivo        : Abre el módulo de bajas de personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 02 de 2004
Versión         : pcp4003
*****************************************************************}
procedure T_fMDI.acti_n1_pers_bajasExecute(Sender: TObject);
begin
    If Not ExisteVentana(Tfn1_pers_bajas) Then
       Application.CreateForm(Tfn1_pers_bajas, fn1_pers_bajas);
end;
{****************************************************************
Procedimiento   : acti_n1_pers_trasladosExecute
Objetivo        : Abrir el módulo de traslados de personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 02 de 2004
Versión         : pcp4003
*****************************************************************}
procedure T_fMDI.acti_n1_pers_trasladosExecute(Sender: TObject);
begin
   If Not ExisteVentana(Tfn1_pers_traslados2) Then
      Application.CreateForm(Tfn1_pers_traslados2, fn1_pers_traslados2);
end;
{****************************************************************
Procedimiento   : acti_n1_pers_cons_por_ubicacionExecute
Objetivo        : Abrir la consulta general de personal por ubicación
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 04 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_pers_cons_por_ubicacionExecute(Sender: TObject);
begin
    AbrirModulo(Tcn1_pers_ubicacion, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_pers_dato_confidencialesExecute
Objetivo        : Abrir el módulo de modificación de datos confidenciales
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 05 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_pers_dato_confidencialesExecute(Sender: TObject);
begin
       If not ExisteVentana(Tfn1_pers_dato_confidenciales) Then
          Application.CreateForm(Tfn1_pers_dato_confidenciales, fn1_pers_dato_confidenciales);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_oper_costuraExecute
Objetivo        : Abrir el módulo de operaciones de costura por lote
                  de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 09 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_prod_oper_costuraExecute(Sender: TObject);
begin
    if not ExisteVentana(Tfn1_prod_oper_costura) Then
      Application.CreateForm(Tfn1_prod_oper_costura, fn1_prod_oper_costura);
end;
{****************************************************************
Procedimiento   : acti_actu_consultasExecute
Objetivo        : Actualizar las consultas de la ventana activa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 09 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_actu_consultasExecute(Sender: TObject);
Begin
    if MDIChildCount = 0 Then Exit;
    RefreshWindowDataSets(ActiveMDIChild);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_cons_gene_fechaExecute
Objetivo        : Abrir la consulta general de ordenes de producción
                  por fecha
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 10 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_prod_cons_gene_fechaExecute(Sender: TObject);
begin
        AbrirModulo(Tcn1_prod_cons_gene_fechas, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_cons_busquedaExecute
Objetivo        : Abrir el módulo de búsqueda de ordenes de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 10 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_prod_cons_busquedaExecute(Sender: TObject);
begin
    AbrirModulo(Tcn1_prod_cons_gene_unidad, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_cons_maes_lotesExecute
Objetivo        : Abrir la consulta maestra de lotes de producccion
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 10 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_prod_cons_maes_lotesExecute(Sender: TObject);
begin
    AbrirModulo(Tfcn1_prod_cons_maes_lotes, fsMdiChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_cons_maestroExecute
Objetivo        : Abrir el módulo del maestro de ordenes de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_prod_cons_maestroExecute(Sender: TObject);
begin
  AbrirModulo(Tcn1_prod_cons_maestro, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_trazarExecute
Objetivo        : Abrir el módulo de trazo de ordenes de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 11 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_prod_trazarExecute(Sender: TObject);
begin
      AbrirModulo(Tfn1_prod_orde_trazar, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_soli_mate_primaExecute
Objetivo        : Abrir el módulo de solicitud de materia prima
                  por órdenes de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 12 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_prod_soli_mate_primaExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_prod_orde_soli_mate_prima, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_pedi_expl_mate_detalladaExecute
Objetivo        : Abrir el módulo de explosión detallada de materiales
                  sobre pedidos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 22 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_pedi_expl_mate_detalladaExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_come_pedi_expl_detallada, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_pedi_expl_mate_agru_materialExecute
Objetivo        : Abrir el módulo de explosión de materiales por pedido
                  (agrupada por material y orden de compra)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 24 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_pedi_expl_mate_agru_mate_ordenExecute(
  Sender: TObject);
begin
  AbrirModulo(TFn1_come_pedi_expl_agru_mate_orde_compra, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_pedi_expl_mate_agru_materialExecute
Objetivo        : Abrir el módulo de explosión de materiales por pedido
                  (agrupada por material)  
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 24 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_pedi_expl_mate_agru_materialExecute(
  Sender: TObject);
begin
  AbrirModulo(Tfn1_come_pedi_expl_agru_material, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_come_pedi_cons_orde_produccionExecute
Objetivo        : Consulta general de ordenes de producción por pedido
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 25 de 2004
Versión         : pcp4006
*****************************************************************}
procedure T_fMDI.acti_n1_plan_cons_orde_produccionExecute(
  Sender: TObject);
begin
  AbrirModulo(Tfcn1_prod_cons_pedidos, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_extenderExecute
Objetivo        : Abrir la ventana de control de avance en el extendido
                  por orden de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure T_fMDI.acti_n1_prod_extenderExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_prod_orde_extender, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_cortarExecute
Objetivo        : Abrir la ventana de control de avance de corte
                  por orden de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure T_fMDI.acti_n1_prod_cortarExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_prod_orde_corte, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_liqu_corteExecute
Objetivo        : Abrir la ventana de liquidación de ordenes de
                  corte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Noviembre 26 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure T_fMDI.acti_n1_prod_liqu_corteExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_prod_orde_liqu_corte, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_tiqu_produccionExecute
Objetivo        : Abrir la ventana de distribución de paquetes
                  e impresión de tiquetes de control de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 01 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure T_fMDI.acti_n1_prod_tiqu_produccionExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_prod_orde_dist_paquetes, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_cons_prog_lineaExecute
Objetivo        : Abrir la ventana de consulta de programación (PMP)
                  por línea
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 10 de 2004
Versión         : pcp4.0.0.10
*****************************************************************}
procedure T_fMDI.acti_n1_prod_cons_prog_lineaExecute(Sender: TObject);
begin
   Application.CreateForm(Tcn1_prod_cons_prog_linea, cn1_prod_cons_prog_linea);
end;
{****************************************************************
Procedimiento   : acti_ajus_tablasExecute
Objetivo        : Ajustar todas las tablas que existan en la ventana activa
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 12 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
procedure T_fMDI.acti_ajus_tablasExecute(Sender: TObject);
begin
    if MDIChildCount = 0 Then Exit;
    AjustarGrids(ActiveMDIChild);
end;
{****************************************************************
Procedimiento   : acti_plan_Depe_procesosExecute
Objetivo        : Abrir la ventana de dependencia de procesos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 12 de 2004
Versión         : pcp4.0.0.12
*****************************************************************}
procedure T_fMDI.acti_plan_Depe_procesosExecute(Sender: TObject);
begin
  If Not ExisteVentana(Tfn1_plan_depe_procesos) Then
  Begin
    Application.CreateForm(Tfn1_plan_depe_procesos, fn1_plan_depe_procesos);
    fn1_plan_depe_procesos.formStyle := fsMDIChild;
  End;
end;
{****************************************************************
Procedimiento   : MostrarAlerta
Objetivo        : Muestra una alerta en la barra de tareas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 16 de 2004
Versión         : pcp4.0.0.13
*****************************************************************}
Procedure T_fMDI.MostrarAlerta(peTituloAlerta, peTextoAlerta : String; peTipoAlerta : Integer);
Begin
    Alertas.HeaderText := peTituloAlerta;
    Alertas.MessageText := peTextoAlerta;
    Alertas.Execute;
End;
{****************************************************************
Procedimiento   : acti_n1_form_pago_parametrizacionExecute
Objetivo        : Abrir la ventana de parametrización de formas de pago
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 23 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_parametrizacionExecute(Sender: TObject);
begin
  If Not ExisteVentana(Tfn1_form_pago_parametrizacion) Then
    Application.CreateForm(Tfn1_form_pago_parametrizacion, fn1_form_pago_parametrizacion);
end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_base_piec_rateExecute
Objetivo        : Abrir la ventana de parametrización de forma de pago
                  por producción (Best Piece Rate)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 23 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_hora_prod_linealExecute(Sender: TObject);
begin
{   If Not ExisteVentana(Tfn1_form_pago_valo_hora_produccion) Then
     Application.CreateForm(Tfn1_form_pago_valo_hora_produccion, fn1_form_pago_valo_hora_produccion); }
end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_valo_hora_prod_movilExecute
Objetivo        : Abrir la ventana de parametrización de forma de pago
                  por valor hora producción (móvil)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 28 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_valo_hora_prod_movilExecute(Sender: TObject);
begin
{  If Not ExisteVentana(Tfn1_form_pago_valo_hora_prod_movil) Then
    Application.CreateForm(Tfn1_form_pago_valo_hora_prod_movil, fn1_form_pago_valo_hora_prod_movil);}
end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_valo_pago_habilidadExecute
Objetivo        : Abrir la ventana de parametrizacion de valores
                  hora para pago por habilidad
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 30 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_valo_pago_habilidadExecute(
  Sender: TObject);
begin
  AbrirModulo(Tfn1_form_pago_valo_hora_habilidad, fsMDIChild, Tfn1_form_pago_valo_hora_habilidad1);
end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_valo_hora_habilidadExecute
Objetivo        : Abrir la ventana de parametrización de la forma
                  de pago por habilidad
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Diciembre 30 de 2004
Versión         : pcp4.0.0.14
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_valo_hora_habilidadExecute(
  Sender: TObject);
begin
  If Not ExisteVentana(Tfn1_form_pago_valo_habilidad) Then
    Application.CreateForm(Tfn1_form_pago_valo_habilidad, fn1_form_pago_valo_habilidad);
end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_valo_hora_diferencialExecute
Objetivo        : Abrir la ventana de parametrización de la forma
                  de pago diferencial
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 05 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_valo_hora_diferencialExecute(
  Sender: TObject);
begin
  AbrirModulo(Tfn1_form_pago_diferencial, fsMDIChild, Tfn1_form_pago_diferencial1);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_cons_avan_tiquetesExecute
Objetivo        : Abrir el módulo de avance de tiquetes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure T_fMDI.acti_n1_prod_cons_avan_paquetesExecute(Sender: TObject);
begin
  If Not ExisteVentana(Tcn1_prod_avan_tiquetes) Then
     Application.CreateForm(Tcn1_prod_avan_tiquetes, cn1_prod_avan_tiquetes);
end;
{****************************************************************
Procedimiento   : acti_n1_cont_cons_diariaExecute
Objetivo        : Abrir la consulta de novedades diarias
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 06 de 2005
Versión         : pcp4.0.0.14
*****************************************************************}
procedure T_fMDI.acti_n1_cont_cons_diariaExecute(Sender: TObject);
begin
      AbrirModulo(Tcn1_cont_nove_diarias, fsMDIChild, Nil);
end;

{****************************************************************
Procedimiento   : acti_n1_form_pago_valo_hora_divididoExecute
Objetivo        : Abrir la ventana de parametrización de forma de
                  pago por valor hora producción dividido
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_valo_hora_divididoExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_form_pago_dividido, fsMDIChild, Tfn1_form_pago_dividido1);
end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_personalExecute
Objetivo        : Abrir la ventana de parametrización de formas de
                  pago para el personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 07 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_personalExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_form_pago_personal, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_mixtoExecute
Objetivo        : Abrir la ventana de parametrización de formas de pago
                  valor hora producción mixto (lineal y dividido)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 08 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_mixto_line_divididoExecute(Sender: TObject);
begin
  If Not ExisteVentana(Tfn1_form_pago_mixto) Then
     Application.CreateForm(Tfn1_form_pago_mixto, fn1_form_pago_mixto);
end;
{****************************************************************
Procedimiento   : acti_n1_cont_nove_cons_deve_grupoExecute
Objetivo        : Abrir la consulta grupal de devengados
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 09 de 2005
Versión         : pcp4.0.0.16
*****************************************************************}
procedure T_fMDI.acti_n1_cont_nove_cons_deve_grupoExecute(Sender: TObject);
begin
  If Not ExisteVentana(Tcn1_cont_nove_pago_grupal) Then
    AbrirModulo(Tcn1_cont_nove_pago_grupal, fsMDIChild, Nil);

end;
{****************************************************************
Procedimiento   : acti_n1_nove_cons_deve_grup_sin_ubicacionExecute
Objetivo        : Abrir la consulta grupal de devengados (sin ubicación)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 11 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure T_fMDI.acti_n1_nove_cons_deve_grup_sin_ubicacionExecute(Sender: TObject);
begin
    If Not ExisteVentana(Tcn1_cont_nove_pago_grup_sin_ubicacion) Then
        AbrirModulo(Tcn1_cont_nove_pago_grup_sin_ubicacion, fsMDIChild, Nil);

end;
{****************************************************************
Procedimiento   : acti_n1_cali_defectosExecute
Objetivo        : Abrir la ventana de parametrización de defectos de calidad
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure T_fMDI.acti_n1_cali_defectosExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_cali_defectos, fsMDIChild, Tfn1_cali_defectos1);

end;
{****************************************************************
Procedimiento   : acti_n1_nove_calidadExecute
Objetivo        : Abrir la ventana de novedades diarias de calidad
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 13 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure T_fMDI.acti_n1_nove_calidadExecute(Sender: TObject);
begin
    If Not ExisteVentana(Tfn1_cont_nove_defectos) Then
        Application.CreateForm(Tfn1_cont_nove_defectos, fn1_cont_nove_defectos);
end;
{****************************************************************
Procedimiento   : acti_n1_cont_nove_defe_cons_ordenExecute
Objetivo        : Abrir la consulta de defectos de calidad por
                  orden de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 15 de 2005
Versión         : pcp4.0.0.17
*****************************************************************}
procedure T_fMDI.acti_n1_cont_nove_defe_cons_ordenExecute(Sender: TObject);
begin
  AbrirModulo(Tfcn1_cont_nove_defe_orde_produccion, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_soli_insumosExecute
Objetivo        : Abrir la ventana de solicitud de insumos por
                  orden de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 24 de 2005
Versión         : pcp4.0.0.19
*****************************************************************}
procedure T_fMDI.acti_n1_prod_soli_insumosExecute(Sender: TObject);
begin
    AbrirModulo(Tfn1_prod_orde_soli_inusmos, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_pedi_expl_mate_agrupadaExecute
Objetivo        : Abre el módulo de explosión de materiales agrupada
                  por pedidos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure T_fMDI.acti_n1_pedi_expl_mate_agrupadaExecute(Sender: TObject);
begin
    Application.CreateForm(Tfn1_come_pedi_expl_vari_pedidos, fn1_come_pedi_expl_vari_pedidos);
end;
{****************************************************************
Procedimiento   : acti_n1_plan_orde_expl_materialesExecute
Objetivo        : Abrir el módulo de explosión de materiales por
                  orden de producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Enero 31 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure T_fMDI.acti_n1_plan_orde_expl_materialesExecute(Sender: TObject);
begin
    AbrirModulo(Tfn1_plan_orde_expl_materiales, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_pers_carn_disenoExecute
Objetivo        : Abrir el módulo de diseño de carné
                  (formatos de identificación del personal)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 03 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure T_fMDI.acti_n1_pers_carn_disenoExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_pers_dise_carne, fsMDIChild,  Tfn1_pers_dise_carne1);
end;
{****************************************************************
Procedimiento   : acti_n1_pers_carn_impresionExecute
Objetivo        : Abrir el módulo de impresión de carné de personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure T_fMDI.acti_n1_pers_carn_impresionExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_pers_impr_carne, fsMDIChild, Nil);

end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_curv_aprendizajeExecute
Objetivo        : Abrir el módulo de parametrización de la forma
                  de pago por curva de aprendizaje
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 07 de 2005
Versión         : pcp4.0.20.2
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_curv_aprendizajeExecute(
  Sender: TObject);
begin
  AbrirModulo(Tfn1_form_pago_curv_aprendizaje, fsMDIChild, Tfn1_form_pago_curv_aprendizaje1);
end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_asignacionExecute
Objetivo        : Abrir el módulo de cambio de forma de pago por operario
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 11 de 2005
Versión         : pcp4.0.20.4
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_asignacionExecute(Sender: TObject);
begin
    Application.CreateForm(tfn1_form_pago_personal1, fn1_form_pago_personal1);
    fn1_form_pago_personal1.DoEjecutarVentana(Now);
end;
{****************************************************************
Procedimiento   : doLlamarMenusAdicionales
Objetivo        : Carga los menús adicionales
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
procedure T_fMDI.doLlamarMenusAdicionales(Sender: TObject);
Const
        cosNumeroItemInicial = 85;
Var
    var_menu    : TTBXItem;
    var_padre : TTBCustomItem;
//    var_old_alias       : String;
begin
        If var_acce_adic_llamados Then Exit;
        //Conectar la base de datos
        With quer_menu_adic_llamar do
        Begin
            If Active then Close;
            Open;
            While not Eof do
            Begin
               var_menu := TTBXItem.Create(Nil);
               var_menu.Name := cosObjetoPCP + FieldByName('CONS_CONF_OBJETO').asString;
               var_menu.Caption := FieldByName('NOMB_OBJETO').AsString;
               var_menu.Enabled := False;
               var_menu.Tag := FieldByName('tipo').AsInteger;
               var_menu.OnClick := acti_conf_menu_adicional;
               {$IFDEF PCP4}
                      //RC13--Glyph
                      var_menu.Images := ImagenesMenus;
                      var_menu.ImageIndex := cosNumeroItemInicial + FieldByName('tipo').AsInteger;
               {$ENDIF}
               var_padre := EncontrarMenuPadre(FieldByName('nomb_menu_padre').asString);
               if (var_padre <> Nil) Then
               Begin
                   var_padre.Add(var_menu);
                   if not var_padre.Visible Then var_padre.Visible := True;
               End
               Else
               Begin
                  menu_sin_clasificacion.Add(var_menu);
                  if not menu_sin_clasificacion.Visible then menu_sin_clasificacion.Visible := True;
               End;
               Next;
            End;
            Close;
        End;
        var_acce_adic_llamados := True;
end;

procedure T_fMDI.acti_Conf_menu_adicional(Sender: TObject);
VAR
        var_cons_conf_objeto : Integer;
begin
  //Evaluar la solicitud desde un botón del menú
  If (Sender is TTBXItem) Then
  Begin
      //Buscar el consecutivo
      With quer_menu_adic_ejecutar do
      Begin
          Close;
          ParamByName('tipo').Value := (Sender as TTBXItem).Tag;
          ParamByName('nomb_objeto').Value := (Sender as TTBXItem).Caption;
          Open;
          var_cons_conf_objeto := FieldByName('cons_conf_objeto').asInteger;
          Close;
      End;
      //Evaluar el tipo de objeto adicional
      Case (Sender as TTBXItem).Tag Of
          1 : //Consultas
          Begin
              Application.CreateForm(tfn0_dise_child, fn0_dise_child);
              fn0_dise_Child.ejecutar(tivdEjecucion, var_Cons_conf_objeto, '');
          End;
      End;
  End;



{  fn0_conf_editor.barr_componentes.currentDock := dock_izquierda;
  fn0_conf_editor.pane_insp_objetos.CurrentDock := dock_derecha;

  if ActiveMDIChild = Nil then Exit;
  if fn0_conf_editor.disenador.Active then
    fn0_conf_editor.Deshabilitar
  Else
    fn0_conf_editor.DoEditar(ActiveMDIChild);
                                                    }





//  AbrirModulo(Tfn0_conf_cons_lista, fsMDIChild, Nil);
//    If (Sender is TTBXCustomItem) Then
//        ShowMessage((Sender as TTBXCustomItem).Caption);


  //Diseño ---- Application.CreateForm(Tfn0_dise_child, fn0_dise_child);

end;
{****************************************************************
Procedimiento   : EncontrarMenuPadre
Objetivo        : Encuentra un submenu en la barra principal de PCP
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 16 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
Function T_fMDI.EncontrarMenuPadre(peNombreMenu : String; peComponente : TTBXSubMenuItem = Nil) : TTBCustomItem;
Var
    var_i : Integer;
    up_peNombreMenu : String;
Begin
    Result := Nil;
    up_peNombreMenu := UpperCase(peNombreMenu);
    //Cuando el peComponete es Nil, busca en la barra
    if (peComponente = Nil) Then
    Begin
        For var_i := 1 to barra.Items.Count do
        Begin
            if (UpperCase(barra.Items[var_i - 1].Name) = up_peNombreMenu) Then
            Begin
                Result := barra.Items[var_i - 1];
                Exit;
            End;
            if (barra.Items[var_i - 1] is TTBXSubMenuItem) Then
            Begin
                Result := EncontrarMenuPadre(peNombreMenu, (barra.Items[var_i - 1] as TTBXSubMenuItem));
                if (Result <> Nil) Then Exit;
            End;
        End;
    End
    //Si no es nil, busca en el componente
    Else
    Begin
        For var_i := 1 to peComponente.Count do
        Begin
            if (UpperCase(peComponente.Items[var_i - 1].Name) = up_peNombreMenu) Then
            Begin
                Result := peComponente.Items[var_i - 1];
                Exit;
            End;
            if (peComponente.Items[var_i - 1] is TTBXSubMenuItem) Then
            Begin
                Result := EncontrarMenuPadre(peNombreMenu, (peComponente.Items[var_i - 1] as TTBXSubMenuItem));
                if (Result <> Nil) Then Exit;
            End;
        End;
    End
End;

procedure T_fMDI.TBXItem163Click(Sender: TObject);
begin
  //
  Application.CreateForm(Tfn1_prod_dise_tiquetes1, fn1_prod_dise_tiquetes1);

end;


{****************************************************************
Procedimiento   : DoOutLookBarCustomDraw
Objetivo        : Repintar en Degradé la barra OutLook
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 30-mar-2005
Versión         : pcp4.0.20.6
*****************************************************************}
Procedure T_fMDI.DoOutLookBarCustomDraw(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
        AStage: TJvOutlookBarCustomDrawStage; AIndex: integer; ADown,  AInside: boolean; var DefaultDraw:boolean);
Var
        var_barra       : TSCLOutlookBar;
Begin
        If Not (Sender Is TSCLOutlookBar) Then Exit;
        var_Barra := (Sender as TSCLOutlookBar);
        DefaultDraw := False;
        case AStage of
        odsBackground:
           with _fmdi.jvEstilo.Colors do
             GradientFillRect(ACanvas, ARect, HeaderColorFrom, HeaderColorTo, fdTopToBottom, 255);
        odsPage:
           with _fmdi.jvEstilo.Colors do
             GradientFillRect(ACanvas,ARect, ButtonColorFrom, ButtonColorTo, fdTopToBottom, 255);
        odsPageButton:
        begin
           with _fmdi.jvEstilo.Colors do
             GradientFillRect(ACanvas,ARect, HeaderColorFrom, HeaderColorTo, fdTopToBottom, 255);
           if ADown then
             OffsetRect(ARect,1,1);
           ACanvas.Font.Color := clWhite;
           DrawText(ACanvas.Handle, PChar(var_Barra.Pages[AIndex].Caption),
             Length(var_Barra.Pages[AIndex].Caption), ARect, DT_WORDBREAK or DT_VCENTER or DT_CENTER);
        end;
        odsButtonFrame:
        begin
          if ADown then
            ACanvas.Brush.Color := clNavy
          else
            ACanvas.Brush.Color := clBlack;
          ACanvas.FrameRect(ARect);
          InflateRect(ARect,-1,-1);
          if not ADown then
            ACanvas.Brush.Color := clWhite;
          ACanvas.FrameRect(ARect);
        end;
        odsButton:
          DefaultDraw := True;
        end;
End;
{****************************************************************
Procedimiento   : acit_n0_dise_objetosExecute
Objetivo        : Abrir el módulo de edición de objetos adicionales
                  (consultas, reportes, imagenes...)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure T_fMDI.acit_n0_dise_objetosExecute(Sender: TObject);
begin
        Application.CreateForm(Tfn0_dise_consultas, fn0_dise_consultas);
end;
{****************************************************************
Procedimiento   : acti_n1_meto_tiem_cicl_maquinaExecute
Objetivo        : Abrir el módulo de tiempos de ciclo para máquinas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 14-Abr-2005
Versión         : pcp4.0.20.6
*****************************************************************}
procedure T_fMDI.acti_n1_meto_tiem_cicl_maquinaExecute(Sender: TObject);
begin
        if Not ExisteVentana(Tfn1_meto_tiem_cicl_maquina) Then
           AbrirModulo(Tfn1_meto_tiem_cicl_maquina, fsmdiChild, Tfn1_meto_tiem_cicl_maquina1);

end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_bonosExecute
Objetivo        : Abrir el módulo de parametrización de
                  bonificaciones por producción
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 28-Abr-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_bonosExecute(Sender: TObject);
begin
  If not ExisteVentana(tfn1_form_pago_bonos) Then
        AbrirModulo(Tfn1_form_pago_bonos, fsMDIChild, Tfn1_form_pago_bonos1);
end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_mixto_vhp_curv_aprendizajeExecute
Objetivo        : Abrir el módulo de parametrización de la forma de pago
                  mixto (valor hora producción + curva aprendizaje) 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 02-Ene-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_mixto_vhp_curv_aprendizajeExecute(
  Sender: TObject);
begin
   //Deshabilitado y retirado del menu en RC20.13
end;
{****************************************************************
Procedimiento   : acti_n1_pers_sistemaExecute
Objetivo        : Abrir el módulo de modificación del personal (sistema)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure T_fMDI.acti_n1_pers_sistemaExecute(Sender: TObject);
begin
  if Not ExisteVentana(Tfn1_pers_sistema) Then
      Application.CreateForm(Tfn1_pers_sistema, fn1_pers_sistema);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_cata_imagenesExecute
Objetivo        : Abrir el catálogo de imágenes por referencia
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 17-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure T_fMDI.acti_n1_refe_cata_imagenesExecute(Sender: TObject);
begin
{  if Not ExisteVentana(Tfn1_refe_cata_imagenes) Then
  Application.CreateForm(Tfn1_refe_cata_imagenes, fn1_refe_cata_imagenes);
  fn1_refe_cata_imagenes.WindowState := wsMaximized;
  fn1_refe_cata_imagenes.FormStyle := fsMDIChild;
  fn1_refe_cata_imagenes.padr_storage.Active := False;   }
  //abrirmodulo(Tfn1_refe_00_maestro, fsMDIChild, nil);

end;
{****************************************************************
Procedimiento   : acti_n1_refe_fich_maestroExecute
Objetivo        : Abrir la ventana maestra de fichas técnicas
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure T_fMDI.acti_n1_refe_fich_maestroExecute(Sender: TObject);
begin
  //AbrirModulo(Tfn1_refe_fich_maestro, fsMDIChild, Nil);
  AbrirModulo(Tfn1_refe_fich_maestro_vista, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_fich_hoja_dise_caratulaExecute
Objetivo        : Abrir el módulo de fichas técnicas de productos
                  01 - hoja de diseño (carátula)
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 23-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure T_fMDI.acti_n1_refe_fich_hoja_dise_caratulaExecute(
  Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdHojaDisenoCaratula), 0, 0, True, True);
    //AbrirModuloFichaTecnica(ftdHojaDisenoCaratula);
end;
{****************************************************************
Procedimiento   : acti_n1_refe_fich_hoja_disenoExecute
Objetivo        : Abrir el módulo de fichas técnicas de productos
                  02 - hoja de diseño
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 26-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure T_fMDI.acti_n1_refe_fich_hoja_disenoExecute(Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdHojaDiseno), 0, 0, True, True);
end;

procedure T_fMDI.acti_n1_refe_fich_espe_gene_disenoExecute(
  Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdEspecificacionesGeneralesDiseno), 0, 0, True, True);
end;

procedure T_fMDI.acti_n1_refe_fich_espe_dise_detallesExecute(
  Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdEspecificacionesDisenoDetalles), 0, 0, True, True);
end;

procedure T_fMDI.acti_n1_refe_fich_espe_empaqueExecute(Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdEspecificacionesEmpaque), 0, 0, True, True);
end;

procedure T_fMDI.acti_n1_refe_fich_espe_construccionExecute(
  Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdEspecificacionesConstruccion), 0, 0, True, True);
end;

procedure T_fMDI.acti_n1_refe_fich_medi_especialesExecute(Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdMedidasEspecialesDetalles), 0, 0, True, True);
end;

procedure T_fMDI.acti_n1_refe_fich_medi_pren_terminadaExecute(
  Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdMedidasPrendaTerminada), 0, 0, True, True);
end;

procedure T_fMDI.acti_n1_refe_fich_espe_presentacionExecute(
  Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdEspecificacionesPresentacion), 0, 0, True, True);
end;
{****************************************************************
Procedimiento   : acti_n2_prot_maes_fichasExecute
Objetivo        : Abrir el maestro de fichas técnicas para prototipos
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 10-Jun-2005
Versión         : pcp4.0.20.12
*****************************************************************}
procedure T_fMDI.acti_n2_prot_fich_maestroExecute(Sender: TObject);
begin
  AbrirModulo(Tfn2_prot_fich_maestro_vista, fsMDIChild, Nil);
end;
       
procedure T_fMDI.acti_n2_prot_fich_dise_caratulaExecute(Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdHojaDisenoCaratula), 0, 0, False, True);
end;

procedure T_fMDI.acti_n2_prot_fich_hoja_disenoExecute(Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdHojaDiseno), 0, 0, False, True);
end;

procedure T_fMDI.acti_n2_prot_fich_espe_gene_disenoExecute(
  Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdEspecificacionesGeneralesDiseno), 0, 0, False, True);
end;

procedure T_fMDI.acti_n2_prot_fich_espe_dise_detallesExecute(
  Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdEspecificacionesDisenoDetalles), 0, 0, False, True);
end;

procedure T_fMDI.acti_n2_prot_fich_espe_empaqueExecute(Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdEspecificacionesEmpaque), 0, 0, False, True);
end;

procedure T_fMDI.acti_n2_prot_fich_espe_ConstruccionExecute(
  Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdEspecificacionesConstruccion), 0, 0, False, True);
end;

procedure T_fMDI.acti_n2_prot_fich_medi_especialesExecute(Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdMedidasEspecialesDetalles), 0, 0, False, True);
end;

procedure T_fMDI.acti_n2_prot_fich_espe_pren_terminadaExecute(
  Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdMedidasPrendaTerminada), 0, 0, False, True);
end;

procedure T_fMDI.acti_n2_prot_fich_espe_presentacionExecute(
  Sender: TObject);
begin
    Application.CreateForm(Tfn1_refe_fich_00Seleccion, fn1_refe_fich_00Seleccion);
    fn1_refe_fich_00Seleccion.Ejecutar(TipoFichasTecnicasToInteger(ftdEspecificacionesPresentacion), 0, 0, False, True);
end;
{****************************************************************
Procedimiento   : acti_n1_form_pagoExecute
Objetivo        : Abrir la ventana de asignación de formas de
                  pago del personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fMDI.acti_n1_form_pagoExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_pers_form_pago, fsMDIChild, Tfn1_pers_form_pago1);
end;
{****************************************************************
Procedimiento   : acti_n1_form_pago_asig_bonosExecute
Objetivo        : Abrir el módulo de asignación de bonos de
                  producción para el personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fMDI.acti_n1_form_pago_asig_bonosExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_pers_form_pago_bonos, fsMDIChild, Tfn1_pers_form_pago_bonos1);
end;
{****************************************************************
Procedimiento   : acti_n1_cont_nove_pago_brutoExecute
Objetivo        : Abrir la consulta de pago bruto
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fMDI.acti_n1_cont_nove_pago_brutoExecute(Sender: TObject);
begin
  AbrirModulo(Tcn1_cont_nove_pago_bruto, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_cont_nove_efic_diariaExecute
Objetivo        : Abrir la consulta de eficiencias diaria por operario
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-Jun-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fMDI.acti_n1_cont_nove_efic_diariaExecute(Sender: TObject);
begin
  AbrirModulo(Tcn1_cont_nove_efic_diario, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_cont_curv_apre_operarioExecute
Objetivo        : Abrir la consulta de avance de la curva de aprendizaje
                  de un operario
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 24-Jun-2005
Versión         : pcp4.0.20.14
*****************************************************************}
procedure T_fMDI.acti_n1_cont_curv_apre_operarioExecute(Sender: TObject);
begin
	Application.CreateForm(Tfn1_cont_prod_curv_apre_operario, fn1_cont_prod_curv_apre_operario);
end;

procedure T_fMDI.TBXItem153Click(Sender: TObject);
begin
  AbrirModulo(Tcn1_cont_nove_efic_grupo, fsMDIChild, Nil);

end;
{****************************************************************
Procedimiento   : acti_n1_pers_reingresosExecute
Objetivo        : Crear el módulo de reingreso de personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.17
*****************************************************************}
procedure T_fMDI.acti_n1_pers_reingresosExecute(Sender: TObject);
begin
      Application.CreateForm(TFN1_Pers_Reingresos1, FN1_Pers_Reingresos1);
end;
{****************************************************************
Procedimiento   : acti_n1_pers_cons_hist_movimientosExecute
Objetivo        : Abrir la consulta histórica de movimientos del personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fMDI.acti_n1_pers_cons_hist_movimientosExecute(
  Sender: TObject);
begin
  AbrirModulo(Tfn1_pers_hist_movimientos, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : doInicializarAvisos
Objetivo        : Mostrar avisos del sistema al usuario cuando se conecte
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
Procedure T_fMDI.doInicializarAvisos;
Begin
     With quer_Sistema do
     Begin
         //Parametrizar la consulta
         Close;
         ParamByName('usuario').Value := var_usua_activo;
         Open;
         //Si no hay registros, cerrar y salir de procedimiento
         if RecordCount = 0 Then
         Begin
             Close;
             Exit;
         End;
         //Por ahora, solamente tiene la ventana de aviso de vencimientos de contrato
         if (FieldByName('pers_avis_venc_contratos').asInteger = 1) Then
           AbrirModulo(Tfn1_pers_cons_venc_contrato, fsMDIChild, Nil);
         //Cerrar la consulta
         Close;
     End;
End;
{****************************************************************
Procedimiento   : acti_n1_pers_cons_cont_por_vencerseExecute
Objetivo        : Abrir la consulta general de contratos por
                  vencerse en el personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fMDI.acti_n1_pers_cons_cont_por_vencerseExecute(
  Sender: TObject);
begin
        AbrirModulo(Tfn1_pers_cons_venc_contrato, fsMDIChild, Nil);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_dise_tiquetesExecute
Objetivo        : Abrir el módulo de diseño de tiquetes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 09-Ago-2005
Versión         : pcp4.0.20.13
*****************************************************************}
procedure T_fMDI.acti_n1_prod_dise_tiquetesExecute(Sender: TObject);
begin
  AbrirModulo(Tfn1_prod_dise_tiquetes, fsMDIChild, Tfn1_prod_dise_tiquetes1);

end;

procedure T_fMDI.TBXItem289Click(Sender: TObject);
begin
//  Application.CreateForm(Tcn1_prod_unid_producidas, cn1_prod_unid_producidas);
end;

{****************************************************************
Procedimiento   : acti_n1_prod_lanz_sin_pedidoExecute
Objetivo        : Abrir la ventana de creación de ordenes de producción
                  sin pedido
Realizado por   : Tecnologia
Fecha           : 12-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.21
*****************************************************************}
procedure T_fMDI.acti_n1_prod_lanz_sin_pedidoExecute(Sender: TObject);
begin
  If Not ExisteVentana(Tfn1_prod_lanz_orde_sin_pedido) Then
     Application.CreateForm(Tfn1_prod_lanz_orde_sin_pedido, fn1_prod_lanz_orde_sin_pedido);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_tiqu_impr_distribucionExecute
Objetivo        : Abrir el módulo de impresión de distribución de paquetes
Realizado por   : Tecnologia
Fecha           : 14-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.acti_n1_prod_tiqu_impr_distribucionExecute(
  Sender: TObject);
begin
  Application.CreateForm(Tfn1_prod_orde_dist_paqu_imprimir, fn1_prod_orde_dist_paqu_imprimir);
  fn1_prod_orde_dist_paqu_imprimir.Ejecutar(0, 0, 0, Nil, Nil, Nil, True, fsMdiChild);
end;
{****************************************************************
Procedimiento   : acti_n1_prod_tiqu_impr_tiqu_produccionExecute
Objetivo        : Abrir el asistente de impresión de tiquetes de
                  control de producción
Realizado por   : Tecnologia
Fecha           : 17-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.acti_n1_prod_tiqu_impr_tiqu_produccionExecute(
  Sender: TObject);
begin
  Application.CreateForm(Tfwn1_prod_fabr_impr_tiquetes, fwn1_prod_fabr_impr_tiquetes);
  fwn1_prod_fabr_impr_tiquetes.doEjecutarAsistente(0, 0, 0, 0, True);
end;
{****************************************************************
Procedimiento   : acti_n1_cont_nove_indi_eficienciaExecute
Objetivo        : Abrir el módulo de consulta de novedades
                  individuales de producción
Realizado por   : Tecnologia
Fecha           : 24-Oct-2005
Argumentos      : Sender: TObject
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.acti_n1_cont_nove_indi_eficienciaExecute(Sender: TObject);
begin
      If not ExisteVentana(Tfn1_cont_prod_cons_indi_eficiencias) Then
         Application.CreateForm(Tfn1_cont_prod_cons_indi_eficiencias, fn1_cont_prod_cons_indi_eficiencias);
end;

{****************************************************************
Procedimiento   : Acti_N1_Pers_Por_EstadoExecute
Objetivo        : Abrir el módulo de listado de personal por estados
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 10 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Pers_Por_EstadoExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Pers_Estados := TFCN1_Pers_Estados.Create(Self);
  With FCN1_Pers_Estados Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Pers_Por_AntiguedadExecute
Objetivo        : Abrir el módulo de listado de personal por antiguedad
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 10 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Pers_Por_AntiguedadExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Pers_Por_Antiguedad := TFCN1_Pers_Por_Antiguedad.Create(Self);
  With FCN1_Pers_Por_Antiguedad Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Pers_Por_CargosExecute
Objetivo        : Abrir el módulo de listado de personal por cargos
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 10 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Pers_Por_CargosExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Pers_Por_Cargos := TFCN1_Pers_Por_Cargos.Create(Self);
  With FCN1_Pers_Por_Cargos Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Pers_Por_TurnosExecute
Objetivo        : Abrir el módulo de listado de personal por turnos
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 10 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Pers_Por_TurnosExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Pers_Por_Turnos := TFCN1_Pers_Por_Turnos.Create(Self);
  With FCN1_Pers_Por_Turnos Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Pers_Por_Nive_SalarialesExecute
Objetivo        : Abrir el módulo de listado de personal por
									niveles salariales
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 10 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Pers_Por_Nive_SalarialesExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Pers_Por_Nive_Salarial := TFCN1_Pers_Por_Nive_Salarial.Create(Self);
  With FCN1_Pers_Por_Nive_Salarial Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Maqu_IngresosExecute
Objetivo        : Abrir el módulo de ingreso de maquinaria
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 17 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Maqu_IngresosExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Recu_Ingresos := TFCN1_Recu_Ingresos.Create(Self);
  With FCN1_Recu_Ingresos Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Maqu_BajasExecute
Objetivo        : Abrir el módulo de bajas de maquinaria
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 17 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Maqu_BajasExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Recu_Bajas := TFCN1_Recu_Bajas.Create(Self);
  With FCN1_Recu_Ingresos Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Maqu_AntiguedadExecute
Objetivo        : Abrir el módulo de maquinaria por antiguedad
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 17 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Maqu_AntiguedadExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Recu_Antiguedad := TFCN1_Recu_Antiguedad.Create(Self);
  With FCN1_Recu_Antiguedad Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Maqu_TrasladosExecute
Objetivo        : Abrir el módulo de movimientos de
									maquinaria (traslados)
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 20 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Maqu_TrasladosExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Recu_Traslados := TFCN1_Recu_Traslados.Create(Self);
  With FCN1_Recu_Traslados Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Acce_ingresosExecute
Objetivo        : Abrir el módulo de ingreso a inventario
									de accesorios
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 20 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Acce_ingresosExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Acce_Ingresos := TFCN1_Acce_Ingresos.Create(Self);
  With FCN1_Acce_Ingresos Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Acce_BajasExecute
Objetivo        : Abrir el módulo de bajas a inventario
									de accesorios
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 24 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Acce_BajasExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Acce_Bajas := TFCN1_Acce_Bajas.Create(Self);
  With FCN1_Acce_Bajas Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Acce_AntiguedadExecute
Objetivo        : Abrir el módulo de inventario	de accesorios
									por antiguedad
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 25 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Acce_AntiguedadExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Acce_Antiguedad := TFCN1_Acce_Antiguedad.Create(Self);
  With FCN1_Acce_Antiguedad Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_N1_Acce_TrasladosExecute
Objetivo        : Abrir el módulo de movimientos de accesorios (traslados)
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Enero 25 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Acce_TrasladosExecute(Sender: TObject);
begin
  //Crear la forma
	FCN1_Acce_Traslados := TFCN1_Acce_Traslados.Create(Self);
  With FCN1_Acce_Traslados Do
  Begin
		Visible := False;
    FormStyle := fsNormal;
    WindowState := wsNormal;
    Position := PoScreenCenter;
    ShowModal;
  End;
end;

{****************************************************************
Procedimiento   : Acti_InglesExecute
Objetivo        : Traducir al ingles
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Febrero 14 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
(*procedure T_fMDI.Acti_InglesExecute(Sender: TObject);
begin
	WKLenguaje_Anterior := WKLenguaje;
  WKLenguaje := 2;
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Acti_EspanolExecute
Objetivo        : Traducir al español
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Febrero 14 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_EspanolExecute(Sender: TObject);
begin
  WKLenguaje_Anterior := WKLenguaje;
  WKLenguaje := 1;
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Acti_FrancesExecute
Objetivo        : Traducir al francés
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Febrero 14 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_FrancesExecute(Sender: TObject);
begin
	WKLenguaje_Anterior := WKLenguaje;
  WKLenguaje := 3;
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Acti_ItalianoExecute
Objetivo        : Traducir al italiano
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Febrero 14 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_ItalianoExecute(Sender: TObject);
begin
	WKLenguaje_Anterior := WKLenguaje;
  WKLenguaje := 4;
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Acti_AlemanExecute
Objetivo        : Traducir al alemán
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Febrero 14 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_AlemanExecute(Sender: TObject);
begin
  WKLenguaje_Anterior := WKLenguaje;
  WKLenguaje := 5;
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Acti_PortuguesExecute
Objetivo        : Traducir al portugués
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Febrero 14 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_PortuguesExecute(Sender: TObject);
begin
  WKLenguaje_Anterior := WKLenguaje;
  WKLenguaje := 6;
  Insertar_Palabras(Self, WKLenguaje);
end;

(***************************************************************)
(* Nombre      : Acti_Language
(* Creador     : Edgar Fernando Rodriguez P.
(* Fecha       : Viernes 6 de Octubre de 2006
(* Versión     : PCP4.03.01
(* Descripción : Permite unir los procedimientos de lenguaje
(*               en uno solo mediante la propiedad Tag
(***************************************************************)
procedure T_fMDI.Acti_Language(Sender: TObject);
begin
  WKLenguaje_Anterior := WKLenguaje;
  WKLenguaje := (Sender as TTBXItem).Tag;
  Insertar_Palabras(Self, WKLenguaje);
end;

{****************************************************************
Procedimiento   : Acti_N1_Pers_PolifuncionalidadExecute
Objetivo        : Abrir el módulo de polifuncionalidad
Realizado por   : Gustavo A. Muñoz A.
Fecha           : Mayo 24 de 2006
Versión         : pcp4.0.20.19
*****************************************************************}
procedure T_fMDI.Acti_N1_Pers_PolifuncionalidadExecute(Sender: TObject);
begin
  AbrirModulo(TFN1_Pers_Polifuncionalidad1, fsMDIChild, Nil);
end;

{****************************************************************
Procedimiento   : FormShow
Objetivo        : Actualizar los controles al hacer visible
                  la ventana
Realizado por   : Mauricio Vargas-Echeverry
Fecha           : Agosto 30 de 2004
Versión         : pcp4000
*****************************************************************}
procedure T_fMDI.FormShow(Sender: TObject);
begin
  if not var_Aplicacion_Inicializada Then Begin
      var_Aplicacion_Inicializada := True;
      // Mostrar la ventana de conexion para iniciar nueva sesión
      //....................................................................
      doLlamarUsuarios(Sender);
      //--------------PENDIENTE-------------
      acti_n0_inic_conexionExecute(Sender);
  end;
  PostMessage(Self.Handle, wm_End_Splash, 0, 0);  // Terminar con el Splash;
End;

var
  funct1: procedure;
  
procedure T_fMDI.TBXAboutClick(Sender: TObject);
begin
  h1 := LoadLibrary('sclsplash.erp');
  try
    funct1 := GetProcAddress(h1, 'ShowAbout');
    if assigned(funct1) then
      funct1;
  finally
    FreeLibrary(h1);
  end;
end;

procedure T_fMDI.End_Splash(var Msg: TMessage);
begin
  FreeLibrary(h1);  // De todas formas hay que cerrar el Splash
  // Hice la prueba liberándola sin PostMessage, es decir directo
  // Pero bloquea el sistema porque no ha terminado de cargar el
  // formulario principal y Windows no sabe qué hacer...
end;

Initialization
  h1 := LoadLibrary('sclsplash.erp');
  try
    funct1 := GetProcAddress(h1, 'ShowSplash');
    if assigned(funct1) then
      funct1;
  finally
  end; 
  RegisterClasses([TdxPageControl, TdxTabSheet]);


end.

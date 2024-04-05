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
        Unit            : UN1_Pers_Ingreso1
        Objetivo        : Creación del personal
        Realizado por   : Mauricio Vargas Echeverry
        Fecha           : 19-Abr-2005
        Versión         : pcp4.0.20.6
*******************************************************************}
unit UN1_Pers_Ingreso1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  _vent_modal, PictureContainer, AdvPanel, dxExEdtr, dxCntner, Db,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxCurrencyEditPCP,
  DBCtrls, dxDBELib, ufra_maqu_ubicacion, ufra_fotografiaDB, dxEditor,
  TBXDkPanels, TBXButtonSCL, RxLookup, PCPLookUpComboEdit, SCLTabs,
  JvExExtCtrls, JvComponent, JvDBRadioPanel, SCLShape, PCPFrame, DBTables,
  ufra_mens_atencion, RXCtrls, RXDBCtrl, kbmMemTable, 
  SCLPropiedadesForm, DBActns, ActnList, ImgList, Boxes, PCPProceso,
  StdCtrls, SoCtrls, SCLDBLabel, ExtCtrls, TBX, TB2Item, TB2Dock,
  TB2Toolbar;
  
type
  TFN1_Pers_Ingreso1 = class(T_fvent_modal)
    Fami_Acciones: TActionList;
    Acti_Nuev_Familiar: TAction;
    Acti_Elim_Familiar: TAction;
    DSQTipo_Movimiento: TDataSource;
    data_parentescos: TDataSource;
    data_esta_civil: TDataSource;
    data_sexos: TDataSource;
    data_vivi_pais: TDataSource;
    data_vivi_departamento: TDataSource;
    data_vivi_ciudad: TDataSource;
    DSQEmpresas: TDataSource;
    data_turnos: TDataSource;
    data_Tipo_Contrato: TDataSource;
    data_cargos: TDataSource;
    data_nive_salarial: TDataSource;
    data_peri_pago: TDataSource;
    tabl_glo_personal: TkbmMemTable;
    QConsecutivo_Movimiento: TQuery;
    Tabla_VentanaCONS_PERS_MOVIMIENTO: TIntegerField;
    Tabla_VentanaCONS_PERSONAL: TIntegerField;
    Tabla_VentanaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    Tabla_VentanaFECH_INICIAL: TDateTimeField;
    Tabla_VentanaFECH_FINAL: TDateTimeField;
    Tabla_VentanaNUME_DOCUMENTO: TStringField;
    data_tipo_docu_ingreso: TDataSource;
    Tabla_VentanaFECH_SISTEMA: TDateTimeField;
    Tabla_VentanaUSUA_SISTEMA: TStringField;
    Tabla_VentanaOBSERVACIONES: TStringField;
    tabl_glo_personalCONS_PERSONAL: TIntegerField;
    tabl_glo_personalCODI_PERSONAL: TStringField;
    tabl_glo_personalPRIM_APELLIDO: TStringField;
    tabl_glo_personalSEGU_APELLIDO: TStringField;
    tabl_glo_personalNOMBRES: TStringField;
    TFamiliares_I: TTable;
    DSFamiliares_I: TDataSource;
    TFamiliares_ICONS_PERSONAL: TIntegerField;
    TFamiliares_ICONS_PERS_TIPO_DOCUMENTO: TIntegerField;
    TFamiliares_INUME_DOCUMENTO: TStringField;
    TFamiliares_IPRIM_APELLIDO: TStringField;
    TFamiliares_ISEGU_APELLIDO: TStringField;
    TFamiliares_INOMBRES: TStringField;
    TFamiliares_ICONS_SEXO: TIntegerField;
    TFamiliares_ICONS_PARENTESCO: TIntegerField;
    TFamiliares_IFECH_NACIMIENTO: TDateTimeField;
    TFamiliares_ICONS_PAIS: TIntegerField;
    TFamiliares_ICONS_DEPARTAMENTO: TIntegerField;
    TFamiliares_ICONS_CIUDAD: TIntegerField;
    TFamiliares_IDIRECCION: TStringField;
    TFamiliares_ITELE_RESIDENCIA: TStringField;
    TFamiliares_ITELE_OTRO: TStringField;
    TFamiliares_ITELE_MOVIL: TStringField;
    TFamiliares_IOCUPACION: TStringField;
    TFamiliares_INOMB_EMPRESA: TStringField;
    TFamiliares_IDIRE_EMPRESA: TStringField;
    TFamiliares_ITELE_EMPRESA: TStringField;
    TFamiliares_ICORR_ELECTRONICO: TStringField;
    Tabla_VentanaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    quer_sexos: TQuery;
    quer_esta_civil: TQuery;
    QTipo_Movimiento: TQuery;
    quer_parentescos: TQuery;
    quer_vivi_pais: TQuery;
    quer_vivi_departamento: TQuery;
    quer_vivi_ciudad: TQuery;
    QEmpresas: TQuery;
    quer_turnos: TQuery;
    quer_tipo_docu_ingreso: TQuery;
    quer_tipo_contrato: TQuery;
    quer_cargos: TQuery;
    quer_nive_salarial: TQuery;
    quer_peri_pago: TQuery;
    quer_tipo_documento: TQuery;
    data_tipo_documento: TDataSource;
    data_naci_pais: TDataSource;
    data_naci_departamentos: TDataSource;
    data_naci_ciudades: TDataSource;
    Acti_Modi_Familiar: TAction;
    Tabla_VentanaCONS_SOLICITA: TIntegerField;
    Tabla_VentanaCONS_APROBO: TIntegerField;
    quer_cent_costos: TQuery;
    data_cent_costos: TDataSource;
    quer_subc_costos: TQuery;
    data_subc_costos: TDataSource;
    PCPFrame1: TPCPFrame;
    Page: TSCLPageControl;
    page_generales: TSCLTabSheet;
    PCPFrame10: TPCPFrame;
    SCLDBLabel1: TSCLDBLabel;
    SCLDBLabel2: TSCLDBLabel;
    SCLDBLabel3: TSCLDBLabel;
    SCLDBLabel4: TSCLDBLabel;
    SCLDBLabel41: TSCLDBLabel;
    SCLDBLabel43: TSCLDBLabel;
    SCLDBLabel69: TSCLDBLabel;
    edit_Codi_personal: TdxDBEdit;
    edit_apellido1: TdxDBEdit;
    edit_apellido2: TdxDBEdit;
    Edit_Nombres: TdxDBEdit;
    ffra_fotografiaDB1: Tffra_fotografiaDB;
    comb_sexo: TPCPLookUpComboEdit;
    comb_Esta_civil: TPCPLookUpComboEdit;
    edit_nume_hijos: TdxDBEdit;
    page_dato_personales: TSCLTabSheet;
    PCPFrame2: TPCPFrame;
    SCLDBLabel5: TSCLDBLabel;
    SCLDBLabel6: TSCLDBLabel;
    SCLDBLabel31: TSCLDBLabel;
    SCLDBLabel32: TSCLDBLabel;
    comb_tipo_documento: TPCPLookUpComboEdit;
    edit_nume_documento: TdxDBEdit;
    edit_docu_fech_expedicion: TdxDBDateEdit;
    edit_docu_luga_expedicion: TdxDBEdit;
    PCPFrame3: TPCPFrame;
    SCLDBLabel33: TSCLDBLabel;
    SCLDBLabel34: TSCLDBLabel;
    SCLDBLabel35: TSCLDBLabel;
    SCLDBLabel36: TSCLDBLabel;
    edit_pasa_numero: TdxDBEdit;
    edit_pasa_fech_expedicion: TdxDBDateEdit;
    edit_pasa_lugar: TdxDBEdit;
    edit_pasa_fech_vencimiento: TdxDBDateEdit;
    PCPFrame4: TPCPFrame;
    SCLDBLabel37: TSCLDBLabel;
    SCLDBLabel38: TSCLDBLabel;
    edit_libr_numero: TdxDBEdit;
    edit_libr_fecha: TdxDBDateEdit;
    PCPFrame11: TPCPFrame;
    SCLDBLabel27: TSCLDBLabel;
    SCLDBLabel28: TSCLDBLabel;
    SCLDBLabel30: TSCLDBLabel;
    SCLDBLabel29: TSCLDBLabel;
    edit_fech_nacimiento: TdxDBDateEdit;
    comb_naci_pais: TPCPLookUpComboEdit;
    comb_naci_ciudad: TPCPLookUpComboEdit;
    SCLButton13: TTBXButtonSCL;
    SCLButton12: TTBXButtonSCL;
    comb_naci_departamento: TPCPLookUpComboEdit;
    SCLButton14: TTBXButtonSCL;
    page_familiares: TSCLTabSheet;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXItem3: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem1: TTBXItem;
    page_direcciones: TSCLTabSheet;
    PCPFrame5: TPCPFrame;
    SCLDBLabel20: TSCLDBLabel;
    SCLDBLabel21: TSCLDBLabel;
    SCLDBLabel22: TSCLDBLabel;
    SCLDBLabel23: TSCLDBLabel;
    SCLDBLabel24: TSCLDBLabel;
    SCLDBLabel25: TSCLDBLabel;
    SCLDBLabel26: TSCLDBLabel;
    comb_vivi_pais: TPCPLookUpComboEdit;
    SCLButton9: TTBXButtonSCL;
    comb_vivi_departamento: TPCPLookUpComboEdit;
    SCLButton10: TTBXButtonSCL;
    comb_vivi_ciudad: TPCPLookUpComboEdit;
    SCLButton11: TTBXButtonSCL;
    comb_vivi_direccion: TdxDBEdit;
    edit_telefono1: TdxDBEdit;
    edit_telefono2: TdxDBEdit;
    edit_telefono3: TdxDBEdit;
    page_ubicacion: TSCLTabSheet;
    FUbicacion: TPCPFrame;
    fram_ubicacion: Tffra_maqu_ubicacion;
    Panel1: TPCPFrame;
    SCLDBLabel11: TSCLDBLabel;
    SCLDBLabel16: TSCLDBLabel;
    SCLDBLabel44: TSCLDBLabel;
    SCLDBLabel45: TSCLDBLabel;
    comb_turno: TPCPLookUpComboEdit;
    SCLButton1: TTBXButtonSCL;
    comb_cargo: TPCPLookUpComboEdit;
    SCLButton5: TTBXButtonSCL;
    comb_cent_costos: TPCPLookUpComboEdit;
    SCLButton4: TTBXButtonSCL;
    comb_subc_costos: TPCPLookUpComboEdit;
    page_confidenciales: TSCLTabSheet;
    FContrato: TPCPFrame;
    SCLDBLabel7: TSCLDBLabel;
    SCLDBLabel8: TSCLDBLabel;
    SCLDBLabel13: TSCLDBLabel;
    SCLDBLabel14: TSCLDBLabel;
    comb_tipo_contrato: TPCPLookUpComboEdit;
    dxEdit1: TdxDBEdit;
    SCLButton15: TTBXButtonSCL;
    dxDBEdit9: TdxDBEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    FSalario: TPCPFrame;
    SCLDBLabel9: TSCLDBLabel;
    SCLDBLabel10: TSCLDBLabel;
    SCLDBLabel12: TSCLDBLabel;
    PCPLookUpComboEdit4: TPCPLookUpComboEdit;
    SCLButton16: TTBXButtonSCL;
    edit_salario: TdxDBCurrencyEdit;
    FAuxilios: TPCPFrame;
    SCLDBLabel18: TSCLDBLabel;
    SCLDBLabel19: TSCLDBLabel;
    dxCurrencyEdit2: TdxDBCurrencyEdit;
    dxCurrencyEdit1: TdxDBCurrencyEdit;
    quer_nive_salarialCONS_PERS_NIVE_SALARIAL: TIntegerField;
    quer_nive_salarialNOMB_PERS_NIVE_SALARIAL: TStringField;
    quer_naci_paises: TQuery;
    quer_naci_departamentos: TQuery;
    quer_naci_ciudades: TQuery;
    comb_nive_salarial: TPCPLookUpComboEdit;
    quer_nive_salarialVALO_MINIMO: TIntegerField;
    quer_nive_salarialVALO_MAXIMO: TIntegerField;
    comb_nive_sala_valores: TPCPLookUpComboEdit;
    page_form_pago: TSCLTabSheet;
    quer_form_pago: TQuery;
    data_form_pago: TDataSource;
    quer_diferencial: TQuery;
    data_codigo: TDataSource;
    quer_dividido: TQuery;
    quer_para_form_pago: TQuery;
    quer_guar_form_pago: TQuery;
    Panel2: TPanel;
    SCLDBLabel47: TSCLDBLabel;
    SCLDBLabel48: TSCLDBLabel;
    DBText1: TDBText;
    edit_valo_hora_mini_garantizado: TdxDBCurrencyEdit;
    pane_valo_hora_produccion: TPanel;
    SCLDBLabel46: TSCLDBLabel;
    DBText2: TDBText;
    edit_valo_hora_produccion: TdxDBCurrencyEdit;
    pane_codigo: TPanel;
    SCLDBLabel49: TSCLDBLabel;
    comb_codigo: TPCPLookUpComboEdit;
    quer_veri_codigo: TQuery;
    Panel3: TPanel;
    DBFamiliares: TdxDBGrid;
    DBFamiliaresNUME_DOCUMENTO: TdxDBGridMaskColumn;
    DBFamiliaresPRIM_APELLIDO: TdxDBGridMaskColumn;
    DBFamiliaresSEGU_APELLIDO: TdxDBGridMaskColumn;
    DBFamiliaresNOMBRES: TdxDBGridMaskColumn;
    DBFamiliaresTELE_RESIDENCIA: TdxDBGridMaskColumn;
    DBFamiliaresTELE_OTRO: TdxDBGridMaskColumn;
    DBFamiliaresTELE_MOVIL: TdxDBGridMaskColumn;
    DBFamiliaresOCUPACION: TdxDBGridMaskColumn;
    DBFamiliaresCORR_ELECTRONICO: TdxDBGridMaskColumn;
    DBFamiliaresTELE_EMPRESA: TdxDBGridMaskColumn;
    page_info_documento: TSCLTabSheet;
    SCLDBLabel40: TSCLDBLabel;
    SCLDBLabel42: TSCLDBLabel;
    SCLDBLabel64: TSCLDBLabel;
    SCLDBLabel17: TSCLDBLabel;
    SCLDBLabel39: TSCLDBLabel;
    comb_tipo_docu_ingreso: TPCPLookUpComboEdit;
    DBNumero: TdxDBEdit;
    DBFecha_Inicial: TdxDBDateEdit;
    CBSolicitado: TPCPLookUpComboEdit;
    CBAprobado: TPCPLookUpComboEdit;
    SCLShape1: TSCLShape;
    radi_form_pago: TJvDBRadioPanel;
    SCLDBLabel50: TSCLDBLabel;
    SCLDBLabel68: TSCLDBLabel;
    DBObservaciones: TdxDBMemo;
    labe_status: TDBStatusLabel;
    pane_nombre: Tffra_mens_atencion;
    TFamiliares_ICONS_PERS_FAMILIAR: TIntegerField;
    tabl_glo_pers_movimientos: TkbmMemTable;
    tabl_glo_pers_movimientosCONS_PERSONAL: TIntegerField;
    tabl_glo_pers_movimientosCONS_PERS_TIPO_MOVIMIENTO: TIntegerField;
    tabl_glo_pers_movimientosFECH_INICIAL: TDateTimeField;
    tabl_glo_pers_movimientosFECH_FINAL: TDateTimeField;
    tabl_glo_pers_movimientosCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField;
    tabl_glo_pers_movimientosNUME_DOCUMENTO: TStringField;
    tabl_glo_pers_movimientosCONS_SOLICITA: TIntegerField;
    tabl_glo_pers_movimientosCONS_APROBO: TIntegerField;
    tabl_glo_pers_movimientosOBSERVACIONES: TStringField;
    data_glo_pers_movimientos: TDataSource;
    tabl_glo_pers_general: TkbmMemTable;
    data_glo_pers_general: TDataSource;
    tabl_glo_pers_generalCONS_PERSONAL: TIntegerField;
    tabl_glo_pers_generalCONS_PAIS: TIntegerField;
    tabl_glo_pers_generalCONS_DEPARTAMENTO: TIntegerField;
    tabl_glo_pers_generalCONS_CIUDAD: TIntegerField;
    tabl_glo_pers_generalDIRECCION: TStringField;
    tabl_glo_pers_generalTELE_RESIDENCIA: TStringField;
    tabl_glo_pers_generalTELE_OTRO: TStringField;
    tabl_glo_pers_generalTELE_MOVIL: TStringField;
    tabl_glo_pers_generalFECH_NACIMIENTO: TDateTimeField;
    tabl_glo_pers_generalCONS_PAIS_NACIMIENTO: TIntegerField;
    tabl_glo_pers_generalCONS_DEPA_NACIMIENTO: TIntegerField;
    tabl_glo_pers_generalCONS_CIUD_NACIMIENTO: TIntegerField;
    tabl_glo_pers_generalCONS_PERS_TIPO_DOCUMENTO: TIntegerField;
    tabl_glo_pers_generalNUME_DOCUMENTO: TStringField;
    tabl_glo_pers_generalFECH_EXPE_DOCUMENTO: TDateTimeField;
    tabl_glo_pers_generalLUGA_EXPE_DOCUMENTO: TStringField;
    tabl_glo_pers_generalNUME_PASAPORTE: TStringField;
    tabl_glo_pers_generalFECH_EXPE_PASAPORTE: TDateTimeField;
    tabl_glo_pers_generalFECH_VENC_PASAPORTE: TDateTimeField;
    tabl_glo_pers_generalLUGA_EXPE_PASAPORTE: TStringField;
    tabl_glo_pers_generalNUME_LIBR_MILITAR: TStringField;
    tabl_glo_pers_generalFECH_EXPE_LIBR_MILITAR: TDateTimeField;
    tabl_glo_pers_generalNUME_SEGU_SOCIAL: TStringField;
    tabl_glo_pers_generalNUME_HIJOS: TIntegerField;
    tabl_glo_pers_generalCONS_SEXO: TIntegerField;
    tabl_glo_pers_generalCONS_ESTA_CIVIL: TIntegerField;
    tabl_glo_pers_generalIMAGEN: TBlobField;
    tabl_glo_pers_generalAJUS_IMAGEN: TIntegerField;
    tabl_glo_pers_movi_traslados: TkbmMemTable;
    data_glo_pers_movi_traslados: TDataSource;
    tabl_glo_pers_movi_trasladosCONS_PERS_MOVIMIENTO: TIntegerField;
    tabl_glo_pers_movi_trasladosCONS_EMPRESA: TIntegerField;
    tabl_glo_pers_movi_trasladosCONS_AREA: TIntegerField;
    tabl_glo_pers_movi_trasladosCONS_PLANTA: TIntegerField;
    tabl_glo_pers_movi_trasladosCONS_PLAN_LINEA: TIntegerField;
    tabl_glo_pers_movi_trasladosCONS_LINE_SECCION: TIntegerField;
    tabl_glo_pers_movi_trasladosCONS_BODEGA: TIntegerField;
    tabl_glo_pers_movi_trasladosCONS_TURNO: TIntegerField;
    tabl_glo_pers_movi_trasladosCONS_UBIC_TIPO: TIntegerField;
    tabl_glo_pers_movi_trasladosOTRA_UBICACION: TStringField;
    tabl_glo_pers_movi_trasladosCONS_PERS_CARGO: TIntegerField;
    tabl_glo_pers_movi_trasladosCONS_PERS_CENT_COSTO: TIntegerField;
    tabl_glo_pers_movi_trasladosCONS_COST_GRUPO: TIntegerField;
    tabl_glo_pers_confidenciales: TkbmMemTable;
    data_glo_pers_confidenciales: TDataSource;
    tabl_glo_pers_confidencialesCONS_PERS_MOVIMIENTO: TIntegerField;
    tabl_glo_pers_confidencialesCONS_PERS_NIVE_SALARIAL: TIntegerField;
    tabl_glo_pers_confidencialesCONS_PERS_TIPO_CONTRATO: TIntegerField;
    tabl_glo_pers_confidencialesNUME_CONTRATO: TStringField;
    tabl_glo_pers_confidencialesCONS_PERI_PAGO: TIntegerField;
    tabl_glo_pers_confidencialesAUXI_TRANSPORTE: TFloatField;
    tabl_glo_pers_confidencialesAUXI_SALARIAL: TFloatField;
    tabl_glo_pers_confidencialesVALO_SALARIO: TIntegerField;
    tabl_glo_pers_confidencialesDIAS_VENC_CONTRATO: TIntegerField;
    tabl_glo_pers_confidencialesAPLI_INCENTIVO: TIntegerField;
    pane_dura_contrato: TPanel;
    SCLDBLabel15: TSCLDBLabel;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    tabl_glo_personalNOMB_COMPLETO: TStringField;
    data_glo_personal: TDataSource;
    myTabla_Ventana: TkbmMemTable;
    myTabla_Ventanacons_personal: TIntegerField;
    tabl_glo_pers_form_pago: TkbmMemTable;
    data_glo_pers_form_pago: TDataSource;
    tabl_glo_pers_form_pagocons_sis_form_pago: TIntegerField;
    quer_cons_maestro: TQuery;
    quer_inse_glo_personal: TQuery;
    tabl_glo_pers_movimientosCONS_PERS_MOVIMIENTO: TIntegerField;
    quer_Cons_pers_movimiento: TQuery;
    quer_inse_glo_pers_general: TQuery;
    quer_inse_glo_pers_movimientos: TQuery;
    quer_inse_glo_pers_movi_traslados: TQuery;
    quer_inse_glo_pers_movi_confidenciales: TQuery;
    quer_inse_glo_pers_form_pago: TQuery;
    tabl_glo_pers_form_pagocons_personal: TIntegerField;
    tabl_glo_pers_form_pagofech_inicial: TDateField;
    tabl_glo_pers_form_pagovalo_hora_mini_garantizado: TFloatField;
    tabl_glo_pers_form_pagovalo_hora_produccion: TFloatField;
    tabl_glo_pers_form_pagopara_1: TStringField;
    tabl_glo_pers_form_pagopara_2: TStringField;
    tabl_glo_pers_form_pagopara_3: TStringField;
    tabl_glo_pers_familiares: TkbmMemTable;
    data_glo_pers_familiares: TDataSource;
    quer_inse_glo_pers_familiares: TQuery;
    tabl_glo_pers_familiaresCONS_PERSONAL: TIntegerField;
    tabl_glo_pers_familiaresCONS_PERS_TIPO_DOCUMENTO: TIntegerField;
    tabl_glo_pers_familiaresNUME_DOCUMENTO: TStringField;
    tabl_glo_pers_familiaresPRIM_APELLIDO: TStringField;
    tabl_glo_pers_familiaresSEGU_APELLIDO: TStringField;
    tabl_glo_pers_familiaresNOMBRES: TStringField;
    tabl_glo_pers_familiaresCONS_SEXO: TIntegerField;
    tabl_glo_pers_familiaresCONS_PARENTESCO: TIntegerField;
    tabl_glo_pers_familiaresFECH_NACIMIENTO: TDateTimeField;
    tabl_glo_pers_familiaresCONS_PAIS: TIntegerField;
    tabl_glo_pers_familiaresCONS_DEPARTAMENTO: TIntegerField;
    tabl_glo_pers_familiaresCONS_CIUDAD: TIntegerField;
    tabl_glo_pers_familiaresDIRECCION: TStringField;
    tabl_glo_pers_familiaresTELE_RESIDENCIA: TStringField;
    tabl_glo_pers_familiaresTELE_OTRO: TStringField;
    tabl_glo_pers_familiaresTELE_MOVIL: TStringField;
    tabl_glo_pers_familiaresOCUPACION: TStringField;
    tabl_glo_pers_familiaresNOMB_EMPRESA: TStringField;
    tabl_glo_pers_familiaresDIRE_EMPRESA: TStringField;
    tabl_glo_pers_familiaresTELE_EMPRESA: TStringField;
    tabl_glo_pers_familiaresCORR_ELECTRONICO: TStringField;
    tabl_glo_pers_familiaresNOMB_PARENTESCO: TStringField;
    tabl_glo_pers_familiaresFECH_SISTEMA: TDateTimeField;
    tabl_glo_pers_familiaresUSUA_SISTEMA: TStringField;
    tabl_glo_pers_familiaresCONS_PERS_FAMILIAR: TIntegerField;
    DBFamiliaresNOMB_PARENTESCO: TdxDBGridColumn;
    page_sistema: TSCLTabSheet;
    SCLDBLabel51: TSCLDBLabel;
    SCLDBLabel52: TSCLDBLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    tabl_glo_pers_sistema: TkbmMemTable;
    data_Glo_pers_sistema: TDataSource;
    tabl_glo_pers_sistemaCONS_PERSONAL: TIntegerField;
    tabl_glo_pers_sistemaUSUA_PERSONAL: TStringField;
    tabl_glo_pers_sistemaPERS_MOVI_SOLICITAR: TIntegerField;
    tabl_glo_pers_sistemaPERS_MOVI_APROBAR: TIntegerField;
    quer_inse_glo_pers_sistema: TQuery;
    quer_pers_solicitar: TQuery;
    data_pers_solicitar: TDataSource;
    quer_pers_aprobar: TQuery;
    data_pers_aprobar: TDataSource;
    dxDBCheckEdit4: TdxDBCheckEdit;
    tabl_glo_pers_sistemaPERS_AVIS_VENC_CONTRATOS: TIntegerField;
    PCPFrame6: TPCPFrame;
    SCLDBLabel53: TSCLDBLabel;
    SCLDBLabel54: TSCLDBLabel;
    SCLDBLabel55: TSCLDBLabel;
    SCLDBLabel56: TSCLDBLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    SCLDBLabel57: TSCLDBLabel;
    dxDBEdit4: TdxDBEdit;
    tabl_glo_pers_generalNUME_CONDUCCION: TStringField;
    tabl_glo_pers_generalFECH_EXPE_CONDUCCION: TDateField;
    tabl_glo_pers_generalLUGA_EXPE_CONDUCCION: TStringField;
    tabl_glo_pers_generalFECH_VENC_CONDUCCION: TDateField;
    tabl_glo_pers_generalCATE_CONDUCCION: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure TFamiliaresBeforePost(DataSet: TDataSet);
    procedure TConfidencialBeforePost(DataSet: TDataSet);
    procedure Acti_Nuev_FamiliarExecute(Sender: TObject);
    procedure Acti_Elim_FamiliarExecute(Sender: TObject);
    procedure fram_ubicacioncomb_tipo_ubicacionChange(
      Sender: TObject);
    procedure Acti_Modi_FamiliarExecute(Sender: TObject);
    procedure doCambiarColorNivelSalarial(Sender: TObject);
    procedure edit_Codi_personalExit(Sender: TObject);
    procedure comb_nive_sala_valoresChange(Sender: TObject);
    procedure radi_form_pagoChange(Sender: TObject);
    procedure quer_form_pagoAfterOpen(DataSet: TDataSet);
    procedure TGeneralAfterInsert(DataSet: TDataSet);
    procedure TConfidencialAfterInsert(DataSet: TDataSet);
    procedure cambiarPagina(Sender: TObject);
    procedure TPersonalCalcFields(DataSet: TDataSet);
    procedure tabl_glo_pers_movimientosAfterInsert(DataSet: TDataSet);
    procedure tabl_glo_personalCalcFields(DataSet: TDataSet);
    procedure tabl_glo_pers_generalAfterInsert(DataSet: TDataSet);
    procedure comb_naci_ciudadChange(Sender: TObject);
    procedure tabl_glo_pers_confidencialesAfterInsert(DataSet: TDataSet);
    procedure comb_tipo_contratoChange(Sender: TObject);
    procedure myTabla_VentanaAfterInsert(DataSet: TDataSet);
    procedure myTabla_VentanaBeforeInsert(DataSet: TDataSet);
    procedure tabl_glo_pers_form_pagoAfterInsert(DataSet: TDataSet);
    procedure myTabla_VentanaBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure myTabla_VentanaAfterCancel(DataSet: TDataSet);
    procedure ValidarDatosUbicacionLaboral;
    procedure ValidarDatosConfidenciales;
    procedure DBFamiliaresDblClick(Sender: TObject);
    procedure data_ventanaStateChange(Sender: TObject);
    procedure myTabla_VentanaAfterPost(DataSet: TDataSet);
    procedure tabl_glo_pers_sistemaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure doGuardarTablasAuxiliares;
  public
    { Public declarations }
  end;

var
  FN1_Pers_Ingreso1: TFN1_Pers_Ingreso1;

implementation

uses _func_varias, _cons_pcp, _MDI, UN1_Pers_Familiares1, _cons_colores,
  _func_pcp, _uData, _Traductor;

{$R *.DFM}

{****************************************************************
Procedimiento   : FormCreate
Objetivo        : Abre las tablas auxiliares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 7 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso1.FormCreate(Sender: TObject);
begin
  inherited;
  //Configurar los controles de la ventana
  pane_nombre.SetWarningColors;
  pane_dura_contrato.BevelOuter := bvNone;


  //Abrir las tablas locales auxiliares
  AbrirDataSet(tabl_glo_personal);
  AbrirDataSet(tabl_glo_pers_movimientos);
  AbrirDataSet(tabl_glo_pers_general);
  AbrirDataSet(tabl_glo_pers_movi_traslados);
  AbrirDataSet(tabl_glo_pers_confidenciales);
  AbrirDataSet(tabl_glo_pers_form_pago);
  AbrirDataSet(tabl_glo_pers_sistema);



  //Abrir las consultas fuente de selección del módulo
  //Del documento
  AbrirDataSet(quer_tipo_docu_ingreso);
  AbrirDataSet(quer_pers_solicitar);
  AbrirDataSet(quer_pers_aprobar);
  //Generales
  AbrirDataSet(quer_Sexos);
  AbrirDataSet(quer_Esta_Civil);
  //Personales
  AbrirDataSet(quer_naci_paises);
  AbrirDataSet(quer_naci_departamentos);
  AbrirDataSet(quer_naci_ciudades);
  AbrirDataSet(quer_tipo_documento);
  AbrirDataSet(quer_vivi_pais);
  AbrirDataSet(quer_vivi_departamento);
  AbrirDataSet(quer_vivi_ciudad);
  //Ubicación empresa
  InicializarFrame(fram_Ubicacion);
  fram_ubicacion.comb_tipo_ubicacionChange(Sender);
  AbrirDataSet(quer_turnos);
  AbrirDataSet(quer_cargos);
  AbrirDataSet(quer_cent_Costos);
  AbrirDataSet(quer_subc_costos);
  //Confidenciales
  AbrirDataSet(quer_tipo_Contrato);
  AbrirDataSet(quer_nive_salarial);
  AbrirDataSet(quer_peri_pago);
  //Formas de pago
  AbrirDataSet(quer_form_pago);
  AbrirDataSet(quer_dividido);
  AbrirDataSet(quer_diferencial);
  AbrirDataSet(quer_para_form_pago);
  //Familiares
  AbrirDataSet(quer_parentescos);
  Insertar_Palabras(Self, WKLenguaje);
end;


{****************************************************************
Procedimiento   : TFamiliaresBeforePost
Objetivo        : Valide que no falte ningún campo requerido
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 7 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso1.TFamiliaresBeforePost(DataSet: TDataSet);
begin
{  inherited;
	//Asigno el valor del consecutivo del personal
  TFamiliaresCONS_PERSONAL.Value :=
    TPersonalCONS_PERSONAL.Value;

  //Verifico que no falte ningún campo requerido
  If TFamiliares.FieldByName('NOMBRES').AsString = '' Then
  Begin
    EjecutarMensaje(cosFaltanDatos , 'Nombres Familiar', mtInformation, [mbOk],0);
    Abort;
  End;}
end;

{****************************************************************
Procedimiento   : TConfidencialBeforePost
Objetivo        : Valide que no falte ningún campo requerido
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 7 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso1.TConfidencialBeforePost(DataSet: TDataSet);
begin
end;


{****************************************************************
Procedimiento   : Acti_NuevoExecute
Objetivo        : Poner en modo de inserción el registro de familiares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso1.Acti_Nuev_FamiliarExecute(Sender: TObject);
begin
  inherited;
  FN1_Pers_Familiares1 := TFN1_Pers_Familiares1.Create(Self);
  tabl_glo_pers_familiares.Insert;
  FN1_Pers_Familiares1.Ejecutar(0, tabl_glo_pers_familiares);
end;

{****************************************************************
Procedimiento   : Acti_EliminarExecute
Objetivo        : Eliminar el registro de familiares
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 10 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso1.Acti_Elim_FamiliarExecute(Sender: TObject);
begin
  inherited;
  //Verificar que tenga registros
  If tabl_glo_pers_familiares.RecordCount < 1 Then
  	Exit;
  //Confirmar la eliminiación
  If (Confirmar(cosDeseaEliminar) = mrYes) Then
     tabl_glo_pers_familiares.Delete;
end;

{****************************************************************
Procedimiento   : fram_ubicacioncomb_tipo_ubicacionChange
Objetivo        : Asigno los valores por defecto a las ubicaciones
									que no se utilizaran
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Mayo 11 de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso1.fram_ubicacioncomb_tipo_ubicacionChange(
  Sender: TObject);
begin
  inherited;
  fram_ubicacion.comb_tipo_ubicacionChange(Sender);
  If (Tabla_Ventana.State In [dsEdit, dsInsert]) Then
    With fram_ubicacion Do
    Begin
      tabl_glo_pers_movi_traslados.Edit;
      If quer_maqu_ubicaciones.FieldByName('VER_EMPRESA').AsInteger = -1 Then
      Begin
        tabl_glo_pers_movi_traslados.FieldByName('CONS_EMPRESA').AsString := '';
        tabl_glo_pers_movi_traslados.FieldByName('CONS_AREA').AsString := '';
      End;
      If quer_maqu_ubicaciones.FieldByName('VER_PLANTA').AsInteger = -1 Then
      Begin
        tabl_glo_pers_movi_traslados.FieldByName('CONS_PLANTA').AsString := '';
        tabl_glo_pers_movi_traslados.FieldByName('CONS_PLAN_LINEA').AsString := '';
        tabl_glo_pers_movi_traslados.FieldByName('CONS_LINE_SECCION').AsString := '';
      End;
      If quer_maqu_ubicaciones.FieldByName('VER_BODEGA').AsInteger = -1 Then
      Begin
        tabl_glo_pers_movi_traslados.FieldByName('CONS_BODEGA').AsString := '';
      End;
      If quer_maqu_ubicaciones.FieldByName('VER_OTRA_UBICACION').AsInteger = -1 Then
      Begin
        tabl_glo_pers_movi_traslados.FieldByName('OTRA_UBICACION').AsString := '';
      End;
    End;
end;

{****************************************************************
Procedimiento   : Acti_Modi_FamiliarExecute
Objetivo        : Modificar Familiar
Realizado por   : Gustavo Muñoz (DESARROLLO)
Fecha           : Lunes 14 de Junio de 2004
Versión         : pcp4000
*****************************************************************}
procedure TFN1_Pers_Ingreso1.Acti_Modi_FamiliarExecute(Sender: TObject);
begin
  inherited;
  FN1_Pers_Familiares1 := TFN1_Pers_Familiares1.Create(Self);
  tabl_glo_pers_familiares.Edit;
  FN1_Pers_Familiares1.Ejecutar(0, tabl_glo_pers_familiares);
end;
{****************************************************************
Procedimiento   : doCambiarColorNivelSalarial
Objetivo        : Dar color al campo de edición del salario
                  cuando este no se encuentre en el rango del nivel
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 02 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure TFN1_Pers_Ingreso1.doCambiarColorNivelSalarial(Sender: TObject);
begin
  inherited;
  //Verificar si está en el rango
  if ((tabl_glo_pers_confidenciales.FieldByName('valo_salario').AsFloat >= quer_nive_salarial.FieldByName('valo_minimo').asFloat) and
      (tabl_glo_pers_confidenciales.FieldByName('valo_salario').AsFloat <= quer_nive_salarial.FieldByName('valo_maximo').asFloat)) Then
        edit_salario.Color := clWindow
  Else
        edit_salario.Color := clErrorCampoEdicion;
end;

{****************************************************************
Procedimiento   : edit_Codi_personalExit
Objetivo        : Verificar si el código digitado existe
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 04 de 2005
Versión         : pcp4.0.20.0
*****************************************************************}
procedure TFN1_Pers_Ingreso1.edit_Codi_personalExit(Sender: TObject);
begin
  inherited;
  //Este procedimiento solo aplica en inserción
  If not (myTabla_Ventana.State = dsInsert) Then Exit;
  //Preparar la consulta
  quer_Veri_Codigo.Close;
  quer_Veri_Codigo.ParamByName('codi_personal').Value := edit_Codi_personal.Text;
  quer_veri_Codigo.Open;
  //Verificar si existen registros
  if quer_veri_Codigo.FieldByName('cuantos').asInteger > 0 Then
  Begin
       //Si hay registros, mostrar un error y devolver el foco
       //al control del código
       EjecutarMensajeError(cosErrorCodigoYaExiste);
       darFoco(edit_Codi_personal);
       if (edit_codi_personal.Focused) Then
          edit_codi_personal.SelectAll;
  End;
  quer_veri_Codigo.Close;

  //Si la cédula está vacía, hacerla igual al código
  if (tabl_glo_pers_general.FieldByName('nume_documento').asString = '') Then
  Begin
        if Not (tabl_glo_pers_general.State in [dsInsert, dsEdit]) Then
            tabl_glo_pers_general.Edit;
        tabl_glo_pers_general.FieldByName('nume_documento').Value := edit_codi_personal.Text;
  End;
end;
{****************************************************************
Procedimiento   : comb_nive_sala_valoresChange
Objetivo        : Actualizar el salario cuando el rango es un solo valor
Realizado por   : Mauricio Vargas Echeverry
Fecha           : Febrero 23 de 2005
Versión         : pcp4.0.20.5
*****************************************************************}
procedure TFN1_Pers_Ingreso1.comb_nive_sala_valoresChange(Sender: TObject);
begin
  inherited;
  //Verificar si está en edición
  if (tabl_glo_pers_confidenciales.State in [dsInsert, dsEdit]) Then
  Begin
      if not (comb_nive_sala_valores.EstaVacio) Then
      Begin
          //Verificar los rangos
          if (quer_nive_salarial.FieldByName('valo_minimo').asFloat = quer_nive_salarial.FieldByName('valo_minimo').asFloat) Then
            tabl_glo_pers_confidenciales.FieldByName('valo_salario').Value := quer_nive_salarial.FieldByName('valo_minimo').asFloat;
      End;
  End;
end;
{****************************************************************
Procedimiento   : radi_form_pagoChange
Objetivo        : Actualizar las opciones disponibles según
                  la forma de pago seleccionada
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.radi_form_pagoChange(Sender: TObject);
Var
    var_cons_sis_form_pago  : Integer;
begin
  inherited;
  pane_valo_hora_produccion.Visible := False;
  pane_codigo.Visible := False;
  comb_codigo.ClearValue;
  if Not (radi_form_pago.ItemIndex = -1) Then
  Begin
      //Consecutivo
      var_Cons_sis_form_pago := StrToInt(radi_form_pago.Values[radi_form_pago.ItemIndex]);
      pane_codigo.Visible := (var_cons_sis_form_pago in [fpDividido, fpValorHoraDiferencial]);
      pane_valo_hora_produccion.Visible := (var_Cons_sis_form_pago in [fpValorHoraProduccion]);
      //Llenar los valores
      if pane_valo_hora_produccion.Visible Then
      Begin
          if (tabl_glo_pers_form_pago.State in [dsInsert, dsEdit]) Then
                tabl_glo_pers_form_pago.FieldByName('valo_hora_produccion').Value := quer_para_form_pago.FieldByName('valo_hora_produccion').asFloat
      End
      Else
      if var_cons_sis_form_pago = fpDividido Then
        data_codigo.DataSet := quer_dividido
      Else
      if var_cons_sis_form_pago = fpValorHoraDiferencial Then
        data_codigo.DataSet := quer_diferencial;
  End;
end;
{****************************************************************
Procedimiento   : quer_form_pagoAfterPost
Objetivo        : Llenar el radio con las opciones de las formas de pago
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 06-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.quer_form_pagoAfterOpen(DataSet: TDataSet);
begin
 inherited;
  //Limpiar las formas de pago existentes
  radi_form_pago.Items.Clear;
  radi_form_pago.Values.Clear;
  While not quer_form_pago.Eof do
  Begin
      radi_form_pago.Items.Add(quer_form_pago.FieldByName('nomb_sis_form_pago').asString);
      radi_form_pago.Values.Add(quer_form_pago.FieldByName('cons_sis_form_pago').asString);
      quer_form_pago.Next;
  End;  
end;
{****************************************************************
Procedimiento   : TGeneralAfterInsert
Objetivo        : Datos por defecto de la información general
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 11-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.TGeneralAfterInsert(DataSet: TDataSet);
begin
end;
{****************************************************************
Procedimiento   : TConfidencialAfterInsert
Objetivo        : Datos por defecto de la información confidencial
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 11-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.TConfidencialAfterInsert(DataSet: TDataSet);
begin
end;
{****************************************************************
Procedimiento   : cambiarPagina
Objetivo        : Cambiar la página activa al salir del último
                  control en la página visible
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 11-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.cambiarPagina(Sender: TObject);
begin
  inherited;
  if Page.Focused Then
        Page.DoNextTab;
end;
{****************************************************************
Procedimiento   : TPersonalCalcFields
Objetivo        : Calcular el nombre completo del operario
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 11-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.TPersonalCalcFields(DataSet: TDataSet);
begin
end;
{****************************************************************
Procedimiento   : tabl_glo_pers_movimientosAfterInsert
Objetivo        : Valores por defecto de la tabla de movimientos
                  del personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.tabl_glo_pers_movimientosAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With tabl_glo_pers_movimientos do
  Begin
      FieldByName('fech_inicial').Value := NowDate;
      FieldByName('cons_pers_tipo_movimiento').Value := fmIngreso;
  End;
end;
{****************************************************************
Procedimiento   : tabl_glo_personalCalcFields
Objetivo        : Dar valor a los campos calculados
                  de tabl_glo_personal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.tabl_glo_personalCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  With tabl_glo_personal do
  Begin
     //Nombre completo
     FieldByName('nomb_completo').Value := FieldByName('nombres').AsString + ' ' +
                FieldByName('prim_apellido').AsString + ' ' +
                FieldByName('segu_apellido').AsString;
  End;
end;
{****************************************************************
Procedimiento   : tabl_glo_pers_generalAfterInsert
Objetivo        : Inicializar el registro de datos generales
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.tabl_glo_pers_generalAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With tabl_glo_pers_general do
  Begin
      FieldByName('cons_pers_tipo_documento').Value := 1; //Cedula
      FieldByName('ajus_imagen').Value := -1; //No ajustar
      //Lugar de nacimiento
      if Not varIsNull(_fmdi.tabl_pcp_opciones.FieldByName('pers_defe_pais').Value) Then
         FieldByName('cons_pais_nacimiento').Value := _fmdi.tabl_pcp_opciones.FieldByName('pers_defe_pais').asInteger;
      if Not varIsNull(_fmdi.tabl_pcp_opciones.FieldByName('pers_defe_departamento').Value) Then
         FieldByName('cons_depa_nacimiento').Value := _fmdi.tabl_pcp_opciones.FieldByName('pers_defe_departamento').asInteger;
      if Not varIsNull(_fmdi.tabl_pcp_opciones.FieldByName('pers_defe_ciudad').Value) Then
         FieldByName('cons_ciud_nacimiento').Value := _fmdi.tabl_pcp_opciones.FieldByName('pers_defe_ciudad').asInteger;
      //Residencia
      if Not varIsNull(_fmdi.tabl_pcp_opciones.FieldByName('pers_defe_pais').Value) Then
         FieldByName('cons_pais').Value := _fmdi.tabl_pcp_opciones.FieldByName('pers_defe_pais').asInteger;
      if Not varIsNull(_fmdi.tabl_pcp_opciones.FieldByName('pers_defe_departamento').Value) Then
         FieldByName('cons_departamento').Value := _fmdi.tabl_pcp_opciones.FieldByName('pers_defe_departamento').asInteger;
      if Not varIsNull(_fmdi.tabl_pcp_opciones.FieldByName('pers_defe_ciudad').Value) Then
      Begin
         FieldByName('cons_ciudad').Value := _fmdi.tabl_pcp_opciones.FieldByName('pers_defe_ciudad').asInteger;
         FieldByName('luga_expe_documento').Value := quer_naci_ciudades.FieldByName('nomb_ciudad').AsString;
      End;
  End;
end;
{****************************************************************
Procedimiento   : comb_naci_ciudadChange
Objetivo        : Asigna a la ciudad de expedición del documento
                  la ciudad de nacimiento
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.comb_naci_ciudadChange(Sender: TObject);
begin
  inherited;
  //Si la tabla está en Insert reemplazar por defecto
  if (comb_naci_pais.DataSource.DataSet.State = dsInsert) Then
        edit_docu_luga_expedicion.DataSource.DataSet.FieldByName(edit_docu_luga_expedicion.DataField).Value := comb_naci_ciudad.Text;
end;
{****************************************************************
Procedimiento   : tabl_glo_pers_confidencialesAfterInsert
Objetivo        : Valores predeterminados de la tabla de datos
                  confidenciales       
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.tabl_glo_pers_confidencialesAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With tabl_glo_pers_confidenciales do
  Begin
      FieldByName('apli_incentivo').Value := 1; //Aplica para incentivo
      FieldByName('auxi_transporte').Value := 0; 
      FieldByName('auxi_salarial').Value := 0;
      FieldByName('DIAS_VENC_CONTRATO').Value := _fmdi.tabl_pcp_opciones.FieldByName('PERS_AVIS_VENC_CONTRATO').asInteger;
  End;

end;
{****************************************************************
Procedimiento   : comb_tipo_contratoChange
Objetivo        : Actualizar los controles al cambiar el tipo de contrato
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.comb_tipo_contratoChange(Sender: TObject);
begin
  inherited;
  //Mostrar/Ocultar el panel de duración del contrato
  pane_dura_contrato.Visible := Not (comb_tipo_contrato.EstaVacio);
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterInsert
Objetivo        : Inicializar las tablas auxiliares para la creación
                  del registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.myTabla_VentanaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //Cerrar las tablas auxiliares
  tabl_glo_pers_movimientos.Close;
  tabl_glo_pers_general.Close;
  tabl_glo_pers_movi_traslados.Close;
  tabl_glo_pers_confidenciales.Close;
  tabl_glo_pers_form_pago.Close;
  tabl_glo_pers_Familiares.Close;
  tabl_glo_pers_sistema.Close;

  //Abrir las tablas auxiliares
  AbrirDataSet(tabl_glo_pers_movimientos);
  AbrirDataSet(tabl_glo_pers_general);
  AbrirDataSet(tabl_glo_pers_movi_traslados);
  AbrirDataSet(tabl_glo_pers_confidenciales);
  AbrirDataSet(tabl_glo_pers_form_pago);
  AbrirDataSet(tabl_glo_pers_Familiares);
  AbrirDataSet(tabl_glo_pers_sistema);
  //Iniciar la creación de un registro en cada uno
  tabl_glo_personal.Insert;
  tabl_glo_pers_movimientos.Insert;
  tabl_glo_pers_general.Insert;
  tabl_glo_pers_movi_traslados.Insert;
  tabl_glo_pers_confidenciales.Insert;
  tabl_glo_pers_form_pago.Insert;
  tabl_glo_pers_sistema.Insert;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaBeforeInsert
Objetivo        : Verificar el estado anterior de la tabla
                  para insertar un nuevo registro
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.myTabla_VentanaBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Verificar si se está creando
  if (myTabla_Ventana.State = dsInsert) Then
     myTabla_Ventana.Post;
end;

procedure TFN1_Pers_Ingreso1.tabl_glo_pers_form_pagoAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  With tabl_glo_pers_form_pago do
  Begin
      FieldByName('cons_sis_Form_pago').Value := quer_para_form_pago.FieldByName('cons_sis_form_pago').asInteger;
      FieldByName('valo_hora_produccion').Value := quer_para_form_pago.FieldByName('valo_hora_produccion').asFloat;
      FieldByName('valo_hora_mini_garantizado').Value := quer_para_form_pago.FieldByName('valo_hora_mini_garantizado').asFloat;
  End;
end;

procedure TFN1_Pers_Ingreso1.myTabla_VentanaBeforePost(DataSet: TDataSet);
begin
  inherited;
  //Si no hay codigo, salir
  if (edit_codi_personal.Text = '') Then Exit;
  Try
      //Iniciar una transaccion
      StartDBTransaction;
      //Guardar las tablas auxiliares
      doGuardarTablasAuxiliares;


      //Finalizar la transaccion
      if PCPEnTransaccion Then
         CommitDBWork;
  Except
     On e:Exception do
     Begin
        //Finalizar la transaccion
        if PCPEnTransaccion Then
           RollBackDBWork;
        //Mostrar el error
        EjecutarMensajeError(cosErrorOperacionNoCompletada + #13 + e.Message);
        //Abortar el guardado
        Abort;
     End;

  End;
end;

{****************************************************************
Procedimiento   : doGuardarTablasAuxiliares
Objetivo        : Verificar y guardar las tablas en memoria
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
Procedure TFN1_Pers_Ingreso1.doGuardarTablasAuxiliares;
Begin
  //TABL_GLO_PERSONAL------------------------------------------------------
  //Generar el consecutivo para el registro maestro
  With quer_cons_maestro do
  Begin
      Close;
      Open;
      myTabla_Ventana.FieldByName('cons_personal').Value := FieldByName('secuencia').asInteger;
      Close;
  End;
  With tabl_glo_personal do
  Begin
       If Not (State in [dsInsert, dsEdit]) Then Edit;
       FieldByName('cons_personal').Value := myTabla_Ventana.FieldByName('cons_personal').asInteger;
       //Validar los campos
       ValidarDatosDataSet(tabl_glo_personal);
       CheckAndPostDataSet(tabl_glo_personal);
  End;

  //TABL_GLO_PERS_GENERAL---------------------------------------------------
  With tabl_glo_pers_general do
  Begin
       If Not (State in [dsInsert, dsEdit]) Then Edit;
       FieldByName('cons_personal').Value := myTabla_Ventana.FieldByName('cons_personal').asInteger;
       //Validar los campos
       ValidarDatosDataSet(tabl_glo_pers_general);
       CheckAndPostDataSet(tabl_glo_pers_general);
  End;

  //TABL_GLO_PERS_MOVIMIENTOS----------------------------------------------
  //Generar el consecutivo para el registro de movimiento de personal
  With quer_Cons_pers_movimiento do
  Begin
      Close;
      Open;
      If Not (tabl_glo_pers_movimientos.State in [dsInsert, dsEdit]) Then tabl_glo_pers_movimientos.Edit;
      tabl_glo_pers_movimientos.FieldByName('cons_pers_movimiento').Value := FieldByName('secuencia').asInteger;
      Close;
  End;
  With tabl_glo_pers_movimientos do
  Begin
       If Not (State in [dsInsert, dsEdit]) Then Edit;
       FieldByName('cons_personal').Value := myTabla_Ventana.FieldByName('cons_personal').asInteger;
       //Validar los campos
       ValidarDatosDataSet(tabl_glo_pers_movimientos);
       CheckAndPostDataSet(tabl_glo_pers_movimientos);
  End;

  //TABL_GLO_PERS_MOVI_TRASLADOS---------------------------------------------
  With tabl_glo_pers_movi_traslados do
  Begin
       If Not (State in [dsInsert, dsEdit]) Then Edit;
       FieldByName('cons_pers_movimiento').Value := tabl_glo_pers_movimientos.FieldByName('cons_pers_movimiento').asInteger;
       //Validar los campos
       ValidarDatosUbicacionLaboral;
       ValidarDatosDataSet(tabl_glo_pers_movi_traslados);
       CheckAndPostDataSet(tabl_glo_pers_movi_traslados);
  End;

  //TABL_GLO_PERS_MOVI_CONFIDENCIALES-----------------------------------
  With tabl_glo_pers_confidenciales do
  Begin
       If Not (State in [dsInsert, dsEdit]) Then Edit;
       FieldByName('cons_pers_movimiento').Value := tabl_glo_pers_movimientos.FieldByName('cons_pers_movimiento').asInteger;
       //Validar los campos
       ValidarDatosConfidenciales;
       ValidarDatosDataSet(tabl_glo_pers_confidenciales);
       CheckAndPostDataSet(tabl_glo_pers_confidenciales);
  End;

  //TABL_GLO_PERS_FORM_PAGO -------------------------
  With tabl_glo_pers_form_pago do
  Begin
       If Not (State in [dsInsert, dsEdit]) Then Edit;
       FieldByName('cons_personal').Value := myTabla_Ventana.FieldByName('cons_personal').asInteger;
       FieldByName('fech_inicial').Value := tabl_glo_pers_movimientos.FieldByName('fech_inicial').AsDateTime;
       //Validar los campos
       ValidarDatosDataSet(tabl_glo_pers_form_pago);
       CheckAndPostDataSet(tabl_glo_pers_form_pago);
  End;

  //TABL_GLO_PERS_SISTEMA-----------------------------
  With tabl_glo_pers_sistema do
  Begin
       If Not (State in [dsInsert, dsEdit]) Then Edit;
       FieldByName('cons_personal').Value := myTabla_Ventana.FieldByName('cons_personal').asInteger;
       //Validar los campos
       ValidarDatosDataSet(tabl_glo_pers_sistema);
       CheckAndPostDataSet(tabl_glo_pers_sistema);
  End;


  //Ejecutar los queries sobre PCP-DB
  quer_inse_glo_personal.ExecSQL;
  quer_inse_glo_pers_general.ExecSQL;
  quer_inse_glo_pers_movimientos.ExecSQL;
  quer_inse_glo_pers_movi_traslados.ExecSQL;
  quer_inse_glo_pers_movi_confidenciales.ExecSQL;
  quer_inse_glo_pers_form_pago.ExecSQL;
  //Recorrer los datos familiares
  With tabl_glo_pers_familiares do
  Begin
      First;
      While not Eof Do
      Begin
        //Asignar el consecutivo del personal
        If Not (State in [dsInsert, dsEdit]) Then Edit;
        FieldByName('cons_personal').Value := myTabla_Ventana.FieldByName('cons_personal').asInteger;
        Post;
        //Ejecutar el insert
        quer_inse_glo_pers_familiares.ExecSQL;
        //Siguiente registro
        Next;
      End;
  End;
  quer_inse_glo_pers_sistema.ExecSQL;
End;

{****************************************************************
Procedimiento   : FormShow
Objetivo        : Inicializar los controles al mostrar la ventana
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.FormShow(Sender: TObject);
begin
  inherited;
  if not var_vent_inicializada Then
  Begin
      //Dar el foco al tipo de documento de ingreso
      DarFoco(comb_tipo_docu_ingreso);
      //Crear un nuevo registro
      if not (MyTabla_Ventana.State = dsInsert) Then
          myTabla_Ventana.Insert;
  End;
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterCancel
Objetivo        : Hacer un RollBack al cancelar
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.myTabla_VentanaAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if PCPEnTransaccion then
     RollBackDBWork;
end;
{****************************************************************
Procedimiento   : ValidarDatosUbicacionLaboral
Objetivo        : Valida y completa los valores de ubicación laboral
                  faltantes (por el tipo de ubicación) 
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.ValidarDatosUbicacionLaboral;
begin
  inherited;
  //Si no a elegido el tipo de ubicacion, seleccionar NO ASIGNADO
  If tabl_glo_pers_movi_traslados.fieldByName('cons_ubic_tipo').AsString = '' Then
  	tabl_glo_pers_movi_traslados.fieldByName('cons_ubic_tipo').Value := 0;
  //Si no a elegido la empresa, seleccionar NO ASIGNADO
  If  tabl_glo_pers_movi_traslados.fieldByName('CONS_EMPRESA').AsString = '' Then
  	 tabl_glo_pers_movi_traslados.fieldByName('CONS_EMPRESA').Value := 0;
  //Si no a elegido AREA, seleccionar NO ASIGNADO
  If  tabl_glo_pers_movi_traslados.fieldByName('CONS_AREA').AsString = '' Then
  	 tabl_glo_pers_movi_traslados.fieldByName('CONS_AREA').Value := 0;
  //Si no a elegido PLANTA, seleccionar NO ASIGNADO
  If  tabl_glo_pers_movi_traslados.fieldByName('CONS_PLANTA').AsString = '' Then
  	 tabl_glo_pers_movi_traslados.fieldByName('CONS_PLANTA').Value := 0;
  //Si no a elegido PLAN_LINEA, seleccionar NO ASIGNADO
  If  tabl_glo_pers_movi_traslados.fieldByName('CONS_PLAN_LINEA').AsString = '' Then
  	 tabl_glo_pers_movi_traslados.fieldByName('CONS_PLAN_LINEA').Value := 0;
  //Si no a elegido LINE_SECCION, seleccionar NO ASIGNADO
  If  tabl_glo_pers_movi_traslados.fieldByName('CONS_LINE_SECCION').AsString = '' Then
  	 tabl_glo_pers_movi_traslados.fieldByName('CONS_LINE_SECCION').Value := 0;
  //Si no a elegido BODEGA, seleccionar NO ASIGNADO
  If  tabl_glo_pers_movi_traslados.fieldByName('CONS_BODEGA').AsString = '' Then
  	 tabl_glo_pers_movi_traslados.fieldByName('CONS_BODEGA').Value := 0;
end;
{****************************************************************
Procedimiento   : ValidarDatosConfidenciales
Objetivo        : Valida y completa los datos confidenciales faltantes
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 12-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.ValidarDatosConfidenciales;
begin
  inherited;
  With tabl_glo_pers_confidenciales Do
  Begin
      //Verificar el número del contrato
      If fieldByName('NUME_CONTRATO').AsString = '' Then
         fieldByName('NUME_CONTRATO').Value := cosNA;
      //Verifico que el Salario este entre el rango del Nivel Salarial
      If FieldByName('VALO_SALARIO').AsString <> '' Then
      Begin
            //Buscar el registro del salario
            quer_nive_salarial.Locate('CONS_PERS_NIVE_SALARIAL',
                 fieldByName('CONS_PERS_NIVE_SALARIAL').AsInteger, []);
            If ((FieldByName('VALO_SALARIO').AsInteger < quer_nive_salarial.FieldByname('VALO_MINIMO').AsInteger)
            Or (FieldByName('VALO_SALARIO').AsInteger > quer_nive_salarial.FieldByname('VALO_MAXIMO').AsInteger)) Then
        Begin
             Raise Exception.Create(cosSalarioFueraDelRango);
        End;
      End;
  End;
end;
{****************************************************************
Procedimiento   : DBFamiliaresDblClick
Objetivo        : Controlar el DobleClick sobre el grid
                  de familiares
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.DBFamiliaresDblClick(Sender: TObject);
begin
  inherited;
  //Editar en doble click
  if Acti_Modi_Familiar.Enabled Then
     acti_Modi_Familiar.Execute;
end;
{****************************************************************
Procedimiento   : data_ventanaStateChange
Objetivo        : Actualizar los controles al cambiar el estado
                  del DS principal
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.data_ventanaStateChange(Sender: TObject);
Var
        var_i : Integer;
begin
  inherited;
  //Habilitar/Deshabilitar los tabs
  For var_i := 1 To Page.PageCount do
     SetControlEnabled(Page.Pages[var_i - 1], (data_Ventana.DataSet.State = dsInsert));
end;
{****************************************************************
Procedimiento   : myTabla_VentanaAfterPost
Objetivo        : Finalizar la etapa de guardado
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 13-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.myTabla_VentanaAfterPost(DataSet: TDataSet);
begin
  inherited;
  EjecutarMensajeInformacion(Format(cosProcesoFinalizadoConExito, [cosCreacionPersonal, tabl_glo_personal.FieldByName('nomb_completo').AsString]));
end;
{****************************************************************
Procedimiento   : tabl_glo_pers_sistemaAfterInsert
Objetivo        : Inicializa el registro de personal->sistema
Realizado por   : Mauricio Vargas Echeverry
Fecha           : 16-May-2005
Versión         : pcp4.0.20.8
*****************************************************************}
procedure TFN1_Pers_Ingreso1.tabl_glo_pers_sistemaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Valores predeterminados
  With tabl_glo_pers_sistema do
  Begin
         FieldByName('pers_movi_solicitar').Value := -1;
         FieldByName('pers_movi_aprobar').Value := -1;
         FieldByName('PERS_AVIS_VENC_CONTRATOS').Value := -1;
  End;
end;

end.

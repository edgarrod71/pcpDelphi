inherited FN1_Pers_Ingreso: TFN1_Pers_Ingreso
  Left = 7
  Top = 167
  Width = 812
  Height = 433
  HelpContext = 130001
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 405
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    Height = 363
    inherited padr_pagina: TdxPageControl
      Width = 568
      Height = 353
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 178
          Height = 277
          KeyField = 'CONS_PERSONAL'
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  ColumnName = 'padr_gridCODI_PERSONAL'
                  SummaryFormat = ',0'
                  SummaryType = cstCount
                end
                item
                  SummaryFormat = '(,0)'
                  SummaryType = cstCount
                end>
              Name = 'padr_summary_grid'
            end>
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          object padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERSONAL'
          end
          object padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL'
          end
          object padr_gridPRIM_APELLIDO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRIM_APELLIDO'
          end
          object padr_gridSEGU_APELLIDO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SEGU_APELLIDO'
          end
          object padr_gridNOMBRES: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMBRES'
          end
          object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
          end
          object padr_gridCONS_ESTADO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_ESTADO'
          end
          object padr_gridNOMB_ESTADO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ESTADO'
          end
          object padr_gridCONS_UBIC_TIPO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_UBIC_TIPO'
          end
          object padr_gridNOMB_UBIC_TIPO: TdxDBGridMaskColumn
            Visible = False
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_UBIC_TIPO'
          end
          object padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_EMPRESA'
          end
          object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_EMPRESA'
          end
          object padr_gridCONS_AREA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_AREA'
          end
          object padr_gridNOMB_AREA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_AREA'
          end
          object padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLANTA'
          end
          object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLANTA'
          end
          object padr_gridCONS_PLAN_LINEA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PLAN_LINEA'
          end
          object padr_gridNOMB_PLAN_LINEA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PLAN_LINEA'
          end
          object padr_gridCONS_LINE_SECCION: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_LINE_SECCION'
          end
          object padr_gridNOMB_LINE_SECCION: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_LINE_SECCION'
          end
          object padr_gridCONS_BODEGA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_BODEGA'
          end
          object padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_BODEGA'
          end
          object padr_gridOTRA_UBICACION: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OTRA_UBICACION'
          end
          object padr_gridCODI_TURNO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TURNO'
          end
          object padr_gridCONS_TURNO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TURNO'
          end
          object padr_gridNOMB_TIPO_TURNO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_TURNO'
          end
          object padr_gridCONS_PERS_CARGO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_CARGO'
          end
          object padr_gridNOMB_PERS_CARGO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CARGO'
          end
          object padr_gridCONS_PERS_CENT_COSTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_CENT_COSTO'
          end
          object padr_gridNOMB_PERS_CENT_COSTO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CENT_COSTO'
          end
          object padr_gridCONS_COST_GRUPO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COST_GRUPO'
          end
          object padr_gridNOMB_COST_GRUPO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COST_GRUPO'
          end
          object padr_gridCONS_PAIS: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PAIS'
          end
          object padr_gridCODI_PAIS: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PAIS'
          end
          object padr_gridNOMB_PAIS: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PAIS'
          end
          object padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_DEPARTAMENTO'
          end
          object padr_gridCODI_DEPARTAMENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_DEPARTAMENTO'
          end
          object padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_DEPARTAMENTO'
          end
          object padr_gridCONS_CIUDAD: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CIUDAD'
          end
          object padr_gridCODI_CIUDAD: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CIUDAD'
          end
          object padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CIUDAD'
          end
          object padr_gridDIRECCION: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIRECCION'
          end
          object padr_gridTELE_RESIDENCIA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_RESIDENCIA'
          end
          object padr_gridTELE_OTRO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_OTRO'
          end
          object padr_gridTELE_MOVIL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TELE_MOVIL'
          end
          object padr_gridFECH_NACIMIENTO: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_NACIMIENTO'
          end
          object padr_gridMES_NACIMIENTO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MES_NACIMIENTO'
          end
          object padr_gridEDAD: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EDAD'
          end
          object padr_gridCONS_PAIS_NACIMIENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PAIS_NACIMIENTO'
          end
          object padr_gridCODI_PAIS_NACIMIENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PAIS_NACIMIENTO'
          end
          object padr_gridNOMB_PAIS_NACIMIENTO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PAIS_NACIMIENTO'
          end
          object padr_gridCONS_DEPA_NACIMIENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_DEPA_NACIMIENTO'
          end
          object padr_gridCODI_DEPA_NACIMIENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_DEPA_NACIMIENTO'
          end
          object padr_gridNOMB_DEPA_NACIMIENTO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_DEPA_NACIMIENTO'
          end
          object padr_gridCONS_CIUD_NACIMIENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_CIUD_NACIMIENTO'
          end
          object padr_gridCODI_CIUD_NACIMIENTO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_CIUD_NACIMIENTO'
          end
          object padr_gridNOMB_CIUD_NACIMIENTO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_CIUD_NACIMIENTO'
          end
          object padr_gridNOMB_PERS_TIPO_DOCUMENTO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_TIPO_DOCUMENTO'
          end
          object padr_gridNUME_DOCUMENTO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_DOCUMENTO'
          end
          object padr_gridFECH_EXPE_DOCUMENTO: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_EXPE_DOCUMENTO'
          end
          object padr_gridLUGA_EXPE_DOCUMENTO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LUGA_EXPE_DOCUMENTO'
          end
          object padr_gridNUME_PASAPORTE: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PASAPORTE'
          end
          object padr_gridFECH_EXPE_PASAPORTE: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_EXPE_PASAPORTE'
          end
          object padr_gridLUGA_EXPE_PASAPORTE: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LUGA_EXPE_PASAPORTE'
          end
          object padr_gridFECH_VENC_PASAPORTE: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_VENC_PASAPORTE'
          end
          object padr_gridNUME_LIBR_MILITAR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_LIBR_MILITAR'
          end
          object padr_gridFECH_EXPE_LIBR_MILITAR: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_EXPE_LIBR_MILITAR'
          end
          object padr_gridNUME_SEGU_SOCIAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_SEGU_SOCIAL'
          end
          object padr_gridNUME_HIJOS: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_HIJOS'
          end
          object padr_gridNOMB_SEXO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_SEXO'
          end
          object padr_gridNOMB_ESTA_CIVIL: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_ESTA_CIVIL'
          end
          object padr_gridNUME_CONDUCCION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_CONDUCCION'
          end
          object padr_gridFECH_EXPE_CONDUCCION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_EXPE_CONDUCCION'
          end
          object padr_gridLUGA_EXPE_CONDUCCION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LUGA_EXPE_CONDUCCION'
          end
          object padr_gridFECH_VENC_CONDUCCION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_VENC_CONDUCCION'
          end
          object padr_gridCATE_CONDUCCION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CATE_CONDUCCION'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 568
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_vinculos: TTBXSubmenuItem
              LinkSubitems = _fMDI.menu_personal
              Visible = True
            end
            object TBXItem3: TTBXItem [8]
              Action = acti_modi_ver_activos
              ImageIndex = 49
              Images = _fMDI.imag_grandes
            end
            object TBXSubmenuItem1: TTBXSubmenuItem [9]
              Caption = 'Movimientos de personal'
              ImageIndex = 11
              Images = _fMDI.imag_general32
              LinkSubitems = menu_movimientos
              SubMenuImages = _fMDI.ImagenesMenus
            end
            object TBXSeparatorItem3: TTBXSeparatorItem [10]
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 568
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 568
          inherited padr_beve_sepa: TBevel
            Width = 762
          end
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Height = 277
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 255
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
          Height = 277
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 255
              inherited padr_prio_impresion: TdxTreeList
                Height = 29
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_izquierda: TTBXDock
    Height = 363
  end
  inherited padr_titu_ventana: TPanel
    Width = 804
    inherited padr_pane_2: TPanel
      Left = 733
    end
    inherited padr_pane_cerrar: TPanel
      Left = 751
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 733
      LabelCaption = 'Maestro de personal'
      Caption = 'Maestro de personal'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 596
    Height = 363
    inherited padr_page_ocul_reporte: TdxTabSheet
      inherited padr_repo_fortes: Tffra_edit_reportes
        inherited TBXDock3: TTBXDock
          inherited pane_insp_objetos: TTBXDockablePanel
            inherited page: TSCLPageControl
              FixedDimension = 19
              inherited page_propiedades: TSCLTabSheet
                inherited page_prop: TSCLPageControl
                  FixedDimension = 19
                end
              end
              inherited page_campos: TSCLTabSheet
                inherited grid_camp_disponibles: TSCLDBGrid
                  Filter.Criteria = {00000000}
                end
              end
            end
          end
        end
      end
    end
  end
  inherited padr_dock_top: TTBXDock
    Width = 804
  end
  inherited padr_dock_bottom: TTBXDock
    Top = 396
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
    Height = 363
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_modificar: TAction
      Caption = 'Datos generales'
    end
    inherited padr_acti_consultar: TAction
      Enabled = False
      Visible = False
    end
    object Acti_Modi_Confidencial: TAction
      Category = 'Modificaciones'
      Caption = 'Datos Confidenciales'
      OnExecute = Acti_Modi_ConfidencialExecute
      OnUpdate = Acti_Modi_ConfidencialUpdate
    end
    object Acti_Modi_Traslados: TAction
      Category = 'Modificaciones'
      Caption = 'Traslados'
      OnExecute = Acti_Modi_TrasladosExecute
    end
    object Acti_Modi_Bajas: TAction
      Category = 'Modificaciones'
      Caption = 'Bajas'
      OnExecute = Acti_Modi_BajasExecute
    end
    object Acti_Modi_Reingreso: TAction
      Category = 'Modificaciones'
      Caption = 'Reingresos'
      OnExecute = Acti_Modi_ReingresoExecute
    end
    object Acti_Anul_traslados: TAction
      Category = 'Anulados'
      Caption = 'Traslados'
      OnExecute = Acti_Anul_trasladosExecute
    end
    object Acti_Anul_Bajas: TAction
      Category = 'Anulados'
      Caption = 'Bajas'
      OnExecute = Acti_Anul_BajasExecute
    end
    object Acti_Anul_Reingresos: TAction
      Category = 'Anulados'
      Caption = 'Reingresos'
      OnExecute = Acti_Anul_ReingresosExecute
    end
    object acti_modi_sistema: TAction
      Category = 'Modificaciones'
      Caption = 'Datos del sistema'
      OnExecute = acti_modi_sistemaExecute
      OnUpdate = acti_modi_sistemaUpdate
    end
    object acti_modi_ver_activos: TAction
      Category = 'Modificaciones'
      Caption = 'Ver sólamente el personal activo'
      Checked = True
      OnExecute = acti_modi_ver_activosExecute
    end
  end
  inherited consulta: TQuery
    BeforeOpen = consultaBeforeOpen
    SQL.Strings = (
      'SELECT * FROM'
      'CON_GLO_PERS_GENE_FECH_COMPLETO("NOW")'
      'WHERE CONS_ESTADO <= :CONS_ESTADO ')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_ESTADO'
        ParamType = ptInput
      end>
    object consultaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'Cons. pesonal'
      FieldName = 'CONS_PERSONAL'
    end
    object consultaCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object consultaPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer apellido'
      FieldName = 'PRIM_APELLIDO'
      Size = 30
    end
    object consultaSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo apellido'
      FieldName = 'SEGU_APELLIDO'
      Size = 30
    end
    object consultaNOMBRES: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMBRES'
      Size = 40
    end
    object consultaNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombre completo'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
    end
    object consultaNOMB_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'NOMB_ESTADO'
      Size = 60
    end
    object consultaNOMB_UBIC_TIPO: TStringField
      DisplayLabel = 'Tipo ubicación'
      FieldName = 'NOMB_UBIC_TIPO'
      Size = 60
    end
    object consultaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object consultaNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      FieldName = 'NOMB_AREA'
      Size = 60
    end
    object consultaNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
    object consultaNOMB_PLAN_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_PLAN_LINEA'
      Size = 60
    end
    object consultaNOMB_LINE_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_LINE_SECCION'
      Size = 60
    end
    object consultaNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega'
      FieldName = 'NOMB_BODEGA'
      Size = 60
    end
    object consultaOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra ubicación'
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object consultaCODI_TURNO: TStringField
      DisplayLabel = 'Turno'
      FieldName = 'CODI_TURNO'
      Size = 12
    end
    object consultaNOMB_TIPO_TURNO: TStringField
      DisplayLabel = 'Tipo turno'
      FieldName = 'NOMB_TIPO_TURNO'
      Size = 60
    end
    object consultaNOMB_PERS_CARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'NOMB_PERS_CARGO'
      Size = 60
    end
    object consultaNOMB_PERS_CENT_COSTO: TStringField
      DisplayLabel = 'Centro costos'
      FieldName = 'NOMB_PERS_CENT_COSTO'
      Size = 60
    end
    object consultaNOMB_COST_GRUPO: TStringField
      DisplayLabel = 'Sub-centro de costos'
      FieldName = 'NOMB_COST_GRUPO'
      Size = 60
    end
    object consultaCONS_ESTADO: TIntegerField
      DisplayLabel = 'Cons. estado'
      FieldName = 'CONS_ESTADO'
    end
    object consultaCONS_UBIC_TIPO: TIntegerField
      DisplayLabel = 'Cons. tipo ubicación'
      FieldName = 'CONS_UBIC_TIPO'
    end
    object consultaCONS_EMPRESA: TIntegerField
      DisplayLabel = 'Cons. empresa'
      FieldName = 'CONS_EMPRESA'
    end
    object consultaCONS_AREA: TIntegerField
      DisplayLabel = 'Cons. área'
      FieldName = 'CONS_AREA'
    end
    object consultaCONS_PLANTA: TIntegerField
      DisplayLabel = 'Cons. planta'
      FieldName = 'CONS_PLANTA'
    end
    object consultaCONS_PLAN_LINEA: TIntegerField
      DisplayLabel = 'Cons. línea'
      FieldName = 'CONS_PLAN_LINEA'
    end
    object consultaCONS_LINE_SECCION: TIntegerField
      DisplayLabel = 'Cons. sección'
      FieldName = 'CONS_LINE_SECCION'
    end
    object consultaCONS_BODEGA: TIntegerField
      DisplayLabel = 'Cons. bodega'
      FieldName = 'CONS_BODEGA'
    end
    object consultaCONS_TURNO: TIntegerField
      DisplayLabel = 'Cons. turno'
      FieldName = 'CONS_TURNO'
    end
    object consultaCONS_PERS_CARGO: TIntegerField
      DisplayLabel = 'Cons. Cargo'
      FieldName = 'CONS_PERS_CARGO'
    end
    object consultaCONS_PERS_CENT_COSTO: TIntegerField
      DisplayLabel = 'Cons. centro costos'
      FieldName = 'CONS_PERS_CENT_COSTO'
    end
    object consultaCONS_COST_GRUPO: TIntegerField
      DisplayLabel = 'Cons. sub-centro costos'
      FieldName = 'CONS_COST_GRUPO'
    end
    object consultaCONS_PAIS: TIntegerField
      DisplayLabel = 'Cons. País'
      FieldName = 'CONS_PAIS'
    end
    object consultaCODI_PAIS: TStringField
      DisplayLabel = 'Cód. País'
      FieldName = 'CODI_PAIS'
      Size = 12
    end
    object consultaNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldName = 'NOMB_PAIS'
      Size = 60
    end
    object consultaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Cons. Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
    end
    object consultaCODI_DEPARTAMENTO: TStringField
      DisplayLabel = 'Cód. Departamento'
      FieldName = 'CODI_DEPARTAMENTO'
      Size = 12
    end
    object consultaNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Size = 60
    end
    object consultaCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Cons. Ciudad'
      FieldName = 'CONS_CIUDAD'
    end
    object consultaCODI_CIUDAD: TStringField
      DisplayLabel = 'Cód. Ciudad'
      FieldName = 'CODI_CIUDAD'
      Size = 12
    end
    object consultaNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'NOMB_CIUDAD'
      Size = 60
    end
    object consultaDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 60
    end
    object consultaTELE_RESIDENCIA: TStringField
      DisplayLabel = 'Teléfono Residencia'
      FieldName = 'TELE_RESIDENCIA'
      Size = 30
    end
    object consultaTELE_OTRO: TStringField
      DisplayLabel = 'Otro Teléfono'
      FieldName = 'TELE_OTRO'
      Size = 30
    end
    object consultaTELE_MOVIL: TStringField
      DisplayLabel = 'Movil'
      FieldName = 'TELE_MOVIL'
      Size = 30
    end
    object consultaFECH_NACIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha Nacimiento'
      FieldName = 'FECH_NACIMIENTO'
    end
    object consultaMES_NACIMIENTO: TStringField
      DisplayLabel = 'Mes Nacimiento'
      FieldName = 'MES_NACIMIENTO'
      Size = 15
    end
    object consultaEDAD: TIntegerField
      DisplayLabel = 'Edad'
      FieldName = 'EDAD'
    end
    object consultaCONS_PAIS_NACIMIENTO: TIntegerField
      DisplayLabel = 'Cons. Pais Nacimiento'
      FieldName = 'CONS_PAIS_NACIMIENTO'
    end
    object consultaCODI_PAIS_NACIMIENTO: TStringField
      DisplayLabel = 'Cód. Pais Nacimiento'
      FieldName = 'CODI_PAIS_NACIMIENTO'
      Size = 12
    end
    object consultaNOMB_PAIS_NACIMIENTO: TStringField
      DisplayLabel = 'Pais Nacimiento'
      FieldName = 'NOMB_PAIS_NACIMIENTO'
      Size = 60
    end
    object consultaCONS_DEPA_NACIMIENTO: TIntegerField
      DisplayLabel = 'Cons. Departamento Nacimiento'
      FieldName = 'CONS_DEPA_NACIMIENTO'
    end
    object consultaCODI_DEPA_NACIMIENTO: TStringField
      DisplayLabel = 'Cód. Departamento Nacimiento'
      FieldName = 'CODI_DEPA_NACIMIENTO'
      Size = 12
    end
    object consultaNOMB_DEPA_NACIMIENTO: TStringField
      DisplayLabel = 'Departamento Nacimiento'
      FieldName = 'NOMB_DEPA_NACIMIENTO'
      Size = 60
    end
    object consultaCONS_CIUD_NACIMIENTO: TIntegerField
      DisplayLabel = 'Cons. Ciudad Nacimiento'
      FieldName = 'CONS_CIUD_NACIMIENTO'
    end
    object consultaCODI_CIUD_NACIMIENTO: TStringField
      DisplayLabel = 'Cód. Ciudad Nacimiento'
      FieldName = 'CODI_CIUD_NACIMIENTO'
      Size = 12
    end
    object consultaNOMB_CIUD_NACIMIENTO: TStringField
      DisplayLabel = 'Ciudad Nacimiento'
      FieldName = 'NOMB_CIUD_NACIMIENTO'
      Size = 60
    end
    object consultaNOMB_PERS_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'NOMB_PERS_TIPO_DOCUMENTO'
      Size = 60
    end
    object consultaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'No. Documento'
      FieldName = 'NUME_DOCUMENTO'
      Size = 12
    end
    object consultaFECH_EXPE_DOCUMENTO: TDateTimeField
      DisplayLabel = 'Fecha Expedición Doc.'
      FieldName = 'FECH_EXPE_DOCUMENTO'
    end
    object consultaLUGA_EXPE_DOCUMENTO: TStringField
      DisplayLabel = 'Lugar Expedición Doc.'
      FieldName = 'LUGA_EXPE_DOCUMENTO'
      Size = 30
    end
    object consultaNUME_PASAPORTE: TStringField
      DisplayLabel = 'No. Pasaporte'
      FieldName = 'NUME_PASAPORTE'
      Size = 12
    end
    object consultaFECH_EXPE_PASAPORTE: TDateTimeField
      DisplayLabel = 'Fecha Expedición Pas.'
      FieldName = 'FECH_EXPE_PASAPORTE'
    end
    object consultaLUGA_EXPE_PASAPORTE: TStringField
      DisplayLabel = 'Lugar Expedición Pas.'
      FieldName = 'LUGA_EXPE_PASAPORTE'
      Size = 30
    end
    object consultaFECH_VENC_PASAPORTE: TDateTimeField
      DisplayLabel = 'Fecha Vencimiento Pas.'
      FieldName = 'FECH_VENC_PASAPORTE'
    end
    object consultaNUME_LIBR_MILITAR: TStringField
      DisplayLabel = 'No. Libreta Militar'
      FieldName = 'NUME_LIBR_MILITAR'
      Size = 30
    end
    object consultaFECH_EXPE_LIBR_MILITAR: TDateTimeField
      DisplayLabel = 'Fecha Expedición LM.'
      FieldName = 'FECH_EXPE_LIBR_MILITAR'
    end
    object consultaNUME_CONDUCCION: TStringField
      DisplayLabel = 'No. Conducción'
      FieldName = 'NUME_CONDUCCION'
      Size = 12
    end
    object consultaFECH_EXPE_CONDUCCION: TDateTimeField
      DisplayLabel = 'Fecha Expedición Conducción'
      FieldName = 'FECH_EXPE_CONDUCCION'
    end
    object consultaLUGA_EXPE_CONDUCCION: TStringField
      DisplayLabel = 'Lugar Expedición Conducción'
      FieldName = 'LUGA_EXPE_CONDUCCION'
      Size = 30
    end
    object consultaFECH_VENC_CONDUCCION: TDateTimeField
      DisplayLabel = 'Fecha vencimiento Conducción'
      FieldName = 'FECH_VENC_CONDUCCION'
    end
    object consultaCATE_CONDUCCION: TStringField
      DisplayLabel = 'Categoría de Conducción'
      FieldName = 'CATE_CONDUCCION'
      Size = 12
    end
    object consultaNUME_SEGU_SOCIAL: TStringField
      DisplayLabel = 'No. Seguro Social'
      FieldName = 'NUME_SEGU_SOCIAL'
      Size = 12
    end
    object consultaNUME_HIJOS: TIntegerField
      DisplayLabel = 'No. Hijos'
      FieldName = 'NUME_HIJOS'
    end
    object consultaNOMB_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'NOMB_SEXO'
      Size = 60
    end
    object consultaNOMB_ESTA_CIVIL: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'NOMB_ESTA_CIVIL'
      Size = 60
    end
  end
  inherited padr_popu_vist_actual: TTBXPopupMenu
    object TBXSeparatorItem8: TTBXSeparatorItem
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'CODI_PERSONAL'
    NombreAMostrar = 'Personal'
    CamposDeBusqueda = 'CONS_PERSONAL'
    TablaMaestra = 'GLO_PERS_MOVIMIENTOS'
  end
  inherited padr_pop_grid: TTBXPopupMenu
    Left = 198
    Top = 68
    object menu_movimientos: TTBXSubmenuItem [0]
      Caption = 'Movimientos de personal'
      object TBXItem1: TTBXItem
        Action = padr_acti_modificar
        ImageIndex = 44
        Images = _fMDI.ImagenesMenus
      end
      object TBXItem23: TTBXItem
        Action = Acti_Modi_Traslados
        ImageIndex = 45
        Images = _fMDI.ImagenesMenus
      end
      object TBXItem27: TTBXItem
        Action = Acti_Modi_Confidencial
        ImageIndex = 50
        Images = _fMDI.ImagenesMenus
      end
      object TBXItem2: TTBXItem
        Action = acti_modi_sistema
        ImageIndex = 92
        Images = _fMDI.ImagenesMenus
      end
      object TBXSubmenuItem4: TTBXSubmenuItem
        Caption = 'Formas de pago'
        Enabled = False
        Images = _fMDI.ImagenesMenus
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object TBXItem22: TTBXItem
        Action = Acti_Modi_Bajas
        ImageIndex = 36
        Images = _fMDI.ImagenesMenus
      end
      object TBXItem21: TTBXItem
        Action = Acti_Modi_Reingreso
        Images = _fMDI.ImagenesMenus
      end
    end
    object TBXSubmenuItem3: TTBXSubmenuItem [1]
      Caption = 'Anular Movimientos'
      object TBXItem25: TTBXItem
        Action = Acti_Anul_traslados
      end
      object TBXItem24: TTBXItem
        Action = Acti_Anul_Bajas
      end
      object TBXItem26: TTBXItem
        Action = Acti_Anul_Reingresos
      end
    end
    object TBXSeparatorItem1: TTBXSeparatorItem [2]
    end
    object TBXSeparatorItem9: TTBXSeparatorItem
    end
  end
  object QDatos_Confidenciales: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT N.CONS_PERS_NIVE_SALARIAL, N.CODI_PERS_NIVE_SALARIAL, '
      '    N.NOMB_PERS_NIVE_SALARIAL,'
      ' T.CONS_PERS_TIPO_CONTRATO,  T.CODI_PERS_TIPO_CONTRATO, '
      '    T.NOMB_PERS_TIPO_CONTRATO,'
      ' M.NUME_CONTRATO,'
      ' P.CONS_PERI_PAGO, P.CODI_PERI_PAGO, P.NOMB_PERI_PAGO,'
      ' M.VALO_SALARIO, M.AUXI_TRANSPORTE, M.AUXI_SALARIAL,'
      ' M.FECH_SISTEMA, M.USUA_SISTEMA,'
      ' M.APLI_INCENTIVO, M.DIAS_VENC_CONTRATO'
      'FROM GLO_PERS_NIVE_SALARIALES N,'
      ' GLO_PERS_TIPO_CONTRATO T, SIS_PERI_PAGO P,'
      ' GLO_PERS_MOVI_CONFIDENCIAL M'
      'WHERE M.CONS_PERS_NIVE_SALARIAL = N.CONS_PERS_NIVE_SALARIAL'
      ' AND M.CONS_PERS_TIPO_CONTRATO = T.CONS_PERS_TIPO_CONTRATO'
      ' AND M.CONS_PERI_PAGO = P.CONS_PERI_PAGO'
      ' AND M.CONS_PERS_MOVIMIENTO ='
      '       (SELECT MAX(MC.CONS_PERS_MOVIMIENTO)'
      
        '        FROM GLO_PERS_MOVI_CONFIDENCIAL MC, GLO_PERS_MOVIMIENTOS' +
        ' MP'
      '        WHERE MC.CONS_PERS_MOVIMIENTO = MP.CONS_PERS_MOVIMIENTO'
      '         AND MP.CONS_PERSONAL = :CONS_PERSONAL)')
    Left = 345
    Top = 37
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end>
    object QDatos_ConfidencialesCONS_PERS_NIVE_SALARIAL: TIntegerField
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
    end
    object QDatos_ConfidencialesCODI_PERS_NIVE_SALARIAL: TStringField
      FieldName = 'CODI_PERS_NIVE_SALARIAL'
      Size = 12
    end
    object QDatos_ConfidencialesNOMB_PERS_NIVE_SALARIAL: TStringField
      FieldName = 'NOMB_PERS_NIVE_SALARIAL'
      Size = 60
    end
    object QDatos_ConfidencialesCONS_PERS_TIPO_CONTRATO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
    end
    object QDatos_ConfidencialesCODI_PERS_TIPO_CONTRATO: TStringField
      FieldName = 'CODI_PERS_TIPO_CONTRATO'
      Size = 12
    end
    object QDatos_ConfidencialesNOMB_PERS_TIPO_CONTRATO: TStringField
      FieldName = 'NOMB_PERS_TIPO_CONTRATO'
      Size = 60
    end
    object QDatos_ConfidencialesDIAS_VENC_CONTRATO: TIntegerField
      FieldName = 'DIAS_VENC_CONTRATO'
    end
    object QDatos_ConfidencialesAPLI_INCENTIVO: TIntegerField
      FieldName = 'APLI_INCENTIVO'
    end
    object QDatos_ConfidencialesNUME_CONTRATO: TStringField
      FieldName = 'NUME_CONTRATO'
    end
    object QDatos_ConfidencialesCONS_PERI_PAGO: TIntegerField
      FieldName = 'CONS_PERI_PAGO'
    end
    object QDatos_ConfidencialesCODI_PERI_PAGO: TStringField
      FieldName = 'CODI_PERI_PAGO'
      Size = 12
    end
    object QDatos_ConfidencialesNOMB_PERI_PAGO: TStringField
      FieldName = 'NOMB_PERI_PAGO'
      Size = 60
    end
    object QDatos_ConfidencialesVALO_SALARIO: TIntegerField
      FieldName = 'VALO_SALARIO'
    end
    object QDatos_ConfidencialesAUXI_TRANSPORTE: TFloatField
      FieldName = 'AUXI_TRANSPORTE'
    end
    object QDatos_ConfidencialesAUXI_SALARIAL: TFloatField
      FieldName = 'AUXI_SALARIAL'
    end
    object QDatos_ConfidencialesFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object QDatos_ConfidencialesUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object QTraslados: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_MOVI_TRASLADOS'
      'WHERE CONS_PERS_MOVIMIENTO ='
      '      (SELECT MAX(CONS_PERS_MOVIMIENTO)'
      '       FROM GLO_PERS_MOVI_TRASLADOS T, GLO_PERS_MOVIMIENTOS M'
      '       WHERE T.CONS_PERS_MOVIMIENTO = M.CONS_PERS_MOVIMIENTO'
      '        AND M.CONS_PERSONAL = :CONS_PERSONAL)')
    Left = 377
    Top = 37
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PERSONAL'
        ParamType = ptInput
      end>
    object QTrasladosCONS_PERS_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_MOVIMIENTO'
    end
    object QTrasladosCONS_UBIC_TIPO: TIntegerField
      FieldName = 'CONS_UBIC_TIPO'
    end
    object QTrasladosCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
    end
    object QTrasladosCONS_AREA: TIntegerField
      FieldName = 'CONS_AREA'
    end
    object QTrasladosCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
    end
    object QTrasladosCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
    end
    object QTrasladosCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
    end
    object QTrasladosCONS_BODEGA: TIntegerField
      FieldName = 'CONS_BODEGA'
    end
    object QTrasladosOTRA_UBICACION: TStringField
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object QTrasladosCONS_TURNO: TIntegerField
      FieldName = 'CONS_TURNO'
    end
    object QTrasladosFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object QTrasladosUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object QTrasladosCONS_PERS_CARGO: TIntegerField
      FieldName = 'CONS_PERS_CARGO'
    end
    object QTrasladosCONS_PERS_CENT_COSTO: TIntegerField
      FieldName = 'CONS_PERS_CENT_COSTO'
    end
    object QTrasladosCONS_COST_GRUPO: TIntegerField
      FieldName = 'CONS_COST_GRUPO'
    end
  end
  object pop_movimientos: TTBXPopupMenu
    Left = 310
    Top = 206
    object TBGroupItem1: TTBGroupItem
      LinkSubitems = menu_movimientos
    end
    object TBXSeparatorItem4: TTBXSeparatorItem
    end
  end
end

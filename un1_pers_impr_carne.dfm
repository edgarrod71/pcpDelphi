inherited fn1_pers_impr_carne: Tfn1_pers_impr_carne
  Left = 42
  Top = 126
  Width = 812
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    inherited padr_pagina: TdxPageControl
      Width = 568
      inherited fram_pagi_lista: TdxTabSheet
        inherited dfsSplitter1: TdfsSplitter
          Top = 167
          Height = 306
        end
        object Splitter1: TSplitter [1]
          Left = 50
          Top = 167
          Width = 3
          Height = 306
          Cursor = crHSplit
          Align = alRight
        end
        inherited padr_grid: TSCLDBGrid
          Top = 167
          Width = 69
          Height = 306
          Filter.Criteria = {00000000}
          inherited padr_gridCONS_PERSONAL: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 61
          end
          inherited padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_UBIC_TIPO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridNOMB_UBIC_TIPO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_EMPRESA: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 72
          end
          inherited padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_AREA: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 61
          end
          inherited padr_gridNOMB_AREA: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_PLANTA: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 63
          end
          inherited padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_PLAN_LINEA: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 61
          end
          inherited padr_gridNOMB_PLAN_LINEA: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_LINE_SECCION: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 71
          end
          inherited padr_gridNOMB_LINE_SECCION: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_BODEGA: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 68
          end
          inherited padr_gridNOMB_BODEGA: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridOTRA_UBICACION: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_TURNO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 61
          end
          inherited padr_gridCODI_TURNO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridNOMB_TIPO_TURNO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_PERS_CARGO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 61
          end
          inherited padr_gridNOMB_PERS_CARGO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_PERS_CENT_COSTO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 96
          end
          inherited padr_gridNOMB_PERS_CENT_COSTO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_COST_GRUPO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 93
          end
          inherited padr_gridNOMB_COST_GRUPO: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
          end
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 568
          inherited padr_barra: TTBXToolbar
            inherited BImprimir: TTBXSubmenuItem
              inherited boto_repo_nuevo: TTBXItem
                Enabled = False
              end
              inherited padr_boto_opci_impresion: TTBXVisibilityToggleItem
                Enabled = False
              end
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 568
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 568
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_izqu_grid: TTBXDock
          Top = 167
          Height = 306
          inherited padr_pane_conf_vista: TTBXDockablePanel
            inherited padr_conf_vista: TdxTreeList
              Height = 284
            end
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
          Top = 167
          Height = 306
          inherited DPOpciones_Impresion: TTBXDockablePanel
            inherited padr_pane_29: TPanel
              Height = 284
              inherited padr_prio_impresion: TdxTreeList
                Height = 58
              end
            end
          end
        end
        inherited PCPFrame1: TPCPFrame
          Tag = 115
          Width = 568
          Height = 115
          inherited Panel1: TPanel
            Width = 562
            Height = 90
            inherited fram_filtro: Tffra_maqu_ubicacion
              Top = 32
              Width = 562
              inherited pane_tipo_ubicacion: TPanel
                Width = 562
              end
              inherited pane_ubic_propia: TPanel
                Width = 562
              end
              inherited pane_ubic_externa: TPanel
                Width = 562
              end
              inherited pane_ubic_bodega: TPanel
                Width = 562
              end
              inherited pane_ubic_otra: TPanel
                Width = 562
                inherited edit_ubic_otra_ubicacion: TdxDBEdit
                  StyleController = padr_estilo
                end
              end
            end
            inherited Panel2: TPanel
              Width = 562
              Height = 32
              Visible = False
              inherited edit_fecha: TdxDateEdit
                StoredValues = 4
              end
            end
          end
        end
        inline fram_reporte: Tffra_edit_reportes
          Left = 128
          Top = 176
          Width = 161
          Height = 153
          TabOrder = 7
          Visible = False
          inherited TBXDock1: TTBXDock
            Width = 370
            inherited barr_edicion: TTBXToolbar
              inherited comb_dataSources: TdxPickEdit
                Left = 146
              end
            end
            inherited TBXToolbar2: TTBXToolbar
              Left = 322
            end
          end
          inherited TBXDock2: TTBXDock
            Height = 111
          end
          inherited pane_contenedor: TPCPFrame
            Tag = 50
            Width = 0
            Height = 111
            inherited ELDesignPanel1: TELDesignPanel
              Width = 80
              Height = 97
            end
          end
          inherited TBXDock3: TTBXDock
            Left = 35
            Height = 111
            inherited pane_insp_objetos: TTBXDockablePanel
              inherited page: TSCLPageControl
                Height = 91
                FixedDimension = 19
                inherited page_propiedades: TSCLTabSheet
                  inherited page_prop: TSCLPageControl
                    Height = 68
                    FixedDimension = 19
                    inherited page_labels: TSCLTabSheet
                      inherited scro_box: TScrollBox
                        Height = 45
                      end
                    end
                  end
                end
                inherited page_campos: TSCLTabSheet
                  inherited grid_camp_disponibles: TSCLDBGrid
                    Filter.Criteria = {00000000}
                  end
                end
                inherited page_avanzado: TSCLTabSheet
                  inherited PropInsp: TELPropertyInspector
                    Height = 85
                  end
                end
              end
            end
          end
        end
        object Grid2: TSCLDBGrid
          Left = 83
          Top = 167
          Width = 290
          Height = 306
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderMinRowCount = 2
          HeaderPanelRowCount = 1
          KeyField = 'CONS_PERSONAL'
          ShowGroupPanel = True
          ShowSummaryFooter = True
          SummaryGroups = <
            item
              DefaultGroup = False
              SummaryItems = <>
              Name = 'padr_summary_grid'
            end
            item
              DefaultGroup = False
              SummaryItems = <
                item
                  ColumnName = 'padr_gridNOMB_COMPLETO'
                  SummaryField = 'CONS_PERSONAL'
                  SummaryFormat = ',0'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup2'
            end
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryField = 'CONS_PERSONAL'
                  SummaryFormat = '-> (,0)'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup3'
            end>
          SummarySeparator = ', '
          Align = alRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = pop_Grid2
          TabOrder = 8
          OnDblClick = Grid2DblClick
          ArrowsColor = clHighlight
          AutoSearchColor = 4227327
          AutoSearchTextColor = clBlack
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = data_seleccion
          Filter.Active = True
          Filter.AutoDataSetFilter = True
          Filter.CaseInsensitive = True
          Filter.Criteria = {00000000}
          GridLineColor = clBtnFace
          GroupPanelColor = 13265692
          GroupPanelFontColor = clWhite
          GroupNodeColor = 15982803
          GroupNodeTextColor = 8072450
          HeaderColor = 16578290
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          HideFocusRect = True
          IniSectionName = 'Columnas visibles'
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMouseScroll, edgoMultiSelect, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          ShowRowFooter = True
          OnFilterChanged = padr_gridFilterChanged
          object dxDBGridMaskColumn2: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Sorted = csUp
            Width = 99
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL'
          end
          object dxDBGridMaskColumn3: TdxDBGridMaskColumn
            DisableEditor = True
            HeaderAlignment = taCenter
            Width = 185
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CONS_PERSONAL'
            SummaryFooterFormat = ',0'
          end
        end
        object Panel3: TPanel
          Left = 53
          Top = 167
          Width = 30
          Height = 306
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 9
          object boto_adic_1: TTBXButtonSCL
            Left = 5
            Top = 50
            Width = 22
            Height = 20
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 60
            Images = _fMDI.imagenesPCP
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Action = acti_adic_1
          end
          object boto_adic_todos: TTBXButtonSCL
            Left = 5
            Top = 74
            Width = 22
            Height = 20
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 59
            Images = _fMDI.imagenesPCP
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Action = acti_adic_todos
          end
          object boto_elim_1: TTBXButtonSCL
            Left = 5
            Top = 106
            Width = 22
            Height = 20
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 57
            Images = _fMDI.imagenesPCP
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Action = acti_elim_1
          end
          object boto_elim_todos: TTBXButtonSCL
            Left = 5
            Top = 130
            Width = 22
            Height = 20
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 58
            Images = _fMDI.imagenesPCP
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Action = acti_elim_todos
          end
        end
      end
    end
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
      LabelCaption = 'Impresión de carné'
      Caption = 'Impresión de carné'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 596
    inherited padr_page_ocul_reporte: TdxTabSheet
      object Splitter2: TSplitter [0]
        Left = 0
        Top = 0
        Width = 3
        Height = 484
        Cursor = crHSplit
      end
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
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_expo_excel: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_html: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_txt: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_UBIC_ACTI_FOTO(:pe_fecha)')
    object consultaPRIM_APELLIDO: TStringField
      FieldName = 'PRIM_APELLIDO'
      Size = 30
    end
    object consultaSEGU_APELLIDO: TStringField
      FieldName = 'SEGU_APELLIDO'
      Size = 30
    end
    object consultaNOMBRES: TStringField
      FieldName = 'NOMBRES'
      Size = 40
    end
    object consultaIMAGEN: TBlobField
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object consultaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
    end
    object consultaCONS_FAMI_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_FAMI_MOVIMIENTO'
    end
    object consultaCONS_ESTADO: TIntegerField
      FieldName = 'CONS_ESTADO'
    end
    object consultaNOMB_ESTADO: TStringField
      FieldName = 'NOMB_ESTADO'
      Size = 60
    end
  end
  inherited padr_pop_grid: TTBXPopupMenu
    object TBXItem2: TTBXItem [0]
      Action = acti_adic_1
      Images = _fMDI.imagenesPCP
    end
    object TBXItem1: TTBXItem [1]
      Action = acti_adic_todos
      Images = fram_reporte.ImageList1
    end
    object TBXSeparatorItem1: TTBXSeparatorItem [2]
    end
    inherited padr_boto_exportar2: TTBXSubmenuItem
      Enabled = False
    end
  end
  object quer_formatos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERS_FORM_IDENTIFICACION,'
      'NOMB_PERS_FORM_IDENTIFICACION, FORMATO'
      'FROM GLO_PERS_FORM_IDENTIFICACION'
      'WHERE ACTIVO = 1'
      'ORDER BY NOMB_PERS_FORM_IDENTIFICACION')
    Left = 769
    Top = 127
    object quer_formatosCONS_PERS_FORM_IDENTIFICACION: TIntegerField
      FieldName = 'CONS_PERS_FORM_IDENTIFICACION'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_FORM_IDENTIFICACION.CONS_PERS_FORM_IDENTI' +
        'FICACION'
    end
    object quer_formatosNOMB_PERS_FORM_IDENTIFICACION: TStringField
      FieldName = 'NOMB_PERS_FORM_IDENTIFICACION'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_FORM_IDENTIFICACION.NOMB_PERS_FORM_IDENTI' +
        'FICACION'
      Size = 60
    end
    object quer_formatosFORMATO: TBlobField
      FieldName = 'FORMATO'
      BlobType = ftBlob
      Size = 80
    end
  end
  object tabl_Seleccion: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'NOMB_COMPLETO'
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 136
    Top = 72
    object tabl_SeleccionCONS_PERSONAL: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERSONAL'
    end
    object tabl_SeleccionCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object tabl_SeleccionNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombre completo'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
    end
    object tabl_SeleccionCONS_UBIC_TIPO: TIntegerField
      DisplayLabel = 'Cons. tipo ubicación'
      FieldName = 'CONS_UBIC_TIPO'
    end
    object tabl_SeleccionNOMB_UBIC_TIPO: TStringField
      DisplayLabel = 'Tipo ubicación'
      FieldName = 'NOMB_UBIC_TIPO'
      Size = 60
    end
    object tabl_SeleccionCONS_EMPRESA: TIntegerField
      DisplayLabel = 'Cons. empresa'
      FieldName = 'CONS_EMPRESA'
    end
    object tabl_SeleccionNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object tabl_SeleccionCONS_AREA: TIntegerField
      DisplayLabel = 'Cons. área'
      FieldName = 'CONS_AREA'
    end
    object tabl_SeleccionNOMB_AREA: TStringField
      DisplayLabel = 'Area'
      FieldName = 'NOMB_AREA'
      Size = 60
    end
    object tabl_SeleccionCONS_PLANTA: TIntegerField
      DisplayLabel = 'Cons. Planta'
      FieldName = 'CONS_PLANTA'
    end
    object tabl_SeleccionNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
    object tabl_SeleccionCONS_PLAN_LINEA: TIntegerField
      DisplayLabel = 'Cons. Linea'
      FieldName = 'CONS_PLAN_LINEA'
    end
    object tabl_SeleccionNOMB_PLAN_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_PLAN_LINEA'
      Size = 60
    end
    object tabl_SeleccionCONS_LINE_SECCION: TIntegerField
      DisplayLabel = 'Cons. Sección'
      FieldName = 'CONS_LINE_SECCION'
    end
    object tabl_SeleccionNOMB_LINE_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_LINE_SECCION'
      Size = 60
    end
    object tabl_SeleccionCONS_BODEGA: TIntegerField
      DisplayLabel = 'Cons. bodega'
      FieldName = 'CONS_BODEGA'
    end
    object tabl_SeleccionNOMB_BODEGA: TStringField
      DisplayLabel = 'Bodega'
      FieldName = 'NOMB_BODEGA'
      Size = 60
    end
    object tabl_SeleccionOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra ubicación'
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object tabl_SeleccionCONS_TURNO: TIntegerField
      DisplayLabel = 'Cons. turno'
      FieldName = 'CONS_TURNO'
    end
    object tabl_SeleccionCODI_TURNO: TStringField
      DisplayLabel = 'Turno'
      FieldName = 'CODI_TURNO'
      Size = 12
    end
    object tabl_SeleccionNOMB_TIPO_TURNO: TStringField
      DisplayLabel = 'Tipo turno'
      FieldName = 'NOMB_TIPO_TURNO'
      Size = 60
    end
    object tabl_SeleccionCONS_PERS_CARGO: TIntegerField
      DisplayLabel = 'Cons. cargo'
      FieldName = 'CONS_PERS_CARGO'
    end
    object tabl_SeleccionNOMB_PERS_CARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'NOMB_PERS_CARGO'
      Size = 60
    end
    object tabl_SeleccionCONS_PERS_CENT_COSTO: TIntegerField
      DisplayLabel = 'Cons. centro costos'
      FieldName = 'CONS_PERS_CENT_COSTO'
    end
    object tabl_SeleccionNOMB_PERS_CENT_COSTO: TStringField
      DisplayLabel = 'Centro de costos'
      FieldName = 'NOMB_PERS_CENT_COSTO'
      Size = 60
    end
    object tabl_SeleccionCONS_COST_GRUPO: TIntegerField
      DisplayLabel = 'Cons. grupo costos'
      FieldName = 'CONS_COST_GRUPO'
    end
    object tabl_SeleccionNOMB_COST_GRUPO: TStringField
      DisplayLabel = 'Grupo de costos'
      FieldName = 'NOMB_COST_GRUPO'
      Size = 60
    end
    object tabl_SeleccionPRIM_APELLIDO: TStringField
      FieldName = 'PRIM_APELLIDO'
      Size = 30
    end
    object tabl_SeleccionSEGU_APELLIDO: TStringField
      FieldName = 'SEGU_APELLIDO'
      Size = 30
    end
    object tabl_SeleccionNOMBRES: TStringField
      FieldName = 'NOMBRES'
      Size = 40
    end
    object tabl_SeleccionIMAGEN: TBlobField
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object tabl_SeleccionCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
    end
    object tabl_SeleccionCONS_FAMI_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_FAMI_MOVIMIENTO'
    end
    object tabl_SeleccionCONS_ESTADO: TIntegerField
      FieldName = 'CONS_ESTADO'
    end
    object tabl_SeleccionNOMB_ESTADO: TStringField
      FieldName = 'NOMB_ESTADO'
      Size = 60
    end
  end
  object data_seleccion: TDataSource
    DataSet = tabl_Seleccion
    Left = 168
    Top = 72
  end
  object acti_Ventana: TActionList
    Images = _fMDI.imagenesPCP
    OnUpdate = acti_VentanaUpdate
    Left = 24
    Top = 132
    object acti_adic_1: TAction
      Caption = 'Adicionar selección'
      ImageIndex = 60
      OnExecute = acti_adic_1Execute
    end
    object acti_adic_todos: TAction
      Caption = 'Adicionar todos'
      ImageIndex = 59
      OnExecute = acti_adic_todosExecute
    end
    object acti_elim_1: TAction
      Caption = 'Eliminar selección'
      ImageIndex = 57
      OnExecute = acti_elim_1Execute
    end
    object acti_elim_todos: TAction
      Caption = 'Eliminar todos'
      ImageIndex = 58
      OnExecute = acti_elim_todosExecute
    end
  end
  object pop_Grid2: TTBXPopupMenu
    Images = _fMDI.imagenesPCP
    Left = 630
    Top = 390
    object TBXItem4: TTBXItem
      Action = acti_elim_1
    end
    object TBXItem3: TTBXItem
      Action = acti_elim_todos
    end
  end
end

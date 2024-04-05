inherited fn1_refe_list_materiales: Tfn1_refe_list_materiales
  Left = 50
  Top = 78
  Width = 812
  Height = 594
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 557
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    inherited padr_barra: TTBXToolbar
      object TBXItem15: TTBXItem [0]
        Action = acti_importar
        ImageIndex = 16
        Images = _fMDI.imag_grandes
      end
      object TBXSubmenuItem1: TTBXSubmenuItem [12]
        Caption = 'Im&primir'
        Hint = 'Imprimir'
        ImageIndex = 8
        Options = [tboDropdownArrow, tboSameWidth]
        ShortCut = 16464
        object TBXItem18: TTBXItem
          Action = padr_acti_imprimir
          Caption = 'Lista de materiales'
          DisplayMode = nbdmTextOnly
          InheritOptions = False
          Options = [tboDefault]
        end
        object TBXItem17: TTBXItem
          Action = acti_impr_comb_colores
          DisplayMode = nbdmTextOnly
          InheritOptions = False
        end
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 967
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 566
    Width = 804
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 804
    inherited padr_pane_titulo: TPanel
      Width = 763
      Caption = 'Lista de materiales (referencias)'
    end
    inherited padr_pane_2: TPanel
      Left = 765
    end
    inherited padr_pane_cerrar: TPanel
      Left = 783
    end
  end
  inline fram_sele_referencia: Tffra_sele_refe_variacion [7]
    Top = 77
    Width = 804
    Align = alTop
    TabOrder = 7
    inherited fram_pane_sele_referencia: TPCPFrame
      Tag = 134
      Width = 804
      Height = 134
      BorderWidth = 0
      OnEnter = fram_sele_referenciafram_pane_sele_referenciaEnter
      inherited fram_pane_referencia: TPanel
        Left = 0
        Top = 19
        Width = 804
        inherited SCLDBLabel1: TSCLDBLabel
          Alive = True
        end
        inherited SCLDBLabel3: TSCLDBLabel
          Alive = True
        end
        inherited comb_codi_referencia: TPCPLookUpComboEdit
          DataField = 'cons_referencia'
          DataSource = data_ventana
          OnChange = fram_sele_referenciacomb_codi_referenciaChange
        end
        inherited comb_variacion: TPCPLookUpComboEdit
          DataField = 'cons_refe_variacion'
          DataSource = data_ventana
          OnChange = fram_sele_referenciacomb_codi_referenciaChange
        end
      end
      inherited fram_pane_informacion: TPCPFrame
        Tag = 87
        Left = 0
        Top = 47
        Width = 804
        Height = 87
        Caption = 'Información de la referencia'
        inherited dxDBEdit4: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit6: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit7: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit8: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit5: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit1: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit2: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit3: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
      end
    end
    inherited padr_boto_menu_Referencia: TTBXButtonSCL
      Left = 244
      Top = 24
    end
  end
  object pane_asignacion: TPCPFrame [8]
    Tag = 316
    Left = 0
    Top = 211
    Width = 804
    Height = 346
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Visible = False
    Caption = 'Lista de materiales e insumos'
    Titulo_Color = 16244694
    Boton_Visible = False
    BorderWidthIn = 4
    FlatBorder = True
    object barra: TTBXDock
      Left = 3
      Top = 26
      Width = 798
      Height = 26
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        DockMode = dmCannotFloatOrChangeDocks
        FullSize = True
        Images = imag_pequenas
        ProcessShortCuts = True
        TabOrder = 0
        object TBXItem11: TTBXItem
          Action = acti_limpiar
          DisplayMode = nbdmImageAndText
          ImageIndex = 36
          Images = _fMDI.imagenesPCP
        end
        object TBXSeparatorItem5: TTBXSeparatorItem
        end
        object TBXItem10: TTBXItem
          Action = acti_guardar
          DisplayMode = nbdmImageAndText
        end
        object TBXItem9: TTBXItem
          Action = acti_cancelar
          DisplayMode = nbdmImageAndText
        end
        object TBXSeparatorItem3: TTBXSeparatorItem
        end
        object TBXItem3: TTBXItem
          Action = Acti_nuevo
          DisplayMode = nbdmImageAndText
        end
        object TBXItem2: TTBXItem
          Action = acti_modificar
          DisplayMode = nbdmImageAndText
        end
        object TBXItem1: TTBXItem
          Action = acti_eliminar
          DisplayMode = nbdmImageAndText
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
        end
        object TBXItem4: TTBXItem
          Action = acti_actualizar
          DisplayMode = nbdmImageAndText
        end
        object TBXSeparatorItem6: TTBXSeparatorItem
        end
        object boto_movi_columnas: TTBXItem
          Action = acti_grid_movi_columnas
          AutoCheck = True
          GroupIndex = 5
          ImageIndex = 14
          Images = _fMDI.imag_varias
        end
        object boto_movi_filas: TTBXItem
          Action = acti_grid_movi_filas
          AutoCheck = True
          GroupIndex = 5
          ImageIndex = 15
          Images = _fMDI.imag_varias
        end
        object TBXItem16: TTBXItem
          Action = acti_grid_movi_ninguno
          AutoCheck = True
          GroupIndex = 5
          ImageIndex = 16
          Images = _fMDI.imag_varias
        end
        object TBXSeparatorItem7: TTBXSeparatorItem
        end
        object TBXItem19: TTBXItem
          Action = acti_trasladar
          DisplayMode = nbdmImageAndText
          ImageIndex = 21
          Images = _fMDI.imag_varias
        end
      end
    end
    object page: TSCLPageControl
      Left = 3
      Top = 52
      Width = 798
      Height = 25
      ActivePage = page_tejidos
      Align = alTop
      BoldCurrentTab = True
      Color = 16578290
      FlatColor = 10435335
      Images = imag_materiales
      Margin = 5
      ParentColor = False
      ShowFullFrame = False
      ShowShadow = False
      TabColors.Shadow = 15582631
      TabColors.Unselected = 16578290
      TabIndex = 0
      TabOrder = 2
      Transparent = True
      OnChange = pageChange
      OnChanging = pageChanging
      FixedDimension = 22
      object page_tejidos: TSCLTabSheet
        Color = 16578290
        ImageIndex = 0
        Caption = 'Tejidos'
      end
      object page_forros: TSCLTabSheet
        Color = 16578290
        ImageIndex = 1
        Caption = 'Forros y entretelas'
      end
      object page_insumos1: TSCLTabSheet
        Color = 16578290
        ImageIndex = 2
        Caption = 'Insumos (fabricación)'
      end
      object page_insumos2: TSCLTabSheet
        Color = 16578290
        ImageIndex = 3
        Caption = 'Insumos (empaque)'
      end
      object page_colores: TSCLTabSheet
        Color = 16578290
        ImageIndex = 4
        Caption = 'Asignación por colores'
      end
      object page_tallas: TSCLTabSheet
        Color = 16578290
        ImageIndex = 5
        Caption = 'Asignación por tallas'
      end
      object page_historial: TSCLTabSheet
        Color = 16578290
        ImageIndex = 6
        Caption = 'Historial'
      end
    end
    object page_asignacion: TSCLPageControl
      Left = 7
      Top = 77
      Width = 790
      Height = 262
      ActivePage = page_asig_colores
      Align = alClient
      BoldCurrentTab = True
      Color = 16578290
      FlatColor = 10435335
      Margin = 5
      ParentColor = False
      TabColors.Shadow = 15582631
      TabColors.Unselected = 16578290
      TabIndex = 2
      TabOrder = 3
      Transparent = True
      FixedDimension = 19
      object page_asig_materiales: TSCLTabSheet
        Color = 16578290
        Caption = 'page_asig_materiales'
        object grid_materiales: TdxDBGrid
          Left = 0
          Top = 0
          Width = 953
          Height = 213
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_REFE_MATERIAL'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = pop_grid
          TabOrder = 0
          OnDblClick = grid_materialesDblClick
          DataSource = data_asignacion
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
          object grid_materialesCONS_REFE_MATERIAL: TdxDBGridMaskColumn
            Caption = 'Cons.'
            DisableCustomizing = True
            HeaderAlignment = taCenter
            Width = 35
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_MATERIAL'
          end
          object grid_materialesCONS_REFE_VARIACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_VARIACION'
          end
          object grid_materialesCONS_MATE_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_REFERENCIA'
          end
          object grid_materialesNOMB_MATE_GRUPO: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 99
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_GRUPO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object grid_materialesNOMB_MATE_SUBGRUPO: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 117
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_SUBGRUPO'
          end
          object grid_materialesCODI_MATE_REFERENCIA: TdxDBGridColumn
            Color = clBtnFace
            HeaderAlignment = taCenter
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_REFERENCIA'
          end
          object grid_materialesNOMB_MATE_REFERENCIA: TdxDBGridColumn
            Color = clBtnFace
            HeaderAlignment = taCenter
            Width = 154
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_REFERENCIA'
          end
          object grid_materialesES_PRINCIPAL: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ES_PRINCIPAL'
          end
          object grid_materialesCONS_TERCERO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TERCERO'
          end
          object grid_materialesNOMB_TERCERO: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 127
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TERCERO'
          end
          object grid_materialesTRAZ_CONSUMO: TdxDBGridMaskColumn
            Color = clBtnFace
            HeaderAlignment = taCenter
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONSUMO'
          end
          object grid_materialesCODI_UNID_MEDIDA: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 52
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_UNID_MEDIDA'
          end
          object grid_materialesCOST_ESTIMADO: TdxDBGridColumn
            Caption = 'Costo'
            HeaderAlignment = taCenter
            Width = 82
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COST_ESTIMADO'
          end
          object grid_materialesSIMB_MONEDA: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SIMB_MONEDA'
          end
          object grid_materialesCOMBINACION: TdxDBGridCheckColumn
            Caption = 'C'
            HeaderAlignment = taCenter
            Width = 17
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COMBINACION'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object grid_materialesTALLAJE: TdxDBGridCheckColumn
            Caption = 'T'
            HeaderAlignment = taCenter
            Width = 17
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TALLAJE'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object grid_materialesTALL_PROMEDIO: TdxDBGridMaskColumn
            Caption = 'Talla'
            HeaderAlignment = taCenter
            Width = 63
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TALL_PROMEDIO'
          end
          object grid_materialesOBSERVACIONES: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 263
            BandIndex = 0
            RowIndex = 0
            HeaderMaxLineCount = 0
            FieldName = 'OBSERVACIONES'
            DisableFilter = True
          end
          object grid_materialesFECH_SISTEMA: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 133
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object grid_materialesUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
      end
      object page_asig_insumos: TSCLTabSheet
        Color = 16578290
        ImageIndex = 1
        Caption = 'page_asig_insumos'
        object grid_insumos: TdxDBGrid
          Left = 0
          Top = 0
          Width = 955
          Height = 216
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_REFE_INSUMO'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = pop_grid
          TabOrder = 0
          OnDblClick = grid_insumosDblClick
          DataSource = data_asignacion
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoExtMultiSelect, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
          object grid_insumosCONS_REFE_INSUMO: TdxDBGridColumn
            Caption = 'Cons.'
            DisableCustomizing = True
            HeaderAlignment = taCenter
            Width = 35
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_INSUMO'
          end
          object grid_insumosCONS_REFE_VARIACION: TdxDBGridColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 126
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_VARIACION'
          end
          object grid_insumosCONS_INSU_GRUPO: TdxDBGridColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 101
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_INSU_GRUPO'
          end
          object grid_insumosNOMB_INSU_GRUPO: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_INSU_GRUPO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object grid_insumosCONS_INSU_SUBGRUPO: TdxDBGridColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 358
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_INSU_SUBGRUPO'
          end
          object grid_insumosNOMB_INSU_SUBGRUPO: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_INSU_SUBGRUPO'
          end
          object grid_insumosES_FABRICACION: TdxDBGridColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ES_FABRICACION'
          end
          object grid_insumosCONS_INSU_REFERENCIA: TdxDBGridColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 131
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_INSU_REFERENCIA'
          end
          object grid_insumosCODI_INSU_REFERENCIA: TdxDBGridColumn
            Color = clBtnFace
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_INSU_REFERENCIA'
          end
          object grid_insumosNOMB_INSU_REFERENCIA: TdxDBGridColumn
            Color = clBtnFace
            HeaderAlignment = taCenter
            Width = 151
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_INSU_REFERENCIA'
          end
          object grid_insumosCONS_TERCERO: TdxDBGridColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TERCERO'
          end
          object grid_insumosNOMB_PROVEEDOR: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 119
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PROVEEDOR'
          end
          object grid_insumosFABR_CONSUMO: TdxDBGridColumn
            Color = clBtnFace
            HeaderAlignment = taCenter
            Width = 86
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONSUMO'
          end
          object grid_insumosCODI_UNID_MEDIDA: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_UNID_MEDIDA'
          end
          object grid_insumosCOST_ESTIMADO: TdxDBGridColumn
            Caption = 'Costo'
            HeaderAlignment = taCenter
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COST_ESTIMADO'
          end
          object grid_insumosSIMB_MONEDA: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SIMB_MONEDA'
          end
          object grid_insumosCOMBINACION: TdxDBGridCheckColumn
            Caption = 'C'
            HeaderAlignment = taCenter
            Width = 17
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COMBINACION'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object grid_insumosTALLAJE: TdxDBGridCheckColumn
            Caption = 'T'
            HeaderAlignment = taCenter
            Width = 17
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TALLAJE'
            ValueChecked = '1'
            ValueUnchecked = '-1'
          end
          object grid_insumosTALLA: TdxDBGridColumn
            Caption = 'Talla'
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TALL_PROMEDIO'
          end
          object grid_insumosOBSERVACIONES: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 202
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
          end
          object grid_insumosFECH_SISTEMA: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object grid_insumosUSUA_SISTEMA: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
      end
      object page_asig_colores: TSCLTabSheet
        Color = 16578290
        ImageIndex = 2
        Caption = 'C'
        OnShow = page_asig_coloresShow
        object pane_falt_colores: TAdvPanel
          Left = 0
          Top = 0
          Width = 786
          Height = 23
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UseDockManager = True
          Version = '1.6.0.3'
          AutoHideChildren = False
          BorderColor = clGray
          BorderShadow = True
          Caption.Color = clHighlight
          Caption.ColorTo = clBlue
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Verdana'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          Caption.Indent = 2
          CollapsColor = clBtnFace
          CollapsDelay = 0
          ColorTo = 14938354
          HoverFontColor = clWhite
          Indent = 5
          PictureContainer = padr_pict_container
          ShadowColor = clWhite
          ShadowOffset = 0
          StatusBar.BorderColor = clGray
          StatusBar.BorderStyle = bsSingle
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          StatusBar.Color = 14938354
          StatusBar.ColorTo = clWhite
          Styler = padr_esti_sugerencias
          Text = 
            '<IMG src="1"> La referencia no tiene colores asignados. De <A hr' +
            'ef="c">click aquí</A> para ir al maestro de referencias.'
          TopIndent = 2
          URLColor = clBlack
          OnAnchorClick = pane_falt_coloresAnchorClick
          FullHeight = 0
        end
        object pane_asig_colores: TPanel
          Left = 0
          Top = 23
          Width = 786
          Height = 216
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object dfsSplitter1: TdfsSplitter
            Left = 193
            Top = 0
            Height = 216
            Cursor = crHSplit
            Align = alLeft
            MinSize = 1
            Maximized = False
            Minimized = False
            ButtonCursor = crDefault
          end
          inline fram_sele_color: Tffra_sele_color
            Width = 193
            Height = 216
            Align = alLeft
            inherited grid_colo_existentes: TdxDBGrid
              Width = 193
              Height = 216
              DragMode = dmAutomatic
              OnDblClick = fram_sele_colorgrid_colo_existentesDblClick
              OnEndDrag = fram_sele_colorgrid_colo_existentesEndDrag
              Filter.Criteria = {00000000}
            end
            inherited quer_colores: TQuery
              Filter = 'es_entrepierna=-1'
              Filtered = True
            end
          end
          object grid_asig_colores: TSCLColumnGrid
            Left = 203
            Top = 0
            Width = 583
            Height = 216
            Cursor = crDefault
            Align = alClient
            ColCount = 5
            Ctl3D = False
            DefaultColWidth = 100
            DefaultRowHeight = 19
            FixedColor = 15582631
            FixedCols = 4
            RowCount = 5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
            ParentCtl3D = False
            ParentFont = False
            PopupMenu = pop_grid_2
            ScrollBars = ssBoth
            TabOrder = 1
            OnDragDrop = grid_asig_coloresDragDrop
            OnDragOver = grid_asig_coloresDragOver
            OnKeyDown = grid_asig_coloresKeyDown
            GridLineColor = 14467501
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = []
            EnhRowColMove = False
            OnCustomCellDraw = grid_asig_coloresCustomCellDraw
            OnGetAlignment = grid_asig_coloresGetAlignment
            ControlLook.ControlStyle = csClassic
            Flat = True
            SearchFooter.FindNextCaption = 'Find next'
            SearchFooter.FindPrevCaption = 'Find previous'
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurence'
            SearchFooter.HintFindPrev = 'Find previous occurence'
            SearchFooter.HintHighlight = 'Highlight occurences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SelectionColor = clHighlight
            SelectionTextColor = clHighlightText
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -11
            PrintSettings.Font.Name = 'MS Sans Serif'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -11
            PrintSettings.FixedFont.Name = 'MS Sans Serif'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -11
            PrintSettings.HeaderFont.Name = 'MS Sans Serif'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -11
            PrintSettings.FooterFont.Name = 'MS Sans Serif'
            PrintSettings.FooterFont.Style = []
            PrintSettings.Borders = pbNoborder
            PrintSettings.Centered = False
            PrintSettings.PageNumSep = '/'
            CellNode.ShowTree = False
            MouseActions.CaretPositioning = True
            MouseActions.ColSelect = True
            MouseActions.RowSelect = True
            MouseActions.SizeFixedCol = True
            ScrollWidth = 16
            FixedColWidth = 20
            FixedRowHeight = 19
            FixedRowAlways = True
            FixedColAlways = True
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = []
            FloatFormat = '%.2f'
            WordWrap = False
            ColumnHeaders.Strings = (
              'T'
              ''
              'Consumo'
              'Código'
              'Referencia')
            Filter = <>
            Version = '3.0.0.10'
            Columns = <
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taLeftJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'T'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridTIPO_MATERIAL'
                Password = False
                PrintBorders = []
                PrintColor = clWhite
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                ReadOnly = False
                ShowBands = False
                SortStyle = ssAutomatic
                SpinMax = 0
                SpinMin = 0
                SpinStep = 1
                Tag = 0
                Width = 20
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taLeftJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridCONS_REFERENCIA'
                Password = False
                PrintBorders = []
                PrintColor = clWhite
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                ReadOnly = False
                ShowBands = False
                SortStyle = ssAutomatic
                SpinMax = 0
                SpinMin = 0
                SpinStep = 1
                Tag = 0
                Width = 0
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'Consumo'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridCONSUMO'
                Password = False
                PrintBorders = []
                PrintColor = clWhite
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                ReadOnly = False
                ShowBands = False
                SortStyle = ssAutomatic
                SpinMax = 0
                SpinMin = 0
                SpinStep = 1
                Tag = 0
                Width = 73
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taLeftJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'Código'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridCODI_REFERENCIA'
                Password = False
                PrintBorders = []
                PrintColor = clWhite
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                ReadOnly = False
                ShowBands = False
                SortStyle = ssAutomatic
                SpinMax = 0
                SpinMin = 0
                SpinStep = 1
                Tag = 0
                Width = 57
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taLeftJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'Referencia'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridNOMB_REFERENCIA'
                Password = False
                PrintBorders = []
                PrintColor = clWhite
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                ReadOnly = False
                ShowBands = False
                SortStyle = ssAutomatic
                SpinMax = 0
                SpinMin = 0
                SpinStep = 1
                Tag = 0
                Width = 200
              end>
            FilterDropDown.Color = clWindow
            FilterDropDown.ColumnWidth = False
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'MS Sans Serif'
            FilterDropDown.Font.Style = []
            FilterDropDown.Height = 200
            FilterDropDown.Width = 200
            ActiveCellPaintSCL = False
            ColWidths = (
              20
              0
              73
              57
              200)
          end
        end
      end
      object page_asig_tallas: TSCLTabSheet
        Color = 16578290
        Caption = 'T'
        OnShow = page_asig_tallasShow
        object grid_asig_tallas: TSCLColumnGrid
          Left = 0
          Top = 21
          Width = 786
          Height = 218
          Cursor = crDefault
          Align = alClient
          ColCount = 4
          Ctl3D = False
          DefaultColWidth = 45
          DefaultRowHeight = 19
          FixedColor = 15582631
          FixedCols = 3
          RowCount = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = pop_grid_2
          ScrollBars = ssBoth
          TabOrder = 0
          OnKeyDown = grid_asig_coloresKeyDown
          GridLineColor = 14467501
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = []
          EnhRowColMove = False
          OnCustomCellDraw = grid_asig_coloresCustomCellDraw
          OnGetAlignment = grid_asig_coloresGetAlignment
          ControlLook.ControlStyle = csClassic
          Flat = True
          SearchFooter.FindNextCaption = 'Find next'
          SearchFooter.FindPrevCaption = 'Find previous'
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SelectionColor = clHighlight
          SelectionTextColor = clHighlightText
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.Borders = pbNoborder
          PrintSettings.Centered = False
          PrintSettings.PageNumSep = '/'
          CellNode.ShowTree = False
          MouseActions.CaretPositioning = True
          MouseActions.ColSelect = True
          MouseActions.RowSelect = True
          MouseActions.SizeFixedCol = True
          ScrollWidth = 16
          FixedColWidth = 20
          FixedRowHeight = 19
          FixedRowAlways = True
          FixedColAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          WordWrap = False
          ColumnHeaders.Strings = (
            'T'
            ''
            'Código'
            'Referencia')
          Filter = <>
          Version = '3.0.0.10'
          Columns = <
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'T'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIPO_MATERIAL'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 20
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridCONS_REFERENCIA'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 0
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Código'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridCODI_REFERENCIA'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 73
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Referencia'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridNOMB_REFERENCIA'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 200
            end>
          FilterDropDown.Color = clWindow
          FilterDropDown.ColumnWidth = False
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'MS Sans Serif'
          FilterDropDown.Font.Style = []
          FilterDropDown.Height = 200
          FilterDropDown.Width = 200
          ActiveCellPaintSCL = False
          ColWidths = (
            20
            0
            73
            200)
        end
        inline pane_falt_tallas: Tffra_mens_atencion
          Width = 786
          Height = 21
          TabOrder = 1
          inherited padr_shap_top: TShape
            Width = 786
          end
          inherited padr_shap_bottom: TShape
            Top = 20
            Width = 786
          end
          inherited padr_shap_right: TShape
            Left = 785
            Height = 19
          end
          inherited padr_shap_left: TShape
            Height = 19
          end
          inherited fram_label: TAdvPanel
            Width = 784
            Height = 19
            Text = 
              '<IMG src="3"> No se encontraron tallas válidas para la asignació' +
              'n. De <A href="c">click aquí</A> para ir al maestro de referenci' +
              'as.'
            OnAnchorClick = pane_falt_coloresAnchorClick
            FullHeight = 18
          end
        end
      end
      object page_asig_historial: TSCLTabSheet
        Color = 16578290
        Caption = 'page_asig_historial'
        inline fram_historial: Tffra_historialDB
          Width = 786
          Height = 239
          Align = alClient
          inherited fram_pane: TPanel
            Width = 786
            Height = 239
            inherited fram_grid_historial: TdxDBGrid
              Width = 955
              Height = 190
              Filter.Criteria = {00000000}
            end
            inherited TBXDock1: TTBXDock
              Width = 955
              inherited TBXToolbar1: TTBXToolbar
                Images = _fMDI.imag_pequenas
              end
            end
          end
          inherited data_historial: TDataSource
            DataSet = tabl_historial
          end
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel [9]
    Top = 558
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel [10]
    Width = 804
  end
  inherited padr_estilo: TdxEditStyleController [11]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [12]
  end
  inherited padr_esti_panel: TAdvPanelStyler [13]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [14]
  end
  inherited imag_pequenas: TImageList [15]
  end
  inherited padr_quer_consecutivo: TQuery [16]
  end
  inherited padr_imag_tem1_colo: TImageList [17]
  end
  inherited data_ventana: TDataSource [18]
    DataSet = myTabla_Ventana
  end
  inherited padr_acciones: TActionList [19]
    inherited padr_acti_imprimir: TAction
      Enabled = True
      Visible = True
      OnExecute = padr_acti_imprimirExecute
      OnUpdate = padr_acti_imprimirUpdate
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = True
      Visible = True
    end
  end
  inherited Variables: TSCLPropiedadesForm [20]
  end
  inherited Imagenes_Botones_Pequenos: TImageList [21]
  end
  inherited Tabla_Ventana: TTable [22]
  end
  object acti_ventana: TActionList
    Images = imag_pequenas
    OnUpdate = acti_ventanaUpdate
    Left = 642
    Top = 10
    object Acti_nuevo: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Nuevo'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = acti_nuevoExecute
      DataSource = data_asignacion
    end
    object acti_modificar: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Modificar'
      ImageIndex = 1
      ShortCut = 16461
      OnExecute = acti_nuevoExecute
      DataSource = data_asignacion
    end
    object acti_eliminar: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Eliminar'
      ImageIndex = 2
      ShortCut = 16453
      OnExecute = acti_eliminarExecute
      DataSource = data_asignacion
    end
    object acti_actualizar: TDataSetRefresh
      Category = 'Dataset'
      Caption = 'Actualizar'
      ImageIndex = 4
      ShortCut = 116
      DataSource = data_asignacion
    end
    object acti_guardar: TAction
      Category = 'Grids'
      Caption = 'Guardar'
      ImageIndex = 5
      ShortCut = 16455
      OnExecute = acti_guardarExecute
    end
    object acti_cancelar: TAction
      Category = 'Grids'
      Caption = 'Cancelar'
      ImageIndex = 8
      ShortCut = 16449
      OnExecute = acti_cancelarExecute
    end
    object acti_limpiar: TAction
      Category = 'Grids'
      Caption = 'Limpiar selección'
      ShortCut = 16460
      OnExecute = acti_limpiarExecute
    end
    object acti_importar: TAction
      Category = 'Importar'
      Caption = '&Importar...'
      Enabled = False
      Hint = 'Importar desde otra referencia'
      OnExecute = acti_importarExecute
    end
    object acti_grid_movi_filas: TAction
      Category = 'Grids'
      Caption = 'Movimiento por filas'
      OnExecute = doSeleccionarTipoMovimiento
    end
    object acti_grid_movi_columnas: TAction
      Category = 'Grids'
      Caption = 'Movimiento por columnas'
      Checked = True
      OnExecute = doSeleccionarTipoMovimiento
    end
    object acti_grid_movi_ninguno: TAction
      Category = 'Grids'
      Caption = 'Sin movimiento automático'
      OnExecute = doSeleccionarTipoMovimiento
    end
    object acti_impr_comb_colores: TAction
      Category = 'Imprimir'
      Caption = 'Combinación de colores'
      OnExecute = acti_impr_comb_coloresExecute
      OnUpdate = acti_impr_comb_coloresUpdate
    end
    object acti_trasladar: TAction
      Caption = 'Trasladar'
      ShortCut = 16468
      OnExecute = acti_trasladarExecute
    end
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_referencia'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cons_refe_variacion'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    Left = 218
    Top = 3
    object myTabla_Ventanacons_referencia: TIntegerField
      FieldName = 'cons_referencia'
      Required = True
      OnChange = myTabla_Ventanacons_referenciaChange
    end
    object myTabla_Ventanacons_refe_variacion: TIntegerField
      FieldName = 'cons_refe_variacion'
      Required = True
    end
    object myTabla_Ventanacodig_referencia: TStringField
      FieldKind = fkLookup
      FieldName = 'codi_referencia'
      LookupDataSet = fram_sele_referencia.quer_referencias
      LookupKeyFields = 'CONS_REFERENCIA'
      LookupResultField = 'CODI_REFERENCIA'
      KeyFields = 'cons_referencia'
      Size = 12
      Lookup = True
    end
    object myTabla_Ventananomb_referencia: TStringField
      FieldKind = fkLookup
      FieldName = 'nomb_referencia'
      LookupDataSet = fram_sele_referencia.quer_referencias
      LookupKeyFields = 'CONS_REFERENCIA'
      LookupResultField = 'NOMB_REFE_TEMPORADA'
      KeyFields = 'cons_referencia'
      Size = 60
      Lookup = True
    end
    object myTabla_Ventananomb_refe_variacion: TStringField
      FieldKind = fkLookup
      FieldName = 'nomb_refe_variacion'
      LookupDataSet = fram_sele_referencia.quer_refe_variaciones
      LookupKeyFields = 'CONS_REFE_VARIACION'
      LookupResultField = 'NOMB_REFE_TIPO_VARIACION'
      KeyFields = 'cons_refe_variacion'
      Size = 60
      Lookup = True
    end
  end
  object pop_grid: TTBXPopupMenu
    Images = _fMDI.imag_pequenas
    Left = 832
    Top = 416
    object TBXItem5: TTBXItem
      Action = Acti_nuevo
      DisplayMode = nbdmImageAndText
    end
    object TBXItem6: TTBXItem
      Action = acti_modificar
      DisplayMode = nbdmImageAndText
    end
    object TBXItem7: TTBXItem
      Action = acti_eliminar
      DisplayMode = nbdmImageAndText
    end
    object TBXSeparatorItem2: TTBXSeparatorItem
    end
    object TBXItem8: TTBXItem
      Action = acti_actualizar
      DisplayMode = nbdmImageAndText
    end
    object TBXSeparatorItem8: TTBXSeparatorItem
    end
    object TBXItem20: TTBXItem
      Action = acti_trasladar
    end
  end
  object data_asignacion: TDataSource
    AutoEdit = False
    DataSet = tabl_mate_1
    Left = 290
    Top = 157
  end
  object tabl_mate_1: TTable
    Tag = 1
    AfterInsert = tabl_mate_1AfterInsert
    BeforePost = tabl_mate_1BeforePost
    DatabaseName = 'data_base_pcp'
    Filter = 'ES_PRINCIPAL=1'
    Filtered = True
    IndexFieldNames = 'CONS_REFE_VARIACION;ES_PRINCIPAL;CONS_REFE_MATERIAL'
    MasterFields = 'cons_refe_variacion'
    MasterSource = data_ventana
    TableName = 'PCP_REFE_MATERIALES'
    Left = 26
    Top = 397
    object tabl_mate_1CONS_REFE_MATERIAL: TIntegerField
      FieldName = 'CONS_REFE_MATERIAL'
      Required = True
    end
    object tabl_mate_1CONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Required = True
    end
    object tabl_mate_1CONS_MATE_REFERENCIA: TIntegerField
      FieldName = 'CONS_MATE_REFERENCIA'
      Required = True
    end
    object tabl_mate_1CONS_MATE_GRUPO: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_MATE_GRUPO'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'CONS_MATE_GRUPO'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Lookup = True
    end
    object tabl_mate_1NOMB_MATE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldKind = fkLookup
      FieldName = 'NOMB_MATE_GRUPO'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'NOMB_MATE_GRUPO'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 60
      Lookup = True
    end
    object tabl_mate_1CONS_MATE_SUBGRUPO: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_MATE_SUBGRUPO'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'CONS_MATE_SUBGRUPO'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Lookup = True
    end
    object tabl_mate_1NOMB_MATE_SUBGRUPO: TStringField
      DisplayLabel = 'Subgrupo'
      FieldKind = fkLookup
      FieldName = 'NOMB_MATE_SUBGRUPO'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'NOMB_MATE_SUBGRUPO'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 60
      Lookup = True
    end
    object tabl_mate_1CODI_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Cód. material'
      FieldKind = fkLookup
      FieldName = 'CODI_MATE_REFERENCIA'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'CODI_MATE_REFERENCIA'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object tabl_mate_1NOMB_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Referencia material'
      FieldKind = fkLookup
      FieldName = 'NOMB_MATE_REFERENCIA'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'NOMB_MATE_REFERENCIA'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 60
      Lookup = True
    end
    object tabl_mate_1ES_PRINCIPAL: TIntegerField
      FieldName = 'ES_PRINCIPAL'
    end
    object tabl_mate_1CONS_TERCERO: TIntegerField
      FieldName = 'CONS_TERCERO'
    end
    object tabl_mate_1NOMB_TERCERO: TStringField
      DisplayLabel = 'Proveedor'
      FieldKind = fkLookup
      FieldName = 'NOMB_TERCERO'
      LookupDataSet = quer_terceros
      LookupKeyFields = 'CONS_TERCERO'
      LookupResultField = 'NOMB_TERCERO'
      KeyFields = 'CONS_TERCERO'
      Size = 60
      Lookup = True
    end
    object tabl_mate_1TRAZ_CONSUMO: TFloatField
      DisplayLabel = 'Consumo unidad'
      DisplayWidth = 5
      FieldName = 'CONSUMO'
      DisplayFormat = ',0.00000'
      EditFormat = ',0.00000'
      Precision = 5
    end
    object tabl_mate_1TALL_PROMEDIO: TStringField
      DisplayLabel = 'Talla promedio'
      FieldName = 'TALL_PROMEDIO'
      Size = 12
    end
    object tabl_mate_1OBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object tabl_mate_1FECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_mate_1USUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
    object tabl_mate_1CODI_UNID_MEDIDA: TStringField
      DisplayLabel = 'u/m'
      FieldKind = fkLookup
      FieldName = 'CODI_UNID_MEDIDA'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'CODI_UNID_MEDIDA'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object tabl_mate_1COST_ESTIMADO: TFloatField
      FieldName = 'COST_ESTIMADO'
      DisplayFormat = '$ ,0.00'
    end
    object tabl_mate_1COMBINACION: TIntegerField
      FieldName = 'COMBINACION'
    end
    object tabl_mate_1TALLAJE: TIntegerField
      FieldName = 'TALLAJE'
    end
    object tabl_mate_1CONS_MONEDA: TIntegerField
      FieldName = 'CONS_MONEDA'
    end
    object tabl_mate_1SIMB_MONEDA: TStringField
      DisplayLabel = 'Moneda'
      FieldKind = fkLookup
      FieldName = 'SIMB_MONEDA'
      LookupDataSet = quer_monedas
      LookupKeyFields = 'CONS_MONEDA'
      LookupResultField = 'SIMB_MONEDA'
      KeyFields = 'CONS_MONEDA'
      Size = 12
      Lookup = True
    end
    object tabl_mate_1ES_MATE_BASICO: TIntegerField
      DisplayLabel = 'Básico'
      FieldName = 'ES_MATE_BASICO'
    end
  end
  object quer_mate_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select *'
      'from vis_pcp_mate_referencias'
      'order by cons_mate_referencia')
    Left = 28
    Top = 362
    object quer_mate_referenciasCONS_MATE_REFERENCIA: TIntegerField
      FieldName = 'CONS_MATE_REFERENCIA'
    end
    object quer_mate_referenciasCODI_MATE_REFERENCIA: TStringField
      FieldName = 'CODI_MATE_REFERENCIA'
      Size = 12
    end
    object quer_mate_referenciasNOMB_MATE_REFERENCIA: TStringField
      FieldName = 'NOMB_MATE_REFERENCIA'
      Size = 60
    end
    object quer_mate_referenciasNOMB_MATE_GRUPO: TStringField
      FieldName = 'NOMB_MATE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.NOMB_MATE_GRUPO'
      Size = 60
    end
    object quer_mate_referenciasNOMB_MATE_SUBGRUPO: TStringField
      FieldName = 'NOMB_MATE_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.NOMB_MATE_SUBGRUPO'
      Size = 60
    end
    object quer_mate_referenciasCODI_UNID_MEDIDA: TStringField
      FieldName = 'CODI_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.CODI_UNID_MEDIDA'
      Size = 12
    end
    object quer_mate_referenciasCONS_MATE_GRUPO: TIntegerField
      FieldName = 'CONS_MATE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.CONS_MATE_GRUPO'
    end
    object quer_mate_referenciasCONS_MATE_SUBGRUPO: TIntegerField
      FieldName = 'CONS_MATE_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.CONS_MATE_SUBGRUPO'
    end
  end
  object quer_terceros: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_tercero, codi_tercero, nomb_tercero'
      'from glo_terceros'
      'order by cons_tercero')
    Left = 567
    Top = 432
    object quer_tercerosCONS_TERCERO: TIntegerField
      FieldName = 'CONS_TERCERO'
    end
    object quer_tercerosNOMB_TERCERO: TStringField
      FieldName = 'NOMB_TERCERO'
      Size = 120
    end
    object quer_tercerosCODI_TERCERO: TStringField
      FieldName = 'CODI_TERCERO'
      Size = 12
    end
  end
  object quer_mate_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_mate_grupo, codi_mate_grupo, nomb_mate_grupo'
      'from pcp_mate_grupos'
      'order by nomb_mate_grupo')
    Left = 26
    Top = 437
    object quer_mate_gruposCONS_MATE_GRUPO: TIntegerField
      FieldName = 'CONS_MATE_GRUPO'
    end
    object quer_mate_gruposNOMB_MATE_GRUPO: TStringField
      FieldName = 'NOMB_MATE_GRUPO'
      Size = 60
    end
    object quer_mate_gruposCODI_MATE_GRUPO: TStringField
      FieldName = 'CODI_MATE_GRUPO'
      Size = 12
    end
  end
  object quer_mate_subgrupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_mate_grupo, cons_mate_subgrupo, '
      'codi_mate_subgrupo, nomb_mate_subgrupo'
      'from pcp_mate_subgrupos'
      'where cons_mate_grupo = :cons_mate_grupo'
      'order by nomb_mate_subgrupo')
    Left = 54
    Top = 438
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_mate_grupo'
        ParamType = ptInput
      end>
    object quer_mate_subgruposCONS_MATE_GRUPO: TIntegerField
      FieldName = 'CONS_MATE_GRUPO'
    end
    object quer_mate_subgruposCONS_MATE_SUBGRUPO: TIntegerField
      FieldName = 'CONS_MATE_SUBGRUPO'
    end
    object quer_mate_subgruposNOMB_MATE_SUBGRUPO: TStringField
      FieldName = 'NOMB_MATE_SUBGRUPO'
      Size = 60
    end
    object quer_mate_subgruposCODI_MATE_SUBGRUPO: TStringField
      FieldName = 'CODI_MATE_SUBGRUPO'
      Size = 12
    end
  end
  object quer_grup_tallas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = fram_sele_referencia.data_referencias
    SQL.Strings = (
      
        'Select cons_grup_tall_detalle, secu_talla, talla from glo_grup_t' +
        'all_detalle'
      'Where cons_grup_tallas = :cons_refe_grup_tallas'
      'order by secu_talla')
    Left = 538
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_GRUP_TALLAS'
        ParamType = ptInput
      end>
    object quer_grup_tallasCONS_GRUP_TALL_DETALLE: TIntegerField
      FieldName = 'CONS_GRUP_TALL_DETALLE'
    end
    object quer_grup_tallasSECU_TALLA: TIntegerField
      FieldName = 'SECU_TALLA'
    end
    object quer_grup_tallasTALLA: TStringField
      FieldName = 'TALLA'
      Size = 12
    end
  end
  object quer_mate_referencias2: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_mate_referencia, codi_mate_referencia,'
      'nomb_mate_referencia, nomb_unid_medida'
      'from vis_pcp_mate_referencias'
      'where cons_mate_grupo = :cons_mate_grupo'
      'and cons_mate_subgrupo = :cons_mate_subgrupo'
      'order by nomb_mate_referencia')
    Left = 82
    Top = 438
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_mate_grupo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_mate_subgrupo'
        ParamType = ptInput
      end>
    object quer_mate_referencias2CONS_MATE_REFERENCIA: TIntegerField
      FieldName = 'CONS_MATE_REFERENCIA'
    end
    object quer_mate_referencias2NOMB_MATE_REFERENCIA: TStringField
      FieldName = 'NOMB_MATE_REFERENCIA'
      Size = 60
    end
    object quer_mate_referencias2NOMB_UNID_MEDIDA: TStringField
      FieldName = 'NOMB_UNID_MEDIDA'
      Size = 60
    end
    object quer_mate_referencias2CODI_MATE_REFERENCIA: TStringField
      FieldName = 'CODI_MATE_REFERENCIA'
      Size = 12
    end
  end
  object tabl_mate_2: TTable
    Tag = 2
    AfterInsert = tabl_mate_1AfterInsert
    BeforePost = tabl_mate_2BeforePost
    DatabaseName = 'data_base_pcp'
    Filter = 'ES_PRINCIPAL=-1'
    Filtered = True
    IndexFieldNames = 'CONS_REFE_VARIACION;ES_PRINCIPAL;CONS_REFE_MATERIAL'
    MasterFields = 'cons_refe_variacion'
    MasterSource = data_ventana
    TableName = 'PCP_REFE_MATERIALES'
    Left = 54
    Top = 397
    object IntegerField1: TIntegerField
      FieldName = 'CONS_REFE_MATERIAL'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'CONS_MATE_REFERENCIA'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_MATE_GRUPO'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'CONS_MATE_GRUPO'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Lookup = True
    end
    object StringField1: TStringField
      DisplayLabel = 'Grupo'
      FieldKind = fkLookup
      FieldName = 'NOMB_MATE_GRUPO'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'NOMB_MATE_GRUPO'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 60
      Lookup = True
    end
    object IntegerField5: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_MATE_SUBGRUPO'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'CONS_MATE_SUBGRUPO'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Lookup = True
    end
    object StringField2: TStringField
      DisplayLabel = 'Subgrupo'
      FieldKind = fkLookup
      FieldName = 'NOMB_MATE_SUBGRUPO'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'NOMB_MATE_SUBGRUPO'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 60
      Lookup = True
    end
    object StringField3: TStringField
      DisplayLabel = 'Cód. material'
      FieldKind = fkLookup
      FieldName = 'CODI_MATE_REFERENCIA'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'CODI_MATE_REFERENCIA'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object StringField4: TStringField
      DisplayLabel = 'Referencia material'
      FieldKind = fkLookup
      FieldName = 'NOMB_MATE_REFERENCIA'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'NOMB_MATE_REFERENCIA'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 60
      Lookup = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'ES_PRINCIPAL'
    end
    object IntegerField7: TIntegerField
      FieldName = 'CONS_TERCERO'
    end
    object StringField5: TStringField
      DisplayLabel = 'Proveedor'
      FieldKind = fkLookup
      FieldName = 'NOMB_TERCERO'
      LookupDataSet = quer_terceros
      LookupKeyFields = 'CONS_TERCERO'
      LookupResultField = 'NOMB_TERCERO'
      KeyFields = 'CONS_TERCERO'
      Size = 60
      Lookup = True
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Consumo unidad'
      FieldName = 'CONSUMO'
      DisplayFormat = ',0.00000'
      EditFormat = ',0.00000'
    end
    object StringField6: TStringField
      DisplayLabel = 'Talla promedio'
      FieldName = 'TALL_PROMEDIO'
      Size = 12
    end
    object StringField7: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object StringField8: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
    object StringField9: TStringField
      DisplayLabel = 'u/m'
      FieldKind = fkLookup
      FieldName = 'CODI_UNID_MEDIDA'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'CODI_UNID_MEDIDA'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object tabl_mate_2COST_ESTIMADO: TFloatField
      FieldName = 'COST_ESTIMADO'
      DisplayFormat = '$ ,0.00'
    end
    object tabl_mate_2COMBINACION: TIntegerField
      FieldName = 'COMBINACION'
    end
    object tabl_mate_2TALLAJE: TIntegerField
      FieldName = 'TALLAJE'
    end
    object tabl_mate_2CONS_MONEDA: TIntegerField
      FieldName = 'CONS_MONEDA'
    end
    object tabl_mate_2SIMB_MONEDA: TStringField
      DisplayLabel = 'Moneda'
      FieldKind = fkLookup
      FieldName = 'SIMB_MONEDA'
      LookupDataSet = quer_monedas
      LookupKeyFields = 'CONS_MONEDA'
      LookupResultField = 'SIMB_MONEDA'
      KeyFields = 'CONS_MONEDA'
      Size = 12
      Lookup = True
    end
    object tabl_mate_2ES_MATE_BASICO: TIntegerField
      FieldName = 'ES_MATE_BASICO'
    end
  end
  object tabl_insu_1: TTable
    Tag = 3
    AfterInsert = tabl_insu_1AfterInsert
    BeforePost = tabl_insu_1BeforePost
    DatabaseName = 'data_base_pcp'
    Filter = 'ES_FABRICACION=1'
    Filtered = True
    IndexFieldNames = 'CONS_REFE_VARIACION;ES_FABRICACION;CONS_REFE_INSUMO'
    MasterFields = 'cons_refe_variacion'
    MasterSource = data_ventana
    TableName = 'PCP_REFE_INSUMOS'
    Left = 226
    Top = 405
    object tabl_insu_1CONS_REFE_INSUMO: TIntegerField
      FieldName = 'CONS_REFE_INSUMO'
      Required = True
    end
    object tabl_insu_1CONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Required = True
    end
    object tabl_insu_1CONS_INSU_GRUPO: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_INSU_GRUPO'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'CONS_INSU_GRUPO'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Lookup = True
    end
    object tabl_insu_1NOMB_INSU_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldKind = fkLookup
      FieldName = 'NOMB_INSU_GRUPO'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'NOMB_INSU_GRUPO'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object tabl_insu_1CONS_INSU_SUBGRUPO: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_INSU_SUBGRUPO'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'CONS_INSU_SUBGRUPO'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Lookup = True
    end
    object tabl_insu_1NOMB_INSU_SUBGRUPO: TStringField
      DisplayLabel = 'Subgrupo'
      FieldKind = fkLookup
      FieldName = 'NOMB_INSU_SUBGRUPO'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'NOMB_INSU_SUBGRUPO'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object tabl_insu_1ES_FABRICACION: TIntegerField
      FieldName = 'ES_FABRICACION'
    end
    object tabl_insu_1CONS_INSU_REFERENCIA: TIntegerField
      FieldName = 'CONS_INSU_REFERENCIA'
    end
    object tabl_insu_1CODI_INSU_REFERENCIA: TStringField
      DisplayLabel = 'Cod. insumo'
      FieldKind = fkLookup
      FieldName = 'CODI_INSU_REFERENCIA'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'CODI_INSU_REFERENCIA'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object tabl_insu_1NOMB_INSU_REFERENCIA: TStringField
      DisplayLabel = 'Referencia insumo'
      FieldKind = fkLookup
      FieldName = 'NOMB_INSU_REFERENCIA'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'NOMB_INSU_REFERENCIA'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Size = 60
      Lookup = True
    end
    object tabl_insu_1CONS_TERCERO: TIntegerField
      FieldName = 'CONS_TERCERO'
    end
    object tabl_insu_1NOMB_PROVEEDOR: TStringField
      DisplayLabel = 'Proveedor'
      FieldKind = fkLookup
      FieldName = 'NOMB_PROVEEDOR'
      LookupDataSet = quer_terceros
      LookupKeyFields = 'CONS_TERCERO'
      LookupResultField = 'NOMB_TERCERO'
      KeyFields = 'CONS_TERCERO'
      Size = 60
      Lookup = True
    end
    object tabl_insu_1FABR_CONSUMO: TFloatField
      DisplayLabel = 'Consumo'
      FieldName = 'CONSUMO'
      DisplayFormat = ',0.00000'
      EditFormat = ',0.00000'
    end
    object tabl_insu_1CODI_UNID_MEDIDA: TStringField
      DisplayLabel = 'u/m'
      FieldKind = fkLookup
      FieldName = 'CODI_UNID_MEDIDA'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'CODI_UNID_MEDIDA'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object tabl_insu_1OBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object tabl_insu_1FECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_insu_1USUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
    object tabl_insu_1COST_ESTIMADO: TFloatField
      FieldName = 'COST_ESTIMADO'
      DisplayFormat = '$ ,0.00'
    end
    object tabl_insu_1COMBINACION: TIntegerField
      FieldName = 'COMBINACION'
    end
    object tabl_insu_1TALLAJE: TIntegerField
      FieldName = 'TALLAJE'
    end
    object tabl_insu_1TALL_PROMEDIO: TStringField
      FieldName = 'TALL_PROMEDIO'
      Size = 12
    end
    object tabl_insu_1CONS_MONEDA: TIntegerField
      FieldName = 'CONS_MONEDA'
    end
    object tabl_insu_1SIMB_MONEDA: TStringField
      DisplayLabel = 'Moneda'
      FieldKind = fkLookup
      FieldName = 'SIMB_MONEDA'
      LookupDataSet = quer_monedas
      LookupKeyFields = 'CONS_MONEDA'
      LookupResultField = 'SIMB_MONEDA'
      KeyFields = 'CONS_MONEDA'
      Size = 12
      Lookup = True
    end
  end
  object quer_mate_insumos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from vis_pcp_insu_referencias'
      'order by cons_insu_referencia')
    Left = 226
    Top = 365
    object quer_mate_insumosCONS_INSU_REFERENCIA: TIntegerField
      FieldName = 'CONS_INSU_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.CONS_INSU_REFERENCIA'
    end
    object quer_mate_insumosCONS_INSU_GRUPO: TIntegerField
      FieldName = 'CONS_INSU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.CONS_INSU_GRUPO'
    end
    object quer_mate_insumosCODI_INSU_GRUPO: TStringField
      FieldName = 'CODI_INSU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.CODI_INSU_GRUPO'
      Size = 12
    end
    object quer_mate_insumosNOMB_INSU_GRUPO: TStringField
      FieldName = 'NOMB_INSU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.NOMB_INSU_GRUPO'
      Size = 60
    end
    object quer_mate_insumosCONS_INSU_SUBGRUPO: TIntegerField
      FieldName = 'CONS_INSU_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.CONS_INSU_SUBGRUPO'
    end
    object quer_mate_insumosCODI_INSU_SUBGRUPO: TStringField
      FieldName = 'CODI_INSU_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.CODI_INSU_SUBGRUPO'
      Size = 12
    end
    object quer_mate_insumosNOMB_INSU_SUBGRUPO: TStringField
      FieldName = 'NOMB_INSU_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.NOMB_INSU_SUBGRUPO'
      Size = 60
    end
    object quer_mate_insumosCODI_INSU_REFERENCIA: TStringField
      FieldName = 'CODI_INSU_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.CODI_INSU_REFERENCIA'
      Size = 12
    end
    object quer_mate_insumosNOMB_INSU_REFERENCIA: TStringField
      FieldName = 'NOMB_INSU_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.NOMB_INSU_REFERENCIA'
      Size = 60
    end
    object quer_mate_insumosOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.OBSERVACIONES'
      Size = 240
    end
    object quer_mate_insumosCONS_UNID_MEDIDA: TIntegerField
      FieldName = 'CONS_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.CONS_UNID_MEDIDA'
    end
    object quer_mate_insumosCODI_UNID_MEDIDA: TStringField
      FieldName = 'CODI_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.CODI_UNID_MEDIDA'
      Size = 12
    end
    object quer_mate_insumosNOMB_UNID_MEDIDA: TStringField
      FieldName = 'NOMB_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.NOMB_UNID_MEDIDA'
      Size = 60
    end
    object quer_mate_insumosFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.FECH_SISTEMA'
    end
    object quer_mate_insumosUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INSU_REFERENCIAS.USUA_SISTEMA'
    end
  end
  object quer_insu_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_insu_grupo, codi_insu_grupo, nomb_insu_grupo'
      'from pcp_insu_grupos'
      'order by nomb_insu_grupo'
      ' ')
    Left = 226
    Top = 437
    object quer_insu_gruposCONS_INSU_GRUPO: TIntegerField
      FieldName = 'CONS_INSU_GRUPO'
    end
    object quer_insu_gruposCODI_INSU_GRUPO: TStringField
      FieldName = 'CODI_INSU_GRUPO'
      Size = 12
    end
    object quer_insu_gruposNOMB_INSU_GRUPO: TStringField
      FieldName = 'NOMB_INSU_GRUPO'
      Size = 60
    end
  end
  object quer_insu_subgrupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_insu_grupo, cons_insu_subgrupo, '
      'codi_insu_subgrupo, nomb_insu_subgrupo'
      'from pcp_insu_subgrupos'
      'where cons_insu_grupo = :cons_insu_grupo'
      'order by nomb_insu_subgrupo'
      ' ')
    Left = 255
    Top = 437
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_insu_grupo'
        ParamType = ptInput
      end>
    object quer_insu_subgruposCONS_INSU_GRUPO: TIntegerField
      FieldName = 'CONS_INSU_GRUPO'
    end
    object quer_insu_subgruposCONS_INSU_SUBGRUPO: TIntegerField
      FieldName = 'CONS_INSU_SUBGRUPO'
    end
    object quer_insu_subgruposCODI_INSU_SUBGRUPO: TStringField
      FieldName = 'CODI_INSU_SUBGRUPO'
      Size = 12
    end
    object quer_insu_subgruposNOMB_INSU_SUBGRUPO: TStringField
      FieldName = 'NOMB_INSU_SUBGRUPO'
      Size = 60
    end
  end
  object quer_insu_referencias2: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_insu_referencia, codi_insu_referencia,'
      'nomb_insu_referencia, nomb_unid_medida'
      'from vis_pcp_insu_referencias'
      'where cons_insu_grupo = :cons_insu_grupo'
      'and cons_insu_subgrupo = :cons_insu_subgrupo'
      'order by nomb_insu_referencia'
      ' ')
    Left = 285
    Top = 437
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_insu_grupo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_insu_subgrupo'
        ParamType = ptInput
      end>
    object quer_insu_referencias2CONS_INSU_REFERENCIA: TIntegerField
      FieldName = 'CONS_INSU_REFERENCIA'
    end
    object quer_insu_referencias2CODI_INSU_REFERENCIA: TStringField
      FieldName = 'CODI_INSU_REFERENCIA'
      Size = 12
    end
    object quer_insu_referencias2NOMB_INSU_REFERENCIA: TStringField
      FieldName = 'NOMB_INSU_REFERENCIA'
      Size = 60
    end
    object quer_insu_referencias2NOMB_UNID_MEDIDA: TStringField
      FieldName = 'NOMB_UNID_MEDIDA'
      Size = 60
    end
  end
  object tabl_insu_2: TTable
    Tag = 4
    BeforePost = tabl_insu_2BeforePost
    DatabaseName = 'data_base_pcp'
    Filter = 'ES_FABRICACION=-1'
    Filtered = True
    IndexFieldNames = 'CONS_REFE_VARIACION;ES_FABRICACION;CONS_REFE_INSUMO'
    MasterFields = 'cons_refe_variacion'
    MasterSource = data_ventana
    TableName = 'PCP_REFE_INSUMOS'
    Left = 255
    Top = 405
    object IntegerField8: TIntegerField
      FieldName = 'CONS_REFE_INSUMO'
      Required = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Required = True
    end
    object IntegerField10: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_INSU_GRUPO'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'CONS_INSU_GRUPO'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Lookup = True
    end
    object StringField10: TStringField
      DisplayLabel = 'Grupo'
      FieldKind = fkLookup
      FieldName = 'NOMB_INSU_GRUPO'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'NOMB_INSU_GRUPO'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object StringField11: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_INSU_SUBGRUPO'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'CONS_INSU_SUBGRUPO'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Lookup = True
    end
    object StringField12: TStringField
      DisplayLabel = 'Subgrupo'
      FieldKind = fkLookup
      FieldName = 'NOMB_INSU_SUBGRUPO'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'NOMB_INSU_SUBGRUPO'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object IntegerField11: TIntegerField
      FieldName = 'ES_FABRICACION'
    end
    object IntegerField12: TIntegerField
      FieldName = 'CONS_INSU_REFERENCIA'
    end
    object StringField13: TStringField
      DisplayLabel = 'Cod. insumo'
      FieldKind = fkLookup
      FieldName = 'CODI_INSU_REFERENCIA'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'CODI_INSU_REFERENCIA'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object StringField14: TStringField
      DisplayLabel = 'Referencia insumo'
      FieldKind = fkLookup
      FieldName = 'NOMB_INSU_REFERENCIA'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'NOMB_INSU_REFERENCIA'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Size = 60
      Lookup = True
    end
    object IntegerField13: TIntegerField
      FieldName = 'CONS_TERCERO'
    end
    object StringField15: TStringField
      DisplayLabel = 'Proveedor'
      FieldKind = fkLookup
      FieldName = 'NOMB_PROVEEDOR'
      LookupDataSet = quer_terceros
      LookupKeyFields = 'CONS_TERCERO'
      LookupResultField = 'NOMB_TERCERO'
      KeyFields = 'CONS_TERCERO'
      Size = 60
      Lookup = True
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Consumo'
      FieldName = 'CONSUMO'
      DisplayFormat = ',0.00000'
      EditFormat = ',0.00000'
    end
    object StringField16: TStringField
      DisplayLabel = 'u/m'
      FieldKind = fkLookup
      FieldName = 'CODI_UNID_MEDIDA'
      LookupDataSet = quer_mate_insumos
      LookupKeyFields = 'CONS_INSU_REFERENCIA'
      LookupResultField = 'CODI_UNID_MEDIDA'
      KeyFields = 'CONS_INSU_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object StringField17: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object StringField18: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
    object tabl_insu_2COST_ESTIMADO: TFloatField
      FieldName = 'COST_ESTIMADO'
      DisplayFormat = '$ ,0.00'
    end
    object tabl_insu_2COMBINACION: TIntegerField
      FieldName = 'COMBINACION'
    end
    object tabl_insu_2TALLAJE: TIntegerField
      FieldName = 'TALLAJE'
    end
    object tabl_insu_2TALL_PROMEDIO: TStringField
      FieldName = 'TALL_PROMEDIO'
      Size = 12
    end
    object tabl_insu_2CONS_MONEDA: TIntegerField
      FieldName = 'CONS_MONEDA'
    end
    object tabl_insu_2SIMB_MONEDA: TStringField
      DisplayLabel = 'Moneda'
      FieldKind = fkLookup
      FieldName = 'SIMB_MONEDA'
      LookupDataSet = quer_monedas
      LookupKeyFields = 'CONS_MONEDA'
      LookupResultField = 'SIMB_MONEDA'
      KeyFields = 'CONS_MONEDA'
      Size = 12
      Lookup = True
    end
  end
  object quer_refe_colores: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select  cons_refe_color, secu_color, '
      'cons_color, nume_color'
      'from GLO_REFE_COLORES'
      'Where cons_referencia = :cons_referencia'
      'order by secu_color')
    Left = 374
    Top = 406
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_referencia'
        ParamType = ptUnknown
      end>
    object quer_refe_coloresCONS_REFE_COLOR: TIntegerField
      FieldName = 'CONS_REFE_COLOR'
    end
    object quer_refe_coloresSECU_COLOR: TIntegerField
      FieldName = 'SECU_COLOR'
    end
    object quer_refe_coloresCONS_COLOR: TIntegerField
      FieldName = 'CONS_COLOR'
    end
    object quer_refe_coloresNUME_COLOR: TStringField
      FieldName = 'NUME_COLOR'
      Size = 6
    end
    object quer_refe_coloresNOMB_COLOR: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMB_COLOR'
      LookupDataSet = fram_sele_color.quer_colores
      LookupKeyFields = 'CONS_COLOR'
      LookupResultField = 'NOMB_COLOR'
      KeyFields = 'CONS_COLOR'
      Size = 60
      Lookup = True
    end
    object quer_refe_coloresMUES_COLOR: TIntegerField
      FieldKind = fkLookup
      FieldName = 'MUES_COLOR'
      LookupDataSet = fram_sele_color.quer_colores
      LookupKeyFields = 'CONS_COLOR'
      LookupResultField = 'MUES_COLOR'
      KeyFields = 'CONS_COLOR'
      Lookup = True
    end
  end
  object imag_materiales: TImageList
    Left = 642
    Top = 99
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDE1D7FFFEA587FF000000FFFEC3
      AFFFFEC3AFFF000000FFFEA587FFFDE1D7FF000000FF000000FFC7ECF8FF55C7
      EDFF55C7EDFF55C7EDFF55C7EDFFC7ECF8FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FED2C3FFFE794CFFFEF0EBFFFE96
      74FFFE9674FFFEF0EBFFFE794CFFFED2C3FF000000FF000000FFAAE3F7FF00AC
      E5FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A0004040A000404
      0A0004040A0004040A0004040A0004040A0004040A0004040A0004040A000404
      0A0004040A0004040A000000000000000000FED2C3FFFE794CFFFED2C3FFFE79
      4CFFFE794CFFFED2C3FFFE794CFFFED2C3FF000000FF000000FFAAE3F7FF00AC
      E5FF000000FF000000FF000000FF000000FFB5A091FF755E49FF6E5740FF674F
      38FF624A32FF604830FF604830FF604830FF604830FF604830FF604830FF6048
      30FF604830FF604830FF604830FF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A0000F49B0000F4
      9B0000F49B0004040A00FBF54B00FBF54B00FBF54B0004040A00F75BF900F75B
      F900F75BF90004040A000000000000000000FED2C3FFFE794CFFFE794CFFFED2
      C3FFFED2C3FFFE794CFFFE794CFFFED2C3FF000000FF000000FFAAE3F7FF00AC
      E5FF000000FF000000FF000000FF000000FFB7A293FFEDDDD3FFECDACFFFE5CC
      BCFFE1C4B2FFDEBDA8FFDEBDA8FFDEBDA8FFDDBCA7FFDBB9A1FFDAB8A2FFDCB6
      9EFFDEB297FFE1AE91FFE2AF8FFF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A0000F49B0000F4
      9B0000F49B0004040A00FBF54B00FBF54B00FBF54B0004040A00F75BF900F75B
      F900F75BF90004040A000000000000000000FED2C3FFFE794CFFFE9674FFFEF0
      EBFFFEF0EBFFFE9674FFFE794CFFFED2C3FF000000FF000000FFAAE3F7FF00AC
      E5FF000000FF000000FF000000FF000000FFB9A596FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDFB295FF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A0000F49B0000F4
      9B0000F49B0004040A00FBF54B00FBF54B00FBF54B0004040A00F75BF900F75B
      F900F75BF90004040A000000000000000000FED2C3FFFE794CFFFEC3AFFF0000
      00FF000000FFFEC3AFFFFE794CFFFED2C3FF000000FF000000FFAAE3F7FF00AC
      E5FF000000FF000000FF000000FF000000FFBCA899FFFFFFFFFFCC493AFFBE15
      02FFBE1502FFBE1502FFBE1502FFBE1502FFBE1502FFBE1502FFBE1502FFBE15
      02FFE19891FFFFFFFFFFDCB49CFF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A0004040A000404
      0A0004040A0004040A0004040A0004040A0004040A0004040A0004040A000404
      0A0004040A0004040A000000000000000000FED2C3FFFE794CFF000000FF0000
      00FF000000FF000000FFFE794CFFFED2C3FF000000FF000000FFAAE3F7FF00AC
      E5FF000000FF000000FF000000FF000000FFC0AC9DFFFFFFFFFFFFFFFFFFFFFF
      FFFFC7C7C7FFAAAAAAFFE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD8B8A3FF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A0004AAB40004AA
      B40004AAB40004040A00B8F3F400B8F3F400B8F3F40004040A00C0C0C000C0C0
      C000C0C0C00004040A000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC3B0A1FFFFFFFFFFC7C7C7FF1D1D
      1DFF1D1D1DFF555555FF393939FF1D1D1DFFC7C7C7FFCC493AFFBE1502FFBE15
      02FFCC493AFFFFFFFFFFD6BEA8FF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A0004AAB40004AA
      B40004AAB40004040A00B8F3F400B8F3F400B8F3F40004040A00C0C0C000C0C0
      C000C0C0C00004040A000000000000000000000000FF5555FFFFC7C7FFFF0000
      00FF000000FFC7C7FFFF5555FFFF000000FF000000FF000000FFA1DC8EFF72CB
      55FF72CB55FFA1DC8EFF000000FF000000FFC7B4A5FFC7C7C7FF1D1D1DFFB691
      86FFFEBFAAFFFEC3AFFFFED3C4FFBBAEA9FF1D1D1DFFC7C7C7FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD4BFAEFF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A0004AAB40004AA
      B40004AAB40004040A00B8F3F400B8F3F400B8F3F40004040A00C0C0C000C0C0
      C000C0C0C00004040A000000000000000000000000FF3939FFFF7272FFFF0000
      00FF000000FF7272FFFF3939FFFF000000FF000000FFB8E5AAFF2CB200FF0000
      00FF000000FF2CB200FFB8E5AAFF000000FFCAB7A9FF1D1D1DFFB88675FFFEA9
      8DFFFEB79FFFFEC3AFFFFECEBEFFFED8CBFFBCB1ADFF1D1D1DFFCC493AFFBE15
      02FFCC493AFFFFFFFFFFD3C3B6FF604830FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A0004040A000404
      0A0004040A0004040A0004040A0004040A0004040A0004040A0004040A000404
      0A0004040A0004040A000000000000000000000000FFE3E3FFFF3939FFFF8E8E
      FFFF8E8EFFFF3939FFFFE3E3FFFF000000FF000000FFE7F6E3FFB8E5AAFF0000
      00FF000000FF2CB200FFB8E5AAFF000000FFB6A69AFF53433EFFFE9B7AFFFEA9
      8DFFFEB79FFFD5A595FFFECEBEFFFED8CBFFFEE4DBFF393939FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD1C4BFFF674F38FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A000B67FF000B67
      FF000B67FF0004040A0011FCFF0011FCFF0011FCFF0004040A00FD2F3E00FD2F
      3E00FD2F3E0004040A000000000000000000000000FF000000FF000000FF0000
      FFFF0000FFFF000000FF000000FF000000FF000000FF000000FFD0EEC7FF8AD4
      72FF5BC339FFA1DC8EFF000000FF000000FF8A7E75FF795A50FFFEB197FF3939
      39FF000000FF000000FFD3ADA0FFFED8CBFFFEE1D7FF555555FFCC493AFFBE15
      02FFE19891FFFFFFFFFFCFC7C5FF725B45FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A000B67FF000B67
      FF000B67FF0004040A0011FCFF0011FCFF0011FCFF0004040A00FD2F3E00FD2F
      3E00FD2F3E0004040A000000000000000000000000FF000000FF8E8EFFFF3939
      FFFF3939FFFF8E8EFFFF000000FF000000FF000000FFD0EEC7FF43BA1DFFB8E5
      AAFFE7F6E3FF000000FF000000FF000000FFA3958AFF322623FFFE9B7AFFFEC6
      B3FFFEDED4FF000000FFFECEBEFFFED8CBFFFEE4DBFF1D1D1DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFCFAFF7D6652FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A000B67FF000B67
      FF000B67FF0004040A0011FCFF0011FCFF0011FCFF0004040A00FD2F3E00FD2F
      3E00FD2F3E0004040A000000000000000000000000FF7272FFFF3939FFFF0000
      00FF000000FF3939FFFF7272FFFF000000FF000000FFB8E5AAFF2CB200FF0000
      00FF000000FF2CB200FFB8E5AAFF000000FFD2C0B2FF171514FFB0715AFFF49B
      7CFFE4AB93FF2D2825FFE8B09AFFE3B3A0FF9A8175FF151311FFBBA798FFB9A4
      95FFB7A293FFB5A091FFB5A091FFB5A091FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040A0004040A000404
      0A0004040A0004040A0004040A0004040A0004040A0004040A0004040A000404
      0A0004040A0004040A000000000000000000000000FF0000FFFFAAAAFFFF0000
      00FF000000FFAAAAFFFF0000FFFF000000FF000000FFE7F6E3FF5BC339FF72CB
      55FF72CB55FF5BC339FFE7F6E3FF000000FF000000FFC7C7C7FF1D1D1DFFB986
      75FFFEB79FFFFED0C1FFFECEBEFFB6A29AFF1D1D1DFFC7C7C7FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFC7C7C7FF1D1D
      1DFF302824FF76645EFF524946FF1D1D1DFFC7C7C7FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF021082FF0003
      80FF000380FF000380FF000380FF000380FF000380FF000380FF000380FF0003
      80FF021082FF000000FF000000FF000000FF000000FF000000FF006B46FF0076
      3EFF00763EFF00763EFF00763EFF00763EFF00763EFF00763EFF00763EFF0076
      3EFF006B46FF000000FF000000FF000000FF000000FF000000FF8C3C23FF7D24
      07FF7D2407FF7D2407FF7D2407FF7D2407FF7D2407FF7D2407FF7D2407FF7D24
      07FF8C3C23FF000000FF000000FF000000FF000000FF000000FF13759AFF037C
      A8FF037CA8FF037CA8FF037CA8FF037CA8FF037CA8FF037CA8FF037CA8FF037C
      A8FF13759AFF000000FF000000FF000000FF000000FF000000FF000380FF0001
      BCFF0001BCFF0001BCFF0001BCFF0001BCFF0001BCFF0001BCFF0001BCFF0001
      BCFF000380FF000000FF000000FF000000FF000000FF000000FF00763EFF00B5
      5BFF00B55BFF00B55BFF00B55BFF00B55BFF00B55BFF00B55BFF00B55BFF00B5
      5BFF00763EFF000000FF000000FF000000FF000000FF000000FF7D2407FFB72E
      02FFB72E02FFB72E02FFB72E02FFB72E02FFB72E02FFB72E02FFB72E02FFB72E
      02FF7D2407FF000000FF000000FF000000FF000000FF000000FF037CA8FF01AB
      E8FF01ABE8FF01ABE8FF01ABE8FF01ABE8FF01ABE8FF01ABE8FF01ABE8FF01AB
      E8FF037CA8FF000000FF000000FF000000FF000000FF000000FF000380FF0002
      BFFF0002BFFF0002BFFF0002BFFF0002BFFF0002BFFF0002BFFF0002BFFF0002
      BFFF000380FF000000FF000000FF000000FF000000FF000000FF00763EFF00B9
      5EFF00B95EFF00B95EFF00B95EFF00B95EFF00B95EFF00B95EFF00B95EFF00B9
      5EFF00763EFF000000FF000000FF000000FF000000FF000000FF7D2407FFBC31
      03FFBC3103FFBC3103FFBC3103FFBC3103FFBC3103FFBC3103FFBC3103FFBC31
      03FF7D2407FF000000FF000000FF000000FF000000FF000000FF037CA8FF02AD
      ECFF02ADECFF02ADECFF02ADECFF02ADECFF02ADECFF02ADECFF02ADECFF02AD
      ECFF037CA8FF000000FF000000FF000000FF000000FF000000FF000380FF0002
      C3FF0002C3FF0202C3FF0202C3FFC0C0F0FF0202C3FF0202C3FF0002C3FF0002
      C3FF000380FF000000FF000000FF000000FF000000FF000000FF00763EFF00BE
      60FF00BE60FFFFFFFFFF00BE60FF02C161FF00BE60FF00BE60FF00BE60FF00BE
      60FF00763EFF000000FF000000FF000000FF000000FF000000FF7D2407FFC132
      03FFC13203FFFFFFFFFFC13203FFC13203FFC13203FFC13203FFC13203FFC132
      03FF7D2407FF000000FF000000FF000000FF000000FF000000FF037CA8FF02B1
      F1FF02B1F1FFEFFAFEFFFDF9F8FFFDF9F8FFFDF9F8FFC0ECFCFF02B1F1FF02B1
      F1FF037CA8FF000000FF000000FF000000FF000000FF000000FF000380FF0002
      C6FF0002C6FF0404C6FF0002C6FFF8FCFEFF0002C6FF0002C6FF0002C6FF0002
      C6FF000380FF000000FF000000FF000000FF000000FF000000FF00763EFF00BD
      61FF00BD61FFFFFFFFFF00BD61FF03C162FF00BD61FF00BD61FF00BD61FF00BD
      61FF00763EFF000000FF000000FF000000FF000000FF000000FF7D2407FFC133
      04FFC13304FFFFFFFFFFC13304FFC13304FFC13304FFC13304FFC13304FFC133
      04FF7D2407FF000000FF000000FF000000FF000000FF000000FF037CA8FF03B1
      F1FF03B1F1FFFFFFFFFF03B1F1FF03B1F1FF03B1F1FF03B1F1FF03B1F1FF03B1
      F1FF037CA8FF000000FF000000FF000000FF000000FF000000FF000380FF0002
      C9FF0002C9FF0404C9FF0002C9FFF8FDFEFF0002C9FF0002C9FF0002C9FF0002
      C9FF000380FF000000FF000000FF000000FF000000FF000000FF00763EFF00C2
      64FF00C264FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00C264FF00C2
      64FF00763EFF000000FF000000FF000000FF000000FF000000FF7D2407FFC634
      04FFC63404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC63404FFC634
      04FF7D2407FF000000FF000000FF000000FF000000FF000000FF037CA8FF03B5
      F6FF03B5F6FFFFFFFFFF04B8F8FF04B8F8FF04B8F8FF04B8F8FF03B5F6FF03B5
      F6FF037CA8FF000000FF000000FF000000FF000000FF000000FF000380FF0002
      CDFF0002CDFF0404CDFF0303CDFFFEFEFEFF0303CDFF0303CDFF0002CDFF0002
      CDFF000380FF000000FF000000FF000000FF000000FF000000FF00763EFF00C8
      67FF00C867FFFFFFFFFF00C867FF03CC68FF00C867FF00C867FF00C867FF00C8
      67FF00763EFF000000FF000000FF000000FF000000FF000000FF7D2407FFD137
      04FFD13704FFFFFFFFFFD13704FFD13704FFD13704FFD13704FFD13704FFD137
      04FF7D2407FF000000FF000000FF000000FF000000FF000000FF037CA8FF03B9
      FBFF03B9FBFFFFFFFFFFC0EEFFFFFDF9F8FFFDF9F8FFC0EEFFFF03B9FBFF03B9
      FBFF037CA8FF000000FF000000FF000000FF000000FF000000FF000380FF0003
      D0FF0003D0FF0505D0FF0003D0FFF8FDFEFF0003D0FF0003D0FF0003D0FF0003
      D0FF000380FF000000FF000000FF000000FF000000FF000000FF00763EFF00C8
      68FF00C868FFFFFFFFFF00C868FF04CD69FF00C868FF00C868FF00C868FF00C8
      68FF00763EFF000000FF000000FF000000FF000000FF000000FF7D2407FFD137
      05FFD13705FFFFFFFFFFD13705FFD13705FFD13705FFD13705FFD13705FFD137
      05FF7D2407FF000000FF000000FF000000FF000000FF000000FF037CA8FF04B8
      FAFF04B8FAFFFFFFFFFF04B8FAFF04B8FAFF04B8FAFF04B8FAFF04B8FAFF04B8
      FAFF037CA8FF000000FF000000FF000000FF000000FF000000FF000380FF0003
      D4FF0003D4FFC0C0F4FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0F4FF0003D4FF0003
      D4FF000380FF000000FF000000FF000000FF000000FF000000FF00763EFF00CC
      69FF00CC69FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00CC69FF00CC
      69FF00763EFF000000FF000000FF000000FF000000FF000000FF7D2407FFD137
      05FFD13705FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD13705FFD137
      05FF7D2407FF000000FF000000FF000000FF000000FF000000FF037CA8FF08B9
      FAFF08B9FAFFEFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1EEFFFF08B9FAFF08B9
      FAFF037CA8FF000000FF000000FF000000FF000000FF000000FF000380FF0004
      D7FF0004D7FF0004D7FF0004D7FF0004D7FF0004D7FF0004D7FF0004D7FF0004
      D7FF000380FF000000FF000000FF000000FF000000FF000000FF00763EFF00D0
      6DFF00D06DFF00D06DFF00D06DFF00D06DFF00D06DFF00D06DFF00D06DFF00D0
      6DFF00763EFF000000FF000000FF000000FF000000FF000000FF7D2407FFD639
      06FFD63906FFD63906FFD63906FFD63906FFD63906FFD63906FFD63906FFD639
      06FF7D2407FF000000FF000000FF000000FF000000FF000000FF037CA8FF0EBA
      F9FF0EBAF9FF0EBAF9FF0EBAF9FF0EBAF9FF0EBAF9FF0EBAF9FF0EBAF9FF0EBA
      F9FF037CA8FF000000FF000000FF000000FF000000FF000000FF000380FF0004
      DAFF0004DAFF0004DAFF0004DAFF0004DAFF0004DAFF0004DAFF0004DAFF0417
      DAFF000380FF000000FF000000FF000000FF000000FF000000FF00763EFF00D0
      6DFF00D06DFF00D06DFF00D06DFF00D06DFF00D06DFF00D06DFF00D06DFF00BC
      79FF00763EFF000000FF000000FF000000FF000000FF000000FF7D2407FFD639
      06FFD63906FFD63906FFD63906FFD63906FFD63906FFD63906FFD63906FFDB4F
      22FF7D2407FF000000FF000000FF000000FF000000FF000000FF037CA8FF0EBA
      F9FF0EBAF9FF0EBAF9FF0EBAF9FF0EBAF9FF0EBAF9FF0EBAF9FF0EBAF9FF25AE
      E2FF037CA8FF000000FF000000FF000000FF000000FF000000FF021082FF0003
      80FF000380FF000380FF000380FF000380FF000380FF000380FF000380FF0003
      80FF021082FF000000FF000000FF000000FF000000FF000000FF006B46FF0076
      3EFF00763EFF00763EFF00763EFF00763EFF00763EFF00763EFF00763EFF0076
      3EFF006B46FF000000FF000000FF000000FF000000FF000000FF8C3C23FF7D24
      07FF7D2407FF7D2407FF7D2407FF7D2407FF7D2407FF7D2407FF7D2407FF7D24
      07FF8C3C23FF000000FF000000FF000000FF000000FF000000FF13759AFF037C
      A8FF037CA8FF037CA8FF037CA8FF037CA8FF037CA8FF037CA8FF037CA8FF037C
      A8FF13759AFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF24C0FFFF0000FFFF00CFFFFF0000
      800300CF00000000800300CF00000000800300CF00000000800318CF00000000
      80033CCF000000008003FFFF00000000800399C3000000008003999900000000
      80038199000000008003E7C3000000008003C387000000008003999900000000
      80039981803F0000FFFFFFFFC07F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C007C007C007C007C007C007C007C007C007C007C007C007C007C007C007C007
      C007C007C007C007C007C007C007C007C007C007C007C007C007C007C007C007
      C007C007C007C007C007C007C007C007C007C007C007C007C007C007C007C007
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object quer_refe_colo_eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure '
      'PRO_PCP_REFE_MATE_COLO_ELIM(:cons_refe_variacion)')
    Left = 310
    Top = 371
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end>
  end
  object quer_refe_colo_guardar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure'
      'PRO_PCP_REFE_MATE_COLO_INSE ('
      ':PE_TIPO_MATERIAL, :PE_CONS_REFE_MATERIAL,'
      ':PE_CONS_REFE_COLOR, :PE_CONS_COLO_COMBINADO,'
      ':PE_CONSUMO)')
    Left = 342
    Top = 371
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_TIPO_MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_REFE_MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_REFE_COLOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_COLO_COMBINADO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_CONSUMO'
        ParamType = ptInput
      end>
  end
  object quer_refe_colo_llamar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select *'
      'from con_pcp_refe_mate_colo_sele(:cons_refe_variacion)')
    Left = 374
    Top = 371
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end>
    object quer_refe_colo_llamarTIPO_MATERIAL: TIntegerField
      FieldName = 'TIPO_MATERIAL'
    end
    object quer_refe_colo_llamarCONS_REFE_MATERIAL: TIntegerField
      FieldName = 'CONS_REFE_MATERIAL'
    end
    object quer_refe_colo_llamarCONS_REFE_COLOR: TIntegerField
      FieldName = 'CONS_REFE_COLOR'
    end
    object quer_refe_colo_llamarCONS_COLO_COMBINADO: TIntegerField
      FieldName = 'CONS_COLO_COMBINADO'
    end
    object quer_refe_colo_llamarCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object quer_refe_colo_llamarNOMB_COLO_COMBINADO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMB_COLO_COMBINADO'
      LookupDataSet = fram_sele_color.quer_colores
      LookupKeyFields = 'CONS_COLOR'
      LookupResultField = 'NOMB_COLOR'
      KeyFields = 'CONS_COLO_COMBINADO'
      Size = 60
      Lookup = True
    end
  end
  object pop_grid_2: TTBXPopupMenu
    Left = 871
    Top = 420
    object TBXItem14: TTBXItem
      Action = acti_limpiar
      DisplayMode = nbdmImageAndText
      ImageIndex = 36
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem4: TTBXSeparatorItem
    end
    object TBXItem12: TTBXItem
      Action = acti_guardar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
    object TBXItem13: TTBXItem
      Action = acti_cancelar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
  end
  object DataSource1: TDataSource
    DataSet = quer_grup_tallas
    Left = 412
    Top = 300
  end
  object quer_refe_tall_eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure '
      'PRO_PCP_REFE_MATE_TALL_ELIM(:cons_refe_variacion)')
    Left = 542
    Top = 371
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end>
  end
  object quer_refe_tall_guardar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure'
      'PRO_PCP_REFE_MATE_TALL_INSE ('
      ':PE_TIPO_MATERIAL, :PE_CONS_REFE_MATERIAL,'
      ':PE_CONS_GRUP_TALL_DETALLE,  :PE_CONSUMO)')
    Left = 574
    Top = 371
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_TIPO_MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_REFE_MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_GRUP_TALL_DETALLE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_CONSUMO'
        ParamType = ptInput
      end>
  end
  object quer_refe_tall_llamar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select *'
      'from con_pcp_refe_mate_tall_sele(:cons_refe_variacion)')
    Left = 606
    Top = 371
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end>
    object quer_refe_tall_llamarTIPO_MATERIAL: TIntegerField
      FieldName = 'TIPO_MATERIAL'
    end
    object quer_refe_tall_llamarCONS_REFE_MATERIAL: TIntegerField
      FieldName = 'CONS_REFE_MATERIAL'
    end
    object quer_refe_tall_llamarCONS_GRUP_TALL_DETALLE: TIntegerField
      FieldName = 'CONS_GRUP_TALL_DETALLE'
    end
    object quer_refe_tall_llamarCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
  end
  object tabl_repo_tall_unidades: TTable
    DatabaseName = 'PCPLocal'
    TableName = 'tmp_bom_tall_unidades'
    Left = 671
    Top = 372
  end
  object tabl_repo_tallas: TTable
    DatabaseName = 'PCPLocal'
    TableName = 'tmp_bom_tallas'
    Left = 639
    Top = 372
  end
  object tabl_repo_colores: TTable
    DatabaseName = 'PCPLocal'
    TableName = 'tmp_bom_colores'
    Left = 639
    Top = 404
  end
  object tabl_repo_colo_unidades: TTable
    DatabaseName = 'PCPLocal'
    TableName = 'tmp_bom_colo_unidades'
    Left = 671
    Top = 404
  end
  object quer_tras_material: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure'
      'PRO_PCP_REFE_MATE_TRASLADAR'
      '(:CONS_REFE_MATERIAL)')
    Left = 520
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_MATERIAL'
        ParamType = ptInput
      end>
  end
  object quer_tras_insumo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Execute procedure'
      'PRO_PCP_REFE_INSU_TRASLADAR'
      '(:CONS_REFE_MATERIAL)')
    Left = 552
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_MATERIAL'
        ParamType = ptInput
      end>
  end
  object tabl_historial: TTable
    BeforePost = tabl_historialBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_REFE_VARIACION'
    MasterFields = 'cons_refe_variacion'
    MasterSource = data_ventana
    TableName = 'PCP_REFE_LIST_OPER_COST_HIST'
    Left = 24
    Top = 474
  end
  object quer_monedas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_moneda, simb_moneda'
      'from glo_monedas'
      'order by cons_moneda')
    Left = 602
    Top = 435
    object quer_monedasCONS_MONEDA: TIntegerField
      FieldName = 'CONS_MONEDA'
    end
    object quer_monedasSIMB_MONEDA: TStringField
      FieldName = 'SIMB_MONEDA'
      Size = 12
    end
  end
end

object _fvent_child: T_fvent_child
  Left = 14
  Top = 25
  Width = 800
  Height = 536
  Color = 16578290
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object padr_shap_xp_up: TShape
    Left = 0
    Top = 0
    Width = 792
    Height = 1
    Align = alTop
    Pen.Color = 9841920
    Visible = False
  end
  object padr_shap_xp_down: TShape
    Left = 0
    Top = 508
    Width = 792
    Height = 1
    Align = alBottom
    Pen.Color = 9841920
    Visible = False
  end
  object padr_pane_1: TPanel
    Left = 9
    Top = 33
    Width = 566
    Height = 466
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    Color = clWhite
    TabOrder = 0
    object padr_pagina: TdxPageControl
      Left = 5
      Top = 5
      Width = 556
      Height = 456
      ActivePage = fram_pagi_lista
      Align = alClient
      OnDockDrop = padr_paginaDockDrop
      HideButtons = False
      HotTrack = False
      Images = Imagenes16
      MultiLine = False
      OwnerDraw = False
      PopupMenu = pop_pagina
      RaggedRight = False
      ScrollOpposite = True
      TabHeight = 0
      TabOrder = 0
      TabPosition = dxtpTop
      TabStop = False
      TabWidth = 0
      OnChange = FormActivate
      object fram_pagi_lista: TdxTabSheet
        Caption = 'Lista (F2)'
        ImageIndex = 2
        OnEnter = FormActivate
        object padr_grid: TSCLDBGrid
          Left = 195
          Top = 52
          Width = 166
          Height = 380
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderMinRowCount = 2
          HeaderPanelRowCount = 1
          ShowGroupPanel = True
          ShowSummaryFooter = True
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <>
              Name = 'padr_summary_grid'
            end>
          SummarySeparator = ', '
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = padr_pop_grid
          TabOrder = 0
          OnDblClick = doGridDblClick
          OnKeyDown = padr_gridKeyDown
          OnMouseUp = padr_gridMouseUp
          ArrowsColor = clHighlight
          AutoSearchColor = 4227327
          AutoSearchTextColor = clBlack
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'Tahoma'
          BandFont.Style = []
          DataSource = data_ventana
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
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HideFocusRect = True
          IniSectionName = 'Columnas visibles'
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMouseScroll, edgoMultiSelect, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoResetColumnFocus, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'Tahoma'
          PreviewFont.Style = []
          ShowRowFooter = True
          OnChangeColumn = padr_gridChangeColumn
          OnHideHeader = padr_gridHideHeader
          OnFilterChanged = padr_gridFilterChanged
        end
        object padr_dock_arriba: TTBXDock
          Left = 0
          Top = 0
          Width = 556
          Height = 42
          Cursor = crHandPoint
          AllowDrag = False
          BackgroundOnToolbars = False
          Color = clWhite
          object padr_barra: TTBXToolbar
            Left = 0
            Top = 0
            BorderStyle = bsNone
            Caption = 'Barra Principal'
            ChevronHint = 'Más botones'
            DockMode = dmCannotFloatOrChangeDocks
            DockPos = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FullSize = True
            ItemTransparency = itEnable
            Options = [tboDefault, tboDropdownArrow, tboToolbarStyle]
            ParentFont = False
            ParentShowHint = False
            ProcessShortCuts = True
            Resizable = False
            ShowHint = True
            TabOrder = 0
            Color = clWhite
            object padr_boto_vinculos: TTBXSubmenuItem
              Caption = 'Vínculos del módulo'
              ImageIndex = 25
              Images = _fMDI.imag_grandes
              SubMenuImages = _fMDI.ImagenesMenus
              Visible = False
            end
            object padr_boto_aceptar: TTBXItem
              Action = padr_acti_aceptar
              Images = padr_imagenes
              Options = [tboDropdownArrow, tboToolbarStyle, tboToolbarSize]
            end
            object padr_boto_cancelar: TTBXItem
              Action = padr_acti_cancelar
              Images = padr_imagenes
              Options = [tboDropdownArrow, tboToolbarStyle, tboToolbarSize]
            end
            object padr_boto_nuevo: TTBXItem
              Action = padr_acti_nuevo
              Images = padr_imagenes
              Options = [tboDropdownArrow, tboToolbarStyle, tboToolbarSize]
            end
            object padr_boto_editar: TTBXItem
              Action = padr_acti_modificar
              Images = padr_imagenes
              Options = [tboDropdownArrow, tboToolbarStyle, tboToolbarSize]
            end
            object padr_boto_consultar: TTBXItem
              Action = padr_acti_consultar
              ImageIndex = 22
              Images = padr_imagenes
            end
            object padr_boto_eliminar: TTBXItem
              Action = padr_acti_eliminar
              Images = padr_imagenes
              Options = [tboDropdownArrow, tboToolbarStyle, tboToolbarSize]
            end
            object padr_sepa_1: TTBXSeparatorItem
            end
            object padr_boto_actualizar: TTBXItem
              Action = padr_acti_actualizar
              Images = padr_imagenes
              Options = [tboDropdownArrow, tboToolbarStyle, tboToolbarSize]
            end
            object padr_boto_llam_todos: TTBXItem
              Action = padr_acti_llam_todos
              Images = padr_imagenes
              Visible = False
            end
            object padr_sepa_2: TTBXSeparatorItem
              Visible = False
            end
            object padr_boto_buscar: TTBXSubmenuItem
              Action = padr_acti_buscar
              Images = padr_imagenes
            end
            object BImprimir: TTBXSubmenuItem
              Action = padr_acti_imprimir
              DropdownCombo = True
              Images = padr_imagenes
              InheritOptions = False
              Layout = tbxlGlyphLeft
              OnPopup = BImprimirPopup
              object padr_boto_crea_nuev_reporte: TTBXItem
                Action = padr_Acti_nuev_reporte
                ImageIndex = 90
                Images = _fMDI.imagenesPCP
                MaskOptions = [tboDefault]
                Options = [tboDefault]
              end
              object boto_repo_nuevo: TTBXItem
                Caption = 'Editor de reportes (Antigua versión)'
                ImageIndex = 90
                Images = _fMDI.imagenesPCP
                OnClick = padr_acti_imprimirExecute
              end
              object padr_boto_opci_impresion: TTBXVisibilityToggleItem
                Caption = 'Opciones de impresión'
                Control = DPOpciones_Impresion
                ImageIndex = 89
                Images = _fMDI.imagenesPCP
              end
              object padr_sepa_12: TTBXSeparatorItem
              end
            end
            object padr_boto_vertodo: TTBXItem
              Action = padr_acti_vertodo
              Images = padr_imagenes
              Options = [tboDropdownArrow, tboToolbarStyle, tboToolbarSize]
            end
            object padr_boto_ajus_alto: TTBXItem
              Action = padr_acti_ajus_alto
              Images = padr_imagenes
            end
            object padr_boto_mejo_ajuste: TTBXItem
              Action = padr_acti_mejo_ajuste
              Images = padr_imagenes
            end
            object padr_boto_Grid_expander: TTBXItem
              Action = padr_acti_grid_expander
              Images = padr_imagenes
            end
            object padr_boto_grid_contraer: TTBXItem
              Action = padr_acti_grid_contraer
              Images = padr_imagenes
            end
            object padr_boto_conf_vista: TTBXVisibilityToggleItem
              Caption = 'Configurar'
              Control = padr_pane_conf_vista
              ImageIndex = 13
              Images = padr_imagenes
              Options = [tboDropdownArrow, tboToolbarStyle, tboToolbarSize]
              OnClick = padr_boto_conf_vistaClick
            end
            object padr_sepa_3: TTBXSeparatorItem
            end
            object padr_boto_exportar: TTBXSubmenuItem
              Caption = 'Exportar datos'
              ImageIndex = 12
              Images = padr_imagenes
              Options = [tboDropdownArrow, tboToolbarStyle, tboToolbarSize]
              object padr_boto_Expo_excel: TTBXItem
                Action = padr_acti_expo_excel
                Images = padr_imagenes
                InheritOptions = False
                Layout = tbxlGlyphLeft
                Options = [tboToolbarStyle]
              end
              object padr_boto_Expo_html: TTBXItem
                Action = padr_acti_expo_html
                Images = padr_imagenes
                InheritOptions = False
                Layout = tbxlGlyphLeft
                Options = [tboToolbarStyle]
              end
              object padr_boto_expo_txt: TTBXItem
                Action = padr_acti_expo_txt
                Images = padr_imagenes
                InheritOptions = False
                Layout = tbxlGlyphLeft
                Options = [tboToolbarStyle]
              end
              object padr_boto_expo_personalizado: TTBXItem
                Caption = 'Formato personalizado'
                Enabled = False
                InheritOptions = False
                Layout = tbxlGlyphLeft
              end
            end
            object padr_sepa_4: TTBXSeparatorItem
            end
            object padr_boto_ayuda: TTBXItem
              Action = padr_acti_ayuda
              Images = padr_imagenes
              Options = [tboDropdownArrow, tboToolbarStyle, tboToolbarSize]
            end
            object padr_boto_Salir: TTBXItem
              Action = padr_acti_salir
              Images = padr_imagenes
            end
          end
        end
        object padr_pane_sepa_2: TPanel
          Left = 0
          Top = 49
          Width = 556
          Height = 3
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 2
        end
        object padr_pane_sepa_1: TPanel
          Left = 0
          Top = 42
          Width = 556
          Height = 7
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 3
          Color = clWhite
          TabOrder = 3
          Visible = False
          object padr_beve_sepa: TBevel
            Left = 3
            Top = 3
            Width = 759
            Height = 0
          end
          object padr_sepa_new: TShape
            Left = 3
            Top = 3
            Width = 550
            Height = 1
            Align = alClient
          end
        end
        object padr_dock_izqu_grid: TTBXDock
          Left = 0
          Top = 52
          Width = 195
          Height = 380
          AllowDrag = False
          Position = dpLeft
          object padr_pane_conf_vista: TTBXDockablePanel
            Left = 0
            Top = 0
            BorderStyle = bsNone
            Color = clWhite
            DefaultDock = padr_dock_izqu_grid
            DockedWidth = 191
            DockMode = dmCannotFloat
            DockPos = 0
            DockRow = 1
            ShowCaption = False
            ShowCaptionWhenDocked = False
            SupportedDocks = [dkStandardDock, dkMultiDock]
            TabOrder = 0
            Visible = False
            object shap_xp: TShape
              Left = 0
              Top = 17
              Width = 191
              Height = 1
              Align = alTop
              Brush.Style = bsClear
              Pen.Color = 278641
            end
            object padr_conf_vista: TdxTreeList
              Left = 0
              Top = 18
              Width = 191
              Height = 358
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              Align = alClient
              BorderStyle = bsNone
              Color = clWhite
              DragMode = dmAutomatic
              PopupMenu = padr_popu_vist_actual
              TabOrder = 0
              AutoSearchColor = 33023
              AutoSearchTextColor = clBlack
              HideSelection = False
              IndentDesc = 0
              LookAndFeel = lfFlat
              Options = [aoColumnSizing, aoEditing, aoTabThrough, aoImmediateEditor, aoAutoWidth]
              OptionsEx = [aoInvertSelect, aoBandHeaderWidth, aoAutoCalcPreviewLines, aoBandSizing, aoBandMoving, aoDragScroll, aoDragExpand, aoAutoSearch]
              PaintStyle = psOutlook
              TreeLineColor = clGrayText
              ShowGrid = True
              ShowLines = False
              GridLineColor = clBtnShadow
              OnDragDrop = padr_conf_vistaDragDrop
              OnDragOver = padr_conf_vistaDragOver
              OnStartDrag = padr_conf_vistaStartDrag
              object padr_conf_vistaColumna: TdxTreeListButtonColumn
                Caption = 'Columna'
                DisableEditor = True
                Width = 150
                BandIndex = 0
                RowIndex = 0
                ShowButtonStyle = sbAlways
                ButtonOnly = True
                Buttons = <>
                EditButtonStyle = ebsSimple
                ClickKey = 0
              end
              object padr_conf_vistaVisible: TdxTreeListCheckColumn
                Caption = 'Ver'
                Width = 63
                BandIndex = 0
                RowIndex = 0
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                OnToggleClick = padr_conf_vistaVisibleToggleClick
              end
            end
            object padr_gradi_camp_visibles: TPCPTituloGradiente
              Left = 0
              Top = 0
              Width = 191
              Height = 17
              GradientStartColor = 8182519
              GradientEndColor = 754408
              GradientStyle = grVertical
              LabelTop = 2
              LabelCaption = 'Campos visibles'
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clBlack
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              LabelAlignment = taLeftJustify
              Align = alTop
              DoubleBuffered = False
              TabOrder = 1
              Caption = 'Campos visibles'
            end
            object padr_fram_camp_visibles: TPCPFrame
              Tag = 118
              Left = 32
              Top = 112
              Width = 143
              Height = 118
              BorderWidth = 2
              Constraints.MinHeight = 4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Titulo_Color = 16244694
              TipoFrame = tfNinguno
              BorderWidthIn = 4
              FlatBorder = True
              OmitirAnimacion = False
            end
          end
        end
        object padr_dock_impresion: TTBXDock
          Left = 361
          Top = 52
          Width = 195
          Height = 380
          Color = clWhite
          Position = dpRight
          object DPOpciones_Impresion: TTBXDockablePanel
            Left = 0
            Top = 0
            Color = clWhite
            DockedWidth = 191
            ShowCaption = False
            ShowCaptionWhenDocked = False
            SupportedDocks = [dkStandardDock, dkMultiDock]
            TabOrder = 0
            Visible = False
            object padr_shape_23: TShape
              Left = 0
              Top = 17
              Width = 191
              Height = 1
              Align = alTop
              Brush.Style = bsClear
              Pen.Color = 278641
            end
            object padr_pane_29: TPanel
              Left = 0
              Top = 18
              Width = 191
              Height = 358
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object padr_gene_impresion: TdxTreeList
                Left = 0
                Top = 0
                Width = 191
                Height = 113
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                Align = alTop
                BorderStyle = bsNone
                Color = clWhite
                DragMode = dmAutomatic
                PopupMenu = padr_popu_vist_actual
                TabOrder = 0
                AutoSearchColor = 33023
                AutoSearchTextColor = clBlack
                HideSelection = False
                IndentDesc = 0
                LookAndFeel = lfFlat
                Options = [aoColumnSizing, aoEditing, aoTabThrough, aoImmediateEditor, aoAutoWidth]
                OptionsEx = [aoInvertSelect, aoBandHeaderWidth, aoAutoCalcPreviewLines, aoBandSizing, aoBandMoving, aoDragScroll, aoDragExpand, aoAutoSearch]
                PaintStyle = psOutlook
                TreeLineColor = clGrayText
                ShowGrid = True
                ShowLines = False
                GridLineColor = clBtnShadow
                object padr_gene_impresionGenerales: TdxTreeListButtonColumn
                  Caption = 'Generales'
                  DisableEditor = True
                  Width = 150
                  BandIndex = 0
                  RowIndex = 0
                  ShowButtonStyle = sbAlways
                  ButtonOnly = True
                  Buttons = <>
                  EditButtonStyle = ebsSimple
                  ClickKey = 0
                end
                object padr_gene_impresionVer: TdxTreeListCheckColumn
                  Caption = 'Ver'
                  Width = 63
                  BandIndex = 0
                  RowIndex = 0
                  ValueChecked = 'S'
                  ValueGrayed = 'N'
                  ValueUnchecked = 'N'
                end
              end
              object padr_firm_impresion: TdxTreeList
                Left = 0
                Top = 113
                Width = 191
                Height = 113
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                Align = alTop
                BorderStyle = bsNone
                Color = clWhite
                DragMode = dmAutomatic
                PopupMenu = padr_popu_vist_actual
                TabOrder = 1
                AutoSearchColor = 33023
                AutoSearchTextColor = clBlack
                HideSelection = False
                IndentDesc = 0
                IniFileName = 'c:\ini.ini'
                IniSectionName = 'Firmas'
                LookAndFeel = lfFlat
                Options = [aoColumnSizing, aoEditing, aoTabThrough, aoImmediateEditor, aoAutoWidth]
                OptionsEx = [aoInvertSelect, aoBandHeaderWidth, aoAutoCalcPreviewLines, aoBandSizing, aoBandMoving, aoDragScroll, aoDragExpand, aoAutoSearch]
                PaintStyle = psOutlook
                TreeLineColor = clGrayText
                ShowGrid = True
                ShowLines = False
                GridLineColor = clBtnShadow
                object padr_firm_impresionFirma: TdxTreeListButtonColumn
                  Caption = 'Firmas'
                  DisableEditor = True
                  Width = 150
                  BandIndex = 0
                  RowIndex = 0
                  ShowButtonStyle = sbAlways
                  ButtonOnly = True
                  Buttons = <>
                  EditButtonStyle = ebsSimple
                  ClickKey = 0
                end
                object padr_firm_impresionVer: TdxTreeListCheckColumn
                  Caption = 'Ver'
                  Width = 63
                  BandIndex = 0
                  RowIndex = 0
                  ValueChecked = 'S'
                  ValueGrayed = 'N'
                  ValueUnchecked = 'N'
                end
              end
              object padr_prio_impresion: TdxTreeList
                Left = 0
                Top = 226
                Width = 191
                Height = 132
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DragMode = dmAutomatic
                PopupMenu = padr_popu_vist_actual
                TabOrder = 2
                AutoSearchColor = 33023
                AutoSearchTextColor = clBlack
                HideSelection = False
                IndentDesc = 0
                LookAndFeel = lfFlat
                Options = [aoColumnSizing, aoEditing, aoTabThrough, aoImmediateEditor, aoAutoWidth]
                OptionsEx = [aoInvertSelect, aoBandHeaderWidth, aoAutoCalcPreviewLines, aoBandSizing, aoBandMoving, aoDragScroll, aoDragExpand, aoAutoSearch]
                PaintStyle = psOutlook
                TreeLineColor = clGrayText
                ShowGrid = True
                ShowLines = False
                GridLineColor = clBtnShadow
                object padr_prio_impresionPrioridad: TdxTreeListButtonColumn
                  Caption = 'Prioridades'
                  DisableEditor = True
                  Width = 150
                  BandIndex = 0
                  RowIndex = 0
                  ShowButtonStyle = sbAlways
                  ButtonOnly = True
                  Buttons = <>
                  EditButtonStyle = ebsSimple
                  ClickKey = 0
                end
                object padr_prio_impresionVer: TdxTreeListCheckColumn
                  Caption = 'Ver'
                  Width = 63
                  BandIndex = 0
                  RowIndex = 0
                  ValueChecked = 'S'
                  ValueGrayed = 'N'
                  ValueUnchecked = 'N'
                end
              end
            end
            object padr_pane_grad_1: TPCPTituloGradiente
              Left = 0
              Top = 0
              Width = 191
              Height = 17
              GradientStartColor = 8182519
              GradientEndColor = 754408
              GradientStyle = grVertical
              LabelTop = 2
              LabelCaption = 'Opciones de impresión'
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clBlack
              LabelFont.Height = -11
              LabelFont.Name = 'Tahoma'
              LabelFont.Style = []
              LabelAlignment = taLeftJustify
              Align = alTop
              BevelOuter = bvNone
              DoubleBuffered = False
              TabOrder = 1
              Caption = 'Opciones de impresión'
            end
            object padr_fram_opci_impresion: TPCPFrame
              Tag = 118
              Left = 32
              Top = 112
              Width = 143
              Height = 118
              BorderWidth = 2
              Constraints.MinHeight = 4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Titulo_Color = 16244694
              TipoFrame = tfNinguno
              BorderWidthIn = 4
              FlatBorder = True
              OmitirAnimacion = False
            end
          end
        end
      end
    end
  end
  object padr_dock_izquierda: TTBXDock
    Left = 0
    Top = 33
    Width = 9
    Height = 466
    Position = dpLeft
  end
  object padr_titu_ventana: TPanel
    Left = 0
    Top = 1
    Width = 792
    Height = 23
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = 33023
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object padr_pane_2: TPanel
      Left = 721
      Top = 0
      Width = 18
      Height = 23
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object padr_imag_ventana: TImage
        Left = 0
        Top = 0
        Width = 18
        Height = 23
        Align = alClient
        Center = True
        Transparent = True
      end
      object padr_grad_2: TPCPTituloGradiente
        Left = 0
        Top = 0
        Width = 18
        Height = 23
        GradientStartColor = 14059353
        GradientEndColor = 9648131
        GradientStyle = grVertical
        LabelTop = 2
        LabelCaption = ' '
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWhite
        LabelFont.Height = -13
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = [fsBold]
        LabelAlignment = taLeftJustify
        Align = alClient
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        TabOrder = 0
        Caption = ' '
      end
    end
    object padr_pane_cerrar: TPanel
      Left = 739
      Top = 0
      Width = 53
      Height = 23
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object padr_imag_salir: TImage
        Left = 32
        Top = 2
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Center = True
        Picture.Data = {
          07544269746D617036040000424D360400000000000036000000280000001000
          0000100000000100200000000000000400000000000000000000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00848484000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          00000000000000000000FFFFFF0084848400848484000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF0000000000FFFF
          FF00FFFFFF0000000000FFFFFF0084848400848484008484840000000000FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000000000FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF0084848400848484008484840000000000FF00
          FF0000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF0000000000FFFFFF0084848400848484008484840000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000FFFFFF0000000000FFFFFF0000000000000000008484840000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000FFFFFF0084848400000000008484840000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000FFFFFF0000000000FFFFFF0084848400848484008484840000000000FF00
          FF0000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF0000000000FFFFFF0084848400848484008484840000000000FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000000000FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF0084848400848484008484840000000000FF00
          FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF0000000000FFFF
          FF00FFFFFF0000000000FFFFFF0084848400848484008484840000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF000000000000000000FFFFFF00848484008484840000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF000000000000000000FFFFFF008484840000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          FF00}
        Transparent = True
        OnClick = padr_acti_salirExecute
      end
      object padr_grad_3: TPCPTituloGradiente
        Left = 0
        Top = 0
        Width = 53
        Height = 23
        GradientStartColor = 14059353
        GradientEndColor = 9648131
        GradientStyle = grVertical
        LabelTop = 2
        LabelCaption = ' '
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWhite
        LabelFont.Height = -13
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = [fsBold]
        LabelAlignment = taLeftJustify
        Align = alClient
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        TabOrder = 0
        Caption = ' '
      end
    end
    object padr_pane_titulo: TPCPTituloGradiente
      Left = 0
      Top = 0
      Width = 721
      Height = 23
      GradientStartColor = 14059353
      GradientEndColor = 9648131
      GradientStyle = grVertical
      LabelTop = 2
      LabelCaption = ' '
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWhite
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = [fsBold]
      LabelAlignment = taLeftJustify
      Align = alClient
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 2
      Caption = ' '
    end
  end
  object padr_page_oculto: TdxPageControl
    Left = 584
    Top = 33
    Width = 208
    Height = 466
    ActivePage = padr_page_ocul_reporte
    Align = alRight
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 3
    TabPosition = dxtpTop
    TabWidth = 0
    Visible = False
    object padr_page_ocul_reporte: TdxTabSheet
      Caption = 'Info'
      inline padr_repo_fortes: Tffra_edit_reportes
        Left = 16
        Top = 8
        Width = 161
        Height = 409
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
          Height = 367
        end
        inherited pane_contenedor: TPCPFrame
          Tag = 340
          Width = 0
          Height = 367
        end
        inherited TBXDock3: TTBXDock
          Left = 35
          Height = 367
          inherited pane_insp_objetos: TTBXDockablePanel
            inherited page: TSCLPageControl
              Height = 347
              FixedDimension = 19
              inherited page_propiedades: TSCLTabSheet
                inherited page_prop: TSCLPageControl
                  Height = 324
                  FixedDimension = 19
                  inherited page_labels: TSCLTabSheet
                    inherited scro_box: TScrollBox
                      Height = 301
                    end
                  end
                end
              end
              inherited page_campos: TSCLTabSheet
                inherited grid_camp_disponibles: TSCLDBGrid
                  Height = 47
                  Filter.Criteria = {00000000}
                end
              end
            end
          end
        end
      end
    end
  end
  object padr_dock_top: TTBXDock
    Left = 0
    Top = 24
    Width = 792
    Height = 9
  end
  object padr_dock_bottom: TTBXDock
    Left = 0
    Top = 499
    Width = 792
    Height = 9
    Position = dpBottom
  end
  object padr_dock_right: TTBXDock
    Left = 575
    Top = 33
    Width = 9
    Height = 466
    Position = dpRight
  end
  object data_ventana: TDataSource
    AutoEdit = False
    DataSet = consulta
    Left = 32
    Top = 65534
  end
  object padr_acciones: TActionList
    Images = padr_imagenes
    OnUpdate = padr_accionesUpdate
    Left = 97
    Top = 28
    object padr_acti_buscar: TAction
      Caption = 'Aplicar &filtro'
      Hint = 'Aplicar filtro'
      ImageIndex = 4
      ShortCut = 114
      OnExecute = padr_acti_buscarExecute
    end
    object padr_acti_imprimir: TAction
      Caption = 'Im&primir'
      Hint = 'Imprimir'
      ImageIndex = 5
      ShortCut = 16464
      OnExecute = padr_acti_imprimirExecute
    end
    object padr_acti_ayuda: TAction
      Caption = 'A&yuda'
      Hint = 'Ayuda'
      ImageIndex = 6
      ShortCut = 112
      OnExecute = padr_acti_ayudaExecute
    end
    object padr_acti_salir: TAction
      Caption = '&Salir'
      Hint = 'Salir'
      ImageIndex = 7
      ShortCut = 16467
      OnExecute = padr_acti_salirExecute
    end
    object padr_acti_nuevo: TAction
      Category = 'Archivo'
      Caption = '&Nuevo'
      Hint = 'Nuevo'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = padr_acti_nuevoExecute
    end
    object padr_acti_modificar: TAction
      Category = 'Archivo'
      Caption = '&Modificar'
      Hint = 'Modificar'
      ImageIndex = 1
      ShortCut = 16461
      OnExecute = padr_acti_modificarExecute
    end
    object padr_acti_eliminar: TAction
      Category = 'Archivo'
      Caption = '&Eliminar'
      Hint = 'Eliminar'
      ImageIndex = 2
      ShortCut = 16453
      OnExecute = padr_acti_eliminarExecute
    end
    object padr_acti_actualizar: TAction
      Category = 'Archivo'
      Caption = 'Actualizar'
      Hint = 'Actualizar'
      ImageIndex = 3
      ShortCut = 116
      OnExecute = padr_acti_actualizarExecute
    end
    object padr_acti_vertodo: TAction
      Caption = 'Ajustar ancho'
      Hint = 'Ajustar las columnas al ancho de la ventana'
      ImageIndex = 8
      OnExecute = padr_acti_vertodoExecute
    end
    object padr_acti_ajus_alto: TAction
      Caption = 'Ajustar alto'
      Hint = 'Ajustar el alto de las celdas'
      ImageIndex = 18
      OnExecute = padr_acti_ajus_altoExecute
    end
    object padr_acti_expo_excel: TAction
      Category = 'exportar'
      Caption = 'MS-Excel (tm)'
      Hint = 'Exportar a MS - Excel (c)'
      ImageIndex = 9
      OnExecute = padr_acti_expo_excelExecute
    end
    object padr_acti_expo_html: TAction
      Category = 'exportar'
      Caption = 'HTML (Internet)'
      Hint = 'Exportar a HTML'
      ImageIndex = 10
      OnExecute = padr_acti_expo_htmlExecute
    end
    object padr_acti_expo_txt: TAction
      Category = 'exportar'
      Caption = 'Texto plano'
      Hint = 'Exportar a Texto plano'
      ImageIndex = 11
      OnExecute = padr_acti_expo_txtExecute
    end
    object padr_acti_aceptar: TAction
      Category = 'Archivo'
      Caption = 'Aceptar'
      ImageIndex = 14
      ShortCut = 16397
      Visible = False
      OnExecute = padr_acti_aceptarExecute
    end
    object padr_acti_cancelar: TAction
      Category = 'Archivo'
      Caption = 'Cancelar'
      ImageIndex = 15
      ShortCut = 16449
      Visible = False
      OnExecute = padr_acti_cancelarExecute
    end
    object padr_acti_duplicar: TAction
      Caption = '&Duplicar'
      Hint = 'Duplicar'
      ImageIndex = 16
    end
    object padr_acti_elim_todos: TAction
      Caption = 'Eliminar todos'
      Hint = 'Eliminar todos'
      ImageIndex = 17
    end
    object padr_acti_cerr_carp_activa: TAction
      Category = 'pagina'
      Caption = 'Cerrar la carpeta activa'
      ImageIndex = 7
      OnExecute = padr_acti_cerr_carp_activaExecute
    end
    object acti_padr_cerr_todas_carpetas: TAction
      Category = 'pagina'
      Caption = 'Cerrar TODAS las carpetas abiertas'
      OnExecute = acti_padr_cerr_todas_carpetasExecute
    end
    object padr_acti_ver_lista: TAction
      Caption = 'Ver la lista de registros'
      Hint = 'Ver la lista de registros'
      OnExecute = padr_acti_ver_listaExecute
    end
    object padr_acti_llam_todos: TAction
      Caption = 'Llamar &todos los registros'
      Hint = 'Llamar todos los registros de la base de datos'
      ImageIndex = 19
      OnExecute = padr_acti_llam_todosExecute
    end
    object padr_acti_comu_sele_rang_fechas: TAction
      Category = 'Uso comun'
      Caption = 'Seleccionar rango de fechas'
      Hint = 'Seleccionar rango de fechas'
      ImageIndex = 20
    end
    object padr_acti_mejo_ajuste: TAction
      Caption = 'Aplicar el mejor ajuste'
      Hint = 'Aplicar el mejor ajuste'
      ImageIndex = 21
      OnExecute = padr_acti_mejo_ajusteExecute
    end
    object padr_acti_consultar: TAction
      Category = 'Archivo'
      Caption = 'Consul&tar'
      Hint = 'Consultar'
      ShortCut = 16468
      OnExecute = padr_acti_consultarExecute
    end
    object Padr_Acti_Opci_Impresion: TAction
      Category = 'Impresion'
      Caption = 'Opciones de Impresión'
      OnExecute = Padr_Acti_Opci_ImpresionExecute
    end
    object padr_acti_grid_expander: TAction
      Category = 'Grid'
      Caption = 'Abrir todos los grupos'
      ImageIndex = 23
      OnExecute = padr_acti_grid_expanderExecute
    end
    object padr_acti_grid_contraer: TAction
      Category = 'Grid'
      Caption = 'Contraer todos los grupos'
      ImageIndex = 24
      OnExecute = padr_acti_grid_contraerExecute
    end
    object padr_Acti_nuev_reporte: TAction
      Category = 'Impresion'
      Caption = 'Diseñador de reportes'
      OnExecute = padr_Acti_nuev_reporteExecute
      OnUpdate = padr_Acti_nuev_reporteUpdate
    end
    object padr_acti_befo_print_fortes: TAction
      Category = 'Impresion'
    end
  end
  object padr_popu_buscar: TTBXPopupMenu
    Left = 152
    Top = 2
    object padr_boto_unknow2: TTBXItem
    end
    object padr_sepa_9: TTBXSeparatorItem
    end
  end
  object padr_imagenes: TImageList
    Height = 32
    Width = 32
    Left = 81
    Top = 65532
    Bitmap = {
      494C010119001D00040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000000001000001001000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000053001000100010001000
      1000100010001000520010001000100010001000100010001000100010005200
      100010001000100010001000710C950000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000950039675A6B7B6F7B6F
      7B6F7B6F7B6F7B6F95007B6F7B6F7B6F7B6F9C739C739C739C73BD77BD77BD77
      BD77DE7BDE7BDE7BDE7BDE7BFF7F950000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094005A6B000000000000
      0000000000007B6F95007B6F7B6F7B6F7B6F9C739C73AD79BD77BD77BD77BD77
      BD77BD77BD77DE7BDE7BDE7BFF7F940000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000940039675A6B7B6F7B6F
      7B6F7B6F7B6F7B6F94007B6F7B6F7B6F7B6F9C734E690178456C456C456C456C
      456C01784E69DE7BDE7BDE7BFF7F940000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052001000100010001000
      100010001000100032007B6F7B6F7B6F7B6F9C739C7310769C73BD77BD77BD77
      BD77BD77DE7BDE7BDE7BDE7BFF7F740000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000074003967396739673967
      39675A6B5A6B7B6F74007B6F7B6F7B6F7B6F9C739C739C73BD77BD77BD77BD77
      DE7BDE7BDE7BDE7BDE7BDE7BFF7F740000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073003967396739673967
      39675A6B5A6B7B6F74007B6F7B6F7B6F7B6F9C73234001480148014801480148
      014801482340DE7BDE7BDE7BFF7F730000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000730039675A6B5A6B5A6B
      5A6B7B6F7B6F9C7373007B6F7B6F7B6F7B6F9C73014C00000000000000000000
      00000000014CDE7BDE7BDE7BFF7F730000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007300710C100010001000
      100010001000100031007B6F7B6F7B6F7B6F9C73225000000000000000000000
      000000002250DE7BDE7BDE7BFF7F730000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000053003967396739673967
      39675A6B5A6B7B6F73007B6F7B6F7B6F7B6F9C73235400000000000000000000
      000000002354DE7BDE7BDE7BFF7F530000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052003967396739673967
      39675A6B5A6B7B6F52007B6F7B6F7B6F7B6F9C73445400000A710A71C7780A71
      0A7100004454DE7BDE7BDE7BFF7F520000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052003967396739673967
      39675A6B5A6B7B6F52007B6F7B6F7B6F7B6F9C73455C00000000000000000000
      00000000455CDE7BDE7BDE7BFF7F520000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005200710C100010001000
      100010001000100010007B6F7B6F7B6F7B6F9C73655C00000000000000000000
      00000000655CDE7BDE7BDE7BFF7F520000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000520018635A6B5A6B5A6B
      5A6B7B6F7B6F9C7352007B6F7B6F7B6F7B6F9C73656400000000000000000000
      000000006564DE7BDE7BDE7BFF7F520000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031001863396739673967
      39675A6B5A6B7B6F51007B6F7B6F7B6F7B6F9C73886845704570457045704570
      457045708868DE7BDE7BDE7BFF7F310000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031001863396739673967
      396739675A6B7B6F31007B6F7B6F7B6F7B6F9C739C739C73BD77BD77BD77BD77
      DE7BDE7BDE7BDE7BDE7BDE7BFF7F310000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003100710C100010001000
      1000100010001000100010001000100010001000100010001000100010001000
      100010001000100010001000710C310000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031005A6B5A6B5A6B5A6B
      5A6B7B6F7B6F9C7331007B6F7B6F7B6F9C739C739C739C73BD77BD77BD773100
      DE7BDE7BDE7BDE7BDE7BFF7FFF7F310000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000030001863396739673967
      39675A6B5A6B7B6F30007B6F7B6F7B6F7B6F9C739C739C739C73BD77BD773000
      BD77DE7BDE7BDE7BDE7BDE7BFF7F300000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010001863396739673967
      39675A6B5A6B7B6F30007B6F7B6F7B6F7B6F9C739C739C739C73BD77BD771000
      DE7BDE7BDE7BDE7BDE7BDE7BFF7F100000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010001000100010001000
      10001000100010000F0010001000100010001000100010001000100010000F00
      1000100010001000100010001000100000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010009E429E429E429E42
      9E429E429E42BE4A92109E429E429E429E429E429E429E429E429E429E429210
      BE4A9E429E429E429E429E429E42100000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010005E3A5E3A5E3A5E3A
      5E3A5E3A5E3A9E4610005E3A5E3A5E3A5E3A5E3A5E3A5E3A5E3A5E3A5E3A1000
      9E465E3A5E3A5E3A5E3A5E3A5E3A100000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010005E3A5E3A5E3A5E3A
      5E3A5E3A5E3A9E4610005E3A5E3A5E3A5E3A5E3A5E3A5E3A5E3A5E3A5E3A1000
      9E465E3A5E3A5E3A5E3A5E3A5E3A100000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051081000100010001000
      10001000100010000F0010001000100010001000100010001000100010000F00
      1000100010001000100010001000510800000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000006C4E6C4E6C4E6C4E
      6C4E6C4E6C4E6C4E6C4E6C4E6C4E6C4E6C4E6C4E6C4E6C4E6C4E6C4E6C4E6C4E
      6C4E6C4E6C4E6C4E6C4E6C4E8031000000000000000000000000000000000000
      0000292529250000396739670000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000803180318031803180318031
      8031803180318031803180318031803180318031803180318031803180318031
      8031803180318031803180316C4E803100000000000000000000000000002925
      2925292529250000396739673967000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000006C4E33673367336733673367
      3367336733673367336733673367336733673367336733673367336733673367
      3367336733676C4E6C4E6C4E8031803100000000000000000000292529252925
      2925292500003967396739673967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008031803180318031803180318031
      8031803180318031803180318031803180318031803180318031803180318031
      803180318031803180316C4E8031803100000000000029252925292529252925
      29252925000039673967C618F75E396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      000000000000000000000000000000000000000000007300710C710C710C710C
      710C710C710C710C5200710C710C710C710C710C710C710C710C710C710C5200
      710C710C710C710C710C710C3425D60800006C4E336733673367336733673367
      3367336733673367336733673367336733673367336733673367336733673367
      336733673367336780316C4E6C4E803100000000292529252925292529252925
      29250000396739671042AD352925F75E39673967000000000000000000000000
      0000000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      00000000000000000000000000000000000000000000D5085A6B9C739C739C73
      9C739C73BD779C73D6087B6F7B6F9C739C739C739C739C73BD77BD77BD77BD77
      BD77DE7BDE7BDE7BDE7BDE7BFF7FD508000000006C4EF37FFF7FF37F3367F37F
      FF7FF37F3367FF7FF37FFF7F3367F37FFF7FF37F3367FF7FF37FFF7F3367F37F
      FF7FF37F3367FF7F336780316C4E803100000000000029252925292529252925
      2925000039673967E71CF75EF75E2925F75E3967396700000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529250000396739673967396739673967396739673967000000000000
      00000000000000000000000000000000000000000000D5089C73000000000000
      000000000000BD77D5087B6F7B6F9C739C739C73BD77BD77DE7BDE7BDE7BDE7B
      DE7B9F42DE7BDE7BDE7BDE7BFF7FD508000000006C4EFF7FF37FFF7F3367FF7F
      F37FFF7F3367F37FFF7FF37F3367FF7FF37FFF7F3367F37FFF7FF37F3367FF7F
      F37FFF7F3367F37FFF7F80316C4E803100000000000000000000292529252925
      000039673967524A6B2D39673967F75E2925F75E396739670000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292500003967396739673967396739673967396739673967396700000000
      00000000000000000000000000000000000000000000D5087B6F9C739C739C73
      9C739C73BD77BD77D5087B6F7B6F9C739C739C737F42BF1DBF1DBF1DBF1DBF1D
      BF1D5F119F42DE7BDE7BDE7BFF7FD508000000006C4E33673367336733673367
      3367336733673367336733673367336733673367336733673367336733673367
      336733673367336733676C4E8631803100000000000000000000000000002925
      0000396739672925B556396739673967F75E2925F75E39673967000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292500003967396739670000000000003967396739673967396739670000
      000000000000000000000000000000000000000000007204710C710C710C710C
      710C710C710C710C52007B6F7B6F9C739C739C739C739C73BD77BD77BD77BD77
      BD779F46DE7BDE7BDE7BDE7BFF7FD5080000000000006C4EF97FFF7FF97F3367
      F37FFF7FF37F3367F37FFF7FF37F3367F37FFF7FF37F3367F37FFF7FF37F3367
      F37FFF7FF37F3367F37F33678631803100000000000000000000000000000000
      9C733967B55629253967396739673967F75E4A292925F75E3967396700000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C733967000000001042104210420000000039673967396739670000
      00001863186318630000000000000000000000000000D50C39675A6B5A6B5A6B
      5A6B5A6B7B6F9C73D50C7B6F7B6F9C739C739C73BD77BD77DE7BDE7BDE7BDE7B
      DE7BDE7BDE7BDE7BDE7BDE7BFF7FD50C0000000000006C4EFF7FF97FFF7F3367
      FF7FF37FFF7F3367FF7FF37FFF7F3367FF7FF37FFF7F3367FF7FF37FFF7F3367
      FF7FF37FFF7F3367FF7FF37F8031803100000000000000000000000000000000
      9C739C738C31524A3967396739673967CE391042F75E2925F75E396739670000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C73000010421042104210421042000039673967396739670000
      10420000186318631863000000000000000000000000D40C39675A6B5A6B5A6B
      5A6B5A6B7B6F9C73D50C7B6F7B6F9C739C739C733715F604F604F604F604F604
      F604F6043715DE7BDE7BDE7BFF7FD40C0000000000006C4EF97FFF7FF97F3367
      FF7FFF7FFF7F3367F37FFF7FF37F3367F37FFF7FF37F3367F37FFF7FF37F3367
      F37FFF7FF37F3367F37FFF7F8631863100000000000000000000000000009C73
      9C735A6BE71C9C739C7339673967F75EE71C39673967F75E2925F75E39673967
      0000000000000000000000000000000000000000000000000000000000000000
      00009C739C730000186318631863104210421042104200003967396700001042
      10421042000018631863186300000000000000000000D40C7B6F9C739C739C73
      9C739C739C73BD77D40C7B6F7B6F9C739C739C73F70800000000000000000000
      00000000F708DE7BDE7BDE7BFF7FD40C0000000000006C4E3367336733673367
      3367336733673367336733673367336733673367336733673367336733673367
      3367336733673367336733678631803100000000000000000000000000009C73
      9C73EF3D524A9C739C739C739C73EF3D524A9C739C739C735A6BC6189C739C73
      0000000000000000000000000000000000000000000000000000000000000000
      00009C739C730000000018631863186318631863186300000000000000001863
      18631863000018631863186300000000000000000000B40C3425710C710C710C
      710C710C710C710C31007B6F7B6F9C739C739C73190D0000000000003F360000
      00000000190DDE7BDE7BDE7BFF7FB40C0000000000006C4EFF7FFF7FF97F3367
      F97FFF7FF97F3367F97FFF7FF97F3367F97FFF7FF37F3367F37FFF7FF37F3367
      F37FFF7FF37F3367F37FFF7F863180310000000000000000000000009C739C73
      9C73C61894529C739C739C735A6BE71C9C739C739C739C73524AEF3D9C730000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C730000186300001863186318631863186300009C739C7300001863
      18630000186318631863186300000000000000000000D40C39675A6B5A6B5A6B
      5A6B5A6B7B6FBD77D40C7B6F7B6F9C739C739C733A110000000000003F360000
      000000003A11DE7BDE7BDE7BFF7FD40C0000000000006C4EFF7FFF7FFF7F3367
      FF7FF97FFF7F3367FF7FF97FFF7F3367FF7FF37FFF7F3367FF7FF37FFF7F3367
      FF7FF37FFF7F3367FF7FF37F863180310000000000000000000000009C739C73
      9C735A6B8C318C315A6B9C73EF3D524A9C739C739C739C73E71C5A6B9C730000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C7300001863000018631863186300009C739C739C739C730000
      18630000186318631863000000000000000000000000B40C39675A6B5A6B5A6B
      5A6B5A6B7B6F9C73B40C7B6F7B6F9C739C739C735B1100003F363F36FF293F36
      3F3600005B11DE7BDE7BDE7BFF7FB40C0000000000006C4EFF7FFF7FFF7F3367
      F97FFF7FF97F3367F97FFF7FF97F3367F97FFF7FFF7F3367F37FFF7FF37F3367
      F37FFF7FF37F3367F37FFF7F86318031000000000000000000009C739C739C73
      9C739C739C7394524A2994524A299C739C739C739C73F75E4A299C7300000000
      0000000000000000000000000000000000000000000000000000000000009C73
      9C739C739C739C7300000000186300001863000000009C739C739C739C730000
      00001863186318630000000000000000000000000000B41039675A6B5A6B5A6B
      5A6B5A6B7B6FBD77B4107B6F7B6F9C739C739C737C150000000000003F360000
      000000007C15DE7BDE7BDE7BFF7FB4100000000000006C4E3367336733673367
      336733673367CC4CCC4CCC4CCC4CCC4C33673367336733673367336733673367
      33673367336733673367336786318031000000000000000000009C739C739C73
      9C739C739C739C735A6B8C318C315A6B9C739C739C734A29F75E9C7300000000
      000018636B2D1863000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C730000000000009C739C739C739C739C739C739C73
      00000000000000000000000000000000000000000000B3103425710C710C710C
      710C710C710C710C31007B6F7B6F9C739C739C739D190000000000003F360000
      000000009D19DE7BDE7BDE7BFF7FB3100000000000006C4EFF7FFF7FFF7F3367
      FF7FFF7FF97FCC4CF97FFF7FF97FCC4CF97FFF7FF97F3367F97FFF7FF37F3367
      F37FFF7FF37F3367F37FFF7F8631803100000000000000009C739C73FF25FF25
      FF255F369C739C739C739C7394524A2994529C735A6BE71C9C73000000000000
      000018639452292518630000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C7300009C739C7300009C739C730000
      00000000000000000000000000000000000000000000B31039679C739C739C73
      9C739C739C73BD77B3107B6F7B6F9C739C739C73BE1D00000000000000000000
      00000000BE1DDE7BDE7BDE7BFF7FB3100000000000006C4EFF7FFF7FFF7F3367
      FF7FFF7FFF7FCC4CFF7FF97FFF7FCC4CFF7FF97FFF7F3367FF7FF97FFF7F3367
      FF7FF37FFF7F3367FF7FF37F8631803100000000000000009C739C737E3E7E3E
      5F363D639C739C739C739C739C735A6B8C318C31CE39524A9C73000018631042
      1042104208212925A5141863000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C73000000009C739C739C730000
      00000000000000000000000000000000000000000000B3101863396739673967
      39675A6B5A6B9C73B3107B6F7B6F9C739C739C73FF29BF1DBF1DBF1DBF1DBF1D
      BF1DBF1DFF29DE7BDE7BDE7BFF7FB3100000000000006C4EFF7FFF7FFF7F3367
      FF7FFF7FFF7FCC4CFF7FFF7FF97FCC4CF97FFF7FF97F3367F97FFF7FF97F3367
      F37FFF7FF37F3367F37FFF7F863180310000000000009C739C739C735E637E3E
      3D635F36BE4A7D6B9C739C739C739C739C739452C6189C730000630CA514C618
      C618C618C61884102925A51418630000000000000000000000009C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C7300000000
      00000000000000000000000000000000000000000000B3103967396739673967
      5A6B5A6B5A6B9C73B3109C737B6F9C739C739C73BD77BD77DE7BDE7BDE7BDE7B
      DE7BDE7BDE7BDE7BDE7BDE7BFF7FB3100000000000006C4E3367336733673367
      336733673367CC4CCC4CCC4CCC4CCC4C33673367336733673367336733673367
      336733673367336733673367863180310000000000009C739C739C739C735F36
      9C739C73DE525F36DE529C739C735F369C739C739C7308210821C61884108410
      8410841084108410630C2925A5141863000000000000000000009C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C7300000000
      00000000000000000000000000000000000000000000B3103425710C710C710C
      710C710C710C710C1000710C710C710C710C710C710C710C710C710C710C1000
      710C710C710C710C710C710C3425B3100000000000006C4EFF7FFF7FFF7F3367
      FF7FFF7FFF7F3367FF7FFF7FFF7F3367F97FFF7FF97F3367F97FFF7FF97F3367
      FF7FF37FFF7F3367F37FFF7F86318031000000009C739C739C739C739C739C73
      9C739C739C737D6BBE4A5F363D637E3E1D5B9C739C73841029258410630C630C
      42084208630C630C8410841029258C3118630000000000009C739C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C73000000000000
      00000000000000000000000000000000000000000000B3147B6F9C739C739C73
      9C739C739C73BD77B3149C739C739C739C73BD77BD77BD77BD77BD77DE7BB314
      FF7FDE7BDE7BDE7BFF7FFF7FFF7FB3140000000000006C4EFF7FFF7FFF7F3367
      FF7FFF7FFF7F3367FF7FFF7FFF7F3367FF7FF97FFF7F3367FF7FF97FFF7F3367
      F97FFF7FF37F3367FF7FF37F86318031000000009C739C739C739C739C739C73
      9C739C739C739C739C733D635F367E3E7E3E9C739C73A51429254A290821C618
      C618A514A514E71CE71CC618630C945229250000000000009C739C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C73000000000000
      00000000000000000000000000000000000000000000B2141863396739673967
      39675A6B5A6B9C73B2147B6F7B6F7B6F7B6F9C739C739C739C73BD77BD77B214
      DE7BDE7BDE7BDE7BDE7BDE7BFF7FB2140000000000006C4EFF7FFF7FFF7F3367
      FF7FFF7FFF7F3367FF7FFF7FFF7F3367FF7FFF7FF97F3367F97FFF7FF97F3367
      FF7FF97FFF7F3367F37FFF7F8631803100000000000000009C739C739C739C73
      9C739C739C739C739C735F36FF25FF25FF259C730000186329256B2D0821E71C
      E71C0821082108210821A514186318631863000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C730000000000000000
      00000000000000000000000000000000000000000000B2143967396739673967
      39675A6B5A6B9C73B2147B6F7B6F7B6F7B6F9C739C739C739C73BD77BD77B214
      DE7BDE7BDE7BDE7BDE7BDE7BFF7FB214000000000000D318D318D318D318D318
      D318D318D318D318D318D318D318D318D318D318D318D318D318D318D318D318
      D318D318D318D318D318D318D31880310000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C7300000000186384144A316B2D
      4A2929252925E724211000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C730000000000000000
      00000000000000000000000000000000000000000000710CB214B214B214B214
      B214B214B214B2145008B214B214B214B214B214B214B214B214B214B2145008
      B214B214B214B214B214B214B214710C00000000000099199919991999199919
      9919991999199919991999199919991999199919991999199919991999199919
      991999199919991999199919D318803100000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C73000000000000186300184074A67D
      207C006C00580038000818630000000000000000000000000000000000000000
      000000009C739C739C739C739C739C739C739C739C7300000000000000000000
      00000000000000000000000000000000000000000000B214FE56FE56FE56FE56
      FE56FE56FE563E5F752DFE56FE56FE56FE56FE56FE56FE56FE56FE56FE56752D
      3E5FFE56FE56FE56FE56FE56FE56B21400000000000099199919991999199919
      9919991999199919991999199919991999199919991999199919991999199919
      991999199919991999199919D318803100000000000000000000000000000000
      000000009C739C739C739C739C739C739C730000000000001042A51429251042
      E71C8410630C630C420810420000000000000000000000000000000000000000
      00000000000000009C739C739C739C739C739C739C7300000000000000000000
      00000000000000000000000000000000000000000000B2149E429E429E429E42
      9E429E429E421F57B2149E429E429E429E429E429E429E429E429E429E42B214
      1F579E429E429E429E429E429E42B21400000000000099193F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F3F4F3F4FD318803100000000000000000000000000000000
      00000000000000009C739C739C739C7300000000000000004208082131461863
      2925C618A5148410630C21040000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C73000000000000000000000000
      00000000000000000000000000000000000000000000B2149F469F469F469F46
      9F469F469F461F57B2149F469F469F469F469F469F469F469F469F469F46B214
      1F579F469F469F469F469F469F46B21400000000000099197932793279327932
      7932793279327932793279327932793279327932793279327932793279327932
      7932793279327932793279327932D31800000000000000000000000000000000
      0000000000000000000000009C739C73000000000000000029250821B556D65A
      2925E71CA5148410630C08210000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
      000000000000000000000000000000000000000000001421B214B214B214B214
      B214B214B214B2145008B214B214B214B214B214B214B214B214B214B2145008
      B214B214B214B214B214B214B214142100000000000000009919991999199919
      9919991999199919991999199919991999199919991999199919991999199919
      9919991999199919991999199919991900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000104229258C31
      2925C61884102104104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001863
      1042104218630000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000B5567B6F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B5567B6F00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C7310424A2931468C31
      BD77000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C7310424A29
      31468C31BD770000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C73524A29250821082118633967
      8C319C7300000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C73524A292508210821
      186339678C319C73000000000000000000000000000000000000000000000000
      00000000000000000000000000009452CE394A2929252925E71C104239673967
      1863AD359C730000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009452CE394A2929252925E71C1042
      396739671863AD359C7300000000000000000000000000000000000000000000
      00000000000000009C7310424A2910422925292529252925A514396739673967
      396718638C31BD77000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C7310424A2910422925292529252925A5143967
      39673967396718638C31BD770000000000000000000000000000000000000000
      000000009C73524A292508210821186339674A29AD35A514734E396739673967
      3967396739678C317B6F00000000000000000000000000000000292529252925
      2925292529252925000039673967086DD66A3967396700000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C73524A292508210821186339674A29AD35A514734E3967
      396739673967396739678C317B6F000000000000000000000000000000000000
      5A6B8C314A2929252925E71C1042396739671863AD3529251863396739673967
      39673967396718638C31BD770000000000000000000000002925292529252925
      2925292529250000396739673967D66AA56CD66A396739670000000000000000
      0000000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000005A6B8C314A2929252925E71C1042396739671863AD35292518633967
      3967396739673967396718638C31BD7700000000000000000000FF7FD65AAD35
      6B2D0821292529252925A51439673967396739671042734E9C739C735A6B3967
      396739673967396739678C319C73000000000000000000000000292529252925
      29252925292500003967396739673967D66A2170D66A39673967000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529250000396739673967396739673967396739673967000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      D65AAD356B2D0821292529252925A51439673967396739671042734E9C739C73
      5A6B3967396739673967396739678C319C7300000000FF7FB5566B2D2925E71C
      31463967EF3D4A29A514734E39673967396718634A299C739C739C739C739C73
      9C739C739C739C739C73CE395A6B000000000000000000000000000000002925
      29252925000039673967396739673967CE6D4A6D086D39673967396700000000
      0000000000000000000000000000000000000000000000000000000000002925
      292529250000396739673967165B6A2A00023967396739673967396700000000
      0000000000000000000000000000000000000000000000000000FF7FB5566B2D
      2925E71C31463967EF3D4A29A514734E39673967396718634A299C739C739C73
      9C739C739C739C739C739C739C73CE395A6B0000D65AAD35292529252925C618
      396739673967314629251863396739673967734E31469C739C739C739C739C73
      9C739C739C739C739C738C310000000000000000000000000000000000000000
      000029250000396739673967396739674270D66A396739670142166339670000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292500003967165B8B2E220A461A00023967396739673967396739670000
      000000000000000000000000000000000000000000000000D65AAD3529252925
      2925C618396739673967314629251863396739673967734E31469C739C739C73
      9C739C739C739C739C739C739C738C310000FF7FAD35292529252925A5149452
      3967396739673146734E9C739C735A6B396729259C739C739C739C739C739C73
      9C739C739C739C734A2900000000000000000000000000000000000000000000
      000000009C733967396739673967CE6D6B6D39673967AE56684E454A39673967
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C7339676822AE3AF452451600023967396739673967396739673967
      00000000000000000000000000000000000000000000FF7FAD35292529252925
      A51494523967396739673146734E9C739C735A6B396729259C739C739C739C73
      9C739C739C739C739C739C734A29000000000000BD77F75E4A29292529251863
      3967396718634A299C739C739C739C73314694529C739C739C739C739C739C73
      9C739C739C73F75E104200000000000000000000000000000000000000000000
      000000009C739C739C7339673967086DD66A3967396722461663AE568B523967
      3967000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C7339674516F4520002396739673967396739673967D15A
      D15A600C0000000000000000000000000000000000000000BD77F75E4A292925
      292518633967396718634A299C739C739C739C73314694529C739C739C739C73
      9C739C739C739C739C73F75E10420000000000000000000000006B2D524A3967
      39673967734E31469C739C739C735A6B8C315A6B9C739C739C739C739C739C73
      9C739C739C73CE395A6B00000000000000000000000000000000000000000000
      00009C739C739C739C739C739C73396739673967F45E454A31672E67684ED15A
      3967396700000000000000000000000000000000000000000000000000000000
      00009C739C739C739C73F042AC323967451639673967F45E8B5200420042474A
      694E694E01420042EE5E00000000000000000000000000000000000000006B2D
      524A396739673967734E31469C739C739C735A6B8C315A6B9C739C739C739C73
      9C739C739C739C739C73CE395A6B00000000000000000000DE7B4A299C737B6F
      5A6B396729259C739C739C739C73945231469C739C739C739C739C739C739C73
      9C739C733967CE39000000000000000000000000000000000000000000000000
      00009C739C739C739C739C739C739C739C739C73464A336703630063566B2346
      9C739C7300000000000000000000000000000000000000000000000000000000
      00009C739C739C737967461A79679C739C739C73F05E2346AC56BD779A73796F
      576B35671363F15ECE5A234611630000000000000000000000000000DE7B4A29
      9C737B6F5A6B396729259C739C739C739C73945231469C739C739C739C739C73
      9C739C739C739C733967CE39000000000000000000000000734EB5569C739C73
      9C73314694529C739C739C739C7329259C739C739C739C73734E734E524A9C73
      9C739C73CE399C73000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C733667464A296700632667AC56F05E
      9C73000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C73AC32F0429C739C739C73AC56474ADE7BBD77BC779B73796F
      586B36671463F25ECF5AAD56684EEE5E000000000000000000000000734EB556
      9C739C739C73314694529C739C739C739C7329259C739C739C739C739C739C73
      315EA568315E9C73CE399C7300000000000000000000DE7B8C317B6F9C739C73
      5A6B8C315A6B9C739C739C739C735A6B4A2910423146524A31462925AD35524A
      9C73396710420000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C73AC56F05E266700632E6723469C73
      9C73000000000000000000000000000000000000000000000000000000000000
      9C739C739C73365B461A9C739C739C739C730042FF7FDE7BDD7BBC779B737A6F
      586B36673467F25ED05AAD568B52234600000000000000000000DE7B8C317B6F
      9C739C735A6B8C315A6B9C739C739C739C735A6B4A29104218639C739C739C73
      A568A568A56839671042000000000000000000000000734E94529C739C739C73
      945231469C739C739C739C739C739C73B556314631464A292925B556EF3DAD35
      524AAD359C730000000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C73796F23464C6B00632667AC56F05E9C73
      0000000000000000000000000000000000000000000000000000000000009C73
      9C739C739C73461A365B9C739C739C7336670042FF7FDE7BBD77BC779B737A6F
      586B36671463F25ED05AAD568B52014200000000000000000000734E94529C73
      9C739C73945231469C739C739C739C739C739C739C73D65AAD35CE3939679C73
      315EA568315EAD359C7300000000000000000000BD776B2D9C739C739C739C73
      29259C739C739C739C739C733967524A31466B2D2925734E5A6B7B6F3967AD35
      CE39AD3500000000000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C73F05EAC56296700632E6723469C739C73
      0000000000000000000000000000000000000000000000000000000000009C73
      9C739C73F042AC329C739C739C739C739C730042FF7FDE7BBD77BC779B73796F
      576B35671363F15ECF5AAC56694E00420000000000000000BD776B2D9C739C73
      9C739C7329259C739C739C739C739C739C73115BA55E115B9C736B2DAD35CE39
      5A6B9C73F75EEF3D000000000000000000000000945294529C739C739C739C73
      5A6B4A29104218639C739C7339678C310821524A5A6B7B6F7B6F7B6F7B6FF75E
      8C31F75E0000000000000000000000000000000000000000000000009C739C73
      9C739C73397329719C739C739C739C732346516B00632667AC56F05E9C730000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C737967461A79679C739C739C739C739C730142DE7BBD77BC779B737A6F796F
      576B35671363F15ECE5AAC56694E00420000000000000000945294529C739C73
      9C739C735A6B4A29104218639C739C739C73A55EA55EA55E39671042FF7F9C73
      8C311042EF3D5A6B00000000000000000000FF7F6B2D7B6F9C739C739C739C73
      9C739C73D65AAD35EF3D39673146104239677B6F7B6F7B6F7B6F7B6F7B6F3967
      B556CE390000000000000000000000000000000000000000000000009C739C73
      9C739C738C7110729C739C739C73F05EAC56296700632E6723469C739C730000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C73AC32F0429C739C739C739C739C739C730042DD7BBC779B739A73796F576B
      366735671363F05EAE568B52684E0042000000000000FF7F6B2D7B6F9C739C73
      9C739C739C739C73D65AAD35EF3D39679C73115BA55E115BAD359C7300000000
      000018631863000000000000000000000000734E94529C739C739C739C739C73
      9C739C739C739C73F75E29258C317B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F5A6B
      D65A4A29DE7B00000000000000000000000000000000000000009C739C739C73
      9C73397363709C739C739C739C73464A336700632667AC56F05E9C7300000000
      00000000000000000000000000000000000000000000000000009C739C739C73
      365B461A9C739C739C739C739C739C739C730042BD779B739A73796F586B576B
      35671363F15ECF5AAD568B52684E0042000000000000734E94529C739C739C73
      9C739C739C739C739C739C73F75E2925CE395A6B9C73F75EEF3D000000000000
      000000000000000000000000000000000000EF3DB5565A6B9C739C739C739C73
      9C739C739C739C731863AD35AD357B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
      1863B556EF3D00000000000000000000000000000000000000009C7329711072
      9C738C7110729C739C739C733667464A296700632E6723469C739C7300000000
      00000000000000000000000000000000000000000000000000009C739C739C73
      461A365B9C739C739C739C739C739C739C730042BC77796F796F586B576B3567
      13631363F05ECE5A8C52694E464A0042000000000000EF3DB5565A6B9C739C73
      9C739C735A4BF71A5A4B9C731863AD359C738C311042EF3D5A6B000000000000
      000000000000000000000000000000000000FF7F734E8C31524A9C739C739C73
      9C739C739C739C73AD359C73AD357B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
      BD77D65A29250000000000000000000000000000000000009C739C7339738C71
      C670A5709C739C739C739C738952136303632667AC56F05E9C73000000000000
      0000000000000000000000000000000000000000000000009C739C739C73F042
      AC329C739C739C739C739C739C739C739C7300429B73796FAC5600420042674E
      AA56AA5600420042F05E8B52454A0042000000000000FF7F734E8C31524A9C73
      9C739C73F71AF71AF71A9C73AD359C7300000000186318630000000000000000
      00000000000000000000000000000000000000000000DE7BB5564A2994525A6B
      9C739C739C73F75E1042FF7FAD357B6F7B6F7B6F7B6F7B6F7B6F7B6FBD77BD77
      39677B6F94521042000000000000000000000000000000009C739C739C739C73
      D672C6708C7139739C73796F23464C6B00632E6723469C739C73000000000000
      0000000000000000000000000000000000000000000000009C739C739C738926
      79679C739C739C739C739C739C739C739C7300429B732346F25EBD77BD77BD77
      BD77DE7BDE7BDE7BF05E23462646004200000000000000000000DE7BB5564A29
      94525A6B5A4BF71A5A4BF75E1042FF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DE7B94526B2D
      734E9C739C73AD355A6B0000AD357B6F7B6F7B6F7B6F7B6FBD77BD7739671863
      186318637B6F292500000000000000000000000000000000000000009C739C73
      9C739C73107229719C73AC56F05E26672667AC56F05E9C730000000000000000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C730042464ABD77BD77BD77BD77BD77
      BD77DE7BDE7BDE7BDE7B0000674E00420000000000000000000000000000DE7B
      94526B2D734E9C739C73AD355A6B000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      B5566B2D734ECE3900000000AD357B6F7B6F7B6FBD77BD775A6B186318631863
      186318639C73AD35000000000000000000000000000000000000000000000000
      9C739C739C739C739C730242566B00632B6723469C739C730000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C730042BD77BD77BD77BD77BD77BD77
      BD77DE7BDE7BDE7BDE7BBD77FF7F004200000000000000000000000000000000
      0000FF7FB5566B2D734ECE390000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DE7BB556DE7B00000000AD357B6F9C739C73F75E18631863186318631863
      5A6BD65AAD359C73000000000000000000000000000000000000000000000000
      000000009C739C739C73796F464A536BAC56F05E9C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C739C739C739C7336670142BD77BD77BD77BD77BD77BD77
      BD77DE7BDE7BDE7BDE7BBD77DE7B014200000000000000000000000000000000
      000000000000DE7BB556DE7B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE399C7318639452734E1863186318635A6B1863
      AD35F75E00000000000000000000000000000000000000000000000000000000
      00000000000000009C739C73796F8952464A9C739C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C739C730042BD77BD77BD77BD77BD77BD77
      BD77DE7BDE7BDE7BDE7BDE7BDE7B004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000EF3D1863D65A9452734E18635A6B3967AD35B556
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C73AC568031BD77BD77BD77BD77BD77
      BD77DE7BDE7BDE7BDE7BDE7BDE7BEE5E00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000734ECE393967B5567B6FCE39734E00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73E01C2346CF5ABD77BD77BD77
      BD77DE7BDE7BDE7BF05E444A1163000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003146CE3931460000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000EE5E004200426A4E
      AD56AD5601420042EE5E00000000000000000000000000000000000000000000
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
      0000292529250000DE7BDE7B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529250000DE7BDE7BDE7B0000000000000000C549C549000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      292529250000DE7BDE7BDE7B9C73D65A000000000000C549C64DC64D00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000029252925292529252925
      292529250000DE7BDE7BDE7B3967D65AB5560000C549A54984458445C5490000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000292529252925292529252925
      29250000DE7BDE7BDE7B9C73D65AB556734E0000C5498445413D413D8445C549
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      0000000000000000000000000000000000000000000029252925292529252925
      29250000DE7BDE7BDE7B3967D65AB5560000C549C549000000000000413D8445
      A549000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      0000000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529250000396739673967396739673967396739673967000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      0000DE7BDE7BDE7B7B6FD65AB556734E0000C5490000B5563967DE7B0000413D
      8445A54900000000000000000000000000000000000000000000292529252925
      2925292529250000396739673967396739673967396739673967000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529250000396739673967396739673967396739673967000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292500003967396739673967396739673967396739673967396700000000
      0000000000000000000000000000000000000000000000000000000000002925
      0000DE7BDE7B9C733967D65AB5560000E74D0000B55639677B6F7B6FDE7B0000
      413D8445A5490000000000000000000000000000000000000000000000002925
      2925292500003967396739673967396739673967396739673967396700000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292500003967396739673967396739673967333633363336396700000000
      0000333633360000000000000000000000000000000000000000000000000000
      0000292500003967396739673967396739673967396739673967396739670000
      0000000000000000000000000000000000000000000000000000000000000000
      DE7BDE7BDE7B9C73D65AB556734E0000C5490000186339675A6B7B6F7B6FDE7B
      0000413D8445A549000000000000000000000000000000000000000000000000
      0000292500003967396739673967396739673967396733363336396739670000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292500003967396739673967396739673336000000003336333639670000
      3336000000003336000000000000000000000000000000000000000000000000
      000000009C733967396739673967396739673967396739673967396739673967
      0000000000000000000000000000000000000000000000000000000000000000
      DE7BDE7BDE7B3967D65AB5560000E74D0000B556396739675A6B5A6B7B6F7B6F
      FF7F0000413D8445A54900000000000000000000000000000000000000000000
      000000009C733967396739673967396739673967333600000000333639673967
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C733967396739673967396739670000737E004C0000333633363336
      0000004C004C0000333600000000000000000000000000000000000000000000
      000000009C739C739C7339673967396739673967396739673967396739673967
      396700000000000000000000000000000000000000000000000000000000DE7B
      DE7BDE7B7B6F3967B556734E0000E74D000018633967396739675A6B5A6B7B6F
      9C73FF7F0000413D8445A5490000000000000000000000000000000000000000
      000000009C739C739C7339673967396739673967000021112111000033363967
      3967000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C7339673967396739670000737E007C004C000033360000
      0460007C004C0000333600000000000000000000000000000000000000000000
      00009C739C739C739C739C739C73396739673967396739675A6B320D3209F95E
      396739670000000000000000000000000000000000000000000000000000DE7B
      DE7BDE7B3967D65AB5560000E74D0000B55639673967847C847C39675A6B5A6B
      7B6F7B6FFF7F0000413D83410000000000000000000000000000000000000000
      00009C739C739C739C739C739C73396739673336000083268326211100003336
      3967396700000000000000000000000000000000000000000000000000000000
      00009C739C739C739C739C739C733967396739670000737E007C004C00000460
      007C046000003336000000000000000000000000000000000000000000000000
      00009C739C739C739C739C739C739C739C739C739C739C739C73320953113209
      5B679C73000000000000000000000000000000000000000000000000DE7BDE7B
      DE7B9C73D65AB556734E0000E74D000039677B6F847CAD7D006C396739671863
      D65AD65A18637B6F000000000000000000000000000000000000000000000000
      00009C739C739C739C739C739C739C739C730000832683260047832621110000
      33369C7300000000000000000000000000000000000000000000000000000000
      00009C739C739C739C739C739C739C739C739C739C730000737E007C0460007C
      0460000033360000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C737C6B320918267415
      32096408000000000000000000000000000000000000000000000000DE7BDE7B
      DE7B3967D65AB5560000E74D0000B5567B6F7B6F7B6F7B6F006CB556734E524A
      734E734ED65A1863B55600000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C7333360000832600470000004783262111
      0000333600000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C730000007C007C007C
      0000333633360000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C73320D320932093209320932093209320D58227822
      7415110900000000000000000000000000000000000000000000DE7BDE7BDE7B
      9C73D65AB556734E0000E74D00005A6B7B6F7B6F7B6F7B6F0000000000001042
      9452D65A39677B6FB55600000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C7300008326004700000000000000478326
      2111000033360000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C7300000460007C737E007C
      004C000033363336000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C7332099711B711D711D711F7111716581A781E981E
      1516D61D54110000000000000000000000000000000000000000DE7BDE7BDE7B
      3967D65AB5560000E74D0000B5569C739C73847C847C7B6F00007B6F7B6F0000
      396739673967B556000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C7300008326832600009C739C7300000047
      8326211100003336000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C739C739C7300000460007C04600000737E
      007C004C00003336333600000000000000000000000000000000000000009C73
      9C739C739C739C739C739C733209B70DF71117163716381A581A781A981EB81E
      761AB8221726541100000000000000000000000000000000DE7BDE7BDE7B9C73
      D65AB556734E0000E74D00005A6B9C73847CAD7D847C7B6F0000DE7BE05E404A
      0000396718630000000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C739C73000000009C739C739C739C730000
      0047832621110000333600000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C739C730000737E007C046000009C730000
      737E007C004C000033360000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C733209970DF71117163716381A581A781A981EB81E
      D822D822D8261726320D0000000000000000000000000000DE7BDE7BDE7B7B6F
      D65AB556000008520000B55618639C739C739C73847C7B6F7B6F0000436BE05E
      404A0000B556000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C739C730000
      000000478326211100003336000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C730000737E737E00009C739C730000
      0000737E737E000033360000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C733209970DF71117163716381A581A781A981EB81E
      D822D822F826B926372E320D00000000000000000000DE7BDE7BDE7BDE7B7B6F
      3967D65A00002856C5490000000000009C739C73847C9C737B6F7B6F00008473
      E05E404A0000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C739C730000
      000000000047832621110000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C73000000009C739C739C730000
      00000000000033360000000000000000000000000000000000009C739C739C73
      9C739C739C739C739C739C733209970DF71117163716381A581A781A981EB81E
      D822D822D82278267519000000000000000000000000DE7BDE7BDE7BDE7BDE7B
      9C733967D65A0000295A0000734ECE3900009C739C73DE7BBD779C737B6F0000
      8573E05E404A00000000000000000000000000000000000000009C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C7300000000
      00000000000000478326000000000000000000000000000000009C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C7300000000
      00000000000000000000000000000000000000000000000000009C739C739C73
      9C739C739C739C739C739C733209B70DF71117163716381A581A781A981EB81E
      B822B82278267519000000000000000000000000DE7BDE7BDE7BDE7BDE7BDE7B
      DE7B9C733967D65A00000000B5561042104200009C73DE7BDE7BDE7BBD777B6F
      0000436BE05E404A0000000000000000000000000000000000009C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C7300000000
      00000000000000000000000000000000000000000000000000009C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C7300000000
      0000000000000000000000000000000000000000000000009C739C739C739C73
      9C739C739C739C739C739C7332099711B711D711D711F7111716581A781EB81E
      B822582675150000000000000000000000000000DE7BDE7BDE7BDE7BDE7BDE7B
      DE7B9C733967D65A734E0000F75E734E524A10420000BD77DE7BFF7FDE7B9C73
      B5560000436BE05E404A00000000000000000000000000009C739C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C73000000000000
      0000000000000000000000000000000000000000000000009C739C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C73000000000000
      0000000000000000000000000000000000000000000000009C739C739C739C73
      9C739C739C739C739C739C73320D3209320932093209320932093209781E981E
      582275150000000000000000000000000000000000000000DE7BDE7BDE7BDE7B
      DE7BDE7B3967D65A734E00001863734E734E524A104200009C73FF7FDE7B9C73
      000000000000436B404A00000000000000000000000000009C739C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C73000000000000
      0000000000000000000000000000000000000000000000009C739C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C73000000000000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C73C8183209381E3826
      75150000000000000000000000000000000000000000000000000000DE7BDE7B
      DE7BDE7B9C73D65AD65A00001863B556734E734E524A104200007B6F9C73B556
      000000000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C730000000000000000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C730000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C7385103209382E7515
      0000000000000000000000000000000000000000000000000000000000000000
      DE7BDE7BDE7B396739670000186329252925734E734E524A0000B5569C730000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C730000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C730000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C739C739C739C739C739C739C7300000000551555110000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000DE7BDE7B9C730000186329251042734E29250000653D0000B5560000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C739C739C739C739C739C739C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C739C739C739C739C739C739C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C739C739C739C7300000000B62500000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000DE7B00001863D65A734E0000000008560852653D00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C739C739C739C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C739C739C739C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000002956E75100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
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
      00002925292500009C739C730000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002925292500009C739C730000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      29252925292500009C739C739C73000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      29252925292500009C739C739C73000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292500009C739C739C739C739C7300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292500009C739C739C739C739C7300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000029252925292529252925
      2925292500009C739C739C739C739C739C730000000000000000000000000000
      0000000000000000000000000000000000000000000029252925292529252925
      2925292500009C739C739C739C739C739C730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000292529252925292529252925
      292500009C739C739C739C739C739C739C739C73000000000000000000000000
      0000000000000000000000000000000000000000292529252925292529252925
      292500009C739C739C739C739C739C739C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967014216633967396739670000000000000000
      0000000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      0000000000000000000000000000000000000000000029252925292529252925
      292500009C739C739C739C739C739C739C739C739C7300000000000000000000
      0000000000000000000000000000000000000000000029252925292529252925
      292500009C739C739C739C739C739C739C739C739C7300000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      292529252925000039673967AE566A4E454A1663396739673967000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529250000175F6822681E88228822881E881E671E671EC209A9228922
      A926AA2AAA2AAA2AAA2AAA2AAA2A124B00000000000000000000292529252925
      00009C739C739C739C739C739C739C739C739C739C739C730000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      00009C739C739C739C739C739C739C739C739C739C739C730000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      292529250000396739673967224616631663454A166339673967396700000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292500003967D142AB2BCE37CD37CD37CD33CC33AC33AC33AC2FAB2FAB2F
      AB2FAB2BAA2BAA2BAA2BAA2BAA27A51600000000000000000000000000002925
      00009C739C739C739C739C739C739C739C739C739C739C739C73000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      00009C739C739C739C739C739C739C739C739C739C739C739C73000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002925000039673967AE568B520C630B631663454A16633967396739670000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292500003967D042E81EE822E822E81EC71EC71EC71EA71AA61AA61A861A
      861685168516651665166516A516441200000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C733967186300000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C733967186300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C733967396722461663E85EE75E0B631663454A1663396739673967
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C733967B042651665166516451645164412441224122412230E230E
      030EE30DE30DE30DE30DC20D220A230E00000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C7339671863B556B556524A0000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C7339671863B556B556524A0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C73F05E8B52EC5EE65EE75E07630B631663454A166339673967
      3967000000000000000000000000000000000000000000000000000000000000
      000000009C739C73F24A4412451624122412230E030E030E030EE209E209E209
      05160E3B0F3F0F3FEF3ECE3A2412030E00000000000000000000000000009C73
      9C739C739C739C739C739C739C739C7339671863B556B556524A524A524AEF3D
      0000000000000000000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C7339671863B556B556524A524A524AEF3D
      0000000000000000000000000000000000000000000000000000000000000000
      00009C739C739C7323463067C65AE65EE75E076307632A671363454A16633967
      3967396700000000000000000000000000000000000000000000000000000000
      00009C739C739C73F24A4412451AAA2AAC32AC32AC32AB2EAB2EAB2E8B2E4A2A
      5557965B3453124B54538B2E230E030E00000000000000000000000000009C73
      9C739C739C739C739C739C733967D65AB556B556524A524A1042EF3DEF3DAD35
      0000000000000000000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C733967D65AB556B556524A524A1042EF3DEF3DAD35
      0000000000000000000000000000000000000000000000000000000000000000
      00009C739C73F05EAC56EA5EC65AE65EE75E0763076328672867526B464A796F
      9C739C7300000000000000000000000000000000000000000000000000000000
      00009C739C739C73F24A24124616EE3A7453524B524B524B524B3147D146BC73
      B9679863B96778636B2EE209220A230E0000000000000000000000009C739C73
      9C739C7300000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C739C7300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C732346F15E0D63C65AE65EE75E0763076328672867496B556B2346
      9C73000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C73F24A241224124516CF3E334FF042F042CF3EB042DC739863
      775F775F7863965B8A2AE30D230E030A0000000000000000000000009C739C73
      9C730000C92D061D061D061D061D061D061D061D061D061D061D061D061D061D
      061D061D061D061D061D061D061DE5180000000000000000000000009C739C73
      9C7300008E428E428E428E428E428E428E428E428E428E428E428E428E428E42
      8E428E428E428E428E428E428E428E4200000000000000000000000000000000
      9C739C739C73796F895289523067E85EE75E07630763286728674D6BAC56F05E
      9C73000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C73F24A230E230E030E2516CE3A124BD042D24ABB6F98637863
      99679A6B775F345395578A2A430E020A000000000000000000009C739C739C73
      9C7300004A36C92D4A364A36C92D4A364A36C92D4A364A36C92D4A364A36C92D
      C92D4A364A366B3A6B3A4A36C92D061D000000000000000000009C739C739C73
      9C7300008E428E428E428E428E4204128E428E428E428E428E428E428E428E42
      8E428E428E4204128E428E428E428E4200000000000000000000000000009C73
      9C7339774A799C739C731363464A13632E670763076328672867526B23469C73
      0000000000000000000000000000000000000000000000000000000000009C73
      9C739C739C739C73F24A030E230E030E020A04128D361453BA6B9863775FBA6B
      7863124BF042F042F042AB2E4412020A000000000000000000009C739C739C73
      9C7300006B3A88259C734A36C92D39674A36C92D39674A36C92D9C734A36C92D
      C92D39674A369C73396739674A36061D000000000000000000009C739C739C73
      9C7300008E428E428E428E42000005168E428E42000005168E428E4200000516
      8E428E42000005168E428E428E428E4200000000000000000000000000009C73
      9C734A7973769C739C739C73796F8952895231672A6728674D6BAC56F05E9C73
      0000000000000000000000000000000000000000000000000000000000009C73
      9C739C739C739C73F24A030E030E030E020AE2098B2E775F9967775F775FB967
      1043E30DE209020A020A030E430E020A00000000000000009C739C739C739C73
      9C7300006B3A88259C734A364A3639674A36C92D39674A3688259C734A364A36
      C92D39674A369C738825C92DC92D061D00000000000000009C739C739C739C73
      9C7300008E428E428E428E420000E5158E428E428E420000E5150000E5158E42
      8E428E420000E5158E428E428E428E420000000000000000000000009C739C73
      73764A799C739C739C739C739C739C731363464A13634F6B516B23469C730000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C73F24A020A030EE209E2098A2A31471147345399679967334F
      3147CC32E30D030E030E230E6412220A00000000000000009C739C739C739C73
      9C7300006B3A88259C739C739C739C734A36C92D39674A3688259C734A369C73
      4A3639674A369C73C92DC92DC92D061D00000000000000009C739C739C739C73
      9C7300008E428E428E428E420000E5158E428E428E428E420000E5158E428E42
      8E428E420000E5158E428E428E428E420000000000000000000000009C733977
      E77C087973769C739C739C739C739C739C73796F89528952AB56F05E9C730000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C73F24AE209E209E2098A2A524BF042CF3EF1467863565BEF3E
      1043524BCC32030E230E24126412220A0000000000009C739C739C739C739C73
      9C7300006B3A88259C73882588259C734A36C92D39674A3688259C7339678825
      9C7339674A369C73C92DC92DC92D061D0000000000009C739C739C739C739C73
      9C7300008E428E428E42E5190000E519E519E5198E420000E5190000E5198E42
      8E42E5190000E519E519E5198E428E42000000000000000000009C739C734A79
      737639774A794A7939779C739C739C739C739C739C73136302429C7300000000
      00000000000000000000000000000000000000000000000000009C739C739C73
      9C739C739C739C73F24AE209E30DAB2E734FF042EF3EF146345325168A2A5557
      F0421043734FED36251624128412230E0000000000009C739C739C739C739C73
      9C7300006B3A88259C73C92D88259C7388259C739C739C7388259C738825C92D
      88259C7388259C73C92DC92DC92D061D0000000000009C739C739C739C739C73
      9C7300008E428E42000000000000000000008E420000E6198E428E4200008E42
      000000000000000000008E428E428E42000000000000000000009C7373764A79
      9C739C739C7373764A799C739C739C739C739C739C739C739C739C7300000000
      00000000000000000000000000000000000000000000000000009C739C739C73
      9C739C739C739C73F24AE2098A2A7453124B124B134F124B261AE209020A8A2E
      3453334F334F9557ED3645168516230E000000009C739C739C739C739C739C73
      9C7300006B3A88258825C92D88258825882588258825882588258825C92DC92D
      C92D882588258825C92DC92DC92D061D000000009C739C739C739C739C739C73
      9C7300008E428E428E428E428E428E428E428E428E428E428E428E428E428E42
      8E428E428E428E428E428E428E428E4200000000000000009C739C7329793977
      9C739C739C739C739C739C73297973769C739C7339774A799C73000000000000
      0000000000000000000000000000000000000000000000009C739C739C739C73
      9C739C739C739C73F24AE2096A2ACF3ECF3ECF3ECE3A261AE209030E030E030E
      8A2AF042F042F042CC32661A8516430E000000009C739C739C739C739C739C73
      9C7300008E426B3A6B3A6B3A6B3A6B3A6B3A6B3A6B3A6B3A6B3A6B3A6B3A6B3A
      6B3A6B3A6B3A6B3A6B3A4A364A36C92D000000009C739C739C739C739C739C73
      9C7300008E428E428E428E428E428E428E428E428E428E428E428E428E428E42
      8E428E428E428E428E428E428E428E4200000000000000009C739C739C739C73
      9C739C739C739C739C739C7339774A794A793977AD79107A9C73000000000000
      0000000000000000000000000000000000000000000000009C739C739C739C73
      9C739C739C739C73F24AE105E105E105E105E209E209020A030E230E230E240E
      230E230E440E441244126516A61A430E00000000000000009C739C739C739C73
      9C739C7300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009C739C739C739C73
      9C739C7300000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C7373760879E77C9C730000000000000000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C73F24A230E441244124412441265126516651665168516861A
      861AA61AA61AA71AA71EC71E082384120000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C73420800000000000000000000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C73420800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C73E77CD6769C730000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C73F24AE8222C332C332C334C334C334D334D374D376D376D37
      6E3B6E3B8E3B8E3B8E3B8F3FD03FC41200000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C739C739C739C73107AAD799C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C731147334F334F334F334F334FE9255453545374537453
      7453745374537453745374537453986300000000000000000000000000000000
      000000009C739C739C739C739C739C739C730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C739C739C739C739C730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C73297939779C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C739C739C739C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C7300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C7300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C7300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C7300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
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
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000009F7F000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      0000000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      0000000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      0000000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529250000396739673967396739673967396739673967000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529250000396739673967396739673967396739673967000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529250000396739673967396739673967396739673967000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529250000396739673967396739673967396739673967000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292500003967396739673967396739673967396739673967396700000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292500003967396739673967396739673967396739673967396700000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292500003967396739673967396739673967396739673967396700000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292500003967396739673967396739673967396739673967396700000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002925000039673967396739672C256B2D3146396739673967396739670000
      0000000000000000000000000000000000000000000000000000000000009C3A
      192E722D512D9331933193313732343E343E964E396739673967396739670000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292500003967396739673967396739673967396739673967396739670000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292500003967396739673967396739673967396739673967396739670000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C733967396739672C252D4E14426B2D314639673967396739673967
      0000000000000000000000000000000000000000000000000000000000007E63
      9D369335933DB3412F316B2D621DF019DD42FC4ED135F85A185F185F18631963
      4208000000000000000000000000000000000000000000000000000000000000
      000000009C733967396739673967396739673967396739673967396739673967
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C733967396739673967396739673967396739673967396739673967
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C733967EC76286E2D4E14426B2D31463967396739673967
      3967000000000000000000000000000000000000000000000000000000000000
      DF73B41D7C36F831AF39EC41AC35C23567351836FE4AF729F5299A429A429942
      5936CB087C6F0000000000000000000000000000000000000000000000000000
      000000009C739C739C7339673967396739673967396739673967396739673967
      3967000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C7339673967396739673967396739673967396739673967
      3967000000000000000000000000000000000000000000000000000000000000
      00009C739C739C739C739C73307EE97E286E2D4E14426B2D3146396739673967
      3967396700000000000000000000000000000000000000000000000000000000
      00005C677D329D3AF43DC355205EE0558049C0282D2D7C367C3A7A423F5BD746
      FD4E9E3E192A7546DF7B00000000000000000000000000000000000000000000
      00009C739C739C739C739C739C73396739673967396739673967396739673967
      3967396700000000000000000000000000000000000000000000000000000000
      00009C739C739C739C739C739C7339673967396739673967B556EF3D8314E420
      734E396700000000000000000000000000000000000000000000000000000000
      00009C739C739C739C739C739C73307EE97E286E2D4E15426B2D31469C739C73
      9C739C7300000000000000000000000000000000000000000000000000000000
      00007C6BBD3EBD4AB418F4206C51A859294D2B35EA382D3D3B2E78253F573F57
      1F539E429E42BE42F62D3A5F0000000000000000000000000000000000000000
      00009C739C739C739C739C739C739C739C739C739C739C733146104210421042
      73469C7300000000000000000000000000000000000000000000000000000000
      00009C739C739C739C739C739C739C739C739C73B5566B2D05256735E8450B52
      29259C7300000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C73307EEB7EE8652D4E1442AD35AD35AD35
      AD35AD3531460000000000000000000000000000000000000000000000000000
      9C731B5F1E4F5A4A101410143114521452145214521452145214362D5F5F5F5F
      1F579E429E42DE4E3F5FDC4A1B57000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C73F75EB84E7C679D739D739D73
      3967F035734E0000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C73B5566B2DE420873D09520952E84D0B52
      08210000FF7F0000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C73307EE97E286E3146EF3D7842B946
      FC56BB52AD35AD35000000000000000000000000000000000000000000000000
      9C73DA4A5F5B9C4EB839B839B839B839B839B839B839B839B8397B4A5F5F5F5F
      FE4E9E429E42DE4E5F5FBF73DB46000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C73734E3C63FF779C73F956BB52FC56
      7D67FF779C731042396700000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C738110E8450952E84D0952A745873D2C56
      000000006B2D0000000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C739C739C73307E307E15423F53BF63FF67
      FF6FFF6FFF6F1442AD3500000000000000000000000000000000000000009C73
      9C73793E1F573F573F573F573F573F573F573F573F573F573F573F573F573F57
      BE469E429E42DE4E5F5FBF73BB42000000000000000000000000000000009C73
      9C739C739C739C739C739C739C737B6F9452BD77BD77BB46981D981DBB46F925
      971539369D73BD77104200000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C7383140952E845873D0952A845873D2C56
      000021046B2D0000000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C739C739C739C73B9463F53BF5FFF63FF6F
      FF6FFF7FFF7FBF638F3131460000000000000000000000000000000000009C73
      9C735936DE4ADE4ADE4ADE4ADE4ADE4ADE4ADE4ADE4ADE4ADE4ADE4ADE4ADE4A
      9E429E429E42DE4E5F5FBF73DB46000000000000000000000000000000009C73
      9C739C739C739C739C739C739C73F75E3C63FF773936971599151836BD77FC52
      97159715F8257D679D73734E0000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C7383140B52A745873D094EA745873D6D56
      000021046B2D000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C739C73BB52BF639F57FF63FF6F
      FF77FF7FFF7FFF6F7842AD35000000000000000000000000000000009C739C73
      9C735C2ABD42BD427D3E7D3E7D3E7D3E7D3E7D3E7D3E7D3E9D3ABE42BE42BE42
      BE469E429E42DE4E5F5FBF73FD4600000000000000000000000000009C739C73
      9C739C739C739C739C739C739C73954EFF7FBC4E971599159915991D3B32B91D
      9915991597151932FF773346000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C7383140952A845873DE845873D03676D56
      000021046B2D000010427B6F000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C739C73B946FF677F57FF63FF6F
      FF6FFF77FF6FFF6FB946AD35000000000000000000000000000000009C739C73
      9C735C67DD46BF731E5B3C3A3C3A3C3A3C3A3C3A3C3A3C3A3C3E3E63DF77DF77
      9F6BBE469E42DE4E5F5FBF73FD4600000000000000000000000000009C739C73
      9C739C739C739C739C739C73B7563C63FF77F921991599159915F9253C633B36
      991599159915981D7D679D73334600000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C738314E84DA745873D0952094E84566D56
      00002104E71C6C2DE814EF3DB556B556000000000000000000009C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C73BB52BF639F57BF5FFF67
      FF6FFF6FFF6FFF67B946AD3500000000000000000000000000009C739C739C73
      9C739C737C6BBC3E5F63DD569831782D782D782D782D782D782D98319B4E7F67
      7F675F63DE4ADE4E5F5FBF6F1E4F0000000000000000000000009C739C739C73
      9C739C739C739C739C739C73954E7D677D67B91D991D99159915F8259D731D57
      B91D991599159915BB4EBD7733460000000000000000000000009C739C739C73
      9C739C739C739C739C739C739C739C738314E84D094EE84D0952A845873D6D56
      00002104A710F0318D25081D081D2304000000000000000000009C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C73BB52FF67FF6F9F57BF5F
      FF63FF63FF63FF633742314600000000000000000000000000009C739C739C73
      9C739C739C739C6FBC42FE4E9D4A1529D424D424D424D424D424D424D424B839
      FE561E57FE52FE4E5F5F7F637E630000000000000000000000009C739C739C73
      9C739C739C739C739C739C73954E7D677D67B91DB91D991599159915383EBD77
      1D57B91D99159915BC46FF7733460000000000000000000000009C739C739C73
      9C739C739C739C739C739C739C739C7383140B52A745873D094EA745873D6D56
      000021048D25343E333633361132851000000000000000009C739C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C73BB4E7D67FF7FFF6FBF5F
      7F579F57BF5F3F53B33500000000000000000000000000009C739C739C739C73
      9C739C739C739C739C73DC4A9E3E7D42B4203118311831183118311831183118
      15299E46BE46BE461E571E53DF77000000000000000000009C739C739C739C73
      9C739C739C739C739C739C73954E7D679D73FB21BB1D99159915991599159B42
      FF7F7B3E991DB91DFD56FF773346000000000000000000009C739C739C739C73
      9C739C739C739C739C739C739C739C7383140952A845873D094EA845873D6D56
      0000630C640C6C258D25081D6B2D6B2D00000000000000009C739C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C73BB52BF63FF6FFF67
      BF5FBF633F533746000000000000000000000000000000009C739C739C739C73
      9C739C739C739C739C739C733C5BDC46DC4ED931F9353A421A42193EF939F939
      D935FA299D363A2A1D531E530000000000000000000000009C739C739C739C73
      9C739C739C739C739C739C73B7563C63FF7F9D3EFC2119323C637B3E9915192E
      FF77FC52BB1DFB219D739D733346000000000000000000009C739C739C739C73
      9C739C739C739C739C739C739C739C7383140952A745873DA845873DE8456D56
      2104630C6B2D3967081DF75E000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C730000BB52BB52B946
      FC52BB4E3146000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C73DC463E57BF77BF739F6F7F6B5F63
      3F5FBD42FE527C3AFF7B0000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C73954EFF779D737F363C327C6FFF77FD569D73
      FF7F9C421C26FD4EFF7F3346000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C738314E84D873D873DE84DE84D2C56EC45
      630C84106B2D0000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C730000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C73FC4E7F679F6BDF77BF73BF6F9F6B
      7F673F5FBC42FE4E5C6700000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C733C63FF7FBF631F47BC467D679D739D73
      1F537F32FF4EFF7F9D73B5560000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C738314E84DE84D0B522C56EC450821A514
      841084106B2D0000000000000000000000000000000000000000000000000000
      000000009C739C739C739C739C739C739C739C739C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C739C739C739C739C737C6B5E5B5E5FFF7BDF7BDF77BF73
      9F6F7F6BBC463F5F994200000000000000000000000000000000000000000000
      000000009C739C739C739C739C739C73F75E7C67FF7FFF77BF639F577F533F53
      3F537D67FF7FFF77B55200000000000000000000000000000000000000000000
      000000009C739C739C739C739C739C73A3140B522D4EAB3D0821A514A514A514
      A514A5146B2D0000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C739C739C739C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C739C739C73FD4E5E5FFF7FFF7FDF7BDF7B
      BF77BF731D533E5BBC42FF7B0000000000000000000000000000000000000000
      00000000000000009C739C739C739C739C73F75E3C63FF77FF7FFF7FFF7FFF7F
      FF7FFF771B63B756000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C738C310725630C21042104210421042104
      210421046B2D0000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C730B191E4F9E6BFF7FFF7FFF7B
      DF7BDF77BF739C3ABD3E9E6F0000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C730000B7561B5F7D677D677D67
      1B5FF75E00000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000005E5BFF7FFF7FFF7F
      FF7FFF7BDF7BBA4A000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000DF77BF6FBF6FBF6F
      BF6FBF6FBF6FBF73000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000734E734E734E0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000734E734E314631463146734E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529250000396739670000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000734E734E31463146EF3DEF3DEF3D3146734E00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002925292500003967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529250000396710421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000734E734E31463146EF3DEF3D000000000000EF3D3146734E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292529252925292500003967396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292500001042734EB5563967396700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000734E734E31463146EF3DEF3D00000000734E3967F75E0000EF3D3146734E
      0000000000000000000000000000000000000000000000000000000000002925
      2925292529252925000039673967396739673967000000000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000000029252925292529252925
      2925292500003967396739673967B55610420000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000734E
      734E31463146EF3DEF3D00000000734E39677B6F7B6F3967F75E0000EF3D3146
      734E000000000000000000000000000000000000000000000000292529252925
      2925292529252925000039673967396739673967396700000000000000000000
      0000000000000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      0000000000000000000000000000000000000000292529252925292529252925
      292500003967396739673967B556104210423967000000000000000000000000
      0000000000000000000000000000000000000000000000000000734E734E3146
      3146EF3DEF3D00000000734E39677B6F7B6F7B6F7B6F7B6FF75EF75E0000EF3D
      3146734E00000000000000000000000000000000000000002925292529252925
      2925292529250000396739673967396739673967396739670000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529250000396739673967396739673967396739673967000000000000
      0000000000000000000000000000000000000000000029252925292529252925
      2925000039671863B55610421042104239679C739C7300000000000000000000
      000000000000000000000000000000000000000000000000734E31463146EF3D
      EF3D00000000734E39677B6F7B6F7B6F7B6F7B6F7B6F7B6F3967F75EF75E0000
      EF3D000000000000000000000000000000000000000000000000292529252925
      2925292529250000396739673967396739673967396739673967000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      2925292500003967396739673967396739673967396739673967396700000000
      0000000000000000000000000000000000000000000000000000292529252925
      000010421042104231463146B5569C739C739C739C739C730000000000000000
      0000000000000000000000000000000000000000000000000000EF3DEF3D0000
      0000734E39677B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6FF75EF75EF75E
      0000000000000000000000000000000000000000000000000000000000002925
      292529250000396739673967396739673967396729266001A001A0018001A411
      AF3E000000000000000000000000000000000000000000000000000000000000
      0000292500003967396739673967396739673967396739673967396739670000
      0000000000000000000000000000000000000000000000000000000000002925
      0000B556B556186339679C739C739C739C739C739C739C739C73000000000000
      000000000000000000000000000000000000000000000000000000000000734E
      39677B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F3967F75EF75E
      EF3D000000000000000000000000000000000000000000000000000000000000
      00002925000039673967396739673967E515A0016002E106E106E106E1066002
      2002A41100000000000000000000000000000000000000000000000000000000
      000000009C733967396739673967396739673967396739673967396739673967
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C7300000000
      0000000000000000000000000000000000000000000000000000734E39677B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6FF75EF75E
      F75E000000000000000000000000000000000000000000000000000000000000
      000000009C733967396739673967E10560026002200260026002200320032003
      2003600280010000000000000000000000000000000000000000000000000000
      000000009C739C739C7339673967396739673967396739673967396739673967
      3967000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C739C730000
      000000000000000000000000000000000000000000000000734E7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F3967F75E
      F75EEF3D00000000000000000000000000000000000000000000000000000000
      000000009C739C739C73396780018001E4116C32AF3EAF3E2926800160022003
      2003200360026C32000000000000000000000000000000000000000000000000
      00009C739C739C739C739C739C73396739673967396739673967396739673967
      3967396700000000000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C739C739C73
      0000000000000000000000000000000000000000000000007B6F7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6FF75E
      F75EF75E00000000000000000000000000000000000000000000000000000000
      00009C739C739C739C73E105E30DB146396739673967396739673967E4116002
      800380038003A001000000000000000000000000000000000000000000000000
      00009C739C739C739C739C739C739C739C739C739C739C739C739C739C739C73
      9C739C7300000000000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C739C739C73
      0000000000000000000000000000000000000000000000007B6F7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F3967
      F75EF75EEF3D0000000000000000000000000000000000000000000000000000
      00009C739C739C739C732B229C739C739C739C739C739C739C739C739C73A001
      2003A003A0036002000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C739C739C73
      9C7300000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C73F75E10421042F75E9C739C739C739C739C730000
      0000000000000000000000000000000000000000000000007B6F7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
      F75EF75EF75E0000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C736822A00160026002
      2003A003A0032003600260022002E10500000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C739C739C73
      9C7300000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C73F75E2925000000000000000000009C739C739C730000
      0000000000000000000000000000000000000000000000007B6F7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F
      3967F75EF75EEF3D000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C739C739C739C739C7365166002E107
      E107E107E107E107E10781076106000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C739C739C73
      00000000000000000000000000000000000000000000000000009C739C739C73
      9C739C739C739C73F75E292529250000A514F75EF75EEF3D00009C7300000000
      0000000000000000000000000000000000000000000000007B6F7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F9C73FF7F
      FF7FF75EF75EF75E000000000000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C738001E5159C739C739C739C739C736516E30E
      E927E927E927E927A71F61060000000000000000000000000000000000009C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C739C739C73
      00000000000000000000000000000000000000000000000000009C739C739C73
      9C739C739C731863AD352925104200009C739C73F75E604E604E000000000000
      0000000000000000000000000000000000000000000000007B6F7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F9C73FF7FFF7F7B6F
      1863FF7FF75EF75EEF3D00000000000000000000000000000000000000009C73
      9C739C739C739C739C739C73E10560022002E5159C739C739C739C739C738516
      E516F147F147AD37830E0000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C739C730000
      0000000000000000000000000000000000000000000000009C739C739C739C73
      9C739C739C731042AD351042F75E0000BD779C73604EE05EE05EE05E00000000
      0000000000000000000000000000000000000000000000007B6F7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F9C73FF7FFF7F7B6F18631863
      18631863FF7FF75EF75E0000000000000000000000000000000000009C739C73
      9C739C739C739C739C73E1056002200320032002E5159C739C739C739C730000
      A5160823B453830E00000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C739C730000
      0000000000000000000000000000000000000000000000009C739C739C739C73
      9C739C739C73AD35AD35F75E9C730000BD77E87F606F606F604EE05EE05E0000
      0000000000000000000000000000000000000000000000007B6F7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6F9C73FF7FFF7F7B6F1863186318631863
      186318631863FF7FF75EEF3D000000000000000000000000000000009C739C73
      9C739C739C739C73E105E10620032003200320032002E5159C739C739C730000
      0000E51EA10E00000000000000000000000000000000000000009C739C739C73
      9C739C739C739C739C739C739C739C739C739C739C739C739C739C7300000000
      000000000000000000000000000000000000000000009C739C739C739C739C73
      9C739C739C738C3110429C739C739C730000606FF57F606F606FA035604E604E
      0000000000000000000000000000000000000000000000007B6F7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F9C73FF7FFF7F7B6F186318631863186318631863
      1863186318631863FF7FF75E00000000000000000000000000009C739C739C73
      9C739C739C73E10520038003800380038003800380036002E5159C7300000000
      00000000000000000000000000000000000000000000000000009C739C739C73
      9C739C739C739C739C739C730002000200029C739C739C739C739C7300000000
      000000000000000000000000000000000000000000009C739C739C739C739C73
      9C739C739C738C31F75E9C739C739C739C730000606FF57F606FE05EA0352015
      2015000000000000000000000000000000000000000000007B6F7B6F7B6F7B6F
      7B6F7B6F7B6F7B6F9C73FF7FFF7F7B6F18631863186318631863186318631863
      18631863186318637B6FFF7F00000000000000000000000000009C739C739C73
      9C739C73E1052002200220022003A003A003E10620022002A001692600000000
      00000000000000000000FF7F0000000000000000000000009C739C739C739C73
      9C739C739C739C739C739C730002565B00029C739C739C739C73000000000000
      00000000000000000000000000000000000000009C739C739C739C739C739C73
      9C739C739C73EF3DF75E9C739C739C739C739C730000606F606FA03520156032
      A025A02500000000000000000000000000000000000000007B6F7B6F7B6F7B6F
      7B6F7B6F9C73FF7FFF7F7B6F1863186318631863186318631863186318631863
      186318637B6FFF7FFF7F00000000000000000000000000009C739C739C739C73
      9C739C739C739C739C739C736002A003A0038003E1059C739C73000000000000
      00000000000000006516F042FF7F000000000000000000009C739C739C739C73
      9C739C739C739C7300020002000211470002000200029C739C73000000000000
      00000000000000000000000000000000000000009C739C739C739C739C739C73
      9C739C739C73734EEF3D9C739C739C739C739C739C730000E05E2015E03E6032
      6032604760470000000000000000000000000000000000007B6F7B6F7B6F7B6F
      9C73FF7FFF7F1863734E18631863186318631863186318631863186318631863
      7B6FFF7FFF7F0000000000000000000000000000000000009C739C739C739C73
      9C739C739C739C739C739C732002E30FE30FE30FE10665169C73000000000000
      0000FF7F134F230E61060000000000000000000000000000000000009C739C73
      9C739C739C739C730002F146F042CD36EE3A345300029C730000000000000000
      0000000000000000000000000000000000000000000000009C739C739C739C73
      9C739C739C739C73734EF75E9C739C739C739C730000000000002015E03EE03E
      6047007C004C004C000000000000000000000000000000007B6F7B6F9C73FF7F
      FF7F1863734E734E734E1863186318631863186318631863186318637B6FFF7F
      FF7F00000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C739C73EC32E516EB2FEB2FEB2F271F6002A9260F3F0F3F
      EB2E830E60022002000000000000000000000000000000000000000000000000
      9C739C739C739C73000200020002EE3A220A000200029C730000000000000000
      000000000000000000000000000000000000000000000000000000009C739C73
      9C739C739C739C739C73186318639C739C739C730000000000000000E03EF167
      847C007C007C004CAD7D00000000000000000000000000009C73FF7FFF7F1863
      734E734E734E734E734E18631863186318631863186318637B6FFF7FFF7F0000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C7361066B2FF34FF34FF34FF34F8F3F2B2F2927
      6D372927830E0000000000000000000000000000000000000000000000000000
      000000009C739C739C739C730002CD3600029C739C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C739C739C739C739C739C739C739C739C73000000000000000000000000F167
      AD7D847CAD7DAD7D087D087D000000000000000000000000FF7F1863734E734E
      734E734E734E734E734E186318631863186318637B6FFF7FFF7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C739C739C73B967A4120823B75FB967B967B967B9679147
      E516A51600000000000000000000000000000000000000000000000000000000
      00000000000000009C739C730002000200029C739C7300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C739C739C739C739C739C739C730000000000000000000000000000
      087DAD7D317E847C847C847C0000000000000000000000000000FF7FFF7F1863
      734E734E734E734E734E1863186318637B6FFF7FFF7F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C739C732F43E416E41607270727A10E092F
      734F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C739C739C739C7300000000000000000000000000000000
      0000317EAD7D087D847C007C000000000000000000000000000000000000FF7F
      FF7F1863734E734E734E18637B6FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C739C739C730000FF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009C739C7300000000000000000000000000000000
      00000000AD7D087D007C00000000000000000000000000000000000000000000
      0000FF7FFF7F1863734EFF7FFF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009C739C73000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF7FFF7F00000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000000100000100010000000000001000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      00000000000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      CFC00001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0003F81000000000000000000000000
      C0003F81000000000000000000000000C0003F81000000000000000000000000
      C0002081000000000000000000000000C0003F81000000000000000000000000
      C0003F81000000000000000000000000C0003F81000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E0000003FFE7FFFFFFF9FFFFFFFFFFFFE0000001FF03FFFFFFC0FFFFFFFFFFFF
      80000000FC01FFFFFF007FFFFFFFFFFF80000000F000FFFFFC003FFFFFFFFFFF
      00000000C0007FFFF0001FFFC00000010000000080003FFFE0000FFFC0000001
      80000000C0001FFFF00007FFCFC0000180000000F0000FFFFC0003FFC0000001
      80000000FC0007FFFF00011FC0000001C0000000FC0003FFFF000007C0000001
      C0000000FC0001FFFF000007C0000001C0000000F80000FFFE000003C0003F81
      C0000000F80000FFFE000003C0003B81C0000000F00001FFFC000003C0003B81
      C0000000F00001FFFC000005C0002081C0000000E00003FFF8000006C0003B81
      C0000000E000031FF800001FC0003B81C0000000C000070FF00001FFC0003F81
      C0000000C0000007F00001FFC0000001C000000080000003E00003FFC0000001
      C000000080000001E00003FFC0000001C000000000000000C00007FFC0000001
      C000000000000000C00007FFC0000001C000000080000000E0000FFFC0000001
      C0000000E000200FF8000FFFC0000001C0000000F8006007FE001FFFC0000001
      C0000000FE006007FF801FFFC0000001C0000000FF80E007FFE03FFFC0000001
      C0000000FFE0E007FFF83FFFC0000001E0000000FFF9F00FFFFE7FFFFFFFFFFF
      FFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFF
      FFFFFE7FFFFFC0FFFFF9FFFFFFF9FFFFFFFFF03FFFFF007FFFC0FFFFFFC0FFFF
      FFFFC01FFFFC003FFF007FFFFF007FFFFFFF000FFFE0001FFC003FFFFC003FFF
      FFF80007FF80000FF0001FFFF0001FFFFFE00003FE000007E0000FFFE0000FFF
      FF800001F0000003F00007FFF00007FFFC000000C0000003FC0003FFFC0003FF
      F000000080000007FF0001FFFF0001FFE00000010000000FFF0000FFFF0000FF
      C00000038000000FFF00007FFF00007FE0000003F000000FFE00003FFE00000F
      FC000003E000001FFE00003FFE000003F8000007E000001FFC00007FFC000001
      F8000007C000003FFC00007FFC000001F000000FC000003FF80000FFF8000001
      F000000F8000007FF80000FFF8000001E000001F8000007FF00001FFF0000001
      E000001F0000007FF00001FFF0000001C000073F0000003FE00003FFE0000001
      C0000FFF0000003FE00003FFE0000001C0000FFF0000003FC00007FFC0000001
      C0019FFFC000001FC00007FFC0000001F001FFFFF008001FE0000FFFE0000009
      FC03FFFFFC18001FF8000FFFF8000001FF07FFFFFF18001FFE001FFFFE000001
      FFC7FFFFFFF8007FFF801FFFFF800001FFFFFFFFFFF801FFFFE03FFFFFE00001
      FFFFFFFFFFFC07FFFFF83FFFFFF80003FFFFFFFFFFFF1FFFFFFE7FFFFFFE600F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFF03CFFFFFF9FFFFFFF9FFFFFFC0FFFFFC0187FFFFC0FFFFFFC0FFFF
      FF007FFFF00083FFFF007FFFFF007FFFFC003FFFC00001FFFC003FFFFC003FFF
      F0001FFF800000FFF0001FFFF0001FFFE0000FFFC000007FE0000FFFE0000FFF
      F00007FFF000003FF00007FFF00007FFFC0003FFFC00001FFC0003FFFC00033F
      FF0001FFFC00000FFF0001FFFF00001FFF0000FFFC000007FF0000FFFF00000F
      FF00007FF8000003FF00007FFF00000FFE00003FF8000003FE00003FFE00001F
      FE00003FF0000007FE00003FFE00003FFC00007FF0000007FC00007FFC00003F
      FC00007FE0000007FC00003FFC00001FF800003FE000000FF800001FF800000F
      F800001FC000001FF800000FF800000FF000000FC000001FF0000007F000000F
      F00000078000003FF0000107F000011FE000000F8000001FE0000387E00003FF
      E000001F0000000FE00003CFE00003FFC000003F00000007C00007FFC00007FF
      C000007F80000087C00007FFC00007FFE00000FFE00000CFE0000FFFE0000FFF
      F80001FFF80001FFF8000FFFF8000FFFFE0013FFFE0001FFFE001FFFFE001FFF
      FF8017FFFF8003FFFF801FFFFF801FFFFFE03FFFFFE0C3FFFFE03FFFFFE03FFF
      FFF83FFFFFF9E7FFFFF83FFFFFF83FFFFFFE7FFFFFFFFFFFFFFE7FFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFE7FFFF
      FFF9FFFFFFF9FFFFFF03FFFFFF03FFFFFFC0FFFFFFC0FFFFFC01FFFFFC01FFFF
      FF007FFFFF007FFFF000FFFFF000FFFFFC003FFFFC003FFFC0007FFFC0007FFF
      F0001FFFF0001FFF80003FFF80003FFFE0000FFFE0000FFFC0001FFFC0001FFF
      F00007FFF0000001F0000FFFF0000FFFFC0003FFFC000001FC0007FFFC0007FF
      FF0001FFFF000001FC0003FFFC0003FFFF0000FFFF000001FC0001FFFC0001FF
      FF00007FFF000001F80000FFF80000FFFE00003FFE000001F80000FFF80000FF
      FE00003FFE000001F0000001F0000001FC00007FFC000001F0000000F0000000
      FC00007FFC000001E0000000E0000000F80000FFF8000001E0000000E0000000
      F80000FFF8000001C0000000C0000000F00001FFF0000001C0000000C0000000
      F00001FFF00000018000000080000000E00003FFE00000018000000080000000
      E00003FFE00000010000000000000000C00007FFC00000010000000000000000
      C00007FFC00000018000000180000001E0000FFFE0000001E0003FFFE0003FFF
      F8000FFFF8000001F8007FFFF8007FFFFE001FFFFE000001FE007FFFFE007FFF
      FF801FFFFF801FFFFF80FFFFFF80FFFFFFE03FFFFFE03FFFFFE0FFFFFFE0FFFF
      FFF83FFFFFF83FFFFFF9FFFFFFF9FFFFFFFE7FFFFFFE7FFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFFF9FFFFFFF9FFFFFFF9FFFFFFC0FFFFFFC0FFFFFFC0FFFFFFC0FFFF
      FF007FFFFF007FFFFF007FFFFF007FFFFC003FFFFC002FFFFC003FFFFC003FFF
      F0001FFFF0001FFFF0001FFFF0001FFFE0000FFFE0000FFFE0000FFFE0000FFF
      F00007FFF00007FFF00007FFF00007FFFC0003FFFC0003FFFC0003FFFC0003FF
      FF0001FFFC0001FFFF0001FFFF0001FFFF0000FFFC0000FFFF0000FFFF0000FF
      FF00007FFE00003FFF00007FFF00007FFE00003FFE00000FFE00003FFE00003F
      FE00003FFE000007FE00003FFE00003FFC00003FFC000003FC00003FFC00003F
      FC00001FFC000003FC00000FFC00003FF800000FF8000003F800000FF800003F
      F8000007F8000003F8000007F800003FF0000007F0000003F0000007F0000027
      F0000007F0000003F0000003F0000001E0000007E0000003E0000003E0000001
      E0000007E0000003E0000003E0000001C000000FC0000003C0000003C0000001
      C000001FC0000007C0000003C0000007E000003FE000000FE0000007E000003F
      F8000FFFF800000FF8000007F800003FFE001FFFFE00000FFE00000FFE00003F
      FF801FFFFF800007FF80001FFF80003FFFE03FFFFFE00007FFE0007FFFE03FFF
      FFF83FFFFFF8201FFFF83FFFFFF83FFFFFFE7FFFFFFE601FFFFE7FFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFF
      FFF9FFFFFFE7FFFFFFFC0FFFFFF9FFFFFFC0FFFFFF03FFFFFFF007FFFFC0FFFF
      FF007FFFFC01FFFFFFC003FFFF007FFFFC003FFFF000FFFFFF0001FFFC003FFF
      F0001FFFC0007FFFFC0000FFF0001FFFE0000FFF80003FFFF000007FE0000FFF
      F00007FFC0001FFFE00000FFF00007FFFC0003FFF0000FFFF00000FFFC0000FF
      FF0001FFFC0007FFF000007FFF00007FFF0000FFFC0003FFE000007FFF00003F
      FF00007FFC0001FFC000003FFF00001FFE00003FF80000FFC000003FFE00001F
      FE00003FF80000FFC000001FFE00001FFC00007FF00001FFC000001FFC000001
      FC00007FF00001FFC000000FFC000003F80000FFE00003FFC000000FF8000007
      F80000FFE00003FFC0000007F800000FF00001FFC00003FFC0000007F000001F
      F00001FFC00001FFC0000003F000013FE00003FF800000FFC0000003E00003FF
      E00003FF8000007FC0000003E00003F7C00007FF0000003FC0000007C00007E3
      C00007FF0000001FC000000FC000070FE0000FFF8000200FC000003FE000001F
      F8000FFFE0003007C00000FFF800003FFE001FFFF8007803C00003FFFE00007F
      FF801FFFFE007C03E0000FFFFF8000FFFFE03FFFFF80FE03F0003FFFFFE000FF
      FFF83FFFFFE0FF07FC00FFFFFFF83FFFFFFE7FFFFFF9FF8FFF03FFFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object consulta: TQuery
    DatabaseName = 'data_base_pcp'
    FilterOptions = [foCaseInsensitive]
    Left = 32
    Top = 26
  end
  object padr_popu_vist_actual: TTBXPopupMenu
    Left = 146
    Top = 137
    object vent_list_boto_todos: TTBXItem
      Caption = 'Ver todos'
      OnClick = vent_list_boto_todosClick
    end
    object vent_list_Ocultar_todos: TTBXItem
      Caption = 'Ocultar todos'
      OnClick = vent_list_Ocultar_todosClick
    end
    object padr_boto_ocul_consecutivos: TTBXItem
      Caption = 'Ocultar los campos CONSECUTIVOS'
      OnClick = padr_boto_ocul_consecutivosClick
    end
    object padr_boto_most_consecutivos: TTBXItem
      Caption = 'Mostrar los campos CONSECUTIVOS'
      OnClick = padr_boto_most_consecutivosClick
    end
    object padr_sepa_11: TTBXSeparatorItem
    end
    object vent_list_Invertir_seleccion: TTBXItem
      Caption = 'Invertir selección'
      OnClick = vent_list_Invertir_seleccionClick
    end
  end
  object Eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    Left = 64
    Top = 26
  end
  object Variables: TSCLPropiedadesForm
    TipoDeBusqueda = tbNormal
    TipoGenero = geNinguno
    ColorRequerido = clBlue
    ColorNoRequerido = clWindowText
    ColorFuentePanel = clWhite
    ColorPanel = 8695039
    ColorBoton = clBtnShadow
    RedondeoBoton = 5
    TipoPintdoBoton = tpbContorno
    verBotonesNavegacion = True
    Left = 114
    Top = 138
  end
  object Imagenes24: TTBImageList
    Height = 24
    Width = 24
    Left = 194
    Top = 2
    Bitmap = {
      494C010103000400040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001001000000000000012
      0000000000000000000000000000000000000000000000000000000000000000
      00000000BD771863DE7B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A6B5A6B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000BD771863DE7B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1863524AAD358C31AD3500000000000000000000000000000000000000000000
      0000000000000000000000000000524A31468C318C3118630000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1863524AAD358C31AD3500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD35
      4A292925C61839679452CE390000000000000000000000000000000000000000
      00000000000000000000B556AD3529258410734E314629255A6B000000000000
      000000000000000000000000000000000000000000000000000000000000AD35
      4A292925C61839679452CE390000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863EF3D29252925
      292542083967396739679452AD35DE7B00000000000000000000000000000000
      000000009C731863292529252925C61829259452F75E396729255A6B00000000
      0000000000000000000000000000000000000000000000001863EF3D29252925
      292542083967396739679452AD35DE7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5562925292529252925
      C6184A293967396739673967734EAD3500000000000000000000000000000000
      00009C73AD352925292529252925C618734E39673967B55631468C3118630000
      00000000000000000000000000000000000000000000B5562925292529252925
      C6184A293967396739673967734EAD3500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A6B2925292529252925
      8410734E396739673967396739679452CE390000000000000000000000000000
      0000DE7BEF3D2925292529252925C6183967D65A524A3146B5565A6BAD355A6B
      000000000000000000000000000000000000000000005A6B2925292529252925
      8410734E396739673967396739679452CE390000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B556AD35C618
      8C3139673967396739673967396739679452AD35DE7B00000000000000000000
      0000000000000000AD354A2942083146524A734EB55639679C739C739C738C31
      5A6B000000000000000000000000000000000000000000000000B556AD35C618
      8C3139673967396739673967396739679452AD35DE7B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E71C
      945239673967396739673967396739673967734EAD3500000000000000000000
      0000000000000000000031466B2D396739677B6F9C739C739C739C739C739C73
      AD3518630000000000000000000000000000000000000000000000000000E71C
      945239673967396739673967396739673967734EAD3500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E71C
      9C737B6F396739673967396739673967396739679452CE390000000000000000
      000000000000000000001042B5569C739C739C739C739C739C739C739C739C73
      5A6BAD355A6B000000000000000000000000000000000000000000000000E71C
      9C737B6F396739673967396739673967396739679452CE390000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000008219C73
      9C739C739C737B6F5A6B5A6B5A6B5A6B5A6B5A6B5A6B734E1042000000000000
      00000000000000001863CE399C739C739C739C739C739C739C739C739C739C73
      9C739C73E71C0000000000000000000000000000000000000000000008219C73
      9C739C739C737B6F5A6B5A6B5A6B5A6B5A6B5A6B5A6B734E1042000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001863AD359C73
      9C739C739C739C739C739C739C739C739C739C739C73AD351863000000000000
      0000000000000000CE39B5569C739C739C739C739C731863D65A5A6B9C739C73
      9C73B556CE3900000000000000000000000000000000000000001863AD359C73
      9C739C739C739C739C739C739C739C739C739C739C73AD351863000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001042B5569C73
      9C739C739C739C739C739C739C739C739C739C739C7308210000000000000000
      0000000000000000E71C9C739C739C739C739C73B55608218410C618E71CF75E
      9C73CE39186300000000000000000000000000000000000000001042B5569C73
      3E257D4E9C739C739C739C739C739C739C739C739C7308210000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863CE399C739C73
      9C739C739C739C739C739C739C739C739C739C73E71C00000000000000000000
      00000000000008219C739C739C739C739C73D65A2925A5140821F75E714EE21C
      1042104200000000000000000000000000000000000000001863CE399C739C73
      3C673E253E253C679C739C739C739C739C739C73E71C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CE39B5569C739C73
      9C739C739C739C739C739C739C739C739C73B556CE3900000000000000000000
      000000001863AD359C739C739C739C731863EF3DCE392925D65A586B85528052
      002110420000000000000000000000000000000000000000CE39B5569C733E25
      7D4E9C737D4EDF187D4E9C739C739C739C73B556CE3900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E71C9C739C739C73
      9C739C739C739C739C739C739C739C739C73CE39186300000000000000000000
      000000001042B5569C739C739C739C73B556AD35D65AAD35D65AAA772067A056
      A056642D5A6B000000000000000000000000000000000000E71C9C739C733D67
      3E253E253D673C673E253E253C679C739C73CE39186300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008219C739C739C739C73
      9C739C739C739C739C739C739C739C73B5561042000000000000000000000000
      00001863CE399C739C739C739C739C73945210429C739C738C31E45EAB77616F
      00422042C0145A6B000000000000000000000000000008219C739C733E257D4E
      9C737D4EDF187D4E9C737D4E3E259C73B5561042000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000001863AD359C739C739C739C73
      9C739C739C739C739C739C739C739C73AD351863000000000000000000000000
      0000CE39B5569C739C739C739C739C73B55694529C739C739C73CA39A5568273
      2042A025802104191863000000000000000000001863AD359C739C733C673E25
      3E253C673D673E253E253C679C739C73AD351863000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000001042B5569C739C739C739C73
      9C739C739C739C739C739C739C739C7308210000000000000000000000000000
      0000E71C9C739C739C739C739C739C73F75E31469C739C739C735A6BCA39604E
      A0256032202EE03E84255A6B00000000000000001042B5569C739C739C739C73
      7D4EDF187D4E9C737D4E3E259C739C7308210000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE394A29B5565A6B9C73
      9C739C739C739C739C739C739C73E71C00000000000000000000000000000000
      00005A6B08213146F75E9C739C739C739C73F75E18639C739C73B5561042CE39
      601D0243C152006C005C422C5A6B0000000000000000CE394A29B5565A6B9C73
      9C733D673E253E253D679C739C73E71C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009C731042AD353146
      9C739C739C739C739C739C73B556CE3900000000000000000000000000000000
      0000000000009452CE39CE3939679C739C739C735A6B7B6F9C73AD3518630000
      AC35A846CB79637CC6704A79C638186300000000000000009C731042AD353146
      9C739C739C737D4E3E259C73B556CE3900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000005A6B524A
      E71CF75E9C739C739C739C73CE39186300000000000000000000000000000000
      0000000000000000DE7B18634A298C319C739C739C739C739C73082100000000
      DE7BCD3928658C7D6B7DA57C845C10420000000000000000000000005A6B524A
      E71CF75E9C739C739C739C73CE39186300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE394A29B5565A6BB5561042000000000000000000000000000000000000
      00000000000000000000000000005A6B08213146F75E9C73E71C000000000000
      00000000CE39AD656B7D847C4240945200000000000000000000000000000000
      0000CE394A29B5565A6BB5561042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C731042AD35AD351863000000000000000000000000000000000000
      0000000000000000000000000000000000009452CE39CE39CE39000000000000
      000000000000AD39A53C21389452000000000000000000000000000000000000
      000000009C731042AD35AD351863000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000005A6B5A6B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DE7B1863DE7B000000000000
      000000000000DE7B186318630000000000000000000000000000000000000000
      00000000000000005A6B5A6B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00FF8FFFFF3FFFFF8FFF000000FE0FFFFC
      1FFFFE0FFF000000FC07FFF00FFFFC07FF000000E001FF8007FFE001FF000000
      C001FF0003FFC001FF000000C000FF0001FFC000FF000000F0003FE000FFF000
      3F000000FC003FF0007FFC003F000000FC001FF0003FFC001F000000F8000FE0
      003FF8000F000000F0000FE0003FF0000F000000F0001FE0003FF0001F000000
      E0003FC0007FE0003F000000E0003F80007FE0003F000000E0003F80003FE000
      3F000000C0007F00001FC0007F00000080007F00000F80007F0000008000FF00
      00078000FF000000C001FF000003C001FF000000E001FFC00201E001FF000000
      F801FFE00601F801FF000000FF03FFFC0F81FF03FF000000FF83FFFF0FC3FF83
      FF000000FFE7FFFF8FC7FFE7FF00000000000000000000000000000000000000
      000000000000}
  end
  object pop_pagina: TTBXPopupMenu
    OnPopup = pop_paginaPopup
    Left = 275
    Top = 37
    object padr_boto_cerr_carp_activa: TTBXItem
      Action = padr_acti_cerr_carp_activa
    end
    object padr_boto_cerr_toda_carpetas2: TTBXItem
      Action = acti_padr_cerr_todas_carpetas
    end
    object padr_sepa_10: TTBXSeparatorItem
    end
    object padr_boto_ver_lista: TTBXItem
      Action = padr_acti_ver_lista
    end
  end
  object Imagenes16: TTBImageList
    Left = 226
    Top = 2
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001000000000000018
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
      0000000000000000000000000000000000000000000000000000000000001863
      1863000000000000000000000000000000000000000000000000000018631863
      0000000000000000000000000000000000000000000000000000FF7F7B6FD65A
      D65A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000524A29258C31
      734E18630000000000000000000000000000000000000000524A29258C31CE39
      186300000000000000000000000000000000000000000000000031468C318C31
      524A186300000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000524A2925292584103967
      3967734E18630000000000000000000000000000524A292529258410D65A1863
      EF3D186300000000000000000000000000000000BD7710424A290821C6183967
      3967524A94520000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000018632925292529258C313967
      39673967734E18630000000000000000000018632925292529258C3118639452
      734E9452186300000000000000000000000000005A6B29252925E71C8C313967
      39671863734E1863000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000524A841039673967
      396739673967734E1863000000000000000000000000524A8410734EB5561863
      9C739C73B55618630000000000000000000000000000BD7794522925D65A3967
      396739673967524A945200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE397B6F3967
      3967396739673967734E1863000000000000000000000000CE399C739C739C73
      9C739C739C73B556186300000000000000000000000000000000AD355A6B3967
      3967396739673967734E18630000000000000000000000000000FF7F00000000
      000000000000FF7F0000000000000000000000000000000010429C739C739C73
      7B6F7B6F7B6F7B6F7B6FAD350000000000000000000010429C739C739C739C73
      9C739C739C739C73CE39000000000000000000000000FF7FEF3D9C739C739C73
      7B6F7B6F7B6F7B6F7B6FEF3D7B6F0000000000000000000000000000FF7F0000
      00000000FF7F000000000000000000000000000000000000CE399C739C739C73
      9C739C739C739C739C73104200000000000000000000CE399C739C739C739452
      08218C31B5569C7310420000000000000000000000007B6F10421D639D529C73
      9C739C739C739C739C73EF3DFF7F00000000000000000000000000000000FF7F
      0000FF7F00000000000000000000000000000000000010429C739C739C739C73
      9C739C739C739C73CE390000000000000000000010429C739C739C73D65A6B2D
      08211863A335E71C000000000000000000000000000031461863DD5A5D4ADE39
      FD5E9C739C737B6FCE3900000000000000000000000000000000000000000000
      FF7F0000000000000000000000000000000000000000CE399C739C739C739C73
      9C739C739C739C73104200000000000000000000CE399C739C739C73CE39D65A
      EF3D496BE05E20461863000000000000000000000000CE397B6F3D46DE39BD56
      DE397D4E7C6F186331460000000000000000000000000000000000000000FF7F
      0000FF7F0000000000000000000000000000000010429C739C739C739C739C73
      9C739C739C73CE390000000000000000000010429C739C739C739C7310429C73
      B556A55685732046201D1863000000000000FF7FEF3D9C737D4E5D4ABD56BE35
      9D527D4E1D6310427B6F000000000000000000000000000000000000FF7F0000
      00000000FF7F0000000000000000000000000000CE399C739C739C739C739C73
      9C739C739C73104200000000000000000000CE399C739C739C739C73524A9C73
      9C73B556604EC029202E202E1863000000007B6F10429C737C6F9D52BE35BD56
      5D4A7D4E9C73EF3DFF7F00000000000000000000000000000000FF7F00000000
      000000000000FF7F0000000000000000000000001863AD35B5569C739C739C73
      9C739C73CE390000000000000000000000001863AD35B5569C739C735A6B3967
      9C73CE391863C025A55A006C634C1863000000001863EF3D94525A6B7C6FDE39
      3D467B6FCE390000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863AD35B5569C73
      9C739C731042000000000000000000000000000000001863AD35B5569C739C73
      9C73104200001863AA598C7DE77C633C000000000000BD77D65AEF3DB5567C6F
      FD5E186331460000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000001863AD35
      B556CE39000000000000000000000000000000000000000000001863AD35B556
      CE3900000000000018636B5DA57808350000000000000000000000001863EF3D
      945210427B6F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1863186300000000000000000000000000000000000000000000000000001863
      186300000000000000001863104200000000000000000000000000000000BD77
      D65AD65AFF7F0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FCFFF9FFF0FFFFFFF07FE0FFF07FFFFF
      C03F807F803FFFFF801F003F801FFFFFE00FC01FC00FFFFFF007E00FF007F7DF
      E007C00FC003FBBFE007C00FC003FD7FC00F801FC00FFEFFC00F800FC00FFD7F
      801F0007000FFBBF801F0003000FF7DF803F0001803FFFFFE03FC041C03FFFFF
      F87FF0E1F83FFFFFFE7FFCF3FC3FFFFF00000000000000000000000000000000
      000000000000}
  end
  object padr_estilo_chec: TdxCheckEditStyleController
    ButtonStyle = btsFlat
    Left = 290
    Top = 2
  end
  object padr_estilo: TdxEditStyleController
    BorderColor = 14467501
    BorderStyle = xbsThick
    ButtonStyle = btsHotFlat
    Left = 258
    Top = 2
  end
  object imag_pequenas: TImageList
    Left = 323
    Top = 4
    Bitmap = {
      494C010116001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001001000000000000030
      0000000000000000000000000000000000000000000000006755474D474D474D
      474D474D474D474D474D474D6755000000000000292529252925292529250000
      0000342500000000292529252925292529250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A95D3646712D712D712D
      712D712D712D712D712D712D712D675500000000292500000000000000000000
      3425342534250000000000000000000029250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A95D3646BE6FBE6FBE6F
      BE6FBE6FBE6FBE6FBE6FBE6F712D474D00000000292500000000000000000000
      0000342500000000000000000000000029250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A95D3646BE6F10421042
      10421042104210421042BE6F712D474D00000000292500000000000000000000
      0000342500000000000000000000000029250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A95D3646BE6F9E679E67
      9E679E679E679E679E67BE6F712D474D00000000292500000000000000000000
      0000000000000000000000000000000029250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A95D3646BE6F10421042
      10421042104210421042BE6F712D474D00000000000000000000000000002925
      2925292529252925000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A95D3646BE6FBE6FBE6F
      BE6FBE6FBE6FBE6FBE6FBE6FB335474D00000000000034250000000000002925
      5A6B5A6B5A6B2925000000000000342500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A95D3646DF73DF730040
      BE6F1863004000401863DF73B335474D00000000342534253425342500002925
      5A6B5A6B5A6B2925000034253425342534250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CB613646FF77FF770040
      FF770040FF77FF770040FF77B335474D00000000000034250000000000002925
      5A6B5A6B5A6B2925000000000000342500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CB613646FF77FF770040
      FF77FF77FF77FF770040FF77F439474D00000000000000000000000000002925
      2925292529252925000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CB613646FF77FF770040
      FF770040004000401863FF77F439474D00000000292500000000000000000000
      0000000000000000000000000000000029250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C663646FF7F00400040
      FF7F0040FF7FFF7FFF7FFF7F3646474D00000000292500000000000000000000
      0000342500000000000000000000000029250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C663646FF7FFF7F0040
      FF7F0040004000400040FF7F3646474D00000000292500000000000000000000
      0000342500000000000000000000000029250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C663646FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F3646474D00000000292500000000000000000000
      3425342534250000000000000000000029250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C663646364636463646
      3646364636463646364636463646675500000000292529252925292529250000
      0000342500000000292529252925292529250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000C66CB61A95DA95D
      A95DA95DA95DA95DA95DA95DA95D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000003425000000002925
      0000292500002925292529252925292500000000000000000000000000000000
      00000000000000000000000000000000000000006635E4200425042504250425
      04250425042504250425E42026310000000000000000000000001042FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000034253425342500000000
      0000000000002925FF7FFF7FFF7F2925000000006635E4200425042504250425
      04250425042504250425E42026310000000066356635E4200425042504250425
      04250425042504250425E42026312631000000001042000000001042FF7FFF7F
      10001000100010001000FF7FFF7F000000000000000000003425000000000000
      0000000000002925FF7FFF7FFF7F2925000066356635E4200425042504250425
      04250425042504250425E420263126310000C61DC61D67266826682668266826
      6826682A6726672667262722041D041D000000001042FF7FFF7F1042FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000003425000000000000
      0000000000002925FF7FFF7FFF7F29250000C61DC61D67266826682668266826
      6826682A6726672667262722041D041D000067266726882AA82AA82AA82AA82A
      A82AA82AA82AA82A882A6726241D241D000000001042FF7F10001042FF7FFF7F
      10001000100010001000FF7FFF7F000000000000000000000000000000000000
      0000000000002925FF7FFF7FFF7F2925000067266726882AA82AA82AA82AA82A
      A82AA82AA82AA82A882A6726241D241D000047264726882AA92EC92EA92EA92E
      882A882A682A682A682A6726241D241D000000001042FF7FFF7F1042FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000292529252925292529250000
      0000000000002925FF7FFF7FFF7F2925000047264726882AA92EC92EA92EA92E
      882A882A682A682A682A6726241D241D0000682A682AA92EA92EA92EA92E882A
      882A882A882A682A682A6726241D241D000000001042FF7F10001042FF7FFF7F
      10001000100010001000FF7FFF7F00000000000029255A6B5A6B5A6B29250000
      0000000000002925FF7FFF7FFF7F29250000682A682AA92EA92EA92EA92E882A
      882A882A882A682A682A6726241D241D0000882A882AC92EC92EC92EC92EC92E
      A82AA82A882A882A882A882A44214421000000001042FF7FFF7F1042FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000029255A6B5A6B5A6B29250000
      0000000000002925FF7FFF7FFF7F29250000882A882AC92EC92EC92EC92EC92E
      A82AA82A882A882A882A882A442144210000882A882AC92EC92EC92EC92EA92E
      A92E882A882A682A682A682A44214421000000001042FF7F10001042FF7FFF7F
      10001000100010001000FF7FFF7F00000000000029255A6B5A6B5A6B29250000
      0000000000002925FF7FFF7FFF7F29250000882A882AC92EC92EC92EC92EA92E
      A92E882A882A682A682A682A442144210000A92EA92EEA32C92EC92EA92EA92E
      882A882A882A882A682A682A45214521000000001042FF7FFF7F1042FF7FFF7F
      1042FF7FFF7FFF7FFF7FFF7FFF7F000000000000292529252925292529250000
      0000000000002925FF7FFF7FFF7F29250000A92EA92EEA32C92EC92EA92EA92E
      882A882A882A882A682A682A452145210000C92EC92EEA32EA32C92EC92EA92E
      882A882A882A882A882A6826452145210000007C007C00001042FF7F007C007C
      FF7F10001000FF7F000000000000000000000000000000000000000000000000
      0000000000002925FF7FFF7FFF7F29250000C92EC92EEA32EA32C92EC92EA92E
      882A882A882A882A882A6826452145210000C92EC92EEB36EA32C92EC92EA92E
      882A882A682A682A682A682A4521452100000000007C007C0000007C007CFF7F
      FF7FFF7FFF7FFF7F1042FF7F1042000000000000000000003425000000000000
      0000000000002925FF7FFF7FFF7F29250000C92EC92EEB36EA32C92EC92EA92E
      882A882A682A682A682A682A452145210000EA32EA320C3BEB36EA32EA32C92E
      C92EA92E882A882A882A882A45214521000000000000007C007C1042FF7F1042
      FF7FFF7FFF7FFF7F104210420000000000000000000000003425000000000000
      0000000000002925FF7FFF7FFF7F29250000EA32EA320C3BEB36EA32EA32C92E
      C92EA92E882A882A882A882A452145210000EA32EA320E430C3BEB36EB36EA32
      EA32EA32EA32C92EC92E882A24212421000000000000007C007C007C00001042
      1042104210421042104200000000000000000000000034253425342500000000
      0000000000002925FF7FFF7FFF7F29250000EA32EA320E430C3BEB36EB36EA32
      EA32EA32EA32C92EC92E882A2421242100000E3F0E3FEA32E932C92EA92EA92E
      A92EA92EA92E882A882A0622C62DC62D00001042007C007C0000007C007C0000
      FF7F104200000000000000000000000000000000000000003425000000002925
      0000292500002925292529252925292500000E3F0E3FEA32E932C92EA92EA92E
      A92EA92EA92E882A882A0622C62DC62D000000000E3FEA32E932C92EA92EA92E
      A92EA92EA92E882A882A0622C62D00000000007C007C000000000000007C007C
      1042000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000E3FEA32E932C92EA92EA92E
      A92EA92EA92E882A882A0622C62D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001863104210421042104210421042
      1042104210421042104200000000000000000000100010001000100010001000
      1000100010001000100010001000100000000000000000000000000010420000
      104200000000000000000000000000000000000000000000743E743E5B630000
      000000000000743ED8520000000000000000FF7F186318631863186318631863
      1863186318631863104200000000000000000000100018631863186318631863
      186318631863186318631863186310000000000000000000000010420000E014
      000010420000000000000000000000000000000000008D292104E814543A5A63
      0000000011362104850CD752000000000000FF7F186318631863186318631863
      18631863186318631042000000000000000000001000FF7FFF7F0000FF7F1863
      FF7FFF7FFF7F1863FF7FFF7FFF7F1000000000000000000010420000E0016A02
      E001000010420000000000000000000000000000000008314A5D002CE814543E
      9646113A211000400038840C975200000000FF7F1863007C007C186318631863
      18631863186318631042000000000000000000001000FF7F0000000000001863
      FF7FFF7FFF7F1863FF7FFF7FFF7F100000000000000010420000E0016A02E002
      6A02E00100001042000000000000000000000000000008356B7D0060002CE814
      AE29431C0358006C00404204354600000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F186300000000000000000000100018630000186300000000
      186318631863186318631863186310000000000010420000E0016A02E0026003
      E0026A02E00100001042000000000000000000000000F76208414A790060002C
      431C0358017403544210323E0000000000000000000000000000000000000000
      00000000000000000000000000000000000000001000FF7FFF7FFF7FFF7F0000
      0000FF7FFF7F1863FF7FFF7FFF7F1000000000000000E0016A02E00260020000
      6002E0026A02E00100001042000000000000000000000000186308414A790168
      0258017403544318333E00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000001000FF7FFF7F0000FF7F1863
      FF7FFF7FFF7F1863FF7FFF7FFF7F1000000010420000E002E002600200001042
      0000E001E0026A02E001000010420000000000000000000000001863633C007C
      017800644318CF2DB64A00000000000000000000000000000000000000000000
      0000FF7FE07FFF7FE07FFF7FE07FFF7F00000000100018630000000000001863
      18631863186318631863186318631000000010420000E0016002000010420000
      10420000E001E0026A02E00100001042000000000000000000004B3D0258847C
      4A79006C212CE714543E3A630000000000000000000000000000000000000000
      0000E07FFF7FE07FFF7FE07FFF7FE07F000000001000FF7F0000FF7F00000000
      FF7FFF7FFF7F1863FF7FFF7FFF7F100000000000104200000000104200000000
      000010420000E001E0026A02E001000094520000000000004B41025402702454
      083D4A790060002CC610543E5A63000000000000000010420000000000000000
      0000FF7FE07FFF7FE07FFF7FE07FFF7F000000001000FF7FFF7FFF7FFF7F0000
      0000FF7FFF7F1863FF7FFF7FFF7F100000000000000000000000000000000000
      0000000010420000E001E002600200006A2900000000EF49E860027002506C41
      18630841297D0060002CE8147546000000001042000000000000000000000000
      0000E07FFF7FE07FFF7FE07FFF7FE07F00000000100010001000100010001000
      1000100010001000100010001000100000000000000000000000000000000000
      00000000000010420000E001E00200001042000000000835107EE85C8D410000
      00001863083DAD7D4A5D42047546000000000000000000000000000000000000
      0000000000000000E07FFF7FE07FFF7F000000001000FF7FFF7FFF7FFF7F1000
      FF7FFF7FFF7F1000FF7FFF7FFF7F100000000000000000000000000000000000
      000000000000000010420000000000000000000000009456E730104A00000000
      00000000F762E730E730CF310000000000000000000000000000000000000000
      0000E07FFF7FE07F000000000000000000000000100010001000100010001000
      1000100010001000100010001000100000000000000000000000000000000000
      0000000000000000000010421042104200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      F146F146F1469A6B00000000000000000000000000000000000000000000752D
      752D1C631C631C63386338633863752DD218000000000000000000000000752D
      752D1C631C631C63386338633863752DD2180000000000000000000000002925
      292529252925292500000000000000000000000000000000000000000000CE36
      6A2B2823071F8412575FD03ECF3EFF7F00003646712D712D712D712D712DF739
      782D1C63F31CD6393863DE7BDE7B782DD2183646712D712D712D712D712DF739
      782D1C63F31CD6393863DE7BDE7B782DD2180000000034250000000000002925
      5A6B5A6B5A6B292500000000000034250000000000000000000000000000AE36
      030EE209E209240E071B2923281FF246000036465F535F535F535F535F53F739
      782D5846F31C33251C631863DE7B782DD21836465F535F535F535F535F53F739
      782D5846F31C33251C631863DE7B782DD2180000342534253425342500002925
      5A6B5A6B5A6B292500003425342534253425000000000000000000000000AD36
      65168516A71EA516430E6416A61AF24A000036465F535F535F535F535F53F739
      782D58465846975297521C633863782DD21836465F535F535F535F535F53F739
      782D58465846975297521C633863782DD2180000000034250000000000002925
      5A6B5A6B5A6B2925000000000000342500000000FF7FFF7FFF7FFF7FFF7FFF7F
      104310431043BC735557F04210430000000036467E637E637E637E637E63F739
      5525762D782D782D782D782D782D782DD21836467E637E637E637E637E63F739
      5525762D782D782D782D782D782D782DD2180000000000000000000000002925
      292529252925292500000000000000000000EB2BEF3BEE3BEE37ED37ED37EC33
      EC33EC2FEB2F8516A927ED37EC33EB2FDD7736467E637E637E6310420000F739
      5525DF7BDF7BDF7BDF7BDF7BDF7B782DD21836467E637E637E6310420000F739
      5525DF7BDF7BDF7BDF7BDF7BDF7B782DD2180000292500000000000000000000
      000000000000000000000000000000002925851A861A65166516441224122412
      030E030E020A230E24122412030E230EDD773646BE6FBE6F104210001F00F739
      5525DF7BDF7BDF7BDF7BFF7BDF7B782DD2183646BE6FBE6F104210001F00F739
      5525DF7BDF7BDF7BDF7BFF7BDF7B782DD2180000000000000000000000000000
      00000000000000000000000000000000000044122412030E020AE209E2098105
      9557B5577453030EE209E209E2094412DD773646BE6FBE6F10021F001002F739
      5525DF7BDF7BDF7BDF7BFF7BDF7B782DD2183646BE6FBE6F10021F001002F739
      5525DF7BDF7BDF7BDF7BFF7BDF7B782DD2180000292500000000000000000000
      00000000000000000000000000000000292524128B2E534B524B524BAF3EDA6B
      9863365BE209030E861A09272A2BAC33DD773646DF77DF77100218631863F739
      5525DF7BDF7BFF7BFF7BFF7BDF7B782DD2183646DF77DF77100218631863F739
      5525DF7BDF7BFF7BFF7BFF7BDF7B782DD2180000000000000000000000000000
      000000000000000000000000000000000000230E230E8B2EF0426E3A9863775F
      9A6B3147A209020A000000000000000000003646DF77DF77100218631002F739
      55255A6BD95AD95AD95AD95A5A6B5525D2183646DF77DF77100218631002F739
      55255A6BD95AD95AD95AD95A5A6B5525D2180000292529252925292529252925
      292529252925292529252925292529252925030E030E030E29269863775F365B
      E209E209020A020A000000000000000000003646DF77DF771863100210421F00
      000210021863DF77B756F4390000000000003646DF77DF771863100210421F00
      000210021863DF77B756F43900000000000000002925FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F2925020A030EC4111043334FBA6B1043
      E411030E230E020A000000000000000000003646FF7FFF7FFF7F186310021002
      10021863FF7FFF7FB756163A0000000000003646FF7FFF7FFF7F186310021002
      10021863FF7FFF7FB756163A00000000000000002925FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F2925E209E411F042CF3E765B6926F042
      114705164412220A000000000000000000003646FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F36463646364636460000000000003646FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F364636463646364600000000000000002925FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F2925C105575F775F3453E209030EAB2E
      775F565B4412230A000000000000000000003646FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F3646DD36174200000000000000003646FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F3646DD36174200000000000000000000292529252925292529252925
      292529252925292529252925292529252925E209020A030E030E230E24124412
      45166516661A430E000000000000000000003646FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F36461742000000000000000000003646FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F36461742000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8226E3B8F3B8F3F8F3FB03FB043
      D043D147D147A30E000000000000000000003646364636463646364636463646
      3646364617420000000000000000000000003646364636463646364636463646
      3646364617420000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000734EAD354A29
      2925292529254A29734E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B5563C637D6B9E6B
      9E6B7D6B7D6BF95A6B2DCE39734E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F75EF75EF75EF75EF75E
      F75EF75EF75EF75E0000F75E00000000000000000000195F9E6BDE7B9C73D952
      BA4A1B5FDD7BBE777D6B113EAD35734E00000000000000000000000000000000
      000000000000FF7F104200000000000000000000FF7F00000000000000000000
      0000000000000000FF7F00000000000000000000000000000000000000000000
      000000000000000000000000F75E0000000000005C679E6FFE7F79423609971D
      BA4E78115711BA4EFE7F7E6BCF35CE3900000000000000000000000000000000
      000000000000FF7F104210420000000000000000FF7F00000000000000000000
      0000000000000000FF7F00000000000000000000F75EF75EF75EF75EF75EF75E
      E07FE07FE07FF75EF75E000000000000000000007D6BFE7FF82D3709580D984A
      FF7F5B3A370936097942FE7F7D6B6B2D734E0000000000000000000000000000
      FF7FFF7F0000FF7F104210421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000F75EF75EF75EF75EF75EF75E
      EF3DEF3DEF3DF75EF75E0000F75E000000009E73DE7BBA4A370999199915B91D
      3B3699159919781536091B5FBE73744A8C310000000000000000FF7F0000FF7F
      FF7FFF7F0000FF7F1042104210420000000000000000FF7F0000000000000000
      00000000FF7F0000000000000000000000000000000000000000000000000000
      000000000000000000000000F75EF75E0000BE73DE7B98197815B91979113936
      9E6FB91D78119919580DF829FE7F3B634A290000000000000000FF7FFF7F0000
      FF7FFF7F0000FF7F1042104210420000000000000000FF7F0000000000001863
      00000000FF7F0000000000000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75E0000F75E0000F75E0000BE737D6B78119919991979111836
      FF7FBD4A3809991999157815BE777D6B4A290000FF7FFF7FFF7FFF7FFF7FFF7F
      0000FF7F0000FF7F0000000010420000000000000000FF7F0000000000001863
      00000000FF7F0000000000000000000000000000000000000000000000000000
      0000000000000000F75E0000F75E00000000BE737E6779119919991999155811
      D952FF7F7C3E580D99157815BE777D6B4A290000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F00000000FF7F104200001042000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000F75E0000F75E0000BE73BE73BB19BA1999157811580D
      37093B63FF7FDA217911B91DDF7B7D6BAD350000FF7FFF7FFF7FFF7FFF7FFF7F
      0000FF7F0000FF7F10421042104200000000000000000000FF7F000000000000
      00000000FF7F0000000000000000000000000000000000000000FF7F00000000
      000000000000FF7F000000000000000000009E73FF7F7E369C1539369D6FFA29
      D7007A3EFF7F3B32590D7C3AFF7F1B5FB5560000000000000000FF7FFF7F0000
      FF7FFF7F0000FF7F104210421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000BE73BE77BF6F3F261B2EFD7FFF7F
      FC52FE7FFD7FDC1DDC1DBF779E6F744A00000000000000000000FF7F0000FF7F
      FF7FFF7F0000FF7F104210421042000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF7F0000
      0000000000000000FF7F000000000000000000007D6BFF7FBF67DF3ABD429D6F
      DD7B9D6F9E3E3F267F67FF7F7D6B396300000000000000000000000000000000
      FF7FFF7F0000FF7F104210421042000000000000000000000000FF7F00000000
      000000000000FF7F0000000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000BE777D6BFF7FFF7FDF637F57
      3F4B3F4B5F57DF7BFF7F7D6B3963000000000000000000000000000000000000
      FF7FFF7F00000000FF7F10421042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BE777D6B9E73FF7FFF7F
      FF7FFF7FFF7F9D6F7D6B7B6F0000000000000000000000000000000000000000
      FF7FFF7FFF7F00000000FF7F1042000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000BE73DE77BE77BE77
      BE77BE77BE77BE77BE7300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF1C000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033363336333600000000
      0000000000000000000000000000000000000000000000000000333633363336
      3336333633363336333633363336000000000000000000000000000000000000
      00000000EF1CF71D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000333633360000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000003336333600000000000000000000000000000000
      0000EF1C772EF71DF74E0000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000000008210000E951000000003336
      3336000000000000000000000000000000000000000000000000F75EFF7FF75E
      F75E584658468C318C3100003336333600000000000000000000000000000000
      EF1C772EF73EF31CEF1CF71D772E00000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F000000000000000000000821D37FD37FE951E9510000
      3336333600000000000000000000000000000000000000000000F75EFF7FBF6F
      F75EF75E584658468C310000333633360000000000000000000000000000EF1C
      772E774FF73EF73EF73E772EF31C772E0000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000000000000821D37FD37F607EE951
      0000333633360000000000000000000000000000000000000000F75EFF7FF75E
      BF6F5846F75E8C319A4600003336333600000000EF5EE74DEF5E000000000000
      F31C772E774FF71DF31CF71DF73EF31C772E000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000000000000821D37F607E607E607E
      E951000033363336000000000000000000000000000000000000F75EFF7FF75E
      BF6F5846F75E8C319A460000333633360000EF5EE74DEF5E0000000000000000
      0000F31C772EF71DF74E772EF31CF73EF71D000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000D37FFF7F607E
      607E607E00003336333600000000000000000000000000000000F75EFF7FF75E
      BF6F5846F75E8C319A4600003336333600006B4EE74D776F00000000673D0000
      00000000F31CF71D00000000772E772EF31C000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000D37FFF7F
      607E607E607E0000333633360000000000000000000000000000F75EFF7FF75E
      BF6F5846F75E8C319A460000333633360000E73DE77E676E736F0000673D673D
      000000000000F31C000000000000F31CF71D000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000000000000000000000000000D37F
      FF7F607E33363336000033363336000000000000000000000000F75EFF7FF75E
      BF6F5846F75E8C319A4600003336333600006B4E677F673DEF5E736F673D676E
      673D00000000000000000000F74EF31CF74E000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      D37F33369A469A46333600003336000000000000000000000000F75EFF7F5846
      BF6F33365846082133360000333633360000EF5EE73DE77FE74D673DE74D677F
      677F673D000000000000F74EF31CF74E0000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      0000FF7FBF6F9A469A4633360000000000000000000000000000333633363336
      33363336333633363336000033363336000000006B4EE73DE77FE77FE77FE77F
      E77F677F673D000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7F0000FF7F000000000000000000000000000000000000000000000000
      00000000FF7FBF6F9A468C7D0000000000000000000000000000000000000000
      00000000000000000000000000003336000000000000EF5E6B4EE73D6B4EF37F
      FF7FE73D0000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      000000000000BF6F737E737E000000000000000000000000F75EFF7FFF7FF75E
      F75E5846584633363336333600003336000000000000000000000000E73DFF7F
      E73D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F75E
      FF7FF75EF75E00000000000000000000000000000000000000000000E73DE73D
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000E73D0000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00E003836000000000C001BE3E00000000
      C001BF7E00000000C001BF7E00000000C001BFFE00000000C001FC1F00000000
      C001DC1D00000000C001841000000000C001DC1D00000000C001FC1F00000000
      C001BFFE00000000C001BF7E00000000C001BF7E00000000C001BE3E00000000
      C001836000000000E003FFFF00000000FFFFF001ED41FFFF8003F001C7C18003
      00018001EFC1000100018001EFC1000100018001FFC100010001800183C10001
      0001800183C100010001800183C100010001800183C100010001800183C10001
      00012001FFC1000100019003EFC100010001C007EFC100010001C40FC7C10001
      0001127FED410001800338FFFFFF8003FFFFFFFFFFFFFFFF0007FFFFFFFFFFFF
      00078001F8FFE3CF00078001F07FC18700078001E03FC00300078001C01FC003
      000F8001800FC007FFFF80018007E00F3F0180010003F00F3E0080010201F007
      360080018700E00312008001FF80C00300008001FFC0C303F2008001FFE1C787
      F6018001FFF1FFFFFF1FFFFFFFFFFFFFFFFFFC1FFC00FC00FC1FFC0100000000
      DC1DFC01000000008410FC0100000000DC1D800300000000FC1F000000000000
      BFFE000000000000FFFF000000000000BFFE000000000000FFFF001F00000000
      8000001F000700078000001F000700078000001F000700078000001F000F000F
      8000001F001F001FFFFF001F003F003FFFFFFFFFF00FFFFFFFFFC007E003FF8F
      07C18003C001FF8307C100018001FC0107C100018000E401010100010000E001
      0001000000000001000100000000000100018000000000018003C00000000001
      C107E00100000001C107E0070001E001E38FF0078001E401E38FF0038003FC01
      E38FF803C007FC01FFFFFFFFE00FFC01FFFFFFFFFFFFFFDFFFFFC7FFF003FF9F
      C00783FFE001FF0FC00780FFE001FE03C007807FE001FC01C007C03FE0018E00
      C007C01FE0011F00C007E00FE0011B98C007F007E00109DCC007F803E00100F8
      C007FC03E0010071C007FE03E001803FC00FFF03C001C07FC01FFF83C001F8FF
      C03FFFC7C003F9FFFFFFFFFFF81FFBFF00000000000000000000000000000000
      000000000000}
  end
  object padr_pop_grid: TTBXPopupMenu
    MenuAnimation = [maLeftToRight, maTopToBottom]
    Left = 534
    Top = 164
    object padr_boto_aceptar2: TTBXItem
      Action = padr_acti_aceptar
      DisplayMode = nbdmImageAndText
      ImageIndex = 7
      Images = _fMDI.imag_pequenas
    end
    object padr_boto_cancelar2: TTBXItem
      Action = padr_acti_cancelar
      DisplayMode = nbdmImageAndText
      ImageIndex = 8
      Images = _fMDI.imag_pequenas
    end
    object padr_boto_nuevo2: TTBXItem
      Action = padr_acti_nuevo
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
    object padr_boto_modificar2: TTBXItem
      Action = padr_acti_modificar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
    object padr_boto_eliminar_2: TTBXItem
      Action = padr_acti_eliminar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
    object padr_sepa_5: TTBXSeparatorItem
    end
    object padr_boto_actualizar2: TTBXItem
      Action = padr_acti_actualizar
      DisplayMode = nbdmImageAndText
      ImageIndex = 4
      Images = _fMDI.imag_pequenas
    end
    object padr_boto_llam_todo_registros2: TTBXItem
      Action = padr_acti_llam_todos
      DisplayMode = nbdmImageAndText
    end
    object padr_sepa_6: TTBXSeparatorItem
      Visible = False
    end
    object padr_boto_apli_filtro2: TTBXSubmenuItem
      Action = padr_acti_buscar
      DisplayMode = nbdmImageAndText
      ImageIndex = 32
      Images = _fMDI.imag_pequenas
    end
    object padr_boto_imprimir2: TTBXItem
      Action = padr_acti_imprimir
      DisplayMode = nbdmImageAndText
      ImageIndex = 10
      Images = _fMDI.imag_pequenas
    end
    object padr_boto_apli_mejo_ajuste2: TTBXItem
      Action = padr_acti_mejo_ajuste
      DisplayMode = nbdmImageAndText
    end
    object padr_boto_ajus_ancho2: TTBXItem
      Action = padr_acti_vertodo
      DisplayMode = nbdmImageAndText
    end
    object padr_boto_ajus_alto2: TTBXItem
      Action = padr_acti_ajus_alto
      DisplayMode = nbdmImageAndText
    end
    object padr_boto_configurar2: TTBXVisibilityToggleItem
      Caption = 'Configurar'
      Control = padr_pane_conf_vista
      DisplayMode = nbdmImageAndText
      ImageIndex = 20
      Images = _fMDI.imag_pequenas
    end
    object padr_sepa_7: TTBXSeparatorItem
    end
    object padr_boto_exportar2: TTBXSubmenuItem
      Caption = 'Exportar datos'
      DisplayMode = nbdmImageAndText
      ImageIndex = 16
      Images = _fMDI.imag_pequenas
      object padr_boto_expo_excel2: TTBXItem
        Action = padr_acti_expo_excel
        ImageIndex = 17
        Images = _fMDI.imag_pequenas
        Layout = tbxlGlyphTop
        Options = [tboToolbarStyle]
      end
      object padr_boto_expo_html2: TTBXItem
        Action = padr_acti_expo_html
        ImageIndex = 18
        Images = _fMDI.imag_pequenas
        Layout = tbxlGlyphTop
        Options = [tboToolbarStyle]
      end
      object padr_boto_expo_plano2: TTBXItem
        Action = padr_acti_expo_txt
        ImageIndex = 19
        Images = _fMDI.imag_pequenas
        Layout = tbxlGlyphTop
        Options = [tboToolbarStyle]
      end
    end
    object padr_sepa_8: TTBXSeparatorItem
    end
    object padr_boto_ayuda2: TTBXItem
      Action = padr_acti_ayuda
      DisplayMode = nbdmImageAndText
      ImageIndex = 14
      Images = _fMDI.imag_pequenas
    end
  end
  object QFirmas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_FIRMAS'
      'ORDER BY NOMB_FIRMA')
    Left = 40
    Top = 323
  end
  object QPrioridades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PRIORIDADES'
      'ORDER BY NOMB_PRIORIDAD')
    Left = 40
    Top = 355
  end
  object QEliminar_Opciones_Impresion: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'DELETE FROM SIS_USUA_OPCIONES'
      'WHERE CONS_USUA_MODULO IN('
      ' SELECT CONS_USUA_MODULO'
      ' FROM SIS_USUA_MODULOS'
      'WHERE USUARIO = :USUARIO'
      ' AND MODULO = :MODULO)')
    Left = 40
    Top = 291
    ParamData = <
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'MODULO'
        ParamType = ptUnknown
      end>
  end
  object TUsuarios_Modulos: TTable
    BeforePost = TUsuarios_ModulosBeforePost
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_USUA_MODULOS'
    Left = 80
    Top = 323
  end
  object TUsuario_Opciones: TTable
    BeforePost = TUsuario_OpcionesBeforePost
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_USUA_OPCIONES'
    Left = 80
    Top = 355
  end
  object QInformes: TQuery
    Tag = -5
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT U.USUARIO, I.CONS_USUA_INFORME, '
      ' I.NOMB_USUA_INFORME, I.FECH_SISTEMA, '
      ' I.USUA_SISTEMA'
      'FROM SIS_USUA_MODULOS U, SIS_USUA_INFORMES I '
      'WHERE U.CONS_USUA_MODULO = I.CONS_USUA_MODULO'
      ' AND UPPER(U.MODULO) = :MODULO'
      'ORDER BY I.CONS_USUA_INFORME')
    Left = 42
    Top = 396
    ParamData = <
      item
        DataType = ftString
        Name = 'MODULO'
        ParamType = ptInput
      end>
    object QInformesUSUARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUARIO'
      Origin = 'DATA_BASE_PCP.SIS_USUA_MODULOS.USUARIO'
    end
    object QInformesCONS_USUA_INFORME: TIntegerField
      DisplayLabel = 'Cons. Informe'
      FieldName = 'CONS_USUA_INFORME'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.CONS_USUA_INFORME'
    end
    object QInformesNOMB_USUA_INFORME: TStringField
      DisplayLabel = 'Informe'
      FieldName = 'NOMB_USUA_INFORME'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.NOMB_USUA_INFORME'
      Size = 100
    end
    object QInformesFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.FECH_SISTEMA'
    end
    object QInformesUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.USUA_SISTEMA'
    end
  end
  object quer_prev_fortes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT NOMB_USUA_INFORME, CONTROLES,'
      'ORDE_1, ORDE_ASCE_1, ORDE_2, ORDE_ASCE_2, ORDE_3, ORDE_ASCE_3'
      'FROM SIS_USUA_INFORMES'
      'WHERE CONS_USUA_INFORME = :CONS_USUA_INFORME')
    Left = 40
    Top = 435
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_USUA_INFORME'
        ParamType = ptInput
      end>
    object quer_prev_fortesNOMB_USUA_INFORME: TStringField
      FieldName = 'NOMB_USUA_INFORME'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.NOMB_USUA_INFORME'
      Size = 100
    end
    object quer_prev_fortesCONTROLES: TBlobField
      FieldName = 'CONTROLES'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.CONTROLES'
      BlobType = ftBlob
      Size = 80
    end
    object quer_prev_fortesORDE_1: TStringField
      FieldName = 'ORDE_1'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_1'
      Size = 60
    end
    object quer_prev_fortesORDE_ASCE_1: TIntegerField
      FieldName = 'ORDE_ASCE_1'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_ASCE_1'
    end
    object quer_prev_fortesORDE_2: TStringField
      FieldName = 'ORDE_2'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_2'
      Size = 60
    end
    object quer_prev_fortesORDE_ASCE_2: TIntegerField
      FieldName = 'ORDE_ASCE_2'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_ASCE_2'
    end
    object quer_prev_fortesORDE_3: TStringField
      FieldName = 'ORDE_3'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_3'
      Size = 60
    end
    object quer_prev_fortesORDE_ASCE_3: TIntegerField
      FieldName = 'ORDE_ASCE_3'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_ASCE_3'
    end
  end
end

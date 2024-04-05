object ffra_prod_orde_trazo: Tffra_prod_orde_trazo
  Left = 0
  Top = 0
  Width = 804
  Height = 506
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  PopupMenu = fram_pop_lotes
  TabOrder = 0
  object page: TSCLPageControl
    Left = 0
    Top = 52
    Width = 804
    Height = 454
    ActivePage = page_proceso
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Images = _fMDI.imagenesPCP
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 0
    Transparent = True
    FixedDimension = 22
    object page_proceso: TSCLTabSheet
      Color = 16578290
      ImageIndex = 44
      Caption = 'Información del proceso'
      object fram_splitter: TdfsSplitter
        Left = 0
        Top = 170
        Width = 800
        Height = 10
        Cursor = crVSplit
        Align = alTop
        MinSize = 20
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object fram_unidades: TPCPFrame
        Tag = 170
        Left = 0
        Top = 0
        Width = 800
        Height = 170
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Caption = 'Unidades de la orden de producción'
        Titulo_Color = 16244694
        BorderWidthIn = 4
        FlatBorder = True
        inline fram_orde_unidades: Tffra_prod_orde_unidades
          Left = 6
          Top = 25
          Width = 788
          Height = 139
          Align = alClient
          inherited fram_dock: TTBXDock
            Width = 788
          end
          inherited grid: TSCLColumnGrid
            Width = 788
            Height = 113
            GridLineColor = 14467501
            OnGetCellColor = fram_orde_unidadesgridGetCellColor
            SelectionColor = clHighlight
            SelectionTextColor = clHighlightText
            ScrollWidth = 16
            ShowSelection = True
          end
          inherited quer_cons_unidades: TQuery
            DataSource = data_prod_ordenes
          end
          inherited quer_elim_unidades: TQuery
            DataSource = data_prod_ordenes
          end
        end
      end
      object fram_pane_lotes: TPCPFrame
        Tag = 248
        Left = 0
        Top = 180
        Width = 800
        Height = 248
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PopupMenu = fram_pop_lotes
        TabOrder = 1
        Caption = 'Planeación de lotes (espigas) en el trazo'
        Titulo_Color = 16244694
        Boton_Visible = False
        BorderWidthIn = 4
        inline fram_mens_material: Tffra_mens_atencion
          Left = 2
          Top = 50
          Width = 796
          VertScrollBar.Visible = False
          TabOrder = 1
          inherited padr_shap_top: TShape
            Width = 796
          end
          inherited padr_shap_bottom: TShape
            Width = 796
          end
          inherited padr_shap_right: TShape
            Left = 795
          end
          inherited fram_label: TAdvPanel
            Width = 794
            Text = 
              '<IMG src="3"> Debe seleccionar un lote, uno de los materiales as' +
              'ignados a la referencia y una espiga'
            FullHeight = 18
          end
        end
        object pane_grids: TPanel
          Left = 6
          Top = 69
          Width = 788
          Height = 173
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          Visible = False
          object dfsSplitter2: TdfsSplitter
            Left = 372
            Top = 0
            Width = 5
            Height = 173
            Cursor = crHSplit
            Align = alRight
            Color = clBtnFace
            ParentColor = False
            Maximized = False
            Minimized = False
            ButtonCursor = crDefault
            ButtonColor = clBtnShadow
          end
          object grid: TSCLColumnGrid
            Left = 0
            Top = 0
            Width = 372
            Height = 173
            Cursor = crDefault
            Align = alClient
            ColCount = 4
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = 15582631
            RowCount = 5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = fram_pop_lotes
            ScrollBars = ssBoth
            ShowHint = False
            TabOrder = 0
            OnKeyDown = gridKeyDown
            OnSelectCell = gridSelectCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'MS Sans Serif'
            ActiveCellFont.Style = [fsBold]
            EnhRowColMove = False
            OnGetCellColor = gridGetCellColor
            OnGetAlignment = gridGetAlignment
            OnGridHint = gridGridHint
            OnCanEditCell = gridCanEditCell
            SortSettings.IndexShow = True
            SortSettings.NormalCellsOnly = True
            ControlLook.ControlStyle = csTheme
            EnableHTML = False
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
            FixedColWidth = 100
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
              'Color'
              'Capas'
              'Capas'
              'Largo')
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
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'Color'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'NOMB_COLOR'
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
                Width = 100
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
                Header = 'Capas'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'CONS_REFE_COLOR'
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
                Color = clWhite
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edPositiveNumeric
                FilterCaseSensitive = False
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'Capas'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'CAPAS'
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
                Width = 54
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = 15658734
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'Largo'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'LARGO'
                Password = False
                PrintBorders = []
                PrintColor = clWhite
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                ReadOnly = True
                ShowBands = False
                SortStyle = ssAutomatic
                SpinMax = 0
                SpinMin = 0
                SpinStep = 1
                Tag = 0
                Width = 56
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
              100
              0
              54
              56)
            RowHeights = (
              19
              20
              20
              20
              20)
          end
          object grid_unidades: TSCLColumnGrid
            Left = 377
            Top = 0
            Width = 411
            Height = 173
            Cursor = crDefault
            Align = alRight
            ColCount = 3
            DefaultColWidth = 40
            DefaultRowHeight = 20
            FixedColor = 15582631
            RowCount = 5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = pop_unidades
            ScrollBars = ssBoth
            ShowHint = False
            TabOrder = 1
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'MS Sans Serif'
            ActiveCellFont.Style = [fsBold]
            EnhRowColMove = False
            OnGetCellColor = grid_unidadesGetCellColor
            OnGetAlignment = gridGetAlignment
            OnCanEditCell = grid_unidadesCanEditCell
            SortSettings.IndexShow = True
            SortSettings.NormalCellsOnly = True
            ControlLook.ControlStyle = csTheme
            EnableHTML = False
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
            SelectionRectangle = True
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
            FixedColWidth = 100
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
              'Color')
            ShowSelection = False
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
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'Color'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'NOMB_COLOR'
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
                Width = 100
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
                Name = 'CONS_REFE_COLOR'
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
                Color = 15658734
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
                Name = 'LARGO'
                Password = False
                PrintBorders = []
                PrintColor = clWhite
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'Tahoma'
                PrintFont.Style = []
                ReadOnly = True
                ShowBands = False
                SortStyle = ssAutomatic
                SpinMax = 0
                SpinMin = 0
                SpinStep = 1
                Tag = 0
                Width = 0
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
              100
              0
              0)
            RowHeights = (
              19
              20
              20
              20
              20)
          end
        end
        object padr_page_lotes: TSCLPageControl
          Left = 2
          Top = 25
          Width = 796
          Height = 25
          ActivePage = dxTabSheet1
          Align = alTop
          BoldCurrentTab = True
          Color = 16578290
          FlatColor = 10435335
          Margin = 5
          ParentColor = False
          TabColors.Shadow = 15582631
          TabColors.Unselected = 16578290
          TabIndex = 0
          TabOrder = 3
          Transparent = True
          Visible = False
          OnChange = padr_page_lotesChange
          OnChanging = padr_page_lotesChanging
          FixedDimension = 19
          object dxTabSheet1: TSCLTabSheet
            Color = 16578290
            Caption = 'dxTabSheet1'
          end
        end
      end
    end
    object page_avance: TSCLTabSheet
      Color = 16578290
      ImageIndex = 45
      Caption = 'Avance'
      inline fram_avance: Tffra_prod_resp_lote_proceso
        Top = 19
        Width = 800
        Height = 409
        inherited pane_arriba: TPanel
          Width = 800
          inherited SCLDBLabel1: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel2: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel3: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel4: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel5: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited edit_avance: TJvTracker
            Width = 389
          end
          inherited pane_finalizacion: TPanel
            inherited SCLDBLabel6: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
          end
        end
        inherited pane_observaciones: TPanel
          Width = 800
          Height = 263
          inherited PCPFrame1: TPCPFrame
            Tag = 263
            Width = 1203
            Height = 263
            inherited dxDBMemo1: TdxDBMemo
              Width = 1189
              Height = 230
            end
          end
        end
        inherited TBXDock1: TTBXDock
          Width = 800
        end
        inherited pane_seleccion: TPanel
          Width = 800
          inherited fram_lote: Tffra_prod_sele_lote
            Width = 800
            inherited padr_labe_nume_lote: TSCLDBLabel
              FontActive.Name = 'Tahoma'
            end
          end
        end
      end
      inline fram_nume_lote: Tffra_mens_atencion
        Width = 800
        VertScrollBar.Visible = False
        TabOrder = 1
        inherited padr_shap_top: TShape
          Width = 800
        end
        inherited padr_shap_bottom: TShape
          Width = 800
        end
        inherited padr_shap_right: TShape
          Left = 799
        end
        inherited fram_label: TAdvPanel
          Width = 798
          Text = 'Número de lote:'
          FullHeight = 15
          inherited data_label: TDBText
            Left = 88
            Width = 60
            DataField = 'nume_lote'
            DataSource = myData_Ventana
            Font.Style = [fsBold]
            ParentFont = False
            Visible = True
          end
        end
      end
    end
    object page_tota_lote: TSCLTabSheet
      Color = 16578290
      ImageIndex = 43
      Caption = 'Totales por lote'
      OnShow = doActualizarPageTotales
      object scro_tota_lotes: TScrollBox
        Left = 0
        Top = 19
        Width = 800
        Height = 409
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
      end
      inline pane_material: Tffra_mens_atencion
        Width = 800
        VertScrollBar.Visible = False
        TabOrder = 1
        inherited padr_shap_top: TShape
          Width = 800
        end
        inherited padr_shap_bottom: TShape
          Width = 800
        end
        inherited padr_shap_right: TShape
          Left = 799
        end
        inherited fram_label: TAdvPanel
          Width = 798
          Text = 'Material:'
          FullHeight = 15
          inherited data_label: TDBText
            Left = 52
            Width = 60
            DataField = 'NOMB_MATE_REFERENCIA'
            DataSource = fram_refe_material.data_refe_materiales
            Font.Style = [fsBold]
            ParentFont = False
            Visible = True
          end
        end
      end
    end
  end
  object fram_dock_lotes: TTBXDock
    Left = 0
    Top = 0
    Width = 804
    Height = 52
    object fram_tool_lotes: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 0
      DockRow = 1
      DragHandleStyle = dhNone
      FullSize = True
      ParentShowHint = False
      ProcessShortCuts = True
      ShowHint = True
      TabOrder = 0
      Color = clBtnFace
      object fram_cont_lote_refe_material: TTBControlItem
        Control = fram_refe_material
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object TBControlItem1: TTBControlItem
        Control = fram_lote
      end
      object TBXItem8: TTBXItem
        Action = acti_lote_nuevo
        ImageIndex = 0
        Images = _fMDI.imagenesPCP
      end
      object TBXItem7: TTBXItem
        Action = acti_lote_eliminar
        ImageIndex = 2
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object TBControlItem2: TTBControlItem
        Control = fram_espigas
      end
      object TBXItem3: TTBXItem
        Action = acti_nuev_espiga
        ImageIndex = 0
        Images = _fMDI.imagenesPCP
      end
      object TBXItem2: TTBXItem
        Action = acti_elim_espiga
        ImageIndex = 2
        Images = _fMDI.imagenesPCP
      end
      inline fram_espigas: Tffra_prod_sele_espiga
        Left = 638
        Width = 141
        Height = 22
        Color = 14609903
        ParentColor = False
        TabOrder = 2
        inherited padr_labe_nume_lote: TSCLDBLabel
          Top = 0
          Width = 70
          ColorActive = 14609903
          FontActive.Name = 'Tahoma'
        end
        inherited comb_espiga: TPCPLookUpComboEdit
          Left = 76
          Top = 0
          Ctl3D = True
          DataField = 'cons_prod_espiga'
          DataSource = myData_Ventana
          OnChange = fram_espigascomb_espigaChange
        end
        inherited quer_espigas: TQuery
          DataSource = myData_Ventana
        end
      end
      inline fram_refe_material: Tffra_refe_material
        Width = 475
        Height = 22
        Color = 14609903
        ParentColor = False
        inherited SCLDBLabel5: TSCLDBLabel
          Left = 0
          Top = 0
          Width = 74
          ColorActive = 14609903
          FontActive.Name = 'Tahoma'
        end
        inherited SCLDBLabel7: TSCLDBLabel
          Left = 201
          Top = 0
          Width = 48
          ColorActive = 14609903
          FontActive.Name = 'Tahoma'
        end
        inherited fram_comb_codi_material: TPCPLookUpComboEdit
          Left = 76
          Top = 0
          Width = 121
          Ctl3D = True
          DataField = 'cons_refe_material'
          DataSource = myData_Ventana
          OnChange = fram_refe_materialfram_comb_codi_materialChange
        end
        inherited fram_comb_nomb_material: TPCPLookUpComboEdit
          Left = 251
          Top = 0
          Width = 222
          Ctl3D = True
          DataField = 'cons_refe_material'
          DataSource = myData_Ventana
          OnChange = fram_refe_materialfram_comb_codi_materialChange
        end
      end
      inline fram_lote: Tffra_prod_sele_lote
        Left = 481
        Width = 105
        Height = 21
        Color = 14609903
        ParentColor = False
        TabOrder = 1
        inherited padr_labe_nume_lote: TSCLDBLabel
          Top = 0
          Width = 36
          ColorActive = 14609903
          FontActive.Name = 'Tahoma'
        end
        inherited comb_nume_lote: TPCPLookUpComboEdit
          Left = 39
          Top = 0
          Width = 66
          Ctl3D = True
          DataField = 'cons_prod_lote'
          DataSource = myData_Ventana
          OnChange = doActualizarLote
        end
        inherited quer_lotes: TQuery
          DataSource = myData_Ventana
          Top = 16
          ParamData = <
            item
              DataType = ftInteger
              Name = 'cons_prod_orden'
              ParamType = ptInput
            end>
        end
        inherited data_lotes: TDataSource
          Top = 16
        end
      end
    end
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 26
      BorderStyle = bsNone
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 0
      DockRow = 2
      DragHandleStyle = dhNone
      FullSize = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Color = clBtnFace
      object TBXSeparatorItem5: TTBXSeparatorItem
      end
      object TBXItem5: TTBXItem
        Action = acti_guardar
        DisplayMode = nbdmImageAndText
        ImageIndex = 5
        Images = _fMDI.imagenesPCP
      end
      object TBXItem4: TTBXItem
        Action = acti_cancelar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem7: TTBXSeparatorItem
      end
      object fram_boto_lote_volv_llamar: TTBXItem
        Caption = 'Volver a llamar'
        ImageIndex = 11
        Images = _fMDI.imag_varias
        OnClick = doLlamarEspigas
      end
      object TBXItem10: TTBXItem
        Action = acti_sugerir
        ImageIndex = 72
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem8: TTBXSeparatorItem
      end
      object TBXSubmenuItem1: TTBXSubmenuItem
        Action = acti_impr_todo
        DropdownCombo = True
        ImageIndex = 10
        Images = _fMDI.imagenesPCP
        SubMenuImages = _fMDI.imagenesPCP
        object TBXItem1: TTBXItem
          Action = acti_impr_todo
          ImageIndex = 10
        end
        object TBXItem20: TTBXItem
          Action = acti_impr_espigas
        end
        object TBXItem19: TTBXItem
          Action = acti_impr_form_liqu_unid_cortadas
        end
      end
      object TBXItem6: TTBXItem
        Action = acti_ver_totales
        ImageIndex = 43
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem6: TTBXSeparatorItem
      end
      object TBControlItem4: TTBControlItem
        Control = fram_labe_consumo
      end
      object TBControlItem5: TTBControlItem
        Control = edit_consumo
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object TBControlItem3: TTBControlItem
        Control = fram_aten_lote_finalizado
      end
      object fram_labe_consumo: TSCLDBLabel
        Left = 257
        Top = 0
        Width = 58
        Height = 21
        Alive = False
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'Tahoma'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Consumo:'
        Transparent = True
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      inline fram_aten_lote_finalizado: Tffra_mens_atencion
        Left = 363
        Width = 216
        Height = 22
        Align = alNone
        Visible = False
        inherited padr_shap_top: TShape
          Width = 216
        end
        inherited padr_shap_bottom: TShape
          Top = 21
          Width = 216
        end
        inherited padr_shap_right: TShape
          Left = 215
          Height = 20
        end
        inherited padr_shap_left: TShape
          Height = 20
        end
        inherited fram_label: TAdvPanel
          Width = 214
          Height = 20
          Cursor = crHandPoint
          OnClick = fram_aten_lote_finalizadofram_labelClick
          Text = '<IMG src="3"> Este lote está marcado como finalizado'
          FullHeight = 18
        end
      end
      object edit_consumo: TdxDBCurrencyEdit
        Left = 315
        Top = 0
        Width = 42
        Enabled = False
        TabOrder = 1
        Alignment = taRightJustify
        DataField = 'CONSUMO'
        DataSource = fram_refe_material.data_refe_materiales
        DisplayFormat = ',0.00'
        Nullable = False
        StoredValues = 1
      end
    end
  end
  object grid_impresion: TSCLColumnGrid
    Left = 704
    Top = 112
    Width = 400
    Height = 120
    Cursor = crDefault
    ColCount = 5
    Ctl3D = False
    DefaultRowHeight = 21
    FixedColor = 15582631
    RowCount = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    Visible = False
    GridLineColor = 14467501
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'MS Sans Serif'
    ActiveCellFont.Style = [fsBold]
    EnhRowColMove = False
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
    FixedColWidth = 50
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    FloatFormat = '%.2f'
    WordWrap = False
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
        Fixed = False
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
        Width = 50
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
        Fixed = False
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
        Width = 50
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
        Fixed = False
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
        Width = 50
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
        Fixed = False
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
        Width = 50
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
        Fixed = False
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
        Width = 50
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
      50
      50
      50
      50
      50)
  end
  object grid_repo_espigas: TSCLColumnGrid
    Left = 520
    Top = 112
    Width = 353
    Height = 121
    Cursor = crDefault
    ColCount = 4
    DefaultColWidth = 40
    DefaultRowHeight = 20
    FixedColor = 15582631
    RowCount = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
    ParentFont = False
    ParentShowHint = False
    PopupMenu = fram_pop_lotes
    ScrollBars = ssBoth
    ShowHint = False
    TabOrder = 3
    Visible = False
    OnDblClick = grid_repo_espigasDblClick
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'MS Sans Serif'
    ActiveCellFont.Style = [fsBold]
    EnhRowColMove = False
    SortSettings.IndexShow = True
    SortSettings.NormalCellsOnly = True
    ControlLook.ControlStyle = csTheme
    EnableHTML = False
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
    FixedColWidth = 100
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
      'Color'
      'Capas'
      'Capas'
      'Largo')
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
        Fixed = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Color'
        HeaderAlignment = taLeftJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Name = 'NOMB_COLOR'
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
        Width = 100
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
        Header = 'Capas'
        HeaderAlignment = taLeftJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Name = 'CONS_REFE_COLOR'
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
        Color = clWhite
        ColumnPopupType = cpFixedCellsRClick
        DropDownCount = 8
        EditLength = 0
        Editor = edPositiveNumeric
        FilterCaseSensitive = False
        Fixed = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Capas'
        HeaderAlignment = taLeftJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Name = 'CAPAS'
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
        Width = 54
      end
      item
        AutoMinSize = 0
        AutoMaxSize = 0
        Alignment = taRightJustify
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = 15658734
        ColumnPopupType = cpFixedCellsRClick
        DropDownCount = 8
        EditLength = 0
        Editor = edNormal
        FilterCaseSensitive = False
        Fixed = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Largo'
        HeaderAlignment = taLeftJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Name = 'LARGO'
        Password = False
        PrintBorders = []
        PrintColor = clWhite
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        ReadOnly = True
        ShowBands = False
        SortStyle = ssAutomatic
        SpinMax = 0
        SpinMin = 0
        SpinStep = 1
        Tag = 0
        Width = 56
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
      100
      0
      54
      56)
    RowHeights = (
      19
      20
      20
      20
      20)
  end
  object tabl_prod_ordenes: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'PCP_PROD_ORDENES'
    Left = 643
    Top = 34
  end
  object data_prod_ordenes: TDataSource
    AutoEdit = False
    DataSet = tabl_prod_ordenes
    OnDataChange = data_prod_ordenesDataChange
    Left = 683
    Top = 34
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_refe_material'
        DataType = ftInteger
      end
      item
        Name = 'cons_prod_orden'
        DataType = ftInteger
      end
      item
        Name = 'cons_proceso'
        DataType = ftInteger
      end
      item
        Name = 'nume_lote'
        DataType = ftInteger
      end
      item
        Name = 'cons_prod_espiga'
        DataType = ftInteger
      end
      item
        Name = 'cons_prod_lote'
        DataType = ftInteger
      end>
    AfterInsert = myTabla_VentanaAfterInsert
    Left = 833
    Top = 33
    object myTabla_Ventanacons_refe_material: TIntegerField
      FieldName = 'cons_refe_material'
    end
    object myTabla_Ventanacons_prod_orden: TIntegerField
      FieldName = 'cons_prod_orden'
    end
    object myTabla_Ventanacons_proceso: TIntegerField
      FieldName = 'cons_proceso'
    end
    object myTabla_Ventananume_lote: TIntegerField
      FieldName = 'nume_lote'
    end
    object myTabla_Ventanacons_prod_espiga: TIntegerField
      FieldName = 'cons_prod_espiga'
    end
    object myTabla_Ventanacons_prod_lote: TIntegerField
      FieldName = 'cons_prod_lote'
    end
  end
  object myData_Ventana: TDataSource
    DataSet = myTabla_Ventana
    Left = 865
    Top = 33
  end
  object quer_inse_espiga: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Insert into pcp_prod_espigas'
      '(cons_prod_lote, cons_refe_material, cons_proceso)'
      'Values'
      '(:cons_prod_lote, :cons_refe_material, :cons_proceso)'
      ' ')
    Left = 36
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_refe_material'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_proceso'
        ParamType = ptInput
      end>
  end
  object acti_espigas: TActionList
    Left = 316
    Top = 280
    object acti_nuev_espiga: TAction
      Caption = 'Nueva espiga'
      ShortCut = 24654
      OnExecute = acti_nuev_espigaExecute
      OnUpdate = acti_nuev_espigaUpdate
    end
    object acti_elim_espiga: TAction
      Caption = 'Eliminar espiga'
      ShortCut = 24645
      OnExecute = acti_elim_espigaExecute
      OnUpdate = acti_elim_espigaUpdate
    end
    object acti_cancelar: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      ImageIndex = 8
      ShortCut = 16449
      OnExecute = acti_cancelarExecute
      DataSource = data_guardar
    end
    object acti_guardar: TDataSetPost
      Category = 'Dataset'
      Caption = 'Guardar'
      Hint = 'Post'
      ImageIndex = 7
      ShortCut = 16455
      OnExecute = acti_guardarExecute
      DataSource = data_guardar
    end
    object acti_ver_totales: TAction
      Caption = 'Ver totales del lote'
      Enabled = False
      OnExecute = acti_ver_totalesExecute
      OnUpdate = acti_ver_totalesUpdate
    end
    object acti_lote_nuevo: TAction
      Category = 'Lotes'
      Caption = 'Nuevo lote'
      ShortCut = 16462
      OnExecute = acti_lote_nuevoExecute
      OnUpdate = acti_lote_nuevoUpdate
    end
    object acti_lote_eliminar: TAction
      Category = 'Lotes'
      Caption = 'Eliminar lote'
      ShortCut = 16453
      OnExecute = acti_lote_eliminarExecute
      OnUpdate = acti_lote_eliminarUpdate
    end
    object acti_sugerir: TAction
      Caption = 'Sugerir tallas en la espiga'
      ShortCut = 16467
      OnExecute = acti_sugerirExecute
    end
    object acti_impr_todo: TAction
      Category = 'Imprimir'
      Caption = 'Imprimir orden de corte (unidades)'
      OnExecute = acti_impr_todoExecute
      OnUpdate = acti_impr_todoUpdate
    end
    object acti_impr_form_liqu_unid_cortadas: TAction
      Category = 'Imprimir'
      Caption = 'Formato liquidación de unidades cortadas'
      OnExecute = acti_impr_form_liqu_unid_cortadasExecute
    end
    object acti_impr_espigas: TAction
      Category = 'Imprimir'
      Caption = 'Imprimir orden de corte (espigas)'
      OnExecute = acti_impr_espigasExecute
    end
  end
  object quer_elim_espiga: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Delete from pcp_prod_espigas'
      'where cons_prod_espiga = :cons_prod_espiga'
      ' ')
    Left = 68
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_espiga'
        ParamType = ptUnknown
      end>
  end
  object tabl_guardar: TRxMemoryData
    FieldDefs = <
      item
        Name = 'myField'
        DataType = ftInteger
      end>
    BeforePost = tabl_guardarBeforePost
    AfterCancel = tabl_guardarAfterCancel
    Left = 524
    Top = 360
  end
  object data_guardar: TDataSource
    DataSet = tabl_guardar
    OnStateChange = data_guardarStateChange
    Left = 556
    Top = 360
  end
  object quer_dele_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Delete'
      'FROM PCP_PROD_UNIDADES'
      'WHERE CONS_PROD_ESPIGA = :CONS_PROD_ESPIGA'
      '')
    Left = 92
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_espiga'
        ParamType = ptUnknown
      end>
  end
  object quer_sele_capas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Select cons_refe_color, capas'
      'from pcp_prod_capas'
      'where cons_prod_espiga = :cons_prod_espiga'
      'order by cons_refe_color')
    Left = 28
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_espiga'
        ParamType = ptInput
      end>
  end
  object quer_dele_capas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Delete'
      'from pcp_prod_capas'
      'where cons_prod_espiga = :cons_prod_espiga'
      '')
    Left = 28
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_espiga'
        ParamType = ptInput
      end>
  end
  object quer_inse_capas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert into pcp_prod_capas'
      '(cons_prod_espiga, cons_refe_color, capas)'
      'Values'
      '(:cons_prod_espiga, :cons_refe_color, :capas)')
    Left = 60
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_espiga'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_refe_color'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'capas'
        ParamType = ptInput
      end>
  end
  object quer_sele_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Select CONS_REFE_COLOR, CONS_GRUP_TALL_DETALLE,'
      'CANT_TALLAS'
      'FROM PCP_PROD_UNIDADES'
      'WHERE CONS_PROD_ESPIGA = :CONS_PROD_ESPIGA'
      'ORDER BY CONS_REFE_COLOR, CONS_GRUP_TALL_DETALLE')
    Left = 92
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_espiga'
        ParamType = ptUnknown
      end>
  end
  object quer_inse_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Insert into PCP_PROD_UNIDADES'
      '(cons_prod_espiga, cons_refe_color, cons_grup_tall_detalle,'
      'cant_tallas, cant_unidades)'
      'Values'
      '(:cons_prod_espiga, :cons_refe_color, :cons_grup_tall_detalle,'
      ':cant_tallas, :cant_unidades)'
      ''
      ' ')
    Left = 124
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_espiga'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_refe_color'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_grup_tall_detalle'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cant_tallas'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cant_unidades'
        ParamType = ptInput
      end>
  end
  object quer_lote_nuevo: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_prod_ordenes
    SQL.Strings = (
      'Insert into '
      'PCP_PROD_LOTES'
      '(cons_prod_orden)'
      'values'
      '(:cons_prod_orden)')
    Left = 4
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_orden'
        ParamType = ptUnknown
      end>
  end
  object quer_lote_eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Delete from'
      'PCP_PROD_LOTES'
      'where cons_prod_lote = :cons_prod_lote')
    Left = 36
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end>
  end
  object quer_lote_totales: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_prod_ordenes
    SQL.Strings = (
      'SELECT  CONS_PROD_LOTE, '
      'CAST(NUME_LOTE AS Varchar(12)) AS NUME_LOTE,'
      'CANT_PAQU_CORTE, CANT_PAQU_CORT_AGRUPAR,'
      'CAPA_SIMULACION'
      'FROM PCP_PROD_LOTES'
      'WHERE CONS_PROD_ORDEN = :CONS_PROD_ORDEN'
      'ORDER BY NUME_LOTE')
    Left = 896
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptInput
      end>
  end
  object acti_tabs: TActionList
    Left = 168
    Top = 436
  end
  object fram_pop_lotes: TTBXPopupMenu
    Left = 352
    Top = 396
    object TBXItem17: TTBXItem
      Action = acti_lote_nuevo
      ImageIndex = 0
      Images = _fMDI.imagenesPCP
    end
    object TBXItem18: TTBXItem
      Action = acti_lote_eliminar
      ImageIndex = 2
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem12: TTBXSeparatorItem
    end
    object TBXItem9: TTBXItem
      Action = acti_nuev_espiga
      ImageIndex = 0
      Images = _fMDI.imagenesPCP
    end
    object TBXItem11: TTBXItem
      Action = acti_elim_espiga
      ImageIndex = 2
      Images = _fMDI.imagenesPCP
    end
    object TBXItem12: TTBXItem
      Action = acti_sugerir
      ImageIndex = 72
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem9: TTBXSeparatorItem
    end
    object TBXItem13: TTBXItem
      Action = acti_guardar
      DisplayMode = nbdmImageAndText
      ImageIndex = 5
      Images = _fMDI.imagenesPCP
    end
    object TBXItem14: TTBXItem
      Action = acti_cancelar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem10: TTBXSeparatorItem
    end
    object TBXItem15: TTBXItem
      Caption = 'Volver a llamar'
      ImageIndex = 11
      Images = _fMDI.imag_varias
      OnClick = doLlamarEspigas
    end
    object TBXSeparatorItem11: TTBXSeparatorItem
    end
    object TBXItem16: TTBXItem
      Action = acti_ver_totales
      ImageIndex = 43
      Images = _fMDI.imagenesPCP
    end
  end
  object tabl_lotes: TRxMemoryData
    FieldDefs = <>
    Left = 772
    Top = 233
  end
  object quer_faltantes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Select cons_refe_color, cons_grup_tall_detalle,'
      'sum(cant_unidades) as cant_unidades'
      'from vis_pcp_prod_unid_completo'
      'where cons_prod_orden = :cons_prod_orden'
      'and cons_refe_material = :cons_refe_material'
      'and cons_prod_espiga <> :cons_prod_espiga'
      'group by cons_refe_color, cons_grup_tall_detalle')
    Left = 104
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cons_refe_material'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'cons_prod_espiga'
        ParamType = ptUnknown
      end>
  end
  object quer_upda_capa_simulacion: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'UPDATE PCP_PROD_ESPIGAS'
      'SET CAPA_SIMULACION = :CAPA_SIMULACION'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'AND CONS_REFE_MATERIAL = :CONS_REFE_MATERIAL'
      'AND CONS_PROCESO = :CONS_PROCESO'
      ''
      ' ')
    Left = 24
    Top = 468
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CAPA_SIMULACION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_REFE_MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PROCESO'
        ParamType = ptInput
      end>
  end
  object tabl_info_detalle: TTable
    DatabaseName = 'PCPLocal'
    TableName = 'tmp_prod_orde_traz_detalle'
    Left = 1070
    Top = 117
    object tabl_info_detalleCONS_PROD_LOTE: TIntegerField
      FieldName = 'CONS_PROD_LOTE'
    end
    object tabl_info_detalleCONS_PROD_ESPIGA: TIntegerField
      FieldName = 'CONS_PROD_ESPIGA'
    end
    object tabl_info_detalleCONS_REGISTRO: TIntegerField
      FieldName = 'CONS_REGISTRO'
    end
    object tabl_info_detalleNOMB_COLOR: TStringField
      FieldName = 'NOMB_COLOR'
      Size = 60
    end
    object tabl_info_detalleTALL1: TStringField
      DisplayWidth = 20
      FieldName = 'TALL1'
      Size = 10
    end
    object tabl_info_detalleTALL2: TStringField
      FieldName = 'TALL2'
    end
    object tabl_info_detalleTALL3: TStringField
      FieldName = 'TALL3'
    end
    object tabl_info_detalleTALL4: TStringField
      FieldName = 'TALL4'
    end
    object tabl_info_detalleTALL5: TStringField
      FieldName = 'TALL5'
    end
    object tabl_info_detalleTALL6: TStringField
      FieldName = 'TALL6'
    end
    object tabl_info_detalleTALL7: TStringField
      FieldName = 'TALL7'
    end
    object tabl_info_detalleTALL8: TStringField
      FieldName = 'TALL8'
    end
    object tabl_info_detalleTALL9: TStringField
      FieldName = 'TALL9'
    end
    object tabl_info_detalleTALL10: TStringField
      FieldName = 'TALL10'
    end
    object tabl_info_detalleTALL11: TStringField
      FieldName = 'TALL11'
    end
    object tabl_info_detalleTALL12: TStringField
      FieldName = 'TALL12'
    end
    object tabl_info_detalleTALL13: TStringField
      FieldName = 'TALL13'
    end
    object tabl_info_detalleTALL14: TStringField
      FieldName = 'TALL14'
    end
    object tabl_info_detalleTALL15: TStringField
      FieldName = 'TALL15'
    end
    object tabl_info_detalleTALL16: TStringField
      FieldName = 'TALL16'
    end
    object tabl_info_detalleTALL17: TStringField
      FieldName = 'TALL17'
      Size = 10
    end
    object tabl_info_detalleTALL18: TStringField
      FieldName = 'TALL18'
    end
    object tabl_info_detalleTOTAL: TStringField
      FieldName = 'TOTAL'
    end
  end
  object tabl_informe: TTable
    DatabaseName = 'PCPLocal'
    TableName = 'tmp_prod_orde_trazo'
    Left = 1041
    Top = 117
    object tabl_informecons_prod_lote: TIntegerField
      FieldName = 'cons_prod_lote'
    end
    object tabl_informeNOMB_PROD_LOTE: TStringField
      FieldName = 'NOMB_PROD_LOTE'
      Size = 60
    end
    object tabl_informeUNIDADES: TStringField
      FieldName = 'UNIDADES'
    end
  end
  object quer_repo_sele_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select CONS_REFE_COLOR, CONS_GRUP_TALL_DETALLE,'
      'CANT_TALLAS'
      'FROM PCP_PROD_UNIDADES'
      'WHERE CONS_PROD_ESPIGA = :CONS_PROD_ESPIGA'
      'ORDER BY CONS_REFE_COLOR, CONS_GRUP_TALL_DETALLE')
    Left = 996
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_espiga'
        ParamType = ptInput
      end>
  end
  object quer_repo_espigas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT DISTINCT CONS_PROD_ESPIGA,'
      'CAST(NUME_ESPIGA AS VARCHAR(12)) AS NUME_ESPIGA,'
      'CAPA_SIMULACION'
      'FROM PCP_PROD_ESPIGAS'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'AND CONS_REFE_MATERIAL = :CONS_REFE_MATERIAL'
      'AND CONS_PROCESO = :CONS_PROCESO'
      'ORDER BY NUME_ESPIGA')
    Left = 1032
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_REFE_MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PROCESO'
        ParamType = ptInput
      end>
  end
  object tabl_info_espigas: TTable
    DatabaseName = 'PCPLocal'
    TableName = 'tmp_prod_orde_traz_espigas'
    Left = 1041
    Top = 145
    object tabl_info_espigascons_prod_lote: TIntegerField
      FieldName = 'cons_prod_lote'
    end
    object tabl_info_espigascons_prod_espiga: TIntegerField
      FieldName = 'cons_prod_espiga'
    end
    object tabl_info_espigasnomb_prod_espiga: TStringField
      FieldName = 'nomb_prod_espiga'
      Size = 60
    end
    object tabl_info_espigasnomb_prod_lote: TStringField
      FieldName = 'nomb_prod_lote'
      Size = 60
    end
  end
  object quer_repo_Sele_Capas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_refe_color, capas'
      'from pcp_prod_capas'
      'where cons_prod_espiga = :cons_prod_espiga'
      'order by cons_refe_color')
    Left = 964
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_espiga'
        ParamType = ptInput
      end>
  end
  object pop_unidades: TTBXPopupMenu
    Left = 968
    Top = 380
    object chec_unid_diferencia: TTBXItem
      AutoCheck = True
      Caption = 'Ver diferencia de unidades'
      Checked = True
      GroupIndex = 121
      MaskOptions = [tboDefault]
      Options = [tboDefault]
      OnClick = doHacerCalculos
    end
    object chec_unid_loteadas: TTBXItem
      AutoCheck = True
      Caption = 'Ver unidades loteadas'
      GroupIndex = 121
      OnClick = doHacerCalculos
    end
  end
  object tabl_auxi_impresion: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'cons_tabla'
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
    Left = 193
    Top = 38
    object tabl_auxi_impresioncons_tabla: TIntegerField
      FieldName = 'cons_tabla'
    end
    object tabl_auxi_impresionnomb_tabla: TStringField
      FieldName = 'nomb_tabla'
      Size = 60
    end
  end
end

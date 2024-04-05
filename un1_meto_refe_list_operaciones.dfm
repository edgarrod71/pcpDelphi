inherited fn1_meto_refe_list_operaciones: Tfn1_meto_refe_list_operaciones
  Left = 69
  Top = 108
  Width = 812
  Height = 542
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 505
    Width = 804
  end
  object pane_importar: TToolWindow97 [2]
    Left = 112
    Top = 32
    Caption = 'Importar operaciones'
    ClientAreaHeight = 391
    ClientAreaWidth = 649
    TabOrder = 8
    Visible = False
    OnVisibleChanged = pane_importarVisibleChanged
    object page_importar: TSCLPageControl
      Left = 0
      Top = 26
      Width = 649
      Height = 365
      ActivePage = page_impo_referencia
      ActivePageDefault = page_impo_referencia
      Align = alClient
      BoldCurrentTab = True
      Color = 16578290
      FlatColor = 10435335
      Margin = 5
      ParentColor = False
      TabColors.Shadow = 15582631
      TabColors.Unselected = 16578290
      TabIndex = 0
      TabOrder = 1
      Transparent = True
      FixedDimension = 19
      object page_impo_referencia: TSCLTabSheet
        Color = 16578290
        Caption = 'Desde otra referencia'
        object dfsSplitter3: TdfsSplitter
          Left = 0
          Top = 153
          Width = 645
          Height = 10
          Cursor = crVSplit
          Align = alTop
          MinSize = 1
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object padr_grid: TdxDBGrid
          Left = 0
          Top = 0
          Width = 645
          Height = 153
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_REFE_VARIACION'
          ShowGroupPanel = True
          SummaryGroups = <
            item
              DefaultGroup = False
              SummaryItems = <>
              Name = 'padr_summary_grid'
            end
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryFormat = '0'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          SummarySeparator = ', '
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = data_importar
          Filter.CaseInsensitive = True
          Filter.Criteria = {00000000}
          GridLineColor = 14737632
          GroupPanelFontColor = clWhite
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMouseScroll, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          ShowRowFooter = True
          OnChangeNode = padr_gridChangeNode
          object padr_gridCONS_REFE_VARIACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_VARIACION'
          end
          object padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFERENCIA'
          end
          object padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Sorted = csUp
            Width = 116
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFERENCIA'
          end
          object padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 382
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFERENCIA'
          end
          object padr_gridCONS_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 82
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_TIPO_VARIACION'
          end
          object padr_gridCODI_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_TIPO_VARIACION'
          end
          object padr_gridNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 145
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TIPO_VARIACION'
          end
        end
        object Grid_Importar: TSCLColumnGrid
          Left = 0
          Top = 163
          Width = 645
          Height = 179
          Cursor = crDefault
          Align = alClient
          ColCount = 16
          DefaultRowHeight = 19
          FixedColor = 15582631
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 1
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'MS Sans Serif'
          ActiveCellFont.Style = [fsBold]
          EnhRowColMove = False
          OnCustomCellDraw = gridCustomCellDraw
          OnGetCellColor = gridGetCellColor
          OnGetAlignment = gridGetAlignment
          ControlLook.ControlStyle = csFlat
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
          HintShowCells = True
          HintShowLargeText = True
          HintShowSizing = True
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
          SizeWhileTyping.Height = True
          MouseActions.AllSelect = True
          MouseActions.RowSelect = True
          MouseActions.SizeFixedCol = True
          FixedColWidth = 24
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
            'No.'
            'T'
            'PR'
            'CO'
            'OP'
            'Código'
            'Operación'
            'F'
            'Máquina'
            'Ajuste'
            'P.P.C.'
            'R.P.M.'
            'Tiempo'
            'P.H.'
            'Valor')
          Filter = <>
          Version = '3.0.0.10'
          AutoFilterUpdate = True
          AutoFilterDisplay = True
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
              Font.Color = clBtnFace
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'No.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridNUMERO'
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
              Width = 24
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taCenter
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'S'
              Color = clWhite
              ColumnPopupType = cpFixedCellsLClick
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              FilterCaseSensitive = False
              Fixed = False
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
              Name = 'gridES_TITULO'
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
              Width = 25
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'PR'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridPROCESO'
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
              Width = 30
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'CO'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridCOMPONENTE'
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
              Width = 30
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'OP'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridOPERACION'
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
              Width = 30
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              FilterCaseSensitive = False
              Fixed = False
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
              Name = 'gridCODIGO'
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
              Width = 83
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
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
              Header = 'Operación'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridNOMB_OPERACION'
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
              Width = 226
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'F'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridFRECUENCIA'
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
              Width = 48
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Máquina'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIPO_MAQUINA'
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
              Width = 46
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
              Header = 'Ajuste'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridAJUSTE'
              Password = False
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
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
              Width = 42
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'P.P.C.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridPPC'
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
              Width = 49
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'R.P.M.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridRPM'
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
              Width = 72
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Tiempo'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIEMPO'
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
              Width = 68
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'P.H.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridPH'
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
              Width = 64
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
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
              Header = 'Valor'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridCOST_OPERACION'
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
              Width = 64
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
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
              Name = 'gridTIEM_CRONOMETRO'
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
              Width = 64
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
            24
            25
            30
            30
            30
            83
            226
            48
            46
            42
            49
            72
            68
            64
            64
            64)
        end
      end
      object page_impo_componente: TSCLTabSheet
        Color = 16578290
        Caption = 'Desde un componente'
        object dfsSplitter1: TdfsSplitter
          Left = 269
          Top = 0
          Height = 342
          Cursor = crHSplit
          Align = alLeft
          MinSize = 1
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object grid_impo_componentes: TSCLColumnGrid
          Left = 279
          Top = 0
          Width = 366
          Height = 342
          Cursor = crDefault
          Align = alClient
          ColCount = 16
          DefaultRowHeight = 19
          FixedColor = 15582631
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'MS Sans Serif'
          ActiveCellFont.Style = [fsBold]
          EnhRowColMove = False
          OnCustomCellDraw = gridCustomCellDraw
          OnGetCellColor = gridGetCellColor
          OnGetAlignment = gridGetAlignment
          ControlLook.ControlStyle = csFlat
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
          HintShowCells = True
          HintShowLargeText = True
          HintShowSizing = True
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
          SizeWhileTyping.Height = True
          MouseActions.AllSelect = True
          MouseActions.RowSelect = True
          MouseActions.SizeFixedCol = True
          FixedColWidth = 24
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
            'No.'
            'T'
            'PR'
            'CO'
            'OP'
            'Código'
            'Operación'
            'F'
            'Máquina'
            'Ajuste'
            'P.P.C.'
            'R.P.M.'
            'Tiempo'
            'P.H.'
            'Valor')
          Filter = <>
          Version = '3.0.0.10'
          AutoFilterUpdate = True
          AutoFilterDisplay = True
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
              Font.Color = clBtnFace
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'No.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridNUMERO'
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
              Width = 24
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taCenter
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'S'
              Color = clWhite
              ColumnPopupType = cpFixedCellsLClick
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              FilterCaseSensitive = False
              Fixed = False
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
              Name = 'gridES_TITULO'
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
              Width = 25
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'PR'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridPROCESO'
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
              Width = 30
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'CO'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridCOMPONENTE'
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
              Width = 30
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'OP'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridOPERACION'
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
              Width = 30
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edUpperCase
              FilterCaseSensitive = False
              Fixed = False
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
              Name = 'gridCODIGO'
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
              Width = 83
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
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
              Header = 'Operación'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridNOMB_OPERACION'
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
              Width = 226
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'F'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridFRECUENCIA'
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
              Width = 48
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Máquina'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIPO_MAQUINA'
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
              Width = 46
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
              Header = 'Ajuste'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridAJUSTE'
              Password = False
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
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
              Width = 46
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'P.P.C.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridPPC'
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
              Width = 49
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'R.P.M.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridRPM'
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
              Width = 67
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Tiempo'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIEMPO'
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
              Width = 43
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
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'P.H.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridPH'
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
              Width = 64
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
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
              Header = 'Valor'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridCOST_OPERACION'
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
              Width = 64
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWhite
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
              Name = 'gridTIEM_CRONOMETRO'
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
              Width = 64
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
            24
            25
            30
            30
            30
            83
            226
            48
            46
            46
            49
            67
            43
            64
            64
            64)
        end
        inline fram_sele_componentes: Tffra_sele_componentes
          Width = 269
          Height = 342
          Align = alLeft
          TabOrder = 1
          inherited dfsSplitter2: TdfsSplitter
            Width = 269
          end
          inherited Panel1: TPanel
            Width = 269
            Height = 211
            inherited fram_sele_comp_panel: TPCPFrame
              Width = 269
              Height = 211
              inherited fram_sele_comp_grid_detalle: TDBCtrlGrid
                Width = 262
                Height = 186
                PanelHeight = 93
                PanelWidth = 246
                inherited fram_pane_1: TPanel
                  Width = 133
                  Height = 93
                  inherited fram_sele_imagen: TEDBImage
                    Width = 125
                    Height = 136
                    OnDblClick = fram_sele_componentesfram_sele_imagenDblClick
                  end
                end
                inherited fram_pane_2: TPanel
                  Left = 133
                  Width = 113
                  Height = 93
                  inherited DBText2: TDBText
                    Width = 109
                  end
                  inherited DBText3: TDBText
                    Width = 109
                    Height = 74
                  end
                  inherited Bevel1: TBevel
                    Width = 109
                  end
                end
              end
            end
          end
          inherited PCPFrame1: TPCPFrame
            Width = 269
            inherited Panel2: TPanel
              Width = 263
              inherited fram_sele_comp_grid: TdxDBGrid
                Width = 259
                Font.Name = 'Tahoma'
                BandFont.Name = 'Tahoma'
                Filter.Criteria = {00000000}
                HeaderFont.Name = 'Tahoma'
                PreviewFont.Name = 'Tahoma'
                OnChangeNode = fram_sele_componentesfram_sele_comp_gridChangeNode
              end
            end
          end
          inherited quer_comp_impo_imagenes: TQuery
            AfterScroll = fram_sele_componentesquer_comp_impo_imagenesAfterScroll
          end
        end
      end
    end
    object TBXDock3: TTBXDock
      Left = 0
      Top = 0
      Width = 649
      Height = 26
      object TBXToolbar3: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        FullSize = True
        TabOrder = 0
        object TBXItem30: TTBXItem
          Action = acti_impo_sele_todos
          DisplayMode = nbdmImageAndText
          Images = _fMDI.imagenesPCP
        end
        object TBXItem31: TTBXItem
          Action = acti_impo_importar
          DisplayMode = nbdmImageAndText
          Images = _fMDI.imagenesPCP
        end
        object boto_impo_cerrar: TTBXItem
          Caption = 'Cerrar'
          ImageIndex = 15
          Images = _fMDI.imag_pequenas
          OnClick = boto_impo_cerrarClick
        end
      end
    end
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    Visible = False
    inherited padr_barra: TTBXToolbar
      object TBXSubmenuItem1: TTBXSubmenuItem [11]
        Action = acti_impr_list_operaciones
        AlwaysSelectFirst = True
        DropdownCombo = True
        ImageIndex = 10
        Images = _fMDI.imag_grandes
        Options = [tboSameWidth]
        object TBXItem33: TTBXItem
          Action = acti_impr_list_operaciones
          InheritOptions = False
          Options = [tboDefault, tboSameWidth]
        end
        object TBXItem32: TTBXItem
          Action = acti_impr_resu_tiempo
          InheritOptions = False
          Options = [tboSameWidth]
        end
      end
      inherited padr_boto_imprimir: TTBXItem
        Action = nil
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
    TabOrder = 2
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    TabOrder = 3
    inherited padr_beve_1: TBevel
      Width = 786
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 514
    Width = 804
    TabOrder = 4
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
    TabOrder = 7
    inherited padr_pane_titulo: TPanel
      Width = 763
      Caption = 'Secuencia de operaciones de confección (referencias)'
    end
    inherited padr_pane_2: TPanel
      Left = 765
    end
    inherited padr_pane_cerrar: TPanel
      Left = 783
    end
  end
  object PANE_SELECCION: TPanel [8]
    Left = 0
    Top = 103
    Width = 804
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 4
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = comb_codi_Referencia
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Referencia:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_referencia'
      Field = 'cons_referencia'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 270
      Top = 4
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = comb_refe_variacion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Variación:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'cons_refe_variacion'
      Field = 'cons_refe_variacion'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 530
      Top = 3
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = PCPLookUpComboEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'C.I.R.:'
      Transparent = True
      Visible = False
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_codi_Referencia: TPCPLookUpComboEdit
      Left = 112
      Top = 4
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_referencia'
      DataSource = data_ventana
      KeyField = 'cons_referencia'
      ListField = 'codi_referencia'
      ListSource = data_Referencias
      ParentCtl3D = False
      TabOrder = 0
      OnChange = comb_codi_ReferenciaChange
      DirectInput = False
    end
    object comb_refe_variacion: TPCPLookUpComboEdit
      Left = 372
      Top = 4
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_refe_variacion'
      DataSource = data_ventana
      KeyField = 'cons_refe_variacion'
      ListField = 'nomb_refe_tipo_variacion'
      ListSource = data_refe_variaciones
      ParentCtl3D = False
      TabOrder = 1
      OnChange = comb_codi_ReferenciaChange
      DirectInput = False
    end
    object PCPLookUpComboEdit2: TPCPLookUpComboEdit
      Left = 632
      Top = 3
      Width = 145
      Height = 21
      DropDownCount = 8
      EscapeClear = False
      Ctl3D = True
      DataField = 'cons_referencia'
      DataSource = data_ventana
      KeyField = 'cons_Referencia'
      ListField = 'codi_inte_referencia'
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
      OnChange = comb_codi_ReferenciaChange
      DirectInput = False
    end
    object padr_boto_menu_Referencia: TTBXButtonSCL
      Left = 259
      Top = 5
      Width = 30
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      DropDownMenu = _fMDI.mdi_menu_referencia
      ImageIndex = 64
      Images = _fMDI.imagenesPCP
      SmartFocus = False
      TabOrder = 3
      TabStop = False
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 506
    Width = 804
    TabOrder = 5
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 101
    Width = 804
    TabOrder = 6
  end
  inline pane_actualizar: Tffra_mens_atencion [11]
    Top = 134
    Width = 804
    Height = 21
    TabOrder = 9
    inherited padr_shap_top: TShape
      Width = 804
    end
    inherited padr_shap_bottom: TShape
      Top = 20
      Width = 804
    end
    inherited padr_shap_right: TShape
      Left = 803
      Height = 19
    end
    inherited padr_shap_left: TShape
      Height = 19
    end
    inherited fram_label: TAdvPanel
      Width = 802
      Height = 19
      Text = 
        '<IMG src="3"> Se han actualizado operaciones desde la ventana de' +
        ' análisis de operaciones.  De <A href="click">click aquí</A> par' +
        'a actualizar.'
      OnAnchorClick = pane_actualizarAnchorClick
      FullHeight = 18
      inherited data_label: TDBText
        Left = 726
      end
    end
    inherited fram_pict_container: TPictureContainer
      Left = 576
      Top = 65528
    end
  end
  object TBXDock4: TTBXDock [12]
    Left = 0
    Top = 75
    Width = 804
    Height = 26
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      DefaultDock = TBXDock4
      DockMode = dmCannotFloatOrChangeDocks
      FullSize = True
      ParentShowHint = False
      ProcessShortCuts = True
      ShowHint = True
      TabOrder = 0
      object TBXItem25: TTBXItem
        Action = padr_acti_guardar
        DisplayMode = nbdmImageAndText
        ImageIndex = 5
        Images = _fMDI.imagenesPCP
        Layout = tbxlGlyphLeft
        Options = [tboToolbarStyle, tboToolbarSize]
      end
      object TBXItem26: TTBXItem
        Action = padr_acti_guar_cerrar
        DisplayMode = nbdmImageAndText
        ImageIndex = 67
        Images = _fMDI.imagenesPCP
        Options = [tboToolbarStyle, tboToolbarSize]
        Visible = False
      end
      object TBXItem27: TTBXItem
        Action = padr_acti_cancelar
        DisplayMode = nbdmImageAndText
        ImageIndex = 8
        Images = _fMDI.imagenesPCP
        Layout = tbxlGlyphLeft
        Options = [tboToolbarStyle, tboToolbarSize]
      end
      object TBXSeparatorItem11: TTBXSeparatorItem
      end
      object TBXItem28: TTBXItem
        Action = acti_volv_llamar
        DisplayMode = nbdmImageAndText
        ImageIndex = 11
        Images = _fMDI.imag_varias
      end
      object TBXItem34: TTBXItem
        Tag = -1
        Action = padr_acti_actualizar
        ImageIndex = 4
        Images = _fMDI.imagenesPCP
      end
      object TBXSubmenuItem2: TTBXSubmenuItem
        Action = acti_impr_list_operaciones
        AlwaysSelectFirst = True
        DropdownCombo = True
        ImageIndex = 10
        Images = _fMDI.imagenesPCP
        Options = [tboSameWidth]
        object TBXItem35: TTBXItem
          Action = acti_impr_list_operaciones
          InheritOptions = False
          Options = [tboDefault, tboSameWidth]
        end
        object TBXItem36: TTBXItem
          Action = acti_impr_resu_tiempo
          InheritOptions = False
          Options = [tboSameWidth]
        end
      end
      object TBXSeparatorItem13: TTBXSeparatorItem
      end
      object TBXItem6: TTBXItem
        Action = acti_insertar
        Images = _fMDI.imagenesPCP
      end
      object TBXItem5: TTBXItem
        Action = acti_adicionar
        Images = _fMDI.imagenesPCP
      end
      object TBXItem4: TTBXItem
        Action = acti_eliminar
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object TBXItem8: TTBXItem
        Action = acti_move_arriba
        Images = _fMDI.imagenesPCP
      end
      object TBXItem7: TTBXItem
        Action = acti_move_abajo
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem5: TTBXSeparatorItem
      end
      object padr_boto_busc_desplegable: TTBXSubmenuItem
        Action = acti_busc_oper_cst
        DropdownCombo = True
        ImageIndex = 9
        Images = _fMDI.imagenesPCP
        object TBXItem20: TTBXItem
          Action = acti_busc_oper_cst
          Options = [tboDefault]
        end
        object TBXItem2: TTBXItem
          Action = acti_buscar
          Images = _fMDI.imagenesPCP
        end
      end
      object TBXItem1: TTBXItem
        Action = acti_sele_todos
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem7: TTBXSeparatorItem
      end
      object TBXItem19: TTBXItem
        Action = acti_copiar
        Images = _fMDI.imagenesPCP
      end
      object TBXItem18: TTBXItem
        Action = acti_cortar
        Images = _fMDI.imagenesPCP
      end
      object TBXItem17: TTBXItem
        Action = acti_pegar
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem6: TTBXSeparatorItem
      end
      object boto_importar: TTBXVisibilityToggleItem
        Caption = 'Importar elementos'
        Control = pane_importar
        DisplayMode = nbdmImageAndText
        ImageIndex = 31
        Images = _fMDI.imagenesPCP
      end
      object padr_sepa_15: TTBXSeparatorItem
      end
      object padr_boto_expo_xls: TTBXItem
        Action = acti_expo_XLS
        Images = _fMDI.imagenesPCP
      end
      object padr_boto_expo_html: TTBXItem
        Action = acti_expo_html
        Images = _fMDI.imagenesPCP
      end
      object padr_boto_expo_texto: TTBXItem
        Action = acti_expo_TXT
        Images = _fMDI.imagenesPCP
      end
    end
  end
  object pane_edicion: TPanel [13]
    Left = 0
    Top = 155
    Width = 804
    Height = 350
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 11
    object Panel2: TPanel
      Left = 0
      Top = 82
      Width = 804
      Height = 268
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object page: TSCLPageControl
        Left = 0
        Top = 0
        Width = 804
        Height = 268
        ActivePage = page_operaciones
        Align = alClient
        BoldCurrentTab = True
        Color = 16578290
        FlatColor = 10435335
        Margin = 5
        ParentColor = False
        TabColors.Shadow = 15582631
        TabColors.Unselected = 16578290
        TabIndex = 0
        TabOrder = 0
        Transparent = True
        FixedDimension = 19
        object page_operaciones: TSCLTabSheet
          Color = 16578290
          Caption = 'Operaciones'
          object grid: TSCLColumnGrid
            Left = 0
            Top = 0
            Width = 800
            Height = 220
            Cursor = crDefault
            Align = alClient
            ColCount = 17
            Ctl3D = False
            DefaultRowHeight = 19
            FixedColor = 15582631
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
            ParentCtl3D = False
            ParentFont = False
            PopupMenu = pop_grid
            ScrollBars = ssVertical
            TabOrder = 0
            OnKeyDown = gridKeyDown
            OnSelectCell = gridSelectCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWindowText
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'MS Sans Serif'
            ActiveCellFont.Style = [fsBold]
            EnhRowColMove = False
            OnCustomCellDraw = gridCustomCellDraw
            OnGetCellColor = gridGetCellColor
            OnGetAlignment = gridGetAlignment
            OnClickCell = gridClickCell
            OnCanEditCell = gridCanEditCell
            ControlLook.ControlStyle = csFlat
            EnableHTML = False
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
            HintShowCells = True
            HintShowLargeText = True
            HintShowSizing = True
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
            SizeWhileTyping.Height = True
            MouseActions.AllSelect = True
            MouseActions.RowSelect = True
            FixedColWidth = 24
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
              'No.'
              'T'
              'PR'
              'CO'
              'OP'
              'Código'
              'Operación'
              'F'
              'Máquina'
              'Ajuste'
              'P.P.C.'
              'R.P.M.'
              'Tiempo'
              'P.H.'
              'Valor'
              'P.Control')
            Filter = <>
            Version = '3.0.0.10'
            AutoFilterUpdate = True
            AutoFilterDisplay = True
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
                Font.Color = clBtnFace
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'No.'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridNUMERO'
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
                Width = 24
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taCenter
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'S'
                Color = clWhite
                ColumnPopup = pop_operacion
                ColumnPopupType = cpNormalCellsLClick
                DropDownCount = 8
                EditLength = 0
                Editor = edUpperCase
                FilterCaseSensitive = False
                Fixed = False
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
                Name = 'gridES_TITULO'
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
                Width = 25
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taLeftJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWhite
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edUpperCase
                FilterCaseSensitive = False
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'PR'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridPROCESO'
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
                Width = 30
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taLeftJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWhite
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edUpperCase
                FilterCaseSensitive = False
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'CO'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridCOMPONENTE'
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
                Width = 30
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taLeftJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWhite
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edUpperCase
                FilterCaseSensitive = False
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'OP'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridOPERACION'
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
                Width = 30
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taLeftJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWhite
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edUpperCase
                FilterCaseSensitive = False
                Fixed = False
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
                Name = 'gridCODIGO'
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
                Width = 83
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taLeftJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWhite
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
                Header = 'Operación'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridNOMB_OPERACION'
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
                Width = 215
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
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'F'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridFRECUENCIA'
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
                Width = 41
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
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'Máquina'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridTIPO_MAQUINA'
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
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'Ajuste'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridAJUSTE'
                Password = False
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
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
                Width = 35
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
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'P.P.C.'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridPPC'
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
                Width = 59
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
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'R.P.M.'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridRPM'
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
                Width = 73
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clBtnFace
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'Tiempo'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridTIEMPO'
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
                Width = 68
              end
              item
                AutoMinSize = 0
                AutoMaxSize = 0
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clBtnFace
                ColumnPopupType = cpFixedCellsRClick
                DropDownCount = 8
                EditLength = 0
                Editor = edNormal
                FilterCaseSensitive = False
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'P.H.'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridPH'
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
                Width = 46
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
                Fixed = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header = 'Valor'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridCOST_OPERACION'
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
                Width = 90
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
                ColumnPopup = padr_pop_punt_control
                ColumnPopupType = cpNormalCellsLClick
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
                Header = 'P.Control'
                HeaderAlignment = taLeftJustify
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = []
                MinSize = 0
                MaxSize = 0
                Name = 'gridPUNT_CONTROL'
                Password = False
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
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
                Width = 56
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
                Name = 'gridTIEM_CRONOMETRO'
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
              24
              25
              30
              30
              30
              83
              215
              41
              57
              35
              59
              73
              68
              46
              90
              56
              56)
          end
          object TBXDock1: TTBXDock
            Left = 0
            Top = 220
            Width = 800
            Height = 25
            Position = dpBottom
            object TBXToolbar2: TTBXToolbar
              Left = 0
              Top = 0
              DockMode = dmCannotFloatOrChangeDocks
              FullSize = True
              TabOrder = 0
              object TBXLabelItem4: TTBXLabelItem
                Caption = 'Operación actual :'
              end
              object TBControlItem4: TTBControlItem
                Control = edit_oper_seleccionada
              end
              object TBXSeparatorItem12: TTBXSeparatorItem
              end
              object TBXLabelItem1: TTBXLabelItem
                Caption = 'Número de filas :'
              end
              object TBControlItem1: TTBControlItem
                Control = edit_tota_filas
              end
              object TBXSeparatorItem4: TTBXSeparatorItem
              end
              object TBXLabelItem3: TTBXLabelItem
                Caption = 'Número de operaciones :'
              end
              object TBControlItem3: TTBControlItem
                Control = edit_tota_operaciones
              end
              object TBXSeparatorItem9: TTBXSeparatorItem
              end
              object TBXLabelItem2: TTBXLabelItem
                Caption = 'Tiempo total :'
              end
              object TBControlItem2: TTBControlItem
                Control = edit_tiem_total
              end
              object TBXSeparatorItem15: TTBXSeparatorItem
              end
              object TBXLabelItem5: TTBXLabelItem
                Caption = 'Costo total:'
              end
              object TBControlItem5: TTBControlItem
                Control = edit_cost_total
              end
              object edit_tota_filas: TdxCurrencyEdit
                Left = 222
                Top = 0
                Width = 29
                Enabled = False
                Style.BorderColor = clBtnShadow
                Style.BorderStyle = xbsFlat
                TabOrder = 0
                TabStop = False
                Alignment = taRightJustify
                ReadOnly = True
                StyleController = padr_estilo
                DisplayFormat = '0'
                StoredValues = 65
              end
              object edit_tiem_total: TdxCurrencyEdit
                Left = 480
                Top = 0
                Width = 77
                Enabled = False
                Style.BorderColor = clBtnShadow
                Style.BorderStyle = xbsFlat
                TabOrder = 1
                TabStop = False
                Alignment = taRightJustify
                ReadOnly = True
                StyleController = padr_estilo
                DisplayFormat = ',0.000'
                StoredValues = 65
              end
              object edit_tota_operaciones: TdxCurrencyEdit
                Left = 378
                Top = 0
                Width = 29
                Enabled = False
                Style.BorderColor = clBtnShadow
                Style.BorderStyle = xbsFlat
                TabOrder = 2
                TabStop = False
                Alignment = taRightJustify
                ReadOnly = True
                StyleController = padr_estilo
                DisplayFormat = '0'
                StoredValues = 65
              end
              object edit_oper_seleccionada: TdxSpinEdit
                Left = 89
                Top = 0
                Width = 45
                TabOrder = 3
                TabStop = False
                OnExit = edit_oper_seleccionadaExit
                Alignment = taRightJustify
                StyleController = padr_estilo
                MaxValue = 100
                MinValue = 1
                Value = 1
                StoredValues = 49
              end
              object edit_cost_total: TdxCurrencyEdit
                Left = 621
                Top = 0
                Width = 77
                Enabled = False
                Style.BorderColor = clBtnShadow
                Style.BorderStyle = xbsFlat
                TabOrder = 4
                TabStop = False
                Alignment = taRightJustify
                ReadOnly = True
                StyleController = padr_estilo
                DisplayFormat = ',0.000'
                StoredValues = 65
              end
            end
          end
        end
        object dxTabSheet2: TSCLTabSheet
          Color = 16578290
          Caption = 'Historial'
          inline fram_historial: Tffra_historialDB
            Width = 800
            Height = 245
            Align = alClient
            inherited fram_pane: TPanel
              Width = 800
              Height = 245
              inherited fram_grid_historial: TdxDBGrid
                Width = 871
                Height = 212
                Filter.Criteria = {00000000}
              end
              inherited TBXDock1: TTBXDock
                Width = 871
                inherited TBXToolbar1: TTBXToolbar
                  inherited TBXItem4: TTBXItem
                    Images = _fMDI.imag_pequenas
                  end
                  inherited TBXItem5: TTBXItem
                    Images = _fMDI.imag_pequenas
                  end
                  inherited TBXItem6: TTBXItem
                    Images = _fMDI.imag_pequenas
                  end
                end
              end
            end
            inherited data_historial: TDataSource
              DataSet = tabl_historial
            end
            inherited fram_acciones: TActionList
              inherited fram_acti_nuevo: TAction
                ShortCut = 0
              end
              inherited fram_acti_modificar: TAction
                ShortCut = 0
              end
            end
            inherited pop_grid_anotaciones: TTBXPopupMenu
              inherited TBXItem1: TTBXItem
                Images = _fMDI.imag_pequenas
              end
              inherited TBXItem2: TTBXItem
                Images = _fMDI.imag_pequenas
              end
              inherited TBXItem3: TTBXItem
                Images = _fMDI.imag_pequenas
              end
            end
          end
        end
      end
    end
    object pane_info_referencia: TPCPFrame
      Tag = 74
      Left = 0
      Top = 0
      Width = 804
      Height = 74
      Align = alTop
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      Caption = 'Información de la referencia'
      Titulo_Color = 16244694
      FlatBorder = True
      object SCLDBLabel8: TSCLDBLabel
        Left = 10
        Top = 26
        Width = 100
        Height = 21
        Alive = True
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'Tahoma'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = dxDBEdit4
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Nombre:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel9: TSCLDBLabel
        Left = 10
        Top = 46
        Width = 100
        Height = 21
        Alive = True
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'Tahoma'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = dxDBEdit6
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Linea:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel10: TSCLDBLabel
        Left = 530
        Top = 26
        Width = 100
        Height = 21
        Alive = True
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'Tahoma'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = dxDBEdit5
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Grupo:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel11: TSCLDBLabel
        Left = 270
        Top = 46
        Width = 100
        Height = 21
        Alive = True
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'Tahoma'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = dxDBEdit7
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Estilo:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel12: TSCLDBLabel
        Left = 530
        Top = 46
        Width = 100
        Height = 21
        Alive = True
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'Tahoma'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = dxDBEdit8
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Marca:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object dxDBEdit4: TdxDBEdit
        Left = 112
        Top = 26
        Width = 261
        Enabled = False
        TabOrder = 1
        TabStop = False
        DataField = 'NOMB_REFERENCIA'
        DataSource = data_Referencias
        ReadOnly = True
        StyleController = padr_estilo
        StoredValues = 64
      end
      object dxDBEdit6: TdxDBEdit
        Left = 112
        Top = 46
        Width = 130
        Enabled = False
        TabOrder = 2
        TabStop = False
        DataField = 'NOMB_REFE_LINEA'
        DataSource = data_Referencias
        ReadOnly = True
        StyleController = padr_estilo
        StoredValues = 64
      end
      object dxDBEdit5: TdxDBEdit
        Left = 632
        Top = 26
        Width = 145
        Enabled = False
        TabOrder = 3
        TabStop = False
        DataField = 'NOMB_REFE_GRUPO'
        DataSource = data_Referencias
        ReadOnly = True
        StyleController = padr_estilo
        StoredValues = 64
      end
      object dxDBEdit7: TdxDBEdit
        Left = 372
        Top = 46
        Width = 145
        Enabled = False
        TabOrder = 4
        TabStop = False
        DataField = 'NOMB_REFE_ESTILO'
        DataSource = data_Referencias
        ReadOnly = True
        StyleController = padr_estilo
        StoredValues = 64
      end
      object dxDBEdit8: TdxDBEdit
        Left = 632
        Top = 46
        Width = 145
        Enabled = False
        TabOrder = 5
        TabStop = False
        DataField = 'NOMB_REFE_MARCA'
        DataSource = data_Referencias
        ReadOnly = True
        StyleController = padr_estilo
        StoredValues = 64
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 74
      Width = 804
      Height = 8
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 3
      TabOrder = 2
      Visible = False
      object Bevel1: TBevel
        Left = 3
        Top = 3
        Width = 798
        Height = 2
        Align = alClient
      end
    end
  end
  inherited padr_acciones: TActionList [14]
    inherited padr_acti_imprimir: TAction
      Enabled = True
      Visible = True
      OnExecute = padr_acti_imprimirExecute
    end
    inherited padr_acti_guardar: TDataSetPost
      Enabled = True
      Visible = True
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Enabled = True
      Visible = True
    end
    inherited padr_acti_nuevo: TDataSetInsert
      ShortCut = 0
    end
    inherited padr_acti_modificar: TDataSetEdit
      ShortCut = 0
    end
    inherited padr_acti_eliminar: TDataSetDelete
      ShortCut = 0
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Enabled = True
      Visible = True
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = True
      Visible = True
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList [15]
  end
  inherited Variables: TSCLPropiedadesForm [16]
    verBotonesNavegacion = False
  end
  inherited Tabla_Ventana: TTable [17]
    DatabaseName = 'PCPLocal'
    TableName = 'tmpMETO_COMP_SECUENCIA'
  end
  inherited padr_estilo: TdxEditStyleController [18]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [19]
  end
  inherited padr_esti_panel: TAdvPanelStyler [20]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [21]
  end
  inherited imag_pequenas: TImageList [22]
  end
  inherited padr_imag_tem1_colo: TImageList [23]
  end
  inherited data_ventana: TDataSource [25]
    DataSet = myTabla_Ventana
  end
  inherited padr_pict_container: TPictureContainer
    Left = 610
    Top = 101
  end
  object quer_refe_variaciones: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_Referencias
    SQL.Strings = (
      'select cons_refe_variacion, cons_refe_tipo_variacion, '
      'nomb_refe_tipo_variacion'
      'from vis_pcp_refe_variaciones'
      'where cons_referencia = :cons_referencia'
      'order by nomb_refe_tipo_variacion')
    Left = 106
    Top = 10
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFERENCIA'
        ParamType = ptUnknown
      end>
  end
  object data_refe_variaciones: TDataSource
    DataSet = quer_refe_variaciones
    Left = 106
    Top = 43
  end
  object acci_ventana: TActionList
    Images = _fMDI.imagenesPCP
    OnUpdate = acci_ventanaUpdate
    Left = 432
    object acti_insertar: TAction
      Category = 'Grid'
      Caption = 'Insertar elemento'
      Hint = 'Insertar elemento'
      ImageIndex = 25
      ShortCut = 45
      OnExecute = acti_insertarExecute
    end
    object acti_adicionar: TAction
      Category = 'Grid'
      Caption = 'Adicionar elemento (al final)'
      Hint = 'Adicionar elemento (al final)'
      ImageIndex = 26
      ShortCut = 16429
      OnExecute = acti_adicionarExecute
    end
    object acti_eliminar: TAction
      Category = 'Grid'
      Caption = 'Eliminar elementos'
      Hint = 'Eliminar elementos'
      ImageIndex = 27
      ShortCut = 16453
      OnExecute = acti_eliminarExecute
    end
    object acti_move_arriba: TAction
      Category = 'Grid'
      Caption = 'Mover hacia arriba'
      Hint = 'Mover hacia arriba'
      ImageIndex = 28
      ShortCut = 16422
      OnExecute = acti_move_arribaExecute
    end
    object acti_move_abajo: TAction
      Category = 'Grid'
      Caption = 'Mover hacia abajo'
      Hint = 'Mover hacia abajo'
      ImageIndex = 29
      ShortCut = 16424
      OnExecute = acti_move_abajoExecute
    end
    object acti_copiar: TdxEditCopy
      Category = 'Edit'
      Caption = '&Copiar'
      Hint = 'Copiar'
      ImageIndex = 11
      ShortCut = 16451
      OnExecute = acti_copiarExecute
    end
    object acti_cortar: TdxEditCut
      Category = 'Edit'
      Caption = 'Cortar'
      Hint = 'Cortar'
      ImageIndex = 12
      ShortCut = 16472
      OnExecute = acti_cortarExecute
    end
    object acti_pegar: TdxEditPaste
      Category = 'Edit'
      Caption = '&Pegar'
      Hint = 'Pegar'
      ImageIndex = 13
      ShortCut = 16470
      OnExecute = acti_pegarExecute
      Left = 225
      Top = 169
    end
    object acti_importar: TAction
      Category = 'Edit'
      Caption = 'Importar gestos...'
      Hint = 'Importar gestos desde otro elemento'
      Left = 253
      Top = 169
    end
    object acti_impo_sele_todos: TAction
      Category = 'Importar'
      Caption = 'Seleccionar todos'
      ImageIndex = 30
      ShortCut = 16449
      OnExecute = acti_impo_sele_todosExecute
      Left = 1
      Top = 197
    end
    object acti_impo_importar: TAction
      Category = 'Importar'
      Caption = 'Importar selección'
      ImageIndex = 31
      OnExecute = acti_impo_importarExecute
      Left = 65000
    end
    object acti_sele_todos: TAction
      Category = 'Grid'
      Caption = 'Seleccionar todos'
      Hint = 'Seleccionar todos'
      ImageIndex = 30
      OnExecute = acti_sele_todosExecute
    end
    object acti_buscar: TAction
      Category = 'Grid'
      Caption = 'Buscar texto en la tabla'
      ImageIndex = 65
      OnExecute = acti_buscarExecute
    end
    object acti_ver_titulos: TAction
      Category = 'Grid'
      Caption = 'Ver sólamente los títulos'
      Enabled = False
      Hint = 'Ver sólamente los títulos'
      OnExecute = acti_ver_titulosExecute
    end
    object acti_fila_titulo: TAction
      Category = 'Grid'
      Caption = 'Fila como un título'
      OnExecute = acti_fila_tituloExecute
    end
    object acti_fila_operacion: TAction
      Category = 'Grid'
      Caption = 'Fila como operación'
      OnExecute = acti_fila_operacionExecute
    end
    object acti_ver_analisis: TAction
      Category = 'Grid'
      Caption = 'Ver análisis de la operación'
    end
    object acti_undo: TAction
      Caption = 'Undo'
      OnExecute = acti_undoExecute
    end
    object acti_volv_llamar: TAction
      Category = 'Edit'
      Caption = 'Volver a llamar las operaciones'
      Hint = 'Volver a llamar las operaciones'
      OnExecute = acti_volv_llamarExecute
    end
    object acti_impr_list_operaciones: TAction
      Category = 'Imprimir'
      Caption = 'Listado de operaciones (selección)'
      OnExecute = acti_impr_list_operacionesExecute
    end
    object acti_impr_resu_tiempo: TAction
      Category = 'Imprimir'
      Caption = 'Resumen de tiempos'
    end
    object acti_busc_oper_cst: TAction
      Category = 'Importar'
      Caption = 'Buscar operaciones CST'
      ImageIndex = 66
      ShortCut = 114
      OnExecute = acti_busc_oper_cstExecute
    end
    object acti_expo_XLS: TAction
      Category = 'Exportar'
      ImageIndex = 17
      OnExecute = acti_expo_XLSExecute
    end
    object acti_expo_html: TAction
      Category = 'Exportar'
      ImageIndex = 18
      OnExecute = acti_expo_htmlExecute
    end
    object acti_expo_TXT: TAction
      Category = 'Exportar'
      ImageIndex = 19
      OnExecute = acti_expo_TXTExecute
    end
  end
  object grid_find: TAdvGridFindDialog
    AutoPosition = False
    MsgNotFound = 'Could not find text'
    MsgNoMoreFound = 'No more occurences of text '
    TxtCaption = 'Find text'
    TxtTextToFind = 'Text to find'
    TxtDirection = 'Direction'
    TTxtDirForward1 = 'Forward (top to bottom)'
    TTxtDirForward2 = 'Forward (left to right)'
    TTxtDirBackward1 = 'Backward (bottom to top)'
    TTxtDirBackward2 = 'Backward (right to left)'
    TxtScope = 'Scope'
    TxtScopeAllCells = 'All cells'
    TxtScopeCurrRow = 'Current row only'
    TxtScopeCurrCol = 'Current column only'
    TxtOptionsCase = '&Case sensitive'
    TxtOptionsWholeWords = '&Whole words only'
    TxtOptionsMatchFirst = '&Match from first char'
    TxtOptionsIgnoreHTML = '&Ignore HTML tags'
    TxtOptionsFixedCells = '&Find in fixed cells'
    TxtOptionsWildcards = 'Match with &wildcards'
    TxtBtnOk = 'Ok'
    TxtBtnCancel = 'Cancel'
    Left = 607
    Top = 9
  end
  object pop_grid: TTBXPopupMenu
    Left = 698
    Top = 196
    object TBXItem29: TTBXItem
      Action = acti_volv_llamar
      ImageIndex = 11
      Images = _fMDI.imag_varias
    end
    object TBXSeparatorItem14: TTBXSeparatorItem
    end
    object TBXItem3: TTBXItem
      Action = acti_insertar
      Images = _fMDI.imagenesPCP
    end
    object TBXItem9: TTBXItem
      Action = acti_adicionar
      Images = _fMDI.imagenesPCP
    end
    object TBXItem10: TTBXItem
      Action = acti_eliminar
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem1: TTBXSeparatorItem
    end
    object TBXItem11: TTBXItem
      Action = acti_move_arriba
      Images = _fMDI.imagenesPCP
    end
    object TBXItem12: TTBXItem
      Action = acti_move_abajo
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem3: TTBXSeparatorItem
    end
    object TBXItem13: TTBXItem
      Action = acti_buscar
      Images = _fMDI.imagenesPCP
    end
    object TBXItem14: TTBXItem
      Action = acti_sele_todos
      Images = _fMDI.imagenesPCP
    end
    object TBXItem15: TTBXItem
      Action = acti_copiar
      Images = _fMDI.imagenesPCP
    end
    object TBXItem16: TTBXItem
      Action = acti_cortar
      Images = _fMDI.imagenesPCP
    end
    object TBXItem22: TTBXItem
      Action = acti_pegar
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem8: TTBXSeparatorItem
    end
    object TBXVisibilityToggleItem1: TTBXVisibilityToggleItem
      Caption = 'Importar elementos'
      Control = pane_importar
      DisplayMode = nbdmImageAndText
      ImageIndex = 31
      Images = _fMDI.imagenesPCP
    end
    object padr_boto_exportar: TTBXSubmenuItem
      Caption = 'Exportar'
      ImageIndex = 16
      Images = _fMDI.imagenesPCP
      object padr_boto_Expo_xls2: TTBXItem
        Action = acti_expo_XLS
        Images = _fMDI.imagenesPCP
      end
      object padr_boto_Expo_html2: TTBXItem
        Action = acti_expo_html
        Images = _fMDI.imagenesPCP
      end
      object padr_boto_Expo_txt2: TTBXItem
        Action = acti_expo_TXT
        Images = _fMDI.imagenesPCP
      end
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
    BeforePost = myTabla_VentanaBeforePost
    AfterPost = myTabla_VentanaAfterPost
    Left = 218
    Top = 3
    object myTabla_Ventanacons_referencia: TIntegerField
      FieldName = 'cons_referencia'
      Required = True
    end
    object myTabla_Ventanacons_refe_variacion: TIntegerField
      FieldName = 'cons_refe_variacion'
      Required = True
    end
  end
  object quer_operaciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_oper_costura, cons_proceso, cons_oper_cost_tipo, '
      'cons_comp_grupo, codi_oper_costura, nomb_oper_costura,  '
      
        'punt_por_centimetro, cons_recu_familia, revo_por_minuto, tiem_as' +
        'ignado, '
      'tiem_cronometro, cost_operacion, ajuste'
      'from pcp_oper_costura'
      'order by codi_oper_costura')
    Left = 680
    Top = 40
    object quer_operacionesCONS_OPER_COSTURA: TIntegerField
      FieldName = 'CONS_OPER_COSTURA'
    end
    object quer_operacionesCODI_OPER_COSTURA: TStringField
      FieldName = 'CODI_OPER_COSTURA'
      Size = 12
    end
    object quer_operacionesCONS_PROCESO: TIntegerField
      FieldName = 'CONS_PROCESO'
    end
    object quer_operacionesCONS_OPER_COST_TIPO: TIntegerField
      FieldName = 'CONS_OPER_COST_TIPO'
    end
    object quer_operacionesCONS_COMP_GRUPO: TIntegerField
      FieldName = 'CONS_COMP_GRUPO'
    end
    object quer_operacionesNOMB_OPER_COSTURA: TStringField
      FieldName = 'NOMB_OPER_COSTURA'
      Size = 30
    end
    object quer_operacionesPUNT_POR_CENTIMETRO: TFloatField
      FieldName = 'PUNT_POR_CENTIMETRO'
    end
    object quer_operacionesCONS_RECU_FAMILIA: TIntegerField
      FieldName = 'CONS_RECU_FAMILIA'
    end
    object quer_operacionesREVO_POR_MINUTO: TIntegerField
      FieldName = 'REVO_POR_MINUTO'
    end
    object quer_operacionesTIEM_CRONOMETRO: TIntegerField
      FieldName = 'TIEM_CRONOMETRO'
    end
    object quer_operacionesCODI_PROCESO: TStringField
      FieldKind = fkLookup
      FieldName = 'CODI_PROCESO'
      LookupDataSet = quer_procesos
      LookupKeyFields = 'CONS_PROCESO'
      LookupResultField = 'CODI_PROCESO'
      KeyFields = 'CONS_PROCESO'
      Size = 12
      Lookup = True
    end
    object quer_operacionesCODI_OPER_COST_TIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'CODI_OPER_COST_TIPO'
      LookupDataSet = quer_oper_tipos
      LookupKeyFields = 'CONS_OPER_COST_TIPO'
      LookupResultField = 'CODI_OPER_COST_TIPO'
      KeyFields = 'CONS_OPER_COST_TIPO'
      Size = 12
      Lookup = True
    end
    object quer_operacionesTIEM_ASIGNADO: TFloatField
      FieldName = 'TIEM_ASIGNADO'
    end
    object quer_operacionesCODI_RECU_FAMILIA: TStringField
      FieldKind = fkLookup
      FieldName = 'CODI_RECU_FAMILIA'
      LookupDataSet = quer_recu_familias
      LookupKeyFields = 'CONS_RECU_FAMILIA'
      LookupResultField = 'CODI_RECU_FAMILIA'
      KeyFields = 'CONS_RECU_FAMILIA'
      Size = 12
      Lookup = True
    end
    object quer_operacionesCODI_COMP_GRUPO: TStringField
      FieldKind = fkLookup
      FieldName = 'CODI_COMP_GRUPO'
      LookupDataSet = quer_comp_grupos
      LookupKeyFields = 'CONS_COMP_GRUPO'
      LookupResultField = 'CODI_COMP_GRUPO'
      KeyFields = 'CONS_COMP_GRUPO'
      Size = 12
      Lookup = True
    end
    object quer_operacionesCOST_OPERACION: TFloatField
      FieldName = 'COST_OPERACION'
    end
    object quer_operacionesAJUSTE: TStringField
      FieldName = 'AJUSTE'
      Size = 12
    end
  end
  object quer_procesos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_proceso, codi_proceso'
      'from pcp_procesos'
      'order by cons_proceso')
    Left = 615
    Top = 43
  end
  object quer_oper_tipos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_oper_cost_tipo, codi_oper_cost_tipo '
      'from pcp_oper_cost_tipos'
      'order by cons_oper_cost_tipo')
    Left = 721
    Top = 41
  end
  object quer_recu_familias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_recu_familia, codi_recu_familia'
      'from glo_recu_familias'
      'order by cons_recu_familia')
    Left = 744
    Top = 43
  end
  object pop_operacion: TTBXPopupMenu
    OnPopup = pop_operacionPopup
    Left = 10
    Top = 193
    object TBXItem24: TTBXItem
      Action = acti_fila_titulo
      ImageIndex = 9
      Images = _fMDI.imag_varias
    end
    object TBXItem23: TTBXItem
      Action = acti_fila_operacion
      ImageIndex = 8
      Images = _fMDI.imag_varias
    end
    object TBXSeparatorItem10: TTBXSeparatorItem
    end
    object TBXItem21: TTBXItem
      Action = acti_ver_analisis
      ImageIndex = 3
      Images = _fMDI.imag_varias
    end
  end
  object quer_oper_llamar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select secu_operacion,   codi_oper_costura,'
      'nomb_oper_costura, frecuencia, es_titulo, cons_punt_Control'
      'from pcp_refe_list_oper_costura'
      'where cons_refe_variacion = :cons_refe_tipo_variacion'
      'order by secu_operacion')
    Left = 594
    Top = 233
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_refe_tipo_variacion'
        ParamType = ptUnknown
      end>
  end
  object quer_eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Delete from PCP_REFE_LIST_OPER_COSTURA'
      'Where cons_refe_variacion = :cons_refe_variacion')
    Left = 562
    Top = 233
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_refe_variacion'
        ParamType = ptUnknown
      end>
  end
  object quer_oper_guardar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert into PCP_REFE_LIST_OPER_COSTURA'
      '(cons_refe_variacion, secu_operacion, codi_oper_costura,'
      
        'nomb_oper_costura, frecuencia, tiempo, es_titulo, cons_punt_cont' +
        'rol)'
      'Values'
      '(:cons_refe_variacion, :secu_operacion, :codi_oper_costura,'
      
        ':nomb_oper_costura, :frecuencia, :tiempo, :es_titulo, :cons_punt' +
        '_control)'
      ' ')
    Left = 626
    Top = 233
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'secu_operacion'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codi_oper_costura'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomb_oper_costura'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'frecuencia'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'tiempo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'es_titulo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_punt_control'
        ParamType = ptInput
      end>
  end
  object quer_comp_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'select cons_comp_grupo, codi_comp_grupo'
      'from PCP_COMP_GRUPOS'
      'Order by cons_comp_grupo')
    Left = 648
    Top = 43
  end
  object quer_importar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from vis_pcp_refe_variaciones'
      'Order by cons_referencia, cons_refe_tipo_variacion')
    Left = 364
    Top = 40
    object quer_importarCONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_REFE_VARIACIONES.CONS_REFE_VARIACION'
    end
    object quer_importarCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_REFE_VARIACIONES.CONS_REFERENCIA'
    end
    object quer_importarCODI_REFERENCIA: TStringField
      DisplayLabel = 'Cód. referencia'
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_REFE_VARIACIONES.CODI_REFERENCIA'
      Size = 12
    end
    object quer_importarNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Nombre Referencia'
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_REFE_VARIACIONES.NOMB_REFERENCIA'
      Size = 60
    end
    object quer_importarCONS_REFE_TIPO_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_REFE_VARIACIONES.CONS_REFE_TIPO_VARIACION'
    end
    object quer_importarCODI_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Cód. variación'
      FieldName = 'CODI_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_REFE_VARIACIONES.CODI_REFE_TIPO_VARIACION'
      Size = 12
    end
    object quer_importarNOMB_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Nombre variación'
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_REFE_VARIACIONES.NOMB_REFE_TIPO_VARIACION'
      Size = 60
    end
  end
  object data_importar: TDataSource
    DataSet = quer_importar
    Left = 393
    Top = 40
  end
  object quer_comp_llamar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select secu_oper_vari_componente, codi_oper_costura,'
      'nomb_oper_costura, frecuencia, es_titulo'
      'from pcp_comp_list_oper_costura'
      'where cons_comp_variacion = :cons_comp_variacion'
      'order by secu_oper_vari_componente')
    Left = 659
    Top = 234
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_comp_variacion'
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
    Left = 8
    Top = 330
  end
  object tabl_repo_list_operaciones: TTable
    DatabaseName = 'PCPLocal'
    FieldDefs = <
      item
        Name = 'numero'
        DataType = ftInteger
      end
      item
        Name = 'es_titulo'
        DataType = ftBoolean
      end
      item
        Name = 'proceso'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'componente'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'operacion'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'codigo'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'nomb_operacion'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'frecuencia'
        DataType = ftFloat
      end
      item
        Name = 'tipo_maquina'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ajuste'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'ppc'
        DataType = ftFloat
      end
      item
        Name = 'rpm'
        DataType = ftFloat
      end
      item
        Name = 'tiempo'
        DataType = ftFloat
      end
      item
        Name = 'ph'
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'tmp_repo_list_operaciones'
    Left = 552
    Top = 338
  end
  object quer_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_GLO_REFE_MOST_METODOS'
      'ORDER BY CODI_REFERENCIA')
    Left = 248
    Top = 34
  end
  object data_Referencias: TDataSource
    AutoEdit = False
    DataSet = quer_referencias
    Left = 280
    Top = 34
  end
  object padr_pop_punt_control: TTBXPopupMenu
    OnPopup = padr_pop_punt_controlPopup
    Left = 8
    Top = 362
    object padr_item_punt_cont_eliminar: TTBXItem
      Caption = 'Eliminar punto de control'
      ImageIndex = 36
      Images = _fMDI.imagenesPCP
      OnClick = padr_item_punt_cont_eliminarClick
    end
    object padr_item_punt_cont_elim_todos: TTBXItem
      Caption = 'Eliminar TODOS los puntos de control'
      OnClick = padr_item_punt_cont_elim_todosClick
    end
    object padr_sepa_punt_control: TTBXSeparatorItem
    end
    object padr_sepa_punt_cont_2: TTBXSeparatorItem
    end
  end
  object quer_punt_control: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PUNT_CONTROL, CODI_PUNT_CONTROL,'
      'NOMB_PUNT_CONTROL'
      'FROM PCP_PUNT_CONTROL'
      'ORDER BY CONS_PUNT_CONTROL')
    Left = 10
    Top = 394
  end
end

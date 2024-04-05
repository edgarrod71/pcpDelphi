inherited fn1_meto_elem_cst1: Tfn1_meto_elem_cst1
  Left = -3
  Top = 98
  Width = 812
  Height = 536
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 499
    Width = 804
  end
  object pane_importar: TToolWindow97 [2]
    Left = 264
    Top = 88
    Caption = 'Importar elementos'
    ClientAreaHeight = 295
    ClientAreaWidth = 481
    TabOrder = 9
    Visible = False
    OnVisibleChanged = pane_importarVisibleChanged
    object dfsSplitter2: TdfsSplitter
      Left = 0
      Top = 179
      Width = 481
      Height = 10
      Cursor = crVSplit
      Align = alTop
      MinSize = 1
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object grid_elementos: TdxDBGrid
      Left = 0
      Top = 26
      Width = 481
      Height = 153
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CODI_ELEM_CST'
      ShowGroupPanel = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryFormat = '0'
              SummaryType = cstCount
            end>
          Name = 'padr_gridSummaryGroup1'
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
      HeaderColor = 15133420
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowRowFooter = True
      OnChangeNode = grid_elementosChangeNode
      object grid_elementosCODI_ELEM_CST: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_ELEM_CST'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '0'
      end
      object grid_elementosNOMB_ELEM_CST: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 186
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_ELEM_CST'
      end
      object grid_elementosCONS_CST_DIFICULTAD: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_CST_DIFICULTAD'
      end
      object grid_elementosCODI_CST_DIFICULTAD: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_CST_DIFICULTAD'
      end
      object grid_elementosNOMB_CST_DIFICULTAD: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_CST_DIFICULTAD'
      end
      object grid_elementosCONS_CST_DISTANCIA: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_CST_DISTANCIA'
      end
      object grid_elementosCODI_CST_DISTANCIA: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_CST_DISTANCIA'
      end
      object grid_elementosNOMB_CST_DISTANCIA: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 93
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_CST_DISTANCIA'
      end
      object grid_elementosCONS_CST_POSICIONAMIENTO: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Visible = False
        Width = 152
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_CST_POSICIONAMIENTO'
      end
      object grid_elementosCODI_CST_POSICIONAMIENTO: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Visible = False
        Width = 159
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_CST_POSICIONAMIENTO'
      end
      object grid_elementosNOMB_CST_POSICIONAMIENTO: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_CST_POSICIONAMIENTO'
      end
      object grid_elementosTIEM_CST: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIEM_CST'
      end
      object grid_elementosNOMB_ANALISTA: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 165
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_ANALISTA'
      end
      object grid_elementosDESCRIPCION: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 229
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRIPCION'
      end
      object grid_elementosFECH_MODIFICACION: TdxDBGridDateColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 138
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_MODIFICACION'
      end
      object grid_elementosUSUA_MODIFICACION: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Visible = False
        Width = 181
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUA_MODIFICACION'
      end
      object grid_elementosFECH_SISTEMA: TdxDBGridDateColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_SISTEMA'
      end
      object grid_elementosUSUA_SISTEMA: TdxDBGridMaskColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUA_SISTEMA'
      end
    end
    object grid_importar: TSCLColumnGrid
      Left = 0
      Top = 189
      Width = 481
      Height = 106
      Cursor = crDefault
      Align = alClient
      ColCount = 9
      DefaultRowHeight = 19
      FixedColor = 15582631
      RowCount = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
      ParentFont = False
      PopupMenu = pop_grid_importar
      ScrollBars = ssBoth
      TabOrder = 1
      GridLineColor = 14467501
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'MS Sans Serif'
      ActiveCellFont.Style = [fsBold]
      OnGetAlignment = gridGetAlignment
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
      MouseActions.AllColumnSize = True
      MouseActions.AllSelect = True
      MouseActions.RowSelect = True
      MouseActions.SizeFixedCol = True
      ScrollWidth = 16
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
        'Movimiento M.I.'
        'Código M.I.'
        'TMU'
        'Código M.D.'
        'Movimiento M.D.'
        'Tiempo')
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
          Header = 'Movimiento M.I.'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridNOMB_MANO_IZQUIERDA'
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
          Width = 127
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
          Header = 'Código M.I.'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridCODI_MANO_IZQUIERDA'
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
          Width = 65
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
          Header = 'TMU'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridTIEM_TMU'
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
          Header = 'Código M.D.'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridCODI_MANO_DERECHA'
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
          Width = 72
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
          Header = 'Movimiento M.D.'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridNOMB_MANO_DERECHA'
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
          Name = 'gridTIEM_2'
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
          Name = 'gridTIEM_MANO_IZQUIERDA'
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
          Name = 'gridTIEM_MANO_DERECHA'
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
        127
        65
        64
        72
        200
        64
        64
        64)
    end
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 481
      Height = 26
      object TBXToolbar2: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        FullSize = True
        TabOrder = 0
        object TBXItem20: TTBXItem
          Action = acti_impo_sele_todos
          DisplayMode = nbdmImageAndText
          Images = _fMDI.imagenesPCP
        end
        object TBXItem21: TTBXItem
          Action = acti_impo_importar
          DisplayMode = nbdmImageAndText
          ImageIndex = 37
          Images = _fMDI.imagenesPCP
        end
      end
    end
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    inherited padr_barra: TTBXToolbar
      object TBXSubmenuItem1: TTBXSubmenuItem [11]
        Action = acti_impr_gestos
        DropdownCombo = True
        Images = _fMDI.imag_grandes
        object TBXItem25: TTBXItem
          Action = acti_impr_gestos
          DisplayMode = nbdmImageAndText
          Images = _fMDI.imagenesPCP
        end
        object TBXItem24: TTBXItem
          Action = acti_impr_historial
          DisplayMode = nbdmImageAndText
          Images = _fMDI.imagenesPCP
        end
      end
      inherited padr_boto_imprimir: TTBXItem
        Visible = False
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 758
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 508
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
  object AdvPanel1: TPCPFrame [7]
    Tag = 118
    Left = 0
    Top = 52
    Width = 804
    Height = 118
    Align = alTop
    BorderWidth = 3
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Caption = 'Información del elemento CST'
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel1: TSCLDBLabel
      Left = 2
      Top = 27
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
      FocusControl = edit_codi_cst
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código CST:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_ELEM_CST'
      Field = 'CODI_ELEM_CST'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 210
      Top = 27
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombre elemento:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_ELEM_CST'
      Field = 'NOMB_ELEM_CST'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 2
      Top = 87
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Analista:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_ANALISTA'
      Field = 'NOMB_ANALISTA'
    end
    object SCLDBLabel8: TSCLDBLabel
      Left = 2
      Top = 47
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
      FocusControl = PCPLookUpComboEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grado dificultad:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_CST_DIFICULTAD'
      Field = 'CONS_CST_DIFICULTAD'
    end
    object SCLDBLabel9: TSCLDBLabel
      Left = 210
      Top = 47
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
      Caption = 'Posicionamiento:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_CST_POSICIONAMIENTO'
      Field = 'CONS_CST_POSICIONAMIENTO'
    end
    object SCLDBLabel10: TSCLDBLabel
      Left = 580
      Top = 47
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
      FocusControl = PCPLookUpComboEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Distancia:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_CST_DISTANCIA'
      Field = 'CONS_CST_DISTANCIA'
    end
    object SCLDBLabel11: TSCLDBLabel
      Left = 2
      Top = 68
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'No. gestos:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel12: TSCLDBLabel
      Left = 418
      Top = 87
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
      FocusControl = dxDBCurrencyEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tiempo (TMU):'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'TIEM_CST'
      Field = 'TIEM_CST'
    end
    object labe_tiem_elem_cst_2: TSCLDBLabel
      Left = 580
      Top = 87
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
      FocusControl = edit_tiem_2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tiempo:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel15: TSCLDBLabel
      Left = 418
      Top = 47
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
      FocusControl = PCPLookUpComboEdit4
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Peso/esfuerzo:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_CST_PESO'
      Field = 'CONS_CST_PESO'
    end
    object edit_codi_cst: TdxDBEdit
      Left = 104
      Top = 27
      Width = 105
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_ELEM_CST'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 312
      Top = 27
      Width = 313
      TabOrder = 2
      DataField = 'NOMB_ELEM_CST'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 104
      Top = 47
      Width = 105
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_CST_DIFICULTAD'
      DataSource = data_ventana
      KeyField = 'cons_cst_dificultad'
      ListField = 'nomb_cst_dificultad'
      ListSource = data_dificultades
      ParentCtl3D = False
      TabOrder = 3
      DirectInput = False
    end
    object PCPLookUpComboEdit2: TPCPLookUpComboEdit
      Left = 312
      Top = 47
      Width = 105
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_CST_POSICIONAMIENTO'
      DataSource = data_ventana
      KeyField = 'cons_cst_posicionamiento'
      ListField = 'nomb_cst_posicionamiento'
      ListSource = data_posicionamientos
      ParentCtl3D = False
      TabOrder = 4
      DirectInput = False
    end
    object PCPLookUpComboEdit3: TPCPLookUpComboEdit
      Left = 682
      Top = 47
      Width = 105
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_CST_DISTANCIA'
      DataSource = data_ventana
      KeyField = 'cons_cst_distancia'
      ListField = 'nomb_cst_distancia'
      ListSource = data_distancias
      ParentCtl3D = False
      TabOrder = 6
      DirectInput = False
    end
    object dxDBCurrencyEdit1: TdxDBCurrencyEdit
      Left = 520
      Top = 87
      Width = 105
      Enabled = False
      TabOrder = 7
      Alignment = taRightJustify
      DataField = 'TIEM_CST'
      DataSource = data_ventana
      StyleController = padr_estilo
      DisplayFormat = ',0.000'
      Nullable = False
      StoredValues = 1
    end
    object dxDBEdit8: TdxDBEdit
      Left = 104
      Top = 87
      Width = 313
      TabOrder = 8
      DataField = 'NOMB_ANALISTA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object edit_nume_gestos: TdxCurrencyEdit
      Left = 104
      Top = 67
      Width = 41
      Enabled = False
      TabOrder = 9
      Alignment = taRightJustify
      StyleController = padr_estilo
      DisplayFormat = ',0'
      StoredValues = 1
    end
    object edit_tiem_2: TdxCurrencyEdit
      Left = 682
      Top = 87
      Width = 105
      Enabled = False
      TabOrder = 10
      Alignment = taRightJustify
      StyleController = padr_estilo
      DisplayFormat = ',0.000'
      StoredValues = 1
    end
    object PCPLookUpComboEdit4: TPCPLookUpComboEdit
      Left = 520
      Top = 47
      Width = 105
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_CST_PESO'
      DataSource = data_ventana
      KeyField = 'cons_cst_peso'
      ListField = 'nomb_cst_peso'
      ListSource = data_pesos
      ParentCtl3D = False
      TabOrder = 5
      DirectInput = False
    end
  end
  object page: TSCLPageControl [8]
    Left = 0
    Top = 265
    Width = 804
    Height = 234
    ActivePage = page_gestos
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 7
    Transparent = True
    Visible = False
    FixedDimension = 19
    object page_gestos: TSCLTabSheet
      Color = 16578290
      Caption = 'Gestos'
      object dfsSplitter1: TdfsSplitter
        Left = 517
        Top = 26
        Height = 185
        Cursor = crHSplit
        Align = alRight
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object TBXDock2: TTBXDock
        Left = 0
        Top = 0
        Width = 800
        Height = 26
        object TBXToolbar1: TTBXToolbar
          Left = 0
          Top = 0
          BorderStyle = bsNone
          DockMode = dmCannotFloatOrChangeDocks
          FullSize = True
          ParentShowHint = False
          ProcessShortCuts = True
          ShowHint = True
          TabOrder = 0
          object boto_mtm: TTBXItem
            Tag = 1
            AutoCheck = True
            Caption = 'MTM'
            Checked = True
            DisplayMode = nbdmImageAndText
            GroupIndex = 1
            ImageIndex = 0
            Images = imag_ventana
            OnClick = doFiltrarMTM
          end
          object TBXItem2: TTBXItem
            Tag = 2
            AutoCheck = True
            Caption = 'MTM-2'
            DisplayMode = nbdmImageAndText
            GroupIndex = 1
            ImageIndex = 1
            Images = imag_ventana
            OnClick = doFiltrarMTM
          end
          object TBXItem1: TTBXItem
            Tag = 3
            AutoCheck = True
            Caption = 'DTU'
            DisplayMode = nbdmImageAndText
            GroupIndex = 1
            ImageIndex = 2
            Images = imag_ventana
            OnClick = doFiltrarMTM
          end
          object TBXSeparatorItem1: TTBXSeparatorItem
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
            Caption = 'Importar gestos'
            Control = pane_importar
            DisplayMode = nbdmImageAndText
            ImageIndex = 31
            Images = _fMDI.imagenesPCP
          end
          object TBXSeparatorItem8: TTBXSeparatorItem
          end
          object TBXItem28: TTBXItem
            Action = padr_acti_expo_xls
            ImageIndex = 17
            Images = _fMDI.imagenesPCP
          end
          object TBXItem27: TTBXItem
            Action = padr_acti_expo_HTML
            ImageIndex = 18
            Images = _fMDI.imagenesPCP
          end
          object TBXItem26: TTBXItem
            Action = padr_acti_expo_arch_sepa_comas
            ImageIndex = 19
            Images = _fMDI.imagenesPCP
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 26
        Width = 517
        Height = 185
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 1
        object grid: TSCLColumnGrid
          Left = 5
          Top = 5
          Width = 507
          Height = 175
          Cursor = crDefault
          Align = alClient
          ColCount = 9
          Ctl3D = False
          DefaultRowHeight = 19
          FixedColor = 15582631
          RowCount = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = pop_grid
          ScrollBars = ssBoth
          TabOrder = 0
          OnKeyDown = gridKeyDown
          OnRowMoved = gridRowMoved
          GridLineColor = 14467501
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'MS Sans Serif'
          ActiveCellFont.Style = [fsBold]
          EnhRowColMove = False
          OnGetCellColor = gridGetCellColor
          OnGetAlignment = gridGetAlignment
          OnCanEditCell = gridCanEditCell
          ControlLook.ControlStyle = csClassic
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
          ColumnSize.Save = True
          ColumnSize.Key = 'un1_metodos'
          ColumnSize.Section = 'Columnas'
          ColumnSize.SynchWithGrid = True
          ColumnSize.Location = clIniFile
          CellNode.ShowTree = False
          SizeWhileTyping.Height = True
          MouseActions.AllSelect = True
          MouseActions.RowSelect = True
          MouseActions.SizeFixedCol = True
          ScrollWidth = 16
          FixedColWidth = 27
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
            'Movimiento M.I.'
            'Código M.I.'
            'TMU'
            'Código M.D.'
            'Movimiento M.D.')
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
              Width = 27
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
              Header = 'Movimiento M.I.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridNOMB_MANO_IZQUIERDA'
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
              Width = 155
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
              Header = 'Código M.I.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridCODI_MANO_IZQUIERDA'
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
              Width = 69
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
              Header = 'TMU'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIEM_TMU'
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
              Header = 'Código M.D.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridCODI_MANO_DERECHA'
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
              Header = 'Movimiento M.D.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridNOMB_MANO_DERECHA'
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
              Width = 158
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
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIEM_2'
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
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIEM_MANO_IZQUIERDA'
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
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'gridTIEM_MANO_DERECHA'
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
              Width = 46
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
            27
            155
            69
            57
            64
            158
            57
            46
            46)
        end
      end
      inline fram_fotografia: Tffra_fotografiaDB
        Left = 527
        Top = 26
        Width = 273
        Height = 185
        Align = alRight
        TabOrder = 2
        inherited fram_pane_atras: TPanel
          Width = 273
          Height = 159
          inherited fram_fotografia: TEDBImage
            Width = 263
            Height = 126
          end
          inherited fram_pane_stretch: TPanel
            Top = 131
            Width = 263
            inherited fram_chec_ajustar: TdxDBCheckEdit
              DataField = 'AJUS_IMAGEN'
              DataSource = data_ventana
            end
          end
        end
        inherited TBXDock1: TTBXDock
          Width = 273
        end
      end
    end
    object page_historial: TSCLTabSheet
      Color = 16578290
      Caption = 'Historial'
      object Panel1: TPCPFrame
        Tag = 56
        Left = 0
        Top = 0
        Width = 800
        Height = 56
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Titulo_Color = 16244694
        TipoFrame = tfNinguno
        FlatBorder = True
        object SCLDBLabel4: TSCLDBLabel
          Left = 202
          Top = 6
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fecha:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'FECH_SISTEMA'
          Field = 'FECH_SISTEMA'
        end
        object SCLDBLabel5: TSCLDBLabel
          Left = 410
          Top = 6
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Usuario:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'USUA_SISTEMA'
          Field = 'USUA_SISTEMA'
        end
        object SCLDBLabel7: TSCLDBLabel
          Left = 202
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fecha:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'FECH_MODIFICACION'
          Field = 'FECH_MODIFICACION'
        end
        object SCLDBLabel6: TSCLDBLabel
          Left = 410
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Usuario:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'USUA_MODIFICACION'
          Field = 'USUA_MODIFICACION'
        end
        object SCLDBLabel13: TSCLDBLabel
          Left = 48
          Top = 6
          Width = 166
          Height = 21
          Alive = False
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = [fsBold]
          FocusOffset = 2
          Position = wlpLeft
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Creación del elemento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'FECH_SISTEMA'
          Field = 'FECH_SISTEMA'
        end
        object SCLDBLabel14: TSCLDBLabel
          Left = 96
          Top = 26
          Width = 118
          Height = 21
          Alive = False
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = [fsBold]
          FocusOffset = 2
          Position = wlpLeft
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Ultima modificación'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'FECH_SISTEMA'
          Field = 'FECH_SISTEMA'
        end
        object dxDBEdit3: TdxDBEdit
          Left = 304
          Top = 6
          Width = 153
          Enabled = False
          TabOrder = 0
          DataField = 'FECH_SISTEMA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit4: TdxDBEdit
          Left = 512
          Top = 6
          Width = 105
          Enabled = False
          TabOrder = 1
          DataField = 'USUA_SISTEMA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit5: TdxDBEdit
          Left = 304
          Top = 26
          Width = 153
          Enabled = False
          TabOrder = 2
          DataField = 'FECH_MODIFICACION'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit6: TdxDBEdit
          Left = 512
          Top = 26
          Width = 105
          Enabled = False
          TabOrder = 3
          DataField = 'USUA_MODIFICACION'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
      end
      inline ffra_historialDB1: Tffra_historialDB
        Top = 56
        Width = 800
        Height = 155
        Align = alClient
        TabOrder = 1
        inherited fram_pane: TPanel
          Width = 800
          Height = 155
          inherited fram_grid_historial: TdxDBGrid
            Width = 1070
            Height = 122
            Filter.Criteria = {00000000}
          end
          inherited TBXDock1: TTBXDock
            Width = 1070
          end
        end
        inherited data_historial: TDataSource
          DataSet = tabl_historial
        end
        inherited pop_grid_anotaciones: TTBXPopupMenu
          Images = _fMDI.imagenesPCP
        end
      end
    end
  end
  object pane_gestos: TPCPFrame [9]
    Tag = 93
    Left = 0
    Top = 172
    Width = 804
    Height = 93
    Align = alTop
    BorderWidth = 3
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Caption = 'Descripción y gestos'
    Titulo_Color = 16244694
    FlatBorder = True
    object dxDBMemo1: TdxDBMemo
      Left = 4
      Top = 23
      Width = 796
      Align = alClient
      TabOrder = 1
      DataField = 'DESCRIPCION'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 66
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 500
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 170
    Width = 804
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_expo_xls: TAction
      OnExecute = padr_acti_expo_xlsExecute
    end
    inherited padr_acti_expo_HTML: TAction
      OnExecute = padr_acti_expo_HTMLExecute
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      OnExecute = padr_acti_expo_arch_sepa_comasExecute
    end
  end
  inherited Variables: TSCLPropiedadesForm
    verBotonesNavegacion = False
  end
  inherited Tabla_Ventana: TTable
    OnCalcFields = Tabla_VentanaCalcFields
    TableName = 'PCP_ELEM_CST'
    object Tabla_VentanaCODI_ELEM_CST: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_ELEM_CST'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_ELEM_CST: TStringField
      DisplayLabel = 'Nombre elemento'
      FieldName = 'NOMB_ELEM_CST'
      Required = True
      Size = 60
    end
    object Tabla_VentanaCONS_CST_DIFICULTAD: TIntegerField
      DisplayLabel = 'Grado dificultad'
      FieldName = 'CONS_CST_DIFICULTAD'
      Required = True
    end
    object Tabla_VentanaCONS_CST_DISTANCIA: TIntegerField
      DisplayLabel = 'Posicionamiento'
      FieldName = 'CONS_CST_DISTANCIA'
      Required = True
    end
    object Tabla_VentanaCONS_CST_POSICIONAMIENTO: TIntegerField
      DisplayLabel = 'Distancia'
      FieldName = 'CONS_CST_POSICIONAMIENTO'
      Required = True
    end
    object Tabla_VentanaSOFTCONF: TIntegerField
      FieldName = 'SOFTCONF'
    end
    object Tabla_VentanaNOMB_ANALISTA: TStringField
      DisplayLabel = 'Analista'
      FieldName = 'NOMB_ANALISTA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 240
    end
    object Tabla_VentanaFECH_MODIFICACION: TDateTimeField
      FieldName = 'FECH_MODIFICACION'
    end
    object Tabla_VentanaUSUA_MODIFICACION: TStringField
      FieldName = 'USUA_MODIFICACION'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaTIEM_CST: TFloatField
      FieldName = 'TIEM_CST'
      Required = True
    end
    object Tabla_VentanaCONS_CST_PESO: TIntegerField
      DisplayLabel = 'Peso/esfuerzo'
      FieldName = 'CONS_CST_PESO'
      Required = True
    end
    object Tabla_VentanaIMAGEN: TBlobField
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaAJUS_IMAGEN: TIntegerField
      FieldName = 'AJUS_IMAGEN'
    end
  end
  object quer_distancias: TQuery [18]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_cst_distancia, nomb_cst_distancia'
      'from sis_cst_distancias'
      'where cons_cst_distancia > 0'
      'order by cons_cst_distancia')
    Left = 920
    Top = 100
    object quer_distanciasCONS_CST_DISTANCIA: TIntegerField
      FieldName = 'CONS_CST_DISTANCIA'
    end
    object quer_distanciasNOMB_CST_DISTANCIA: TStringField
      FieldName = 'NOMB_CST_DISTANCIA'
      Size = 60
    end
  end
  object data_distancias: TDataSource [19]
    DataSet = quer_distancias
    Left = 952
    Top = 100
  end
  object quer_posicionamientos: TQuery [20]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_cst_posicionamiento, nomb_cst_posicionamiento'
      'from sis_cst_posicionamientos'
      'where cons_cst_posicionamiento > 0'
      'order by cons_cst_posicionamiento'
      ' ')
    Left = 920
    Top = 132
    object quer_posicionamientosCONS_CST_POSICIONAMIENTO: TIntegerField
      FieldName = 'CONS_CST_POSICIONAMIENTO'
    end
    object quer_posicionamientosNOMB_CST_POSICIONAMIENTO: TStringField
      FieldName = 'NOMB_CST_POSICIONAMIENTO'
      Size = 60
    end
  end
  object data_posicionamientos: TDataSource [21]
    DataSet = quer_posicionamientos
    Left = 952
    Top = 132
  end
  object quer_dificultades: TQuery [22]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_cst_dificultad, nomb_cst_dificultad'
      'from sis_cst_dificultades'
      'where cons_cst_dificultad > 0'
      'order by cons_cst_dificultad'
      ' ')
    Left = 920
    Top = 164
    object quer_dificultadesCONS_CST_DIFICULTAD: TIntegerField
      FieldName = 'CONS_CST_DIFICULTAD'
    end
    object quer_dificultadesNOMB_CST_DIFICULTAD: TStringField
      FieldName = 'NOMB_CST_DIFICULTAD'
      Size = 60
    end
  end
  object data_dificultades: TDataSource [23]
    DataSet = quer_dificultades
    Left = 952
    Top = 164
  end
  object imag_ventana: TImageList [24]
    Left = 418
    Top = 4
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF0D0D0DFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0D0D0DFF000000FF000000FF0D0D0DFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0D0D0DFF000000FF000000FF0D0D0DFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0D0D0DFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF42EB96FF57ED
      A1FF52EC9FFF69EFACFF76F0B3FF77F1B3FF8DF2C0FF9DF5C8FFB4F7D5FFDFFB
      EDFFF2FDF7FFF8FEFAFF0D0D0DFF000000FF000000FF000000FFFF7F54FFFF91
      6DFFFF9D7DFFFF9877FFFFA78BFFFFB69EFFFFC0ABFFFFD6C9FFFFDED4FFFFE5
      DCFFFFE7E0FFFFF2EEFF0D0D0DFF000000FF000000FF000000FF4242FFFF5E5E
      FFFF7777FFFF8686FFFF7E7EFFFF9494FFFFA9A9FFFFC7C7FFFFE1E1FFFFEBEB
      FFFFF3F3FFFFF8F8FFFF0D0D0DFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF42EB96FF53ED
      A0FF52EC9FFF69EFACFF73F0B1FF77F1B3FF8DF2BFFF9DF5C8FF007F3FFF007F
      3FFF007F3FFFF8FEFAFF000000FF000000FF000000FF000000FFFF7F54FFFF91
      6DFFFF9A79FFFF9877FFFFA78BFFFFB69EFFFFC0ABFFB22C00FFB22C00FFB22C
      00FFB22C00FFFFF2EEFF000000FF000000FF000000FF000000FF4242FFFF5E5E
      FFFF7777FFFF8282FFFF7E7EFFFF9494FFFFA9A9FFFFCCCCFFFFE1E1FFFFEBEB
      FFFFF3F3FFFFF8F8FFFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF42EB96FF53ED
      A0FF52EC9FFF69EFACFF73F0B1FF77F1B3FF8DF2BFFF9DF5C8FFB5F7D6FF007F
      3FFFF3FDF7FFF8FEFAFF000000FF000000FF000000FF000000FFFF7F54FFFF91
      6DFFFF9A79FFFF9877FFFFA78BFFFFB69EFFFFC0ABFFFFD8CBFFB22C00FFFFE3
      DBFFFFE6DFFFFFF2EEFF000000FF000000FF000000FF000000FF4242FFFF5E5E
      FFFF7777FFFF8282FFFF7E7EFFFF9494FFFFA9A9FFFF4C4CB6FF4E4EB1FF5151
      AFFFF3F3FFFFF8F8FFFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF42EB96FF53ED
      A0FF52EC9FFF69EFACFF73F0B1FF77F1B3FF8DF2BFFF9DF5C8FFB5F7D6FF007F
      3FFFF3FDF7FFF8FEFAFF000000FF000000FF000000FF000000FFFF7F54FFFF91
      6DFFFF9A79FFFF9877FFFFA78BFFFFB69EFFFFC0ABFFFFD8CBFFFFDDD2FFB22C
      00FFFFE6DFFFFFF2EEFF000000FF000000FF000000FF000000FF4242FFFF5E5E
      FFFF7777FFFF8282FFFF7E7EFFFF9494FFFFA9A9FFFF000080FFE1E1FFFFEBEB
      FFFF5252ADFFF8F8FFFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF42EB96FF53ED
      A0FF52EC9FFF69EFACFF73F0B1FF77F1B3FF8DF2BFFF9DF5C8FFB5F7D6FF007F
      3FFFF3FDF7FFF8FEFAFF000000FF000000FF000000FF000000FFFF7F54FFFF91
      6DFFFF9A79FFFF9877FFFFA78BFFFFB69EFFFFC0ABFFFFD8CBFFFFDDD2FFFFE3
      DBFFB22C00FFFFF2EEFF000000FF000000FF000000FF000000FF4242FFFF5E5E
      FFFF7777FFFF8282FFFF7E7EFFFF9494FFFFA9A9FFFF000080FFE1E1FFFFEBEB
      FFFF000080FFF8F8FFFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF42EB96FF53ED
      A0FF52EC9FFF69EFACFF73F0B1FF77F1B3FF8DF2BFFF9DF5C8FF007F3FFF007F
      3FFFF3FDF7FFF8FEFAFF000000FF000000FF000000FF000000FFFF7F54FFFF91
      6DFFFF9A79FFFF9877FFFFA78BFFFFB69EFFFFC0ABFFB22C00FFFFDDD2FFFFE3
      DBFFB22C00FFFFF2EEFF000000FF000000FF000000FF000000FF4242FFFF5E5E
      FFFF7777FFFF8282FFFF7E7EFFFF9494FFFFA9A9FFFF000080FFE1E1FFFFEBEB
      FFFF5252ADFFF8F8FFFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF42EB96FF53ED
      A0FF52EC9FFF69EFACFF73F0B1FF77F1B3FF8DF2BFFF9CF5C8FFB5F7D6FF007F
      3FFFF3FDF7FFF8FEFAFF000000FF000000FF000000FF000000FFFF7F54FFFF91
      6DFFFF9A79FFFF9877FFFFA78BFFFFB69EFFFFC0ABFFFFD8CBFFB22C00FFB22C
      00FFFFE5DDFFFFF2EEFF000000FF000000FF000000FF000000FF4242FFFF5E5E
      FFFF7777FFFF8282FFFF7E7EFFFF9494FFFFA9A9FFFF4C4CB6FF4E4EB1FF5151
      AFFFF3F3FFFFF8F8FFFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF42EB96FF57ED
      A1FF5FEDA6FF75F0B2FF7CF1B6FF81F2B8FF94F4C3FFA2F6CBFFC5F7DEFFE8FC
      F3FFF3FDF7FFF8FEFAFF000000FF000000FF000000FF000000FFFF7F54FFFF91
      6DFFFF9D7DFFFFA081FFFFB096FFFFBAA4FFFFC8B5FFFFD9CDFFFFE1D8FFFFE5
      DDFFFFE6DEFFFFF2EEFF000000FF000000FF000000FF000000FF4242FFFF5E5E
      FFFF7777FFFF8686FFFF8B8BFFFF9F9FFFFFB2B2FFFFCFCFFFFFE1E1FFFFEBEB
      FFFFF3F3FFFFF8F8FFFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF42EB96FF7BF1
      B5FF1D1D1DFF000000FF000000FF000000FF000000FF000000FF000000FF1D1D
      1DFFF6FDF8FFF8FEFAFF000000FF000000FF000000FF000000FFFF7F54FFFFA9
      8DFF1D1D1DFF000000FF000000FF000000FF000000FF000000FF000000FF1D1D
      1DFFFFF1EDFFFFF3EEFF000000FF000000FF000000FF000000FF4242FFFF8181
      FFFF1D1D1DFF000000FF000000FF000000FF000000FF000000FF000000FF1D1D
      1DFFF6F6FFFFF8F8FFFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF42EB96FF91F3
      C2FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFF9FEFBFFF8FEFAFF000000FF000000FF000000FF000000FFFF7F54FFFFC1
      ADFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFFF7F6FFFFF7F5FF000000FF000000FF000000FF000000FF4242FFFFA4A4
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFF9F9FFFFF8F8FFFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF1D1D1DFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF1D1D1DFF000000FF000000FF1D1D1DFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF1D1D1DFF000000FF000000FF1D1D1DFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF1D1D1DFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF1D1D1DFF000000FF000000FF000000FF000000FF000000FF000000FF1D1D
      1DFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF1D1D1DFF000000FF000000FF000000FF000000FF000000FF000000FF1D1D
      1DFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF1D1D1DFF000000FF000000FF000000FF000000FF000000FF000000FF1D1D
      1DFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF00008001800180010000
      8001800180010000800180018001000080018001800100008001800180010000
      8001800180010000800180018001000080018001800100008001800180010000
      800180018001000087E187E187E1000087E187E187E10000F7EFF7EFF7EF0000
      F00FF00FF00F0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object quer_mtm: TQuery [25]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from PCP_MTM'
      'Where tipo_movimiento = :tipo_movimiento'
      'and upper(codi_movimiento) = Upper(:codi_movimiento)')
    Left = 408
    Top = 46
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tipo_movimiento'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'codi_movimiento'
        ParamType = ptInput
      end>
  end
  object acci_ventana: TActionList [26]
    Images = _fMDI.imagenesPCP
    OnUpdate = acci_ventanaUpdate
    Left = 346
    Top = 4
    object acti_insertar: TAction
      Category = 'Grid'
      Caption = 'Insertar gesto'
      ImageIndex = 25
      ShortCut = 45
      OnExecute = acti_insertarExecute
    end
    object acti_adicionar: TAction
      Category = 'Grid'
      Caption = 'Adicionar gesto al final'
      ImageIndex = 26
      ShortCut = 16429
      OnExecute = acti_adicionarExecute
    end
    object acti_eliminar: TAction
      Category = 'Grid'
      Caption = 'Eliminar gesto'
      ImageIndex = 27
      ShortCut = 16453
      OnExecute = acti_eliminarExecute
    end
    object acti_move_arriba: TAction
      Category = 'Grid'
      Caption = 'Mover hacia arriba'
      ImageIndex = 28
      OnExecute = acti_move_arribaExecute
    end
    object acti_move_abajo: TAction
      Category = 'Grid'
      Caption = 'Mover hacia abajo'
      ImageIndex = 29
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
      Hint = 'Cut'
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
    end
    object acti_importar: TAction
      Category = 'Edit'
      Caption = 'Importar gestos...'
      Hint = 'Importar gestos desde otro elemento'
      ImageIndex = 31
    end
    object acti_impo_sele_todos: TAction
      Category = 'Importar'
      Caption = 'Seleccionar todos'
      ImageIndex = 30
      ShortCut = 16449
      OnExecute = acti_impo_sele_todosExecute
    end
    object acti_impo_importar: TAction
      Category = 'Importar'
      Caption = 'Importar selección'
      ImageIndex = 31
      OnExecute = acti_impo_importarExecute
    end
    object acti_impr_gestos: TAction
      Caption = 'Imprimir gestos'
      ImageIndex = 10
      OnExecute = acti_impr_gestosExecute
    end
    object acti_impr_historial: TAction
      Caption = 'Imprimir historial'
      ImageIndex = 40
    end
  end
  object quer_gestos: TQuery [27]
    BeforeOpen = quer_gestosBeforeOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from'
      'PCP_ELEM_CST_GESTOS'
      'Where codi_elem_cst = :codi_elem_cst'
      'order by secu_movimiento')
    Left = 320
    Top = 227
    ParamData = <
      item
        DataType = ftString
        Name = 'CODI_ELEM_CST'
        ParamType = ptInput
      end>
  end
  object pop_grid: TTBXPopupMenu [28]
    Left = 372
    Top = 226
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
    object TBXSeparatorItem3: TTBXSeparatorItem
    end
    object TBXItem11: TTBXItem
      Action = acti_move_arriba
      Images = _fMDI.imagenesPCP
    end
    object TBXItem12: TTBXItem
      Action = acti_move_abajo
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem4: TTBXSeparatorItem
    end
    object TBXVisibilityToggleItem1: TTBXVisibilityToggleItem
      Caption = 'Importar elementos'
      Control = pane_importar
      ImageIndex = 31
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem7: TTBXSeparatorItem
    end
    object TBXItem13: TTBXItem
      Action = padr_acti_guardar
      ImageIndex = 5
      Images = _fMDI.imagenesPCP
    end
    object TBXItem16: TTBXItem
      Action = padr_acti_guar_cerrar
      ImageIndex = 6
      Images = _fMDI.imagenesPCP
    end
    object TBXItem14: TTBXItem
      Action = padr_acti_cancelar
      ImageIndex = 8
      Images = _fMDI.imagenesPCP
    end
    object TBXItem15: TTBXItem
      Action = padr_acti_salir
      ImageIndex = 15
      Images = _fMDI.imagenesPCP
    end
  end
  object quer_elim_gestos: TQuery [29]
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Delete from PCP_ELEM_CST_GESTOS'
      'where codi_elem_cst = :codi_elem_cst')
    Left = 436
    Top = 226
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codi_elem_cst'
        ParamType = ptUnknown
      end>
  end
  object quer_inse_gestos: TQuery [30]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert Into'
      'PCP_ELEM_CST_GESTOS'
      '(codi_elem_cst, secu_movimiento, nomb_mano_izquierda,'
      'codi_mano_izquierda, nomb_mano_derecha, codi_mano_derecha,'
      'tiem_movimiento, tiem_mano_derecha, tiem_mano_izquierda)'
      'Values'
      '(:codi_elem_cst, :secu_movimiento, :nomb_mano_izquierda,'
      ':codi_mano_izquierda, :nomb_mano_derecha, :codi_mano_derecha,'
      ':tiem_movimiento, :tiem_mano_derecha, :tiem_mano_izquierda)')
    Left = 468
    Top = 234
    ParamData = <
      item
        DataType = ftString
        Name = 'codi_elem_cst'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'secu_movimiento'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomb_mano_izquierda'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codi_mano_izquierda'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomb_mano_derecha'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codi_mano_derecha'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'tiem_movimiento'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'tiem_mano_derecha'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'tiem_mano_izquierda'
        ParamType = ptInput
      end>
  end
  object tabl_historial: TTable [31]
    BeforePost = tabl_historialBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CODI_ELEM_CST'
    MasterFields = 'CODI_ELEM_CST'
    MasterSource = data_ventana
    TableName = 'PCP_ELEM_CST_HISTORIAL'
    Left = 3
    Top = 440
    object tabl_historialCONS_ANOTACION: TIntegerField
      FieldName = 'CONS_ANOTACION'
      Required = True
    end
    object tabl_historialCODI_ELEM_CST: TStringField
      FieldName = 'CODI_ELEM_CST'
      Required = True
      Size = 12
    end
    object tabl_historialTEXT_ANOTACION: TStringField
      DisplayLabel = 'Anotación'
      FieldName = 'TEXT_ANOTACION'
      Required = True
      Size = 240
    end
    object tabl_historialFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_historialUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 602
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 634
  end
  object quer_importar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select * from '
      'VIS_PCP_ELEM_CST'
      'Where Softconf = -1'
      'and codi_elem_cst <> :codi_elem_cst'
      'Order by codi_elem_cst')
    Left = 20
    Top = 101
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codi_elem_cst'
        ParamType = ptUnknown
      end>
    object quer_importarCODI_ELEM_CST: TStringField
      DisplayLabel = 'Código CST'
      FieldName = 'CODI_ELEM_CST'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CODI_ELEM_CST'
      Size = 12
    end
    object quer_importarNOMB_ELEM_CST: TStringField
      DisplayLabel = 'Nombre elemento'
      FieldName = 'NOMB_ELEM_CST'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.NOMB_ELEM_CST'
      Size = 60
    end
    object quer_importarCONS_CST_DIFICULTAD: TIntegerField
      DisplayLabel = 'No. dificultad'
      FieldName = 'CONS_CST_DIFICULTAD'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CONS_CST_DIFICULTAD'
    end
    object quer_importarCODI_CST_DIFICULTAD: TStringField
      DisplayLabel = 'Cód. dificultad'
      FieldName = 'CODI_CST_DIFICULTAD'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CODI_CST_DIFICULTAD'
      Size = 12
    end
    object quer_importarNOMB_CST_DIFICULTAD: TStringField
      DisplayLabel = 'Dificultad'
      FieldName = 'NOMB_CST_DIFICULTAD'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.NOMB_CST_DIFICULTAD'
      Size = 60
    end
    object quer_importarCONS_CST_DISTANCIA: TIntegerField
      DisplayLabel = 'No. distancia'
      FieldName = 'CONS_CST_DISTANCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CONS_CST_DISTANCIA'
    end
    object quer_importarCODI_CST_DISTANCIA: TStringField
      DisplayLabel = 'Cód. distancia'
      FieldName = 'CODI_CST_DISTANCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CODI_CST_DISTANCIA'
      Size = 12
    end
    object quer_importarNOMB_CST_DISTANCIA: TStringField
      DisplayLabel = 'Distancia'
      FieldName = 'NOMB_CST_DISTANCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.NOMB_CST_DISTANCIA'
      Size = 60
    end
    object quer_importarCONS_CST_POSICIONAMIENTO: TIntegerField
      DisplayLabel = 'No. posicionamiento'
      FieldName = 'CONS_CST_POSICIONAMIENTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CONS_CST_POSICIONAMIENTO'
    end
    object quer_importarCODI_CST_POSICIONAMIENTO: TStringField
      DisplayLabel = 'Cód. posicionamiento'
      FieldName = 'CODI_CST_POSICIONAMIENTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.CODI_CST_POSICIONAMIENTO'
      Size = 12
    end
    object quer_importarNOMB_CST_POSICIONAMIENTO: TStringField
      DisplayLabel = 'Posicionamiento'
      FieldName = 'NOMB_CST_POSICIONAMIENTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.NOMB_CST_POSICIONAMIENTO'
      Size = 60
    end
    object quer_importarTIEM_CST: TFloatField
      DisplayLabel = 'Tiempo TMU'
      FieldName = 'TIEM_CST'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.TIEM_CST'
    end
    object quer_importarNOMB_ANALISTA: TStringField
      DisplayLabel = 'Analista'
      FieldName = 'NOMB_ANALISTA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.NOMB_ANALISTA'
      Size = 60
    end
    object quer_importarDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.DESCRIPCION'
      Size = 240
    end
    object quer_importarFECH_MODIFICACION: TDateTimeField
      DisplayLabel = 'Fecha Modificación'
      FieldName = 'FECH_MODIFICACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.FECH_MODIFICACION'
    end
    object quer_importarUSUA_MODIFICACION: TStringField
      DisplayLabel = 'Usuario modificación'
      FieldName = 'USUA_MODIFICACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.USUA_MODIFICACION'
    end
    object quer_importarFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.FECH_SISTEMA'
    end
    object quer_importarUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_ELEM_CST.USUA_SISTEMA'
    end
  end
  object data_importar: TDataSource
    AutoEdit = False
    DataSet = quer_importar
    Left = 48
    Top = 102
  end
  object quer_gest_importar: TQuery
    BeforeOpen = quer_gest_importarBeforeOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from'
      'PCP_ELEM_CST_GESTOS'
      'Where codi_elem_cst = :codi_elem_cst'
      'order by secu_movimiento')
    Left = 32
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'CODI_ELEM_CST'
        ParamType = ptInput
      end>
  end
  object pop_grid_importar: TTBXPopupMenu
    Left = 508
    Top = 230
    object TBXItem22: TTBXItem
      Action = acti_impo_sele_todos
      Images = _fMDI.imagenesPCP
    end
    object TBXItem23: TTBXItem
      Action = acti_impo_importar
      Images = _fMDI.imagenesPCP
    end
  end
  object quer_pesos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_cst_peso, nomb_cst_peso'
      'from sis_cst_pesos'
      'where cons_cst_peso > 0'
      'order by cons_cst_peso'
      ' ')
    Left = 920
    Top = 196
  end
  object data_pesos: TDataSource
    DataSet = quer_pesos
    Left = 952
    Top = 196
  end
end

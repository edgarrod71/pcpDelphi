inherited fn1_meto_estandar1: Tfn1_meto_estandar1
  Left = 15
  Top = 105
  Width = 750
  Height = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 742
  end
  inherited padr_shap_xp_down: TShape
    Top = 543
    Width = 742
  end
  object pane_importar: TToolWindow97 [2]
    Left = 280
    Top = 112
    Caption = 'Importar elementos'
    ClientAreaHeight = 375
    ClientAreaWidth = 561
    TabOrder = 8
    Visible = False
    OnVisibleChanged = pane_importarVisibleChanged
    object dfsSplitter3: TdfsSplitter
      Left = 0
      Top = 177
      Width = 561
      Height = 10
      Cursor = crVSplit
      Align = alTop
      MinSize = 1
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 561
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
          Images = _fMDI.imagenesPCP
        end
      end
    end
    object padr_grid: TdxDBGrid
      Left = 0
      Top = 26
      Width = 561
      Height = 151
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_OPER_COSTURA'
      ShowGroupPanel = True
      ShowSummaryFooter = True
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
              ColumnName = 'padr_gridCONS_OPER_COSTURA'
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
      TabOrder = 1
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = data_oper_cost_importar
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
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoResetColumnFocus, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowRowFooter = True
      OnChangeNode = DoLlamarElementosImportar
      object padr_gridCONS_OPER_COSTURA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_OPER_COSTURA'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '0'
      end
      object padr_gridColumn21: TdxDBGridColumn
        Caption = 'Código'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_OPER_COSTURA'
      end
      object padr_gridNOMB_OPER_COSTURA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 149
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_OPER_COSTURA'
      end
      object padr_gridNOMB_PROCESO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PROCESO'
      end
      object padr_gridNOMB_OPER_COST_TIPO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_OPER_COST_TIPO'
      end
      object padr_gridNOMB_COMP_GRUPO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_COMP_GRUPO'
      end
      object padr_gridTIEM_ASIGNADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIEM_ASIGNADO'
      end
      object padr_gridTIEM_2: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 56
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIEM_2'
      end
      object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_SISTEMA'
      end
      object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUA_SISTEMA'
      end
      object padr_gridDESCRIPCION: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRIPCION'
      end
      object padr_gridNOMB_COMPLETO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_COMPLETO'
      end
      object padr_gridPUNT_POR_CENTIMETRO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PUNT_POR_CENTIMETRO'
      end
      object padr_gridSUPL_CONSTANTE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUPL_CONSTANTE'
      end
      object padr_gridSUPL_VARIABLE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUPL_VARIABLE'
      end
      object padr_gridLARG_COSTURA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LARG_COSTURA'
      end
      object padr_gridCOMP_LARG_COSTURA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMP_LARG_COSTURA'
      end
      object padr_gridNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_RECU_FAMILIA'
      end
      object padr_gridREVO_POR_MINUTO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 114
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REVO_POR_MINUTO'
      end
      object padr_gridCONS_ACCE_FAMILIA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 116
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_ACCE_FAMILIA'
      end
    end
    object grid_importar: TSCLColumnGrid
      Left = 0
      Top = 187
      Width = 561
      Height = 188
      Cursor = crDefault
      Align = alClient
      ColCount = 22
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
      ScrollBars = ssBoth
      TabOrder = 2
      GridLineColor = 14467501
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'MS Sans Serif'
      ActiveCellFont.Style = [fsBold]
      EnhRowColMove = False
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
      MouseActions.RangeSelectAndEdit = True
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
        'Código CST'
        'Nombre elemento'
        'F'
        'Distancia'
        'Dificultad'
        'Posicionamiento'
        'TMU'
        'Tiempo_2'
        'Tiempo_2')
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
          Alignment = taLeftJustify
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          ColumnPopupType = cpFixedCellsRClick
          DropDownCount = 8
          EditLength = 0
          Editor = edUnitEditBtn
          FilterCaseSensitive = False
          Fixed = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Código CST'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridCODI_CST'
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
          Width = 82
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
          Header = 'Nombre elemento'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridNOMB_ELEM_CST'
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
          Width = 218
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
          Editor = edFloat
          FilterCaseSensitive = False
          Fixed = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
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
          Color = clBtnFace
          ColumnPopupType = cpFixedCellsRClick
          DropDownCount = 8
          EditLength = 0
          Editor = edUnitEditBtn
          FilterCaseSensitive = False
          Fixed = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Distancia'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridDISTANCIA'
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
          Width = 80
        end
        item
          AutoMinSize = 0
          AutoMaxSize = 0
          Alignment = taLeftJustify
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clBtnFace
          ColumnPopupType = cpFixedCellsRClick
          DropDownCount = 8
          EditLength = 0
          Editor = edUnitEditBtn
          FilterCaseSensitive = False
          Fixed = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Dificultad'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridDIFICULTAD'
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
          Width = 70
        end
        item
          AutoMinSize = 0
          AutoMaxSize = 0
          Alignment = taLeftJustify
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clBtnFace
          ColumnPopupType = cpFixedCellsRClick
          DropDownCount = 8
          EditLength = 0
          Editor = edUnitEditBtn
          FilterCaseSensitive = False
          Fixed = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Posicionamiento'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridPOSICIONAMIENTO'
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
          Width = 98
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
          ReadOnly = False
          ShowBands = False
          SortStyle = ssAutomatic
          SpinMax = 0
          SpinMin = 0
          SpinStep = 1
          Tag = 0
          Width = 60
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
          Header = 'Tiempo_2'
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
          ReadOnly = False
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
          Header = 'Tiempo_2'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridCONS_CST_DISTANCIA'
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
          Name = 'gridCONS_CST_DIFICULTAD'
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
          Name = 'gridCONS_CST_POSICIONAMIENTO'
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
          Name = 'VAR_1'
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
          Name = 'VAR_2'
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
          Name = 'VAR_3'
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
          Name = 'VAR_4'
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
          Name = 'VAR_5'
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
          Name = 'VAR_6'
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
          Name = 'VAR_7'
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
          Name = 'VAR_8'
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
          Name = 'VAR_9'
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
          Name = 'VAR_10'
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
        82
        218
        46
        80
        70
        98
        60
        59
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64)
    end
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 742
    inherited padr_barra: TTBXToolbar
      object TBXVisibilityToggleItem2: TTBXVisibilityToggleItem [10]
        Caption = 'Video'
        ImageIndex = 8
        Images = _fMDI.imag_general32
      end
      object TBXSubmenuItem1: TTBXSubmenuItem [13]
        Action = acti_impr_info_general
        DropdownCombo = True
        ImageIndex = 8
        SubMenuImages = _fMDI.imagenesPCP
        object TBXItem28: TTBXItem
          Action = acti_impr_info_general
          DisplayMode = nbdmImageAndText
          Images = _fMDI.imagenesPCP
          InheritOptions = False
          Layout = tbxlGlyphLeft
        end
        object TBXItem27: TTBXItem
          Action = acti_impr_list_elementos
          DisplayMode = nbdmImageAndText
          InheritOptions = False
          Layout = tbxlGlyphLeft
        end
        object TBXItem26: TTBXItem
          Action = acti_impr_pues_trabajo
          DisplayMode = nbdmImageAndText
          InheritOptions = False
          Layout = tbxlGlyphLeft
        end
      end
      inherited padr_boto_imprimir: TTBXItem
        Visible = False
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 742
    TabOrder = 3
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 742
    TabOrder = 4
    inherited padr_beve_1: TBevel
      Width = 894
    end
    inherited padr_sepa_new: TShape
      Width = 736
    end
  end
  inherited padr_pane_info: TPanel
    Top = 544
    Width = 742
    TabOrder = 5
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
  object page: TSCLPageControl [7]
    Left = 0
    Top = 148
    Width = 742
    Height = 395
    ActivePage = page_otro_datos
    ActivePageDefault = page_otro_datos
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
    TabStyle = tsRoundCorners
    Transparent = True
    FixedDimension = 19
    object page_otro_datos: TSCLTabSheet
      Color = 16578290
      Caption = 'Otros datos'
      object PCPFrame1: TPCPFrame
        Tag = 94
        Left = 0
        Top = 0
        Width = 738
        Height = 94
        Align = alTop
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Caption = 'Datos generales'
        Titulo_Color = 16244694
        FlatBorder = True
        object SCLDBLabel7: TSCLDBLabel
          Left = 22
          Top = 25
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
          Caption = 'P.P.C.'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'PUNT_POR_CENTIMETRO'
          Field = 'PUNT_POR_CENTIMETRO'
        end
        object SCLDBLabel8: TSCLDBLabel
          Left = 270
          Top = 25
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
          FocusControl = dxDBCurrencyEdit2
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Supl. constante:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'SUPL_CONSTANTE'
          Field = 'SUPL_CONSTANTE'
        end
        object SCLDBLabel9: TSCLDBLabel
          Left = 530
          Top = 25
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
          FocusControl = dxDBCurrencyEdit3
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Supl. variable:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'SUPL_VARIABLE'
          Field = 'SUPL_VARIABLE'
        end
        object SCLDBLabel10: TSCLDBLabel
          Left = 22
          Top = 45
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
          FocusControl = dxDBCurrencyEdit4
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Largo costura:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'LARG_COSTURA'
          Field = 'LARG_COSTURA'
        end
        object SCLDBLabel11: TSCLDBLabel
          Left = 256
          Top = 45
          Width = 114
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
          Caption = 'Composición costura:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'COMP_LARG_COSTURA'
          Field = 'COMP_LARG_COSTURA'
        end
        object SCLDBLabel12: TSCLDBLabel
          Left = 166
          Top = 49
          Width = 23
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
          Caption = 'cm'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel30: TSCLDBLabel
          Left = 444
          Top = 65
          Width = 27
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
          Caption = 'TMU'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel37: TSCLDBLabel
          Left = 270
          Top = 65
          Width = 100
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
          FocusControl = dxDBCurrencyEdit7
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tiempo estándar:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object labe_unid_2: TLabel
          Left = 200
          Top = 70
          Width = 3
          Height = 13
        end
        object dxDBCurrencyEdit1: TdxDBCurrencyEdit
          Left = 124
          Top = 25
          Width = 41
          TabOrder = 1
          Alignment = taRightJustify
          DataField = 'PUNT_POR_CENTIMETRO'
          DataSource = data_ventana
          StyleController = padr_estilo
          DisplayFormat = '0'
          Nullable = False
          StoredValues = 1
        end
        object dxDBCurrencyEdit2: TdxDBCurrencyEdit
          Left = 372
          Top = 25
          Width = 65
          TabOrder = 2
          Alignment = taRightJustify
          DataField = 'SUPL_CONSTANTE'
          DataSource = data_ventana
          StyleController = padr_estilo
          DisplayFormat = ',0.00 %'
          MaxValue = 100
          Nullable = False
          StoredValues = 17
        end
        object dxDBCurrencyEdit3: TdxDBCurrencyEdit
          Left = 632
          Top = 25
          Width = 65
          TabOrder = 3
          Alignment = taRightJustify
          DataField = 'SUPL_VARIABLE'
          DataSource = data_ventana
          StyleController = padr_estilo
          DisplayFormat = ',0.00 %'
          MaxValue = 100
          Nullable = False
          StoredValues = 17
        end
        object dxDBCurrencyEdit4: TdxDBCurrencyEdit
          Left = 124
          Top = 45
          Width = 41
          TabOrder = 4
          Alignment = taRightJustify
          DataField = 'LARG_COSTURA'
          DataSource = data_ventana
          StyleController = padr_estilo
          DisplayFormat = ',0.00'
          Nullable = False
          StoredValues = 1
        end
        object dxDBEdit4: TdxDBEdit
          Left = 372
          Top = 45
          Width = 261
          TabOrder = 5
          DataField = 'COMP_LARG_COSTURA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object chec_tiem_cronometro: TdxDBCheckEdit
          Left = 4
          Top = 65
          Width = 121
          TabOrder = 6
          Caption = 'Tiempo cronómetro:'
          DataField = 'TIEM_CRONOMETRO'
          DataSource = data_ventana
          StyleController = padr_estilo
          ValueChecked = '1'
          ValueUnchecked = '-1'
          OnChange = chec_tiem_cronometroChange
        end
        object edit_tiem_cronometro: TdxDBCurrencyEdit
          Left = 124
          Top = 65
          Width = 70
          Enabled = False
          TabOrder = 7
          Alignment = taRightJustify
          DataField = 'TIEM_CRON_ASIGNADO'
          DataSource = data_ventana
          ReadOnly = False
          StyleController = padr_estilo
          DecimalPlaces = 3
          DisplayFormat = ',0.000'
          Nullable = False
          StoredValues = 65
        end
        object dxDBCurrencyEdit7: TdxDBCurrencyEdit
          Left = 372
          Top = 65
          Width = 70
          Enabled = False
          TabOrder = 8
          Alignment = taRightJustify
          DataField = 'TIEM_ASIGNADO'
          DataSource = data_ventana
          ReadOnly = False
          StyleController = padr_estilo
          DisplayFormat = ',0.000'
          Nullable = False
          StoredValues = 65
        end
      end
      object PCPFrame4: TPCPFrame
        Tag = 57
        Left = 0
        Top = 94
        Width = 738
        Height = 57
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
        Caption = 'Costo de la operación'
        Titulo_Color = 16244694
        FlatBorder = True
        object SCLDBLabel38: TSCLDBLabel
          Left = 8
          Top = 27
          Width = 115
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
          FocusControl = dxDBCurrencyEdit8
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Valor hora producción:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'COST_OPERACION'
          Field = 'COST_OPERACION'
        end
        object DBText1: TDBText
          Left = 199
          Top = 31
          Width = 41
          Height = 13
          AutoSize = True
          DataField = 'SIMB_MONEDA'
          DataSource = _fMDI.data_configuracion
        end
        object SCLDBLabel39: TSCLDBLabel
          Left = 248
          Top = 28
          Width = 124
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
          FocusControl = comb_pago_habilidad
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Pago por habilidad:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_FORM_PAGO_HABILIDAD'
          Field = 'CONS_FORM_PAGO_HABILIDAD'
        end
        object dxDBCurrencyEdit8: TdxDBCurrencyEdit
          Left = 125
          Top = 27
          Width = 70
          TabOrder = 1
          Alignment = taRightJustify
          DataField = 'COST_OPERACION'
          DataSource = data_ventana
          ReadOnly = False
          StyleController = padr_estilo
          DisplayFormat = ',0.00'
          Nullable = False
          StoredValues = 65
        end
        object comb_pago_habilidad: TPCPLookUpComboEdit
          Left = 374
          Top = 28
          Width = 257
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Ctl3D = True
          DataField = 'CONS_FORM_PAGO_HABILIDAD'
          DataSource = data_ventana
          KeyField = 'cons_form_pago_habilidad'
          ListField = 'codi_form_pago_habilidad;valo_hora_produccion'
          ListSource = data_form_pago_habilidad
          ParentCtl3D = False
          TabOrder = 2
          DirectInput = False
        end
      end
      object PCPFrame2: TPCPFrame
        Tag = 218
        Left = 0
        Top = 151
        Width = 738
        Height = 218
        Align = alClient
        BevelOuter = bvNone
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
        object dfsSplitter1: TdfsSplitter
          Left = 333
          Top = 2
          Height = 214
          Cursor = crHSplit
          Align = alRight
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object PCPFrame10: TPCPFrame
          Tag = 214
          Left = 2
          Top = 2
          Width = 331
          Height = 214
          Align = alClient
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Caption = 'Descripción'
          Titulo_Color = 16244694
          Boton_Visible = False
          FlatBorder = True
          object Panel1: TPanel
            Left = 3
            Top = 22
            Width = 325
            Height = 189
            Align = alClient
            BevelOuter = bvNone
            BorderWidth = 5
            TabOrder = 1
            object dxDBMemo1: TdxDBMemo
              Left = 5
              Top = 5
              Width = 315
              Align = alClient
              TabOrder = 0
              DataField = 'DESCRIPCION'
              DataSource = data_ventana
              StyleController = padr_estilo
              Height = 179
            end
          end
        end
        object PCPFrame11: TPCPFrame
          Tag = 214
          Left = 343
          Top = 2
          Width = 393
          Height = 214
          Align = alRight
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Caption = 'Imágen de la operación'
          Titulo_Color = 16244694
          Boton_Visible = False
          BorderWidthIn = 5
          FlatBorder = True
          inline ffra_fotografiaDB3: Tffra_fotografiaDB
            Left = 8
            Top = 27
            Width = 377
            Height = 179
            Align = alClient
            TabOrder = 1
            inherited fram_pane_atras: TPanel
              Width = 377
              Height = 153
              inherited fram_fotografia: TEDBImage
                Width = 367
                Height = 120
                DataField = 'IMAGEN'
                DataSource = data_ventana
              end
              inherited fram_pane_stretch: TPanel
                Top = 125
                Width = 367
                inherited fram_chec_ajustar: TdxDBCheckEdit
                  DataField = 'AJUS_IMAGEN'
                  DataSource = data_ventana
                end
              end
            end
            inherited TBXDock1: TTBXDock
              Width = 377
            end
          end
        end
      end
    end
    object page_recursos: TSCLTabSheet
      Color = 16578290
      Caption = 'Recursos'
      object PCPFrame5: TPCPFrame
        Tag = 105
        Left = 0
        Top = 0
        Width = 738
        Height = 105
        Align = alTop
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Caption = 'Información de la máquina'
        Titulo_Color = 16244694
        Boton_Visible = False
        FlatBorder = True
        object SCLDBLabel13: TSCLDBLabel
          Left = 10
          Top = 29
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
          FocusControl = PCPLookUpComboEdit5
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Grupo de recursos:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_GRUPO'
          Field = 'CONS_RECU_GRUPO'
        end
        object SCLDBLabel14: TSCLDBLabel
          Left = 270
          Top = 29
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
          FocusControl = PCPLookUpComboEdit6
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo de recurso:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_TIPO'
          Field = 'CONS_RECU_TIPO'
        end
        object SCLDBLabel15: TSCLDBLabel
          Left = 530
          Top = 29
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
          FocusControl = comb_recu_familia
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Familia del recurso:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_FAMILIA'
          Field = 'CONS_RECU_FAMILIA'
        end
        object SCLDBLabel16: TSCLDBLabel
          Left = 10
          Top = 49
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
          FocusControl = PCPLookUpComboEdit8
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Marca:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_MARCA'
          Field = 'CONS_RECU_MARCA'
        end
        object SCLDBLabel17: TSCLDBLabel
          Left = 270
          Top = 49
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
          FocusControl = dxDBEdit3
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Clase:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CLAS_RECURSO'
          Field = 'CLAS_RECURSO'
        end
        object SCLDBLabel18: TSCLDBLabel
          Left = 530
          Top = 49
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
          FocusControl = PCPLookUpComboEdit9
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo puntada:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_TIPO_PUNTADA'
          Field = 'CONS_RECU_TIPO_PUNTADA'
        end
        object SCLDBLabel19: TSCLDBLabel
          Left = 10
          Top = 69
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
          FocusControl = dxDBCurrencyEdit5
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'R.P.M.:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'REVO_POR_MINUTO'
          Field = 'REVO_POR_MINUTO'
        end
        object SCLDBLabel20: TSCLDBLabel
          Left = 270
          Top = 69
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
          FocusControl = dxDBCurrencyEdit6
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Suplemento:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'SUPL_MAQUINA'
          Field = 'SUPL_MAQUINA'
        end
        object SCLDBLabel40: TSCLDBLabel
          Left = 530
          Top = 69
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
          Caption = 'Ajuste:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'AJUSTE'
          Field = 'AJUSTE'
        end
        object PCPLookUpComboEdit5: TPCPLookUpComboEdit
          Left = 112
          Top = 29
          Width = 157
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_GRUPO'
          DataSource = data_ventana
          KeyField = 'cons_recu_grupo'
          ListField = 'nomb_recu_grupo'
          ListSource = data_recu_grupos
          ParentCtl3D = False
          TabOrder = 1
          DirectInput = False
        end
        object PCPLookUpComboEdit6: TPCPLookUpComboEdit
          Left = 372
          Top = 29
          Width = 157
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_TIPO'
          DataSource = data_ventana
          KeyField = 'cons_recu_tipo'
          ListField = 'nomb_recu_tipo'
          ListSource = data_recu_tipos
          ParentCtl3D = False
          TabOrder = 2
          DirectInput = False
        end
        object comb_recu_familia: TPCPLookUpComboEdit
          Left = 632
          Top = 29
          Width = 157
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_FAMILIA'
          DataSource = data_ventana
          KeyField = 'cons_recu_familia'
          ListField = 'nomb_recu_familia'
          ListSource = data_recu_familias
          ParentCtl3D = False
          TabOrder = 3
          OnChange = comb_recu_familiaChange
          DirectInput = False
        end
        object PCPLookUpComboEdit8: TPCPLookUpComboEdit
          Left = 112
          Top = 49
          Width = 157
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_MARCA'
          DataSource = data_ventana
          KeyField = 'cons_recu_marca'
          ListField = 'nomb_recu_marca'
          ListSource = data_recu_marcas
          ParentCtl3D = False
          TabOrder = 4
          DirectInput = False
        end
        object dxDBEdit3: TdxDBEdit
          Left = 372
          Top = 49
          Width = 157
          TabOrder = 5
          DataField = 'CLAS_RECURSO'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object PCPLookUpComboEdit9: TPCPLookUpComboEdit
          Left = 632
          Top = 49
          Width = 157
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_TIPO_PUNTADA'
          DataSource = data_ventana
          KeyField = 'cons_recu_tipo_puntada'
          ListField = 'codi_recu_tipo_puntada'
          ListSource = data_tipo_puntada
          ParentCtl3D = False
          TabOrder = 6
          DirectInput = False
        end
        object dxDBCurrencyEdit5: TdxDBCurrencyEdit
          Left = 112
          Top = 69
          Width = 73
          TabOrder = 7
          Alignment = taRightJustify
          DataField = 'REVO_POR_MINUTO'
          DataSource = data_ventana
          StyleController = padr_estilo
          DisplayFormat = ',0'
          Nullable = False
          StoredValues = 1
        end
        object dxDBCurrencyEdit6: TdxDBCurrencyEdit
          Left = 372
          Top = 69
          Width = 65
          TabOrder = 8
          Alignment = taRightJustify
          DataField = 'SUPL_MAQUINA'
          DataSource = data_ventana
          StyleController = padr_estilo
          DisplayFormat = ',0.00 %'
          MaxValue = 100
          Nullable = False
          StoredValues = 17
        end
        object dxDBEdit7: TdxDBEdit
          Left = 632
          Top = 69
          Width = 157
          TabOrder = 9
          DataField = 'AJUSTE'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
      end
    end
    object page_pues_trabajo: TSCLTabSheet
      Color = 16578290
      Caption = 'Puesto de trabajo'
      object dxPageControl1: TSCLPageControl
        Left = 0
        Top = 0
        Width = 738
        Height = 369
        ActivePage = dxTabSheet3
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
        TabStyle = tsRoundCorners
        Transparent = True
        FixedDimension = 22
        object dxTabSheet3: TSCLTabSheet
          Color = 16578290
          ImageIndex = 41
          Caption = 'Imágen'
          inline ffra_fotografiaDB1: Tffra_fotografiaDB
            Width = 734
            Height = 340
            Align = alClient
            inherited fram_pane_atras: TPanel
              Width = 734
              Height = 314
              inherited fram_fotografia: TEDBImage
                Width = 724
                Height = 281
                DataField = 'IMAG_PUES_TRABAJO'
                DataSource = data_ventana
              end
              inherited fram_pane_stretch: TPanel
                Top = 286
                Width = 724
                inherited fram_chec_ajustar: TdxDBCheckEdit
                  DataField = 'AJUS_IMAG_PUES_TRABAJO'
                  DataSource = data_ventana
                end
              end
            end
            inherited TBXDock1: TTBXDock
              Width = 734
              inherited TBXToolbar1: TTBXToolbar
                Visible = True
              end
            end
          end
        end
        object dxTabSheet4: TSCLTabSheet
          Color = 16578290
          ImageIndex = 42
          Caption = 'Modificaciones'
          object dxDBMemo2: TdxDBMemo
            Left = 0
            Top = 0
            Width = 622
            Align = alClient
            TabOrder = 0
            DataField = 'MODI_PUES_TRABAJO'
            DataSource = data_ventana
            Height = 176
          end
        end
        object dxTabSheet5: TSCLTabSheet
          Color = 16578290
          ImageIndex = 41
          Caption = 'Distribución'
          inline ffra_fotografiaDB2: Tffra_fotografiaDB
            Width = 734
            Height = 340
            Align = alClient
            inherited fram_pane_atras: TPanel
              Width = 734
              Height = 314
              inherited fram_fotografia: TEDBImage
                Width = 612
                Height = 117
                DataField = 'IMAG_DIST_PUES_TRABAJO'
                DataSource = data_ventana
              end
              inherited fram_pane_stretch: TPanel
                Top = 122
                Width = 612
                inherited fram_chec_ajustar: TdxDBCheckEdit
                  DataField = 'AJUS_IMAG_DIST_PUES_TRABAJO'
                  DataSource = data_ventana
                end
              end
            end
            inherited TBXDock1: TTBXDock
              Width = 734
              inherited TBXToolbar1: TTBXToolbar
                Visible = True
              end
            end
          end
        end
      end
    end
    object page_elementos: TSCLTabSheet
      Color = 16578290
      Caption = 'Elementos'
      OnShow = page_elementosShow
      object dfsSplitter2: TdfsSplitter
        Left = 0
        Top = 261
        Width = 795
        Height = 10
        Cursor = crVSplit
        Align = alBottom
        Color = clBtnShadow
        MinSize = 1
        ParentColor = False
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object PCPFrame6: TPCPFrame
        Tag = 98
        Left = 0
        Top = 271
        Width = 795
        Height = 98
        Align = alBottom
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
        object PCPFrame7: TPCPFrame
          Tag = 94
          Left = 339
          Top = 2
          Width = 199
          Height = 94
          Align = alLeft
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Caption = '% de participación'
          Titulo_Color = 16244694
          Boton_Visible = False
          FlatBorder = True
          object SCLDBLabel27: TSCLDBLabel
            Left = 2
            Top = 26
            Width = 66
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
            Caption = 'Manual:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel28: TSCLDBLabel
            Left = 2
            Top = 46
            Width = 66
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
            Caption = 'Máquina:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel34: TSCLDBLabel
            Left = 2
            Top = 66
            Width = 66
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
            Caption = 'Total:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object edit_tiem_manual: TdxCurrencyEdit
            Left = 72
            Top = 26
            Width = 70
            Enabled = False
            TabOrder = 1
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.000'
            StoredValues = 65
          end
          object edit_tiem_maquina: TdxCurrencyEdit
            Left = 72
            Top = 46
            Width = 70
            Enabled = False
            TabOrder = 2
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.000'
            StoredValues = 65
          end
          object edit_porc_manual: TdxCurrencyEdit
            Left = 141
            Top = 26
            Width = 49
            Enabled = False
            TabOrder = 3
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0 %'
            StoredValues = 65
          end
          object edit_porc_maquina: TdxCurrencyEdit
            Left = 141
            Top = 46
            Width = 49
            Enabled = False
            TabOrder = 4
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0 %'
            StoredValues = 65
          end
          object edit_tiem_total: TdxDBCurrencyEdit
            Left = 72
            Top = 66
            Width = 70
            Enabled = False
            TabOrder = 5
            TabStop = False
            Alignment = taRightJustify
            DataField = 'TIEM_ASIGNADO'
            DataSource = data_ventana
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.000'
            Nullable = False
            StoredValues = 65
          end
          object edit_porc_total: TdxCurrencyEdit
            Left = 141
            Top = 66
            Width = 49
            Enabled = False
            TabOrder = 6
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0 %'
            StoredValues = 65
          end
        end
        object PCPFrame8: TPCPFrame
          Tag = 94
          Left = 2
          Top = 2
          Width = 198
          Height = 94
          Align = alLeft
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Caption = 'Producción / Costo'
          Titulo_Color = 16244694
          Boton_Visible = False
          FlatBorder = True
          object SCLDBLabel21: TSCLDBLabel
            Left = 2
            Top = 25
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
            Caption = 'Producción hora:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel22: TSCLDBLabel
            Left = 2
            Top = 43
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
            Caption = 'Producción día:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel23: TSCLDBLabel
            Left = 2
            Top = 63
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
            Caption = 'Costo unidad:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object edit_prod_hora: TdxCurrencyEdit
            Left = 104
            Top = 25
            Width = 57
            Enabled = False
            TabOrder = 1
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = '0'
            StoredValues = 65
          end
          object edit_prod_dia: TdxCurrencyEdit
            Left = 104
            Top = 45
            Width = 57
            Enabled = False
            TabOrder = 2
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = '0'
            StoredValues = 65
          end
          object edit_cost_unidad: TdxCurrencyEdit
            Left = 104
            Top = 65
            Width = 81
            Enabled = False
            TabOrder = 3
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = '$ ,0.00'
            StoredValues = 65
          end
        end
        object PCPFrame9: TPCPFrame
          Tag = 94
          Left = 200
          Top = 2
          Width = 139
          Height = 94
          Align = alLeft
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Caption = '% Suplemento'
          Titulo_Color = 16244694
          Boton_Visible = False
          FlatBorder = True
          object SCLDBLabel24: TSCLDBLabel
            Left = 2
            Top = 25
            Width = 66
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
            Caption = 'Constante:'
            Transparent = True
            DataSource = data_ventana
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel25: TSCLDBLabel
            Left = 2
            Top = 45
            Width = 66
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
            Caption = 'Variable:'
            Transparent = True
            DataSource = data_ventana
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel26: TSCLDBLabel
            Left = 2
            Top = 66
            Width = 66
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
            Caption = 'Máquina:'
            Transparent = True
            DataSource = data_ventana
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object edit_supl_constante: TdxDBCurrencyEdit
            Left = 68
            Top = 25
            Width = 65
            Enabled = False
            TabOrder = 1
            TabStop = False
            Alignment = taRightJustify
            DataField = 'SUPL_CONSTANTE'
            DataSource = data_ventana
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.00 %'
            MaxValue = 100
            Nullable = False
            StoredValues = 81
          end
          object edit_supl_variable: TdxDBCurrencyEdit
            Left = 68
            Top = 45
            Width = 65
            Enabled = False
            TabOrder = 2
            TabStop = False
            Alignment = taRightJustify
            DataField = 'SUPL_VARIABLE'
            DataSource = data_ventana
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.00 %'
            MaxValue = 100
            Nullable = False
            StoredValues = 81
          end
          object edit_supl_maquina: TdxDBCurrencyEdit
            Left = 68
            Top = 65
            Width = 65
            Enabled = False
            TabOrder = 3
            TabStop = False
            Alignment = taRightJustify
            DataField = 'SUPL_MAQUINA'
            DataSource = data_ventana
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.00 %'
            MaxValue = 100
            Nullable = False
            StoredValues = 81
          end
        end
        object pane_tiempos: TPCPFrame
          Tag = 94
          Left = 538
          Top = 2
          Width = 255
          Height = 94
          Align = alClient
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Caption = 'Tiempos'
          Titulo_Color = 16244694
          Boton_Visible = False
          FlatBorder = True
          object SCLDBLabel31: TSCLDBLabel
            Left = 6
            Top = 25
            Width = 66
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
            Caption = 'T.N.:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel32: TSCLDBLabel
            Left = 6
            Top = 45
            Width = 66
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
            Caption = 'T.N. (Supl.):'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel33: TSCLDBLabel
            Left = 6
            Top = 65
            Width = 66
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
            Caption = 'T. Estándar:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object edit_tiem_tmu_3: TdxDBCurrencyEdit
            Left = 72
            Top = 65
            Width = 70
            Enabled = False
            TabOrder = 1
            TabStop = False
            Alignment = taRightJustify
            DataField = 'TIEM_ASIGNADO'
            DataSource = data_ventana
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.000'
            Nullable = False
            StoredValues = 65
          end
          object edit_tiem_tmu_1: TdxCurrencyEdit
            Left = 72
            Top = 25
            Width = 70
            Enabled = False
            TabOrder = 2
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.000'
            StoredValues = 65
          end
          object edit_tiem_tmu_2: TdxCurrencyEdit
            Left = 72
            Top = 45
            Width = 70
            Enabled = False
            TabOrder = 3
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.000'
            StoredValues = 65
          end
          object edit_tiem_2_1: TdxCurrencyEdit
            Left = 141
            Top = 25
            Width = 70
            Enabled = False
            TabOrder = 4
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.000'
            StoredValues = 65
          end
          object edit_tiem_2_2: TdxCurrencyEdit
            Left = 141
            Top = 45
            Width = 70
            Enabled = False
            TabOrder = 5
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.000'
            StoredValues = 65
          end
          object edit_tiem_2_3: TdxCurrencyEdit
            Left = 141
            Top = 65
            Width = 70
            Enabled = False
            TabOrder = 6
            TabStop = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.000'
            StoredValues = 65
          end
        end
      end
      object TBXDock2: TTBXDock
        Left = 0
        Top = 0
        Width = 795
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
          object TBXItem30: TTBXItem
            Action = padr_acti_guardar
            DisplayMode = nbdmImageAndText
            ImageIndex = 5
            Images = _fMDI.imagenesPCP
            Visible = False
          end
          object TBXItem29: TTBXItem
            Action = padr_acti_cancelar
            DisplayMode = nbdmImageAndText
            ImageIndex = 8
            Images = _fMDI.imagenesPCP
            Visible = False
          end
          object TBXSeparatorItem10: TTBXSeparatorItem
            Visible = False
          end
          object TBXSeparatorItem7: TTBXSeparatorItem
          end
          object TBXLabelItem1: TTBXLabelItem
            Caption = 'Elementos:'
          end
          object TBControlItem2: TTBControlItem
            Control = edit_nume_elementos
          end
          object TBXSeparatorItem4: TTBXSeparatorItem
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
          object TBXItem2: TTBXItem
            Action = acti_buscar
            Images = _fMDI.imagenesPCP
          end
          object TBXItem1: TTBXItem
            Action = acti_sele_todos
            Images = _fMDI.imagenesPCP
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
          object TBXSeparatorItem9: TTBXSeparatorItem
          end
          object TBXItem25: TTBXItem
            Action = padr_acti_expo_xls
            ImageIndex = 17
            Images = _fMDI.imagenesPCP
          end
          object TBXItem24: TTBXItem
            Action = padr_acti_expo_HTML
            ImageIndex = 18
            Images = _fMDI.imagenesPCP
          end
          object TBXItem23: TTBXItem
            Action = padr_acti_expo_arch_sepa_comas
            ImageIndex = 19
            Images = _fMDI.imagenesPCP
          end
          object edit_nume_elementos: TdxCurrencyEdit
            Left = 54
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
        end
      end
      object grid: TSCLColumnGrid
        Left = 0
        Top = 26
        Width = 795
        Height = 235
        Cursor = crDefault
        Align = alClient
        ColCount = 22
        Ctl3D = False
        DefaultRowHeight = 19
        FixedColor = 15582631
        RowCount = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PopupMenu = pop_grid
        ScrollBars = ssVertical
        ShowHint = True
        TabOrder = 2
        OnKeyDown = DoKeyDownGrid
        GridLineColor = 14467501
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'MS Sans Serif'
        ActiveCellFont.Style = [fsBold]
        EnhRowColMove = False
        OnGetCellColor = gridGetCellColor
        OnGetAlignment = gridGetAlignment
        OnGridHint = gridGridHint
        OnDblClickCell = gridDblClickCell
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
        FixedAsButtons = True
        FloatFormat = '%.2f'
        WordWrap = False
        ColumnHeaders.Strings = (
          'No.'
          'Código CST'
          'Nombre elemento'
          'F'
          'Distancia'
          'Dificultad'
          'Posicionamiento'
          'TMU'
          'Tiempo_2'
          'Tiempo_2')
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
            Alignment = taLeftJustify
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
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
            Header = 'Código CST'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'gridCODI_CST'
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
            Width = 82
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
            Header = 'Nombre elemento'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'gridNOMB_ELEM_CST'
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
            Width = 218
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
            Editor = edFloat
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
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
            Header = 'Distancia'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'gridDISTANCIA'
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
            Width = 80
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
            Header = 'Dificultad'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'gridDIFICULTAD'
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
            Width = 70
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
            Header = 'Posicionamiento'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'gridPOSICIONAMIENTO'
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
            Width = 98
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
            Width = 60
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
            Header = 'Tiempo_2'
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
            Width = 59
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
            Header = 'Tiempo_2'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'gridCONS_CST_DISTANCIA'
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
            Name = 'gridCONS_CST_DIFICULTAD'
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
            Name = 'gridCONS_CST_POSICIONAMIENTO'
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
            Name = 'VAR_1'
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
            Name = 'VAR_2'
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
            Name = 'VAR_3'
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
            Name = 'VAR_4'
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
            Name = 'VAR_5'
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
            Name = 'VAR_6'
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
            Name = 'VAR_7'
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
            Name = 'VAR_8'
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
            Name = 'VAR_9'
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
            Name = 'VAR_10'
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
          82
          218
          46
          80
          70
          98
          60
          59
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64)
      end
    end
    object page_historial: TSCLTabSheet
      Color = 16578290
      Caption = 'Historial'
      inline fram_historial: Tffra_historialDB
        Top = 28
        Width = 738
        Height = 341
        Align = alClient
        inherited fram_pane: TPanel
          Width = 738
          Height = 341
          inherited fram_grid_historial: TdxDBGrid
            Width = 795
            Height = 308
            TabOrder = 1
            Filter.Criteria = {00000000}
            inherited fram_grid_historialFECHA: TdxDBGridDateColumn
              Width = 136
            end
            inherited fram_grid_historialUSUARIO: TdxDBGridColumn
              Width = 99
            end
            inherited fram_grid_historialANOTACION: TdxDBGridMemoColumn
              Width = 486
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 795
            inherited TBXToolbar1: TTBXToolbar
              DockPos = 0
              inherited TBXItem4: TTBXItem
                Images = _fMDI.imagenesPCP
              end
              inherited TBXItem5: TTBXItem
                Images = _fMDI.imagenesPCP
              end
              inherited TBXItem6: TTBXItem
                Images = _fMDI.imagenesPCP
              end
            end
          end
        end
        inherited data_historial: TDataSource
          DataSet = tabl_oper_cost_historial
        end
        inherited pop_grid_anotaciones: TTBXPopupMenu
          inherited TBXItem1: TTBXItem
            Images = _fMDI.imagenesPCP
          end
          inherited TBXItem2: TTBXItem
            Images = _fMDI.imagenesPCP
          end
          inherited TBXItem3: TTBXItem
            Images = _fMDI.imagenesPCP
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 738
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object SCLDBLabel29: TSCLDBLabel
          Left = 10
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fecha creación:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel35: TSCLDBLabel
          Left = 266
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Usuario:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object dxDBEdit5: TdxDBEdit
          Left = 112
          Top = 4
          Width = 169
          Enabled = False
          TabOrder = 0
          DataField = 'FECH_SISTEMA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit6: TdxDBEdit
          Left = 368
          Top = 4
          Width = 129
          Enabled = False
          TabOrder = 1
          DataField = 'USUA_SISTEMA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
      end
    end
    object page_dependencias: TSCLTabSheet
      Color = 16578290
      Caption = 'Dependencias'
      OnShow = page_dependenciasShow
      object dfsSplitter4: TdfsSplitter
        Left = 385
        Top = 0
        Height = 362
        Cursor = crHSplit
        Align = alLeft
        Color = clBtnShadow
        ParentColor = False
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object pane_depe_1: TPCPFrame
        Tag = 362
        Left = 0
        Top = 0
        Width = 385
        Height = 362
        Align = alLeft
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Titulo_Color = 16244694
        Boton_Visible = False
        FlatBorder = True
        object Panel4: TPanel
          Left = 3
          Top = 22
          Width = 379
          Height = 337
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 1
          object DBTreeList: TdxDBTreeList
            Left = 5
            Top = 5
            Width = 369
            Height = 327
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CONS_CONSULTA'
            ParentField = 'PADR_CONSULTA'
            Align = alClient
            TabOrder = 0
            DataSource = data_depe_0
            HideFocusRect = True
            HideSelection = True
            ImageIndexFieldName = 'INDE_IMAGEN'
            Images = _fMDI.imag_varias
            LookAndFeel = lfFlat
            OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoMultiSelect, etoTabThrough]
            OptionsDB = [etoAutoCalcKeyValue, etoCanDelete, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete, etoLoadAllRecords]
            OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoHideFocusRect, etoUseBitmap, etoUseImageIndexForSelected]
            RootValue = '-1'
            ShowHeader = False
            TreeLineColor = clGrayText
            OnCustomDrawCell = DBTreeListCustomDrawCell
            object DBTreeListCONS_CONSULTA: TdxDBTreeListMaskColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_CONSULTA'
            end
            object DBTreeListPADR_CONSULTA: TdxDBTreeListMaskColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PADR_CONSULTA'
            end
            object DBTreeListVALO_TABL_DEPENDENCIA: TdxDBTreeListMaskColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALO_TABL_DEPENDENCIA'
              SummaryFooterType = cstCount
            end
            object DBTreeListCONS_TABL_DEPENDENCIA: TdxDBTreeListMaskColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_TABL_DEPENDENCIA'
            end
          end
        end
      end
      object pane_depe_2: TPCPFrame
        Tag = 362
        Left = 395
        Top = 0
        Width = 400
        Height = 362
        Align = alClient
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Titulo_Color = 16244694
        Boton_Visible = False
        FlatBorder = True
        object Panel5: TPanel
          Left = 3
          Top = 22
          Width = 394
          Height = 337
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 1
          object dxDBTreeList1: TdxDBTreeList
            Left = 5
            Top = 5
            Width = 384
            Height = 327
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CONS_CONSULTA'
            ParentField = 'PADR_CONSULTA'
            Align = alClient
            TabOrder = 0
            DataSource = data_depe_1
            HideFocusRect = True
            HideSelection = True
            ImageIndexFieldName = 'INDE_IMAGEN'
            Images = _fMDI.imag_varias
            LookAndFeel = lfFlat
            OptionsBehavior = [etoAutoDragDrop, etoAutoDragDropCopy, etoAutoSort, etoDragExpand, etoDragScroll, etoEditing, etoEnterShowEditor, etoMultiSelect, etoTabThrough]
            OptionsDB = [etoAutoCalcKeyValue, etoCanDelete, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete, etoLoadAllRecords]
            OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoHideFocusRect, etoUseBitmap, etoUseImageIndexForSelected]
            RootValue = '-1'
            ShowHeader = False
            TreeLineColor = clGrayText
            OnCustomDrawCell = DBTreeListCustomDrawCell
            object dxDBTreeListMaskColumn1: TdxDBTreeListMaskColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_CONSULTA'
            end
            object dxDBTreeListMaskColumn2: TdxDBTreeListMaskColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PADR_CONSULTA'
            end
            object dxDBTreeListMaskColumn3: TdxDBTreeListMaskColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALO_TABL_DEPENDENCIA'
              SummaryFooterType = cstCount
            end
            object dxDBTreeListMaskColumn4: TdxDBTreeListMaskColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_TABL_DEPENDENCIA'
            end
          end
        end
      end
    end
  end
  object PCPFrame3: TPCPFrame [8]
    Tag = 94
    Left = 0
    Top = 52
    Width = 742
    Height = 94
    Align = alTop
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Caption = 'Información de la operación'
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 45
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
      FocusControl = edit_codi_operacion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 240
      Top = 45
      Width = 130
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
      FocusControl = edit_nomb_operacion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombre operación:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_OPER_COSTURA'
      Field = 'NOMB_OPER_COSTURA'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 25
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
      FocusControl = comb_proceso
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Proceso:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PROCESO'
      Field = 'CONS_PROCESO'
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 522
      Top = 25
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
      FocusControl = comb_tipo_operacion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo operación:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_OPER_COST_TIPO'
      Field = 'CONS_OPER_COST_TIPO'
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 270
      Top = 25
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
      FocusControl = comb_componente
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Componente:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_COMP_GRUPO'
      Field = 'CONS_COMP_GRUPO'
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 10
      Top = 65
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
      FocusControl = dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha creación:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_SISTEMA'
      Field = 'FECH_SISTEMA'
    end
    object SCLDBLabel36: TSCLDBLabel
      Left = 270
      Top = 65
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
      Caption = 'Usuario:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'USUA_SISTEMA'
      Field = 'USUA_SISTEMA'
    end
    object edit_codi_operacion: TdxDBEdit
      Left = 112
      Top = 45
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnEnter = edit_codi_operacionEnter
      CharCase = ecUpperCase
      DataField = 'CODI_OPER_COSTURA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object edit_nomb_operacion: TdxDBEdit
      Left = 372
      Top = 45
      Width = 253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      DataField = 'NOMB_OPER_COSTURA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object comb_proceso: TPCPLookUpComboEdit
      Left = 112
      Top = 25
      Width = 121
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PROCESO'
      DataSource = data_ventana
      KeyField = 'cons_proceso'
      ListField = 'nomb_proceso'
      ListSource = data_procesos
      ParentCtl3D = False
      TabOrder = 0
      DirectInput = False
    end
    object comb_tipo_operacion: TPCPLookUpComboEdit
      Left = 624
      Top = 25
      Width = 121
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_OPER_COST_TIPO'
      DataSource = data_ventana
      KeyField = 'cons_oper_cost_tipo'
      ListField = 'nomb_oper_cost_tipo'
      ListSource = data_oper_tipos
      ParentCtl3D = False
      TabOrder = 2
      DirectInput = False
    end
    object comb_componente: TPCPLookUpComboEdit
      Left = 372
      Top = 25
      Width = 121
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_COMP_GRUPO'
      DataSource = data_ventana
      KeyField = 'cons_comp_grupo'
      ListField = 'nomb_comp_grupo'
      ListSource = data_grupo_componentes
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object TBXButtonSCL1: TTBXButtonSCL
      Left = 235
      Top = 25
      Width = 19
      Height = 20
      BorderSize = 2
      ButtonStyle = bsFlat
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      TabOrder = 6
      TabStop = False
      Action = _fMDI.acti_n1_meto_procesos
    end
    object TBXButtonSCL2: TTBXButtonSCL
      Left = 747
      Top = 25
      Width = 19
      Height = 20
      BorderSize = 2
      ButtonStyle = bsFlat
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      TabOrder = 7
      TabStop = False
      Action = _fMDI.acti_n1_meto_oper_tipos
    end
    object TBXButtonSCL3: TTBXButtonSCL
      Left = 496
      Top = 25
      Width = 19
      Height = 20
      BorderSize = 2
      ButtonStyle = bsFlat
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      TabOrder = 8
      TabStop = False
      Action = _fMDI.acti_n1_meto_comp_grupos
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 65
      Width = 161
      Enabled = False
      TabOrder = 9
      OnEnter = edit_codi_operacionEnter
      CharCase = ecUpperCase
      DataField = 'FECH_SISTEMA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 372
      Top = 65
      Width = 121
      Enabled = False
      TabOrder = 10
      DataField = 'USUA_SISTEMA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 545
    Width = 742
    TabOrder = 6
    inherited padr_beve_abajo: TBevel
      Width = 736
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 146
    Width = 742
    TabOrder = 7
  end
  inherited padr_acciones: TActionList
    OnUpdate = padr_accionesUpdate
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
    TableName = 'PCP_OPER_COSTURA'
    Left = 281
    Top = 36
    object Tabla_VentanaCONS_OPER_COSTURA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_OPER_COSTURA'
      Required = True
    end
    object Tabla_VentanaCODI_OPER_COSTURA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_OPER_COSTURA'
      Size = 12
    end
    object Tabla_VentanaCONS_PROCESO: TIntegerField
      DisplayLabel = 'Proceso'
      FieldName = 'CONS_PROCESO'
      Required = True
      OnChange = CambiosEnCodigo
    end
    object Tabla_VentanaCONS_OPER_COST_TIPO: TIntegerField
      DisplayLabel = 'Tipo operación'
      FieldName = 'CONS_OPER_COST_TIPO'
      Required = True
      OnChange = CambiosEnCodigo
    end
    object Tabla_VentanaCONS_COMP_GRUPO: TIntegerField
      DisplayLabel = 'Componente'
      FieldName = 'CONS_COMP_GRUPO'
      Required = True
      OnChange = CambiosEnCodigo
    end
    object Tabla_VentanaNOMB_OPER_COSTURA: TStringField
      DisplayLabel = 'Nombre operación'
      FieldName = 'NOMB_OPER_COSTURA'
      Required = True
      Size = 30
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaPUNT_POR_CENTIMETRO: TFloatField
      DisplayLabel = 'P.P.C.'
      FieldName = 'PUNT_POR_CENTIMETRO'
    end
    object Tabla_VentanaSUPL_CONSTANTE: TSmallintField
      DisplayLabel = '% SuplC'
      FieldName = 'SUPL_CONSTANTE'
    end
    object Tabla_VentanaSUPL_VARIABLE: TSmallintField
      DisplayLabel = '% SuplV'
      FieldName = 'SUPL_VARIABLE'
    end
    object Tabla_VentanaLARG_COSTURA: TIntegerField
      DisplayLabel = 'L.C.'
      FieldName = 'LARG_COSTURA'
      DisplayFormat = ',0.00'
    end
    object Tabla_VentanaCOMP_LARG_COSTURA: TStringField
      DisplayLabel = 'Composición L.C.'
      FieldName = 'COMP_LARG_COSTURA'
      Size = 60
    end
    object Tabla_VentanaCONS_RECU_GRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECU_GRUPO'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_TIPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECU_TIPO'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_FAMILIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECU_FAMILIA'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_MARCA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECU_MARCA'
      Required = True
    end
    object Tabla_VentanaCLAS_RECURSO: TStringField
      FieldName = 'CLAS_RECURSO'
      Size = 60
    end
    object Tabla_VentanaCONS_RECU_TIPO_PUNTADA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECU_TIPO_PUNTADA'
      Required = True
    end
    object Tabla_VentanaREVO_POR_MINUTO: TIntegerField
      FieldName = 'REVO_POR_MINUTO'
    end
    object Tabla_VentanaSUPL_MAQUINA: TSmallintField
      FieldName = 'SUPL_MAQUINA'
    end
    object Tabla_VentanaCONS_ACCE_FAMILIA: TIntegerField
      FieldName = 'CONS_ACCE_FAMILIA'
    end
    object Tabla_VentanaIMAG_PUES_TRABAJO: TBlobField
      FieldName = 'IMAG_PUES_TRABAJO'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaAJUS_IMAG_PUES_TRABAJO: TIntegerField
      FieldName = 'AJUS_IMAG_PUES_TRABAJO'
    end
    object Tabla_VentanaIMAG_DIST_PUES_TRABAJO: TBlobField
      FieldName = 'IMAG_DIST_PUES_TRABAJO'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaAJUS_IMAG_DIST_PUES_TRABAJO: TIntegerField
      FieldName = 'AJUS_IMAG_DIST_PUES_TRABAJO'
    end
    object Tabla_VentanaTIEM_CRONOMETRO: TIntegerField
      FieldName = 'TIEM_CRONOMETRO'
    end
    object Tabla_VentanaTIEM_ASIGNADO: TFloatField
      FieldName = 'TIEM_ASIGNADO'
    end
    object Tabla_VentanaTIEM_CRON_ASIGNADO: TFloatField
      FieldName = 'TIEM_CRON_ASIGNADO'
    end
    object Tabla_Ventanacodi_proceso: TStringField
      DisplayWidth = 3
      FieldKind = fkLookup
      FieldName = 'codi_proceso'
      LookupDataSet = quer_procesos
      LookupKeyFields = 'CONS_PROCESO'
      LookupResultField = 'CODI_PROCESO'
      KeyFields = 'CONS_PROCESO'
      Size = 3
      Lookup = True
    end
    object Tabla_Ventanacodi_tipo_operacion: TStringField
      FieldKind = fkLookup
      FieldName = 'codi_oper_cost_tipo'
      LookupDataSet = quer_oper_tipos
      LookupKeyFields = 'CONS_OPER_COST_TIPO'
      LookupResultField = 'CODI_OPER_COST_TIPO'
      KeyFields = 'CONS_OPER_COST_TIPO'
      Size = 3
      Lookup = True
    end
    object Tabla_Ventanacodi_comp_grupo: TStringField
      FieldKind = fkLookup
      FieldName = 'codi_comp_grupo'
      LookupDataSet = quer_grup_componentes
      LookupKeyFields = 'CONS_COMP_GRUPO'
      LookupResultField = 'CODI_COMP_GRUPO'
      KeyFields = 'CONS_COMP_GRUPO'
      Size = 3
      Lookup = True
    end
    object Tabla_VentanaCOST_OPERACION: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST_OPERACION'
    end
    object Tabla_VentanaCONS_FORM_PAGO_HABILIDAD: TIntegerField
      FieldName = 'CONS_FORM_PAGO_HABILIDAD'
    end
    object Tabla_VentanaDESCRIPCION: TMemoField
      FieldName = 'DESCRIPCION'
      BlobType = ftMemo
      Size = 5000
    end
    object Tabla_VentanaMODI_PUES_TRABAJO: TMemoField
      FieldName = 'MODI_PUES_TRABAJO'
      BlobType = ftMemo
      Size = 5000
    end
    object Tabla_VentanaSECU_MOVIMIENTOS: TMemoField
      FieldName = 'SECU_MOVIMIENTOS'
      BlobType = ftMemo
      Size = 5000
    end
    object Tabla_VentanaIMAGEN: TBlobField
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaAJUSTE: TStringField
      FieldName = 'AJUSTE'
      Size = 12
    end
    object Tabla_VentanaAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar imágen'
      FieldName = 'AJUS_IMAGEN'
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 136
    Top = 0
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 96
    Top = 0
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 64
    Top = 0
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 32
    Top = 0
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
      Left = 1
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
      Caption = 'Buscar'
      ImageIndex = 9
      OnExecute = acti_buscarExecute
    end
    object acti_reno_elemento: TAction
      Category = 'ventana'
      Caption = 'Renombrar elemento'
      Hint = 'Renombrar elemento'
    end
    object acti_impr_info_general: TAction
      Category = 'Imprimir'
      Caption = 'Imprimir información general de la operación'
      ImageIndex = 10
      OnExecute = acti_impr_info_generalExecute
    end
    object acti_impr_list_elementos: TAction
      Category = 'Imprimir'
      Caption = 'Imprimir listado de elementos CST de la operación'
      OnExecute = acti_impr_list_elementosExecute
    end
    object acti_impr_pues_trabajo: TAction
      Category = 'Imprimir'
      Caption = 'Imprimir especificaciones del puesto de trabajo'
      OnExecute = acti_impr_pues_trabajoExecute
    end
  end
  object quer_procesos: TQuery
    Active = True
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_proceso, codi_proceso, nomb_proceso'
      'from pcp_procesos'
      'where anal_metodos = 1'
      'order by nomb_proceso')
    Left = 569
    Top = 129
  end
  object data_procesos: TDataSource
    DataSet = quer_procesos
    Left = 601
    Top = 160
  end
  object quer_oper_tipos: TQuery
    Active = True
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      
        'Select cons_oper_cost_tipo, codi_oper_cost_tipo, nomb_oper_cost_' +
        'tipo'
      'from pcp_oper_cost_tipos'
      'order by nomb_oper_cost_tipo')
    Left = 536
    Top = 128
  end
  object data_oper_tipos: TDataSource
    DataSet = quer_oper_tipos
    Left = 569
    Top = 160
  end
  object quer_grup_componentes: TQuery
    Active = True
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_comp_grupo, codi_comp_grupo, nomb_comp_grupo'
      'from pcp_comp_grupos'
      'order by nomb_comp_grupo')
    Left = 601
    Top = 128
  end
  object data_grupo_componentes: TDataSource
    DataSet = quer_grup_componentes
    Left = 537
    Top = 160
  end
  object quer_recu_tipos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_recu_grupos
    SQL.Strings = (
      'Select cons_recu_grupo, cons_recu_tipo, nomb_recu_tipo'
      'from glo_recu_tipos'
      'where cons_recu_grupo = :cons_recu_grupo'
      'order by nomb_recu_tipo')
    Left = 369
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECU_GRUPO'
        ParamType = ptUnknown
      end>
    object quer_recu_tiposCONS_RECU_GRUPO: TIntegerField
      FieldName = 'CONS_RECU_GRUPO'
    end
    object quer_recu_tiposCONS_RECU_TIPO: TIntegerField
      FieldName = 'CONS_RECU_TIPO'
    end
    object quer_recu_tiposNOMB_RECU_TIPO: TStringField
      FieldName = 'NOMB_RECU_TIPO'
      Size = 60
    end
  end
  object data_recu_tipos: TDataSource
    DataSet = quer_recu_tipos
    Left = 369
    Top = 408
  end
  object quer_recu_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_recu_grupo, nomb_recu_grupo'
      'from glo_recu_grupos'
      'order by nomb_recu_grupo'
      ' ')
    Left = 345
    Top = 385
    object quer_recu_gruposCONS_RECU_GRUPO: TIntegerField
      FieldName = 'CONS_RECU_GRUPO'
    end
    object quer_recu_gruposNOMB_RECU_GRUPO: TStringField
      FieldName = 'NOMB_RECU_GRUPO'
      Size = 60
    end
  end
  object data_recu_grupos: TDataSource
    DataSet = quer_recu_grupos
    Left = 345
    Top = 408
  end
  object quer_recu_familias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_recu_tipos
    SQL.Strings = (
      'Select cons_recu_familia, nomb_recu_familia, porc_suplemento'
      'from glo_recu_familias'
      'where cons_recu_grupo = :cons_recu_grupo'
      'and cons_recu_tipo = :cons_recu_tipo'
      'order by nomb_recu_familia')
    Left = 401
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECU_GRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_RECU_TIPO'
        ParamType = ptUnknown
      end>
    object quer_recu_familiasCONS_RECU_FAMILIA: TIntegerField
      FieldName = 'CONS_RECU_FAMILIA'
    end
    object quer_recu_familiasNOMB_RECU_FAMILIA: TStringField
      FieldName = 'NOMB_RECU_FAMILIA'
      Size = 60
    end
    object quer_recu_familiasPORC_SUPLEMENTO: TSmallintField
      FieldName = 'PORC_SUPLEMENTO'
    end
  end
  object data_recu_familias: TDataSource
    DataSet = quer_recu_familias
    Left = 401
    Top = 408
  end
  object quer_recu_marcas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_recu_marca, nomb_recu_marca'
      'from glo_recu_marcas'
      'order by nomb_recu_marca')
    Left = 433
    Top = 384
  end
  object data_recu_marcas: TDataSource
    DataSet = quer_recu_marcas
    Left = 433
    Top = 409
  end
  object quer_tipo_puntada: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_recu_tipo_puntada, codi_recu_tipo_puntada'
      'from glo_recu_tipo_puntada'
      'order by codi_recu_tipo_puntada'
      ' ')
    Left = 617
    Top = 392
  end
  object data_tipo_puntada: TDataSource
    DataSet = quer_tipo_puntada
    Left = 617
    Top = 416
  end
  object quer_elem_cst: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * '
      'from PCP_ELEM_CST'
      'order by CODI_ELEM_CST')
    Left = 672
    Top = 132
    object quer_elem_cstCODI_ELEM_CST: TStringField
      FieldName = 'CODI_ELEM_CST'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.CODI_ELEM_CST'
      Size = 12
    end
    object quer_elem_cstNOMB_ELEM_CST: TStringField
      FieldName = 'NOMB_ELEM_CST'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.NOMB_ELEM_CST'
      Size = 60
    end
    object quer_elem_cstCONS_CST_DIFICULTAD: TIntegerField
      FieldName = 'CONS_CST_DIFICULTAD'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.CONS_CST_DIFICULTAD'
    end
    object quer_elem_cstCONS_CST_DISTANCIA: TIntegerField
      FieldName = 'CONS_CST_DISTANCIA'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.CONS_CST_DISTANCIA'
    end
    object quer_elem_cstCONS_CST_POSICIONAMIENTO: TIntegerField
      FieldName = 'CONS_CST_POSICIONAMIENTO'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.CONS_CST_POSICIONAMIENTO'
    end
    object quer_elem_cstTIEM_CST: TFloatField
      FieldName = 'TIEM_CST'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.TIEM_CST'
    end
    object quer_elem_cstSOFTCONF: TIntegerField
      FieldName = 'SOFTCONF'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.SOFTCONF'
    end
    object quer_elem_cstNOMB_ANALISTA: TStringField
      FieldName = 'NOMB_ANALISTA'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.NOMB_ANALISTA'
      Size = 60
    end
    object quer_elem_cstDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.DESCRIPCION'
      Size = 240
    end
    object quer_elem_cstFECH_MODIFICACION: TDateTimeField
      FieldName = 'FECH_MODIFICACION'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.FECH_MODIFICACION'
    end
    object quer_elem_cstUSUA_MODIFICACION: TStringField
      FieldName = 'USUA_MODIFICACION'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.USUA_MODIFICACION'
    end
    object quer_elem_cstFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.FECH_SISTEMA'
    end
    object quer_elem_cstUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_ELEM_CST.USUA_SISTEMA'
    end
    object quer_elem_cstDISTANCIA: TStringField
      FieldKind = fkLookup
      FieldName = 'DISTANCIA'
      LookupDataSet = quer_distancias
      LookupKeyFields = 'CONS_CST_DISTANCIA'
      LookupResultField = 'NOMB_CST_DISTANCIA'
      KeyFields = 'CONS_CST_DISTANCIA'
      Size = 60
      Lookup = True
    end
    object quer_elem_cstDIFICULTAD: TStringField
      FieldKind = fkLookup
      FieldName = 'DIFICULTAD'
      LookupDataSet = quer_dificultades
      LookupKeyFields = 'CONS_CST_DIFICULTAD'
      LookupResultField = 'NOMB_CST_DIFICULTAD'
      KeyFields = 'CONS_CST_DIFICULTAD'
      Size = 60
      Lookup = True
    end
    object quer_elem_cstPOSICIONAMIENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'POSICIONAMIENTO'
      LookupDataSet = quer_posicionamientos
      LookupKeyFields = 'CONS_CST_POSICIONAMIENTO'
      LookupResultField = 'NOMB_CST_POSICIONAMIENTO'
      KeyFields = 'CONS_CST_POSICIONAMIENTO'
      Size = 60
      Lookup = True
    end
  end
  object quer_distancias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_cst_distancia, nomb_cst_distancia'
      'from SIS_CST_DISTANCIAS'
      'Order by cons_cst_distancia')
    Left = 624
    Top = 336
    object quer_distanciasCONS_CST_DISTANCIA: TIntegerField
      FieldName = 'CONS_CST_DISTANCIA'
    end
    object quer_distanciasNOMB_CST_DISTANCIA: TStringField
      FieldName = 'NOMB_CST_DISTANCIA'
      Size = 60
    end
  end
  object quer_dificultades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_cst_dificultad, nomb_cst_dificultad'
      'from SIS_CST_DIFICULTADES'
      'Order by cons_cst_dificultad')
    Left = 656
    Top = 336
    object quer_dificultadesCONS_CST_DIFICULTAD: TIntegerField
      FieldName = 'CONS_CST_DIFICULTAD'
    end
    object quer_dificultadesNOMB_CST_DIFICULTAD: TStringField
      FieldName = 'NOMB_CST_DIFICULTAD'
      Size = 60
    end
  end
  object quer_posicionamientos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_cst_posicionamiento, nomb_cst_posicionamiento'
      'from SIS_CST_POSICIONAMIENTOS'
      'Order by cons_cst_posicionamiento')
    Left = 688
    Top = 336
    object quer_posicionamientosCONS_CST_POSICIONAMIENTO: TIntegerField
      FieldName = 'CONS_CST_POSICIONAMIENTO'
    end
    object quer_posicionamientosNOMB_CST_POSICIONAMIENTO: TStringField
      FieldName = 'NOMB_CST_POSICIONAMIENTO'
      Size = 60
    end
  end
  object quer_elem_guardar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert Into PCP_OPER_COST_ELEMENTOS'
      
        '(cons_oper_costura, secu_oper_cost_elemento, codi_elem_cst, nomb' +
        '_elem_cst, frecuencia,'
      'tiem_cst,'
      
        'var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, v' +
        'ar_10)'
      'Values'
      
        '(:cons_oper_costura, :secu_oper_cost_elemento,  :codi_elem_cst, ' +
        ':nomb_elem_cst, :frecuencia,'
      ':tiem_cst,'
      
        ':var_1, :var_2, :var_3, :var_4, :var_5, :var_6, :var_7, :var_8, ' +
        ':var_9, :var_10)'
      ' ')
    Left = 626
    Top = 252
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_oper_costura'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'secu_oper_cost_elemento'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codi_elem_cst'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomb_elem_cst'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'frecuencia'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'tiem_cst'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'var_1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'var_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'var_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'var_4'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'var_5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'var_6'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'var_7'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'var_8'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'var_9'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'var_10'
        ParamType = ptInput
      end>
  end
  object quer_elem_eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Delete from PCP_OPER_COST_ELEMENTOS'
      'Where cons_oper_costura = :cons_oper_costura ')
    Left = 658
    Top = 252
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_oper_costura'
        ParamType = ptInput
      end>
  end
  object quer_movimientos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from '
      'PCP_OPER_COST_ELEMENTOS'
      'Where cons_oper_costura = :cons_oper_costura'
      'Order by secu_oper_cost_elemento')
    Left = 594
    Top = 252
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_oper_costura'
        ParamType = ptInput
      end>
  end
  object quer_oper_cost_importar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select * from'
      'VIS_PCP_OPER_COSTURA'
      'Where not cons_oper_costura = :cons_oper_costura'
      'and TIEM_CRONOMETRO = -1'
      'order by cons_oper_costura')
    Left = 688
    Top = 250
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_OPER_COSTURA'
        ParamType = ptUnknown
      end>
    object quer_oper_cost_importarCONS_OPER_COSTURA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_OPER_COSTURA'
    end
    object quer_oper_cost_importarNOMB_OPER_COSTURA: TStringField
      DisplayLabel = 'Nombre operación'
      FieldName = 'NOMB_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_OPER_COSTURA'
      Size = 30
    end
    object quer_oper_cost_importarCONS_PROCESO: TIntegerField
      DisplayLabel = 'No. proceso'
      FieldName = 'CONS_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_PROCESO'
    end
    object quer_oper_cost_importarCODI_PROCESO: TStringField
      DisplayLabel = 'Cód. proceso'
      FieldName = 'CODI_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_PROCESO'
      Size = 12
    end
    object quer_oper_cost_importarNOMB_PROCESO: TStringField
      DisplayLabel = 'Proceso'
      FieldName = 'NOMB_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_PROCESO'
      Size = 60
    end
    object quer_oper_cost_importarCONS_OPER_COST_TIPO: TIntegerField
      DisplayLabel = 'No. tipo operación'
      FieldName = 'CONS_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_OPER_COST_TIPO'
    end
    object quer_oper_cost_importarCODI_OPER_COST_TIPO: TStringField
      DisplayLabel = 'Cód. tipo operación'
      FieldName = 'CODI_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_OPER_COST_TIPO'
      Size = 12
    end
    object quer_oper_cost_importarNOMB_OPER_COST_TIPO: TStringField
      DisplayLabel = 'Tipo operación'
      FieldName = 'NOMB_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_OPER_COST_TIPO'
      Size = 60
    end
    object quer_oper_cost_importarCONS_COMP_GRUPO: TIntegerField
      DisplayLabel = 'No. grupo componente'
      FieldName = 'CONS_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_COMP_GRUPO'
    end
    object quer_oper_cost_importarCODI_COMP_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo componente'
      FieldName = 'CODI_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_COMP_GRUPO'
      Size = 12
    end
    object quer_oper_cost_importarNOMB_COMP_GRUPO: TStringField
      DisplayLabel = 'Grupo componente'
      FieldName = 'NOMB_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_COMP_GRUPO'
      Size = 60
    end
    object quer_oper_cost_importarFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.FECH_SISTEMA'
    end
    object quer_oper_cost_importarUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.USUA_SISTEMA'
    end
    object quer_oper_cost_importarPUNT_POR_CENTIMETRO: TFloatField
      DisplayLabel = 'P.P.C.'
      FieldName = 'PUNT_POR_CENTIMETRO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.PUNT_POR_CENTIMETRO'
    end
    object quer_oper_cost_importarSUPL_CONSTANTE: TSmallintField
      DisplayLabel = '% SuplC'
      FieldName = 'SUPL_CONSTANTE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SUPL_CONSTANTE'
    end
    object quer_oper_cost_importarSUPL_VARIABLE: TSmallintField
      DisplayLabel = '% SuplV'
      FieldName = 'SUPL_VARIABLE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SUPL_VARIABLE'
    end
    object quer_oper_cost_importarLARG_COSTURA: TIntegerField
      DisplayLabel = 'L.C.'
      FieldName = 'LARG_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.LARG_COSTURA'
    end
    object quer_oper_cost_importarCOMP_LARG_COSTURA: TStringField
      DisplayLabel = 'Composición L.C.'
      FieldName = 'COMP_LARG_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.COMP_LARG_COSTURA'
      Size = 60
    end
    object quer_oper_cost_importarCONS_RECU_FAMILIA: TIntegerField
      DisplayLabel = 'No. familia máquina'
      FieldName = 'CONS_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_RECU_FAMILIA'
    end
    object quer_oper_cost_importarCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Cód. familia máquina'
      FieldName = 'CODI_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_RECU_FAMILIA'
      Size = 12
    end
    object quer_oper_cost_importarNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia de máquina'
      FieldName = 'NOMB_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_RECU_FAMILIA'
      Size = 60
    end
    object quer_oper_cost_importarREVO_POR_MINUTO: TIntegerField
      DisplayLabel = 'R.P.M.'
      FieldName = 'REVO_POR_MINUTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.REVO_POR_MINUTO'
    end
    object quer_oper_cost_importarSUPL_MAQUINA: TSmallintField
      DisplayLabel = '% SuplM'
      FieldName = 'SUPL_MAQUINA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SUPL_MAQUINA'
    end
    object quer_oper_cost_importarCONS_ACCE_FAMILIA: TIntegerField
      DisplayLabel = 'No. Familia accesorio'
      FieldName = 'CONS_ACCE_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_ACCE_FAMILIA'
    end
    object quer_oper_cost_importarIMAG_PUES_TRABAJO: TBlobField
      DisplayLabel = 'Puesto trabajo'
      FieldName = 'IMAG_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.IMAG_PUES_TRABAJO'
      BlobType = ftBlob
      Size = 1
    end
    object quer_oper_cost_importarAJUS_IMAG_PUES_TRABAJO: TIntegerField
      DisplayLabel = 'Ajustar puesto trabajo'
      FieldName = 'AJUS_IMAG_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.AJUS_IMAG_PUES_TRABAJO'
    end
    object quer_oper_cost_importarIMAG_DIST_PUES_TRABAJO: TBlobField
      DisplayLabel = 'Distribución puesto trabajo'
      FieldName = 'IMAG_DIST_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.IMAG_DIST_PUES_TRABAJO'
      BlobType = ftBlob
      Size = 1
    end
    object quer_oper_cost_importarAJUS_IMAG_DIST_PUES_TRABAJO: TIntegerField
      DisplayLabel = 'Ajustar distr. puesto trabajo'
      FieldName = 'AJUS_IMAG_DIST_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.AJUS_IMAG_DIST_PUES_TRABAJO'
    end
    object quer_oper_cost_importarTIEM_CRONOMETRO: TIntegerField
      DisplayLabel = 'C'
      FieldName = 'TIEM_CRONOMETRO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.TIEM_CRONOMETRO'
    end
    object quer_oper_cost_importarTIEM_2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TIEM_2'
      Calculated = True
    end
    object quer_oper_cost_importarTIEM_ASIGNADO: TFloatField
      FieldName = 'TIEM_ASIGNADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.TIEM_ASIGNADO'
    end
    object quer_oper_cost_importarCODI_OPER_COSTURA: TStringField
      FieldName = 'CODI_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_OPER_COSTURA'
      Size = 12
    end
    object quer_oper_cost_importarDESCRIPCION: TMemoField
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.DESCRIPCION'
      BlobType = ftMemo
      Size = 5000
    end
    object quer_oper_cost_importarMODI_PUES_TRABAJO: TMemoField
      FieldName = 'MODI_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.MODI_PUES_TRABAJO'
      BlobType = ftMemo
      Size = 5000
    end
    object quer_oper_cost_importarSECU_MOVIMIENTOS: TMemoField
      FieldName = 'SECU_MOVIMIENTOS'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SECU_MOVIMIENTOS'
      BlobType = ftMemo
      Size = 5000
    end
  end
  object data_oper_cost_importar: TDataSource
    AutoEdit = False
    DataSet = quer_oper_cost_importar
    Left = 688
    Top = 278
  end
  object grid_find: TAdvGridFindDialog
    AutoPosition = False
    Grid = grid
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
    Left = 474
    Top = 260
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
  end
  object tabl_oper_cost_historial: TTable
    BeforePost = tabl_oper_cost_historialBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_OPER_COSTURA'
    MasterFields = 'CONS_OPER_COSTURA'
    MasterSource = data_ventana
    TableName = 'PCP_OPER_COST_HISTORIAL'
    Left = 8
    Top = 256
    object tabl_oper_cost_historialCONS_ANOTACION: TIntegerField
      FieldName = 'CONS_ANOTACION'
      Required = True
    end
    object tabl_oper_cost_historialCONS_OPER_COSTURA: TIntegerField
      FieldName = 'CONS_OPER_COSTURA'
      Required = True
    end
    object tabl_oper_cost_historialTEXT_ANOTACION: TStringField
      FieldName = 'TEXT_ANOTACION'
      Required = True
      Size = 250
    end
    object tabl_oper_cost_historialFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_oper_cost_historialUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object quer_gene_variacion: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select max(cons_variacion) as cons_variacion'
      'from pcp_oper_costura'
      'where cons_proceso = :cons_proceso'
      'and cons_oper_cost_tipo = :cons_oper_cost_tipo'
      'and  cons_comp_grupo = :cons_comp_grupo')
    Left = 594
    Top = 284
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROCESO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_OPER_COST_TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_COMP_GRUPO'
        ParamType = ptUnknown
      end>
  end
  object quer_depe_0: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select * from CON_PCP_METO_OPER_COST_DEPE_0(:cons_oper_costura)'
      'order by padr_consulta, cons_consulta')
    Left = 186
    Top = 338
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_OPER_COSTURA'
        ParamType = ptUnknown
      end>
    object quer_depe_0CONS_CONSULTA: TIntegerField
      FieldName = 'CONS_CONSULTA'
    end
    object quer_depe_0PADR_CONSULTA: TIntegerField
      FieldName = 'PADR_CONSULTA'
    end
    object quer_depe_0VALO_TABL_DEPENDENCIA: TStringField
      DisplayLabel = 'Dependencias'
      FieldName = 'VALO_TABL_DEPENDENCIA'
      Size = 120
    end
    object quer_depe_0INDE_IMAGEN: TIntegerField
      FieldName = 'INDE_IMAGEN'
    end
    object quer_depe_0CONS_TABL_DEPENDENCIA: TStringField
      FieldName = 'CONS_TABL_DEPENDENCIA'
      Size = 120
    end
  end
  object data_depe_0: TDataSource
    DataSet = quer_depe_0
    Left = 218
    Top = 338
  end
  object quer_comp_listado: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    RequestLive = True
    SQL.Strings = (
      'Select cons_comp_variacion, secu_oper_vari_componente,'
      ' tiempo, frecuencia'
      'from PCP_COMP_LIST_OPER_COSTURA'
      'Where codi_oper_costura = :codi_oper_costura')
    Left = 477
    Top = 306
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codi_oper_costura'
        ParamType = ptUnknown
      end>
  end
  object quer_depe_1: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select * from CON_PCP_METO_OPER_COST_DEPE_1(:cons_oper_costura)'
      'order by padr_consulta, cons_consulta')
    Left = 186
    Top = 370
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_OPER_COSTURA'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'CONS_CONSULTA'
    end
    object IntegerField2: TIntegerField
      FieldName = 'PADR_CONSULTA'
    end
    object StringField1: TStringField
      DisplayLabel = 'Dependencias'
      FieldName = 'VALO_TABL_DEPENDENCIA'
      Size = 120
    end
    object IntegerField4: TIntegerField
      FieldName = 'INDE_IMAGEN'
    end
    object quer_depe_1CONS_TABL_DEPENDENCIA: TStringField
      FieldName = 'CONS_TABL_DEPENDENCIA'
      Size = 120
    end
  end
  object data_depe_1: TDataSource
    DataSet = quer_depe_1
    Left = 218
    Top = 370
  end
  object tabl_repo_elementos: TTable
    DatabaseName = 'PCPLocal'
    FieldDefs = <
      item
        Name = 'nume_elemento'
        DataType = ftInteger
      end
      item
        Name = 'codi_elem_cst'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nomb_elem_cst'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'frecuencia'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'distancia'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'dificultad'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'posicionamiento'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'tiem_tmu'
        DataType = ftFloat
      end
      item
        Name = 'tiem_2'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'tmp_oper_cst_list_elemetos'
    Left = 770
    Top = 462
  end
  object tabl_repo_totales: TTable
    DatabaseName = 'PCPLocal'
    FieldDefs = <
      item
        Name = 'prod_hora'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'prod_dia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cost_unidad'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'supl_constante'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'supl_variable'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'supl_maquina'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'porc_part_manual1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'porc_part_manual2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'porc_part_maquina'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'porc_part_maquina2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'porc_part_total'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'porc_part_total2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tota_tn1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tota_tn2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tota_tnsupl1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tota_tnsupl2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tota_estandar1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tota_estandar2'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'tmp_oper_cst_list_elem_resumen'
    Left = 799
    Top = 462
  end
  object quer_form_pago_habilidad: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_FORM_PAGO_HABILIDAD, CODI_FORM_PAGO_HABILIDAD,'
      'VALO_HORA_PRODUCCION'
      'FROM PCP_FORM_PAGO_HABILIDAD'
      'ORDER BY CODI_FORM_PAGO_HABILIDAD')
    Left = 347
    Top = 469
    object quer_form_pago_habilidadCONS_FORM_PAGO_HABILIDAD: TIntegerField
      FieldName = 'CONS_FORM_PAGO_HABILIDAD'
      Origin = 'DATA_BASE_PCP.PCP_FORM_PAGO_HABILIDAD.CONS_FORM_PAGO_HABILIDAD'
    end
    object quer_form_pago_habilidadCODI_FORM_PAGO_HABILIDAD: TStringField
      FieldName = 'CODI_FORM_PAGO_HABILIDAD'
      Origin = 'DATA_BASE_PCP.PCP_FORM_PAGO_HABILIDAD.CODI_FORM_PAGO_HABILIDAD'
      Size = 12
    end
    object quer_form_pago_habilidadVALO_HORA_PRODUCCION: TFloatField
      FieldName = 'VALO_HORA_PRODUCCION'
      Origin = 'DATA_BASE_PCP.PCP_FORM_PAGO_HABILIDAD.VALO_HORA_PRODUCCION'
      DisplayFormat = ',0.00'
    end
  end
  object data_form_pago_habilidad: TDataSource
    DataSet = quer_form_pago_habilidad
    Left = 347
    Top = 501
  end
end

inherited fn1_meto_refe_list_oper_corte: Tfn1_meto_refe_list_oper_corte
  Left = 52
  Top = 15
  Width = 794
  Height = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 786
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
    Width = 786
  end
  object pane_importar: TToolWindow97 [2]
    Left = 312
    Top = 51
    Caption = 'Importar operaciones'
    ClientAreaHeight = 452
    ClientAreaWidth = 577
    TabOrder = 10
    Visible = False
    OnVisibleChanged = pane_importarVisibleChanged
    object dfsSplitter3: TdfsSplitter
      Left = 0
      Top = 241
      Width = 577
      Height = 10
      Cursor = crVSplit
      Align = alTop
      MinSize = 1
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object TBXDock3: TTBXDock
      Left = 0
      Top = 0
      Width = 577
      Height = 26
      object TBXToolbar3: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        DockPos = -32
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
    object grid_importar: TSCLColumnGrid
      Left = 0
      Top = 251
      Width = 577
      Height = 201
      Cursor = crDefault
      Align = alClient
      ColCount = 7
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
      ScrollBars = ssVertical
      TabOrder = 1
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'MS Sans Serif'
      ActiveCellFont.Style = [fsBold]
      EnhRowColMove = False
      OnGetAlignment = gridGetAlignment
      ControlLook.FlatButton = True
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
      MouseActions.DirectComboDrop = True
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
        'Proceso'
        'Código'
        'Nombre operación'
        'u/m'
        'Tiempo'
        'P/H')
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
          Header = 'Proceso'
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
          ReadOnly = False
          ShowBands = False
          SortStyle = ssAutomatic
          SpinMax = 0
          SpinMin = 0
          SpinStep = 1
          Tag = 0
          Width = 104
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
          Header = 'Código'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridCODI_OPERACION'
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
          Width = 91
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
          Header = 'Nombre operación'
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
          Width = 210
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
          Header = 'u/m'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridUNID_MEDIDA'
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
          Width = 84
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
          Name = 'gridTIEM_OPERACION'
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
          Header = 'P/H'
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridPROD_HORA'
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
        104
        91
        210
        84
        64
        64)
    end
    object padr_grid: TdxDBGrid
      Left = 0
      Top = 26
      Width = 577
      Height = 215
      Bands = <
        item
          Alignment = taLeftJustify
          Caption = 'Referencia'
          OnlyOwnColumns = True
          Width = 519
        end
        item
          Alignment = taLeftJustify
          Caption = 'Material'
          OnlyOwnColumns = True
          Width = 144
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'CONS_REFERENCIA'
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
              ColumnName = 'padr_gridCODI_REFERENCIA'
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
      TabOrder = 2
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = data_refe_importar
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
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowBands = True
      OnChangeNode = padr_gridChangeNode
      object padr_gridCONS_REFERENCIA: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 155
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_REFERENCIA'
      end
      object padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_REFERENCIA'
      end
      object padr_gridMOLDE: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 85
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MOLDE'
      end
      object padr_gridCODI_INTE_REFERENCIA: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_INTE_REFERENCIA'
      end
      object padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 122
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_REFERENCIA'
      end
      object padr_gridCONS_REFE_VARIACION: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 188
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_REFE_VARIACION'
      end
      object padr_gridCODI_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 227
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_REFE_TIPO_VARIACION'
      end
      object padr_gridNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_REFE_TIPO_VARIACION'
      end
      object padr_gridNOMB_REFE_ESTADO: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_REFE_ESTADO'
      end
      object padr_gridCONS_REFE_MATERIAL: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 183
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_REFE_MATERIAL'
      end
      object padr_gridCONS_MATE_REFERENCIA: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 206
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_MATE_REFERENCIA'
      end
      object padr_gridCODI_MATE_REFERENCIA: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 84
        BandIndex = 1
        RowIndex = 0
        FieldName = 'CODI_MATE_REFERENCIA'
      end
      object padr_gridEDIT_MAESTRO: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 127
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDIT_MAESTRO'
      end
      object padr_gridNOMB_MATE_REFERENCIA: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 169
        BandIndex = 1
        RowIndex = 0
        FieldName = 'NOMB_MATE_REFERENCIA'
      end
      object padr_gridMOST_METODOS: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 136
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MOST_METODOS'
      end
      object padr_gridMOST_ORDE_TRABAJO: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 182
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MOST_ORDE_TRABAJO'
      end
      object padr_gridMOST_INVE_MATERIALES: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MOST_INVE_MATERIALES'
      end
    end
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 786
    Height = 96
    inherited padr_barra: TTBXToolbar
      Visible = False
      object TBXSubmenuItem1: TTBXSubmenuItem [11]
        Action = acti_impr_listado
        DropdownCombo = True
        ImageIndex = 10
        Images = _fMDI.imag_grandes
        object TBXItem9: TTBXItem
          Action = acti_impr_listado
          DisplayMode = nbdmTextOnly
          InheritOptions = False
        end
        object TBXItem3: TTBXItem
          Action = acti_resu_procesos
          DisplayMode = nbdmTextOnly
          InheritOptions = False
        end
      end
      inherited padr_boto_imprimir: TTBXItem
        Action = nil
        Enabled = True
      end
    end
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 42
      BorderStyle = bsNone
      DockMode = dmCannotFloatOrChangeDocks
      FullSize = True
      ParentShowHint = False
      ProcessShortCuts = True
      ShowHint = True
      ShrinkMode = tbsmWrap
      TabOrder = 1
      object TBXItem11: TTBXItem
        Action = padr_acti_guardar
        DisplayMode = nbdmImageAndText
        ImageIndex = 5
        Images = _fMDI.imagenesPCP
        Options = [tboToolbarStyle, tboToolbarSize]
      end
      object TBXItem12: TTBXItem
        Action = padr_acti_cancelar
        DisplayMode = nbdmImageAndText
        ImageIndex = 8
        Images = _fMDI.imagenesPCP
        Options = [tboToolbarStyle, tboToolbarSize]
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object TBXItem28: TTBXItem
        Action = acti_volv_llamar
        DisplayMode = nbdmImageAndText
        ImageIndex = 11
        Images = _fMDI.imag_varias
      end
      object TBXItem13: TTBXItem
        Tag = -1
        Action = padr_acti_actualizar
        ImageIndex = 4
        Images = _fMDI.imagenesPCP
      end
      object TBXSubmenuItem2: TTBXSubmenuItem
        Action = acti_impr_listado
        DropdownCombo = True
        ImageIndex = 10
        Images = _fMDI.imagenesPCP
        object TBXItem14: TTBXItem
          Action = acti_impr_listado
          DisplayMode = nbdmTextOnly
          InheritOptions = False
        end
        object TBXItem15: TTBXItem
          Action = acti_resu_procesos
          DisplayMode = nbdmTextOnly
          InheritOptions = False
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
      object TBXItem2: TTBXItem
        Action = acti_buscar
        Images = _fMDI.imagenesPCP
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
        Caption = 'Importar operaciones'
        Control = pane_importar
        DisplayMode = nbdmImageAndText
        ImageIndex = 31
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object TBXItem10: TTBXItem
        Action = acti_resu_procesos
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_pequenas
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object TBXItem21: TTBXItem
        Action = acti_expo_XLS
        Images = _fMDI.imagenesPCP
      end
      object TBXItem20: TTBXItem
        Action = acti_expo_HTML
        Images = _fMDI.imagenesPCP
      end
      object TBXItem16: TTBXItem
        Action = acti_expo_TXT
        Images = _fMDI.imagenesPCP
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 786
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 122
    Width = 786
    inherited padr_beve_1: TBevel
      Width = 906
    end
    inherited padr_sepa_new: TShape
      Width = 780
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
    Width = 786
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
    Width = 786
    inherited padr_pane_titulo: TPanel
      Width = 745
      Caption = 'Secuencia de operaciones de corte'
    end
    inherited padr_pane_2: TPanel
      Left = 747
    end
    inherited padr_pane_cerrar: TPanel
      Left = 765
    end
  end
  inline fram_sele_referencia: Tffra_sele_refe_variacion [8]
    Top = 131
    Width = 786
    Height = 47
    Align = alTop
    TabOrder = 7
    inherited fram_pane_sele_referencia: TPCPFrame
      Tag = 76
      Width = 786
      Height = 76
      inherited fram_pane_referencia: TPanel
        Width = 782
        inherited SCLDBLabel1: TSCLDBLabel
          Top = 4
        end
        inherited SCLDBLabel3: TSCLDBLabel
          Top = 4
        end
        inherited comb_codi_referencia: TPCPLookUpComboEdit
          Top = 4
          DataField = 'cons_referencia'
          DataSource = data_ventana
          OnChange = fram_sele_referenciacomb_codi_referenciaChange
        end
        inherited comb_variacion: TPCPLookUpComboEdit
          Top = 4
          DataField = 'cons_refe_variacion'
          DataSource = data_ventana
          OnChange = fram_sele_referenciacomb_variacionChange
        end
      end
      inherited fram_pane_informacion: TPCPFrame
        Tag = 25
        Width = 782
        Height = 25
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
      Width = 29
    end
  end
  object pane_info_material: TPCPFrame [9]
    Tag = 50
    Left = 0
    Top = 178
    Width = 786
    Height = 50
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
    TabOrder = 8
    Caption = 'Seleccione un material'
    Titulo_Color = 16244694
    object SCLDBLabel8: TSCLDBLabel
      Left = 13
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
      FocusControl = comb_codi_refe_material
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código material:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel1: TSCLDBLabel
      Left = 267
      Top = 25
      Width = 106
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
      FocusControl = comb_nomb_refe_material
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Referencia material:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_codi_refe_material: TPCPLookUpComboEdit
      Left = 115
      Top = 25
      Width = 130
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_refe_material'
      DataSource = data_ventana
      KeyField = 'cons_Refe_material'
      ListField = 'codi_mate_referencia'
      ListSource = data_refe_materiales
      ParentCtl3D = False
      TabOrder = 1
      OnChange = comb_codi_refe_materialChange
      DirectInput = False
    end
    object comb_nomb_refe_material: TPCPLookUpComboEdit
      Left = 375
      Top = 25
      Width = 260
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_refe_material'
      DataSource = data_ventana
      KeyField = 'cons_refe_material'
      ListField = 'nomb_mate_referencia'
      ListSource = data_refe_materiales
      ParentCtl3D = False
      TabOrder = 2
      OnChange = comb_codi_refe_materialChange
      DirectInput = False
    end
  end
  object page: TSCLPageControl [10]
    Left = 0
    Top = 228
    Width = 786
    Height = 347
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
    TabOrder = 9
    Transparent = True
    Visible = False
    FixedDimension = 19
    object page_operaciones: TSCLTabSheet
      Color = 16578290
      Caption = 'Operaciones'
      object TBXDock2: TTBXDock
        Left = 0
        Top = 0
        Width = 782
        Height = 9
      end
      object grid: TSCLColumnGrid
        Left = 0
        Top = 9
        Width = 782
        Height = 290
        Cursor = crDefault
        Align = alClient
        ColCount = 7
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
        ScrollBars = ssVertical
        TabOrder = 1
        OnKeyDown = gridKeyDown
        OnSelectCell = gridSelectCell
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'MS Sans Serif'
        ActiveCellFont.Style = [fsBold]
        EnhRowColMove = False
        OnGetAlignment = gridGetAlignment
        ControlLook.FlatButton = True
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
        MouseActions.DirectComboDrop = True
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
          'Proceso'
          'Código'
          'Nombre operación'
          'u/m'
          'Tiempo'
          'P/H')
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
            Alignment = taLeftJustify
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edComboList
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Proceso'
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
            ReadOnly = False
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 104
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
            Header = 'Código'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'gridCODI_OPERACION'
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
            Width = 91
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
            Header = 'Nombre operación'
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
            Width = 210
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
            Editor = edComboList
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'u/m'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'gridUNID_MEDIDA'
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
            Width = 84
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
            Name = 'gridTIEM_OPERACION'
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
            Header = 'P/H'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'gridPROD_HORA'
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
          104
          91
          210
          84
          64
          64)
      end
      object TBXDock1: TTBXDock
        Left = 0
        Top = 299
        Width = 782
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
            Caption = 'Número de operaciones :'
          end
          object TBControlItem1: TTBControlItem
            Control = edit_tota_filas
          end
          object TBXSeparatorItem9: TTBXSeparatorItem
          end
          object TBXLabelItem2: TTBXLabelItem
            Caption = 'Tiempo total :'
            Visible = False
          end
          object TBControlItem2: TTBControlItem
            Control = edit_tiem_total
          end
          object edit_tota_filas: TdxCurrencyEdit
            Left = 261
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
            Left = 296
            Top = 0
            Width = 77
            Enabled = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsFlat
            TabOrder = 1
            TabStop = False
            Visible = False
            Alignment = taRightJustify
            ReadOnly = True
            StyleController = padr_estilo
            DisplayFormat = ',0.000'
            StoredValues = 65
          end
          object edit_oper_seleccionada: TdxSpinEdit
            Left = 89
            Top = 0
            Width = 45
            TabOrder = 2
            TabStop = False
            OnExit = edit_oper_seleccionadaExit
            Alignment = taRightJustify
            StyleController = padr_estilo
            MaxValue = 100
            MinValue = 1
            Value = 1
            StoredValues = 49
          end
        end
      end
    end
    object page_historial: TSCLTabSheet
      Color = 16578290
      Caption = 'Historial'
      inline ffra_historialDB1: Tffra_historialDB
        Width = 782
        Height = 324
        Align = alClient
        inherited fram_pane: TPanel
          Width = 782
          Height = 324
          inherited fram_grid_historial: TdxDBGrid
            Width = 912
            Height = 372
            Filter.Criteria = {00000000}
          end
          inherited TBXDock1: TTBXDock
            Width = 912
            inherited TBXToolbar1: TTBXToolbar
              Images = _fMDI.imag_pequenas
            end
          end
        end
        inherited data_historial: TDataSource
          DataSet = tabl_historial
        end
        inherited pop_grid_anotaciones: TTBXPopupMenu
          Images = _fMDI.imag_pequenas
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel [11]
    Top = 576
    Width = 786
    inherited padr_beve_abajo: TBevel
      Width = 780
    end
  end
  inherited padr_pane_principal: TPanel [12]
    Top = 129
    Width = 786
  end
  inherited Variables: TSCLPropiedadesForm [13]
    verBotonesNavegacion = False
  end
  inherited Tabla_Ventana: TTable [14]
  end
  inherited padr_estilo: TdxEditStyleController [15]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [16]
    Left = 602
  end
  inherited padr_esti_panel: TAdvPanelStyler [17]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [18]
  end
  inherited imag_pequenas: TImageList [19]
  end
  inherited padr_quer_consecutivo: TQuery [20]
  end
  inherited padr_imag_tem1_colo: TImageList [21]
    Bitmap = {
      494C01010F001300040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000A000000001002000000000000040
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ACACACFFDCDCDCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFACAEAFFF17272EFF999EA1FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0E0E0FF8181
      81FF545454FF8A8A8AFF666666FFEBEBEBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFA8A8A8FF505A5EFF345C70FF477B95FF354C58FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E1FF929292FF494949FF4545
      45FF464646FFC1C1C1FFCDCDCDFF636363FFE0E0E0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF000000FF000000FF000000FF1522
      29FF3A6175FF49809CFF49809CFF487F9BFF354C58FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A7A7A7FF727272FF545454FF494949FF494949FF3B3B
      3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFFE0E0E0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF6A6F71FF2D4F5FFF4174
      8EFF487F9BFF4F839DFF44748DFF467993FF354C58FF7F7F7FFF8D8D8DFF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0E0
      E0FF818181FF545454FF818181FF484848FF494949FF494949FF494949FF2C2C
      2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFC4C4C4FF636363FFECECECFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF4C85A1FF5487
      A1FF497B94FF4B7E98FF3B687FFF46768FFF3C505AFF0C0C0CFF050505FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E1FF929292FF4949
      49FF454545FF464646FFC1C1C1FFCDCDCDFF565656FF6B6B6BFF2E2E2EFF9A9A
      9AFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF656565FFDCDC
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF5488A2FF4072
      8CFF3E687EFF487C97FF3B687FFF46768FFF3C505AFF0C0C0CFF050505FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0D0D0FF616161FF545454FF494949FF4949
      49FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFF4C4C4CFFC7C7
      C7FFCFCFCFFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFC1C1C1FF6565
      65FFECECECFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF4A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF5186A1FF4072
      8CFF3C677DFF457B96FF35798EFF438299FF42535CFF0C0C0CFF050505FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F9FFB5B5B5FF6E6E6EFF5B5B5BFF474747FF494949FF494949FF4949
      49FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFF878787FF9E9E9EFFE6E6
      E6FFE0E0E0FFD7D7D7FFCECECEFFCECECEFFCECECEFFCECECEFFCDCDCDFFCDCD
      CDFF636363FFE0E0E0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF4C839FFF4072
      8CFF3A647AFF3C6B83FF2397A4FF3A9EB2FF42535CFF0C0C0CFF050505FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F9FFAAAA
      AAFF5C5C5CFF4A4A4AFF383838FF898989FFCECECEFF797979FF525252FF2E2E
      2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFC1C1C1FF535353FFE6E6E6FFE6E6
      E6FFE6E6E6FFE5E5E5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FFE2E2
      E2FF777777FFD0D0D0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF437C99FF3C6A
      81FF3F6D85FF5287A3FF3B96A9FF3E8DA3FF42535CFF0F0F0FFF060606FFB1B0
      AFFF534B3FFF8D8D8DFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B7B7B7FF6A6A6AFF4A4A
      4AFF4A4A4AFF484848FF313131FFCECECEFFCECECEFFCECECEFF898989FF4C4C
      4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFF9B9B9BFF8F8F8FFFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5
      E5FF606060FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF467F9BFF507E
      96FF4D84A1FF4B7E98FF3B687FFF477790FF42535CFF121212FF090909FF786B
      56FF7E725DFF4A4339FF403A33FF171512FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFF696969FF4A4A4AFF4A4A
      4AFF4A4A4AFF292929FFA1A1A1FFCECECEFFCECECEFFCECECEFF8E8E8EFF9E9E
      9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFF4B4B4BFFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF5656
      56FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF5488A2FF4072
      8CFF3F697EFF4A7D97FF3B687FFF477790FF42535CFF121212FF4F4638FFA592
      75FF9B8A6FFF918269FF827560FF2E2922FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E8E8FFBBBBBBFF5454
      54FF484848FF4E4E4EFFC2C2C2FFCECECEFFCECECEFFC0C0C0FF535353FFE6E6
      E6FFE6E6E6FFE6E6E6FFE5E5E5FF8E8E8EFFA7A7A7FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFBABABAFF8383
      83FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF5488A2FF4072
      8CFF3D687DFF477B96FF3B687FFF477790FF42535CFF161616FF090909FF685B
      48FF98866BFF3D352AFF3C352AFF16140FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A5A5AFF929292FFCECECEFFCECECEFFCECECEFF9B9B9BFF8F8F8FFFE6E6
      E6FFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF777777FFD0D0
      D0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFCECECEFFCECECEFFCECECEFF192E38FF4C839FFF4072
      8CFF3A657BFF3F728CFF3B677EFF487A93FF42535CFF191919FF0A0A0AFF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F2FF575757FFE3E3E3FFDEDEDEFFD1D1D1FFCECECEFF4B4B4BFFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC9C9C9FF747474FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF192E38FF47819EFF4072
      8CFF396479FF40738DFF40738DFF5285A0FF42535CFF1C1C1CFF0B0B0BFF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      98FFACACACFFE6E6E6FFE6E6E6FFE6E6E6FF898989FFA7A7A7FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5E5FFE6E6E6FF9D9D
      9DFF989898FF909090FFE6E6E6FFE6E6E6FFE5E5E5FF727272FFE0E0E0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFF0000FFFF0000C0C0C000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF192E38FF417893FF3963
      78FF437994FF52859FFF698FA3FF637985FF313537FF242424FF0D0D0DFF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F2FF6060
      60FFDBDBDBFFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FF8F8F8FFF949494FF8888
      88FF494949FF696969FF909090FFE6E6E6FFC9C9C9FF808080FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000C0C0C000FFFF0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF192E38FF427A96FF497F
      9BFF6B96ACFF65808EFF454E52FF2E2F30FF282828FF272727FF0E0E0EFF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009E9E9EFFA1A1
      A1FFE5E5E5FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFA9A9A9FF8B8B8BFF8B8B8BFF535353FF4D4D
      4DFFABABABFF7A7A7AFF6F6F6FFF939393FF6C6C6CFFE0E0E0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000FFFF0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF21333CFF638FA6FF6C85
      92FF42494DFF313131FF313131FF303030FF2F2F2FFF2E2E2EFF101010FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEEEEEFF5B5B5BFFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5E5FFE6E6
      E6FFE6E6E6FFC9C9C9FF909090FF8D8D8DFF5C5C5CFF4A4A4AFF9E9E9EFFD3D3
      D3FFDADADAFFCACACAFF6F6F6FFF747474FF686868FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFA7AAABFF293439FF1416
      17FF101010FF101010FF101010FF101010FF101010FF101010FF050505FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0A0FFA5A5A5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FFC5C5C5FFE6E6
      E6FFE6E6E6FFCCCCCCFF656565FF464646FF909090FFD1D1D1FFDADADAFFDADA
      DAFFDADADAFFD8D8D8FFB8B8B8FF606060FFBABABAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFF0000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FF595959FFDEDEDEFFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4B4FF696969FF7878
      78FFCCCCCCFF8A8A8AFF828282FFCECECEFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFC8C8C8FFACACACFF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFF0000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9AFFA7A7A7FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFBBBB
      BBFF4D4D4DFF616161FFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFD7D7D7FFB7B7B7FF555555FFF4F4F4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      0000FFFF00000000000080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFDCDCDCFF515151FF5F5F5FFF9A9A9BFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7C7CFFACACACFFD5D5D5FFE6E6
      E6FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC7C7
      C7FF6A6A6AFF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFDADADAFFC5C5C5FFA8A8A8FF7C7C7CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000C0C0C000FFFF0000FFFF0000FFFF
      0000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFDBDBDBFF8E8E
      8EFF838383FFAFAFAFFFADADADFF7F7F7FFF949494FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF989898FF626262FF9595
      95FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF6B6B
      6BFFE0E0E0FF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFDDDDDDFFE9E9E9FFB6B6B6FF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFDBDBDBFF8D8D8DFF8B8B8BFFAEAE
      AEFF9A9A9AFF969696FF929292FFA1A1A1FF7D7D7DFF909090FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4FFACAC
      ACFF565656FFA5A5A5FFD7D7D7FFE6E6E6FFE6E6E6FFE6E6E6FFBDBDBDFF8282
      82FFFEFEFEFF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDCDCDCFFEDEDEDFFE8E8E8FFCACACAFFDCDCDCFFA3A3A3FF848484FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF888888FF8C8C8CFFB1B1B1FF9A9A9AFF8989
      89FFAFAFAFFFACACACFFAAAAAAFF9E9E9EFFA0A0A0FF7B7B7BFF898A89FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFA0A0A0FF5C5C5CFF999999FFE6E6E6FFE6E6E6FF6F6F6FFFD3D3
      D3FF000000006D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDCDCDCFFEBEB
      EBFFE9E9E9FFCECECEFFC3C3C3FFC2C2C2FFC4C4C4FFD9D9D9FF4A4A4AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF767676FFA3A3A3FF979797FFA4A4A4FF9C9C
      9CFF979797FFACACACFFB2B2B2FF918888FF745F5FFFA3A3A3FF7C7C7CFF7E7E
      7EFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F9FFAAAAAAFF5A5A5AFF9E9E9EFF737373FF0000
      0000000000006D6D6DFFDADADAFFDADADAFFDBDBDBFFE8E8E8FFEAEAEAFFD2D2
      D2FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2C2FFC5C5C5FFE0E0E0FF6C6C6CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE2E2E2FF858585FF959595FFACACACFFADAD
      ADFFB7B7B7FF909090FF813737FF9E0505FFAD1E1EFF878282FFABABABFF7C7C
      7CFF6E6D6DFF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2FFA8A8A8FFF2F2F2FF0000
      0000000000006D6D6DFFDBDBDBFFE6E6E6FFE4E4E4FFBCBCBCFFC4C4C4FFC2C2
      C2FFC2C2C2FFC2C2C2FFC5C5C5FFD7D7D7FFB4B4B4FF696969FFE4E4E4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE2E2E2FF7D7D7DFFA2A2A2FF8989
      89FF853D3EFFC61B1BFFCC1717FFDE8B8BFFF8EAEAFFE0E0E0FF838383FF9696
      96FFAAAAAAFF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000737373FFE7E7E7FFC2C2C2FFA3A3A3FF9E9E9EFFC2C2C2FFC2C2
      C2FFC4C4C4FFD3D3D3FFC1C1C1FF696969FFB8B8B8FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE3E3E3FF666666FF806E
      6EFFC82627FFE98989FFFDFDFDFFF4F4F4FFE3E3E3FFB5B5B5FF969697FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7EFFC4C4C4FFB3B3B3FFA0A0A0FF9E9E9EFFC3C3C3FFD0D0
      D0FFCECECEFF6C6C6CFFA8A8A8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000FF8080
      80FF747474FFCACACBFFE2E3E3FFAFAFAFFF9C9C9CFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000989898FF707070FFCECECEFFADADADFFDBDBDBFF7070
      70FF989898FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFE6E6E6FFE6E6E6FF000000FF000000FF0000
      00FF868686FF5D5D5DFF9C9C9CFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000888888FF777777FF888888FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ACACACFFDCDCDCFF00000000000000000000
      000000000000000000000000000000000000000000007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0E0E0FF818181FF545454FF8A8A8AFF666666FFEBEBEBFF000000000000
      0000000000000000000000000000000000007A7A7A0044444400242424002424
      2400242424002424240024242400242424002424240024242400242424002424
      2400242424002424240024242400242424002424240024242400242424002424
      2400242424002424240024242400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E1E1FF9292
      92FF494949FF454545FF464646FFC1C1C1FFCDCDCDFF636363FFE0E0E0FF0000
      00000000000000000000000000000000000044444400BABABA00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00FACFCF00444444008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A7A7A7FF727272FF545454FF4949
      49FF494949FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFFE0E0
      E0FF0000000000000000000000000000000024242400FACFCF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DADADA00EFEFEF00DADADA00DADA
      DA00DADADA00CFCFCF00EFEFEF00FACFCF004444440084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E0FF818181FF545454FF818181FF484848FF494949FF4949
      49FF494949FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFC4C4C4FF6363
      63FFECECECFF0000000000000000000000000000000024242400FACFCF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00DADADA00EFEFEF00DADADA00DADADA00DADA
      DA00CFCFCF00CFCFCF00CFCFCF00EFEFEF00FACFCF004444440044444400BABA
      BA00000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1E1
      E1FF929292FF494949FF454545FF464646FFC1C1C1FFCDCDCDFF565656FF6B6B
      6BFF2E2E2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFF656565FFDCDCDCFF0000000000000000000000000000000044444400FACF
      CF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00DADADA00EFEFEF00DADADA00DADADA00DADADA00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00DADADA00DADADA00444444004444
      4400BABABA000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D0D0FF616161FF5454
      54FF494949FF494949FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B
      6BFF4C4C4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFC1C1C1FF656565FFECECECFF000000000000000000000000000000004444
      4400FACFCF00EFEFEF00EFEFEF00EFEFEF005A5A5A009A042F009A042F009A04
      2F009A042F009A042F009A042F009A042F009A042F009A042F009A042F009A04
      2F009A042F005A5A5A00BABABA00CFCFCF00CFCFCF00EFEFEF00EFEFEF00FACF
      CF0044444400BABABA0000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F9FFB5B5B5FF6E6E6EFF5B5B5BFF474747FF4949
      49FF494949FF494949FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFF8787
      87FF9E9E9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCDCDCDFFCDCDCDFF636363FFE0E0E0FF0000000000000000000000000000
      000044444400FACFCF00EFEFEF00EFEFEF009A042F009A042F009A042F009A04
      2F009A042F009A042F009A042F009A042F009A042F009A042F009A042F009A04
      2F009A042F009A042F0084848400BABABA00CFCFCF00EFEFEF00EFEFEF00DADA
      DA007A7A7A008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F9FFAAAAAAFF5C5C5CFF4A4A4AFF383838FF898989FFCECECEFF7979
      79FF525252FF2E2E2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFC1C1C1FF5353
      53FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE2E2E2FFE2E2E2FF777777FFD0D0D0FF0000000000000000000000000000
      00000000000044444400FACFCF009A042F009A042F005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A009A042F009A042F00BABABA00CFCFCF00CFCFCF00EFEFEF00EFEF
      EF00FACFCF004444440000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B7
      B7FF6A6A6AFF4A4A4AFF4A4A4AFF484848FF313131FFCECECEFFCECECEFFCECE
      CEFF898989FF4C4C4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFF9B9B9BFF8F8F
      8FFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE5E5E5FF606060FF000000000000000000000000000000000000
      00000000000000000000444444009A042F00CF9A2F00CF9A2F00CF9A2F00CF9A
      2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A
      2F00CF9A2F00CF9A2F009A042F00BABABA00BABABA00CFCFCF00CFCFCF00DADA
      DA007A7A7A004444440000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFBFF6969
      69FF4A4A4AFF4A4A4AFF4A4A4AFF292929FFA1A1A1FFCECECEFFCECECEFFCECE
      CEFF8E8E8EFF9E9E9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFF4B4B4BFFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FF565656FF00000000000000000000000000000000000000000000
      00000000000000000000000000009A042F00AFAFAF00AFAFAF00AFAFAF00AFAF
      AF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAF
      AF00AFAFAF00AFAFAF009A042F0084848400BABABA00BABABA00CFCFCF00BABA
      BA00444444007A7A7A0000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00AFAF
      AF007A7A7A001A242F00243A44009A9A9A00CFCFCF0004040400000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E8FFBBBBBBFF545454FF484848FF4E4E4EFFC2C2C2FFCECECEFFCECECEFFC0C0
      C0FF535353FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E5FF8E8E8EFFA7A7A7FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFBABABAFF838383FF00000000000000000000000000000000000000000000
      00000000000000000000000000009A042F00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA009A042F0084848400BABABA00BABABA00CFCFCF00FACF
      CF00BABABA007A7A7A00AFAFAF00000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4008F8F
      8F008484840084848400848484009A9A8F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400AFAFAF005A5A5A002F44
      4F003A5A6F00447A8F005A84A4004F4F4F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5AFF929292FFCECECEFFCECECEFFCECECEFF9B9B
      9BFF8F8F8FFFE6E6E6FFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FF777777FFD0D0D0FF00000000000000000000000000000000000000000000
      00000000000000000000000000009A042F009A042F009A042F009A042F009A04
      2F009A042F009A042F009A042F009A042F009A042F009A042F009A042F009A04
      2F009A042F009A042F009A042F008484840084848400BABABA00BABABA00BABA
      BA00FACFCF004444440084848400000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400BABABA00C4AF9A00E4DA
      CF00EFE4E400EFE4E400EFE4E400CFCFCF00847A6F009A9A9A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400AFAFAF005A5A5A00243A44003A647A004F84
      A4004F84A400447A9A005A84A4004444440004040400FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F2FF575757FFE3E3E3FFDEDEDEFFD1D1D1FFCECECEFF4B4B
      4BFFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC9C9
      C9FF747474FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A5A5A009A042F00FAFAFA00CF9A
      2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A2F00CF9A
      2F009A042F0084848400848484008484840084848400BABABA00BABABA00BABA
      BA00BABABA00BABABA0044444400AFAFAF000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A9A00E4CFC400FAFAEF00E4E4
      E400CFBAAF00DAAFA400E4BAAF00EFDACF00FAFAEF00E4E4E40084848400CFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4000F242400447A8F004F84A400447A9A004F84
      A4003A6F8F003A647A00648FAF0004040400040404005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000989898FFACACACFFE6E6E6FFE6E6E6FFE6E6E6FF898989FFA7A7
      A7FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FF8A8ABAFF2828D2FF8A8ABAFFE5E5E5FF7272
      72FFE0E0E0FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00DADADA00DADADA00BABABA00BABABA00BABABA00BABABA00CF9A
      2F009A042F00848484008484840084848400848484008484840084848400BABA
      BA00BABABA00FACFCF007A7A7A007A7A7A000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400DADADA00A4A4A400EFEFEF00EFEFEF00DAAF8F00C464
      3A00C4643A00DAAF8F00CF7A4F00BA642F00CF8F6F00EFE4E400EFEFEF008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400447A8F003A647A004F84
      A400446F8F003A647A00648FAF00040404000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F2FF606060FFDBDBDBFFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7
      D7FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FFC5C5
      C5FFE6E6E6FFE6E6E6FFE6E6E6FF2828D2FF2828D2FF2828D2FFC9C9C9FF8080
      80FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00DADADA00DADADA00DADADA00BABABA00BABABA00BABABA00CF9A
      2F009A042F008484840084848400848484008484840084848400848484008484
      8400BABABA00BABABA00BABABA007A7A7A000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400BABABA00E4CFC400FAFAEF00CF8F6F00BA642F00CF64
      2F00C4846F00EFEFEF00E4BAA400BA642F00BA642F00C47A4F00EFDACF00EFE4
      E4009A9A9A000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F005A84A4003A6F8F003A647A004F84
      9A003A6F8F003A647A006F9AAF00040404000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E9E9EFFA1A1A1FFE5E5E5FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5
      E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4B4FF6969
      69FF767676FFCCCCCCFFE6E6E6FF8A8ABAFF2828D2FF8A8ABAFF6C6C6CFFE0E0
      E0FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00DADADA00DADADA00DADADA00DADADA00BABABA00BABABA00CF9A
      2F009A042F004444440044444400444444004444440044444400444444004444
      44004444440044444400444444007A7A7A000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400AFA49A00FAFAFA00E4AF9A00BA642F00CF642F00CF64
      2F00CF643A00DA8F6400CF6F3A00CF642F00CF642F00BA642F00CF846400FAFA
      EF009A8F8F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400446F8F003A647A00447A
      8F003A647A001AC4CF006F9AAF00040404000F0F0F005A5A5A00000000008484
      8400DADADA00000000000000000000000000000000000000000000000000EEEE
      EEFF5B5B5BFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5
      E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FF8AC6B1FF28AFBEFF8AC6B1FFE5E5
      E5FF5C5C5CFF686868FF727272FFD7D7D7FFE6E6E6FFBABABAFF7F7F7FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00EFEFEF00DADADA00DADADA00DADADA00BABABA00BABABA00CF9A
      2F009A042F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BAAFAF00E4CFC400FAFAEF00CF7A4400CF642F00CF642F00CF64
      2F00CF7A4F00E4CFC400DA8F6F00CF642F00CF642F00CF642F00C4643A00EFDA
      CF00EFE4E4009A8F8F0000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A003A6F8F003A647A004F84
      A4004F849A0024A4AF006F9AAF00040404000F0F0F003A3A3A00645A5A00443A
      2F007A7A7A00AFAFAF00AFAFAF0000000000000000000000000000000000A0A0
      A0FFA5A5A5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF8383
      83FFC5C5C5FFE6E6E6FFE6E6E6FFE6E6E6FF28AFBEFF28AFBEFF28AFBEFFC9C9
      C9FF808080FFFCFCFCFFE0E0E0FF646464FF828282FF787878FFD0D0D0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00DADADA00DADADA00DADADA00BABABA00CF9A
      2F009A042F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFDACF00CF6F3A00CF643A00CF642F00CF64
      2F00C47A4F00EFE4E400EFC4AF00CF6F3A00CF642F00CF642F00CF642F00DAAF
      9A00EFEFEF009A8F8F0000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A004F849A00447A9A004F84
      A400446F8F003A647A006F9AAF00040404000F0F0F003A2F2400847A64006F64
      4F0044443A0044443A001A0F0F00000000000000000000000000F8F8F8FF5959
      59FFDEDEDEFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4
      B4FF696969FF787878FFCCCCCCFFE6E6E6FF8AC6B1FF28AFBEFF8AC6B1FF6C6C
      6CFFE0E0E0FF000000000000000000000000C4C4C4FFC4C4C4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DADADA009A042F009A042F009A04
      2F009A042F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFDACF00CF6F3A00CF6F3A00CF642F00CF64
      2F00CF642F00C48F7A00EFEFEF00EFC4AF00CF6F3A00CF642F00CF642F00E4AF
      8F00FAFAEF009A8F8F0000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F005A84A4003A6F8F003A647A004F84
      9A003A6F8F003A647A006F9AAF00040404000F0F0F006F644F00A48F7A009A8F
      6F009A8F6F008F8464002F2424000000000000000000000000009A9A9AFFA7A7
      A7FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFBBBBBBFF4D4D4DFF727272FFD7D7D7FFE6E6E6FFBABABAFF7F7F
      7FFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009A042F00FAFAFA00FAFA
      FA009A042F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFE4E400DA7A4400DA6F3A00CF642F00CF64
      2F00CF642F00CF642F00DAA48400FAFAFA00DA9A7A00CF643A00CF6F3A00EFBA
      AF00FAFAEF009A8F8F000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400446F8F003A647A004F84
      9A00446F8F003A647A006F9AAF00040404001A1A1A00241A1A00645A4F006F64
      4F0044443A005A5A5A005A5A5A000000000000000000000000007C7C7CFFACAC
      ACFFD5D5D5FFE6E6E6FFE5E5E5FFE6E6E6FFE6E6E6FFD4D496FFBDBD31FFD3D3
      95FFE6E6E6FFC7C7C7FF6A6A6AFFE0E0E0FF646464FF828282FF787878FFD0D0
      D0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009A042F00FAFAFA009A04
      2F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BAAFAF00E4CFC400FAFAFA00EFA47A00E47A4400CF846400E4CF
      C400DA9A7A00CF642F00CF845A00FAFAEF00E4BAA400DA6F3A00DA7A4400EFE4
      E400EFE4E4009A8F8F000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A4003A6F8F003A647A00446F
      8F003A647A00447A8F006F9AAF000F0F0F001A1A1A005A5A5A00CFCFCF004444
      3A00BABABA000000000000000000000000000000000000000000FCFCFCFF9898
      98FF626262FF959595FFE6E6E6FFE6E6E6FFE6E6E6FFBDBD31FFBDBD31FFBDBD
      31FFE6E6E6FF6B6B6BFFE0E0E0FF0000000000000000C4C4C4FFC4C4C4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00AFAFAF009A042F009A042F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400AFA49A00FAFAEF00EFE4E400FA9A6F00E48F6400E4DA
      DA00FAFAEF00EFBAAF00EFE4E400FAFAFA00E4A48400E4844F00EFBA9A00FAFA
      FA009A8F8F000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A003A647A003A647A00447A
      9A00447A9A00648FAF00647A8F001A1A1A00242424005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F4FFACACACFF565656FFA5A5A5FFD7D7D7FFD4D496FFBDBD31FFD4D4
      96FFBDBDBDFF828282FFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A042F009A042F009A04
      2F009A042F009A042F009A042F009A042F009A042F009A042F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4CFC400FAFAFA00FAEFC400FAC48F00E4AF
      8F00EFDACF00EFE4E400EFE4E400FAC4A400FA9A6400FABA9A00FAFAFA00EFE4
      E400AFAFAF000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A00447A9A005A84A400648F
      AF00647A8F00444444002F2F2F0024242400242424005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F7FFA0A0A0FF5C5C5CFF999999FFE6E6E6FFE6E6
      E6FF6F6F6FFFD3D3D3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400BABABA00E4DACF00FAFAFA00FAFAEF00FAEF
      C400FAE4AF00FADAA400FACFA400FACFA400EFDACF00FAFAFA00FAFAEF00AFAF
      A400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A2F2F005A84A4006F8F9A005A6F7A004444
      44002F2F2F002F2F2F002F2F2F002F2F2F002F2F2F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FFAAAAAAFF5A5A5AFF9E9E
      9EFF737373FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400BABABA00E4CFC400FAFAEF00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAEF00DAC4C400BAAFAF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400646464003A444F001A1A1A000F0F0F000F0F
      0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F2FFA8A8
      A8FFF2F2F2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400BAAFAF00DAC4
      BA00EFDACF00EFDACF00EFDACF00DAC4BA00BABABA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F009A8F6F009A8F
      6F00CFCFCF000404040000000000000000009A8F6F009A8F6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF004F8F4F00045A0400046F
      0400046F040004640400246F24007AAF7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F009A8F
      6F00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F0004040400040404009A8F
      6F009A8F6F00CFCFCF00040404009A8F6F0004040400040404009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF002F7A2F00046F0400049A04000FBA0F000FBA
      0F000FBA0F000FBA0F00049A0400048F0400246F240000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00644F4F005A5A5A008F8F8F00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F00040404000404
      04009A8F6F00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404009A9AFA0004049A000404
      04009A8F6F009A8F6F009A8F6F000404040004049A0004049A00040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF000F7A0F00049A0400049A0400048F0400049A0400049A
      040004CF040004CF040004CF040004CF0400049A040004640400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00644F4F006F8F9A00A48484005A5A5A008F8F8F00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000F4F24000F4F
      2400040404009A8F6F00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404009A9AFA000404FA000404
      9A00040404009A8F6F00040404002404C4000404FA0004049A00040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF000464040004640400247A2400649A64007AAF7A007AAF7A004F8F
      4F0004640400049A040004CF040004CF040004CF0400049A0400649A64000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF0064BAEF00448FDA006F8F9A00A48484005A5A5A008F8F8F00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF009A8F6F00040404001AA44F001AA4
      4F000F4F2400040404009A8F6F00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00040404009A9AFA000404
      FA0004049A00040404002404C4000404FA002404C400040404009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E4000F7A0F001A7A1A008FAF8F00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00247A2400049A040004E4040004E4040004E40400046F04000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400848FFA004FBAFA00448FDA006F8F9A00A48484005A5A5A008F8F
      8F00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404001AA44F001AA44F0004C4
      8F001AA44F000F4F2400040404009A8F6F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9A
      FA000404FA002404C4000404FA002404C400040404009A8F6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E4005A8F4400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400046F040004CF040004EF040004EF0400049A04000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400848FFA004FBAFA00448FDA006F8F9A00AF8484005A5A
      5A008F8F8F00E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4009A8F6F00040404001AA44F0004C48F000404
      040004C48F001AA44F000F4F2400040404009A8F6F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      04000404FA000404FA000404FA00040404009A8F6F009A8F6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400449A
      4400046F0400049A0400049A040004CF040004EF040004EF040004CF0400049A
      0400049A0400048F04000F7A0F00000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400848FFA005ABAFA00447ACF006F8F9A00A484
      84006F6F6F006F6F6F006F6F6F006F6F6F006F6F6F008F8F8F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404001AA44F0004C48F00040404000404
      04000404040004C48F001AA44F000F4F2400040404009A8F6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404002404
      C4000404FA009A9AFA000404FA0004049A00040404009A8F6F009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E4002F9A2F00049A04000FFA0F000FFA0F000FFA0F000FFA0F000FFA0F000FFA
      0F000FE40F000F9A0F0000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400848FFA004FBAFA00448FDA008F8F
      8F007A7A7A00C49A8400CFAF8F00E4BAAF00DAAFA4006F6F6F006F6F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404001AA44F001AA44F0004040400E4E4
      E400E4E4E4000404040004C48F001AA44F000F4F2400040404009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404002404C4000404
      FA002404C400040404009A9AFA000404FA0004049A00040404009A8F6F009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400046404002F7A2F00E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4002F9A2F001ABA1A004FFA4F004FFA4F004FFA4F004FFA4F003AEF
      3A000F9A0F000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400848FFA00848FFA00AF84
      8400FACFA400FAEFC400FAFACF00FAFADA00FAFADA00FAFADA00A48484006F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004040400E4E4E400E4E4
      E400E4E4E400E4E4E4000404040004C48F001AA44F000F4F2400040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9AFA000404FA002404
      C40004040400E4E4E400040404009A9AFA000404FA0004049A00040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000F7A0F00049A0400048F04002F7A2F00E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E4002FA42F002FBA2F008FFA8F008FFA8F006FEF6F001AA4
      1A00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400CFAF8F00FACF
      A400FAEFBA00FAFAC400FAFADA00FAFADA00FAFAFA00FAFAFA00FAEFC4007A64
      64008F8F8F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400040404000404040004C48F001AA44F000F4F24000404
      04009A8F6F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9AFA009A9AFA000404
      0400E4E4E400E4E4E40004040400040404009A9AFA009A9AFA00040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E4000F7A0F00049A040004CF040004CF0400048F04002F7A2F00E4E4E400E4E4
      E400E4E4E400E4E4E400040404002FAF2F0044C44400A4EFA4001AA41A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAEF
      C400FAE4AF00FAFAC400FAFADA00FAFAEF00FAFAFA00FAFAFA00FAFADA00C49A
      84006F6F6F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000404040004C48F001AA44F000F4F
      2400040404000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004040400E4E4
      E400E4E4E400E4E4E400040404000000000004040400040404009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A
      0F000FBA0F0004CF040004CF040004CF040004CF0400048F04002F7A2F00E4E4
      E400E4E4E400E4E4E40004040400000000002FBA3A000FAF1A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400CFAF8F00FAFA
      CF00FADAAF00FAFAC400FAFADA00FAFADA00FAFAEF00FAFADA00FAFADA00CFAF
      8F006F6F6F000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400040404000000000000000000000000000404040004C48F001AA4
      4F00040404000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A0F0004CF
      040004E4040004E4040004E4040004E4040004E4040004E40400049A04002F7A
      2F00E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAEF
      C400FAE4AF00FAEFBA00FAFACF00FAFADA00FAFADA00FAFADA00FAFACF00CFAF
      8F006F6F6F000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000040404000404
      0400000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A0F00048F0400048F
      0400048F040004CF040004EF040004EF04000FBA0F00048F0400048F0400046F
      04004F9A4F000404040000000000000000000000000000000000000000000000
      0000FAFAFA000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAFA
      CF00FAFADA00FAE4AF00FAEFBA00FAFAC400FAFAC400FAFAC400FAFAC400BA8F
      84008F8F8F00000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400049A040004EF040004EF040004E404000F7A0F00E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000002F9A
      2F0084BA8400FAFAFA000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAF9A00EFDA
      CF00FAFAFA00FAFADA00FAEFBA00FADAAF00FAE4AF00FAEFBA00FACFA4009A6F
      6F0000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400048F04001AFA1A001AFA1A001AFA1A000FBA0F002F9A2F00E4E4
      E40004040400000000000000000000000000FAFAFA009AC49A001A8F1A000F9A
      0F0000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAF
      A400FAEFC400FAFADA00FAFACF00FAEFBA00FAEFC400FACFA400BA8F8F000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E40064BA64002FBA2F005AFA5A005AFA5A005AFA5A003ACF3A00049A
      04004FAF4F007AC47A007AC47A005ABA5A001AA41A00049A0400048F04000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400DAAFA400DAAFA400CFAF8F00E4BAA400DAAF9A008F8F8F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E4000F9A0F005ADA5A009AFA9A009AFA9A009AFA9A009AFA
      9A007AE47A005ACF5A004FCF4F006FDA6F004FCF4F001AA41A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFEFCF0024AF240044C44400BAEFBA00CFEFCF00CFEF
      CF00CFEFCF00CFEFCF008FE48F002FBA2F002FAF2F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4007ACF840024BA2F0024BA2F003AC4
      4F003AC44F000FAF1A004FC45A009ADA9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A009A9A9A009A9A9A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9A9A009A9A9A008F8F8F008F8F8F008F8F8F009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A7A007A7A7A008F8F
      8F009A9A9A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A0000000000CECECE00CECECE00000000000000000000000000000000000000
      00000000000000000000202020006F6F6F00AEAEAF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00848484008484840004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9A9A009A9A
      9A008F8F8F008F8F8F007A7A7A007A7A7A000404040004040400040404007A7A
      7A008F8F8F009A9A9A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A
      4A0000000000CECECE00CECECE00CECECE000000000000000000000000000000
      00007777770044444400AEAEAE00787878008D8D8D00A2A2A200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400848484009A9A
      9A00AFAFAF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A009A9A9A008F8F8F008F8F
      8F007A7A7A007A7A7A0004040400040404009A9A9A00CFCFCF00BABABA000404
      04007A7A7A008F8F8F009A9A9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
      0000CECECE00CECECE00CECECE00CECECE00CECECE0000000000000000004141
      41006B6B6B00C3C3C300ABABAB00B0B0B000636363009F9E9F00A0A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00AFAFAF00848484000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A
      7A0004040400040404009A9A9A00CFCFCF00DADADA00DADADA00CFCFCF00BABA
      BA00040404007A7A7A008F8F8F009A9A9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
      0000CECECE00CECECE00CECECE00CECECE00CECECE00CECECE003B3B3B00A0A0
      A000C6C6C60098989800999999009C9C9C00A5A5A5006A6A6A009E9E9E000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004F4F4F004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00AFAFAF008484840084848400CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A7A00040404000404
      04009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADADA00DADADA00BABA
      BA00BABABA00040404007A7A7A008F8F8F009A9A9A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000CECE
      CE00CECECE00CECECE00CECECE00CECECE006262620060606000B1B1B100B4B4
      B4008F8F8F0094949400939393008F8F8F00A6A6A60086868600797979009797
      9700000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00C4C4C400AFAF
      AF00848484008484840084848400CFCFCF00E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009A9A
      9A008F8F8F008F8F8F007A7A7A007A7A7A0004040400040404009A9A9A00CFCF
      CF00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00CFCF
      CF00BABABA00BABABA00040404007A7A7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000CECE
      CE00CECECE00CECECE00CECECE004747470084848400BDBDBD00A3A3A3008D8D
      8D00A2A2A200A8A8A800A7A7A700A2A2A2008B8B8B00AAAAAA006C6C6C008A8A
      8A00949494000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F00040404008484840084848400848484008F8F
      8F008F8F8F00AFAFAF00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007A7A7A007A7A7A0004040400040404009A9A9A00CFCFCF00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00BABABA00BABABA00BABABA00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A004A4A4A004A4A4A0000000000CECECE00CECE
      CE00CECECE00CECECE0047474700ADADAD00BABABA009A9A9A008E8E8E008484
      8400B9B9B900ADADAD00ADADAD00ADADAD00ADADAD0095959500A9A9A9006464
      64008D8D8D009F9F9F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F0004040400AFAFAF00AFAFAF00C4C4C400CFCF
      CF00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400040404009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00CFCFCF00BABABA00BABABA007A7A7A000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0000000000CECECE00CECE
      CE00CECECE00CECECE0057575700AEAEAE009C9C9C0094949400A7A7A7009696
      96008B8B8B00ACACAC00ADADAD00B6B6B6009A9A9A0072727200A1A1A1009393
      9300696969008B8B8B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00BABABA00BABABA00BABABA000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600CECECE00CECE
      CE00CECECE00CECECE00707070009494940095959500A0A0A000ACACAC00ABAB
      AB009B9B9B00ACACAC00BDBDBD008C8C8C00592424007011110096969600A4A4
      A400767676007878780086868600000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404009A9A
      9A00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00CFCFCF00BABABA00BABABA007A7A7A0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600CECECE00CECECE00CECECE005757570090909000A0A0A000ADADAD00ADAD
      AD00B4B4B400ACACAC006F5555007C090900BE040400BB13130076585800A6A6
      A600AFAFAF006060600075747500000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00BABABA00BABABA00BABABA0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600CECECE00CECECE006969690093939300ACACAC00BCBC
      BC008D8D8D0077393A00AD131300C8090900C3303000E5A7A700DEDEDE007F80
      7F00AAAAAA009B9B9B005C5C5C00000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00CFCFCF00BABABA00BABABA007A7A7A00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6007E7E7E00A5A5A5005B5B
      5B008C252600DB1D1E00D50F1000D0555500F3D7D700FDFDFE00F4F4F400A5A5
      A500919191005C5C5C0000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BABABA008484840084848400BABABA00E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00BABABA00BABABA00BABABA00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60067676700888888006B51
      5100E21F2000E5373700E9A2A200FEFEFE00F9F9F900EBEBEB00DADADA00A8A7
      A800535353000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400BABABA004F4F4F000404040004040400040404000404040004040400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00CFCFCF00BABABA00BABABA007A7A7A000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6005B5B5B008D8D
      8D0076353500F6CBCB00FDFDFD00F4F5F400E5E5E500D4D4D4007B7B7B006D6D
      6D00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400BABA
      BA004F4F4F004F4F4F00040404002F2F2F00BABABA00BABABA007A7A7A000404
      0400E4E4E4000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00BABABA00BABABA00BABABA000404
      0400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6006F6F
      6F006F6F6F00A8A8A900F0F0F000DFDFDF00CECECE0049494900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400C4C4C4006F6F
      6F004F4F4F008484840004040400E4E4E400E4E4E400BABABA00049A9A00049A
      9A00040404000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4
      E400FAFAFA00FAFAFA00DADADA00C4C4C400FAFAFA00BABABA00BABABA007A7A
      7A00040404000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6007B7B
      7B008D8D8D005E5E5E00BCBCBC00989898004444440000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400848484006F6F
      6F0084848400BABABA0004040400EFEFEF00E4E4E400049A9A0004BABA0004BA
      BA0004BABA000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFA
      FA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400FAFAFA00BABABA00BABA
      BA00040404000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E6005D5D5D0097979700313030007D7D7D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4006F6F6F006F6F
      6F00BABABA00E4E4E40004040400EFEFEF0044FAFA0004DADA0004DADA00049A
      9A0004BABA0004BABA0004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFAFA00DADADA00C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400FAFAFA00BABA
      BA007A7A7A000404040000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E6002A2A2A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400646464008484
      8400E4E4E400E4E4E400E4E4E4000404040004DADA00AFFAFA0004DADA0004DA
      DA00046F6F00049A9A00049A9A00040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00DADADA00C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400FAFA
      FA00BABABA000404040000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E40064646400BABA
      BA00E4E4E400E4E4E400E4E4E400E4E4E4000404040004DADA00AFFAFA0004DA
      DA0004BABA00046F6F00044F2F00044F2F000404040000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4
      E400FAFAFA00FAFAFA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADA
      DA00FAFAFA000404040000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4007A7A7A00BABA
      BA00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004DADA0004DA
      DA00046F6F00044F2F00049A6400046F4F00046F4F0004040400000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFA
      FA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFA
      FA0004040400000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A9A007A7A
      7A00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004BA
      BA00044F2F0004BA7A00049A6400049A640004DA8F0004DA8F00040404000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFAFA00C4C4C4009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFAFA00040404000404
      040000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A
      9A00BABABA00E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000404
      0400044F2F0004BA7A0004BA7A0004DA8F000404FA0004049A0004049A000404
      040000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400DADADA00FAFAFA00FAFAFA000404040004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400C4C4C400C4C4C400E4E4E400E4E4E400E4E4E40004040400000000000000
      00000404040004BA7A008FFACF002424FA000404FA000404FA0004049A006F6F
      FA0004040400000000000000000000000000000000000000000004040400E4E4
      E400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADA
      DA00FAFAFA00FAFAFA0004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      000000000000040404008FFACF006F6FFA002424FA006F6FFA006F6FFA004444
      FA004444FA00040404000000000000000000000000000000000004040400FAFA
      FA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFA
      FA00040404000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      00000000000000000000040404004444FA006F6FFA008F8FFA002424FA002424
      FA002424FA000404040000000000000000000000000000000000000000000404
      0400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFAFA00040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      0000000000000000000000000000040404008F8FFA006F6FFA004444FA002424
      FA000404FA000404040000000000000000000000000000000000000000000000
      00000404040004040400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A
      9A00C4C4C400DADADA00FAFAFA00FAFAFA000404040004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000040404006F6FFA004444FA000404
      FA00040404000000000000000000000000000000000000000000000000000000
      000000000000000000000404040004040400FAFAFA00FAFAFA00C4C4C4009A9A
      9A00FAFAFA00FAFAFA0004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040400040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000404040004040400FAFAFA00FAFA
      FA00040404000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000A00000000100010000000000000A00000000000000000000
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
      00000000000000000000000000000000FFFFF9FFFFFFFFFFFFFFFC7F00000000
      FFFFC0FFFFFFFFFFFFF9F07F00000000FFFF007FFFFFFFFFFFC0E07F00000000
      FFFC003FFFFFFFFFFF00001F00000000FFE0001FFFFFFFFFFC00001F00000000
      FF80000FFFFFFFFFF000001F00000000FE000007FFFFFFFFE000001F00000000
      F0000003FFFFFFFFF000001F00000000C0000003FFFFFFFFFC00000300000000
      80000007FF3FFFFFFF000000000000000000000FFF1FFFFFFF00000000000000
      8000000FFF8FFFFFFF00000000000000F000000FFFC40FFFFE00001F00000000
      E000001FFFE007FFFE00001F00000000E000001FFFF003FFFC00001F00000000
      C000003FFFE001FFFC00001F00000000C000003FFFE001FFF800001F00000000
      8000007FFFE001FFF800001F000000008000007FFFE001FFF00001FF00000000
      0000007FFFE001FFF00001FF000000000000003FFFE001FFE00000FF00000000
      0000003FFFF003FFE000007F000000000000003FFFF807FFC000003F00000000
      C000001FFFFC0FFFC000001F00000000F008001FFFFFFFFFE000000F00000000
      FC18001FFFFFFFFFF800000700000000FF18001FFFFFFFFFFE00000700000000
      FFF8007FFFFFFFFFFF80001F00000000FFF801FFFFFFFFFFFFE0207F00000000
      FFFC07FFFFFFFFFFFFF831FF00000000FFFF1FFFFFFFFFFFFFFE7FFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFF9FFFFFFF9FFFFFFFFFE7F800001FFFFC0FFFFFFC0FFFFFFFFF03F
      000000FFFF007FFFFF007FFFFFFFC01F0000007FFC003FFFFC003FFFFFFF000F
      0000003FF0001FFFF0001FFFFFF800078000000FE0000FFFE0000FFFFFE00003
      C0000007F00007FFF00007FFFF800001E0000003FC0003FFFC0003FFFC000000
      F0000003FF0001FFFF0001FFF0000000F8000003FF0000FFFF0000FFE0000001
      FC000003FF00007FFF00007FC0000003FE000003FE00003FFE00003FE0000003
      FE000001FE00003FFE00003FFC000003FE000001FC00003FFC00003FF8000007
      FF000000FC00000FFC00003FF8000007FF800000F800000FF800003FF000000F
      FF800000F8000007F800003FF000000FFF800000F0000007F0000027E000001F
      FF8007FFF0000003F0000001E000001FFF8007FFE0000003E0000001C000073F
      FF8007FFE0000003E0000001C0000FFFFF8007FFC0000003C0000001C0000FFF
      FF800FFFC0000003C0000007C0019FFFFF801FFFE0000007E000003FF001FFFF
      FF803FFFF8000007F800003FFC03FFFFFFFFFFFFFE00000FFE00003FFF07FFFF
      FFFFFFFFFF80001FFF80003FFFC7FFFFFFFFFFFFFFE0007FFFE03FFFFFFFFFFF
      FFFFFFFFFFF83FFFFFF83FFFFFFFFFFFFFFFFFFFFFFE7FFFFFFE7FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFFF9FFFFFFF9FFFFFFF9FFFFFFC0FFFFFFC0FFFFFFC0FFFFFFC0FFFF
      FF007FFFFF007FFFFF007FFFFF007FFFFC003FFFFC003FFFFC003FFFFC003FFF
      F0001FFFF0001FFFF0001FFFF0001FFFE0000FFFE0000FFFE0000FFFE0000FFF
      F00007FFF00007FFF00007FFF00007FFFC0003FFFC00033FFC0000FFFC0003FF
      FF0001FFFF00001FFF00007FFF0001FFFF0000FFFF00000FFF00003FFF0000FF
      FF00007FFF00000FFF00001FFF00007FFE00003FFE00001FFE00001FFE00003F
      FE00003FFE00003FFE00001FFE00003FFC00007FFC00003FFC000001FC00003F
      FC00003FFC00001FFC000003FC00001FF800001FF800000FF8000007F800000F
      F800000FF800000FF800000FF8000007F0000007F000000FF000001FF0000007
      F0000107F000011FF000013FF0000007E0000387E00003FFE00003FFE0000007
      E00003CFE00003FFE00003F7E0000007C00007FFC00007FFC00007E3C000000F
      C00007FFC00007FFC000070FC000001FE0000FFFE0000FFFE000001FE000003F
      F8000FFFF8000FFFF800003FF8000FFFFE001FFFFE001FFFFE00007FFE001FFF
      FF801FFFFF801FFFFF8000FFFF801FFFFFE03FFFFFE03FFFFFE000FFFFE03FFF
      FFF83FFFFFF83FFFFFF83FFFFFF83FFFFFFE7FFFFFFE7FFFFFFE7FFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFF
      FFF9FFFFFFE7FFFFFFFC0FFFFFF9FFFFFFC0FFFFFF03FFFFFFF007FFFFC0FC7F
      FF007FFFFC01FFFFFFC003FFFF00703FFC003FFFF000FFFFFF0001FFFC00201F
      F0001FFFC0007FFFFC0000FFF000001FE0000FFF80003FFFF000007FE000000F
      F00007FFC0001FFFE00000FFF0000007FC0003FFF0000FFFF00000FFFC000003
      FF0001FFFC0007FFF000007FFF000003FF0000FFFC0003FFE000007FFF000001
      FF00007FFC0001FFC000003FFF000001FE00003FF80000FFC000003FFE000001
      FE00003FF80000FFC000001FFE000003FC00007FF00001FFC000001FFC000007
      FC00007FF00001FFC000000FFC00000FF80000FFE00003FFC000000FF800003F
      F80000FFE00003FFC0000007F800007FF00001FFC00003FFC0000007F00000FF
      F00001FFC00001FFC0000003F00001FFE00003FF800000FFC0000003E00003FF
      E00003FF8000007FC0000003E00003FFC00007FF0000003FC0000007C00007FF
      C00007FF0000001FC000000FC00007FFE0000FFF8000200FC000003FE0000FFF
      F8000FFFE0003007C00000FFF8000FFFFE001FFFF8007803C00003FFFE001FFF
      FF801FFFFE007C03E0000FFFFF801FFFFFE03FFFFF80FE03F0003FFFFFE03FFF
      FFF83FFFFFE0FF07FC00FFFFFFF83FFFFFFE7FFFFFF9FF8FFF03FFFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited padr_acciones: TActionList [22]
    inherited padr_acti_imprimir: TAction
      Enabled = True
      Visible = True
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = True
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = True
    end
    inherited padr_acti_nuevo: TDataSetInsert
      DataSource = nil
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = True
      Visible = True
    end
  end
  inherited data_ventana: TDataSource [23]
    DataSet = myTabla_Ventana
  end
  inherited Imagenes_Botones_Pequenos: TImageList [24]
  end
  inherited padr_pict_container: TPictureContainer
    Left = 546
    Top = 149
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_referencia'
        DataType = ftInteger
      end
      item
        Name = 'cons_refe_variacion'
        DataType = ftInteger
      end
      item
        Name = 'cons_refe_material'
        DataType = ftInteger
      end>
    BeforePost = myTabla_VentanaBeforePost
    AfterPost = myTabla_VentanaAfterPost
    Left = 218
    Top = 8
    object myTabla_Ventanacons_referencia: TIntegerField
      FieldName = 'cons_referencia'
      OnChange = myTabla_Ventanacons_referenciaChange
    end
    object myTabla_Ventanacons_refe_variacion: TIntegerField
      FieldName = 'cons_refe_variacion'
      OnChange = onChange_Variacion
    end
    object myTabla_Ventanacons_refe_material: TIntegerField
      FieldName = 'cons_refe_material'
    end
  end
  object quer_refe_materiales: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select cons_refe_material, cons_mate_referencia,'
      'consumo, tall_promedio, observaciones'
      'from pcp_refe_materiales'
      'where cons_refe_variacion = :cons_refe_variacion'
      'order by cons_refe_material')
    Left = 8
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptUnknown
      end>
    object quer_refe_materialesCONS_REFE_MATERIAL: TIntegerField
      FieldName = 'CONS_REFE_MATERIAL'
    end
    object quer_refe_materialesCONS_MATE_REFERENCIA: TIntegerField
      FieldName = 'CONS_MATE_REFERENCIA'
    end
    object quer_refe_materialesCONSUMO: TFloatField
      FieldName = 'CONSUMO'
    end
    object quer_refe_materialesTALL_PROMEDIO: TStringField
      FieldName = 'TALL_PROMEDIO'
      Size = 12
    end
    object quer_refe_materialesOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object quer_refe_materialesCODI_MATE_REFERENCIA: TStringField
      FieldKind = fkLookup
      FieldName = 'CODI_MATE_REFERENCIA'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'CODI_MATE_REFERENCIA'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 12
      Lookup = True
    end
    object quer_refe_materialesNOMB_MATE_REFERENCIA: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMB_MATE_REFERENCIA'
      LookupDataSet = quer_mate_referencias
      LookupKeyFields = 'CONS_MATE_REFERENCIA'
      LookupResultField = 'NOMB_MATE_REFERENCIA'
      KeyFields = 'CONS_MATE_REFERENCIA'
      Size = 60
      Lookup = True
    end
  end
  object data_refe_materiales: TDataSource
    DataSet = quer_refe_materiales
    Left = 40
    Top = 136
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
      Caption = 'Buscar'
      ImageIndex = 9
      OnExecute = acti_buscarExecute
    end
    object acti_ver_titulos: TAction
      Category = 'Grid'
      Caption = 'Ver sólamente los títulos'
      Enabled = False
      Hint = 'Ver sólamente los títulos'
    end
    object acti_fila_titulo: TAction
      Category = 'Grid'
      Caption = 'Fila como un título'
    end
    object acti_fila_operacion: TAction
      Category = 'Grid'
      Caption = 'Fila como operación'
    end
    object acti_ver_analisis: TAction
      Category = 'Grid'
      Caption = 'Ver análisis de la operación'
    end
    object acti_undo: TAction
      Caption = 'Undo'
    end
    object acti_volv_llamar: TAction
      Category = 'Edit'
      Caption = 'Volver a llamar las operaciones'
      Hint = 'Volver a llamar las operaciones'
      OnExecute = acti_volv_llamarExecute
    end
    object acti_impr_listado: TAction
      Category = 'Imprimir'
      Caption = 'Listado de operaciones'
      OnExecute = acti_impr_listadoExecute
    end
    object acti_impr_resumen: TAction
      Category = 'Imprimir'
      Caption = 'Resúmen por procesos'
    end
    object acti_resu_procesos: TAction
      Caption = 'Detalle por procesos de corte'
      ImageIndex = 34
      OnExecute = acti_resu_procesosExecute
    end
    object acti_expo_XLS: TAction
      Category = 'Exportar'
      ImageIndex = 17
      OnExecute = acti_expo_XLSExecute
    end
    object acti_expo_HTML: TAction
      Category = 'Exportar'
      ImageIndex = 18
      OnExecute = acti_expo_HTMLExecute
    end
    object acti_expo_TXT: TAction
      Category = 'Exportar'
      ImageIndex = 19
      OnExecute = acti_expo_TXTExecute
    end
  end
  object quer_mate_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_mate_referencia, codi_mate_referencia, '
      'nomb_mate_referencia'
      'from pcp_mate_referencias'
      'order by cons_mate_referencia')
    Left = 73
    Top = 135
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
    Left = 599
    Top = 33
  end
  object quer_procesos: TQuery
    AfterOpen = quer_procesosAfterOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_proceso, codi_proceso, nomb_proceso'
      'from pcp_procesos'
      'order by cons_proceso')
    Left = 641
    Top = 3
  end
  object quer_cort_unid_medida: TQuery
    AfterOpen = quer_cort_unid_medidaAfterOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_cort_unid_medida, nomb_cort_unid_medida'
      'from sis_cort_unid_medida'
      'order by cons_cort_unid_medida')
    Left = 674
    Top = 2
  end
  object quer_eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Delete from PCP_REFE_LIST_OPER_CORTE'
      'Where cons_refe_variacion = :cons_refe_variacion'
      'And cons_refe_material = :cons_refe_material')
    Left = 562
    Top = 233
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_refe_material'
        ParamType = ptInput
      end>
  end
  object quer_oper_llamar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select secu_operacion,  cons_proceso,  codi_operacion,'
      'nomb_operacion,  cons_cort_unid_medida, tiem_operacion'
      'from pcp_refe_list_oper_corte'
      'where cons_refe_variacion = :cons_refe_variacion'
      'and cons_refe_material = :cons_refe_material'
      'order by secu_operacion')
    Left = 594
    Top = 233
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_refe_material'
        ParamType = ptInput
      end>
  end
  object quer_oper_guardar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert into PCP_REFE_LIST_OPER_CORTE'
      '(cons_refe_variacion, cons_refe_material, '
      'secu_operacion, cons_proceso, codi_operacion,'
      'nomb_operacion, cons_cort_unid_medida, tiem_operacion)'
      'Values'
      '(:cons_refe_variacion, :cons_refe_material, '
      ':secu_operacion, :cons_proceso, :codi_operacion,'
      ':nomb_operacion, :cons_cort_unid_medida, :tiem_operacion)'
      ' '
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
        Name = 'cons_refe_material'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'secu_operacion'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_proceso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codi_operacion'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomb_operacion'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_cort_unid_medida'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'tiem_operacion'
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
    Top = 269
    object tabl_historialCONS_ANOTACION: TIntegerField
      FieldName = 'CONS_ANOTACION'
      Required = True
    end
    object tabl_historialCONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Required = True
    end
    object tabl_historialTEXT_ANOTACION: TStringField
      FieldName = 'TEXT_ANOTACION'
      Required = True
      Size = 240
    end
    object tabl_historialFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_historialUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object tabl_repo_list_operaciones: TTable
    DatabaseName = 'PCPLocal'
    FieldDefs = <
      item
        Name = 'numero'
        DataType = ftInteger
      end
      item
        Name = 'proceso'
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
        Name = 'unid_medida'
        DataType = ftString
        Size = 20
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
    TableName = 'tmp_repo_list_oper_corte'
    Left = 552
    Top = 338
  end
  object quer_refe_importar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select *'
      'from VIS_GLO_REFE_MATERIALES'
      'where most_metodos = 1'
      
        'Order by codi_Referencia, nomb_refe_tipo_variacion, nomb_mate_re' +
        'ferencia')
    Left = 882
    Top = 385
    object quer_refe_importarCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.CONS_REFERENCIA'
    end
    object quer_refe_importarCODI_REFERENCIA: TStringField
      DisplayLabel = 'Cód. referencia'
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.CODI_REFERENCIA'
      Size = 12
    end
    object quer_refe_importarMOLDE: TStringField
      DisplayLabel = 'Molde'
      FieldName = 'MOLDE'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.MOLDE'
      Size = 12
    end
    object quer_refe_importarCODI_INTE_REFERENCIA: TStringField
      DisplayLabel = 'C.I.R.'
      FieldName = 'CODI_INTE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.CODI_INTE_REFERENCIA'
      Size = 12
    end
    object quer_refe_importarNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Nombre referencia'
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.NOMB_REFERENCIA'
      Size = 60
    end
    object quer_refe_importarCONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.CONS_REFE_VARIACION'
    end
    object quer_refe_importarCODI_REFE_TIPO_VARIACION: TStringField
      FieldName = 'CODI_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.CODI_REFE_TIPO_VARIACION'
      Size = 12
    end
    object quer_refe_importarNOMB_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Variación'
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.NOMB_REFE_TIPO_VARIACION'
      Size = 60
    end
    object quer_refe_importarCONS_REFE_MATERIAL: TIntegerField
      FieldName = 'CONS_REFE_MATERIAL'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.CONS_REFE_MATERIAL'
    end
    object quer_refe_importarCONS_MATE_REFERENCIA: TIntegerField
      FieldName = 'CONS_MATE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.CONS_MATE_REFERENCIA'
    end
    object quer_refe_importarCODI_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Cód. material'
      FieldName = 'CODI_MATE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.CODI_MATE_REFERENCIA'
      Size = 12
    end
    object quer_refe_importarNOMB_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Material'
      FieldName = 'NOMB_MATE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.NOMB_MATE_REFERENCIA'
      Size = 60
    end
    object quer_refe_importarNOMB_REFE_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'NOMB_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.NOMB_REFE_ESTADO'
      Size = 60
    end
    object quer_refe_importarEDIT_MAESTRO: TIntegerField
      FieldName = 'EDIT_MAESTRO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.EDIT_MAESTRO'
    end
    object quer_refe_importarMOST_METODOS: TIntegerField
      FieldName = 'MOST_METODOS'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.MOST_METODOS'
    end
    object quer_refe_importarMOST_ORDE_TRABAJO: TIntegerField
      FieldName = 'MOST_ORDE_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.MOST_ORDE_TRABAJO'
    end
    object quer_refe_importarMOST_INVE_MATERIALES: TIntegerField
      FieldName = 'MOST_INVE_MATERIALES'
      Origin = 'DATA_BASE_PCP.VIS_GLO_REFE_MATERIALES.MOST_INVE_MATERIALES'
    end
  end
  object data_refe_importar: TDataSource
    DataSet = quer_refe_importar
    Left = 914
    Top = 385
  end
end

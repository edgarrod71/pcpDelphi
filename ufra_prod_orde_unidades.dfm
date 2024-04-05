object ffra_prod_orde_unidades: Tffra_prod_orde_unidades
  Left = 0
  Top = 0
  Width = 480
  Height = 314
  TabOrder = 0
  object fram_dock: TTBXDock
    Left = 0
    Top = 0
    Width = 480
    Height = 26
    object barr_botones: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      DockMode = dmCannotFloatOrChangeDocks
      DragHandleStyle = dhNone
      FullSize = True
      Images = _fMDI.imagenesPCP
      TabOrder = 0
      object TBXItem3: TTBXItem
        Action = fram_unid_acti_guardar
        DisplayMode = nbdmImageAndText
        ImageIndex = 5
        Images = _fMDI.imagenesPCP
      end
      object TBXItem2: TTBXItem
        Action = fram_unid_acti_cancelar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object TBXItem1: TTBXItem
        Action = fram_unid_acti_actualizar
        DisplayMode = nbdmImageAndText
        ImageIndex = 4
        Images = _fMDI.imagenesPCP
      end
    end
  end
  object grid: TSCLColumnGrid
    Left = 0
    Top = 26
    Width = 480
    Height = 288
    Cursor = crDefault
    Align = alClient
    ColCount = 5
    Ctl3D = False
    DefaultColWidth = 40
    DefaultRowHeight = 19
    DefaultDrawing = False
    FixedColor = 15582631
    FixedCols = 1
    RowCount = 5
    FixedRows = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLineWidth = 1
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnKeyDown = gridKeyDown
    GridLineColor = clSilver
    ActiveCellShow = True
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ActiveCellColor = clGray
    Bands.PrimaryColor = clInfoBk
    Bands.PrimaryLength = 1
    Bands.SecondaryColor = clWindow
    Bands.SecondaryLength = 1
    Bands.Print = False
    AutoNumAlign = False
    AutoSize = False
    VAlignment = vtaTop
    EnhTextSize = False
    EnhRowColMove = False
    SizeWithForm = False
    Multilinecells = False
    OnGetCellColor = gridGetCellColor
    OnGetAlignment = gridGetAlignment
    OnGridHint = gridGridHint
    OnCanEditCell = gridCanEditCell
    DragDropSettings.OleAcceptFiles = True
    DragDropSettings.OleAcceptText = True
    SortSettings.AutoColumnMerge = False
    SortSettings.Column = 0
    SortSettings.Show = False
    SortSettings.IndexShow = False
    SortSettings.Full = True
    SortSettings.SingleColumn = False
    SortSettings.IgnoreBlanks = False
    SortSettings.BlankPos = blFirst
    SortSettings.AutoFormat = True
    SortSettings.Direction = sdAscending
    SortSettings.FixedCols = False
    SortSettings.NormalCellsOnly = False
    SortSettings.Row = 0
    FloatingFooter.Color = clBtnFace
    FloatingFooter.Column = 0
    FloatingFooter.FooterStyle = fsFixedLastRow
    FloatingFooter.Visible = False
    ControlLook.Color = clBlack
    ControlLook.CheckSize = 15
    ControlLook.RadioSize = 10
    ControlLook.ControlStyle = csClassic
    ControlLook.FlatButton = False
    EnableBlink = False
    EnableHTML = True
    EnableWheel = True
    Flat = True
    HintColor = clInfoBk
    SelectionColor = clWhite
    SelectionTextColor = clBlack
    SelectionRectangle = False
    SelectionResizer = False
    SelectionRTFKeep = False
    HintShowCells = True
    HintShowLargeText = False
    HintShowSizing = False
    PrintSettings.FooterSize = 0
    PrintSettings.HeaderSize = 0
    PrintSettings.Time = ppNone
    PrintSettings.Date = ppNone
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.PageNr = ppNone
    PrintSettings.Title = ppNone
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'MS Sans Serif'
    PrintSettings.Font.Style = []
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
    PrintSettings.BorderStyle = psSolid
    PrintSettings.Centered = False
    PrintSettings.RepeatFixedRows = False
    PrintSettings.RepeatFixedCols = False
    PrintSettings.LeftSize = 0
    PrintSettings.RightSize = 0
    PrintSettings.ColumnSpacing = 0
    PrintSettings.RowSpacing = 0
    PrintSettings.TitleSpacing = 0
    PrintSettings.Orientation = poPortrait
    PrintSettings.PageNumberOffset = 0
    PrintSettings.MaxPagesOffset = 0
    PrintSettings.FixedWidth = 0
    PrintSettings.FixedHeight = 0
    PrintSettings.UseFixedHeight = False
    PrintSettings.UseFixedWidth = False
    PrintSettings.FitToPage = fpNever
    PrintSettings.PageNumSep = '/'
    PrintSettings.NoAutoSize = False
    PrintSettings.NoAutoSizeRow = False
    PrintSettings.PrintGraphics = False
    HTMLSettings.Width = 100
    HTMLSettings.XHTML = False
    Navigation.AdvanceDirection = adLeftRight
    Navigation.AllowClipboardRowGrow = True
    Navigation.AllowClipboardColGrow = True
    Navigation.InsertPosition = pInsertBefore
    Navigation.CopyHTMLTagsToClipboard = True
    Navigation.HomeEndKey = heFirstLastColumn
    ColumnSize.Location = clRegistry
    CellNode.Color = clSilver
    CellNode.NodeColor = clBlack
    CellNode.ShowTree = False
    MaxEditLength = 0
    IntelliPan = ipVertical
    URLColor = clBlue
    URLShow = False
    URLFull = False
    URLEdit = False
    ScrollType = ssNormal
    ScrollColor = clNone
    ScrollWidth = 17
    ScrollSynch = False
    ScrollProportional = False
    ScrollHints = shNone
    OemConvert = False
    FixedFooters = 0
    FixedRightCols = 0
    FixedColWidth = 100
    FixedRowHeight = 19
    FixedRowAlways = True
    FixedColAlways = True
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    FixedAsButtons = False
    FloatFormat = '%.2f'
    IntegralHeight = False
    WordWrap = False
    ColumnHeaders.Strings = (
      'Color'
      'No. color'
      ''
      'Unidades')
    Lookup = False
    LookupCaseSensitive = False
    LookupHistory = False
    ShowSelection = False
    BackGround.Top = 0
    BackGround.Left = 0
    BackGround.Display = bdTile
    BackGround.Cells = bcNormal
    Filter = <>
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
        EditLength = 0
        Editor = edNormal
        FilterCaseSensitive = False
        Fixed = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Color'
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
        EditLength = 0
        Editor = edNormal
        FilterCaseSensitive = False
        Fixed = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'No. color'
        MinSize = 0
        MaxSize = 0
        Name = 'NUME_COLOR'
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
        Alignment = taLeftJustify
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        ColumnPopupType = cpFixedCellsRClick
        EditLength = 0
        Editor = edNormal
        FilterCaseSensitive = False
        Fixed = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
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
        Tag = -1
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
        EditLength = 0
        Editor = edNormal
        FilterCaseSensitive = False
        Fixed = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Unidades'
        MinSize = 0
        MaxSize = 0
        Name = 'UNIDADES'
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
        Tag = -1
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
        EditLength = 0
        Editor = edNormal
        FilterCaseSensitive = False
        Fixed = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
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
        Width = 40
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
      60
      0
      0
      40)
    RowHeights = (
      19
      19
      19
      19
      19)
  end
  object fram_acciones: TActionList
    Left = 264
    Top = 2
    object fram_unid_acti_cancelar: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      Hint = 'Cancelar'
      ImageIndex = 8
      ShortCut = 16449
      DataSource = fram_data_source
    end
    object fram_unid_acti_guardar: TDataSetPost
      Category = 'Dataset'
      Caption = 'Guardar'
      Hint = 'Guardar'
      ImageIndex = 7
      ShortCut = 16455
      OnExecute = fram_unid_acti_guardarExecute
      DataSource = fram_data_source
    end
    object fram_unid_acti_actualizar: TDataSetRefresh
      Category = 'Dataset'
      Caption = 'Actualizar'
      Hint = 'Actualizar'
      ImageIndex = 9
      ShortCut = 116
      DataSource = fram_data_source
    end
  end
  object quer_cons_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select  cons_Refe_color, secu_color,'
      
        'nomb_color, nume_color, cons_grup_tall_detalle, talla, secu_tall' +
        'a,'
      ' sum(unidades) as unidades'
      'from vis_pcp_pedi_unid_planeadas'
      'where cons_prod_orden = :cons_prod_orden'
      'group by  cons_refe_color, secu_color, nomb_color,'
      'nume_color, cons_grup_tall_detalle, talla, secu_talla')
    Left = 18
    Top = 36
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_orden'
        ParamType = ptInput
      end>
  end
  object quer_inse_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert into PCP_PROD_UNIDADES'
      '(cons_prod_orden,  etapa, nume_lote, cons_refe_color, '
      'cons_grup_tall_detalle, unidades)'
      'Values'
      '(:cons_prod_orden, :etapa, :nume_lote, :cons_refe_color,'
      ':cons_grup_tall_detalle, :unidades)')
    Left = 50
    Top = 68
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_orden'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'etapa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'nume_lote'
        ParamType = ptInput
        Value = '1'
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
        Name = 'unidades'
        ParamType = ptInput
      end>
  end
  object quer_elim_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Delete from PCP_PROD_UNIDADES'
      'Where cons_prod_orden = :cons_prod_orden'
      'and etapa = :etapa')
    Left = 18
    Top = 68
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_orden'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'etapa'
        ParamType = ptInput
      end>
  end
  object fram_data_source: TDataSource
    DataSet = myTabla
    Left = 296
    Top = 2
  end
  object myTabla: TRxMemoryData
    FieldDefs = <
      item
        Name = 'myField'
        DataType = ftInteger
      end>
    Left = 328
    Top = 2
  end
  object quer_tallas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select  distinct cons_grup_tall_detalle, talla'
      'from vis_pcp_pedi_unid_planeadas'
      'where cons_prod_orden = :cons_prod_orden'
      'Order by secu_talla')
    Left = 17
    Top = 107
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_orden'
        ParamType = ptInput
      end>
  end
  object quer_colores: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select  cons_Refe_color,'
      'nomb_color, nume_color'
      'from vis_pcp_pedi_unid_planeadas'
      'where cons_prod_orden = :cons_prod_orden'
      'Order by secu_color')
    Left = 49
    Top = 107
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_orden'
        ParamType = ptInput
      end>
  end
  object quer_cons_unid_lote: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      
        'SELECT UNID.CONS_REFE_COLOR, RECO.SECU_COLOR, GLO_COLORES.NOMB_C' +
        'OLOR,'
      
        '    RECO.NUME_COLOR, UNID.CONS_GRUP_TALL_DETALLE, TALL.TALLA, TA' +
        'LL.SECU_TALLA,'
      '    SUM(UNID.CANT_UNIDADES) AS UNIDADES'
      'FROM GLO_COLORES'
      
        '   INNER JOIN GLO_REFE_COLORES RECO ON (GLO_COLORES.CONS_COLOR =' +
        ' RECO.CONS_COLOR)'
      
        '   INNER JOIN VIS_PCP_PROD_UNIDADES UNID ON (RECO.CONS_REFE_COLO' +
        'R = UNID.CONS_REFE_COLOR)'
      
        '   INNER JOIN GLO_GRUP_TALL_DETALLE TALL ON (UNID.CONS_GRUP_TALL' +
        '_DETALLE = TALL.CONS_GRUP_TALL_DETALLE)'
      'WHERE UNID.CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'AND UNID.CONS_REFE_MATERIAL = :CONS_REFE_MATERIAL'
      'GROUP BY'
      
        '    UNID.CONS_REFE_COLOR, RECO.SECU_COLOR, GLO_COLORES.NOMB_COLO' +
        'R,'
      
        '    RECO.NUME_COLOR, UNID.CONS_GRUP_TALL_DETALLE, TALL.TALLA, TA' +
        'LL.SECU_TALLA')
    Left = 50
    Top = 36
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
      end>
  end
end

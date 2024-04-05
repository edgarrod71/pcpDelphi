object ffra_prod_plan_detallada: Tffra_prod_plan_detallada
  Left = 0
  Top = 0
  Width = 844
  Height = 418
  TabOrder = 0
  object pane_trab_planeacion: TPanel
    Left = 0
    Top = 23
    Width = 844
    Height = 395
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Grid: TSCLColumnGrid
      Left = 0
      Top = 26
      Width = 844
      Height = 369
      Cursor = crDefault
      Align = alClient
      ColCount = 14
      Ctl3D = False
      DefaultRowHeight = 21
      DefaultDrawing = False
      DragMode = dmAutomatic
      FixedColor = 15582631
      FixedCols = 2
      RowCount = 5
      FixedRows = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GridLineWidth = 1
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnDrawCell = GridDrawCell
      GridLineColor = clWhite
      ActiveCellShow = False
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'MS Sans Serif'
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
      OnGetCellColor = GridGetCellColor
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
      SelectionTextColor = clHighlightText
      SelectionRectangle = False
      SelectionResizer = False
      SelectionRTFKeep = False
      HintShowCells = False
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
      FixedColWidth = 80
      FixedRowHeight = 40
      FixedRowAlways = True
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      FixedAsButtons = False
      FloatFormat = '%.2f'
      IntegralHeight = False
      WordWrap = True
      ColumnHeaders.Strings = (
        'No. Orden'
        'Lote'
        'Lote'
        'Sección'
        'Sección'
        'fechejecfin'
        'fracejefin'
        'fechejefin'
        'fef'
        'recoprim'
        'recoulit'
        'C1OP')
      Lookup = False
      LookupCaseSensitive = False
      LookupHistory = False
      ShowSelection = False
      HideFocusRect = True
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
          Fixed = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'No. Orden'
          MinSize = 0
          MaxSize = 0
          Name = 'NUME_PROD_ORDEN'
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
          Alignment = taRightJustify
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
          Header = 'Lote'
          MinSize = 0
          MaxSize = 0
          Name = 'NUME_LOTE'
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
          Width = 40
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
          Header = 'Lote'
          MinSize = 0
          MaxSize = 0
          Name = 'CONS_PROG_PRODUCCION'
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
          EditLength = 0
          Editor = edNormal
          FilterCaseSensitive = False
          Fixed = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Sección'
          MinSize = 0
          MaxSize = 0
          Name = 'CONS_PROD_ORDEN'
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
          Header = 'Sección'
          MinSize = 0
          MaxSize = 0
          Name = 'CONS_PROD_LOTE'
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
          Header = 'fechejecfin'
          MinSize = 0
          MaxSize = 0
          Name = 'FECH_EJEC_INICIAL'
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
          Header = 'fracejefin'
          MinSize = 0
          MaxSize = 0
          Name = 'FRAC_EJEC_INICIAL'
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
          Header = 'fechejefin'
          MinSize = 0
          MaxSize = 0
          Name = 'FECH_EJEC_FINAL'
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
          Header = 'fef'
          MinSize = 0
          MaxSize = 0
          Name = 'FRAC_EJEC_FINAL'
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
          Header = 'recoprim'
          MinSize = 0
          MaxSize = 0
          Name = 'RECO_PRIM_PAQUETE'
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
          Header = 'recoulit'
          MinSize = 0
          MaxSize = 0
          Name = 'RECO_ULTI_PAQUETE'
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
          Header = 'C1OP'
          MinSize = 0
          MaxSize = 0
          Name = 'CARG_PRIM_OPERACION'
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
          Name = 'CODI_REFERENCIA'
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
          Name = 'ZOOM'
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
      ColWidths = (
        80
        40
        0
        0
        0
        0
        0
        0
        0
        0
        0
        0
        0
        0)
      RowHeights = (
        40
        21
        21
        21
        21)
    end
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 844
      Height = 26
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        Caption = 'TBXToolbar1'
        DockMode = dmCannotFloatOrChangeDocks
        DragHandleStyle = dhNone
        FullSize = True
        Images = _fMDI.imagenesPCP
        TabOrder = 0
        object TBControlItem1: TTBControlItem
          Control = edit_cuad_por_dia
        end
        object TBXItem2: TTBXItem
          Action = acti_ampliar
        end
        object TBXItem1: TTBXItem
          Action = acti_reducir
        end
        object edit_cuad_por_dia: TdxSpinEdit
          Left = 0
          Top = 0
          Width = 41
          TabOrder = 0
          Visible = False
          Alignment = taRightJustify
          MaxValue = 10
          MinValue = 1
          Value = 5
          StoredValues = 49
        end
      end
    end
  end
  object pane_info_destino: TPCPFrame
    Tag = 95
    Left = 0
    Top = 0
    Width = 844
    Height = 23
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
    Caption = 'Información del destino'
    Titulo_Color = 16244694
    Titulo_Comprimido = True
    FlatBorder = True
    object SCLDBLabel1: TSCLDBLabel
      Left = 286
      Top = 25
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Planta:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 16
      Top = 25
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Empresa:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel12: TSCLDBLabel
      Left = 16
      Top = 45
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Turno:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel13: TSCLDBLabel
      Left = 530
      Top = 25
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Línea:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 288
      Top = 44
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Cons_prog_produccion'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object pane_sele_fechas: TPanel
      Left = 4
      Top = 66
      Width = 617
      Height = 21
      BevelOuter = bvNone
      TabOrder = 1
      object SCLDBLabel3: TSCLDBLabel
        Left = 12
        Top = -1
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
        FocusControl = edit_fech_inicial
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Fecha inicial:'
        Enabled = False
        Transparent = True
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel4: TSCLDBLabel
        Left = 282
        Top = 0
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
        FocusControl = edit_fech_final
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Fecha final:'
        Enabled = False
        Transparent = True
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object edit_fech_inicial: TdxDateEdit
        Left = 114
        Top = -1
        Width = 120
        Enabled = False
        TabOrder = 0
        Date = -700000
        DateOnError = deToday
        DateValidation = True
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object edit_fech_final: TdxDateEdit
        Left = 384
        Top = 0
        Width = 121
        Enabled = False
        TabOrder = 1
        Date = -700000
        DateOnError = deToday
        DateValidation = True
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
    object edit_empresa: TdxCurrencyEditPCP
      Left = 116
      Top = 26
      Width = 121
      Enabled = False
      TabOrder = 2
      TabStop = False
      Alignment = taRightJustify
      DecimalPlaces = 0
      DisplayFormat = '0'
      StoredValues = 1
    end
    object edit_planta: TdxCurrencyEditPCP
      Left = 388
      Top = 26
      Width = 121
      Enabled = False
      TabOrder = 3
      TabStop = False
      Alignment = taRightJustify
      DecimalPlaces = 0
      DisplayFormat = '0'
      StoredValues = 1
    end
    object edit_linea: TdxCurrencyEditPCP
      Left = 636
      Top = 26
      Width = 121
      Enabled = False
      TabOrder = 4
      TabStop = False
      Alignment = taRightJustify
      DecimalPlaces = 0
      DisplayFormat = '0'
      StoredValues = 1
    end
    object edit_turno: TdxCurrencyEditPCP
      Left = 116
      Top = 45
      Width = 121
      Enabled = False
      TabOrder = 5
      TabStop = False
      Alignment = taRightJustify
      DecimalPlaces = 0
      DisplayFormat = '0'
      StoredValues = 1
    end
    object edit_cons_prog_produccion: TdxCurrencyEditPCP
      Left = 388
      Top = 45
      Width = 121
      Enabled = False
      TabOrder = 6
      TabStop = False
      Alignment = taRightJustify
      DecimalPlaces = 0
      DisplayFormat = '0'
      StoredValues = 1
    end
  end
  object quer_cale_linea: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select fecha'
      'from CON_PCP_PLAN_DIAS_NO_LABO_LINE'
      '(:PE_FECH_INICIAL, :PE_FECH_FINAL, :PE_CONS_EMPRESA,'
      ':PE_CONS_PLANTA, :PE_CONS_LINEA)'
      'Order by fecha')
    Left = 168
    Top = 105
    ParamData = <
      item
        DataType = ftDate
        Name = 'PE_FECH_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_FECH_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PLANTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_LINEA'
        ParamType = ptInput
      end>
  end
  object acti_frame: TActionList
    Images = _fMDI.imagenesPCP
    OnUpdate = acti_frameUpdate
    Left = 632
    Top = 56
    object acti_ampliar: TAction
      Category = 'grid'
      Caption = 'Ampliar'
      ImageIndex = 87
      OnExecute = acti_ampliarExecute
    end
    object acti_reducir: TAction
      Category = 'grid'
      Caption = 'Reducir'
      ImageIndex = 86
      OnExecute = acti_reducirExecute
    end
  end
  object quer_programacion: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_PCP_PROG_PRODUCCION'
      'WHERE ESTA_PROGRAMADO = 1'
      'AND FECH_EJEC_INICIAL BETWEEN '
      ':FECH_INICIAL AND :FECH_FINAL'
      'AND CONS_EMPRESA = :CONS_EMPRESA'
      'AND CONS_PLANTA = :CONS_PLANTA'
      'AND CONS_PLAN_LINEA = :CONS_PLAN_LINEA'
      'ORDER BY FECH_EJEC_INICIAL')
    Left = 139
    Top = 106
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECH_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECH_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PLANTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PLAN_LINEA'
        ParamType = ptInput
      end>
  end
end

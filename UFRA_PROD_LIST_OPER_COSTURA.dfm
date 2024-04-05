object ffra_prod_list_oper_costura: Tffra_prod_list_oper_costura
  Left = 0
  Top = 0
  Width = 871
  Height = 468
  TabOrder = 0
  object page: TSCLPageControl
    Left = 0
    Top = 0
    Width = 871
    Height = 468
    ActivePage = page_operaciones
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
    object page_operaciones: TSCLTabSheet
      Color = 16578290
      ImageIndex = 68
      Caption = 'Listado de operaciones'
      object TBXDock2: TTBXDock
        Left = 0
        Top = 0
        Width = 867
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
          object fram_boto_guardar: TTBXItem
            Action = acti_guardar
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imagenesPCP
          end
          object fram_boto_volv_llamar: TTBXItem
            Action = acti_volv_llamar
            ImageIndex = 11
            Images = _fMDI.imag_varias
          end
          object fram_boto_cancelar: TTBXItem
            Action = acti_cancelar
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imagenesPCP
          end
          object fram_boto_sepa_1: TTBXSeparatorItem
          end
          object fram_boto_cargar: TTBXItem
            Action = acti_llama_oper_referencia
            DisplayMode = nbdmImageAndText
            ImageIndex = 47
            Images = _fMDI.imagenesPCP
          end
          object fram_boto_sepa_2: TTBXSeparatorItem
          end
          object fram_boto_insertar: TTBXItem
            Action = acti_insertar
            Images = _fMDI.imagenesPCP
          end
          object fram_boto_adicionar: TTBXItem
            Action = acti_adicionar
            Images = _fMDI.imagenesPCP
          end
          object fram_boto_eliminar: TTBXItem
            Action = acti_eliminar
            Images = _fMDI.imagenesPCP
          end
          object fram_boto_sepa_3: TTBXSeparatorItem
          end
          object fram_boto_move_arriba: TTBXItem
            Action = acti_move_arriba
            Images = _fMDI.imagenesPCP
          end
          object fram_boto_move_abajo: TTBXItem
            Action = acti_move_abajo
            Images = _fMDI.imagenesPCP
          end
          object fram_boto_sepa_5: TTBXSeparatorItem
          end
          object fram_boto_busc_operaciones: TTBXSubmenuItem
            Action = acti_busc_oper_cst
            DropdownCombo = True
            Images = _fMDI.imagenesPCP
            Options = [tboDropdownArrow]
            object fram_boto_busc_oper_cst2: TTBXItem
              Action = acti_busc_oper_cst
              Images = _fMDI.imagenesPCP
              Options = [tboDefault]
            end
            object fram_boto_busc_tabla: TTBXItem
              Action = acti_buscar
              Images = _fMDI.imagenesPCP
            end
          end
          object fram_boto_sele_todo: TTBXItem
            Action = acti_sele_todos
            Images = _fMDI.imagenesPCP
          end
          object fram_boto_sepa_6: TTBXSeparatorItem
          end
          object fram_boto_copiar: TTBXItem
            Action = acti_copiar
            Images = _fMDI.imagenesPCP
          end
          object fram_boto_cortar: TTBXItem
            Action = acti_cortar
            Images = _fMDI.imagenesPCP
          end
          object fram_boto_pegar: TTBXItem
            Action = acti_pegar
            Images = _fMDI.imagenesPCP
          end
        end
      end
      object TBXDock1: TTBXDock
        Left = 0
        Top = 417
        Width = 867
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
          object TBXSeparatorItem2: TTBXSeparatorItem
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
            DisplayFormat = ',0.000'
            StoredValues = 65
          end
        end
      end
      object grid: TSCLColumnGrid
        Left = 0
        Top = 26
        Width = 867
        Height = 391
        Cursor = crDefault
        Align = alClient
        ColCount = 16
        Ctl3D = False
        DefaultRowHeight = 19
        DefaultDrawing = False
        FixedColor = 15582631
        FixedCols = 1
        RowCount = 2
        FixedRows = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GridLineWidth = 1
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = pop_grid
        ScrollBars = ssVertical
        TabOrder = 2
        OnKeyDown = gridKeyDown
        OnSelectCell = gridSelectCell
        GridLineColor = clSilver
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
        OnCustomCellDraw = gridCustomCellDraw
        OnGetCellColor = gridGetCellColor
        OnGetAlignment = gridGetAlignment
        OnClickCell = gridClickCell
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
        ControlLook.ControlStyle = csFlat
        ControlLook.FlatButton = False
        EnableBlink = False
        EnableHTML = False
        EnableWheel = True
        Flat = True
        HintColor = clInfoBk
        SelectionColor = clHighlight
        SelectionTextColor = clHighlightText
        SelectionRectangle = False
        SelectionResizer = False
        SelectionRTFKeep = False
        HintShowCells = True
        HintShowLargeText = True
        HintShowSizing = True
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
        SizeWhileTyping.Height = True
        MaxEditLength = 0
        MouseActions.RowSelect = True
        MouseActions.SizeFixedCol = True
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
        FixedColWidth = 24
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
          'No.'
          'T'
          'PR'
          'CO'
          'OP'
          'Código'
          'Operación'
          'F'
          'Máquina'
          'P.P.C.'
          'R.P.M.'
          'Tiempo'
          'P.H.'
          'P.H.'
          ''
          'P. Control')
        Lookup = False
        LookupCaseSensitive = False
        LookupHistory = False
        BackGround.Top = 0
        BackGround.Left = 0
        BackGround.Display = bdTile
        BackGround.Cells = bcNormal
        Filter = <>
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
            Color = clWhite
            ColumnPopupType = cpFixedCellsRClick
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
            Color = clBtnFace
            ColumnPopupType = cpFixedCellsRClick
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
            Color = clBtnFace
            ColumnPopupType = cpFixedCellsRClick
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
            Width = 43
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
            Header = 'P.H.'
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
            EditLength = 0
            Editor = edFloat
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
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
            Color = clWindow
            ColumnPopup = padr_pop_punt_control
            ColumnPopupType = cpNormalCellsLClick
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'P. Control'
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
          60
          46
          67
          67
          43
          0
          64
          64)
      end
    end
    object page_avance: TSCLTabSheet
      Color = 16578290
      ImageIndex = 45
      Caption = 'Avance'
      inline fram_avance: Tffra_prod_resp_lote_proceso
        Width = 867
        Height = 442
        inherited pane_arriba: TPanel
          Width = 867
          inherited edit_avance: TJvTracker
            Width = 391
          end
        end
        inherited pane_observaciones: TPanel
          Width = 867
          Height = 296
          inherited PCPFrame1: TPCPFrame
            Tag = 296
            Width = 867
            Height = 296
            inherited dxDBMemo1: TdxDBMemo
              Width = 853
              Height = 263
            end
          end
        end
        inherited TBXDock1: TTBXDock
          Width = 867
        end
        inherited pane_seleccion: TPanel
          Width = 867
          inherited fram_lote: Tffra_prod_sele_lote
            Width = 867
          end
        end
      end
    end
  end
  object acci_ventana: TActionList
    Images = _fMDI.imagenesPCP
    OnUpdate = acci_ventanaUpdate
    Left = 440
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
    object acti_sele_todos: TAction
      Category = 'Grid'
      Caption = 'Seleccionar todos'
      Hint = 'Seleccionar todos'
      ImageIndex = 30
      OnExecute = acti_sele_todosExecute
    end
    object acti_busc_oper_cst: TAction
      Category = 'Grid'
      Caption = 'Buscar operaciones CST'
      ImageIndex = 66
      ShortCut = 114
      OnExecute = acti_busc_oper_cstExecute
    end
    object acti_buscar: TAction
      Category = 'Grid'
      Caption = 'Buscar texto en la tabla'
      ImageIndex = 65
      OnExecute = acti_buscarExecute
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
    object acti_volv_llamar: TAction
      Category = 'Edit'
      Caption = 'Volver a llamar las operaciones'
      Hint = 'Volver a llamar las operaciones'
      OnExecute = acti_volv_llamarExecute
    end
    object acti_guardar: TAction
      Caption = 'Guardar'
      ImageIndex = 5
      ShortCut = 16455
      OnExecute = acti_guardarExecute
    end
    object acti_cancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 8
      ShortCut = 16449
      OnExecute = acti_cancelarExecute
    end
    object acti_llama_oper_referencia: TAction
      Caption = 'Cargar operaciones de la referencia'
      ImageIndex = 34
      OnExecute = acti_llama_oper_referenciaExecute
    end
  end
  object grid_find: TAdvGridFindDialog
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
      DisplayMode = nbdmImageAndText
      ImageIndex = 31
      Images = _fMDI.imagenesPCP
    end
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_prod_lote'
        DataType = ftInteger
      end
      item
        Name = 'cons_prod_orden'
        DataType = ftInteger
      end>
    Left = 378
    Top = 3
    object myTabla_Ventanacons_prod_lote: TIntegerField
      FieldName = 'cons_prod_lote'
    end
    object myTabla_Ventanacons_prod_orden: TIntegerField
      FieldName = 'cons_prod_orden'
    end
    object myTabla_Ventanacons_proceso: TIntegerField
      FieldName = 'cons_proceso'
    end
  end
  object quer_operaciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_oper_costura, cons_proceso, cons_oper_cost_tipo, '
      'cons_comp_grupo, codi_oper_costura, nomb_oper_costura,  '
      
        'punt_por_centimetro, cons_recu_familia, revo_por_minuto, tiem_as' +
        'ignado, '
      'tiem_cronometro, cost_operacion'
      'from pcp_oper_costura'
      'order by codi_oper_costura')
    Left = 57
    Top = 112
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
    Left = 713
    Top = 41
  end
  object quer_recu_familias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_recu_familia, codi_recu_familia'
      'from glo_recu_familias'
      'order by cons_recu_familia')
    Left = 744
    Top = 51
  end
  object pop_operacion: TTBXPopupMenu
    OnPopup = pop_operacionPopup
    Left = 58
    Top = 145
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
    DataSource = myData_Ventana
    SQL.Strings = (
      'Select secu_operacion,   codi_oper_costura,'
      
        'nomb_oper_costura, frecuencia, es_titulo, tiempo, cost_operacion' +
        ','
      'cons_punt_control'
      'from PCP_PROD_LIST_OPER_COSTURA'
      'where cons_prod_lote = :cons_prod_lote'
      'order by secu_operacion')
    Left = 594
    Top = 233
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end>
  end
  object quer_eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Delete from PCP_PROD_LIST_OPER_COSTURA'
      'Where cons_prod_lote = :cons_prod_lote')
    Left = 562
    Top = 233
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end>
  end
  object quer_oper_guardar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert into PCP_PROD_LIST_OPER_COSTURA'
      '(cons_prod_lote, secu_operacion, codi_oper_costura,'
      
        'nomb_oper_costura, frecuencia, tiempo, es_titulo, cost_operacion' +
        ','
      'cons_punt_control)'
      'Values'
      '(:cons_prod_lote, :secu_operacion, :codi_oper_costura,'
      
        ':nomb_oper_costura, :frecuencia, :tiempo, :es_titulo, :cost_oper' +
        'acion,'
      ':cons_punt_control)'
      ' ')
    Left = 626
    Top = 233
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
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
        DataType = ftFloat
        Name = 'cost_operacion'
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
  object myData_Ventana: TDataSource
    DataSet = myTabla_Ventana
    Left = 410
    Top = 3
  end
  object tabl_guardar: TRxMemoryData
    FieldDefs = <
      item
        Name = 'myfield'
        DataType = ftInteger
      end>
    BeforePost = doGuardar
    Left = 322
    Top = 227
  end
  object data_guardar: TDataSource
    DataSet = tabl_guardar
    Left = 354
    Top = 227
  end
  object quer_refe_oper_llamar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select secu_operacion,   codi_oper_costura,'
      'nomb_oper_costura, frecuencia, es_titulo,'
      'tiempo, cost_operacion, cons_punt_control'
      'from pcp_refe_list_oper_costura'
      'where cons_refe_variacion = :cons_refe_variacion'
      'order by secu_operacion')
    Left = 658
    Top = 233
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end>
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

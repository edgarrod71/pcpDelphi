object ffra_prod_orde_dist_paquetes: Tffra_prod_orde_dist_paquetes
  Left = 0
  Top = 0
  Width = 466
  Height = 367
  TabOrder = 0
  object TBXDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 466
    Height = 26
    object barr_opciones: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 96
      DockRow = 1
      DragHandleStyle = dhNone
      FullSize = True
      Images = _fMDI.imagenesPCP
      ParentShowHint = False
      ProcessShortCuts = True
      ShowHint = True
      TabOrder = 0
      object TBXItem9: TTBXItem
        Action = acti_guardar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imagenesPCP
      end
      object TBXItem8: TTBXItem
        Action = acti_cancelar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object TBXItem7: TTBXItem
        Action = acti_insertar
        Images = _fMDI.imagenesPCP
      end
      object TBXItem6: TTBXItem
        Action = acti_adicionar
        Images = _fMDI.imagenesPCP
      end
      object TBXItem5: TTBXItem
        Action = acti_eliminar
        Images = _fMDI.imagenesPCP
      end
      object TBXItem3: TTBXItem
        Action = acti_move_arriba
        Images = _fMDI.imagenesPCP
      end
      object TBXItem4: TTBXItem
        Action = acti_move_abajo
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object TBXItem21: TTBXItem
        Action = acti_copiar
      end
      object TBXItem20: TTBXItem
        Action = acti_cortar
      end
      object TBXItem19: TTBXItem
        Action = acti_pegar
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object TBXItem1: TTBXItem
        Action = acti_paqu_automatico
        Images = _fMDI.imagenesPCP
      end
      object TBXItem2: TTBXItem
        Action = acti_duplicar
        Images = _fMDI.imagenesPCP
      end
      object TBXItem24: TTBXItem
        Action = acti_anexar
      end
      object TBXItem23: TTBXItem
        Action = acti_anex_asistente
      end
      object TBXSeparatorItem6: TTBXSeparatorItem
      end
      object boto_imprimir: TTBXSubmenuItem
        Caption = 'Imprimir tiquetes de control'
        ImageIndex = 10
        Options = [tboDropdownArrow]
        object TBXItem10: TTBXItem
          Action = acti_impr_tiquetes
          ImageIndex = 103
          Images = _fMDI.ImagenesMenus
        end
        object TBXItem22: TTBXItem
          Action = acti_impr_distribucion
          ImageIndex = 88
          Images = _fMDI.ImagenesMenus
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 51
    Width = 466
    Height = 316
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 1
    object grid: TSCLColumnGrid
      Left = 2
      Top = 2
      Width = 462
      Height = 286
      Cursor = crDefault
      Align = alClient
      ColCount = 6
      Ctl3D = False
      DefaultRowHeight = 21
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
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = pop_grid
      TabOrder = 0
      OnKeyDown = gridKeyDown
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
      OnCanSort = gridCanSort
      OnComboChange = gridComboChange
      DragDropSettings.OleAcceptFiles = True
      DragDropSettings.OleAcceptText = True
      SortSettings.AutoColumnMerge = False
      SortSettings.Column = 0
      SortSettings.Show = True
      SortSettings.IndexShow = True
      SortSettings.Full = True
      SortSettings.SingleColumn = False
      SortSettings.IgnoreBlanks = False
      SortSettings.BlankPos = blFirst
      SortSettings.AutoFormat = True
      SortSettings.Direction = sdAscending
      SortSettings.FixedCols = True
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
      SelectionColor = clHighlight
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
      MouseActions.RowSelect = True
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
      FixedColWidth = 35
      FixedRowHeight = 21
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
        ''
        ''
        'Color'
        'Talla'
        'Unidades')
      Lookup = False
      LookupCaseSensitive = False
      LookupHistory = False
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
          Header = 'No.'
          MinSize = 0
          MaxSize = 0
          Name = 'NUME_PAQUETE'
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
          Width = 35
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
          Name = 'CONS_GRUP_TALL_DETALLE'
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
          Editor = edComboList
          FilterCaseSensitive = False
          Fixed = False
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
          Width = 130
        end
        item
          AutoMinSize = 0
          AutoMaxSize = 0
          Alignment = taCenter
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          ColumnPopupType = cpFixedCellsRClick
          EditLength = 0
          Editor = edComboList
          FilterCaseSensitive = False
          Fixed = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Talla'
          MinSize = 0
          MaxSize = 0
          Name = 'TALLA'
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
          Width = 61
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
          Editor = edPositiveNumeric
          FilterCaseSensitive = False
          Fixed = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Unidades'
          MinSize = 0
          MaxSize = 0
          Name = 'CANT_UNIDADES'
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
        35
        0
        0
        130
        61
        59)
      RowHeights = (
        21
        21
        21
        21
        21)
    end
    object pane_totales: TPanel
      Left = 2
      Top = 288
      Width = 462
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      BorderWidth = 2
      TabOrder = 1
      object SCLDBLabel2: TSCLDBLabel
        Left = 8
        Top = 2
        Width = 63
        Height = 17
        Alive = False
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'MS Sans Serif'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = edit_tota_paquetes
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Paquetes:'
        Transparent = True
        ColorRequerido = clRed
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel3: TSCLDBLabel
        Left = 116
        Top = 2
        Width = 54
        Height = 17
        Alive = False
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'MS Sans Serif'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = edit_tota_unidades
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Unidades:'
        Transparent = True
        ColorRequerido = clRed
        ColorNoRequerido = clWindowText
      end
      object boto_ayuda: TTBXButtonSCL
        Left = 435
        Top = 2
        Width = 25
        Height = 22
        Hint = 'Ver más información sobre los totales'
        Align = alRight
        AllowAllUnchecked = True
        BorderSize = 2
        ButtonStyle = bsFlat
        ImageIndex = 3
        Images = _fMDI.imag_varias
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Visible = False
        OnClick = boto_ayudaClick
      end
      object boto_warning: TTBXButtonSCL
        Left = 410
        Top = 2
        Width = 25
        Height = 22
        Hint = 
          'El número de unidades loteadas es diferente a la suma de unidade' +
          's en los paquetes'
        Align = alRight
        AllowAllUnchecked = True
        BorderSize = 2
        ButtonStyle = bsFlat
        ImageIndex = 5
        Images = _fMDI.imag_varias
        TabOrder = 1
        Visible = False
      end
      object edit_tota_paquetes: TdxCurrencyEdit
        Left = 73
        Top = 2
        Width = 39
        Enabled = False
        TabOrder = 2
        Alignment = taRightJustify
        DisplayFormat = ',0'
        StoredValues = 1
      end
      object edit_tota_unidades: TdxCurrencyEdit
        Left = 172
        Top = 2
        Width = 61
        Enabled = False
        TabOrder = 3
        Alignment = taRightJustify
        DisplayFormat = ',0'
        StoredValues = 1
      end
    end
  end
  object pane_seleccion: TPanel
    Left = 0
    Top = 26
    Width = 466
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object SCLDBLabel1: TSCLDBLabel
      Left = 0
      Top = 0
      Width = 113
      Height = 25
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'MS Sans Serif'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Align = alLeft
      Caption = 'Tipo de distribución:'
      Transparent = True
      ColorRequerido = clRed
      ColorNoRequerido = clWindowText
    end
    object comb_paqu_tipo: TPCPLookUpComboEdit
      Left = 114
      Top = 2
      Width = 195
      Height = 21
      DropDownCount = 8
      EscapeClear = False
      Ctl3D = True
      DataField = 'cons_prod_paqu_tipo'
      DataSource = myData_ventana
      KeyField = 'cons_prod_paqu_tipo'
      ListField = 'nomb_prod_paqu_tipo'
      ListSource = data_paqu_tipos
      ParentCtl3D = False
      TabOrder = 0
      OnChange = comb_paqu_tipoChange
      DirectInput = False
    end
  end
  object quer_paqu_tipos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'select cons_prod_paqu_tipo, nomb_prod_paqu_tipo'
      'from pcp_prod_paqu_tipos'
      'order by cons_prod_paqu_tipo')
    Left = 236
    Top = 217
  end
  object data_paqu_tipos: TDataSource
    DataSet = quer_paqu_tipos
    Left = 268
    Top = 217
  end
  object acti_frame: TActionList
    Images = _fMDI.imagenesPCP
    OnUpdate = acti_frameUpdate
    Left = 236
    Top = 183
    object acti_guardar: TAction
      Category = 'Data'
      Caption = 'Guardar'
      ImageIndex = 5
      OnExecute = acti_guardarExecute
    end
    object acti_cancelar: TAction
      Category = 'Data'
      Caption = 'Cancelar'
      ImageIndex = 8
      OnExecute = acti_cancelarExecute
    end
    object acti_duplicar: TAction
      Category = 'General'
      Caption = 'Duplicar'
      Enabled = False
      ImageIndex = 11
      Visible = False
    end
    object acti_insertar: TAction
      Category = 'Grid'
      Caption = 'Insertar'
      ImageIndex = 25
      ShortCut = 45
      OnExecute = acti_insertarExecute
    end
    object acti_adicionar: TAction
      Category = 'Grid'
      Caption = 'Adicionar'
      ImageIndex = 26
      ShortCut = 16429
      OnExecute = acti_adicionarExecute
    end
    object acti_eliminar: TAction
      Category = 'Grid'
      Caption = 'Eliminar'
      ImageIndex = 27
      ShortCut = 16453
      OnExecute = acti_eliminarExecute
    end
    object acti_move_arriba: TAction
      Category = 'Grid'
      Caption = 'Mover hacia arriba'
      ImageIndex = 28
      ShortCut = 16422
      OnExecute = acti_move_arribaExecute
    end
    object acti_move_abajo: TAction
      Category = 'Grid'
      Caption = 'Mover hacia abajo'
      ImageIndex = 29
      ShortCut = 16424
      OnExecute = acti_move_abajoExecute
    end
    object acti_paqu_automatico: TAction
      Category = 'General'
      Caption = 'Paqueteo automático'
      ImageIndex = 111
      ShortCut = 24644
      OnExecute = acti_paqu_automaticoExecute
    end
    object acti_impr_tiquetes: TAction
      Category = 'General'
      Caption = 'Imprimir tiquetes de control...'
      ImageIndex = 10
      OnExecute = acti_impr_tiquetesExecute
    end
    object acti_copiar: TAction
      Category = 'Grid'
      Caption = 'Copiar'
      ImageIndex = 11
      ShortCut = 16451
      OnExecute = acti_copiarExecute
    end
    object acti_cortar: TAction
      Category = 'Grid'
      Caption = 'Cortar'
      ImageIndex = 12
      ShortCut = 16472
      OnExecute = acti_cortarExecute
    end
    object acti_pegar: TAction
      Category = 'Grid'
      Caption = 'Pegar'
      ImageIndex = 13
      ShortCut = 16470
      OnExecute = acti_pegarExecute
    end
    object acti_impr_distribucion: TAction
      Category = 'General'
      Caption = 'Reporte de distribución de paquetes...'
      OnExecute = acti_impr_distribucionExecute
    end
    object acti_anexar: TAction
      Category = 'General'
      Caption = 'Anexar al paquete anterior'
      ImageIndex = 109
      ShortCut = 16466
      OnExecute = acti_anexarExecute
    end
    object acti_anex_asistente: TAction
      Category = 'General'
      Caption = 'Anexar paquetes de manera automática...'
      ImageIndex = 110
      ShortCut = 24658
      OnExecute = acti_anex_asistenteExecute
      OnUpdate = acti_anex_asistenteUpdate
    end
  end
  object tabl_guardar: TRxMemoryData
    FieldDefs = <
      item
        Name = 'myField'
        DataType = ftInteger
      end>
    BeforePost = tabl_guardarBeforePost
    Left = 236
    Top = 303
  end
  object data_guardar: TDataSource
    DataSet = tabl_guardar
    OnStateChange = data_guardarStateChange
    Left = 268
    Top = 303
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_prod_orden'
        DataType = ftInteger
      end
      item
        Name = 'cons_prod_lote'
        DataType = ftInteger
      end
      item
        Name = 'cons_prod_paqu_tipo'
        DataType = ftInteger
      end
      item
        Name = 'cons_proc_anterior'
        DataType = ftInteger
      end>
    Left = 236
    Top = 271
  end
  object myData_ventana: TDataSource
    DataSet = myTabla_ventana
    Left = 268
    Top = 271
  end
  object quer_dele_paquetes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_ventana
    SQL.Strings = (
      'Delete'
      'from pcp_prod_dist_paquetes'
      'where cons_prod_lote = :cons_prod_lote'
      'and cons_proceso = :cons_proc_anterior'
      'and cons_prod_paqu_tipo = :cons_prod_paqu_tipo')
    Left = 52
    Top = 199
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cons_proc_anterior'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cons_prod_paqu_tipo'
        ParamType = ptUnknown
      end>
  end
  object quer_inse_paquetes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert into PCP_PROD_DIST_PAQUETES'
      '(CONS_PROD_LOTE, CONS_PROCESO, CONS_PROD_PAQU_TIPO, '
      'NUME_PAQUETE,'
      'CONS_REFE_COLOR, CONS_GRUP_TALL_DETALLE, CANT_UNIDADES)'
      'VALUES'
      '(:CONS_PROD_LOTE, :CONS_PROC_ANTERIOR, :CONS_PROD_PAQU_TIPO, '
      ':NUME_PAQUETE,'
      ':CONS_REFE_COLOR, :CONS_GRUP_TALL_DETALLE, :CANT_UNIDADES)')
    Left = 92
    Top = 199
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_PROC_ANTERIOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_PROD_PAQU_TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'NUME_PAQUETE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_REFE_COLOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_GRUP_TALL_DETALLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CANT_UNIDADES'
        ParamType = ptUnknown
      end>
  end
  object quer_sele_paquetes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_ventana
    SQL.Strings = (
      'Select *'
      'from vis_pcp_prod_dist_paquetes'
      'where cons_prod_lote = :cons_prod_lote'
      'and cons_prod_paqu_tipo = :cons_prod_paqu_tipo'
      'order by nume_paquete')
    Left = 20
    Top = 199
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cons_prod_paqu_tipo'
        ParamType = ptUnknown
      end>
  end
  object quer_colores: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_ventana
    SQL.Strings = (
      'SELECT DISTINCT'
      'CONS_REFE_COLOR, NOMB_COLOR'
      'FROM VIS_PCP_PROD_ORDE_COLORES'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'ORDER BY NOMB_COLOR'
      '')
    Left = 20
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end>
  end
  object quer_tallas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_ventana
    SQL.Strings = (
      'SELECT DISTINCT'
      'CONS_GRUP_TALL_DETALLE, TALLA'
      'FROM VIS_PCP_PROD_ORDE_TALLAS'
      'WHERE CONS_PROD_LOTE =:CONS_PROD_LOTE'
      'ORDER BY TALLA')
    Left = 52
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end>
  end
  object pop_grid: TTBXPopupMenu
    Left = 92
    Top = 247
    object TBXItem11: TTBXItem
      Action = acti_insertar
      Images = _fMDI.imag_pequenas
    end
    object TBXItem12: TTBXItem
      Action = acti_adicionar
      Images = _fMDI.imag_pequenas
    end
    object TBXItem13: TTBXItem
      Action = acti_eliminar
      Images = _fMDI.imag_pequenas
    end
    object TBXItem14: TTBXItem
      Action = acti_move_arriba
      Images = _fMDI.imag_pequenas
    end
    object TBXItem15: TTBXItem
      Action = acti_move_abajo
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem3: TTBXSeparatorItem
    end
    object TBXItem16: TTBXItem
      Action = acti_paqu_automatico
      Images = _fMDI.imag_pequenas
    end
    object TBXItem17: TTBXItem
      Action = acti_duplicar
      Images = _fMDI.imag_pequenas
    end
    object TBXItem26: TTBXItem
      Action = acti_anexar
      Images = _fMDI.imagenesPCP
    end
    object TBXItem25: TTBXItem
      Action = acti_anex_asistente
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem7: TTBXSeparatorItem
    end
    object TBGroupItem1: TTBGroupItem
      LinkSubitems = boto_imprimir
    end
  end
end

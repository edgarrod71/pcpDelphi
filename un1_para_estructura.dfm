inherited fn1_para_estructura: Tfn1_para_estructura
  Width = 812
  Height = 611
  Caption = 'Estructura organizacional'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 583
    Width = 804
  end
  object Grid2: TAdvColumnGrid [2]
    Left = 0
    Top = 109
    Width = 804
    Height = 465
    Cursor = crDefault
    Align = alClient
    ColCount = 1
    Ctl3D = True
    DefaultColWidth = 90
    DefaultRowHeight = 50
    FixedCols = 0
    RowCount = 5
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    GridLineWidth = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 7
    OnMouseDown = GridMouseDown
    GridLineColor = clRed
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'MS Sans Serif'
    ActiveCellFont.Style = [fsBold]
    VAlignment = vtaCenter
    EnhRowColMove = False
    Multilinecells = True
    OnGetCellColor = GridGetCellColor
    OnGetCellBorder = Grid2GetCellBorder
    OnGetCellBorderProp = Grid2GetCellBorderProp
    ControlLook.ControlStyle = csClassic
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
    FixedColWidth = 90
    FixedRowHeight = 50
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    FloatFormat = '%.2f'
    ShowSelection = False
    HideFocusRect = True
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
        HeaderFont.Color = clWhite
        HeaderFont.Height = -11
        HeaderFont.Name = 'Arial'
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
        Width = 90
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
      90)
  end
  object Grid: TAdvColumnGrid [3]
    Left = 0
    Top = 109
    Width = 804
    Height = 465
    Cursor = crDefault
    Align = alClient
    ColCount = 8
    DefaultRowHeight = 25
    FixedCols = 0
    RowCount = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLineWidth = 4
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentFont = False
    PopupMenu = pop_grid
    ScrollBars = ssBoth
    TabOrder = 6
    OnMouseDown = GridMouseDown
    GridLineColor = clWhite
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'MS Sans Serif'
    ActiveCellFont.Style = [fsBold]
    VAlignment = vtaCenter
    EnhRowColMove = False
    Multilinecells = True
    OnGetCellColor = GridGetCellColor
    ControlLook.ControlStyle = csClassic
    EnableWheel = False
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
    FixedColWidth = 5
    FixedRowHeight = 0
    FixedRowAlways = True
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    FloatFormat = '%.2f'
    ColumnHeaders.Strings = (
      ''
      'Empresas'
      ''
      'Plantas'
      ''
      'Líneas'
      ''
      'Secciones')
    ShowSelection = False
    HideFocusRect = True
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
        Font.Color = clWhite
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
        Name = 'CONS_EMPRESA'
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
        Width = 5
      end
      item
        AutoMinSize = 0
        AutoMaxSize = 0
        Alignment = taCenter
        Borders = []
        BorderPen.Color = 4227072
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
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Empresas'
        HeaderAlignment = taLeftJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Name = 'EMPRESA'
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
        Width = 150
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
        Font.Color = clWhite
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
        Name = 'CONS_PLANTA'
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
        Alignment = taCenter
        Borders = []
        BorderPen.Color = 12615680
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
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Plantas'
        HeaderAlignment = taLeftJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Name = 'PLANTA'
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
        Width = 150
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
        Font.Color = clWhite
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
        Name = 'CONS_PLAN_LINEA'
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
        Alignment = taCenter
        Borders = []
        BorderPen.Color = clRed
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
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Líneas'
        HeaderAlignment = taLeftJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Name = 'LINEA'
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
        Width = 150
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
        Font.Color = clWhite
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
        Name = 'CONS_LINE_SECCION'
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
        Alignment = taCenter
        Borders = []
        BorderPen.Color = clOlive
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
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Secciones'
        HeaderAlignment = taLeftJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Name = 'SECCION'
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
        Width = 150
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
      5
      150
      0
      150
      0
      150
      0
      150)
    RowHeights = (
      0
      25
      25
      25
      25)
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 71
    Width = 804
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 582
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
  inherited pane_beve_abajo: TPanel
    Top = 574
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 78
    Width = 804
  end
  object Panel1: TPanel [10]
    Left = 0
    Top = 80
    Width = 804
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 8
    object titu1: TPCPTituloGradiente
      Left = 9
      Top = 3
      Width = 147
      Height = 23
      GradientStartColor = clBtnShadow
      GradientEndColor = 4227072
      GradientStyle = grVertical
      LabelTop = 4
      LabelCaption = 'Empresas'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clBlack
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      LabelAlignment = taLeftJustify
      BevelInner = bvNone
      DoubleBuffered = False
      TabOrder = 0
      Caption = 'Empresas'
    end
    object titu2: TPCPTituloGradiente
      Left = 157
      Top = 3
      Width = 147
      Height = 23
      GradientStartColor = clBtnShadow
      GradientEndColor = 12615680
      GradientStyle = grVertical
      LabelTop = 4
      LabelCaption = 'Plantas'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clBlack
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      LabelAlignment = taLeftJustify
      BevelInner = bvNone
      DoubleBuffered = False
      TabOrder = 1
      Caption = 'Plantas'
    end
    object titu3: TPCPTituloGradiente
      Left = 305
      Top = 3
      Width = 147
      Height = 23
      GradientStartColor = clBtnShadow
      GradientEndColor = clRed
      GradientStyle = grVertical
      LabelTop = 4
      LabelCaption = 'Líneas'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clBlack
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      LabelAlignment = taLeftJustify
      BevelInner = bvNone
      DoubleBuffered = False
      TabOrder = 2
      Caption = 'Líneas'
    end
    object titu4: TPCPTituloGradiente
      Left = 453
      Top = 3
      Width = 145
      Height = 23
      GradientStartColor = clBtnShadow
      GradientEndColor = clOlive
      GradientStyle = grVertical
      LabelTop = 4
      LabelCaption = 'Secciones'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clBlack
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      LabelAlignment = taLeftJustify
      BevelInner = bvNone
      DoubleBuffered = False
      TabOrder = 3
      Caption = 'Secciones'
    end
  end
  object TBXDock1: TTBXDock [11]
    Left = 0
    Top = 45
    Width = 804
    Height = 26
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      DockMode = dmCannotFloatOrChangeDocks
      Images = imag_ventana
      ParentShowHint = False
      ShowCaption = False
      ShowHint = True
      TabOrder = 0
      object TBXItem10: TTBXItem
        Action = acti_empr_nueva
      end
      object TBXItem14: TTBXItem
        Action = acti_empr_modificar
      end
      object TBXItem15: TTBXItem
        Action = acti_empr_eliminar
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object TBXItem16: TTBXItem
        Action = acti_plan_nueva
      end
      object TBXItem17: TTBXItem
        Action = acti_plan_modificar
      end
      object TBXItem18: TTBXItem
        Action = acti_plan_eliminar
      end
      object TBXSeparatorItem5: TTBXSeparatorItem
      end
      object TBXItem19: TTBXItem
        Action = acti_line_nueva
      end
      object TBXItem21: TTBXItem
        Action = acti_line_eliminar
      end
      object TBXSeparatorItem6: TTBXSeparatorItem
      end
      object TBXItem22: TTBXItem
        Action = acti_secc_nueva
      end
      object TBXItem24: TTBXItem
        Action = acti_secc_eliminar
      end
    end
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
    end
    inherited acti_padr_cancelar_2: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
  end
  object quer_empresas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_empresa, nomb_empresa '
      'from glo_empresas '
      'where cons_empresa > 0'
      'order by cons_empresa')
    Left = 866
    Top = 96
  end
  object data_empresas: TDataSource
    DataSet = quer_empresas
    Left = 898
    Top = 96
  end
  object quer_plantas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_empresas
    SQL.Strings = (
      'Select cons_planta, nomb_planta'
      'from GLO_PLANTAS'
      'Where cons_empresa = :cons_empresa'
      'order by nomb_planta')
    Left = 866
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_EMPRESA'
        ParamType = ptUnknown
      end>
  end
  object data_plantas: TDataSource
    DataSet = quer_plantas
    Left = 898
    Top = 136
  end
  object quer_plan_lineas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_plantas
    SQL.Strings = (
      'Select cons_linea, cons_plan_linea, nomb_linea'
      'from VIS_GLO_PLAN_LINEAS'
      'Where cons_planta = :cons_planta'
      'order by nomb_linea')
    Left = 866
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PLANTA'
        ParamType = ptUnknown
      end>
  end
  object data_plan_lineas: TDataSource
    DataSet = quer_plan_lineas
    Left = 898
    Top = 176
  end
  object quer_line_secciones: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_plan_lineas
    SQL.Strings = (
      'Select cons_line_Seccion, nomb_seccion'
      'from VIS_GLO_LINE_SECCIONES'
      'Where cons_plan_linea = :cons_plan_linea'
      'order by NOMB_SECCION')
    Left = 866
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PLAN_LINEA'
        ParamType = ptUnknown
      end>
  end
  object imag_ventana: TImageList
    Left = 954
    Top = 5
    Bitmap = {
      494C01010C000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008B867DFF0908
      06FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      00FF008000FF008000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A29AFFC9C8C6FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000070747FF121E29FF4E46
      35FF26225AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      00FF597A8AFF008000FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000080FF000080FF0000
      80FF000080FF000080FF000080FF000000000000000000000000000000000000
      000000000000000000000000000000000000878787FF121E29FF4E4635FFA6A2
      9AFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030363FF85C9CFFF4CA2
      D2FF394144FF574E66FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008000FF008000FF0080
      00FF81B88BFF078307FF008000FF008000FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000080FF2A5AE6FF1315
      C1FF322FD3FF5555FFFF000080FF000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C3FF85C9CFFF4CA2D2FF3941
      44FF978E7BFF000000000000000000000000DBDBDBFF090909FF000000FF0000
      00FF181818FF5E5E5EFF090909FF000000FF000000FF000069FF212F4BFF66CB
      FFFF1293E8FF274A5AFF574E5BFF00000000E9E9E9FF8C8C8CFF8B8B8BFF8C8C
      8CFFE9E9E9FF8C8C8CFF8B8B8BFF8C8C8CFFE9E9E9FF008000FF518063FF6498
      6CFF6FB66FFF6CAF71FF3F6677FF008000FFF0F0F0FFABABABFFAAAAAAFFABAB
      ABFFF0F0F0FFABABABFFAAAAAAFFABABABFFF0F0F0FF000080FF000080FF0000
      80FF000080FF000080FF000080FF00000000F7F7F7FFD1D1D1FFD0D0D0FFD1D1
      D1FFF7F7F7FFD1D1D1FFD0D0D0FFD1D1D1FFF7F7F7FF576466FF66CBFFFF1293
      E8FF274A5AFF978E7BFF00000000000000005E5E5EFF091C22FF0C465AFF000F
      14FF000000FF07171CFF0E475AFF001319FF000000FF061216FF10485BFF1D33
      37FFA6E4FFFF2798DAFF4E4635FF576E3BFF8C8C8CFF221A18FF5F454AFF160F
      13FF8C8C8CFF1C1613FF5F464AFF1C1318FF8C8C8CFF008000FF008000FF0080
      00FF6EB573FF138913FF008000FF008000FFABABABFF221A18FF5F454AFF160F
      13FFABABABFF1C1613FF5F464AFF1C1318FFABABABFF16110FFF5F4649FF251C
      22FF207DB3FF000000000000000000000000D1D1D1FF271F1DFF5F454AFF1C15
      19FFD1D1D1FF221C19FF5F464AFF22191EFFD1D1D1FF1C1715FF353F41FFA6E4
      FFFF2798DAFF4E4635FF978E7BFF000000005C5C5CFF1C4E5FFF21BCF0FF002A
      39FF000000FF17414FFF26BFF1FF003547FF000000FF13343FFF2AC1F3FF0040
      55FF263E34FFDCC7B5FFC79E83FF4E4635FF8B8B8BFF5F4A42FFFFBAC7FF3F2C
      35FF8B8B8BFF4F3D37FFFFBBC5FF4F3743FF8B8B8BFF3F312CFFFFBCC2FF0080
      00FF599557FF008000FF0000000000000000AAAAAAFF5F4A42FFFFBAC7FF3F2C
      35FFAAAAAAFF4F3D37FFFFBBC5FF4F3743FFAAAAAAFF3F312CFFFFBCC2FF5F42
      50FFB4A294FF000000000000000000000000D0D0D0FF5F4A42FFFFBAC7FF3F2C
      35FFD0D0D0FF4F3D37FFFFBBC5FF4F3743FFD0D0D0FF3F312CFFFFBCC2FF353E
      43FFDCC7B5FFC79E83FF4E4635FF000000005C5C5CFF1C4E5FFF21BCF0FF002A
      39FF000000FF17414FFF26BFF1FF003547FF000000FF13343FFF2AC1F3FF0040
      55FF005500FF2F4F2FFFDCC7D1FF3F3F7FFF8B8B8BFF5F4A42FFFFBAC7FF3F2C
      35FF8B8B8BFF4F3D37FFFFBBC5FF4F3743FF8B8B8BFF3F312CFFFFBCC2FF0080
      00FF008000FF008000FF0000000000000000AAAAAAFF5F4A42FFFFBAC7FF3F2C
      35FFAAAAAAFF4F3D37FFFFBBC5FF4F3743FFAAAAAAFF3F312CFFFFBCC2FF5F42
      50FF4A4A4AFF000000000000000000000000D0D0D0FF5F4A42FFFFBAC7FF3F2C
      35FFD0D0D0FF4F3D37FFFFBBC5FF4F3743FFD0D0D0FF3F312CFFFFBCC2FF5F42
      50FF5B5B5BFFDCC7D1FF3F3F7FFF000000005C5C5CFF1C4E5FFF21BCEFFF002A
      39FF000000FF17414FFF25BFF1FF003547FF090909FF13343FFF2AC1F3FF0040
      55FF5C5C5CFF00000000606060FFC0C0C0FF8B8B8BFF5F4942FFFFBAC7FF3F2C
      35FF8B8B8BFF4F3D37FFFFBBC5FF4F3743FF8B8B8BFF3F312CFFFFBCC2FF5F42
      50FF8B8B8BFF000000000000000000000000AAAAAAFF5F4942FFFFBAC7FF3F2C
      35FFAAAAAAFF4F3D37FFFFBBC5FF4F3743FFAAAAAAFF3F312CFFFFBCC2FF5F42
      50FFAAAAAAFF000000000000000000000000D0D0D0FF5F4942FFFFBAC7FF3F2C
      35FFD0D0D0FF4F3D37FFFFBBC5FF4F3743FFD0D0D0FF3F312CFFFFBCC2FF5F42
      50FFD0D0D0FF808080FFC0C0C0FF000000005C5C5CFF1C4E5FFF21BCF0FF002A
      39FF5C5C5CFF17414FFF26BFF1FF003547FF005500FF13343FFF2AC1F3FF0040
      55FF005500FF0000000000000000000000008B8B8BFF5F4A42FFFFBAC7FF3F2C
      35FF8B8B8BFF4F3D37FFFFBBC5FF4F3743FF8B8B8BFF3F312CFFFFBCC2FF5F42
      50FF8B8B8BFF000000000000000000000000AAAAAAFF5F4A42FFFFBAC7FF3F2C
      35FFAAAAAAFF4F3D37FFFFBBC5FF4F3743FFAAAAAAFF3F312CFFFFBCC2FF5F42
      50FFAAAAAAFF000000000000000000000000D0D0D0FF5F4A42FFFFBAC7FF3F2C
      35FFD0D0D0FF4F3D37FFFFBBC5FF4F3743FFD0D0D0FF3F312CFFFFBCC2FF5F42
      50FFD0D0D0FF0000000000000000000000005C5C5CFF1C4E5FFF36C7F7FF092F
      3CFF5C5C5CFF17414FFF39C8F7FF0B3B4BFF005600FF12343EFF3BC9F8FF0E47
      5AFF5E755EFF0000000000000000000000008B8B8BFF5F4A42FFFFBFBCFF3F2E
      31FF8B8B8BFF4F3D37FFFFC0BBFF4F3A3DFF8F8F8FFF3E302CFFFFC1BAFF5F46
      49FF8B8B8BFF000000000000000000000000AAAAAAFF5F4A42FFFFBFBCFF3F2E
      31FFAAAAAAFF4F3D37FFFFC0BBFF4F3A3DFFADADADFF40312DFFFFC1BAFF5F46
      49FFAAAAAAFF000000000000000000000000D0D0D0FF5F4A42FFFFBFBCFF3F2E
      31FFD0D0D0FF4F3D37FFFFC0BBFF4F3A3DFFD2D2D2FF4F423EFFFFC1BAFF5F46
      49FFD0D0D0FF0000000000000000000000005E5E5EFF07171CFF17404EFF040F
      12FF636363FF061317FF17414FFF061317FF279F00FF041211FF17414FFF0717
      1CFF5A7E58FF0000000000000000000000008C8C8CFF1C1613FF4F3C37FF130F
      0CFF919191FF171210FF4F3D37FF171210FF929292FF130F0DFF4F3D37FF1C16
      13FF8C8C8CFF000000000000000000000000ABABABFF1C1613FF503D38FF1814
      11FFAFAFAFFF171210FF4F3D37FF171210FFB0B0B0FF181513FF4F3D37FF1C16
      13FFABABABFF000000000000000000000000D1D1D1FF221C19FF5E4D48FF3834
      32FFD3D3D3FF1D1816FF4F3D37FF1D1816FFD4D4D4FF3A3735FF4F3D37FF221C
      19FFD1D1D1FF000000000000000000000000E0E0E0FF737373FF939393FF9C9C
      9CFFEAEAEAFF7E7E7EFF002E00FF003F00FF007A00FF006700FF58906CFF5386
      5EFF69AC69FF000000000000000000000000ECECECFF9E9E9EFFB7B7B7FFBEBE
      BEFFF2F2F2FFA7A7A7FF383838FF585858FFEFEFEFFFB9B9B9FFADADADFF9E9E
      9EFFECECECFF000000000000000000000000F2F2F2FFB9B9B9FFCCCCCCFFD2D2
      D2FFF6F6F6FFC0C0C0FF5D5D5DFF7E7E7EFFF4F4F4FFCECECEFFC5C5C5FFB9B9
      B9FFF2F2F2FF000000000000000000000000F8F8F8FFD9D9D9FFE4E4E4FFE7E7
      E7FFFAFAFAFFDDDDDDFF9A9A9AFFB3B3B3FFF9F9F9FFE5E5E5FFE0E0E0FFD9D9
      D9FFF8F8F8FF000000000000000000000000262626FF020202FFA7A7A7FF0000
      0000000000005E5E5EFF010101FF060606FFC6C6C6FF00000000006B00FF0015
      00FF345738FF000000000000000000000000525252FF111111FFC6C6C6FF0000
      0000000000008C8C8CFF0A0A0AFF1E1E1EFFDBDBDBFF00000000C6C6C6FF1111
      11FF535353FF000000000000000000000000787878FF2A2A2AFFD7D7D7FF0000
      000000000000ABABABFF1F1F1FFF3D3D3DFFE6E6E6FF00000000D7D7D7FF2A2A
      2AFF797979FF000000000000000000000000AFAFAFFF686868FFEAEAEAFF0000
      000000000000D1D1D1FF595959FF7D7D7DFFF2F2F2FF00000000EAEAEAFF6868
      68FFB0B0B0FF000000000000000000000000050505FF000000FF595959FF0000
      0000141414FF0E0E0EFF020202FF050505FF141414FF0000000031317DFF0005
      00FF162515FF000000000000000000000000181818FF020202FF888888FF0000
      0000393939FF2D2D2DFF111111FF191919FF393939FF00000000888888FF0202
      02FF181818FF000000000000000000000000353535FF0B0B0BFFA8A8A8FF0000
      00005E5E5EFF515151FF2A2A2AFF373737FF5E5E5EFF00000000A8A8A8FF0B0B
      0BFF353535FF000000000000000000000000757575FF363636FFCFCFCFFF0000
      00009B9B9BFF909090FF686868FF777777FF9B9B9BFF00000000CFCFCFFF3636
      36FF757575FF0000000000000000000000005E5E5EFF000000FF040404FF8989
      89FF121212FF6D6D9FFF00009FFF00009FFF000012FF000062FF00001BFF0003
      00FF005600FF0000000000000000000000008C8C8CFF000000FF171717FFB0B0
      B0FF040F12FF2F839FFF2F839FFF2F839FFF040F12FFADADADFF191919FF0101
      01FF8C8C8CFF000000000000000000000000ABABABFF060606FF343434FFC7C7
      C7FF051013FF2F839FFF2F839FFF2F839FFF051013FFC5C5C5FF373737FF0707
      07FFABABABFF000000000000000000000000D1D1D1FF292929FF747474FFE1E1
      E1FF182225FF2F839FFF2F839FFF2F839FFF182225FFE0E0E0FF777777FF2C2C
      2CFFD1D1D1FF000000000000000000000000DBDBDBFF5E5E5EFF6A6A6AFFD6D6
      D6FF040404FF20202FFF00002FFF00002FFF000004FFD6D6D6FF6D6D6DFF6161
      61FFDBDBDBFF000000000000000000000000E9E9E9FF8C8C8CFF979797FFE6E6
      E6FF000304FF0E272FFF0E272FFF0E272FFF000304FFE6E6E6FF999999FF8F8F
      8FFFE9E9E9FF000000000000000000000000F0F0F0FFABABABFFB4B4B4FFEEEE
      EEFF020506FF0E272FFF0E272FFF0E272FFF020506FFEEEEEEFFB5B5B5FFADAD
      ADFFF0F0F0FF000000000000000000000000F7F7F7FFD1D1D1FFD6D6D6FFF6F6
      F6FF191C1DFF0E272FFF0E272FFF0E272FFF191C1DFFF6F6F6FFD7D7D7FFD2D2
      D2FFF7F7F7FF00000000000000000000000000000000000080FF000080FF0000
      80FF000080FF00000000000080FF000080FF000080FF000080FF000000000000
      80FF000080FF000080FF000080FF0000000000000000000080FF000080FF0000
      80FF000080FF00000000000080FF000080FF000080FF000080FF000000000000
      80FF000080FF000080FF000080FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      00FF008000FF008000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000080FF0000FFFF0000
      FFFF000080FF00000000000080FF0000FFFF0000FFFF000080FF000000000000
      80FF0000FFFF0000FFFF000080FF0000000000000000000080FF0000FFFF0000
      FFFF000080FF00000000000080FF0000FFFF0000FFFF000080FF000000000000
      80FF0000FFFF0000FFFF000080FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      00FF67877BFF008000FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000080FF000080FF0000
      80FF000080FF000080FF000080FF0000000000000000000080FF000080FF0000
      80FF000080FF00000000000080FF000080FF000080FF000080FF000000000000
      80FF000080FF000080FF000080FF0000000000000000000080FF000080FF0000
      80FF000080FF00000000000080FF000080FF000080FF000080FF000000000000
      80FF000080FF000080FF000080FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008000FF008000FF0080
      00FF82B982FF078307FF008000FF008000FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000080FF004771FF0000
      AAFF0000AAFF0000AAFF000080FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4D4D4FF070707FF000000FF0000
      00FF171717FF4D4D4DFF070707FF000000FF000000FF008000FF55875BFF6AA5
      74FF6FB66FFF6EB270FF658867FF008000FFE2E2E2FF0C0C0CFF000000FF0000
      00FF191919FF737373FF0C0C0CFF000000FF000000FF000080FF000080FF0000
      80FF000080FF000080FF000080FF000000000000000000000000000000000001
      02FF000000FF000000FF01080AFF00000000000000FF000000FF000000FF000E
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000001FF00000000000000FF000000FF000000FF0001
      00FF000000000000000000000000000000004D4D4DFF091C22FF0C465AFF000F
      14FF000000FF07171CFF0E475AFF001319FF000000FF008000FF008000FF0080
      00FF73B876FF138913FF008000FF008000FF737373FF091C22FF0C465AFF000F
      14FF000000FF07171CFF0E475AFF001319FF000000FF061216FF10485BFF0017
      1FFF5A945EFF0000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF00000000000000FF00000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF00000000000000FF00000000000000000000
      00FF000000000000000000000000000000004B4B4BFF1C4E5FFF21BCF0FF002A
      39FF000000FF17414FFF26BFF1FF003547FF000000FF13343FFF2AC1F3FF0080
      00FF4D8C4EFF008000FF0000000000000000717171FF1C4E5FFF21BCF0FF002A
      39FF000000FF17414FFF26BFF1FF003547FF000000FF13343FFF2AC1F3FF0040
      55FF487947FF0000000000000000000000000000000000000000000000000004
      06FF000000FF000000FF04151BFF00000000000000FF000000FF000000FF000E
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000203FF00000000000000FF000000FF000000FF0001
      00FF000000000000000000000000000000004B4B4BFF1C4E5FFF21BCF0FF002A
      39FF000000FF17414FFF26BFF1FF003547FF000000FF13343FFF2AC1F3FF0080
      00FF008000FF008000FF0000000000000000717171FF1C4E5FFF21BCF0FF002A
      39FF000000FF17414FFF26BFF1FF003547FF000000FF13343FFF2AC1F3FF0040
      55FF006800FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B4B4BFF1C4E5FFF21BCEFFF002A
      39FF000000FF17414FFF25BFF1FF003547FF070707FF13343FFF2AC1F3FF0040
      55FF4B4B4BFF000000000000000000000000717171FF1C4E5FFF21BCEFFF002A
      39FF000000FF17414FFF25BFF1FF003547FF0C0C0CFF13343FFF2AC1F3FF0040
      55FF717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000004151BFF000000FF000000FF020507FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000203FF000000FF000000FF15130FFF2899BDFF0000
      0000000000000000000000000000000000004B4B4BFF1C4E5FFF21BCF0FF002A
      39FF4B4B4BFF17414FFF26BFF1FF003547FF004500FF13343FFF2AC1F3FF0040
      55FF004500FF000000000000000000000000717171FF1C4E5FFF21BCF0FF002A
      39FF717171FF17414FFF26BFF1FF003547FF006800FF13343FFF2AC1F3FF0040
      55FF006800FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF0000000000000000000080FF000080FF0000
      80FF000080FF000080FF000080FF000000000000000000000000000000000000
      00000000000000000000000000FF00000000072A07FF121E29FF4E4635FF2622
      5AFF000000000000000000000000000000004B4B4BFF1C4E5FFF36C7F7FF092F
      3CFF4B4B4BFF17414FFF39C8F7FF0B3B4BFF004700FF12333EFF3BC9F8FF0E47
      5AFF4C5F4CFF000000000000000000000000717171FF1C4E5FFF36C7F7FF092F
      3CFF717171FF17414FFF39C8F7FF0B3B4BFF006900FF113A39FF3BC9F8FF0E47
      5AFF748F74FF0000000000000000000000000000000000000000000000000000
      00000000000000000000020709FF000000FF000000FF000080FF0C249DFF0207
      B4FF1822C2FF022BADFF000080FF000000000000000000000000000000000000
      00000000000000000000000001FF000000FF030303FF85C9CFFF4CA2D2FF3941
      44FF5D566CFF0000000000000000000000004D4D4DFF07171CFF17404FFF040F
      12FF525252FF061317FF17414FFF061317FF208400FF041011FF17414FFF0717
      1CFF4A6748FF000000000000000000000000737373FF07171CFF1B404DFF060F
      11FF787878FF061317FF17414FFF071817FF2FBF00FF04220FFF17414FFF071A
      1CFF6E9A6CFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000080FF000080FF0000
      80FF000080FF000080FF000080FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000293A5BFF66CBFFFF1293
      E8FF274A5AFF574E5BFF0000000000000000DADADAFF626262FF838383FF8D8D
      8DFFE6E6E6FF6D6D6DFF001B00FF002C00FF007700FF005C00FF4D7E5FFF4672
      50FF66A766FF000000000000000000000000E6E6E6FF878787FFA4A4A4FFACAC
      ACFFEEEEEEFF919191FF004D00FF005A00FF007D00FF007300FF64A47BFF629D
      6FFF6CB16CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001D452FFFA6E4
      FFFF2798DAFF4E4635FF576E3BFF000000001A1A1AFF000000FF999999FF0000
      0000000000004D4D4DFF000000FF020202FFBCBCBCFF00000000006200FF0008
      00FF243C26FF000000000000000000000000383838FF060606FFB6B6B6FF0000
      000000000000737373FF030303FF0E0E0EFFD0D0D0FF00000000007500FF0034
      00FF4C7E51FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D2D
      2FFFDCC7B5FFC79E83FF4E4635FF00000000020202FF000000FF484848FF0000
      00000C0C0CFF070707FF000000FF020202FF0C0C0CFF00000000272765FF0001
      00FF0A1109FF0000000000000000000000000B0B0BFF000000FF6E6E6EFF0000
      0000222222FF191919FF060606FF0B0B0BFF222222FF000000003D3D9AFF001B
      00FF31512FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F402FFFDCC7D1FF3F3F7FFF000000004D4D4DFF000000FF010101FF7979
      79FF121212FF6D6D9FFF00009FFF00009FFF000012FF000056FF00000CFF0000
      00FF004600FF000000000000000000000000737373FF000000FF0A0A0AFF9B9B
      9BFF111212FF6D6D9FFF00009FFF00009FFF000112FF000070FF00003BFF0016
      00FF006900FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000404040FF919191FF00000000D4D4D4FF4D4D4DFF595959FFCFCF
      CFFF040404FF20202FFF00002FFF00002FFF000004FFCFCFCFFF5C5C5CFF5050
      50FFD4D4D4FF000000000000000000000000E2E2E2FF737373FF7F7F7FFFDEDE
      DEFF040404FF20202FFF00002FFF00002FFF000004FFDEDEDEFF818181FF7676
      76FFE2E2E2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001D1D1DFF000000FF0000
      00FF1D1D1DFF000000001D1D1DFF000000FF000000FF121211FF00000000000E
      00FF000000FF000000FF1D1D1DFF0000000000000000030303FF000000FF0000
      00FF030303FF00000000030303FF000000FF000000FF020201FF000000000001
      00FF000000FF000000FF030303FF0000000000000000000080FF000080FF0000
      80FF000080FF00000000000080FF000080FF000080FF000080FF000000000000
      80FF000080FF000080FF000080FF0000000000000000000000FF000000FF0000
      00FF000000FF00000000000000FF000000FF000000FF000000FF000000000000
      00FF000000FF000000FF000000FF0000000000000000000000FF000000000000
      0000000000FF00000000000000FF0000000000000000000000FF000000000000
      00FF0000000000000000000000FF0000000000000000000000FF000000000000
      0000000000FF00000000000000FF0000000000000000000000FF000000000000
      00FF0000000000000000000000FF0000000000000000000080FF0000FFFF0000
      FFFF000080FF00000000000080FF0000FFFF0000FFFF000080FF000000000000
      80FF0000FFFF0000FFFF000080FF0000000000000000000000FF000000000000
      0000000000FF00000000000000FF0000000000000000000000FF000000000000
      00FF0000000000000000000000FF00000000000000001D1D1DFF000000FF0000
      00FF1D1D1DFF000000001D1D1DFF000000FF000000FF000E00FF00000000000E
      00FF000000FF000000FF000E00FF0000000000000000030303FF000000FF0000
      00FF030303FF00000000030303FF000000FF000000FF000100FF000000000001
      00FF000000FF000000FF000100FF0000000000000000000080FF000080FF0000
      80FF000080FF00000000000080FF000080FF000080FF000080FF000000000000
      80FF000080FF000080FF000080FF00000000000000000F0F0FFF000000FF0000
      00FF1A1A1AFF000000000F0F0FFF000000FF000000FF000E00FF000000000B11
      0CFF000000FF000000FF070B0DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000201
      02FF000000FF000000FF0A0708FF000000000F0F0FFF000000FF000000FF000E
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF010000FF00000000010101FF000000FF000000FF0001
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF00000000000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF00000000000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF00000000000000FF00000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF00000000000000FF00000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF00000000000000FF00000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF00000000000000FF00000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000705
      06FF000000FF000000FF1D1516FF000000000F0F0FFF000000FF000000FF000E
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF030202FF00000000010101FF000000FF000000FF0001
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF00000000000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000705
      06FF000000FF000000FF1D1516FF000000000F0F0FFF000000FF000000FF0A07
      09FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      00FF008000FF008000FF00000000000000000000000000000000000000000000
      00000000000000000000008000FF008000FF008000FF008000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008000FF008000FF008000FF26631AFFC99698FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF000000FF020201FF000000000080
      00FF008000FF008000FF00000000000000000000000000000000000000000000
      00000000000000000000008000FF008000FF008000FF008000FF000000000080
      00FF8EAF8EFF008000FF00000000000000000000000000000000000000000000
      00000000000000000000008000FF39E500FF39E500FF008000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008000FF39E500FF247A07FF121E29FF4E4635FF5545
      3EFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF0000000000000000000000FF000000000080
      00FF597A8AFF008000FF00000000000000000000000000000000000000000000
      00000000000000000000008000FF39E500FF39E500FF008000FF008000FF0080
      00FF86BC84FF078307FF008000FF008000FF0000000000000000000000000000
      00000000000000000000008000FF008000FF008000FF008000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008000FF008000FF036403FF85C9CFFF4CA2D2FF3941
      44FF7A715EFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF000000FF008000FF008000FF0080
      00FF84BB85FF078307FF008000FF008000FF0000000000000000000000000000
      00000000000000000000008000FF008000FF008000FF008000FF72BB8CFF73B8
      83FF6FB66FFF72B571FFAFD6AFFF008000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000576869FF66CBFFFF1293
      E8FF274A5AFF978E7BFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008000FF72BB8CFF73B8
      83FF6FB66FFF70B370FF3F6677FF008000FF0000000000000000000000000000
      00000000000000000000000000000000000000000000008000FF008000FF0080
      00FF6EB675FF138913FF008000FF008000FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000080FF000080FF0000
      80FF000080FF000080FF000080FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001D2D4FFFA6E4
      FFFF2798DAFF4E4635FF574E5BFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008000FF008000FF0080
      00FF6EB675FF138913FF008000FF008000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      00FF6CB168FF008000FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000080FF4C4CBDFF0000
      ABFF0808B2FF5555FFFF000080FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D2D
      5AFFDCC7B5FFC79E83FF4E4635FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      00FF6CB168FF008000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      00FF008000FF008000FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000080FF000080FF0000
      80FF000080FF000080FF000080FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F2F4FFFDCC7D1FF3F3F7FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      00FF008000FF008000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080FFC0C0C0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFCFFFE3FFFFFF9FFF87FFE3FF81FF0F
      FF83FF80FF81FF07000100000001000300000000000700010000000300070001
      0000000300070001000400070007000100070007000700070007000700070007
      0007000700070007000700070007000718471847184718471047104710471047
      0007000700070007000700070007000784218421FFE3FFFF84218421FFE3FF81
      84218421FF80FF81FFFFFFFF00000001E10FE10F00000007ED6FED6F00030007
      E10FE10F00030007FFFFFFFF00070007FC3FFC1F00070007FD81FD0F00070007
      FC01FC0700070007FF81FF8300070007FFFFFFC118471847FFFFFFE110471047
      FFFFFFF100070007FFFFFFF900070007FFFF8421842184218421B5ADB5AD8421
      B5AD8421842184218421FFFFFFFFFFFFFFFFE10FE10FE10FE10FED6FED6FED6F
      ED6FE10FE10FE10FE10FFFFFFFFFFFFFFFE3FC3FFC1FFC23FC23FC3FFC0FFDA3
      FC00FC3FFC07FC00FC00FFFFFF83FF80FF80FF81FFC1FF80FFE3FF81FFE1FFE3
      FFE3FF81FFF1FFE3FFFFFFFFFFF9FFFF00000000000000000000000000000000
      000000000000}
  end
  object quer_elim_empresa: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Delete '
      'from GLO_EMPRESAS'
      'Where cons_empresa = :cons_empresa')
    Left = 10
    Top = 141
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_empresa'
        ParamType = ptInput
      end>
  end
  object quer_elim_planta: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Delete from'
      'GLO_PLANTAS'
      'Where cons_planta = :cons_planta')
    Left = 42
    Top = 141
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_planta'
        ParamType = ptInput
      end>
  end
  object quer_elim_plan_linea: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Delete '
      'from GLO_PLAN_LINEAS'
      'Where cons_plan_linea = :cons_plan_linea')
    Left = 74
    Top = 141
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_plan_linea'
        ParamType = ptInput
      end>
  end
  object quer_elim_line_seccion: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Delete'
      'from GLO_LINE_SECCIONES'
      'Where cons_line_seccion = :cons_line_Seccion')
    Left = 106
    Top = 141
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_line_Seccion'
        ParamType = ptInput
      end>
  end
  object acti_Ventana: TActionList
    Images = imag_ventana
    OnUpdate = acti_VentanaUpdate
    Left = 610
    Top = 101
    object acti_empr_nueva: TAction
      Category = 'Empresa'
      Caption = 'Nueva empresa'
      ImageIndex = 0
      OnExecute = boto_empr_nuevaClick
    end
    object acti_empr_modificar: TAction
      Category = 'Empresa'
      Caption = 'Modificar empresa'
      ImageIndex = 2
      OnExecute = boto_empr_modificarClick
    end
    object acti_empr_eliminar: TAction
      Category = 'Empresa'
      Caption = 'Eliminar empresa'
      ImageIndex = 1
      OnExecute = boto_empr_eliminarClick
    end
    object acti_plan_nueva: TAction
      Category = 'Plantas'
      Caption = 'Nueva planta'
      ImageIndex = 3
      OnExecute = acti_plan_nuevaExecute
    end
    object acti_plan_modificar: TAction
      Category = 'Plantas'
      Caption = 'Modificar planta'
      ImageIndex = 5
      OnExecute = acti_plan_modificarExecute
    end
    object acti_plan_eliminar: TAction
      Category = 'Plantas'
      Caption = 'Eliminar planta'
      ImageIndex = 4
      OnExecute = acti_plan_eliminarExecute
    end
    object acti_line_nueva: TAction
      Category = 'Lineas'
      Caption = 'Nueva línea'
      ImageIndex = 6
      OnExecute = acti_line_nuevaExecute
    end
    object acti_line_eliminar: TAction
      Category = 'Lineas'
      Caption = 'Eliminar línea'
      ImageIndex = 7
      OnExecute = acti_line_eliminarExecute
    end
    object acti_secc_nueva: TAction
      Category = 'Secciones'
      Caption = 'Nueva sección'
      ImageIndex = 9
      OnExecute = acti_secc_nuevaExecute
    end
    object acti_secc_eliminar: TAction
      Category = 'Secciones'
      Caption = 'Eliminar sección'
      ImageIndex = 10
      OnExecute = acti_secc_eliminarExecute
    end
  end
  object pop_grid: TTBXPopupMenu
    Images = imag_ventana
    Left = 866
    Top = 245
    object TBXItem13: TTBXItem
      Action = acti_empr_nueva
    end
    object TBXItem12: TTBXItem
      Action = acti_empr_modificar
    end
    object TBXItem11: TTBXItem
      Action = acti_empr_eliminar
    end
    object TBXSeparatorItem3: TTBXSeparatorItem
    end
    object TBXItem9: TTBXItem
      Action = acti_plan_nueva
    end
    object TBXItem8: TTBXItem
      Action = acti_plan_modificar
    end
    object TBXItem7: TTBXItem
      Action = acti_plan_eliminar
    end
    object TBXSeparatorItem2: TTBXSeparatorItem
    end
    object TBXItem6: TTBXItem
      Action = acti_line_nueva
    end
    object TBXItem4: TTBXItem
      Action = acti_line_eliminar
    end
    object TBXSeparatorItem1: TTBXSeparatorItem
    end
    object TBXItem3: TTBXItem
      Action = acti_secc_nueva
    end
    object TBXItem1: TTBXItem
      Action = acti_secc_eliminar
    end
  end
end

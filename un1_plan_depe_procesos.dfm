inherited fn1_plan_depe_procesos: Tfn1_plan_depe_procesos
  Left = 45
  Top = 93
  Width = 812
  Height = 570
  Caption = 'Dependencia de procesos'
  Color = clBtnFace
  Font.Name = 'MS Sans Serif'
  OldCreateOrder = True
  Position = poDefault
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 534
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    Visible = False
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
    TabOrder = 5
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    TabOrder = 7
    inherited padr_beve_1: TBevel
      Width = 509
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 533
    Width = 804
    TabOrder = 2
    inherited _LFecha_Creacion: TSCLDBLabel
      FontActive.Name = 'MS Sans Serif'
    end
    inherited _LUsuario: TSCLDBLabel
      FontActive.Name = 'MS Sans Serif'
    end
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
    Top = 535
    Width = 804
    TabOrder = 3
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
    TabOrder = 6
  end
  object PCPFrame1: TPCPFrame [8]
    Tag = 446
    Left = 0
    Top = 80
    Width = 193
    Height = 453
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
    Caption = 'Procesos disponibles'
    Titulo_Color = 16244694
    Boton_Visible = False
    BorderWidthIn = 4
    FlatBorder = True
    object grid: TSCLDBGrid
      Left = 7
      Top = 26
      Width = 179
      Height = 420
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_PROCESO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ArrowsColor = clHighlight
      AutoSearchColor = 4227327
      AutoSearchTextColor = clBlack
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = data_procesos
      Filter.Criteria = {00000000}
      GridLineColor = 14467501
      GroupPanelColor = 13265692
      GroupPanelFontColor = clWhite
      GroupNodeColor = 15982803
      GroupNodeTextColor = 8072450
      HeaderColor = 16578290
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = 8072450
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      HideFocusRect = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoMouseScroll, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowHeader = False
      object gridCONS_PROCESO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PROCESO'
      end
      object gridCODI_PROCESO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PROCESO'
      end
      object gridNOMB_PROCESO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PROCESO'
      end
    end
  end
  object PCPFrame2: TPCPFrame [9]
    Tag = 446
    Left = 193
    Top = 80
    Width = 351
    Height = 453
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
    Caption = 'Precedencia de procesos'
    Titulo_Color = 16244694
    Boton_Visible = False
    FlatBorder = True
    object scro: TScrollBox
      Left = 3
      Top = 22
      Width = 345
      Height = 428
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      ParentColor = False
      TabOrder = 1
      OnClick = scroClick
      OnDragDrop = scroDragDrop
      OnDragOver = scroDragOver
    end
  end
  object TBXDock1: TTBXDock [10]
    Left = 0
    Top = 54
    Width = 804
    Height = 26
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'TBXToolbar1'
      DockMode = dmCannotFloatOrChangeDocks
      DragHandleStyle = dhNone
      FullSize = True
      TabOrder = 0
      object TBXItem3: TTBXItem
        Action = acti_guardar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imagenesPCP
      end
      object TBXItem2: TTBXItem
        Action = acti_cancelar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object TBXItem1: TTBXItem
        Action = acti_limpiar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imagenesPCP
      end
    end
  end
  object grid_conectores: TSCLColumnGrid [11]
    Left = 544
    Top = 80
    Width = 260
    Height = 453
    Cursor = crDefault
    Align = alRight
    ColCount = 3
    Ctl3D = False
    DefaultRowHeight = 21
    FixedColor = 15582631
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 9
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
    FixedRowAlways = True
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    FloatFormat = '%.2f'
    WordWrap = False
    ColumnHeaders.Strings = (
      'Column 0'
      'Column 1'
      'Column 2')
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
        Header = 'Column 0'
        HeaderAlignment = taLeftJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Name = 'cons_origen'
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
        Header = 'Column 1'
        HeaderAlignment = taLeftJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Name = 'cons_destino'
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
        Header = 'Column 2'
        HeaderAlignment = taLeftJustify
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        MinSize = 0
        MaxSize = 0
        Name = 'nomb_conector'
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
        Width = 137
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
      50
      50
      137)
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_guardar
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_imprimir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_ayuda: TAction
      Enabled = False
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
    inherited padr_acti_eliminar: TDataSetDelete
      DataSource = data_ventana
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_xls: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_HTML: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited Variables: TSCLPropiedadesForm
    SoloLectura = False
  end
  object quer_procesos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PROCESO,'
      'CODI_PROCESO, NOMB_PROCESO'
      'FROM PCP_PROCESOS'
      'WHERE PLAN_DETALLADA = 1'
      'AND CONS_PROCESO > 0'
      'ORDER BY NOMB_PROCESO')
    Left = 16
    Top = 112
    object quer_procesosCONS_PROCESO: TIntegerField
      FieldName = 'CONS_PROCESO'
      Origin = 'SOFTCONF.PCP_PROCESOS.CONS_PROCESO'
    end
    object quer_procesosCODI_PROCESO: TStringField
      FieldName = 'CODI_PROCESO'
      Origin = 'SOFTCONF.PCP_PROCESOS.CODI_PROCESO'
      Size = 12
    end
    object quer_procesosNOMB_PROCESO: TStringField
      DisplayLabel = 'Proceso'
      FieldName = 'NOMB_PROCESO'
      Origin = 'SOFTCONF.PCP_PROCESOS.NOMB_PROCESO'
      Size = 60
    end
  end
  object data_procesos: TDataSource
    DataSet = quer_procesos
    Left = 44
    Top = 112
  end
  object quer_eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'DELETE'
      'FROM PCP_PLAN_DEPE_PROCESOS')
    Left = 200
    Top = 106
  end
  object quer_guardar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'INSERT INTO'
      'PCP_PLAN_DEPE_PROCESOS'
      '(CONS_PROCESO, CONS_PROC_SIGUIENTE)'
      'VALUES'
      '(:CONS_PROCESO, :CONS_PROC_SIGUIENTE)')
    Left = 228
    Top = 106
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROCESO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PROC_SIGUIENTE'
        ParamType = ptInput
      end>
  end
  object quer_actu_procesos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'UPDATE PCP_PROCESOS'
      'SET IZQUIERDA = :IZQUIERDA,'
      'ARRIBA = :ARRIBA,'
      'SECU_NIVEL = :SECU_NIVEL'
      'WHERE CONS_PROCESO = :CONS_PROCESO')
    Left = 215
    Top = 134
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IZQUIERDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ARRIBA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SECU_NIVEL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PROCESO'
        ParamType = ptInput
      end>
  end
  object quer_sele_procesos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT DISTINCT CONS_PROCESO, '
      'NOMB_PROCESO, ARRIBA, IZQUIERDA,'
      'SECU_NIVEL'
      'FROM PCP_PROCESOS'
      'WHERE CONS_PROCESO IN'
      '(SELECT DISTINCT CONS_PROCESO'
      ' FROM PCP_PLAN_DEPE_PROCESOS'
      ' ORDER BY CONS_PROCESO)'
      'OR'
      '  CONS_PROCESO IN'
      '(SELECT DISTINCT CONS_PROC_SIGUIENTE'
      ' FROM PCP_PLAN_DEPE_PROCESOS'
      ' ORDER BY CONS_PROCESO)'
      'ORDER BY CONS_PROCESO')
    Left = 256
    Top = 106
  end
  object quer_sele_Conectores: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PROCESO, CONS_PROC_SIGUIENTE'
      'FROM PCP_PLAN_DEPE_PROCESOS'
      'ORDER BY CONS_PROCESO')
    Left = 243
    Top = 134
  end
  object myTabla_guardar: TRxMemoryData
    FieldDefs = <
      item
        Name = 'myField'
        DataType = ftInteger
      end>
    Left = 250
    Top = 5
    object myTabla_guardarmyField: TIntegerField
      FieldName = 'myField'
    end
  end
  object ActionList1: TActionList
    Images = _fMDI.imagenesPCP
    OnUpdate = ActionList1Update
    Left = 230
    Top = 162
    object acti_guardar: TAction
      Caption = 'Guardar'
      ImageIndex = 5
      OnExecute = doGuardar
    end
    object acti_cancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 8
      OnExecute = acti_cancelarExecute
    end
    object acti_limpiar: TAction
      Caption = 'Limpiar'
      ImageIndex = 36
      OnExecute = doLimpiar
    end
  end
end

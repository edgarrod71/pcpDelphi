object ffra_edit_sql: Tffra_edit_sql
  Left = 0
  Top = 0
  Width = 565
  Height = 390
  TabOrder = 0
  object TBXDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 565
    Height = 26
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      CloseButton = False
      DockMode = dmCannotFloatOrChangeDocks
      DragHandleStyle = dhNone
      FullSize = True
      Images = _fMDI.imagenesPCP
      TabOrder = 0
      object boto_dise_visual: TTBXItem
        Caption = 'Diseño visual SQL'
        DisplayMode = nbdmImageAndText
        ImageIndex = 99
        OnClick = boto_dise_visualClick
      end
      object boto_vali_consulta: TTBXItem
        Caption = 'Validar consulta'
        DisplayMode = nbdmImageAndText
        ImageIndex = 100
        OnClick = boto_vali_consultaClick
      end
    end
  end
  object MemoSQL: TJvWideHLEditor
    Left = 0
    Top = 26
    Width = 565
    Height = 364
    Cursor = crIBeam
    GutterWidth = 0
    GutterColor = 16308164
    RightMarginColor = clSilver
    Completion.ItemHeight = 13
    Completion.Interval = 800
    Completion.ListBoxStyle = lbStandard
    Completion.CRLF = '/n'
    Completion.Separator = '='
    TabStops = '3 5'
    BracketHighlighting.Active = True
    BracketHighlighting.BorderColor = clRed
    BracketHighlighting.WordPairs.Strings = (
      '()'
      '[]'
      #39#39
      '""')
    BracketHighlighting.StringEscape = #39#39
    SelForeColor = clHighlightText
    SelBackColor = clHighlight
    OnChange = MemoSQLChange
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabStop = True
    UseDockManager = False
    Highlighter = hlSql
    Colors.Comment.Style = [fsItalic]
    Colors.Comment.ForeColor = clOlive
    Colors.Comment.BackColor = clWindow
    Colors.Number.ForeColor = clNavy
    Colors.Number.BackColor = clWindow
    Colors.Strings.ForeColor = clPurple
    Colors.Strings.BackColor = clWindow
    Colors.Symbol.ForeColor = clBlue
    Colors.Symbol.BackColor = clWindow
    Colors.Reserved.Style = [fsBold]
    Colors.Reserved.ForeColor = 16744448
    Colors.Reserved.BackColor = clWindow
    Colors.Identifier.ForeColor = clBlack
    Colors.Identifier.BackColor = clWindow
    Colors.Preproc.ForeColor = clGreen
    Colors.Preproc.BackColor = clWindow
    Colors.FunctionCall.ForeColor = 12615680
    Colors.FunctionCall.BackColor = clWindow
    Colors.Declaration.ForeColor = clWindowText
    Colors.Declaration.BackColor = clWindow
    Colors.Statement.Style = [fsBold]
    Colors.Statement.ForeColor = 16744448
    Colors.Statement.BackColor = clWindow
    Colors.PlainText.ForeColor = clWindowText
    Colors.PlainText.BackColor = clWindow
    LongTokens = False
  end
  object OQBDEEngine: TOQBEngineBDE
    DatabaseName = 'data_base_pcp'
    ShowSystemTables = True
    Left = 54
    Top = 33
  end
  object OQDLG: TOQBuilderDialog
    OQBEngine = OQBDEEngine
    ShowButtons = [bRunQuery]
    Left = 26
    Top = 33
  end
  object auxi_query: TQuery
    Left = 26
    Top = 61
  end
end

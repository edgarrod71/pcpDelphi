object ffra_edit_parametrosSQL: Tffra_edit_parametrosSQL
  Left = 0
  Top = 0
  Width = 520
  Height = 352
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object dfsSplitter1: TdfsSplitter
    Left = 0
    Top = 142
    Width = 520
    Height = 10
    Cursor = crVSplit
    Align = alBottom
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object Panel1: TPanel
    Left = 0
    Top = 152
    Width = 520
    Height = 200
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object pane_info: TJvNavPanelDivider
      Left = 0
      Top = 0
      Width = 520
      Height = 18
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentStyleManager = False
    end
    object page: TSCLPageControl
      Left = 0
      Top = 18
      Width = 520
      Height = 182
      ActivePage = page_busqueda
      Align = alClient
      BoldCurrentTab = True
      Color = 16578290
      FlatColor = 10435335
      Margin = 5
      ParentColor = False
      TabColors.Shadow = 15582631
      TabColors.Unselected = 16578290
      TabIndex = 1
      TabOrder = 0
      Transparent = True
      FixedDimension = 19
      object page_Lista: TSCLTabSheet
        Color = 16578290
        Caption = 'page_Lista'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 514
          Height = 20
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderWidth = 4
          Caption = 'Valores de la lista:'
          TabOrder = 0
        end
        object lista: TdxDBMemo
          Left = 0
          Top = 20
          Width = 514
          Align = alClient
          TabOrder = 1
          DataField = 'lista'
          DataSource = data_parametros
          Height = 136
        end
      end
      object page_busqueda: TSCLTabSheet
        Color = 16578290
        Caption = 'page_busqueda'
        object pageSQL: TSCLPageControl
          Left = 0
          Top = 0
          Width = 516
          Height = 159
          ActivePage = pageSQL_edit
          Align = alClient
          BoldCurrentTab = True
          Color = 16578290
          FlatColor = 10435335
          Margin = 5
          ParentColor = False
          TabColors.Shadow = 15582631
          TabColors.Unselected = 16578290
          TabIndex = 0
          TabOrder = 0
          Transparent = True
          FixedDimension = 19
          object pageSQL_edit: TSCLTabSheet
            Color = 16578290
            Caption = 'SQL'
            object TBXDock2: TTBXDock
              Left = 0
              Top = 0
              Width = 512
              Height = 26
              object TBXToolbar2: TTBXToolbar
                Left = 0
                Top = 0
                BorderStyle = bsNone
                DockMode = dmCannotFloatOrChangeDocks
                DragHandleStyle = dhDouble
                FullSize = True
                TabOrder = 0
                object boto_SQL_asistente: TTBXItem
                  Caption = 'Diseño de la consulta...'
                  DisplayMode = nbdmImageAndText
                  ImageIndex = 99
                  Images = _fMDI.imagenesPCP
                  OnClick = boto_SQL_asistenteClick
                end
                object TBXSeparatorItem3: TTBXSeparatorItem
                end
                object boto_SQL_Validar: TTBXItem
                  Caption = 'Validar consulta'
                  DisplayMode = nbdmImageAndText
                  ImageIndex = 100
                  Images = _fMDI.imagenesPCP
                  OnClick = boto_SQL_ValidarClick
                end
              end
            end
            object Panel4: TPanel
              Left = 0
              Top = 26
              Width = 512
              Height = 28
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              Visible = False
              object Label1: TLabel
                Left = 6
                Top = 6
                Width = 72
                Height = 13
                Caption = 'Base de datos:'
              end
              object comb_base_Datos: TPCPLookUpComboEdit
                Left = 81
                Top = 3
                Width = 288
                Height = 21
                DropDownCount = 8
                KeyField = 'name'
                ListField = 'name'
                TabOrder = 0
                DirectInput = False
              end
            end
            object MemoSQL: TJvWideHLEditor
              Left = 0
              Top = 54
              Width = 512
              Height = 82
              Cursor = crIBeam
              GutterWidth = 20
              GutterColor = 16308164
              RightMarginColor = clSilver
              Completion.ItemHeight = 13
              Completion.Interval = 800
              Completion.ListBoxStyle = lbStandard
              Completion.CRLF = '/n'
              Completion.Separator = '='
              TabStops = '3 5'
              SmartTab = False
              KeepTrailingBlanks = True
              BracketHighlighting.Active = True
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
            end
          end
          object pageSQL_Opciones: TSCLTabSheet
            Color = 16578290
            Caption = 'Opciones'
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 512
              Height = 89
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object SCLDBLabel3: TSCLDBLabel
                Left = 8
                Top = 8
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
                Caption = 'Campo llave:'
                Transparent = True
                ColorRequerido = clRed
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel4: TSCLDBLabel
                Left = 8
                Top = 28
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
                Caption = 'Campo de lista:'
                Transparent = True
                ColorRequerido = clRed
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel5: TSCLDBLabel
                Left = 8
                Top = 56
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
                Caption = 'Base de datos:'
                Transparent = True
                ColorRequerido = clRed
                ColorNoRequerido = clWindowText
              end
              object edit_camp_llave: TdxDBButtonEdit
                Left = 112
                Top = 8
                Width = 225
                Style.BorderColor = clBtnShadow
                Style.BorderStyle = xbsThick
                Style.ButtonStyle = btsHotFlat
                TabOrder = 0
                DataField = 'camp_busqueda'
                DataSource = data_parametros
                Buttons = <
                  item
                    Default = True
                  end>
                OnButtonClick = edit_camp_llaveButtonClick
                ExistButtons = True
              end
              object edit_camp_busqueda: TdxDBButtonEdit
                Left = 112
                Top = 28
                Width = 225
                Style.BorderColor = clBtnShadow
                Style.BorderStyle = xbsThick
                Style.ButtonStyle = btsHotFlat
                TabOrder = 1
                DataField = 'camp_lista'
                DataSource = data_parametros
                Buttons = <
                  item
                    Default = True
                  end>
                OnButtonClick = edit_camp_busquedaButtonClick
                ExistButtons = True
              end
              object edit_base_datos: TdxDBEdit
                Left = 112
                Top = 56
                Width = 225
                Enabled = False
                Style.BorderColor = clBtnShadow
                Style.BorderStyle = xbsThick
                TabOrder = 2
                DataField = 'data_base_name'
                DataSource = data_parametros
              end
            end
          end
          object pageSQL_VistaPrevia: TSCLTabSheet
            Color = 16578290
            TabVisible = False
            Caption = 'Vista previa'
            object grid_vist_previa: TdxDBGrid
              Left = 0
              Top = 0
              Width = 512
              Height = 128
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              DefaultFields = True
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              Filter.Criteria = {00000000}
              LookAndFeel = lfFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
            end
          end
        end
      end
      object page_no_mas: TSCLTabSheet
        Color = 16578290
        Caption = 'NA'
        object pane_info_na: TPanel
          Left = 0
          Top = 0
          Width = 514
          Height = 28
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Este tipo de dato no tiene opciones adicionales.'
          TabOrder = 0
        end
      end
    end
  end
  object Grid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 520
    Height = 142
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'nomb_campo'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = data_parametros
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    OnChangeNode = GridChangeNode
    OnEdited = GridEdited
    object Gridide: TdxDBGridMaskColumn
      Visible = False
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ide'
    end
    object Gridnomb_campo: TdxDBGridMaskColumn
      Width = 87
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nomb_campo'
    end
    object Gridtext_campo: TdxDBGridMaskColumn
      Width = 182
      BandIndex = 0
      RowIndex = 0
      FieldName = 'text_campo'
    end
    object Gridtipo_campo: TdxDBGridPickColumn
      Width = 148
      BandIndex = 0
      RowIndex = 0
      FieldName = 'tipo_campo'
      DropDownListStyle = True
    end
    object GridColumnrequerido: TdxDBGridCheckColumn
      Caption = 'Requerido'
      Width = 61
      BandIndex = 0
      RowIndex = 0
      FieldName = 'requerido'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object data_parametros: TDataSource
    DataSet = tabl_parametros
    Left = 42
    Top = 321
  end
  object quer_parametros: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM PCP_CONF_OBJE_PARAMETROS'
      'WHERE CONS_CONF_OBJETO = :CONS_CONF_OBJETO'
      'ORDER BY CONS_CONF_OBJE_PARAMETRO')
    Left = 40
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_CONF_OBJETO'
        ParamType = ptInput
      end>
  end
  object quer_auxiliar: TQuery
    DatabaseName = 'data_base_pcp'
    Left = 8
    Top = 280
  end
  object tabl_parametros: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'ide'
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 6
    Top = 321
    object tabl_parametroside: TIntegerField
      FieldName = 'ide'
      Required = True
    end
    object tabl_parametrosnomb_campo: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'nomb_campo'
      Required = True
      Size = 31
    end
    object tabl_parametrostext_campo: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'text_campo'
      Required = True
      Size = 30
    end
    object tabl_parametrostipo_campo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo_campo'
      Required = True
      Size = 60
    end
    object tabl_parametrosrequerido: TBooleanField
      FieldName = 'requerido'
    end
    object tabl_parametroslista: TStringField
      DisplayWidth = 1000
      FieldName = 'lista'
      Size = 1000
    end
    object tabl_parametrostext_SQL: TStringField
      FieldName = 'text_SQL'
      Size = 1000
    end
    object tabl_parametrosdata_base_name: TStringField
      FieldName = 'data_base_name'
      Size = 60
    end
    object tabl_parametroscamp_busqueda: TStringField
      FieldName = 'camp_busqueda'
      Size = 60
    end
    object tabl_parametroscamp_lista: TStringField
      FieldName = 'camp_lista'
      Size = 60
    end
  end
end

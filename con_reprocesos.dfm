object fcon_reprocesos: Tfcon_reprocesos
  Left = 58
  Top = 131
  Width = 678
  Height = 457
  Caption = 'Consulta de Reprocesos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wDetalle: TToolWindow97
    Left = 40
    Top = 16
    Caption = 'Detalle de reprocesos'
    CloseButton = False
    ClientAreaHeight = 233
    ClientAreaWidth = 441
    TabOrder = 2
    Visible = False
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 441
      Height = 202
      Align = alClient
      BorderWidth = 2
      TabOrder = 0
      object PCPInfoPanel2: TPCPInfoPanel
        Left = 3
        Top = 3
        Width = 435
        Height = 20
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 5
        Caption = 'Tiquetes reportados'
        Color = clBtnShadow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 3
        Top = 23
        Width = 435
        Height = 176
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 1
        object sohoDBGrid1: TsohoDBGrid
          Left = 5
          Top = 5
          Width = 425
          Height = 166
          Align = alClient
          DataSource = dsdetalle
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = sohoDBGrid1KeyDown
          KeyOptions = [dgAllowDelete, dgAllowInsert, dgEnterToTab]
          KeyField = 'Id'
          StriplyColor = 14540253
          MarkedColor = 14540253
          MarkedFont.Charset = DEFAULT_CHARSET
          MarkedFont.Color = clBlack
          MarkedFont.Height = -11
          MarkedFont.Name = 'MS Sans Serif'
          MarkedFont.Style = []
          RowSelect = True
          RowColor = 14540253
          RowFont.Charset = DEFAULT_CHARSET
          RowFont.Color = clWindowText
          RowFont.Height = -11
          RowFont.Name = 'MS Sans Serif'
          RowFont.Style = []
          SelectOptions = []
          SelectKey = 0
          Columns = <
            item
              Expanded = False
              FieldName = 'cod_operaria'
              Title.Caption = 'Código'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nombre'
              Title.Caption = 'Operaria'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unidades'
              Title.Caption = 'Unidades'
              Visible = True
            end>
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 202
      Width = 441
      Height = 31
      Align = alBottom
      TabOrder = 1
      object bot_cer_detalles: TPCPButton
        Left = 2
        Top = 3
        Width = 87
        Height = 25
        Cursor = crHandPoint
        Caption = 'C&errar'
        OnClick = bot_cer_detallesClick
      end
    end
  end
  object Notebook1: TNotebook
    Left = 0
    Top = 26
    Width = 670
    Height = 373
    Align = alClient
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Consulta por planta y sección'
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 670
        Height = 105
        Align = alTop
        BorderWidth = 2
        TabOrder = 0
        object Label5: TLabel
          Left = 16
          Top = 32
          Width = 30
          Height = 13
          Caption = 'Planta'
        end
        object Label6: TLabel
          Left = 280
          Top = 32
          Width = 39
          Height = 13
          Caption = 'Sección'
        end
        object Label7: TLabel
          Left = 9
          Top = 56
          Width = 36
          Height = 13
          Caption = 'F.Inicial'
        end
        object Label8: TLabel
          Left = 284
          Top = 56
          Width = 34
          Height = 13
          Caption = 'F. Final'
        end
        object Label9: TLabel
          Left = 22
          Top = 82
          Width = 25
          Height = 13
          Caption = 'Corte'
        end
        object Label10: TLabel
          Left = 294
          Top = 80
          Width = 19
          Height = 13
          Caption = 'Año'
        end
        object PCPInfoPanel3: TPCPInfoPanel
          Left = 3
          Top = 3
          Width = 664
          Height = 20
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderWidth = 5
          Caption = 'Parámetros de la consulta'
          Color = clBtnShadow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edi_cod_planta_1: TEdit
          Left = 51
          Top = 29
          Width = 62
          Height = 21
          TabOrder = 1
          OnChange = edi_cod_planta_1Change
          OnKeyDown = edi_cod_planta_1KeyDown
        end
        object edi_des_planta_1: TEdit
          Left = 115
          Top = 29
          Width = 158
          Height = 21
          TabStop = False
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 2
        end
        object edi_cod_seccion_1: TEdit
          Left = 323
          Top = 29
          Width = 62
          Height = 21
          TabOrder = 3
          OnChange = edi_cod_seccion_1Change
          OnKeyDown = edi_cod_seccion_1KeyDown
        end
        object edi_des_seccion_1: TEdit
          Left = 387
          Top = 29
          Width = 158
          Height = 21
          TabStop = False
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 4
        end
        object com_fec_inicial_1: TDateTimePicker
          Left = 51
          Top = 53
          Width = 223
          Height = 21
          CalAlignment = dtaLeft
          Date = 37450.6042991898
          Time = 37450.6042991898
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 5
        end
        object com_fec_final_1: TDateTimePicker
          Left = 323
          Top = 53
          Width = 223
          Height = 21
          CalAlignment = dtaLeft
          Date = 37450.6042991898
          Time = 37450.6042991898
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 6
        end
        object edi_ofn_1: TEdit
          Left = 50
          Top = 78
          Width = 111
          Height = 21
          TabOrder = 7
          OnExit = edi_ofn_1Exit
        end
        object edi_referencia_1: TEdit
          Left = 163
          Top = 78
          Width = 111
          Height = 21
          TabStop = False
          ReadOnly = True
          TabOrder = 8
        end
        object edi_ano: TdxCurrencyEditPCP
          Left = 321
          Top = 77
          Width = 56
          TabOrder = 9
          Alignment = taRightJustify
          DisplayFormat = '0'
          Value = 2003
          StoredValues = 1
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 105
        Width = 670
        Height = 268
        Align = alClient
        BorderWidth = 2
        TabOrder = 1
        object not_1: TNotebook
          Left = 3
          Top = 3
          Width = 664
          Height = 262
          Align = alClient
          PageIndex = 1
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'UnCorte'
            object gri_1_1: TAdvStringGrid
              Left = 0
              Top = 0
              Width = 664
              Height = 262
              Cursor = crDefault
              Align = alClient
              ColCount = 3
              Ctl3D = True
              DefaultRowHeight = 17
              FixedCols = 0
              RowCount = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goRowSelect]
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 0
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'MS Sans Serif'
              ActiveCellFont.Style = [fsBold]
              AutoNumAlign = True
              EnhRowColMove = False
              FloatingFooter.FooterStyle = fsColumnPreview
              ControlLook.ControlStyle = csClassic
              SearchFooter.FindNextCaption = 'Find next'
              SearchFooter.FindPrevCaption = 'Find previous'
              SearchFooter.HighLightCaption = 'Highlight'
              SearchFooter.HintClose = 'Close'
              SearchFooter.HintFindNext = 'Find next occurence'
              SearchFooter.HintFindPrev = 'Find previous occurence'
              SearchFooter.HintHighlight = 'Highlight occurences'
              SearchFooter.MatchCaseCaption = 'Match case'
              SelectionColor = 13347213
              SelectionTextColor = clHighlightText
              PrintSettings.FooterSize = 200
              PrintSettings.HeaderSize = 200
              PrintSettings.Date = ppTopRight
              PrintSettings.DateFormat = 'dd/mm/yyyy'
              PrintSettings.Title = ppTopLeft
              PrintSettings.TitleLines.Strings = (
                'Manufacturas Eliot')
              PrintSettings.Font.Charset = ANSI_CHARSET
              PrintSettings.Font.Color = clWindowText
              PrintSettings.Font.Height = -11
              PrintSettings.Font.Name = 'Tahoma'
              PrintSettings.Font.Style = []
              PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
              PrintSettings.FixedFont.Color = clWindowText
              PrintSettings.FixedFont.Height = -11
              PrintSettings.FixedFont.Name = 'MS Sans Serif'
              PrintSettings.FixedFont.Style = []
              PrintSettings.HeaderFont.Charset = ANSI_CHARSET
              PrintSettings.HeaderFont.Color = clWindowText
              PrintSettings.HeaderFont.Height = -15
              PrintSettings.HeaderFont.Name = 'Tahoma'
              PrintSettings.HeaderFont.Style = [fsBold]
              PrintSettings.FooterFont.Charset = ANSI_CHARSET
              PrintSettings.FooterFont.Color = clWindowText
              PrintSettings.FooterFont.Height = -11
              PrintSettings.FooterFont.Name = 'Tahoma'
              PrintSettings.FooterFont.Style = []
              PrintSettings.Centered = False
              PrintSettings.RepeatFixedRows = True
              PrintSettings.LeftSize = 200
              PrintSettings.RightSize = 200
              PrintSettings.PageNumSep = '/'
              CellNode.ShowTree = False
              CellNode.TreeColor = clSilver
              MouseActions.RowSelect = True
              MouseActions.SizeFixedCol = True
              ScrollWidth = 16
              FixedColWidth = 113
              FixedRowHeight = 17
              FixedRowAlways = True
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = []
              FloatFormat = '%.2f'
              WordWrap = False
              ColumnHeaders.Strings = (
                'Código'
                'Operaria'
                'Unidades')
              Filter = <>
              Version = '3.3.0.4'
              ColWidths = (
                113
                217
                64)
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'VariosCortes'
            object gri_1_2: TAdvStringGrid
              Left = 0
              Top = 0
              Width = 664
              Height = 262
              Cursor = crDefault
              Align = alClient
              ColCount = 3
              Ctl3D = True
              DefaultRowHeight = 17
              FixedCols = 0
              RowCount = 1
              FixedRows = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goRowSelect]
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 0
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'MS Sans Serif'
              ActiveCellFont.Style = [fsBold]
              AutoNumAlign = True
              VAlignment = vtaCenter
              EnhRowColMove = False
              FloatingFooter.FooterStyle = fsColumnPreview
              ControlLook.ControlStyle = csClassic
              SearchFooter.FindNextCaption = 'Find next'
              SearchFooter.FindPrevCaption = 'Find previous'
              SearchFooter.HighLightCaption = 'Highlight'
              SearchFooter.HintClose = 'Close'
              SearchFooter.HintFindNext = 'Find next occurence'
              SearchFooter.HintFindPrev = 'Find previous occurence'
              SearchFooter.HintHighlight = 'Highlight occurences'
              SearchFooter.MatchCaseCaption = 'Match case'
              SelectionColor = 13347213
              SelectionTextColor = clHighlightText
              PrintSettings.FooterSize = 200
              PrintSettings.HeaderSize = 200
              PrintSettings.Date = ppTopRight
              PrintSettings.DateFormat = 'dd/mm/yyyy'
              PrintSettings.Title = ppTopLeft
              PrintSettings.TitleLines.Strings = (
                'Manufacturas Eliot')
              PrintSettings.Font.Charset = ANSI_CHARSET
              PrintSettings.Font.Color = clWindowText
              PrintSettings.Font.Height = -11
              PrintSettings.Font.Name = 'Tahoma'
              PrintSettings.Font.Style = []
              PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
              PrintSettings.FixedFont.Color = clWindowText
              PrintSettings.FixedFont.Height = -11
              PrintSettings.FixedFont.Name = 'MS Sans Serif'
              PrintSettings.FixedFont.Style = []
              PrintSettings.HeaderFont.Charset = ANSI_CHARSET
              PrintSettings.HeaderFont.Color = clWindowText
              PrintSettings.HeaderFont.Height = -15
              PrintSettings.HeaderFont.Name = 'Tahoma'
              PrintSettings.HeaderFont.Style = [fsBold]
              PrintSettings.FooterFont.Charset = ANSI_CHARSET
              PrintSettings.FooterFont.Color = clWindowText
              PrintSettings.FooterFont.Height = -11
              PrintSettings.FooterFont.Name = 'Tahoma'
              PrintSettings.FooterFont.Style = []
              PrintSettings.Centered = False
              PrintSettings.RepeatFixedRows = True
              PrintSettings.LeftSize = 200
              PrintSettings.RightSize = 200
              PrintSettings.PageNumSep = '/'
              CellNode.ShowTree = False
              CellNode.TreeColor = clSilver
              MouseActions.RowSelect = True
              MouseActions.SizeFixedCol = True
              ScrollWidth = 16
              FixedColWidth = 113
              FixedRowHeight = 17
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = []
              FloatFormat = '%.2f'
              WordWrap = False
              Filter = <>
              Version = '3.3.0.4'
              ColWidths = (
                113
                217
                64)
            end
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Por orden y fecha'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 670
        Height = 78
        Align = alTop
        BorderWidth = 2
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 32
          Width = 30
          Height = 13
          Caption = 'Planta'
        end
        object Label2: TLabel
          Left = 280
          Top = 32
          Width = 39
          Height = 13
          Caption = 'Sección'
        end
        object Label3: TLabel
          Left = 9
          Top = 56
          Width = 36
          Height = 13
          Caption = 'F.Inicial'
        end
        object Label4: TLabel
          Left = 284
          Top = 56
          Width = 34
          Height = 13
          Caption = 'F. Final'
        end
        object PCPInfoPanel1: TPCPInfoPanel
          Left = 3
          Top = 3
          Width = 664
          Height = 20
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderWidth = 5
          Caption = 'Parámetros de la consulta'
          Color = clBtnShadow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edi_cod_planta: TEdit
          Left = 51
          Top = 29
          Width = 62
          Height = 21
          TabOrder = 1
          OnChange = edi_cod_plantaChange
          OnKeyDown = edi_cod_plantaKeyDown
        end
        object edi_planta: TEdit
          Left = 115
          Top = 29
          Width = 158
          Height = 21
          TabStop = False
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 2
        end
        object edi_cod_seccion: TEdit
          Left = 323
          Top = 29
          Width = 62
          Height = 21
          TabOrder = 3
          OnChange = edi_cod_seccionChange
          OnKeyDown = edi_cod_seccionKeyDown
        end
        object edi_seccion: TEdit
          Left = 387
          Top = 29
          Width = 158
          Height = 21
          TabStop = False
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 4
        end
        object edi_fec_inicial: TDateTimePicker
          Left = 51
          Top = 53
          Width = 223
          Height = 21
          CalAlignment = dtaLeft
          Date = 37450.6042991898
          Time = 37450.6042991898
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 5
        end
        object edi_fec_final: TDateTimePicker
          Left = 323
          Top = 53
          Width = 223
          Height = 21
          CalAlignment = dtaLeft
          Date = 37450.6042991898
          Time = 37450.6042991898
          DateFormat = dfLong
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 6
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 78
        Width = 670
        Height = 295
        Align = alClient
        BorderWidth = 2
        TabOrder = 1
        object Grid: TsohoStringGrid
          Left = 3
          Top = 3
          Width = 664
          Height = 289
          Align = alClient
          DefaultColWidth = 35
          DefaultRowHeight = 17
          FixedCols = 2
          Options = [goVertLine, goHorzLine]
          TabOrder = 0
          OnDblClick = GridDblClick
          FixShadow = clBtnShadow
          SelectFont.Charset = DEFAULT_CHARSET
          SelectFont.Color = clWindowText
          SelectFont.Height = -11
          SelectFont.Name = 'MS Sans Serif'
          SelectFont.Style = []
          SelectColor = clWindow
          SelectRow = False
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'MS Sans Serif'
          FixedFont.Style = []
          OnCalcCellColors = GridCalcCellColors
          ColWidths = (
            0
            115
            35
            35
            35)
          RowHeights = (
            17
            17
            17
            15
            17)
          GridCells = (
            (
              ''
              ''
              ''
              ''
              '')
            (
              'Orden / Referencia'
              ''
              ''
              ''
              '')
            (
              ''
              ''
              ''
              ''
              '')
            (
              ''
              ''
              ''
              ''
              '')
            (
              ''
              ''
              ''
              ''
              ''))
          ColAligns = (
            0
            0
            0
            0
            0)
        end
      end
    end
  end
  object sohoTabSet1: TsohoTabSet
    Left = 0
    Top = 0
    Width = 670
    Height = 26
    Color = 14540253
    ParentColor = False
    TabOrder = 1
    TabsKind = tkHorizontal
    ParentTabsColor = False
    TabIndex = 0
    Tabs.Strings = (
      'Consulta por planta y sección'
      'Por orden y fecha')
    NoteBook = Notebook1
    Shadow = clBlack
    TabEnabled = {0C51310900000000}
  end
  object Panel6: TPanel
    Left = 0
    Top = 399
    Width = 670
    Height = 31
    Align = alBottom
    TabOrder = 3
    object PCPButton1: TPCPButton
      Left = 4
      Top = 3
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Caption = '&Actualizar'
      OnClick = PCPButton1Click
    end
    object PCPButton2: TPCPButton
      Left = 104
      Top = 3
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Caption = 'Imprimir'
      OnClick = PCPButton2Click
    end
    object PCPButton3: TPCPButton
      Left = 203
      Top = 3
      Width = 158
      Height = 25
      Cursor = crHandPoint
      Caption = 'Reporte por persona'
      OnClick = PCPButton3Click
    end
    object Panel7: TPanel
      Left = 579
      Top = 1
      Width = 90
      Height = 29
      Align = alRight
      BevelOuter = bvNone
      Caption = 'C&errar'
      TabOrder = 0
      object PCPButton4: TPCPButton
        Left = 2
        Top = 2
        Width = 86
        Height = 23
        Cursor = crHandPoint
        Caption = 'C&errar'
        OnClick = PCPButton4Click
      end
    end
  end
  object qyConsulta: TQuery
    DatabaseName = 'I_PCPDATA'
    Left = 48
    Top = 176
  end
  object qySecciones: TQuery
    DatabaseName = 'dbNomina'
    SQL.Strings = (
      'Select desc_depen'
      'From  norccdep'
      'where codi_depen=:codi_depen')
    Left = 400
    Top = 53
    ParamData = <
      item
        DataType = ftString
        Name = 'codi_depen'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qyPlantas: TQuery
    DatabaseName = 'dbNomina'
    SQL.Strings = (
      'Select desc_taller'
      'From  nomtalle'
      'where codi_taller=:codi_taller')
    Left = 160
    Top = 49
    ParamData = <
      item
        DataType = ftString
        Name = 'codi_taller'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qyconsulta2: TQuery
    DatabaseName = 'I_PCPDATA'
    Left = 80
    Top = 176
  end
  object qyDetalle: TQuery
    DatabaseName = 'I_PCPDATA'
    SQL.Strings = (
      'Select a.cod_operaria, a.unidades, b.apel1_emple || '
      'b.nom1_emple as nombre'
      'from nov_reprocesos a, nomina::nomemple b'
      'where b.codi_emple=a.cod_operaria')
    Left = 247
    Top = 203
    object qyDetallecod_operaria: TStringField
      FieldName = 'cod_operaria'
      Size = 12
    end
    object qyDetalleunidades: TIntegerField
      FieldName = 'unidades'
    end
    object qyDetallenombre: TStringField
      FieldName = 'nombre'
      FixedChar = True
      Size = 40
    end
  end
  object dsdetalle: TDataSource
    DataSet = qyDetalle
    Left = 279
    Top = 203
  end
  object que_consulta: TQuery
    DatabaseName = 'I_PCPDATA'
    Left = 13
    Top = 336
  end
  object tab_local: TTable
    DatabaseName = 'pcpLocal'
    TableName = '_rtpReprocesos1.DB'
    Left = 45
    Top = 336
  end
  object qyOFGeneral: TQuery
    DatabaseName = 'I_PCPDATA'
    SQL.Strings = (
      'Select ofn, referencia, secu_referencia from ofgeneral'
      'where ofn=:ofn')
    Left = 291
    Top = 54
    ParamData = <
      item
        DataType = ftString
        Name = 'ofn'
        ParamType = ptInput
        Value = ''
      end>
  end
  object tab_local_2: TTable
    DatabaseName = 'pcpLocal'
    TableName = '_rptReprocesos2.DB'
    Left = 77
    Top = 336
  end
  object stor_con_reprocesos_ano: TStoredProc
    DatabaseName = 'I_PCPDATA'
    StoredProcName = 'con_reprocesos_ano'
    Left = 13
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'cod_planta'
        ParamType = ptInput
        Value = '03'
      end
      item
        DataType = ftString
        Name = 'cod_seccion'
        ParamType = ptInput
        Value = '35251'
      end
      item
        DataType = ftDate
        Name = 'fec_inicial'
        ParamType = ptInput
        Value = '2003/09/15'
      end
      item
        DataType = ftDate
        Name = 'fec_final'
        ParamType = ptInput
        Value = '2003/09/20'
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
        Value = '2003'
      end>
  end
  object tabl_con_reprocesos_ano: TTable
    DatabaseName = 'PCPLocal'
    FieldDefs = <
      item
        Name = 'cod_operaria'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'nom_operaria'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ofn'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'unidades'
        DataType = ftInteger
      end
      item
        Name = 'uni_ano'
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = '_con_reprocesos_ano'
    Left = 45
    Top = 280
  end
  object quer_con_reprocesos_ano: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      'Select * from '
      '"_con_reprocesos_ano"'
      'order by ofn, unidades')
    Left = 77
    Top = 280
  end
  object stor_con_repr_ano_of: TStoredProc
    DatabaseName = 'I_PCPDATA'
    StoredProcName = 'con_repr_ano_of'
    Left = 109
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'cod_planta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cod_seccion'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fec_inicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fec_final'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ofn'
        ParamType = ptInput
      end>
  end
end

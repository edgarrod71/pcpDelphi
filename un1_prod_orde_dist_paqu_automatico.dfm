inherited fn1_prod_orde_dist_paqu_automatico: Tfn1_prod_orde_dist_paqu_automatico
  Left = 227
  Top = 161
  Width = 340
  Height = 442
  BorderIcons = [biSystemMenu]
  Caption = 'Paqueteo automático'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 332
  end
  inherited padr_shap_xp_down: TShape
    Top = 405
    Width = 332
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 332
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_cancelar: TTBXItem
        Action = acti_padr_cancelar_2
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 332
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 332
    inherited padr_beve_1: TBevel
      Width = 326
    end
    inherited padr_sepa_new: TShape
      Width = 326
    end
  end
  inherited padr_pane_info: TPanel
    Top = 414
    Width = 332
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
  object page: TSCLPageControl [6]
    Left = 0
    Top = 54
    Width = 332
    Height = 351
    ActivePage = page_reglas
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 6
    Transparent = True
    FixedDimension = 19
    object page_reglas: TSCLTabSheet
      Color = 16578290
      Caption = 'Reglas para la distribución'
      object Panel1: TPCPFrame
        Tag = 292
        Left = 0
        Top = 29
        Width = 108
        Height = 299
        Align = alLeft
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Caption = 'Tallas disponibles'
        Titulo_Color = 16244694
        Boton_Visible = False
        BorderWidthIn = 4
        FlatBorder = True
        object grid_tallas: TdxDBGrid
          Left = 7
          Top = 26
          Width = 94
          Height = 266
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_GRUP_TALL_DETALLE'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 1
          OnDblClick = boto_adelanteClick
          DataSource = data_tallas
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowHeader = False
          object grid_tallasCONS_GRUP_TALL_DETALLE: TdxDBGridMaskColumn
            Visible = False
            Width = 138
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_GRUP_TALL_DETALLE'
          end
          object grid_tallasTALLA: TdxDBGridMaskColumn
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TALLA'
          end
        end
      end
      object Panel2: TPanel
        Left = 108
        Top = 29
        Width = 37
        Height = 299
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object boto_atras: TSCLButton
          Left = 7
          Top = 57
          Width = 25
          Height = 25
          TabOrder = 0
          TabStop = False
          OnClick = boto_atrasClick
          Down = False
          Images = _fMDI.imag_pequenas
          ImageIndex = 33
          Flat = True
          Color = clBtnFace
          Style = bsNew
          BackColor = clBtnFace
          ColorBordeBoton = clBtnShadow
          TipoPintadoBoton = tpbContorno
          RedondeoBoton = 4
        end
        object boto_adelante: TSCLButton
          Left = 7
          Top = 27
          Width = 25
          Height = 25
          TabOrder = 1
          TabStop = False
          OnClick = boto_adelanteClick
          Down = False
          Images = _fMDI.imag_pequenas
          ImageIndex = 34
          Flat = True
          Color = clBtnFace
          Style = bsNew
          BackColor = clBtnFace
          ColorBordeBoton = clBtnShadow
          TipoPintadoBoton = tpbContorno
          RedondeoBoton = 4
        end
      end
      object Panel3: TPCPFrame
        Tag = 292
        Left = 145
        Top = 29
        Width = 183
        Height = 299
        Align = alClient
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Caption = 'Distribución automática'
        Titulo_Color = 16244694
        Boton_Visible = False
        BorderWidthIn = 4
        FlatBorder = True
        object grid_distribucion: TdxDBGrid
          Left = 7
          Top = 26
          Width = 169
          Height = 266
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'cons_grup_tall_detalle'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 1
          OnDblClick = boto_atrasClick
          DataSource = data_ventana
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          object grid_distribucioncons_prod_talla: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Sorted = csUp
            Visible = False
            Width = 151
            BandIndex = 0
            RowIndex = 0
            FieldName = 'cons_grup_tall_detalle'
          end
          object grid_distribuciontalla: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 58
            BandIndex = 0
            RowIndex = 0
            FieldName = 'talla'
          end
          object grid_distribucioncant_paquete: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 107
            BandIndex = 0
            RowIndex = 0
            FieldName = 'cant_paquete'
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 328
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        TabOrder = 0
        object Bevel1: TBevel
          Left = 2
          Top = 25
          Width = 324
          Height = 2
          Align = alBottom
        end
        object SCLDBLabel1: TSCLDBLabel
          Left = 3
          Top = 1
          Width = 110
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
          Caption = 'Tamaño paquete:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object edit_cant_paquete: TdxSpinEdit
          Left = 112
          Top = 0
          Width = 41
          TabOrder = 0
          Alignment = taRightJustify
          StyleController = padr_estilo
          MaxValue = 10000
          MinValue = 1
          Value = 25
          StoredValues = 49
        end
      end
    end
    object page_vista: TSCLTabSheet
      Color = 16578290
      Caption = 'Vista previa'
      OnShow = doPaquetear
      object grid: TSCLColumnGrid
        Left = 0
        Top = 0
        Width = 328
        Height = 328
        Cursor = crDefault
        Align = alClient
        ColCount = 6
        Ctl3D = False
        DefaultRowHeight = 21
        FixedColor = 15582631
        RowCount = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
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
        FixedColWidth = 26
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
          ''
          ''
          'Color'
          'Talla'
          'Unidades')
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
            Fixed = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
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
            Name = 'NUME_PAQUETE'
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
            Width = 26
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
            Fixed = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
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
            Name = 'CONS_REFE_COLOR'
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
            DropDownCount = 8
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
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
            Name = 'CONS_GRUP_TALL_DETALLE'
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
            Header = 'Color'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            ReadOnly = True
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
            Header = 'Talla'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 70
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
            DropDownCount = 8
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
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 56
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
          26
          0
          0
          130
          70
          56)
        RowHeights = (
          21
          21
          21
          21
          21)
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 406
    Width = 332
    inherited padr_beve_abajo: TBevel
      Width = 326
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 332
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_ventana
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
    inherited padr_acti_salir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Enabled = True
    end
    inherited acti_padr_cancelar_2: TAction
      OnExecute = acti_padr_cancelar_2Execute
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
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = False
      Visible = False
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 610
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 642
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 642
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 610
  end
  inherited padr_pict_container: TPictureContainer
    Left = 682
  end
  object quer_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      
        'SELECT CONS_REFE_COLOR, CONS_GRUP_TALL_DETALLE, SECU_COLOR, NOMB' +
        '_COLOR,'
      '    SECU_TALLA, TALLA, SECU_COLOR,'
      'SUM(CANT_UNIDADES) AS CANT_UNIDADES'
      'FROM VIS_PCP_PROD_ORDE_LOTE_UNIDADES'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE'
      
        'GROUP BY  CONS_REFE_COLOR, CONS_GRUP_TALL_DETALLE, SECU_COLOR, N' +
        'OMB_COLOR,'
      '    SECU_TALLA, TALLA, SECU_COLOR')
    Left = 28
    Top = 191
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptInput
      end>
  end
  object data_tallas: TDataSource
    DataSet = quer_tallas
    Left = 56
    Top = 151
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_grup_tall_detalle'
        DataType = ftInteger
      end
      item
        Name = 'talla'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'cant_paquete'
        DataType = ftInteger
      end>
    Left = 220
    Top = 4
    object myTabla_ventanacons_grup_tall_detalle: TIntegerField
      FieldName = 'cons_grup_tall_detalle'
    end
    object myTabla_ventanatalla: TStringField
      DisplayLabel = 'Talla'
      FieldName = 'talla'
      Size = 12
    end
    object myTabla_ventanacant_paquete: TIntegerField
      DisplayLabel = 'Und./paquete'
      FieldName = 'cant_paquete'
    end
  end
  object quer_tallas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT DISTINCT'
      'CONS_GRUP_TALL_DETALLE, TALLA'
      'FROM VIS_PCP_PROD_ORDE_TALLAS'
      'WHERE CONS_PROD_LOTE =:CONS_PROD_LOTE'
      'ORDER BY TALLA')
    Left = 28
    Top = 151
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptInput
      end>
    object quer_tallasCONS_GRUP_TALL_DETALLE: TIntegerField
      FieldName = 'CONS_GRUP_TALL_DETALLE'
    end
    object quer_tallasTALLA: TStringField
      FieldName = 'TALLA'
      Size = 12
    end
  end
end

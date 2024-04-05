inherited fn1_refe_fich_edic_08_medi_pren_terminada: Tfn1_refe_fich_edic_08_medi_pren_terminada
  Top = 61
  Height = 574
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pane_informacion: TPCPFrame
    inherited padr_edit_nomb_referencia: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_marca: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_grupo: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_estilo: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_linea: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_tallas: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_tall_muestra: TdxDBEdit
      StoredValues = 64
    end
    inherited padr_edit_grup_tallas: TdxDBEdit
      StoredValues = 64
    end
  end
  inherited padr_pane_deta_ficha: TPCPFrame
    Tag = 498
    Height = 505
    object Splitter1: TSplitter
      Left = 3
      Top = 238
      Width = 698
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object pane_grid: TPanel
      Left = 3
      Top = 241
      Width = 698
      Height = 261
      Align = alClient
      TabOrder = 1
      object grid: TSCLColumnGrid
        Left = 1
        Top = 1
        Width = 696
        Height = 259
        Cursor = crDefault
        Align = alClient
        ColCount = 3
        Ctl3D = False
        DefaultRowHeight = 21
        DefaultDrawing = False
        FixedColor = 15982803
        FixedCols = 0
        RowCount = 5
        FixedRows = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GridLineWidth = 1
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = popGrid
        TabOrder = 0
        OnKeyDown = gridKeyDown
        GridLineColor = clSilver
        ActiveCellShow = False
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
        EnhRowColMove = True
        SizeWithForm = False
        Multilinecells = False
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
        ControlLook.ControlStyle = csWinXP
        ControlLook.FlatButton = False
        EnableBlink = False
        EnableHTML = True
        EnableWheel = True
        Flat = True
        HintColor = clInfoBk
        SelectionColor = 15387318
        SelectionTextColor = clBlack
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
        PrintSettings.Borders = pbSingle
        PrintSettings.BorderStyle = psSolid
        PrintSettings.Centered = True
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
        CellNode.ShowTree = True
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
        FixedColWidth = 45
        FixedRowHeight = 21
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FixedAsButtons = False
        FloatFormat = '%.2f'
        IntegralHeight = False
        WordWrap = True
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
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'ZONA_DE'
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
            Width = 45
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
            Name = 'ZONA_A'
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
            Width = 41
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
            Name = 'DENOMINACION'
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
            Width = 222
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
          45
          41
          222)
      end
    end
    object pane_contenedor: TPanel
      Left = 3
      Top = 22
      Width = 698
      Height = 216
      Align = alTop
      TabOrder = 2
      object Splitter2: TSplitter
        Left = 453
        Top = 1
        Width = 3
        Height = 214
        Cursor = crHSplit
        Align = alRight
      end
      object pane_cont_imagen: TPanel
        Left = 1
        Top = 1
        Width = 452
        Height = 214
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        OnResize = pane_cont_imagenResize
        inline pane_imagen: Tffra_fotografiaDB
          Width = 129
          Height = 105
          inherited fram_pane_atras: TPanel
            Width = 129
            Height = 79
            inherited fram_fotografia: TEDBImage
              Width = 119
              Height = 46
              DataField = 'IMAG_1'
              DataSource = data_tabl_fich_Detalles
            end
            inherited fram_pane_stretch: TPanel
              Top = 51
              Width = 119
              inherited fram_chec_ajustar: TdxDBCheckEdit
                Visible = False
              end
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 129
          end
        end
      end
      object pane_observaciones: TPanel
        Left = 456
        Top = 1
        Width = 241
        Height = 214
        Align = alRight
        BevelOuter = bvNone
        BorderWidth = 2
        TabOrder = 1
        object dxDBMemo1: TdxDBMemo
          Left = 2
          Top = 2
          Width = 237
          Align = alClient
          TabOrder = 0
          DataField = 'COMENTARIOS'
          DataSource = data_tabl_fich_Detalles
          Height = 210
        end
      end
    end
  end
  inherited pane_mensaje: Tffra_mens_atencion
    inherited fram_label: TAdvPanel
      FullHeight = 15
    end
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_AfterEjecutar: TAction
      OnExecute = padr_acti_AfterEjecutarExecute
    end
    inherited padr_acti_AfterPost: TAction
      OnExecute = padr_acti_AfterPostExecute
    end
  end
  inherited padr_tabl_fich_Detalles: TkbmMemTable
    object padr_tabl_fich_DetallesIMAG_1: TBlobField
      FieldName = 'IMAG_1'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_08_MEDI_PREN.IMAG_1'
      BlobType = ftBlob
      Size = 1
    end
    object padr_tabl_fich_DetallesIMAG_1_SMALL: TBlobField
      FieldName = 'IMAG_1_SMALL'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_08_MEDI_PREN.IMAG_1_SMALL'
      BlobType = ftBlob
      Size = 1
    end
    object padr_tabl_fich_DetallesCOMENTARIOS: TMemoField
      FieldName = 'COMENTARIOS'
      Origin = 'DATA_BASE_PCP.PCP_REFE_FICH_08_MEDI_PREN.COMENTARIOS'
      BlobType = ftMemo
      Size = 5000
    end
  end
  object quer_Sele_Detalle: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM PCP_REFE_FICH_08_MEDI_PREN'
      'WHERE CONS_REFE_FICHA = :CONS_REFE_FICHA')
    Left = 528
    Top = 89
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_FICHA'
        ParamType = ptInput
      end>
  end
  object quer_guar_detalle: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_tabl_fich_Detalles
    SQL.Strings = (
      'EXECUTE PROCEDURE PRO_PCP_REFE_FICH_08_MEDI_IU(:CONS_REFE_FICHA,'
      ':IMAG_1,'
      ':IMAG_1_SMALL,'
      ':COMENTARIOS)')
    Left = 556
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_FICHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAG_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAG_1_SMALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMENTARIOS'
        ParamType = ptUnknown
      end>
  end
  object quer_tallas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT SECU_TALLA, TALLA'
      'FROM GLO_GRUP_TALL_DETALLE'
      'WHERE CONS_GRUP_TALLAS = :CONS_REFE_GRUP_TALLAS'
      'ORDER BY SECU_TALLA')
    Left = 584
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_GRUP_TALLAS'
        ParamType = ptUnknown
      end>
  end
  object quer_tall_ficha: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = padr_data_fich_Tecnicas
    SQL.Strings = (
      'SELECT TEXTO'
      'FROM PCP_REFE_FICH_08_MEDI_DETA'
      'WHERE CONS_REFE_FICHA = :CONS_REFE_FICHA'
      'AND CONS_FILA = 0'
      '')
    Left = 528
    Top = 130
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_FICHA'
        ParamType = ptInput
      end>
  end
  object Acciones: TActionList
    Left = 39
    Top = 155
    object acti_Grid_insertar: TAction
      Category = 'Grid'
      Caption = 'Insertar'
      ShortCut = 45
      OnExecute = acti_Grid_insertarExecute
    end
    object acti_grid_adicionar: TAction
      Category = 'Grid'
      Caption = 'Adicionar'
    end
    object acti_grid_eliminar: TAction
      Category = 'Grid'
      Caption = 'Eliminar'
      ShortCut = 16453
      OnExecute = acti_grid_eliminarExecute
      OnUpdate = acti_grid_eliminarUpdate
    end
  end
  object popGrid: TTBXPopupMenu
    Left = 16
    Top = 290
    object TBXItem2: TTBXItem
      Action = acti_Grid_insertar
    end
    object TBXItem3: TTBXItem
      Action = acti_grid_adicionar
    end
    object TBXSeparatorItem1: TTBXSeparatorItem
    end
    object TBXItem1: TTBXItem
      Action = acti_grid_eliminar
    end
  end
  object quer_elim_cantidades: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = padr_data_fich_Tecnicas
    SQL.Strings = (
      'DELETE FROM'
      'PCP_REFE_FICH_08_MEDI_DETA'
      'WHERE'
      'CONS_REFE_FICHA = :CONS_REFE_FICHA')
    Left = 528
    Top = 162
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_FICHA'
        ParamType = ptUnknown
      end>
  end
  object quer_guar_cantidades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'INSERT INTO PCP_REFE_FICH_08_MEDI_DETA'
      '(CONS_REFE_FICHA,'
      'CONS_FILA, CONS_COLUMNA,'
      'TEXTO, VALOR)'
      'VALUES'
      '(:CONS_REFE_FICHA,'
      ':CONS_FILA, :CONS_COLUMNA, :TEXTO,'
      ':VALOR)')
    Left = 560
    Top = 162
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_FICHA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_FILA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_COLUMNA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TEXTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VALOR'
        ParamType = ptInput
      end>
  end
  object quer_sele_Cantidades: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = padr_data_fich_Tecnicas
    SQL.Strings = (
      'SELECT CONS_FILA, CONS_COLUMNA, TEXTO'
      'FROM PCP_REFE_FICH_08_MEDI_DETA'
      'WHERE CONS_REFE_FICHA = :CONS_REFE_FICHA'
      'AND CONS_FILA > 0'
      'ORDER BY CONS_FILA, CONS_COLUMNA')
    Left = 592
    Top = 162
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_FICHA'
        ParamType = ptInput
      end>
  end
end

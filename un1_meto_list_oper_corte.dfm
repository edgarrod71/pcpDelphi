inherited fn1_meto_list_oper_corte: Tfn1_meto_list_oper_corte
  Left = 125
  Top = 152
  Width = 775
  Height = 537
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 767
  end
  inherited padr_shap_xp_down: TShape
    Top = 500
    Width = 767
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 767
  end
  inherited padr_pane_arriba: TPanel
    Width = 767
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 767
    inherited padr_beve_1: TBevel
      Width = 761
    end
    inherited padr_sepa_new: TShape
      Width = 761
    end
  end
  inherited padr_pane_info: TPanel
    Top = 509
    Width = 767
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
  inherited padr_titu_ventana: TPanel
    Width = 767
    inherited padr_pane_titulo: TPanel
      Width = 726
      Caption = 'Secuencia de operaciones de corte'
    end
    inherited padr_pane_2: TPanel
      Left = 728
    end
    inherited padr_pane_cerrar: TPanel
      Left = 746
    end
  end
  inline fram_sele_referencia: Tffra_sele_refe_variacion [7]
    Top = 77
    Width = 767
    Align = alTop
    TabOrder = 7
    inherited fram_pane_sele_referencia: TPCPFrame
      Width = 767
      inherited fram_pane_referencia: TPanel
        Width = 763
      end
      inherited fram_pane_informacion: TPCPFrame
        Width = 763
        inherited dxDBEdit4: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit6: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit7: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit8: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit5: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit1: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit2: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit3: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
      end
    end
  end
  object PCPFrame1: TPCPFrame [8]
    Tag = 190
    Left = 0
    Top = 211
    Width = 767
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Caption = 'Selección del material'
    Titulo_Color = 16244694
    object SCLDBLabel8: TSCLDBLabel
      Left = 10
      Top = 25
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = comb_codi_referencia
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código material:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel1: TSCLDBLabel
      Left = 264
      Top = 25
      Width = 106
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = PCPLookUpComboEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Referencia material:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_codi_referencia: TPCPLookUpComboEdit
      Left = 112
      Top = 25
      Width = 130
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'cons_referencia'
      DataSource = data_ventana
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 372
      Top = 25
      Width = 260
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'cons_referencia'
      DataSource = data_ventana
      ParentCtl3D = False
      TabOrder = 2
      DirectInput = False
    end
  end
  object page: TdxPageControl [9]
    Left = 0
    Top = 261
    Width = 767
    Height = 239
    ActivePage = page_operaciones
    Align = alClient
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    TabHeight = 0
    TabOrder = 9
    TabPosition = dxtpTop
    TabWidth = 0
    object page_operaciones: TdxTabSheet
      Caption = 'Operaciones'
      object TBXDock2: TTBXDock
        Left = 0
        Top = 0
        Width = 767
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
          object TBXItem28: TTBXItem
            Action = acti_volv_llamar
            ImageIndex = 11
            Images = _fMDI.imag_varias
          end
          object TBXSeparatorItem13: TTBXSeparatorItem
          end
          object TBXItem6: TTBXItem
            Action = acti_insertar
            Images = _fMDI.imagenesPCP
          end
          object TBXItem5: TTBXItem
            Action = acti_adicionar
            Images = _fMDI.imagenesPCP
          end
          object TBXItem4: TTBXItem
            Action = acti_eliminar
            Images = _fMDI.imagenesPCP
          end
          object TBXSeparatorItem2: TTBXSeparatorItem
          end
          object TBXItem8: TTBXItem
            Action = acti_move_arriba
            Images = _fMDI.imagenesPCP
          end
          object TBXItem7: TTBXItem
            Action = acti_move_abajo
            Images = _fMDI.imagenesPCP
          end
          object TBXSeparatorItem5: TTBXSeparatorItem
          end
          object TBXItem2: TTBXItem
            Action = acti_buscar
            Images = _fMDI.imagenesPCP
          end
          object TBXItem1: TTBXItem
            Action = acti_sele_todos
            Images = _fMDI.imagenesPCP
          end
          object TBXSeparatorItem7: TTBXSeparatorItem
          end
          object TBXItem19: TTBXItem
            Action = acti_copiar
            Images = _fMDI.imagenesPCP
          end
          object TBXItem18: TTBXItem
            Action = acti_cortar
            Images = _fMDI.imagenesPCP
          end
          object TBXItem17: TTBXItem
            Action = acti_pegar
            Images = _fMDI.imagenesPCP
          end
          object TBXSeparatorItem6: TTBXSeparatorItem
          end
          object boto_importar: TTBXVisibilityToggleItem
            Caption = 'Importar operaciones'
            DisplayMode = nbdmImageAndText
            ImageIndex = 31
            Images = _fMDI.imagenesPCP
          end
        end
      end
      object grid: TSCLColumnGrid
        Left = 0
        Top = 26
        Width = 767
        Height = 165
        Cursor = crDefault
        Align = alClient
        ColCount = 14
        Ctl3D = False
        DefaultRowHeight = 19
        FixedColor = 15582631
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'MS Sans Serif'
        ActiveCellFont.Style = [fsBold]
        EnhRowColMove = False
        ControlLook.ControlStyle = csFlat
        EnableHTML = False
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
        HintShowCells = True
        HintShowLargeText = True
        HintShowSizing = True
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
        SizeWhileTyping.Height = True
        MouseActions.AllSelect = True
        MouseActions.RowSelect = True
        MouseActions.SizeFixedCol = True
        FixedColWidth = 24
        FixedRowHeight = 19
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
          'Tiempo'
          'P.H.')
        Filter = <>
        Version = '3.0.0.10'
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
            DropDownCount = 8
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
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Color = clBtnFace
            ColumnPopupType = cpFixedCellsLClick
            DropDownCount = 8
            EditLength = 0
            Editor = edUpperCase
            FilterCaseSensitive = False
            Fixed = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'T'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Color = clBtnFace
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
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
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Color = clBtnFace
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
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
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Color = clBtnFace
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
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
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            DropDownCount = 8
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
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Header = 'Operación'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Header = 'F'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Color = clBtnFace
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
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
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Color = clBtnFace
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
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
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Color = clBtnFace
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
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
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Width = 49
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
            DropDownCount = 8
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
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            ReadOnly = False
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
            DropDownCount = 8
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
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Header = 'P.H.'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
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
            Width = 65
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
          24
          25
          30
          30
          30
          83
          226
          48
          46
          46
          49
          67
          43
          65)
      end
      object TBXDock1: TTBXDock
        Left = 0
        Top = 191
        Width = 767
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
            StyleController = padr_estilo
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
            StyleController = padr_estilo
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
            StyleController = padr_estilo
            DisplayFormat = '0'
            StoredValues = 65
          end
          object edit_oper_seleccionada: TdxSpinEdit
            Left = 89
            Top = 0
            Width = 45
            TabOrder = 3
            TabStop = False
            Alignment = taRightJustify
            StyleController = padr_estilo
            MaxValue = 100
            MinValue = 1
            Value = 1
            StoredValues = 49
          end
        end
      end
    end
    object page_historial: TdxTabSheet
      Caption = 'Historial'
    end
    object page_copy: TdxTabSheet
    end
  end
  inherited pane_beve_abajo: TPanel [10]
    Top = 501
    Width = 767
    inherited padr_beve_abajo: TBevel
      Width = 761
    end
  end
  inherited padr_pane_principal: TPanel [11]
    Width = 767
  end
  inherited Variables: TSCLPropiedadesForm [12]
  end
  inherited Tabla_Ventana: TTable [13]
  end
  inherited padr_estilo: TdxEditStyleController [14]
    Top = 2
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [15]
    Left = 602
    Top = 2
  end
  inherited padr_esti_panel: TAdvPanelStyler [16]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [17]
  end
  inherited imag_pequenas: TImageList [18]
  end
  inherited padr_imag_tem1_colo: TImageList [19]
  end
  inherited padr_quer_consecutivo: TQuery [20]
  end
  inherited data_ventana: TDataSource [21]
    DataSet = myTabla_Ventana
  end
  inherited padr_acciones: TActionList [22]
  end
  inherited Imagenes_Botones_Pequenos: TImageList [23]
  end
  inherited padr_pict_container: TPictureContainer
    Left = 546
    Top = 149
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_referencia'
        DataType = ftInteger
      end
      item
        Name = 'cons_refe_variacion'
      end
      item
        Name = 'cons_refe_material'
      end>
    Left = 210
    Top = 3
  end
  object quer_refe_materiales: TQuery
    DatabaseName = 'data_base_pcp'
    Left = 8
    Top = 152
  end
  object data_refe_materiales: TDataSource
    DataSet = quer_refe_materiales
    Left = 40
    Top = 152
  end
  object acci_ventana: TActionList
    Images = _fMDI.imagenesPCP
    Left = 432
    object acti_insertar: TAction
      Category = 'Grid'
      Caption = 'Insertar elemento'
      Hint = 'Insertar elemento'
      ImageIndex = 25
      ShortCut = 45
    end
    object acti_adicionar: TAction
      Category = 'Grid'
      Caption = 'Adicionar elemento (al final)'
      Hint = 'Adicionar elemento (al final)'
      ImageIndex = 26
      ShortCut = 16429
    end
    object acti_eliminar: TAction
      Category = 'Grid'
      Caption = 'Eliminar elementos'
      Hint = 'Eliminar elementos'
      ImageIndex = 27
      ShortCut = 16453
    end
    object acti_move_arriba: TAction
      Category = 'Grid'
      Caption = 'Mover hacia arriba'
      Hint = 'Mover hacia arriba'
      ImageIndex = 28
      ShortCut = 16422
    end
    object acti_move_abajo: TAction
      Category = 'Grid'
      Caption = 'Mover hacia abajo'
      Hint = 'Mover hacia abajo'
      ImageIndex = 29
      ShortCut = 16424
    end
    object acti_copiar: TdxEditCopy
      Category = 'Edit'
      Caption = '&Copiar'
      Hint = 'Copiar'
      ImageIndex = 11
      ShortCut = 16451
    end
    object acti_cortar: TdxEditCut
      Category = 'Edit'
      Caption = 'Cortar'
      Hint = 'Cortar'
      ImageIndex = 12
      ShortCut = 16472
    end
    object acti_pegar: TdxEditPaste
      Category = 'Edit'
      Caption = '&Pegar'
      Hint = 'Pegar'
      ImageIndex = 13
      ShortCut = 16470
      Left = 225
      Top = 169
    end
    object acti_importar: TAction
      Category = 'Edit'
      Caption = 'Importar gestos...'
      Hint = 'Importar gestos desde otro elemento'
      Left = 253
      Top = 169
    end
    object acti_impo_sele_todos: TAction
      Category = 'Importar'
      Caption = 'Seleccionar todos'
      ImageIndex = 30
      ShortCut = 16449
      Left = 1
      Top = 197
    end
    object acti_impo_importar: TAction
      Category = 'Importar'
      Caption = 'Importar selección'
      ImageIndex = 31
      Left = 65000
    end
    object acti_sele_todos: TAction
      Category = 'Grid'
      Caption = 'Seleccionar todos'
      Hint = 'Seleccionar todos'
      ImageIndex = 30
    end
    object acti_buscar: TAction
      Category = 'Grid'
      Caption = 'Buscar'
      ImageIndex = 9
    end
    object acti_ver_titulos: TAction
      Category = 'Grid'
      Caption = 'Ver sólamente los títulos'
      Enabled = False
      Hint = 'Ver sólamente los títulos'
    end
    object acti_fila_titulo: TAction
      Category = 'Grid'
      Caption = 'Fila como un título'
    end
    object acti_fila_operacion: TAction
      Category = 'Grid'
      Caption = 'Fila como operación'
    end
    object acti_ver_analisis: TAction
      Category = 'Grid'
      Caption = 'Ver análisis de la operación'
    end
    object acti_undo: TAction
      Caption = 'Undo'
    end
    object acti_volv_llamar: TAction
      Category = 'Edit'
      Caption = 'Volver a llamar las operaciones'
      Hint = 'Volver a llamar las operaciones'
    end
  end
end

inherited FN1_Refe_Pren_Terminada1: TFN1_Refe_Pren_Terminada1
  Left = 239
  Top = 102
  Width = 764
  Height = 612
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 0
    Top = 54
    Width = 756
    Height = 58
    Align = alTop
    Shape = bsSpacer
  end
  object SCLDBLabel4: TSCLDBLabel [1]
    Left = 15
    Top = 64
    Width = 81
    Height = 21
    Alive = False
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = dxDBEdit4
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Referencia:'
    Transparent = True
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
  end
  object SCLDBLabel10: TSCLDBLabel [2]
    Left = 15
    Top = 84
    Width = 81
    Height = 21
    Alive = False
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = dxDBEdit10
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Talla Muestra:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'TALL_MUESTRA'
    Field = 'TALL_MUESTRA'
  end
  object SCLDBLabel11: TSCLDBLabel [3]
    Left = 303
    Top = 64
    Width = 81
    Height = 21
    Alive = False
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = dxDBEdit11
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Variación:'
    Transparent = True
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
  end
  inherited padr_shap_xp_up: TShape
    Width = 756
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
    Width = 756
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 756
  end
  inherited padr_pane_arriba: TPanel
    Width = 756
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 756
    inherited padr_beve_1: TBevel
      Width = 750
    end
    inherited padr_sepa_new: TShape
      Width = 750
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
    Width = 756
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
  object dxDBEdit4: TdxDBEdit [10]
    Left = 98
    Top = 64
    Width = 191
    Enabled = False
    TabOrder = 6
    TabStop = False
    DataField = 'NOMB_REFERENCIA'
    DataSource = DSQReferencia
    StyleController = padr_estilo
  end
  object dxDBEdit10: TdxDBEdit [11]
    Left = 98
    Top = 84
    Width = 191
    TabOrder = 7
    DataField = 'TALL_MUESTRA'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBEdit11: TdxDBEdit [12]
    Left = 386
    Top = 64
    Width = 191
    Enabled = False
    TabOrder = 8
    TabStop = False
    DataField = 'NOMB_REFE_TIPO_VARIACION'
    DataSource = DSQReferencia
    StyleController = padr_estilo
  end
  object PCPFrame1: TPCPFrame [13]
    Tag = 91
    Left = 0
    Top = 135
    Width = 756
    Height = 91
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
    TabOrder = 9
    Caption = 'Observaciones'
    Titulo_Color = 16244694
    object dxDBMemo1: TdxDBMemo
      Left = 2
      Top = 21
      Width = 752
      Align = alClient
      TabOrder = 1
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      ScrollBars = ssBoth
      Height = 68
    end
  end
  object PCPFrame2: TPCPFrame [14]
    Tag = 144
    Left = 0
    Top = 112
    Width = 756
    Height = 23
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
    TabOrder = 10
    Caption = 'Detalle de la Referencia'
    Titulo_Color = 16244694
    Titulo_Comprimido = True
    object SCLDBLabel1: TSCLDBLabel
      Left = 15
      Top = 26
      Width = 81
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
      FocusControl = dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Marca:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 303
      Top = 26
      Width = 81
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Línea:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 15
      Top = 49
      Width = 81
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
      FocusControl = dxDBEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Edad:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 303
      Top = 49
      Width = 81
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
      FocusControl = dxDBEdit5
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Estilo:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 15
      Top = 72
      Width = 81
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
      FocusControl = dxDBEdit6
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tallas:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel7: TSCLDBLabel
      Left = 303
      Top = 72
      Width = 81
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
      FocusControl = dxDBEdit7
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grupo:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel8: TSCLDBLabel
      Left = 15
      Top = 118
      Width = 81
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
      FocusControl = dxDBEdit8
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Descripción:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel9: TSCLDBLabel
      Left = 15
      Top = 95
      Width = 81
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
      FocusControl = dxDBEdit9
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Temporada:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBEdit1: TdxDBEdit
      Left = 98
      Top = 26
      Width = 191
      Enabled = False
      TabOrder = 1
      TabStop = False
      DataField = 'NOMB_REFE_MARCA'
      DataSource = DSQReferencia
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 386
      Top = 26
      Width = 191
      Enabled = False
      TabOrder = 2
      TabStop = False
      DataField = 'NOMB_REFE_LINEA'
      DataSource = DSQReferencia
      StyleController = padr_estilo
    end
    object dxDBEdit3: TdxDBEdit
      Left = 98
      Top = 49
      Width = 191
      Enabled = False
      TabOrder = 3
      TabStop = False
      DataField = 'NOMB_REFE_EDAD'
      DataSource = DSQReferencia
      StyleController = padr_estilo
    end
    object dxDBEdit5: TdxDBEdit
      Left = 386
      Top = 49
      Width = 191
      Enabled = False
      TabOrder = 4
      TabStop = False
      DataField = 'NOMB_REFE_ESTILO'
      DataSource = DSQReferencia
      StyleController = padr_estilo
    end
    object dxDBEdit6: TdxDBEdit
      Left = 98
      Top = 72
      Width = 191
      Enabled = False
      TabOrder = 5
      TabStop = False
      DataField = 'GRUP_TALLAS'
      DataSource = DSQReferencia
      StyleController = padr_estilo
    end
    object dxDBEdit7: TdxDBEdit
      Left = 386
      Top = 72
      Width = 191
      Enabled = False
      TabOrder = 6
      TabStop = False
      DataField = 'NOMB_REFE_GRUPO'
      DataSource = DSQReferencia
      StyleController = padr_estilo
    end
    object dxDBEdit8: TdxDBEdit
      Left = 98
      Top = 118
      Width = 479
      Enabled = False
      TabOrder = 7
      TabStop = False
      DataField = 'DESCRIPCION'
      DataSource = DSQReferencia
      StyleController = padr_estilo
    end
    object dxDBEdit9: TdxDBEdit
      Left = 98
      Top = 95
      Width = 191
      Enabled = False
      TabOrder = 8
      TabStop = False
      DataField = 'CODI_REFE_TEMPORADA'
      DataSource = DSQReferencia
      StyleController = padr_estilo
    end
  end
  object PCPFrame3: TPCPFrame [15]
    Tag = 270
    Left = 0
    Top = 226
    Width = 756
    Height = 23
    Align = alTop
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Caption = 'Imagenes de Presentación'
    Titulo_Color = 16244694
    Titulo_Comprimido = True
    object Panel2: TPanel
      Left = 3
      Top = 22
      Width = 750
      Height = 244
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object dfsSplitter1: TdfsSplitter
        Left = 302
        Top = 0
        Height = 244
        Cursor = crHSplit
        Align = alLeft
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      inline ffra_fotografiaDB1: Tffra_fotografiaDB
        Left = 312
        Width = 302
        Height = 244
        Align = alLeft
        inherited fram_pane_atras: TPanel
          Width = 302
          Height = 218
          inherited fram_fotografia: TEDBImage
            Width = 292
            Height = 185
            DataField = 'DETA_IMAGEN'
            DataSource = data_ventana
          end
          inherited fram_pane_stretch: TPanel
            Top = 190
            Width = 292
            inherited fram_chec_ajustar: TdxDBCheckEdit
              DataField = 'AJUS_DETA_IMAGEN'
              DataSource = data_ventana
            end
          end
        end
        inherited TBXDock1: TTBXDock
          Width = 302
        end
      end
      inline ffra_fotografiaDB2: Tffra_fotografiaDB
        Width = 302
        Height = 244
        Align = alLeft
        TabOrder = 1
        inherited fram_pane_atras: TPanel
          Width = 302
          Height = 218
          inherited fram_fotografia: TEDBImage
            Width = 292
            Height = 185
            DataField = 'IMAGEN'
            DataSource = data_ventana
          end
          inherited fram_pane_stretch: TPanel
            Top = 190
            Width = 292
            inherited fram_chec_ajustar: TdxDBCheckEdit
              DataField = 'AJUS_IMAGEN'
              DataSource = data_ventana
            end
          end
        end
        inherited TBXDock1: TTBXDock
          Width = 302
        end
      end
    end
  end
  object PCPFrame4: TPCPFrame [16]
    Tag = 322
    Left = 0
    Top = 249
    Width = 756
    Height = 326
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Caption = 'Medidas de Prenda Terminada'
    Titulo_Color = 16244694
    Boton_Visible = False
    object GMedidas: TSCLColumnGrid
      Left = 3
      Top = 48
      Width = 750
      Height = 275
      Cursor = crDefault
      Align = alClient
      ColCount = 5
      Ctl3D = False
      DefaultColWidth = 50
      DefaultRowHeight = 21
      FixedColor = 15582631
      RowCount = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 1
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
      ScrollWidth = 16
      FixedColWidth = 50
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      FloatFormat = '%.2f'
      WordWrap = False
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
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
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
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
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
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
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
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
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
          HeaderAlignment = taLeftJustify
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
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
          Width = 50
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
        50
        50
        50)
    end
    object TBXDock1: TTBXDock
      Left = 3
      Top = 22
      Width = 750
      Height = 26
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        Caption = 'TBXToolbar1'
        Images = _fMDI.imag_pequenas
        TabOrder = 0
        object TBXItem3: TTBXItem
          Action = Acti_Guar_Denominacion
          DisplayMode = nbdmImageAndText
          InheritOptions = False
        end
        object TBXItem2: TTBXItem
          Action = Acti_Nuev_Denominacion
          DisplayMode = nbdmImageAndText
          InheritOptions = False
        end
        object TBXItem1: TTBXItem
          Action = Acti_Elim_Denominacion
          DisplayMode = nbdmImageAndText
          InheritOptions = False
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 576
    Width = 756
    inherited padr_beve_abajo: TBevel
      Width = 750
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 756
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList
    Left = 705
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 704
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_REFE_VARI_PREN_TERMINADA'
    object Tabla_VentanaCONS_REFE_VARI_PREN_TERMINADA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_REFE_VARI_PREN_TERMINADA'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_VARIACION: TIntegerField
      DisplayLabel = 'Variación'
      FieldName = 'CONS_REFE_VARIACION'
      Required = True
    end
    object Tabla_VentanaTALL_MUESTRA: TStringField
      DisplayLabel = 'Talla Muestra'
      FieldName = 'TALL_MUESTRA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaIMAGEN: TBlobField
      DisplayLabel = 'Imagen'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Imagen'
      FieldName = 'AJUS_IMAGEN'
    end
    object Tabla_VentanaDETA_IMAGEN: TBlobField
      DisplayLabel = 'Detalle Imagen'
      FieldName = 'DETA_IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaAJUS_DETA_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Detalle Imagen'
      FieldName = 'AJUS_DETA_IMAGEN'
    end
    object Tabla_VentanaOBSERVACIONES: TMemoField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 674
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 706
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 674
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 706
  end
  inherited imag_pequenas: TImageList
    Left = 675
  end
  inherited padr_pict_container: TPictureContainer
    Left = 706
  end
  object QReferencia: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_REFE_UNIDAD(:CONS_REFE_VARIACION)')
    Left = 608
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_VARIACION'
        ParamType = ptUnknown
      end>
    object QReferenciaCONS_REFERENCIA: TIntegerField
      DisplayLabel = 'Cons. Referencia'
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.GLO_REFERENCIAS.CONS_REFERENCIA'
    end
    object QReferenciaCODI_REFERENCIA: TStringField
      DisplayLabel = 'Cód. Referencia'
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.GLO_REFERENCIAS.CODI_REFERENCIA'
      Size = 12
    end
    object QReferenciaMOLDE: TStringField
      DisplayLabel = 'Molde'
      FieldName = 'MOLDE'
      Origin = 'DATA_BASE_PCP.GLO_REFERENCIAS.MOLDE'
      Size = 12
    end
    object QReferenciaCODI_INTE_REFERENCIA: TStringField
      DisplayLabel = 'Cód. Interno'
      FieldName = 'CODI_INTE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.GLO_REFERENCIAS.CODI_INTE_REFERENCIA'
      Size = 12
    end
    object QReferenciaNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Referencia'
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.GLO_REFERENCIAS.NOMB_REFERENCIA'
      Size = 60
    end
    object QReferenciaCODI_BARRAS: TStringField
      DisplayLabel = 'Cód. Barras'
      FieldName = 'CODI_BARRAS'
      Origin = 'DATA_BASE_PCP.GLO_REFERENCIAS.CODI_BARRAS'
      Size = 30
    end
    object QReferenciaCONS_REFE_TIPO_VARIACION: TIntegerField
      DisplayLabel = 'Cons. Variación'
      FieldName = 'CONS_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.PCP_REFE_TIPO_VARIACIONES.CONS_REFE_TIPO_VARIACION'
    end
    object QReferenciaCODI_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Cód. Variación'
      FieldName = 'CODI_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.PCP_REFE_TIPO_VARIACIONES.CODI_REFE_TIPO_VARIACION'
      Size = 12
    end
    object QReferenciaNOMB_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Variación'
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.PCP_REFE_TIPO_VARIACIONES.NOMB_REFE_TIPO_VARIACION'
      Size = 60
    end
    object QReferenciaCONS_REFE_MARCA: TIntegerField
      DisplayLabel = 'Cons. Marca'
      FieldName = 'CONS_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.CONS_REFE_MARCA'
    end
    object QReferenciaCODI_REFE_MARCA: TStringField
      DisplayLabel = 'Cód. Marca'
      FieldName = 'CODI_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.CODI_REFE_MARCA'
      Size = 12
    end
    object QReferenciaNOMB_REFE_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.NOMB_REFE_MARCA'
      Size = 60
    end
    object QReferenciaCONS_REFE_LINEA: TIntegerField
      DisplayLabel = 'Cons. Línea'
      FieldName = 'CONS_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.CONS_REFE_LINEA'
    end
    object QReferenciaCODI_REFE_LINEA: TStringField
      DisplayLabel = 'Cód. Línea'
      FieldName = 'CODI_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.CODI_REFE_LINEA'
      Size = 12
    end
    object QReferenciaNOMB_REFE_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.NOMB_REFE_LINEA'
      Size = 60
    end
    object QReferenciaCONS_REFE_EDAD: TIntegerField
      DisplayLabel = 'Cons. Edad'
      FieldName = 'CONS_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.CONS_REFE_EDAD'
    end
    object QReferenciaCODI_REFE_EDAD: TStringField
      DisplayLabel = 'Cód. Edad'
      FieldName = 'CODI_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.CODI_REFE_EDAD'
      Size = 12
    end
    object QReferenciaNOMB_REFE_EDAD: TStringField
      DisplayLabel = 'Edad'
      FieldName = 'NOMB_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.NOMB_REFE_EDAD'
      Size = 60
    end
    object QReferenciaCONS_REFE_ESTILO: TIntegerField
      DisplayLabel = 'Cons. Estilo'
      FieldName = 'CONS_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.CONS_REFE_ESTILO'
    end
    object QReferenciaCODI_REFE_ESTILO: TStringField
      DisplayLabel = 'Cód. Estilo'
      FieldName = 'CODI_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.CODI_REFE_ESTILO'
      Size = 12
    end
    object QReferenciaNOMB_REFE_ESTILO: TStringField
      DisplayLabel = 'Estilo'
      FieldName = 'NOMB_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.NOMB_REFE_ESTILO'
      Size = 60
    end
    object QReferenciaCONS_REFE_GRUPO: TIntegerField
      DisplayLabel = 'Cons. Grupo'
      FieldName = 'CONS_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.CONS_REFE_GRUPO'
    end
    object QReferenciaCODI_REFE_GRUPO: TStringField
      DisplayLabel = 'Cód. Grupo'
      FieldName = 'CODI_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.CODI_REFE_GRUPO'
      Size = 12
    end
    object QReferenciaNOMB_REFE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.NOMB_REFE_GRUPO'
      Size = 60
    end
    object QReferenciaCONS_SEXO: TIntegerField
      DisplayLabel = 'Cons. Sexo'
      FieldName = 'CONS_SEXO'
      Origin = 'DATA_BASE_PCP.SIS_SEXOS.CONS_SEXO'
    end
    object QReferenciaCODI_SEXO: TStringField
      DisplayLabel = 'Cód. Sexo'
      FieldName = 'CODI_SEXO'
      Origin = 'DATA_BASE_PCP.SIS_SEXOS.CODI_SEXO'
      Size = 12
    end
    object QReferenciaNOMB_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'NOMB_SEXO'
      Origin = 'DATA_BASE_PCP.SIS_SEXOS.NOMB_SEXO'
      Size = 60
    end
    object QReferenciaCONS_REFE_LAVADO: TIntegerField
      DisplayLabel = 'Cons. Lavado'
      FieldName = 'CONS_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LAVADOS.CONS_REFE_LAVADO'
    end
    object QReferenciaCODI_REFE_LAVADO: TStringField
      DisplayLabel = 'Cód. Lavado'
      FieldName = 'CODI_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LAVADOS.CODI_REFE_LAVADO'
      Size = 12
    end
    object QReferenciaNOMB_REFE_LAVADO: TStringField
      DisplayLabel = 'Lavado'
      FieldName = 'NOMB_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LAVADOS.NOMB_REFE_LAVADO'
      Size = 60
    end
    object QReferenciaCONS_REFE_BORDADO: TIntegerField
      DisplayLabel = 'Cons. Bordado'
      FieldName = 'CONS_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_BORDADOS.CONS_REFE_BORDADO'
    end
    object QReferenciaCODI_REFE_BORDADO: TStringField
      DisplayLabel = 'Cód. Bordado'
      FieldName = 'CODI_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_BORDADOS.CODI_REFE_BORDADO'
      Size = 12
    end
    object QReferenciaNOMB_REFE_BORDADO: TStringField
      DisplayLabel = 'Bordado'
      FieldName = 'NOMB_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_BORDADOS.NOMB_REFE_BORDADO'
      Size = 60
    end
    object QReferenciaCONS_REFE_ESTAMPADO: TIntegerField
      DisplayLabel = 'Cons. Estampado'
      FieldName = 'CONS_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTAMPADOS.CONS_REFE_ESTAMPADO'
    end
    object QReferenciaCODI_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Cód. Estampado'
      FieldName = 'CODI_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTAMPADOS.CODI_REFE_ESTAMPADO'
      Size = 12
    end
    object QReferenciaNOMB_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Estampado'
      FieldName = 'NOMB_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTAMPADOS.NOMB_REFE_ESTAMPADO'
      Size = 60
    end
    object QReferenciaCONS_REFE_ESTADO: TIntegerField
      DisplayLabel = 'Cons. Estado'
      FieldName = 'CONS_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.CONS_REFE_ESTADO'
    end
    object QReferenciaCODI_REFE_ESTADO: TStringField
      DisplayLabel = 'Cód. Estado'
      FieldName = 'CODI_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.CODI_REFE_ESTADO'
      Size = 12
    end
    object QReferenciaNOMB_REFE_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'NOMB_REFE_ESTADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTADOS.NOMB_REFE_ESTADO'
      Size = 60
    end
    object QReferenciaGRUP_TALLAS: TStringField
      DisplayLabel = 'Tallas'
      FieldName = 'GRUP_TALLAS'
      Size = 100
    end
    object QReferenciaIMAGEN: TBlobField
      DisplayLabel = 'Imagen'
      FieldName = 'IMAGEN'
      Origin = 'DATA_BASE_PCP.GLO_REFERENCIAS.IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object QReferenciaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.GLO_REFERENCIAS.DESCRIPCION'
      Size = 240
    end
    object QReferenciaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFERENCIAS.FECH_SISTEMA'
    end
    object QReferenciaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario  Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFERENCIAS.USUA_SISTEMA'
    end
    object QReferenciaCONS_REFE_VARIACION: TIntegerField
      DisplayLabel = 'Cons. Referencia - Variación'
      FieldName = 'CONS_REFE_VARIACION'
    end
    object QReferenciaCONS_REFE_TEMPORADA: TIntegerField
      DisplayLabel = 'Cons. Temporada'
      FieldName = 'CONS_REFE_TEMPORADA'
    end
    object QReferenciaCODI_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Cód. Temporada'
      FieldName = 'CODI_REFE_TEMPORADA'
      Size = 12
    end
    object QReferenciaNOMB_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Temporada'
      FieldName = 'NOMB_REFE_TEMPORADA'
      Size = 60
    end
  end
  object DSQReferencia: TDataSource
    AutoEdit = False
    DataSet = QReferencia
    Left = 640
    Top = 144
  end
  object QTallas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQReferencia
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_GRUP_TALL_DETALLE'
      'WHERE CONS_GRUP_TALLAS IN('
      ' SELECT CONS_REFE_GRUP_TALLAS'
      ' FROM GLO_REFERENCIAS'
      ' WHERE CONS_REFERENCIA = :CONS_REFERENCIA)'
      'ORDER BY CONS_GRUP_TALL_DETALLE')
    Left = 544
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFERENCIA'
        ParamType = ptUnknown
      end>
  end
  object Acciones_Medida: TActionList
    Images = _fMDI.imag_pequenas
    Left = 349
    Top = 255
    object Acti_Nuev_Denominacion: TAction
      Caption = 'Nueva Denominación'
      ImageIndex = 0
      OnExecute = Acti_Nuev_DenominacionExecute
    end
    object Acti_Elim_Denominacion: TAction
      Caption = 'Eliminar Deominación'
      ImageIndex = 2
      OnExecute = Acti_Elim_DenominacionExecute
    end
    object Acti_Guar_Denominacion: TAction
      Caption = 'Guardar Denominaciones'
      ImageIndex = 5
    end
  end
  object QDenominaciones: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT *'
      'FROM PCP_REFE_VARI_PREN_DENOMI'
      
        'WHERE CONS_REFE_VARI_PREN_TERMINADA = :CONS_REFE_VARI_PREN_TERMI' +
        'NADA')
    Left = 541
    Top = 319
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_VARI_PREN_TERMINADA'
        ParamType = ptUnknown
      end>
  end
  object DSQDenominaciones: TDataSource
    AutoEdit = False
    DataSet = QDenominaciones
    Left = 573
    Top = 319
  end
  object QTallas_Denominacion: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQDenominaciones
    SQL.Strings = (
      'SELECT *'
      'FROM PCP_REFE_VARI_PREN_TALLAS'
      'WHERE CONS_REFE_VARI_PREN_DENOMI = :CONS_REFE_VARI_PREN_DENOMI')
    Left = 541
    Top = 351
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_VARI_PREN_DENOMI'
        ParamType = ptUnknown
      end>
  end
end

inherited fn2_come_pedi_plan_asignar: Tfn2_come_pedi_plan_asignar
  Left = 149
  Top = 133
  Width = 650
  Height = 539
  BorderIcons = [biSystemMenu]
  Caption = 'Asignar a una orden de producción'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 642
  end
  inherited padr_shap_xp_down: TShape
    Top = 502
    Width = 642
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 642
  end
  inherited padr_pane_arriba: TPanel
    Width = 642
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 100
    Width = 642
    inherited padr_beve_1: TBevel
      Width = 636
    end
    inherited padr_sepa_new: TShape
      Width = 636
    end
  end
  inherited padr_pane_info: TPanel
    Top = 511
    Width = 642
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
    Top = 109
    Width = 642
    Height = 371
    ActivePage = page_nueva
    Align = alTop
    BoldCurrentTab = True
    Color = 16578290
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FlatColor = 10435335
    Margin = 5
    ParentColor = False
    ParentFont = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 6
    Transparent = True
    FixedDimension = 19
    object page_nueva: TSCLTabSheet
      Color = 16578290
      Caption = 'En una nueva orden'
      object PCPFrame2: TPCPFrame
        Tag = 295
        Left = 0
        Top = 53
        Width = 638
        Height = 295
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Caption = 'Unidades'
        Titulo_Color = 16244694
        Boton_Visible = False
        BorderWidthIn = 4
        object grid_Nuevo: TSCLColumnGrid
          Left = 6
          Top = 25
          Width = 626
          Height = 264
          Cursor = crDefault
          Align = alClient
          ColCount = 5
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 19
          FixedColor = 15582631
          FixedCols = 4
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
          TabOrder = 1
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'MS Sans Serif'
          ActiveCellFont.Style = [fsBold]
          EnhRowColMove = False
          OnGetCellColor = grid_NuevoGetCellColor
          OnGetAlignment = grid_NuevoGetAlignment
          OnCanEditCell = grid_NuevoCanEditCell
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
          SelectionColor = clWhite
          OnColumnSize = grid_NuevoColumnSize
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
          FixedColWidth = 152
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
            'Color'
            ''
            ''
            'No. color')
          ShowSelection = False
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
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 152
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
              Tag = -1
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
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'CONS_PEDI_REFERENCIA'
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
              Header = 'No. color'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'NUME_COLOR'
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
              Name = 'UNIDADES'
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
              Tag = -1
              Width = 0
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
            152
            0
            0
            65
            0)
          RowHeights = (
            19
            19
            19
            19
            19)
        end
      end
      object PCPFrame1: TPCPFrame
        Tag = 53
        Left = 0
        Top = 0
        Width = 638
        Height = 53
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
        TabOrder = 1
        Caption = 'Información de la orden'
        Titulo_Color = 16244694
        Boton_Visible = False
        object SCLDBLabel1: TSCLDBLabel
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
          FocusControl = edit_nume_orden
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'No. orden trabajo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object labe_auto_Generar: TLabel
          Left = 247
          Top = 32
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edit_nume_orden: TdxDBEdit
          Left = 110
          Top = 28
          Width = 130
          TabOrder = 1
          DataField = 'nume_prod_orden'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
      end
    end
    object page_existente: TSCLTabSheet
      Color = 16578290
      TabVisible = False
      Caption = 'En una orden existente'
    end
    object page_anotaciones: TSCLTabSheet
      Color = 16578290
      Caption = 'Anotaciones'
      OnShow = page_anotacionesShow
      object PCPFrame3: TPCPFrame
        Tag = 348
        Left = 0
        Top = 0
        Width = 638
        Height = 348
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Caption = 'Escriba las anotaciones especiales de la orden de producción'
        Titulo_Color = 16244694
        Boton_Visible = False
        BorderWidthIn = 4
        inline fram_historial: Tffra_historialDB
          Left = 6
          Top = 25
          Width = 626
          Height = 317
          Align = alClient
          TabOrder = 1
          inherited fram_pane: TPanel
            Width = 626
            Height = 317
            inherited fram_grid_historial: TdxDBGrid
              Width = 626
              Height = 291
              Filter.Criteria = {00000000}
            end
            inherited TBXDock1: TTBXDock
              Width = 626
              inherited TBXToolbar1: TTBXToolbar
                Images = _fMDI.imag_pequenas
              end
            end
          end
          inherited data_historial: TDataSource
            DataSet = tabl_historial
          end
          inherited pop_grid_anotaciones: TTBXPopupMenu
            Images = _fMDI.imag_pequenas
          end
        end
      end
    end
  end
  object fram_informacion: TPCPFrame [7]
    Tag = 55
    Left = 0
    Top = 45
    Width = 642
    Height = 55
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
    TabOrder = 7
    Visible = False
    Caption = 'Información de la orden'
    Titulo_Color = 16244694
    object SCLDBLabel2: TSCLDBLabel
      Left = 6
      Top = 30
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
      FocusControl = dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Consecutivo:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 262
      Top = 30
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'No. de orden:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBEdit1: TdxDBEdit
      Left = 108
      Top = 30
      Width = 130
      Enabled = False
      TabOrder = 1
      DataField = 'cons_prod_orden'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 364
      Top = 30
      Width = 130
      Enabled = False
      TabOrder = 2
      DataField = 'nume_prod_orden'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 503
    Width = 642
    inherited padr_beve_abajo: TBevel
      Width = 636
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 107
    Width = 642
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_Ventana
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
    inherited padr_acti_guardar: TDataSetPost
      Enabled = True
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Enabled = True
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
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = False
      Visible = False
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_PROD_ORDENES'
  end
  object acti_ventana: TActionList
    Left = 322
    Top = 36
  end
  object quer_tallas: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      'Select *'
      'from tmpPLAN_TALLAS'
      'Order by secu_talla')
    Left = 136
    Top = 225
  end
  object quer_colores: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      'Select *'
      'from tmpPLAN_COLORES'
      'Order by secu_color')
    Left = 168
    Top = 225
  end
  object quer_unidades: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      'Select * '
      'from tmpPLAN_UNIDADES')
    Left = 200
    Top = 225
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_prod_orden'
        DataType = ftInteger
      end
      item
        Name = 'nume_prod_orden'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cons_Referencia'
        DataType = ftInteger
      end>
    AfterInsert = myTabla_VentanaAfterInsert
    BeforePost = myTabla_VentanaBeforePost
    AfterPost = myTabla_VentanaAfterPost
    Left = 218
    Top = 4
  end
  object quer_inse_orden: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Insert into '
      'pcp_prod_ordenes'
      '(cons_prod_orden, cons_Referencia, nume_prod_orden)'
      'Values'
      '(:cons_prod_orden,  :cons_referencia, :nume_prod_orden)')
    Left = 144
    Top = 286
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_orden'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cons_referencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'nume_prod_orden'
        ParamType = ptUnknown
      end>
  end
  object quer_inse_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert into'
      'pcp_pedi_planeacion'
      '(cons_pedi_unidades, cons_prod_orden)'
      'Values'
      '(:cons_pedi_unidades, :cons_prod_orden)')
    Left = 176
    Top = 286
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_pedi_unidades'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cons_prod_orden'
        ParamType = ptUnknown
      end>
  end
  object tabl_historial: TTable
    BeforePost = tabl_historialBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PROD_ORDEN'
    MasterFields = 'cons_prod_orden'
    MasterSource = data_ventana
    TableName = 'PCP_PROD_ORDE_HISTORIAL'
    Left = 208
    Top = 285
  end
  object data_usuarios: TDataSource
    DataSet = _fMDI.tabl_usuarios
    Left = 426
    Top = 4
  end
  object quer_evento: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select *'
      'from PRO_VINC_PROD_ORDENES(:cons_prod_orden)')
    Left = 351
    Top = 235
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_orden'
        ParamType = ptInput
      end>
  end
end

inherited fn2_come_pedi_consultas: Tfn2_come_pedi_consultas
  Left = 30
  Top = 43
  Width = 800
  Height = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 792
  end
  inherited padr_shap_xp_down: TShape
    Top = 563
    Width = 792
  end
  object padr_sepa_izquierda: TdfsSplitter [2]
    Left = 199
    Top = 77
    Height = 486
    Cursor = crHSplit
    Align = alLeft
    MinSize = 1
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 792
  end
  inherited padr_pane_arriba: TPanel
    Width = 792
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 792
    inherited padr_beve_1: TBevel
      Width = 786
    end
    inherited padr_sepa_new: TShape
      Width = 786
    end
  end
  inherited padr_pane_info: TPanel
    Top = 572
    Width = 792
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
    Width = 792
    inherited padr_pane_titulo: TPanel
      Width = 751
    end
    inherited padr_pane_2: TPanel
      Left = 753
    end
    inherited padr_pane_cerrar: TPanel
      Left = 771
    end
  end
  object fram_resultados: TPCPFrame [8]
    Tag = 456
    Left = 209
    Top = 77
    Width = 583
    Height = 486
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Caption = 'Resultado de la búsqueda'
    Titulo_Color = 16244694
    Boton_Visible = False
    TipoFrame = tfNinguno
    FlatBorder = True
  end
  inherited pane_beve_abajo: TPanel
    Top = 564
    Width = 792
    inherited padr_beve_abajo: TBevel
      Width = 786
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 792
  end
  object padr_fram_filtro: TPCPFrame [11]
    Tag = 456
    Left = 0
    Top = 77
    Width = 199
    Height = 486
    Align = alLeft
    BorderWidth = 2
    Constraints.MinHeight = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Titulo_Color = 16244694
    Boton_Visible = False
    TipoFrame = tfNinguno
    FlatBorder = True
    object fram_filtros: TScrollBox
      Left = 3
      Top = 3
      Width = 193
      Height = 480
      VertScrollBar.Color = 16244694
      VertScrollBar.ParentColor = False
      VertScrollBar.Style = ssFlat
      Align = alClient
      BorderStyle = bsNone
      Constraints.MinHeight = 4
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      PopupMenu = pop_actualizar
      TabOrder = 1
      object pane_filt_variaciones: TPCPFrame
        Tag = 133
        Left = 0
        Top = 92
        Width = 193
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
        TabOrder = 3
        Caption = 'Variaciones'
        Titulo_Color = 16244694
        Titulo_Comprimido = True
        Boton_Visible = False
        Check_Visible = True
        onCheckChange = pane_filt_variacionesCheckChange
        BorderWidthIn = 2
        FlatBorder = True
        object grid_variaciones: TdxDBGrid
          Left = 5
          Top = 24
          Width = 183
          Height = 0
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_REFE_TIPO_VARIACION'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = padr_pop_filtros
          TabOrder = 1
          DataSource = data_Variaciones
          Filter.Active = True
          Filter.AutoDataSetFilter = True
          Filter.CaseInsensitive = True
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowHeader = False
          object grid_variacionesCONS_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_TIPO_VARIACION'
          end
          object grid_variacionesNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TIPO_VARIACION'
          end
        end
      end
      object pane_filt_referencias: TPCPFrame
        Tag = 159
        Left = 0
        Top = 69
        Width = 193
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
        TabOrder = 2
        Caption = 'Referencias'
        Titulo_Color = 16244694
        Titulo_Comprimido = True
        Boton_Visible = False
        Check_Visible = True
        onCheckChange = pane_filt_referenciasCheckChange
        BorderWidthIn = 2
        FlatBorder = True
        object grid_referencias: TdxDBGrid
          Left = 5
          Top = 24
          Width = 183
          Height = 0
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_REFERENCIA'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = padr_pop_filtros
          TabOrder = 1
          DataSource = data_referencias
          Filter.Active = True
          Filter.AutoDataSetFilter = True
          Filter.CaseInsensitive = True
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowHeader = False
          object grid_referenciasCONS_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFERENCIA'
          end
          object grid_referenciasCODI_REFERENCIA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFERENCIA'
          end
        end
      end
      object pane_filt_Clientes: TPCPFrame
        Tag = 153
        Left = 0
        Top = 115
        Width = 193
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
        TabOrder = 4
        Caption = 'Clientes'
        Titulo_Color = 16244694
        Titulo_Comprimido = True
        Boton_Visible = False
        Check_Visible = True
        onCheckChange = pane_filt_ClientesCheckChange
        BorderWidthIn = 2
        FlatBorder = True
        object grid_clientes: TdxDBGrid
          Left = 5
          Top = 24
          Width = 183
          Height = 0
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_TERCERO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = padr_pop_filtros
          TabOrder = 1
          DataSource = data_clientes
          Filter.Active = True
          Filter.AutoDataSetFilter = True
          Filter.CaseInsensitive = True
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowHeader = False
          object grid_clientesCONS_TERCERO: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TERCERO'
          end
          object grid_clientesNOMB_TERCERO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TERCERO'
          end
        end
      end
      object fram_filt_fech_entrega: TPCPFrame
        Tag = 75
        Left = 0
        Top = 23
        Width = 193
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
        TabOrder = 1
        Caption = 'Fecha entrega'
        Titulo_Color = 16244694
        Titulo_Comprimido = True
        FlatBorder = True
        object chec_fech_entr_desde: TdxCheckEdit
          Left = 8
          Top = 26
          Width = 157
          TabOrder = 1
          Caption = 'Desde:'
          StyleController = padr_estilo
          OnChange = chec_fech_entr_desdeChange
        end
        object comb_fech_entr_desde: TdxDateEdit
          Left = 64
          Top = 26
          Width = 103
          Enabled = False
          TabOrder = 2
          StyleController = padr_estilo
          Date = -700000
        end
        object chec_fech_entr_hasta: TdxCheckEdit
          Left = 8
          Top = 46
          Width = 157
          TabOrder = 3
          Caption = 'Hasta:'
          StyleController = padr_estilo
          OnChange = chec_fech_entr_hastaChange
        end
        object comb_fech_entr_hasta: TdxDateEdit
          Left = 64
          Top = 46
          Width = 103
          Enabled = False
          TabOrder = 4
          StyleController = padr_estilo
          Date = -700000
        end
      end
      object fram_filt_fech_pedido: TPCPFrame
        Tag = 75
        Left = 0
        Top = 0
        Width = 193
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
        TabOrder = 0
        Caption = 'Fecha pedido'
        Titulo_Color = 16244694
        Titulo_Comprimido = True
        FlatBorder = True
        object chec_fech_pedi_desde: TdxCheckEdit
          Left = 8
          Top = 26
          Width = 157
          TabOrder = 1
          Caption = 'Desde:'
          StyleController = padr_estilo
          OnChange = chec_fech_pedi_desdeChange
        end
        object chec_fech_pedi_hasta: TdxCheckEdit
          Left = 8
          Top = 46
          Width = 157
          TabOrder = 2
          Caption = 'Hasta:'
          StyleController = padr_estilo
          OnChange = chec_fech_pedi_hastaChange
        end
        object comb_fech_pedi_desde: TdxDateEdit
          Left = 64
          Top = 26
          Width = 103
          Enabled = False
          TabOrder = 3
          StyleController = padr_estilo
          Date = -700000
        end
        object comb_fech_pedi_hasta: TdxDateEdit
          Left = 64
          Top = 46
          Width = 103
          Enabled = False
          TabOrder = 4
          StyleController = padr_estilo
          Date = -700000
        end
      end
      object pane_filt_vendedores: TPCPFrame
        Tag = 141
        Left = 0
        Top = 138
        Width = 193
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
        TabOrder = 5
        Caption = 'Vendedores'
        Titulo_Color = 16244694
        Titulo_Comprimido = True
        Boton_Visible = False
        Check_Visible = True
        onCheckChange = pane_filt_vendedoresCheckChange
        BorderWidthIn = 2
        FlatBorder = True
        object grid_vendedores: TdxDBGrid
          Left = 5
          Top = 24
          Width = 183
          Height = 0
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_COME_VENDEDOR'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = padr_pop_filtros
          TabOrder = 1
          DataSource = data_vendedores
          Filter.Active = True
          Filter.AutoDataSetFilter = True
          Filter.CaseInsensitive = True
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowHeader = False
          object grid_vendedoresCONS_COME_VENDEDOR: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COME_VENDEDOR'
          end
          object grid_vendedoresNOMB_COME_VENDEDOR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COME_VENDEDOR'
          end
        end
      end
      object pane_filt_prioridades: TPCPFrame
        Tag = 96
        Left = 0
        Top = 161
        Width = 193
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
        TabOrder = 6
        Caption = 'Prioridad'
        Titulo_Color = 16244694
        Titulo_Comprimido = True
        Boton_Visible = False
        Check_Visible = True
        onCheckChange = pane_filt_prioridadesCheckChange
        BorderWidthIn = 2
        FlatBorder = True
        object grid_prioridades: TdxDBGrid
          Left = 5
          Top = 24
          Width = 183
          Height = 0
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_COME_PRIO_PEDIDO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = padr_pop_filtros
          TabOrder = 1
          DataSource = data_prioridades
          Filter.Active = True
          Filter.AutoDataSetFilter = True
          Filter.CaseInsensitive = True
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowHeader = False
          object grid_prioridadesCONS_COME_PRIO_PEDIDO: TdxDBGridMaskColumn
            Visible = False
            Width = 120
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COME_PRIO_PEDIDO'
          end
          object grid_prioridadesCOLOR: TdxDBGridMaskColumn
            Width = 47
            BandIndex = 0
            RowIndex = 0
            OnCustomDrawCell = grid_prioridadesCOLORCustomDrawCell
            FieldName = 'COLOR'
          end
          object grid_prioridadesNOMB_COME_PRIO_PEDIDO: TdxDBGridMaskColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COME_PRIO_PEDIDO'
          end
        end
      end
      object pane_filt_pedi_pendientes: TPCPFrame
        Tag = 165
        Left = 0
        Top = 46
        Width = 193
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
        TabOrder = 7
        Caption = 'Pedidos'
        Titulo_Color = 16244694
        Titulo_Comprimido = True
        Boton_Visible = False
        Check_Visible = True
        onCheckChange = pane_filt_pedi_pendientesCheckChange
        BorderWidthIn = 2
        FlatBorder = True
        object grid_pedi_pendientes: TdxDBGrid
          Left = 5
          Top = 24
          Width = 183
          Height = 0
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_PEDI_REFERENCIA'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = padr_pop_filtros
          TabOrder = 1
          DataSource = data_pedidos
          Filter.Active = True
          Filter.AutoDataSetFilter = True
          Filter.CaseInsensitive = True
          Filter.Criteria = {00000000}
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
          ShowHeader = False
          object grid_pedi_pendientesCONS_PEDI_REFERENCIA: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PEDI_REFERENCIA'
          end
          object grid_pedi_pendientesNUME_PEDIDO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PEDIDO'
          end
          object grid_pedi_pendientesORDE_COMPRA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ORDE_COMPRA'
          end
        end
      end
    end
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = True
      Visible = True
      OnUpdate = padr_acti_actualizarUpdate
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 634
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 602
  end
  inherited padr_pict_container: TPictureContainer
    Left = 602
  end
  object quer_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
      'Select cons_referencia, codi_referencia, con_entrepiernas'
      'from GLO_REFERENCIAS'
      'where es_prototipo = -1'
      'Order by codi_referencia')
    Left = 690
    Top = 65535
    object quer_referenciasCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
    end
    object quer_referenciasCODI_REFERENCIA: TStringField
      DisplayWidth = 12
      FieldName = 'CODI_REFERENCIA'
      Size = 12
    end
    object quer_referenciasCON_ENTREPIERNAS: TIntegerField
      FieldName = 'CON_ENTREPIERNAS'
    end
  end
  object data_referencias: TDataSource
    DataSet = quer_referencias
    Left = 690
    Top = 23
  end
  object quer_variaciones: TQuery
    DatabaseName = 'data_base_pcp'
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
      'Select cons_refe_tipo_variacion, nomb_refe_tipo_variacion'
      'from PCP_REFE_TIPO_VARIACIONES'
      'Order by nomb_refe_tipo_variacion')
    Left = 712
    Top = 65535
    object quer_variacionesCONS_REFE_TIPO_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_TIPO_VARIACION'
    end
    object quer_variacionesNOMB_REFE_TIPO_VARIACION: TStringField
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Size = 60
    end
  end
  object data_Variaciones: TDataSource
    DataSet = quer_variaciones
    Left = 712
    Top = 23
  end
  object quer_clientes: TQuery
    DatabaseName = 'data_base_pcp'
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
      'Select cons_tercero, nomb_tercero '
      'from VIS_PCP_CLIENTES'
      'order by nomb_tercero')
    Left = 733
    Top = 65535
    object quer_clientesCONS_TERCERO: TIntegerField
      FieldName = 'CONS_TERCERO'
    end
    object quer_clientesNOMB_TERCERO: TStringField
      FieldName = 'NOMB_TERCERO'
      Size = 120
    end
  end
  object data_clientes: TDataSource
    DataSet = quer_clientes
    Left = 733
    Top = 23
  end
  object quer_ventana: TQuery
    DatabaseName = 'data_base_pcp'
    Left = 217
    Top = 5
  end
  object quer_vendedores: TQuery
    DatabaseName = 'data_base_pcp'
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
      'Select cons_come_vendedor, nomb_come_vendedor'
      'from glo_come_vendedores'
      'order by nomb_come_vendedor')
    Left = 761
    Top = 65533
    object quer_vendedoresCONS_COME_VENDEDOR: TIntegerField
      FieldName = 'CONS_COME_VENDEDOR'
    end
    object quer_vendedoresNOMB_COME_VENDEDOR: TStringField
      FieldName = 'NOMB_COME_VENDEDOR'
      Size = 60
    end
  end
  object data_vendedores: TDataSource
    DataSet = quer_vendedores
    Left = 759
    Top = 22
  end
  object quer_prioridades: TQuery
    DatabaseName = 'data_base_pcp'
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
      'Select cons_come_prio_pedido, nomb_come_prio_pedido, color'
      'from glo_come_prio_pedidos'
      'order by nomb_come_prio_pedido')
    Left = 673
    Top = 65533
    object quer_prioridadesCONS_COME_PRIO_PEDIDO: TIntegerField
      FieldName = 'CONS_COME_PRIO_PEDIDO'
    end
    object quer_prioridadesNOMB_COME_PRIO_PEDIDO: TStringField
      FieldName = 'NOMB_COME_PRIO_PEDIDO'
      Size = 60
    end
    object quer_prioridadesCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
  end
  object data_prioridades: TDataSource
    DataSet = quer_prioridades
    Left = 673
    Top = 21
  end
  object quer_pedi_pendientes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_pedi_referencia, nume_pedido, orde_compra'
      'from VIS_PCP_PEDI_REFERENCIAS'
      'Order by  nume_pedido, orde_compra')
    Left = 651
    Top = 65533
    object quer_pedi_pendientesCONS_PEDI_REFERENCIA: TIntegerField
      FieldName = 'CONS_PEDI_REFERENCIA'
    end
    object quer_pedi_pendientesNUME_PEDIDO: TStringField
      FieldName = 'NUME_PEDIDO'
    end
    object quer_pedi_pendientesORDE_COMPRA: TStringField
      FieldName = 'ORDE_COMPRA'
    end
  end
  object data_pedidos: TDataSource
    DataSet = quer_pedi_pendientes
    Left = 651
    Top = 21
  end
  object pop_actualizar: TTBXPopupMenu
    Left = 160
    Top = 253
    object TBXItem5: TTBXItem
      Caption = 'Actualizar consultas'
      ImageIndex = 4
      Images = imag_pequenas
      OnClick = doActualizar
    end
  end
  object padr_pop_filtros: TTBXPopupMenu
    OnPopup = padr_pop_filtrosPopup
    Left = 156
    Top = 152
    object padr_boto_ira: TTBXItem
      Caption = 'Ir'
      OnClick = padr_boto_iraClick
    end
  end
end

inherited fn2_come_pedi_cons_general: Tfn2_come_pedi_cons_general
  Left = 69
  Top = 91
  Width = 812
  Height = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
    Width = 804
  end
  inherited padr_sepa_izquierda: TdfsSplitter
    Height = 498
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
    Width = 804
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
    Width = 804
    inherited padr_pane_titulo: TPanel
      Width = 763
      Caption = 'Consulta general de pedidos'
    end
    inherited padr_pane_2: TPanel
      Left = 765
    end
    inherited padr_pane_cerrar: TPanel
      Left = 783
    end
  end
  inherited fram_resultados: TPCPFrame
    Tag = 476
    Width = 595
    Height = 498
    BorderWidth = 0
    Caption = 'Lista'
    object dfsSplitter1: TdfsSplitter
      Left = 0
      Top = 465
      Width = 595
      Height = 10
      Cursor = crVSplit
      Align = alBottom
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
      ButtonWidth = 60
    end
    object PCPFrame1: TPCPFrame
      Tag = 443
      Left = 0
      Top = 0
      Width = 595
      Height = 465
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
      Caption = 'Pedidos existentes'
      Titulo_Color = 16244694
      Boton_Visible = False
      BorderWidthIn = 3
      FlatBorder = True
      object grid_resultados: TSCLDBGrid
        Left = 6
        Top = 25
        Width = 583
        Height = 434
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderMinRowCount = 2
        HeaderPanelRowCount = 1
        KeyField = 'CONS_PEDIDO'
        ShowGroupPanel = True
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                SummaryField = 'CONS_PEDIDO'
                SummaryFormat = '(Pedidos = ,0)'
                SummaryType = cstCount
              end
              item
                ColumnName = 'grid_resultadosUNIDADES'
                SummaryField = 'UNIDADES'
                SummaryFormat = ',0'
                SummaryType = cstSum
              end>
            Name = 'grid_resultadosSummaryGroup1'
          end>
        SummarySeparator = ', '
        Align = alClient
        Color = clWhite
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
        DataSource = data_maestro
        Filter.Active = True
        Filter.CaseInsensitive = True
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
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        ShowRowFooter = True
        OnChangeNode = grid_resultadosChangeNode
        object grid_resultadosCONS_PEDIDO: TdxDBGridMaskColumn
          Visible = False
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_PEDIDO'
        end
        object grid_resultadosNUME_PEDIDO: TdxDBGridMaskColumn
          Width = 86
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NUME_PEDIDO'
          SummaryFooterType = cstCount
          SummaryFooterField = 'CONS_PEDIDO'
          SummaryFooterFormat = ',0'
        end
        object grid_resultadosFECH_PEDIDO: TdxDBGridDateColumn
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FECH_PEDIDO'
        end
        object grid_resultadosNOMB_TERCERO: TdxDBGridMaskColumn
          Width = 162
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_TERCERO'
        end
        object grid_resultadosORDE_COMPRA: TdxDBGridMaskColumn
          Caption = 'Sub-pedido'
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ORDE_COMPRA'
        end
        object grid_resultadosCODI_REFERENCIA: TdxDBGridMaskColumn
          Width = 92
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODI_REFERENCIA'
        end
        object grid_resultadosNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
          Width = 97
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_REFE_TIPO_VARIACION'
        end
        object grid_resultadosFECH_ENTREGA: TdxDBGridDateColumn
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FECH_ENTREGA'
        end
        object grid_resultadosUNIDADES: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UNIDADES'
          SummaryFooterType = cstSum
          SummaryFooterField = 'UNIDADES'
          SummaryFooterFormat = ',0'
        end
        object grid_resultadosNOMB_COME_PRIO_PEDIDO: TdxDBGridMaskColumn
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_COME_PRIO_PEDIDO'
        end
        object grid_resultadosNOMB_REFE_LAVADO: TdxDBGridMaskColumn
          Width = 89
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_REFE_LAVADO'
        end
        object grid_resultadosNOMB_REFE_BORDADO: TdxDBGridMaskColumn
          Width = 101
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_REFE_BORDADO'
        end
        object grid_resultadosNOMB_REFE_ESTAMPADO: TdxDBGridMaskColumn
          Width = 107
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_REFE_ESTAMPADO'
        end
        object grid_resultadosNOMB_REFERENCIA: TdxDBGridMaskColumn
          Width = 202
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_REFERENCIA'
        end
        object grid_resultadosNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn
          Width = 102
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_REFE_TEMPORADA'
        end
        object grid_resultadosNOMB_COME_VENDEDOR: TdxDBGridMaskColumn
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_COME_VENDEDOR'
        end
        object grid_resultadosCOLO_COME_PRIO_PEDIDO: TdxDBGridMaskColumn
          Visible = False
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COLO_COME_PRIO_PEDIDO'
        end
        object grid_resultadosCONS_PEDI_REFERENCIA: TdxDBGridMaskColumn
          Visible = False
          Width = 117
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_PEDI_REFERENCIA'
        end
        object grid_resultadosCONS_REFERENCIA: TdxDBGridMaskColumn
          Visible = False
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_REFERENCIA'
        end
        object grid_resultadosCONS_REFE_VARIACION: TdxDBGridMaskColumn
          Visible = False
          Width = 115
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_REFE_VARIACION'
        end
        object grid_resultadosCONS_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
          Visible = False
          Width = 142
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_REFE_TIPO_VARIACION'
        end
        object grid_resultadosTOLE_INFERIOR: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TOLE_INFERIOR'
        end
        object grid_resultadosTOLE_SUPERIOR: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TOLE_SUPERIOR'
        end
      end
    end
    object PCPFrame2: TPCPFrame
      Tag = 194
      Left = 0
      Top = 475
      Width = 595
      Height = 23
      Align = alBottom
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Caption = 'Detalle de la orden de compra'
      Titulo_Color = 16244694
      Titulo_Comprimido = True
      BorderWidthIn = 2
      FlatBorder = True
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 576
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
  end
  inherited padr_fram_filtro: TPCPFrame
    Height = 498
    inherited fram_filtros: TScrollBox
      Height = 492
      inherited pane_filt_variaciones: TPCPFrame
        inherited grid_variaciones: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited pane_filt_referencias: TPCPFrame
        inherited grid_referencias: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited pane_filt_Clientes: TPCPFrame
        inherited grid_clientes: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited pane_filt_vendedores: TPCPFrame
        inherited grid_vendedores: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited pane_filt_prioridades: TPCPFrame
        inherited grid_prioridades: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited pane_filt_pedi_pendientes: TPCPFrame
        inherited grid_pedi_pendientes: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
    end
  end
  inherited quer_ventana: TQuery
    AfterOpen = quer_ventanaAfterOpen
    SQL.Strings = (
      'Select *'
      'from VIS_PCP_PEDI_UNID_TOTALES')
    Left = 153
    object quer_ventanaCONS_PEDIDO: TIntegerField
      FieldName = 'CONS_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CONS_PEDIDO'
    end
    object quer_ventanaNUME_PEDIDO: TStringField
      DisplayLabel = 'No. pedido'
      FieldName = 'NUME_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NUME_PEDIDO'
    end
    object quer_ventanaNOMB_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Temporada'
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object quer_ventanaNOMB_TERCERO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOMB_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_TERCERO'
      Size = 120
    end
    object quer_ventanaFECH_PEDIDO: TDateTimeField
      DisplayLabel = 'Fecha pedido'
      FieldName = 'FECH_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.FECH_PEDIDO'
    end
    object quer_ventanaFECH_ENTREGA: TDateTimeField
      DisplayLabel = 'Fecha entrega'
      FieldName = 'FECH_ENTREGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.FECH_ENTREGA'
    end
    object quer_ventanaNOMB_COME_VENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMB_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_COME_VENDEDOR'
      Size = 60
    end
    object quer_ventanaNOMB_COME_PRIO_PEDIDO: TStringField
      DisplayLabel = 'Prioridad'
      FieldName = 'NOMB_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_COME_PRIO_PEDIDO'
      Size = 60
    end
    object quer_ventanaCOLO_COME_PRIO_PEDIDO: TIntegerField
      FieldName = 'COLO_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.COLO_COME_PRIO_PEDIDO'
    end
    object quer_ventanaCONS_PEDI_REFERENCIA: TIntegerField
      FieldName = 'CONS_PEDI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CONS_PEDI_REFERENCIA'
    end
    object quer_ventanaCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CONS_REFERENCIA'
    end
    object quer_ventanaCODI_REFERENCIA: TStringField
      DisplayLabel = 'Cód. referencia'
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CODI_REFERENCIA'
      Size = 12
    end
    object quer_ventanaNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Nombre referencia'
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFERENCIA'
      Size = 60
    end
    object quer_ventanaCONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CONS_REFE_VARIACION'
    end
    object quer_ventanaCONS_REFE_TIPO_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.CONS_REFE_TIPO_VARIACION'
    end
    object quer_ventanaNOMB_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Variación'
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFE_TIPO_VARIACION'
      Size = 60
    end
    object quer_ventanaORDE_COMPRA: TStringField
      DisplayLabel = 'Orden de compra'
      FieldName = 'ORDE_COMPRA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.ORDE_COMPRA'
    end
    object quer_ventanaNOMB_REFE_LAVADO: TStringField
      DisplayLabel = 'Lavado'
      FieldName = 'NOMB_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFE_LAVADO'
      Size = 60
    end
    object quer_ventanaNOMB_REFE_BORDADO: TStringField
      DisplayLabel = 'Bordado'
      FieldName = 'NOMB_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFE_BORDADO'
      Size = 60
    end
    object quer_ventanaNOMB_REFE_ESTAMPADO: TStringField
      DisplayLabel = 'Estampado'
      FieldName = 'NOMB_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.NOMB_REFE_ESTAMPADO'
      Size = 60
    end
    object quer_ventanaTOLE_INFERIOR: TSmallintField
      DisplayLabel = '% Tol. sup.'
      FieldName = 'TOLE_INFERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.TOLE_INFERIOR'
    end
    object quer_ventanaTOLE_SUPERIOR: TSmallintField
      DisplayLabel = '% Tol. inf.'
      FieldName = 'TOLE_SUPERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.TOLE_SUPERIOR'
    end
    object quer_ventanaUNIDADES: TIntegerField
      DisplayLabel = 'Unidades'
      FieldName = 'UNIDADES'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_UNID_TOTALES.UNIDADES'
      DisplayFormat = ',0'
    end
    object quer_ventanaCON_ENTREPIERNAS: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CON_ENTREPIERNAS'
      LookupDataSet = quer_referencias
      LookupKeyFields = 'CONS_REFERENCIA'
      LookupResultField = 'CON_ENTREPIERNAS'
      KeyFields = 'CONS_REFERENCIA'
      Lookup = True
    end
  end
  object quer_detalle: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_maestro
    SQL.Strings = (
      'Select'
      '"(" || secu_talla || ") " || talla Talla,'
      
        '"(" || secu_color || ") " || nomb_color || " " || nume_color Col' +
        'or,'
      'sum(unidades) as unidades'
      'from VIS_PCP_PEDI_UNID_DETALLE'
      'Where cons_pedi_referencia = :cons_pedi_referencia'
      'group by 1,2 ')
    Left = 154
    Top = 36
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PEDI_REFERENCIA'
        ParamType = ptInput
      end>
  end
  object data_detalle: TDataSource
    DataSet = quer_detalle
    Left = 186
    Top = 36
  end
  object data_maestro: TDataSource
    DataSet = quer_ventana
    Left = 186
    Top = 3
  end
end

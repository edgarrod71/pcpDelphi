object ffra_prod_expl_insumos: Tffra_prod_expl_insumos
  Left = 0
  Top = 0
  Width = 879
  Height = 417
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object fram_grid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 879
    Height = 417
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'CONS_REFE_INSUMO'
    SummaryGroups = <
      item
        DefaultGroup = True
        SummaryItems = <
          item
            ColumnName = 'dxDBGrid1CONS_TOTAL'
            SummaryField = 'CONS_TOTAL'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            ColumnName = 'dxDBGrid1COST_UNIDAD'
            SummaryField = 'COST_UNIDAD'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            ColumnName = 'dxDBGrid1COST_TOTAL'
            SummaryField = 'COST_TOTAL'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            ColumnName = 'dxDBGrid1EXISTENTE'
            SummaryField = 'EXISTENTE'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            ColumnName = 'dxDBGrid1DISPONIBLE'
            SummaryField = 'DISPONIBLE'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            ColumnName = 'dxDBGrid1ENTREGADO'
            SummaryField = 'ENTREGADO'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end
          item
            ColumnName = 'dxDBGrid1DIFERENCIA'
            SummaryField = 'DIFERENCIA'
            SummaryFormat = ',0.00'
            SummaryType = cstSum
          end>
        Name = 'dxDBGrid1SummaryGroup1'
      end>
    SummarySeparator = ', '
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = fram_pop
    TabOrder = 0
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = data_explosion
    Filter.Criteria = {00000000}
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HideFocusRect = True
    HideSelection = True
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHideFocusRect, edgoInvertSelect, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    ShowRowFooter = True
    object dxDBGrid1CONS_REFE_INSUMO: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 105
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_REFE_INSUMO'
    end
    object dxDBGrid1CONS_INSU_REFERENCIA: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 117
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_INSU_REFERENCIA'
    end
    object dxDBGrid1CODI_INSU_REFERENCIA: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 115
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODI_INSU_REFERENCIA'
    end
    object dxDBGrid1NOMB_INSU_REFERENCIA: TdxDBGridMaskColumn
      Caption = 'Referencia de Insumo'
      HeaderAlignment = taCenter
      Sorted = csUp
      Visible = False
      Width = 119
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOMB_INSU_REFERENCIA'
      GroupIndex = 0
    end
    object dxDBGrid1CONS_INSU_GRUPO: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 94
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_INSU_GRUPO'
    end
    object dxDBGrid1CODI_INSU_GRUPO: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 91
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODI_INSU_GRUPO'
    end
    object dxDBGrid1NOMB_INSU_GRUPO: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 293
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOMB_INSU_GRUPO'
    end
    object dxDBGrid1CONS_INSU_SUBGRUPO: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 111
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_INSU_SUBGRUPO'
    end
    object dxDBGrid1CODI_INSU_SUBGRUPO: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 108
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODI_INSU_SUBGRUPO'
    end
    object dxDBGrid1NOMB_INSU_SUBGRUPO: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 293
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOMB_INSU_SUBGRUPO'
    end
    object dxDBGrid1ES_FABRICACION: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ES_FABRICACION'
    end
    object dxDBGrid1CONS_PROVEEDOR: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 88
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_PROVEEDOR'
    end
    object dxDBGrid1CODI_PROVEEDOR: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 85
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODI_PROVEEDOR'
    end
    object dxDBGrid1NOMB_PROVEEDOR: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 89
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOMB_PROVEEDOR'
    end
    object dxDBGrid1CONS_REFE_COLOR: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 91
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_REFE_COLOR'
    end
    object dxDBGrid1CONS_COLOR: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_COLOR'
    end
    object dxDBGrid1CODI_COLOR: TdxDBGridMaskColumn
      Caption = 'Cód. color'
      HeaderAlignment = taCenter
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODI_COLOR'
    end
    object dxDBGrid1NOMB_COLOR: TdxDBGridMaskColumn
      Caption = 'Color'
      HeaderAlignment = taCenter
      Width = 107
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOMB_COLOR'
    end
    object dxDBGrid1CONS_UNIDAD: TdxDBGridMaskColumn
      Caption = 'Consumo'
      HeaderAlignment = taCenter
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_UNIDAD'
    end
    object dxDBGrid1NOMB_UNID_MEDIDA: TdxDBGridMaskColumn
      Caption = 'u/m'
      HeaderAlignment = taCenter
      Width = 63
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOMB_UNID_MEDIDA'
    end
    object dxDBGrid1REQUERIMIENTO: TdxDBGridMaskColumn
      Caption = 'Unidades'
      HeaderAlignment = taCenter
      Width = 63
      BandIndex = 0
      RowIndex = 0
      FieldName = 'REQUERIMIENTO'
    end
    object dxDBGrid1CONS_TOTAL: TdxDBGridMaskColumn
      Caption = 'Requerido'
      HeaderAlignment = taCenter
      Width = 97
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_TOTAL'
    end
    object dxDBGrid1COST_UNIDAD: TdxDBGridMaskColumn
      Caption = '$ Unitario'
      HeaderAlignment = taCenter
      Width = 104
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COST_UNIDAD'
    end
    object dxDBGrid1COST_TOTAL: TdxDBGridMaskColumn
      Caption = '$ Total'
      HeaderAlignment = taCenter
      Width = 111
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COST_TOTAL'
    end
    object dxDBGrid1CONS_UNID_MEDIDA: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 94
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_UNID_MEDIDA'
    end
    object dxDBGrid1CODI_UNID_MEDIDA: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 91
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODI_UNID_MEDIDA'
    end
    object dxDBGrid1COMBINACION: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COMBINACION'
    end
    object dxDBGrid1TALLAJE: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 51
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TALLAJE'
    end
    object dxDBGrid1TIEN_OBSERVACIONES: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 103
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TIEN_OBSERVACIONES'
    end
    object dxDBGrid1EXISTENTE: TdxDBGridMaskColumn
      Caption = 'Existente'
      HeaderAlignment = taCenter
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'EXISTENTE'
    end
    object dxDBGrid1DISPONIBLE: TdxDBGridMaskColumn
      Caption = 'Disponible'
      HeaderAlignment = taCenter
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DISPONIBLE'
    end
    object dxDBGrid1ENTREGADO: TdxDBGridMaskColumn
      Caption = 'Entregado'
      HeaderAlignment = taCenter
      Width = 89
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ENTREGADO'
    end
    object dxDBGrid1DIFERENCIA: TdxDBGridMaskColumn
      Caption = 'Diferencia'
      HeaderAlignment = taCenter
      Width = 86
      BandIndex = 0
      RowIndex = 0
      OnCustomDrawCell = dxDBGrid1DIFERENCIACustomDrawCell
      FieldName = 'DIFERENCIA'
    end
  end
  object quer_explosion: TQuery
    BeforeOpen = quer_explosionBeforeOpen
    AfterOpen = quer_explosionAfterOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from con_pcp_prod_expl_INSUMOS (:cons_prod_orden, '
      ':nume_lote,'
      ':ES_FABRICACION, :etapa)'
      'order by cons_refe_INSUMO')
    Left = 8
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_orden'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'nume_lote'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ES_FABRICACION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'etapa'
        ParamType = ptInput
      end>
    object quer_explosionCONS_REFE_INSUMO: TIntegerField
      FieldName = 'CONS_REFE_INSUMO'
    end
    object quer_explosionCONS_INSU_REFERENCIA: TIntegerField
      FieldName = 'CONS_INSU_REFERENCIA'
    end
    object quer_explosionCODI_INSU_REFERENCIA: TStringField
      FieldName = 'CODI_INSU_REFERENCIA'
      Size = 12
    end
    object quer_explosionNOMB_INSU_REFERENCIA: TStringField
      FieldName = 'NOMB_INSU_REFERENCIA'
      Size = 12
    end
    object quer_explosionCONS_INSU_GRUPO: TIntegerField
      FieldName = 'CONS_INSU_GRUPO'
    end
    object quer_explosionCODI_INSU_GRUPO: TStringField
      FieldName = 'CODI_INSU_GRUPO'
      Size = 12
    end
    object quer_explosionNOMB_INSU_GRUPO: TStringField
      FieldName = 'NOMB_INSU_GRUPO'
      Size = 60
    end
    object quer_explosionCONS_INSU_SUBGRUPO: TIntegerField
      FieldName = 'CONS_INSU_SUBGRUPO'
    end
    object quer_explosionCODI_INSU_SUBGRUPO: TStringField
      FieldName = 'CODI_INSU_SUBGRUPO'
      Size = 12
    end
    object quer_explosionNOMB_INSU_SUBGRUPO: TStringField
      FieldName = 'NOMB_INSU_SUBGRUPO'
      Size = 60
    end
    object quer_explosionES_FABRICACION: TIntegerField
      FieldName = 'ES_FABRICACION'
    end
    object quer_explosionCONS_PROVEEDOR: TIntegerField
      FieldName = 'CONS_PROVEEDOR'
    end
    object quer_explosionCODI_PROVEEDOR: TIntegerField
      FieldName = 'CODI_PROVEEDOR'
    end
    object quer_explosionNOMB_PROVEEDOR: TIntegerField
      FieldName = 'NOMB_PROVEEDOR'
    end
    object quer_explosionCONS_REFE_COLOR: TIntegerField
      FieldName = 'CONS_REFE_COLOR'
    end
    object quer_explosionCONS_COLOR: TIntegerField
      FieldName = 'CONS_COLOR'
    end
    object quer_explosionCODI_COLOR: TStringField
      FieldName = 'CODI_COLOR'
      Size = 12
    end
    object quer_explosionNOMB_COLOR: TStringField
      FieldName = 'NOMB_COLOR'
      Size = 60
    end
    object quer_explosionCONS_UNIDAD: TFloatField
      FieldName = 'CONS_UNIDAD'
      DisplayFormat = ',0.00'
    end
    object quer_explosionREQUERIMIENTO: TFloatField
      FieldName = 'REQUERIMIENTO'
      DisplayFormat = ',0.00'
    end
    object quer_explosionCONS_TOTAL: TFloatField
      FieldName = 'CONS_TOTAL'
      DisplayFormat = ',0.00'
    end
    object quer_explosionCOST_UNIDAD: TFloatField
      FieldName = 'COST_UNIDAD'
      DisplayFormat = ',0.00'
    end
    object quer_explosionCOST_TOTAL: TFloatField
      FieldName = 'COST_TOTAL'
      DisplayFormat = ',0.00'
    end
    object quer_explosionCONS_UNID_MEDIDA: TIntegerField
      FieldName = 'CONS_UNID_MEDIDA'
    end
    object quer_explosionCODI_UNID_MEDIDA: TStringField
      FieldName = 'CODI_UNID_MEDIDA'
      Size = 12
    end
    object quer_explosionNOMB_UNID_MEDIDA: TStringField
      FieldName = 'NOMB_UNID_MEDIDA'
      Size = 60
    end
    object quer_explosionCOMBINACION: TIntegerField
      FieldName = 'COMBINACION'
    end
    object quer_explosionTALLAJE: TIntegerField
      FieldName = 'TALLAJE'
    end
    object quer_explosionTIEN_OBSERVACIONES: TIntegerField
      FieldName = 'TIEN_OBSERVACIONES'
    end
    object quer_explosionEXISTENTE: TFloatField
      FieldName = 'EXISTENTE'
      DisplayFormat = ',0.00'
    end
    object quer_explosionDISPONIBLE: TFloatField
      FieldName = 'DISPONIBLE'
      DisplayFormat = ',0.00'
    end
    object quer_explosionENTREGADO: TFloatField
      FieldName = 'ENTREGADO'
      DisplayFormat = ',0.00'
    end
    object quer_explosionDIFERENCIA: TFloatField
      FieldName = 'DIFERENCIA'
      DisplayFormat = ',0.00'
    end
  end
  object data_explosion: TDataSource
    DataSet = quer_explosion
    Left = 40
    Top = 16
  end
  object fram_pop: TTBXPopupMenu
    Left = 8
    Top = 56
    object TBXItem3: TTBXItem
      Action = fram_acti_agru_color
      ImageIndex = 20
      Images = _fMDI.imag_varias
    end
    object TBXSeparatorItem1: TTBXSeparatorItem
    end
    object TBXItem2: TTBXItem
      Action = fram_acti_expandir
      ImageIndex = 18
      Images = _fMDI.imag_varias
    end
    object TBXItem1: TTBXItem
      Action = fram_acti_contraer
      ImageIndex = 19
      Images = _fMDI.imag_varias
    end
  end
  object fram_acciones: TActionList
    Left = 40
    Top = 56
    object fram_acti_agru_color: TAction
      Caption = 'Agrupar por color'
      OnExecute = fram_acti_agru_colorExecute
    end
    object fram_acti_expandir: TAction
      Caption = 'Expandir todos'
      OnExecute = fram_acti_expandirExecute
    end
    object fram_acti_contraer: TAction
      Caption = 'Contraer todos'
      OnExecute = fram_acti_contraerExecute
    end
  end
end

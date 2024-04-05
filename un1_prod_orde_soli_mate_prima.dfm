inherited fn1_prod_orde_soli_mate_prima: Tfn1_prod_orde_soli_mate_prima
  Left = 54
  Top = 148
  Height = 556
  Caption = 'Requisición de materia prima (tejidos)'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 505
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 162
  end
  inherited padr_pane_info: TPanel
    Top = 504
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
  inherited pane_beve_abajo: TPanel
    Top = 496
  end
  inherited padr_pane_principal: TPanel
    Top = 169
  end
  inherited padr_fram_informacion: TPCPFrame
    Tag = 117
    Height = 117
    object SCLDBLabel1: TSCLDBLabel [0]
      Left = 10
      Top = 84
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
      FocusControl = dxDBCurrencyEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Unidades:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    inherited comb_nume_orden: TPCPLookUpComboEdit
      Tag = -1
    end
    inherited edit_proc_actual: TdxSpinEdit
      Value = 5
    end
    object dxDBCurrencyEdit1: TdxDBCurrencyEdit
      Left = 112
      Top = 84
      Width = 65
      Enabled = False
      TabOrder = 13
      Alignment = taRightJustify
      DataField = 'unid_cortadas'
      DataSource = data_unidades
      StyleController = padr_estilo
      DisplayFormat = ',0'
      Nullable = False
      StoredValues = 1
    end
  end
  inherited PCPFrame1: TPCPFrame
    Tag = 280
    Top = 506
    Height = 23
    Align = alBottom
    Titulo_Comprimido = True
    Boton_Visible = True
    inherited fram_avance: Tffra_prod_resp_lote_proceso
      Height = 169
      inherited pane_arriba: TPanel
        inherited dxDBEdit1: TdxDBEdit
          StyleController = padr_estilo
        end
        inherited dxDBEdit2: TdxDBEdit
          StyleController = padr_estilo
        end
        inherited pane_finalizacion: TPanel
          inherited edit_fech_finalizacion: TdxDBDateEdit
            StyleController = padr_estilo
          end
        end
      end
      inherited pane_observaciones: TPanel
        Height = 23
        inherited PCPFrame1: TPCPFrame
          Height = 23
          inherited dxDBMemo1: TdxDBMemo
            Height = 47
          end
        end
      end
    end
    inherited fram_mensaje: Tffra_mens_atencion
      inherited fram_label: TAdvPanel
        FullHeight = 18
      end
    end
  end
  object PCPFrame2: TPCPFrame [10]
    Tag = 318
    Left = 0
    Top = 171
    Width = 804
    Height = 325
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Caption = 'Explosión de materiales'
    Titulo_Color = 16244694
    BorderWidthIn = 4
    FlatBorder = True
    object padr_grid: TSCLDBGrid
      Left = 7
      Top = 26
      Width = 790
      Height = 292
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderMinRowCount = 2
      HeaderPanelRowCount = 1
      KeyField = 'TIPO'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = False
          SummaryItems = <>
          Name = 'padr_summary_grid'
        end
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'padr_gridCODI_MATE_REFERENCIA'
              SummaryField = 'TIPO'
              SummaryFormat = ',0'
              SummaryType = cstCount
            end
            item
              ColumnName = 'padr_gridCONS_TOTAL'
              SummaryField = 'CONS_TOTAL'
              SummaryFormat = ',0.00000'
              SummaryType = cstSum
            end
            item
              ColumnName = 'padr_gridEXISTENTE'
              SummaryField = 'EXISTENTE'
              SummaryFormat = ',0.00000'
              SummaryType = cstSum
            end
            item
              ColumnName = 'padr_gridDISPONIBLE'
              SummaryField = 'DISPONIBLE'
              SummaryFormat = ',0.00000'
              SummaryType = cstSum
            end
            item
              ColumnName = 'padr_gridENTREGADO'
              SummaryField = 'ENTREGADO'
              SummaryFormat = ',0.00000'
              SummaryType = cstSum
            end
            item
              ColumnName = 'padr_gridDIFERENCIA'
              SummaryField = 'DIFERENCIA'
              SummaryFormat = ',0.00000'
              SummaryType = cstSum
            end>
          Name = 'padr_gridSummaryGroup2'
        end>
      SummarySeparator = ', '
      Align = alClient
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
      DataSource = data_explosion
      Filter.Active = True
      Filter.CaseInsensitive = True
      Filter.Criteria = {00000000}
      GridLineColor = clBtnFace
      GroupPanelColor = 13265692
      GroupPanelFontColor = clWhite
      GroupNodeColor = 15982803
      GroupNodeTextColor = 8072450
      HeaderColor = 16578290
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      HideFocusRect = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMouseScroll, edgoMultiSelect, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowRowFooter = True
      object padr_gridTIPO: TdxDBGridImageColumn
        Alignment = taLeftJustify
        MinWidth = 16
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO'
        Images = _fMDI.imag_list_materiales
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3')
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object padr_gridCONS_REFE_MATERIAL: TdxDBGridMaskColumn
        Visible = False
        Width = 205
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_REFE_MATERIAL'
      end
      object padr_gridCONS_MATE_GRUPO: TdxDBGridMaskColumn
        Visible = False
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_MATE_GRUPO'
      end
      object padr_gridCODI_MATE_GRUPO: TdxDBGridMaskColumn
        Visible = False
        Width = 174
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_MATE_GRUPO'
      end
      object padr_gridNOMB_MATE_GRUPO: TdxDBGridMaskColumn
        Visible = False
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_MATE_GRUPO'
      end
      object padr_gridCONS_MATE_SUBGRUPO: TdxDBGridMaskColumn
        Visible = False
        Width = 217
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_MATE_SUBGRUPO'
      end
      object padr_gridCODI_MATE_SUBGRUPO: TdxDBGridMaskColumn
        Visible = False
        Width = 212
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_MATE_SUBGRUPO'
      end
      object padr_gridCONS_MATE_REFERENCIA: TdxDBGridMaskColumn
        Visible = False
        Width = 229
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_MATE_REFERENCIA'
      end
      object padr_gridNOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn
        Visible = False
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_MATE_SUBGRUPO'
      end
      object padr_gridCODI_MATE_REFERENCIA: TdxDBGridMaskColumn
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_MATE_REFERENCIA'
        SummaryFooterType = cstCount
        SummaryFooterFormat = ',0'
      end
      object padr_gridNOMB_MATE_REFERENCIA: TdxDBGridMaskColumn
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_MATE_REFERENCIA'
      end
      object padr_gridCONS_PROVEEDOR: TdxDBGridMaskColumn
        Visible = False
        Width = 171
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PROVEEDOR'
      end
      object padr_gridCODI_PROVEEDOR: TdxDBGridMaskColumn
        Visible = False
        Width = 165
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PROVEEDOR'
      end
      object padr_gridNOMB_PROVEEDOR: TdxDBGridMaskColumn
        Visible = False
        Width = 166
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PROVEEDOR'
      end
      object padr_gridCONS_COLOR: TdxDBGridMaskColumn
        Visible = False
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_COLOR'
      end
      object padr_gridCODI_COLOR: TdxDBGridMaskColumn
        Visible = False
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_COLOR'
      end
      object padr_gridNOMB_COLOR: TdxDBGridMaskColumn
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_COLOR'
      end
      object padr_gridCONS_UNIDAD: TdxDBGridMaskColumn
        Width = 133
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_UNIDAD'
      end
      object padr_gridNOMB_UNID_MEDIDA: TdxDBGridMaskColumn
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_UNID_MEDIDA'
      end
      object padr_gridCONS_TOTAL: TdxDBGridMaskColumn
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_TOTAL'
      end
      object padr_gridEXISTENTE: TdxDBGridMaskColumn
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EXISTENTE'
      end
      object padr_gridDISPONIBLE: TdxDBGridMaskColumn
        Width = 88
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DISPONIBLE'
      end
      object padr_gridENTREGADO: TdxDBGridMaskColumn
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTREGADO'
      end
      object padr_gridDIFERENCIA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIFERENCIA'
      end
    end
  end
  object data_explosion: TDataSource
    DataSet = quer_explosion
    Left = 96
    Top = 186
  end
  object quer_explosion: TQuery
    DatabaseName = 'data_base_pcp'
    FilterOptions = [foCaseInsensitive]
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT TIPO,CONS_REFE_MATERIAL,'
      
        '    CONS_MATE_REFERENCIA, CODI_MATE_REFERENCIA, NOMB_MATE_REFERE' +
        'NCIA,'
      '    CONS_MATE_GRUPO, CODI_MATE_GRUPO, NOMB_MATE_GRUPO,'
      '    CONS_MATE_SUBGRUPO, CODI_MATE_SUBGRUPO, NOMB_MATE_SUBGRUPO,'
      '    CONS_PROVEEDOR, CODI_PROVEEDOR, NOMB_PROVEEDOR,'
      '    CONS_COLOR, CODI_COLOR, NOMB_COLOR,'
      '    NOMB_UNID_MEDIDA,'
      '    AVG(CONS_UNIDAD) CONS_UNIDAD,'
      '    SUM(CONS_TOTAL) CONS_TOTAL,'
      '    AVG(COST_UNIDAD) COST_UNIDAD,'
      '    SUM(COST_TOTAL) COST_TOTAL,'
      '    AVG(EXISTENTE) EXISTENTE,'
      '    AVG(DISPONIBLE) DISPONIBLE,'
      '    AVG(ENTREGADO) ENTREGADO,'
      '    SUM(DIFERENCIA) DIFERENCIA'
      'FROM CON_PCP_PROD_EXPL_COMPLETO(:CONS_PROD_ORDEN)'
      'WHERE TIPO IN (1,2)'
      'GROUP BY TIPO,CONS_REFE_MATERIAL,'
      
        '    CONS_MATE_REFERENCIA, CODI_MATE_REFERENCIA, NOMB_MATE_REFERE' +
        'NCIA,'
      '    CONS_MATE_GRUPO, CODI_MATE_GRUPO, NOMB_MATE_GRUPO,'
      '    CONS_MATE_SUBGRUPO, CODI_MATE_SUBGRUPO, NOMB_MATE_SUBGRUPO,'
      '    CONS_PROVEEDOR, CODI_PROVEEDOR, NOMB_PROVEEDOR,'
      '    CONS_COLOR, CODI_COLOR, NOMB_COLOR, NOMB_UNID_MEDIDA')
    Left = 64
    Top = 186
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptUnknown
      end>
    object quer_explosionTIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
    end
    object quer_explosionCONS_REFE_MATERIAL: TIntegerField
      DisplayLabel = 'Cons. material en la referencia'
      FieldName = 'CONS_REFE_MATERIAL'
    end
    object quer_explosionCONS_MATE_REFERENCIA: TIntegerField
      DisplayLabel = 'Cons. referencia material'
      FieldName = 'CONS_MATE_REFERENCIA'
    end
    object quer_explosionCODI_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Cód. material'
      FieldName = 'CODI_MATE_REFERENCIA'
      Size = 12
    end
    object quer_explosionNOMB_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Nombre material'
      FieldName = 'NOMB_MATE_REFERENCIA'
      Size = 60
    end
    object quer_explosionCONS_MATE_GRUPO: TIntegerField
      DisplayLabel = 'Cons. grupo'
      FieldName = 'CONS_MATE_GRUPO'
    end
    object quer_explosionCODI_MATE_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo'
      FieldName = 'CODI_MATE_GRUPO'
      Size = 12
    end
    object quer_explosionNOMB_MATE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_MATE_GRUPO'
      Size = 60
    end
    object quer_explosionCONS_MATE_SUBGRUPO: TIntegerField
      DisplayLabel = 'Cons. subgrupo'
      FieldName = 'CONS_MATE_SUBGRUPO'
    end
    object quer_explosionCODI_MATE_SUBGRUPO: TStringField
      DisplayLabel = 'Cód. subgrupo'
      FieldName = 'CODI_MATE_SUBGRUPO'
      Size = 12
    end
    object quer_explosionNOMB_MATE_SUBGRUPO: TStringField
      DisplayLabel = 'Subgrupo'
      FieldName = 'NOMB_MATE_SUBGRUPO'
      Size = 60
    end
    object quer_explosionCONS_PROVEEDOR: TIntegerField
      DisplayLabel = 'Cons. proveedor'
      FieldName = 'CONS_PROVEEDOR'
    end
    object quer_explosionCODI_PROVEEDOR: TIntegerField
      DisplayLabel = 'Cód. proveedor'
      FieldName = 'CODI_PROVEEDOR'
    end
    object quer_explosionNOMB_PROVEEDOR: TIntegerField
      DisplayLabel = 'Proveedor'
      FieldName = 'NOMB_PROVEEDOR'
    end
    object quer_explosionCONS_COLOR: TIntegerField
      DisplayLabel = 'Cons. color'
      FieldName = 'CONS_COLOR'
    end
    object quer_explosionCODI_COLOR: TStringField
      DisplayLabel = 'Cód. color'
      FieldName = 'CODI_COLOR'
      Size = 12
    end
    object quer_explosionNOMB_COLOR: TStringField
      DisplayLabel = 'Color'
      FieldName = 'NOMB_COLOR'
      Size = 60
    end
    object quer_explosionNOMB_UNID_MEDIDA: TStringField
      DisplayLabel = 'U. medida'
      FieldName = 'NOMB_UNID_MEDIDA'
      Size = 60
    end
    object quer_explosionCONS_UNIDAD: TFloatField
      DisplayLabel = 'Consumo prenda'
      FieldName = 'CONS_UNIDAD'
      DisplayFormat = ',0.0000'
    end
    object quer_explosionCONS_TOTAL: TFloatField
      DisplayLabel = 'Total requerido'
      FieldName = 'CONS_TOTAL'
      DisplayFormat = ',0.00000'
    end
    object quer_explosionEXISTENTE: TFloatField
      DisplayLabel = 'Existente'
      FieldName = 'EXISTENTE'
      DisplayFormat = ',0.00000'
    end
    object quer_explosionDISPONIBLE: TFloatField
      DisplayLabel = 'Disponible'
      FieldName = 'DISPONIBLE'
      DisplayFormat = ',0.00000'
    end
    object quer_explosionENTREGADO: TFloatField
      DisplayLabel = 'Entregado'
      FieldName = 'ENTREGADO'
      DisplayFormat = ',0.00000'
    end
    object quer_explosionDIFERENCIA: TFloatField
      DisplayLabel = 'Diferencia'
      FieldName = 'DIFERENCIA'
      DisplayFormat = ',0.00000'
    end
  end
  object quer_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT SUM(CORT.UNIDADES) AS UNID_CORTADAS'
      'FROM VIS_PCP_PEDI_UNID_PLAN_BASICO CORT'
      'WHERE CONS_PROD_ORDEN = :CONS_PROD_ORDEN')
    Left = 808
    Top = 109
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptUnknown
      end>
  end
  object data_unidades: TDataSource
    DataSet = quer_unidades
    Left = 840
    Top = 109
  end
end

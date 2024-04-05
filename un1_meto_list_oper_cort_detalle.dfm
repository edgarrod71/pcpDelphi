inherited fn1_meto_list_oper_cort_detalle: Tfn1_meto_list_oper_cort_detalle
  Left = 214
  Top = 208
  Width = 490
  Height = 390
  BorderIcons = [biSystemMenu]
  Caption = 'Detalle por procesos de corte'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 482
  end
  inherited padr_shap_xp_down: TShape
    Top = 353
    Width = 482
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 482
  end
  inherited padr_pane_arriba: TPanel
    Width = 482
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 482
    inherited padr_beve_1: TBevel
      Width = 476
    end
    inherited padr_sepa_new: TShape
      Width = 476
    end
  end
  inherited padr_pane_info: TPanel
    Top = 362
    Width = 482
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
  object Panel1: TPanel [6]
    Left = 0
    Top = 54
    Width = 482
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 6
      Top = 4
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
    object SCLDBLabel2: TSCLDBLabel
      Left = 222
      Top = 4
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
    object SCLDBLabel3: TSCLDBLabel
      Left = 6
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Material:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBEdit2: TdxDBEdit
      Left = 323
      Top = 5
      Width = 121
      Enabled = False
      TabOrder = 0
      DataField = 'NOMB_REFE_TIPO_VARIACION'
      DataSource = data_variaciones
      StyleController = padr_estilo
    end
    object dxDBEdit3: TdxDBEdit
      Left = 107
      Top = 29
      Width = 337
      Enabled = False
      TabOrder = 1
      DataField = 'nomb_mate_referencia'
      DataSource = data_materiales
      StyleController = padr_estilo
    end
    object edit_codi_referencia: TdxDBEdit
      Left = 107
      Top = 5
      Width = 121
      Enabled = False
      TabOrder = 2
      DataField = 'codi_Referencia'
      DataSource = data_referencias
      StyleController = padr_estilo
    end
  end
  object Panel2: TPanel [7]
    Left = 0
    Top = 106
    Width = 482
    Height = 247
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 7
    object grid: TdxDBGrid
      Left = 4
      Top = 4
      Width = 474
      Height = 239
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_PROCESO'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      DataSource = data_detalles
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanDelete, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      object gridCONS_PROCESO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 158
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PROCESO'
      end
      object gridCODI_PROCESO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PROCESO'
      end
      object gridNOMB_PROCESO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 136
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PROCESO'
        SummaryFooterType = cstCount
        SummaryFooterField = 'CONS_PROCESO'
        SummaryFooterFormat = ',0'
      end
      object gridTIEM_PROCESO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIEM_PROCESO'
        SummaryFooterType = cstSum
        SummaryFooterField = 'TIEM_PROCESO'
        SummaryFooterFormat = ',0.0000'
      end
      object gridCOST_MINUTO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COST_MINUTO'
      end
      object gridCOST_PROCESO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COST_PROCESO'
        SummaryFooterType = cstSum
        SummaryFooterField = 'COST_PROCESO'
        SummaryFooterFormat = ',0.0000'
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 354
    Width = 482
    inherited padr_beve_abajo: TBevel
      Width = 476
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 482
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_imprimir: TAction
      OnExecute = padr_acti_imprimirExecute
    end
    inherited padr_acti_ayuda: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
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
  object quer_detalles: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select *'
      'from CON_PCP_METO_LIST_OPER_CORT_R'
      '(:cons_refe_variacion, :cons_refe_material)')
    Left = 250
    Top = 36
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_refe_material'
        ParamType = ptInput
      end>
    object quer_detallesCONS_PROCESO: TIntegerField
      FieldName = 'CONS_PROCESO'
    end
    object quer_detallesCODI_PROCESO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PROCESO'
      Size = 12
    end
    object quer_detallesNOMB_PROCESO: TStringField
      DisplayLabel = 'Proceso'
      FieldName = 'NOMB_PROCESO'
      Size = 60
    end
    object quer_detallesTIEM_PROCESO: TFloatField
      DisplayLabel = 'Tiempo'
      FieldName = 'TIEM_PROCESO'
      DisplayFormat = ',0.0000'
    end
    object quer_detallesCOST_MINUTO: TFloatField
      DisplayLabel = '$ minuto'
      FieldName = 'COST_MINUTO'
      DisplayFormat = '$ ,0.00'
    end
    object quer_detallesCOST_PROCESO: TFloatField
      DisplayLabel = '$ total'
      FieldName = 'COST_PROCESO'
      DisplayFormat = '$ ,0.00'
    end
  end
  object data_detalles: TDataSource
    DataSet = quer_detalles
    Left = 282
    Top = 36
  end
  object data_variaciones: TDataSource
    Left = 346
    Top = 36
  end
  object data_materiales: TDataSource
    Left = 378
    Top = 36
  end
  object data_referencias: TDataSource
    Left = 314
    Top = 36
  end
end

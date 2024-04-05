inherited fn1_prod_depe_etapas: Tfn1_prod_depe_etapas
  Left = 124
  Top = 164
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_info: TPanel
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
    inherited padr_pane_titulo: TPanel
      Caption = 'Dependencia etapas de producción'
    end
  end
  object PCPFrame1: TPCPFrame [7]
    Tag = 241
    Left = 0
    Top = 77
    Width = 557
    Height = 270
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
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    BorderWidthIn = 4
    object grid: TdxDBGrid
      Left = 6
      Top = 6
      Width = 545
      Height = 258
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_PROD_ETAP_PCP'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 1
      OnDblClick = acti_asig_etapaExecute
      OnKeyDown = gridKeyDown
      DataSource = data_ventana
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
      object gridCONS_PROD_ETAP_PCP: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 95
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PROD_ETAP_PCP'
      end
      object gridNOMB_PROD_ETAP_PCP: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 169
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PROD_ETAP_PCP'
      end
      object gridCONS_PROD_ETAPA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 157
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PROD_ETAPA'
      end
      object gridNOMB_PROD_ETAPA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 171
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PROD_ETAPA'
      end
      object gridFECH_SISTEMA: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 144
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_SISTEMA'
      end
      object gridUSUA_SISTEMA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUA_SISTEMA'
      end
    end
  end
  inherited data_ventana: TDataSource
    DataSet = quer_ventana
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = True
      Visible = True
    end
  end
  object quer_ventana: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select *'
      'from con_pcp_prod_depe_etapas')
    Left = 247
    Top = 36
    object quer_ventanaCONS_PROD_ETAP_PCP: TIntegerField
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_PROD_ETAP_PCP'
    end
    object quer_ventanaNOMB_PROD_ETAP_PCP: TStringField
      DisplayLabel = 'Etapa PCP'
      FieldName = 'NOMB_PROD_ETAP_PCP'
      Size = 60
    end
    object quer_ventanaCONS_PROD_ETAPA: TIntegerField
      FieldName = 'CONS_PROD_ETAPA'
    end
    object quer_ventanaNOMB_PROD_ETAPA: TStringField
      DisplayLabel = 'Etapa requerida'
      FieldName = 'NOMB_PROD_ETAPA'
      Size = 60
    end
    object quer_ventanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha restricción'
      FieldName = 'FECH_SISTEMA'
    end
    object quer_ventanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object quer_inse_etapa: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'execute procedure pro_pcp_prod_depe_etap_insert'
      '(:cons_prod_etap_pcp, :cons_prod_etapa)')
    Left = 280
    Top = 37
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_etap_pcp'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_prod_etapa'
        ParamType = ptInput
      end>
  end
  object acti_ventana: TActionList
    Left = 314
    Top = 35
    object acti_asig_etapa: TAction
      Caption = 'Asignar etapa requerida'
      OnExecute = acti_asig_etapaExecute
    end
  end
  object TBXPopupMenu1: TTBXPopupMenu
    Left = 354
    Top = 35
    object TBXItem1: TTBXItem
      Action = acti_asig_etapa
      ImageIndex = 34
      Images = _fMDI.imag_pequenas
    end
  end
end

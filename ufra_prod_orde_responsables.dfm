object ffra_prod_orde_responsables: Tffra_prod_orde_responsables
  Left = 0
  Top = 0
  Width = 445
  Height = 325
  TabOrder = 0
  object grid_responsables: TdxDBGrid
    Left = 0
    Top = 26
    Width = 445
    Height = 299
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'CONS_PROD_ORDE_RESPONSABLE'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    DataSource = data_responsables
    Filter.Criteria = {00000000}
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
    object grid_responsablesCODI_PROD_ETAPA: TdxDBGridColumn
      HeaderAlignment = taCenter
      Sorted = csUp
      Width = 54
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CODI_PROD_ETAPA'
    end
    object grid_responsablesCONS_PROD_ORDE_RESPONSABLE: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 401
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_PROD_ORDE_RESPONSABLE'
    end
    object grid_responsablesCONS_PROD_ORDEN: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      Width = 242
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_PROD_ORDEN'
    end
    object grid_responsablesCONS_PROD_ETAPA: TdxDBGridMaskColumn
      Color = clBtnFace
      HeaderAlignment = taCenter
      Visible = False
      Width = 235
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_PROD_ETAPA'
    end
    object grid_responsablesNOMB_PROD_ETAPA: TdxDBGridColumn
      Color = clBtnFace
      HeaderAlignment = taCenter
      Width = 106
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOMB_PROD_ETAPA'
    end
    object grid_responsablesFECH_ESTIMADA: TdxDBGridDateColumn
      HeaderAlignment = taCenter
      Width = 145
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FECH_ESTIMADA'
      SaveTime = False
    end
  end
  object fram_dock: TTBXDock
    Left = 0
    Top = 0
    Width = 445
    Height = 26
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      DockMode = dmCannotFloatOrChangeDocks
      FullSize = True
      Images = _fMDI.imag_pequenas
      TabOrder = 0
      object TBXItem2: TTBXItem
        Action = fram_acti_guardar
        DisplayMode = nbdmImageAndText
        ImageIndex = 5
        Images = _fMDI.imag_pequenas
      end
      object TBXItem1: TTBXItem
        Action = fram_acti_cancelar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_pequenas
      end
    end
  end
  object tabl_responsables: TTable
    DatabaseName = 'data_base_pcp'
    Filter = 'cons_prod_etapa>0'
    Filtered = True
    TableName = 'PCP_PROD_ORDE_RESPONSABLES'
    Left = 8
    Top = 40
    object tabl_responsablesCONS_PROD_ORDE_RESPONSABLE: TIntegerField
      FieldName = 'CONS_PROD_ORDE_RESPONSABLE'
      Required = True
    end
    object tabl_responsablesCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
      Required = True
    end
    object tabl_responsablesCONS_PROD_ETAPA: TIntegerField
      FieldName = 'CONS_PROD_ETAPA'
      Required = True
    end
    object tabl_responsablesNOMB_PROD_ETAPA: TStringField
      DisplayLabel = 'Etapa'
      FieldKind = fkLookup
      FieldName = 'NOMB_PROD_ETAPA'
      LookupDataSet = quer_prod_etapas
      LookupKeyFields = 'CONS_PROD_ETAPA'
      LookupResultField = 'NOMB_PROD_ETAPA'
      KeyFields = 'CONS_PROD_ETAPA'
      Size = 60
      Lookup = True
    end
    object tabl_responsablesUSUA_RESPONSABLE: TStringField
      DisplayLabel = 'Responsable'
      FieldName = 'USUA_RESPONSABLE'
    end
    object tabl_responsablesFECH_ESTIMADA: TDateTimeField
      DisplayLabel = 'Fecha estimada'
      FieldName = 'FECH_ESTIMADA'
    end
    object tabl_responsablesCODI_PROD_ETAPA: TStringField
      DisplayLabel = 'Cód.'
      FieldKind = fkLookup
      FieldName = 'CODI_PROD_ETAPA'
      LookupDataSet = quer_prod_etapas
      LookupKeyFields = 'CONS_PROD_ETAPA'
      LookupResultField = 'CODI_PROD_ETAPA'
      KeyFields = 'CONS_PROD_ETAPA'
      Size = 12
      Lookup = True
    end
  end
  object data_responsables: TDataSource
    DataSet = tabl_responsables
    Left = 40
    Top = 40
  end
  object quer_prod_etapas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_prod_etapa, codi_prod_etapa, nomb_prod_etapa'
      'from PCP_PROD_ETAPAS'
      'order by cons_prod_etapa')
    Left = 8
    Top = 72
  end
  object acti_ventana: TActionList
    Left = 40
    Top = 72
    object fram_acti_cancelar: TDataSetCancel
      Category = 'Dataset'
      Caption = 'C&ancelar'
      Hint = 'Cancelar'
      ImageIndex = 8
      ShortCut = 16449
      DataSource = data_responsables
    end
    object fram_acti_guardar: TDataSetPost
      Category = 'Dataset'
      Caption = '&Guardar'
      Hint = 'Guardar'
      ImageIndex = 7
      ShortCut = 16455
      DataSource = data_responsables
    end
  end
  object data_usuarios: TDataSource
    AutoEdit = False
    DataSet = _fMDI.tabl_usuarios
    Left = 8
    Top = 112
  end
  object grid_layout: TdxDBGridLayoutList
    Left = 40
    Top = 112
    object grid_layo_usuarios: TdxDBGridLayout
      Data = {
        F6010000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C640609757365725F6E616D650D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C200A44617461536F757263650729666672615F70726F645F6F7264655F7265
        73706F6E7361626C65732E646174615F7573756172696F730F46696C7465722E
        43726974657269610A04000000000000000B4C6F6F6B416E644665656C07066C
        66466C61740F4F7074696F6E734265686176696F720B0E6564676F4175746F53
        65617263680C6564676F4175746F536F72740E6564676F447261675363726F6C
        6C0E6564676F5461625468726F7567680F6564676F566572745468726F756768
        000B4F7074696F6E73566965770B0D6564676F4175746F576964746813656467
        6F42616E6448656164657257696474680D6564676F5573654269746D61700000
        0F546478444247726964436F6C756D6E07436F6C756D6E310743617074696F6E
        06075573756172696F0F486561646572416C69676E6D656E740708746143656E
        74657205576964746802720942616E64496E646578020008526F77496E646578
        0200094669656C644E616D650609757365725F6E616D65000000}
    end
  end
end

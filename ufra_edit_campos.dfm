object ffra_edit_campos: Tffra_edit_campos
  Left = 0
  Top = 0
  Width = 477
  Height = 280
  TabOrder = 0
  object Grid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 477
    Height = 280
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'cons_campo'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    DataSource = data_ventana
    Filter.Criteria = {00000000}
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    object Gridcons_campo: TdxDBGridMaskColumn
      Color = clBtnFace
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 27
      BandIndex = 0
      RowIndex = 0
      FieldName = 'cons_campo'
    end
    object Gridnume_campo: TdxDBGridMaskColumn
      Color = clBtnFace
      DisableEditor = True
      HeaderAlignment = taCenter
      Visible = False
      Width = 35
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nume_campo'
    end
    object Gridnomb_campo: TdxDBGridMaskColumn
      Color = clBtnFace
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 162
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nomb_campo'
    end
    object Gridtext_campo: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 170
      BandIndex = 0
      RowIndex = 0
      FieldName = 'text_campo'
    end
    object Gridvisible: TdxDBGridCheckColumn
      HeaderAlignment = taCenter
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'visible'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object Gridformato: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'formato'
    end
  end
  object myTabla_Ventana: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'cons_campo'
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 9
    Top = 21
    object myTabla_Ventanacons_campo: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'cons_campo'
    end
    object myTabla_Ventananume_campo: TIntegerField
      DisplayLabel = 'N.'
      FieldName = 'nume_campo'
    end
    object myTabla_Ventanatext_campo: TStringField
      DisplayLabel = 'Nombre para mostrar'
      FieldName = 'text_campo'
      Size = 60
    end
    object myTabla_Ventananomb_campo: TStringField
      DisplayLabel = 'Nombre original'
      FieldName = 'nomb_campo'
      Size = 60
    end
    object myTabla_Ventanavisible: TBooleanField
      DisplayLabel = 'Visible'
      FieldName = 'visible'
    end
    object myTabla_Ventanaformato: TStringField
      DisplayLabel = 'Formato'
      FieldName = 'formato'
    end
  end
  object data_ventana: TDataSource
    DataSet = myTabla_Ventana
    Left = 37
    Top = 21
  end
end

object ffra_arbo_menu: Tffra_arbo_menu
  Left = 0
  Top = 0
  Width = 320
  Height = 173
  TabOrder = 0
  object lista: TdxDBTreeList
    Left = 0
    Top = 0
    Width = 320
    Height = 173
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'CONS_CONSULTA'
    ParentField = 'PADR_CONSULTA'
    Align = alClient
    TabOrder = 0
    DataSource = data_modulos
    HideFocusRect = True
    HideSelectionColor = 15790320
    HideSelectionTextColor = clBlack
    HighlightColor = 15790320
    HighlightTextColor = clBlack
    LookAndFeel = lfFlat
    OptionsBehavior = [etoAutoSearch, etoAutoSort, etoDblClick, etoTabThrough]
    OptionsCustomize = [etoBandSizing, etoColumnMoving, etoColumnSizing, etoKeepColumnWidth]
    OptionsDB = [etoAutoCalcKeyValue, etoCanNavigation, etoCheckHasChildren, etoConfirmDelete, etoLoadAllRecords, etoSyncSelection]
    OptionsView = [etoAutoWidth, etoBandHeaderWidth, etoHideFocusRect, etoRowSelect, etoUseImageIndexForSelected]
    PaintStyle = psOutlook
    RootValue = '-1'
    ShowGrid = True
    StateImages = _fMDI.ImagenesMenus
    StateIndexFieldName = 'index_imagen'
    TreeLineColor = clGrayText
    object listaCONS_CONSULTA: TdxDBTreeListMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Sorted = csUp
      Visible = False
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CONS_CONSULTA'
    end
    object listaPADR_CONSULTA: TdxDBTreeListMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Visible = False
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PADR_CONSULTA'
    end
    object listaNOMB_OBJETO: TdxDBTreeListMaskColumn
      Caption = 'Módulo'
      DisableEditor = True
      HeaderAlignment = taCenter
      Visible = False
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nomb_objeto'
      SummaryFooterType = cstCount
    end
    object listaCAPTION: TdxDBTreeListMaskColumn
      Caption = 'Módulo'
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 597
      BandIndex = 0
      RowIndex = 0
      FieldName = 'caption'
    end
    object listaGRANTED: TdxDBTreeListCheckColumn
      Visible = False
      Width = 100
      BandIndex = 0
      RowIndex = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object tabla: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'cons_consulta'
        DataType = ftInteger
      end
      item
        Name = 'padr_consulta'
        DataType = ftInteger
      end
      item
        Name = 'nomb_objeto'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'caption'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'index_imagen'
        DataType = ftInteger
      end>
    IndexDefs = <>
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
    Left = 10
    Top = 11
  end
  object data_modulos: TDataSource
    DataSet = tabla
    Left = 38
    Top = 11
  end
end

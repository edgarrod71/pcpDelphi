object ffra_historialDB: Tffra_historialDB
  Left = 0
  Top = 0
  Width = 617
  Height = 309
  TabOrder = 0
  object fram_pane: TPanel
    Left = 0
    Top = 0
    Width = 617
    Height = 309
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object fram_grid_historial: TdxDBGrid
      Left = 0
      Top = 26
      Width = 617
      Height = 283
      Bands = <
        item
        end>
      DefaultLayout = True
      KeyField = 'fech_sistema'
      ShowGroupPanel = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      PopupMenu = pop_grid_anotaciones
      TabOrder = 0
      OnDblClick = fram_acti_modificarExecute
      DataSource = data_historial
      Filter.Active = True
      Filter.CaseInsensitive = True
      Filter.Criteria = {00000000}
      IniFileName = 'c:\pcp\configuracion\grids.ini'
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoHeaderPanelHeight, edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
      object fram_grid_historialFECHA: TdxDBGridDateColumn
        Caption = 'Fecha'
        HeaderAlignment = taCenter
        ReadOnly = True
        Sorted = csDown
        Width = 113
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_SISTEMA'
      end
      object fram_grid_historialUSUARIO: TdxDBGridColumn
        Caption = 'Usuario'
        HeaderAlignment = taCenter
        ReadOnly = True
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUA_SISTEMA'
      end
      object fram_grid_historialANOTACION: TdxDBGridMemoColumn
        Caption = 'Anotación'
        HeaderAlignment = taCenter
        ReadOnly = True
        Width = 190
        BandIndex = 0
        RowIndex = 0
        HeaderMaxLineCount = 1
        FieldName = 'TEXT_ANOTACION'
      end
    end
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 617
      Height = 26
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        DockMode = dmCannotFloatOrChangeDocks
        FullSize = True
        Images = _fMDI.imagenesPCP
        TabOrder = 0
        object TBXItem4: TTBXItem
          Action = fram_acti_nuevo
          DisplayMode = nbdmImageAndText
        end
        object TBXItem5: TTBXItem
          Action = fram_acti_modificar
          DisplayMode = nbdmImageAndText
        end
        object TBXSeparatorItem2: TTBXSeparatorItem
        end
        object TBXItem6: TTBXItem
          Action = fram_acti_eliminar
          DisplayMode = nbdmImageAndText
        end
        object TBXSeparatorItem3: TTBXSeparatorItem
        end
        object TBXItem9: TTBXItem
          Action = fram_acti_expo_xls
        end
        object TBXItem8: TTBXItem
          Action = fram_acti_expo_html
        end
        object TBXItem7: TTBXItem
          Action = fram_acti_expo_txt
        end
      end
    end
  end
  object data_historial: TDataSource
    AutoEdit = False
    Left = 8
    Top = 40
  end
  object fram_acciones: TActionList
    Images = _fMDI.imagenesPCP
    OnUpdate = fram_accionesUpdate
    Left = 40
    Top = 40
    object fram_acti_nuevo: TAction
      Caption = 'Nueva anotación...'
      Hint = 'Agregar una anotación en el historial'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = fram_acti_nuevoExecute
    end
    object fram_acti_modificar: TAction
      Caption = 'Modificar anotación...'
      ImageIndex = 1
      ShortCut = 16453
      OnExecute = fram_acti_modificarExecute
    end
    object fram_acti_eliminar: TAction
      Caption = 'Eliminar anotación'
      ImageIndex = 2
      OnExecute = fram_acti_eliminarExecute
    end
    object fram_acti_expo_xls: TAction
      Category = 'Exportar'
      Caption = 'Exportar a XLS'
      ImageIndex = 17
      OnExecute = fram_acti_expo_xlsExecute
    end
    object fram_acti_expo_html: TAction
      Category = 'Exportar'
      Caption = 'fram_acti_expo_html'
      ImageIndex = 18
      OnExecute = fram_acti_expo_htmlExecute
    end
    object fram_acti_expo_txt: TAction
      Category = 'Exportar'
      Caption = 'fram_acti_expo_txt'
      ImageIndex = 19
      OnExecute = fram_acti_expo_txtExecute
    end
  end
  object pop_grid_anotaciones: TTBXPopupMenu
    Left = 72
    Top = 40
    object TBXItem1: TTBXItem
      Action = fram_acti_nuevo
    end
    object TBXItem2: TTBXItem
      Action = fram_acti_modificar
    end
    object TBXSeparatorItem1: TTBXSeparatorItem
    end
    object TBXItem3: TTBXItem
      Action = fram_acti_eliminar
    end
    object TBXSeparatorItem4: TTBXSeparatorItem
    end
    object TBXItem10: TTBXItem
      Action = fram_acti_expo_xls
    end
    object TBXItem11: TTBXItem
      Action = fram_acti_expo_html
    end
    object TBXItem12: TTBXItem
      Action = fram_acti_expo_txt
    end
  end
end

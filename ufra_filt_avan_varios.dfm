object ffra_filt_avan_varios: Tffra_filt_avan_varios
  Left = 0
  Top = 0
  Width = 638
  Height = 240
  TabOrder = 0
  object Scro: TScrollBox
    Left = 0
    Top = 0
    Width = 638
    Height = 240
    HorzScrollBar.Style = ssFlat
    VertScrollBar.Style = ssFlat
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    inline filt: Tffra_filt_avanzado
      Width = 638
      Height = 28
      Align = alTop
      inherited PCPFrame1: TPCPFrame
        Tag = 28
        Width = 638
        Height = 28
        inherited pane_1: TPanel
          Height = 24
        end
        inherited pane_edit_1: TPanel
          Width = 110
          Height = 24
          OnResize = filtpane_edit_1Resize
          inherited edit_1: TdxEdit
            Width = 94
          end
        end
        inherited pane_entre: TPanel
          Left = 515
          Width = 121
          Height = 24
        end
        inherited pane_nuevo: TPanel
          Height = 24
          inherited boto_nuevo: TTBXButtonSCL
            ParentShowHint = False
            OnClick = filtboto_nuevoClick
          end
        end
        inherited pane_eliminar: TPanel
          Height = 24
          Visible = False
          inherited boto_eliminar: TTBXButtonSCL
            Visible = False
          end
        end
        inherited pane_yo: TPanel
          Height = 24
          inherited comb_yo: TPCPLookUpComboEdit
            Visible = False
          end
        end
      end
      inherited quer_Filt_opciones: TQuery
        Left = 289
        Top = 18
      end
      inherited data_filt_opciones: TDataSource
        Left = 317
        Top = 18
      end
      inherited data_campos: TDataSource
        Top = 18
      end
      inherited tabl_yo: TRxMemoryData
        Top = 5
      end
    end
  end
  object myTabla_Campos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'nomb_campo'
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
    Left = 48
    Top = 40
    object myTabla_Camposnomb_campo: TStringField
      FieldName = 'nomb_campo'
      Size = 60
    end
    object myTabla_Campostexto: TStringField
      FieldName = 'texto'
      Size = 60
    end
  end
end

object ffra_edit_repo_dbResult: Tffra_edit_repo_dbResult
  Left = 0
  Top = 0
  Width = 332
  Height = 88
  TabOrder = 0
  object SCLDBLabel1: TSCLDBLabel
    Left = 0
    Top = 4
    Width = 110
    Height = 21
    Alive = False
    ColorActive = clBtnFace
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'MS Sans Serif'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = edit_formula
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Fórmula:'
    Transparent = True
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
  end
  object SCLDBLabel2: TSCLDBLabel
    Left = 0
    Top = 60
    Width = 110
    Height = 21
    Alive = False
    ColorActive = clBtnFace
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'MS Sans Serif'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = comb_info
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Información:'
    Transparent = True
    ColorRequerido = clRed
    ColorNoRequerido = clWindowText
  end
  object edit_formula: TdxButtonEdit
    Left = 112
    Top = 4
    Width = 209
    TabOrder = 0
    Buttons = <
      item
        Default = True
      end>
    ExistButtons = True
  end
  object chec_reset: TdxCheckEdit
    Left = 111
    Top = 23
    Width = 211
    Style.BorderStyle = xbsSingle
    TabOrder = 1
    Caption = 'Inicializar después de imprimir'
  end
  object chec_nulls: TdxCheckEdit
    Left = 111
    Top = 41
    Width = 211
    Style.BorderStyle = xbsSingle
    TabOrder = 2
    Caption = 'Procesar valores NULOS'
  end
  object comb_info: TPCPLookUpComboEdit
    Left = 112
    Top = 60
    Width = 209
    Height = 21
    DropDownCount = 8
    EscapeClear = False
    KeyField = 'nomb_info'
    ListField = 'nomb_info'
    ListSource = data_info
    TabOrder = 3
    OnChange = comb_infoChange
    DirectInput = False
  end
  object tabl_info: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'nomb_info'
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
    AfterOpen = tabl_infoAfterOpen
    Left = 128
    Top = 51
    object tabl_infonomb_info: TStringField
      FieldName = 'nomb_info'
      Size = 60
    end
  end
  object data_info: TDataSource
    DataSet = tabl_info
    Left = 160
    Top = 51
  end
end

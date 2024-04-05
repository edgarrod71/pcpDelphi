object ffra_edit_repo_system: Tffra_edit_repo_system
  Left = 0
  Top = 0
  Width = 329
  Height = 26
  TabOrder = 0
  object SCLDBLabel1: TSCLDBLabel
    Left = 10
    Top = 2
    Width = 100
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
    Caption = 'Tipo información:'
    Transparent = True
    ColorRequerido = clRed
    ColorNoRequerido = clWindowText
  end
  object comb_info: TPCPLookUpComboEdit
    Left = 112
    Top = 2
    Width = 211
    Height = 21
    DropDownCount = 8
    EscapeClear = False
    KeyField = 'nomb_info'
    ListField = 'nomb_info'
    ListSource = data_fram
    TabOrder = 0
    OnChange = comb_infoChange
    DirectInput = False
  end
  object tabl_frame: TkbmMemTable
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
    AfterOpen = tabl_frameAfterOpen
    Left = 128
    Top = 65528
    object tabl_framenomb_info: TStringField
      FieldName = 'nomb_info'
      Size = 60
    end
  end
  object data_fram: TDataSource
    DataSet = tabl_frame
    Left = 160
    Top = 65528
  end
end

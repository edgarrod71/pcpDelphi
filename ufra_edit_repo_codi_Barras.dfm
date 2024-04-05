object ffra_edit_repo_codi_Barras: Tffra_edit_repo_codi_Barras
  Left = 0
  Top = 0
  Width = 330
  Height = 150
  TabOrder = 0
  object SCLDBLabel1: TSCLDBLabel
    Left = 0
    Top = 2
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
    FocusControl = comb_type
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Simbología:'
    Transparent = True
    ColorRequerido = clRed
    ColorNoRequerido = clWindowText
  end
  object SCLDBLabel2: TSCLDBLabel
    Left = 0
    Top = 24
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
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Color de las barras:'
    Transparent = True
    ColorRequerido = clRed
    ColorNoRequerido = clWindowText
  end
  object SCLDBLabel3: TSCLDBLabel
    Left = 0
    Top = 63
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
    FocusControl = comb_invalid
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Códigos no válidos:'
    Transparent = True
    ColorRequerido = clRed
    ColorNoRequerido = clWindowText
  end
  object SCLDBLabel4: TSCLDBLabel
    Left = 0
    Top = 84
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
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Densidad:'
    Transparent = True
    ColorRequerido = clRed
    ColorNoRequerido = clWindowText
  end
  object SCLDBLabel5: TSCLDBLabel
    Left = 0
    Top = 103
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
    FocusControl = comb_orientacion
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Orientación:'
    Transparent = True
    ColorRequerido = clRed
    ColorNoRequerido = clWindowText
  end
  object comb_type: TPCPLookUpComboEdit
    Left = 112
    Top = 2
    Width = 211
    Height = 21
    DropDownCount = 8
    EscapeClear = False
    KeyField = 'nomb_type'
    ListField = 'nomb_type'
    ListSource = data_type
    TabOrder = 0
    OnChange = comb_typeChange
    DirectInput = False
  end
  object edit_color: TJvOfficeColorButton
    Left = 112
    Top = 23
    Width = 73
    Height = 22
    TabOrder = 1
    TabStop = True
    Color = clBtnFace
    Options = [cdPreventFullOpen, cdAnyColor]
    Properties.AutoCaption = 'Automático'
    Properties.OtherCaption = 'Other Colors...'
    Properties.DragBarHint = 'Drag to floating'
    OnColorChange = edit_colorColorChange
  end
  object chec_digito: TdxCheckEdit
    Left = 111
    Top = 44
    Width = 213
    Style.BorderStyle = xbsSingle
    TabOrder = 2
    Caption = 'Dígito de chequeo'
    OnChange = chec_digitoChange
  end
  object comb_invalid: TPCPLookUpComboEdit
    Left = 112
    Top = 63
    Width = 211
    Height = 21
    DropDownCount = 8
    EscapeClear = False
    KeyField = 'nomb_invalid'
    ListField = 'nomb_invalid'
    ListSource = data_invalid
    TabOrder = 3
    OnChange = comb_invalidChange
    DirectInput = False
  end
  object edit_module: TdxSpinEdit
    Left = 112
    Top = 83
    Width = 73
    TabOrder = 4
    Alignment = taRightJustify
    MaxValue = 5
    MinValue = 1
    Value = 1
    StoredValues = 49
  end
  object comb_orientacion: TPCPLookUpComboEdit
    Left = 112
    Top = 103
    Width = 211
    Height = 21
    DropDownCount = 8
    EscapeClear = False
    KeyField = 'nomb_orientacion'
    ListField = 'nomb_orientacion'
    ListSource = data_orientacion
    TabOrder = 5
    OnChange = comb_orientacionChange
    DirectInput = False
  end
  object edit_codigo: TdxCheckEdit
    Left = 111
    Top = 122
    Width = 213
    Style.BorderStyle = xbsSingle
    TabOrder = 6
    Caption = 'Mostrar código'
    OnChange = edit_codigoChange
  end
  object tabl_type: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'nomb_type'
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
    AfterOpen = tabl_typeAfterOpen
    Left = 128
    Top = 65531
    object tabl_typenomb_type: TStringField
      FieldName = 'nomb_type'
      Size = 60
    end
  end
  object data_type: TDataSource
    DataSet = tabl_type
    Left = 160
    Top = 65531
  end
  object tabl_invalid: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'nomb_invalid'
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
    AfterOpen = tabl_invalidAfterOpen
    Left = 128
    Top = 56
    object tabl_invalidnomb_invalid: TStringField
      FieldName = 'nomb_invalid'
      Size = 60
    end
  end
  object data_invalid: TDataSource
    DataSet = tabl_invalid
    Left = 160
    Top = 56
  end
  object tabl_orientacion: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'nomb_orientacion'
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
    AfterOpen = tabl_orientacionAfterOpen
    Left = 128
    Top = 96
    object tabl_orientacionnomb_orientacion: TStringField
      FieldName = 'nomb_orientacion'
      Size = 60
    end
  end
  object data_orientacion: TDataSource
    DataSet = tabl_orientacion
    Left = 160
    Top = 96
  end
end

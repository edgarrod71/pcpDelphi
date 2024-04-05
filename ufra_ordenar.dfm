object ffra_ordenar: Tffra_ordenar
  Left = 0
  Top = 0
  Width = 352
  Height = 229
  TabOrder = 0
  object Bevel1: TBevel
    Left = 0
    Top = 75
    Width = 352
    Height = 3
    Align = alTop
    Shape = bsSpacer
  end
  object Bevel2: TBevel
    Left = 0
    Top = 151
    Width = 352
    Height = 3
    Align = alTop
    Shape = bsSpacer
  end
  object pane1: TPCPFrame
    Tag = 75
    Left = 0
    Top = 0
    Width = 352
    Height = 75
    Align = alTop
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Caption = 'Primero por'
    Titulo_Color = 16244694
    FlatBorder = True
    object comb1: TPCPLookUpComboEdit
      Left = 8
      Top = 32
      Width = 225
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      KeyField = 'nomb_campo'
      ListField = 'texto'
      ListSource = data1
      ParentCtl3D = False
      TabOrder = 1
      OnChange = comb1Change
      DirectInput = False
    end
    object asce1: TTBXRadioButton
      Left = 248
      Top = 30
      Width = 100
      Height = 17
      Caption = 'Ascendente'
      Checked = True
      TabOrder = 2
    end
    object desc1: TTBXRadioButton
      Left = 248
      Top = 51
      Width = 100
      Height = 17
      Caption = 'Descendente'
      TabOrder = 3
    end
  end
  object pane2: TPCPFrame
    Tag = 73
    Left = 0
    Top = 78
    Width = 352
    Height = 73
    Align = alTop
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Caption = 'Luego por'
    Titulo_Color = 16244694
    FlatBorder = True
    object comb2: TPCPLookUpComboEdit
      Left = 8
      Top = 32
      Width = 225
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      Enabled = False
      KeyField = 'nomb_campo'
      ListField = 'texto'
      ListSource = data2
      ParentCtl3D = False
      TabOrder = 1
      OnChange = comb2Change
      DirectInput = False
    end
    object asce2: TTBXRadioButton
      Left = 248
      Top = 30
      Width = 100
      Height = 17
      Caption = 'Ascendente'
      Checked = True
      Enabled = False
      TabOrder = 2
    end
    object desc2: TTBXRadioButton
      Left = 248
      Top = 51
      Width = 100
      Height = 17
      Caption = 'Descendente'
      Enabled = False
      TabOrder = 3
    end
  end
  object pane3: TPCPFrame
    Tag = 75
    Left = 0
    Top = 154
    Width = 352
    Height = 75
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Caption = 'Luego por'
    Titulo_Color = 16244694
    Boton_Visible = False
    FlatBorder = True
    object comb3: TPCPLookUpComboEdit
      Left = 8
      Top = 32
      Width = 225
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      Enabled = False
      KeyField = 'nomb_campo'
      ListField = 'texto'
      ListSource = data3
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object asce3: TTBXRadioButton
      Left = 248
      Top = 30
      Width = 100
      Height = 17
      Caption = 'Ascendente'
      Checked = True
      Enabled = False
      TabOrder = 2
    end
    object desc3: TTBXRadioButton
      Left = 248
      Top = 51
      Width = 100
      Height = 17
      Caption = 'Descendente'
      Enabled = False
      TabOrder = 3
    end
  end
  object data1: TDataSource
    DataSet = quer_ordenar
    Left = 104
    Top = 32
  end
  object data2: TDataSource
    DataSet = quer_ordenar
    Left = 112
    Top = 110
  end
  object data3: TDataSource
    DataSet = quer_ordenar
    Left = 112
    Top = 178
  end
  object quer_ordenar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select nomb_campo, texto'
      'from sis_pcp_ordenar'
      'where nomb_modulo = :nomb_modulo'
      'order by texto')
    Left = 24
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'nomb_modulo'
        ParamType = ptInput
      end>
    object quer_ordenarNOMB_CAMPO: TStringField
      FieldName = 'NOMB_CAMPO'
      Size = 31
    end
    object quer_ordenarTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 60
    end
  end
  object tabl_temporal: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'texto'
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
    Left = 24
    Top = 64
    object tabl_temporalNOMB_CAMPO: TStringField
      FieldName = 'NOMB_CAMPO'
      Size = 60
    end
    object tabl_temporalTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 60
    end
  end
end

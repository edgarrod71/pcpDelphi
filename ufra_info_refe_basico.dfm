object ffra_info_refe_basico: Tffra_info_refe_basico
  Left = 0
  Top = 0
  Width = 791
  Height = 125
  TabOrder = 0
  object fram_pane_sele_referencia: TPCPFrame
    Left = 0
    Top = 0
    Width = 791
    Height = 125
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnResize = fram_pane_sele_referenciaResize
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel8: TSCLDBLabel
      Left = 12
      Top = 48
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBEdit4
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombre:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel9: TSCLDBLabel
      Left = 12
      Top = 68
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBEdit6
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Marca:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel11: TSCLDBLabel
      Left = 272
      Top = 68
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBEdit7
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'L�nea:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel10: TSCLDBLabel
      Left = 532
      Top = 48
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBEdit5
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Temporada:'
      Transparent = True
      DataSource = data_referencias
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel12: TSCLDBLabel
      Left = 532
      Top = 68
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBEdit8
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Edad:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 532
      Top = 88
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Estado:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 272
      Top = 88
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Estilo:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 12
      Top = 88
      Width = 100
      Height = 21
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grupo:'
      Transparent = True
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object Panel1: TPanel
      Left = 3
      Top = 22
      Width = 785
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object SCLDBLabel1: TSCLDBLabel
        Left = 9
        Top = 6
        Width = 100
        Height = 21
        Alive = False
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'Tahoma'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = dxDBEdit9
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Referencia:'
        Transparent = True
        ColorRequerido = clRed
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel2: TSCLDBLabel
        Left = 269
        Top = 6
        Width = 100
        Height = 21
        Alive = False
        ColorActive = clBtnFace
        FontActive.Charset = DEFAULT_CHARSET
        FontActive.Color = clWindowText
        FontActive.Height = -11
        FontActive.Name = 'Tahoma'
        FontActive.Style = []
        FocusOffset = 2
        Position = wlpLeft
        FocusControl = dxDBEdit10
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'C.I.R.:'
        Transparent = True
        ColorRequerido = clRed
        ColorNoRequerido = clWindowText
      end
      object padr_boto_menu_Referencia: TTBXButtonSCL
        Left = 245
        Top = 7
        Width = 24
        Height = 20
        AllowAllUnchecked = True
        BorderSize = 2
        ButtonStyle = bsFlat
        DropDownMenu = _fMDI.mdi_menu_referencia
        ImageIndex = 64
        Images = _fMDI.imagenesPCP
        SmartFocus = False
        TabOrder = 0
        TabStop = False
      end
      object dxDBEdit9: TdxDBEdit
        Left = 111
        Top = 6
        Width = 130
        Enabled = False
        TabOrder = 1
        TabStop = False
        DataField = 'CODI_REFERENCIA'
        DataSource = data_referencias
        ReadOnly = True
        StoredValues = 64
      end
      object dxDBEdit10: TdxDBEdit
        Left = 371
        Top = 6
        Width = 130
        Enabled = False
        TabOrder = 2
        TabStop = False
        DataField = 'CODI_INTE_REFERENCIA'
        DataSource = data_referencias
        ReadOnly = True
        StoredValues = 64
      end
    end
    object dxDBEdit4: TdxDBEdit
      Left = 114
      Top = 48
      Width = 261
      Enabled = False
      TabOrder = 2
      TabStop = False
      DataField = 'NOMB_REFERENCIA'
      DataSource = data_referencias
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit6: TdxDBEdit
      Left = 114
      Top = 68
      Width = 130
      Enabled = False
      TabOrder = 3
      TabStop = False
      DataField = 'NOMB_REFE_MARCA'
      DataSource = data_referencias
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit7: TdxDBEdit
      Left = 374
      Top = 68
      Width = 130
      Enabled = False
      TabOrder = 4
      TabStop = False
      DataField = 'NOMB_REFE_LINEA'
      DataSource = data_referencias
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit5: TdxDBEdit
      Left = 634
      Top = 48
      Width = 130
      Enabled = False
      TabOrder = 5
      TabStop = False
      DataField = 'NOMB_REFE_TEMPORADA'
      DataSource = data_referencias
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit8: TdxDBEdit
      Left = 634
      Top = 68
      Width = 130
      Enabled = False
      TabOrder = 6
      TabStop = False
      DataField = 'NOMB_REFE_EDAD'
      DataSource = data_referencias
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit3: TdxDBEdit
      Left = 634
      Top = 88
      Width = 130
      Enabled = False
      TabOrder = 7
      TabStop = False
      DataField = 'NOMB_REFE_ESTADO'
      DataSource = data_referencias
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit2: TdxDBEdit
      Left = 374
      Top = 88
      Width = 130
      Enabled = False
      TabOrder = 8
      TabStop = False
      DataField = 'NOMB_REFE_ESTADO'
      DataSource = data_referencias
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit1: TdxDBEdit
      Left = 114
      Top = 88
      Width = 130
      Enabled = False
      TabOrder = 9
      TabStop = False
      DataField = 'NOMB_REFE_GRUPO'
      DataSource = data_referencias
      ReadOnly = True
      StoredValues = 64
    end
  end
  object quer_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_referencia, codi_Referencia, nomb_referencia,'
      'codi_inte_referencia, nomb_refe_marca, nomb_refe_linea,'
      'nomb_refe_temporada, nomb_refe_edad, nomb_refe_grupo,'
      'nomb_refe_estilo, nomb_refe_estado'
      'from VIS_GLO_REFERENCIAS'
      'Where cons_referencia = :cons_referencia')
    Left = 8
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_referencia'
        ParamType = ptInput
      end>
  end
  object data_referencias: TDataSource
    DataSet = quer_referencias
    Left = 44
    Top = 32
  end
end

object ffra_empresa: Tffra_empresa
  Left = 0
  Top = 0
  Width = 389
  Height = 94
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  TabOrder = 0
  object SCLDBLabel3: TSCLDBLabel
    Left = 46
    Top = 2
    Width = 54
    Height = 21
    Alive = True
    ColorActive = clBtnFace
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'MS Sans Serif'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = comb_empresas
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Empresa:'
    Layout = tlTop
    Transparent = True
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_EMPRESA'
    Field = 'CONS_EMPRESA'
  end
  object comb_empresas: TPCPLookUpComboEdit
    Left = 102
    Top = 2
    Width = 245
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CONS_EMPRESA'
    KeyField = 'CONS_EMPRESA'
    ListField = 'NOMB_EMPRESA'
    ListSource = data_empresas
    ParentCtl3D = False
    TabOrder = 0
    OnChange = comb_empresasChange
    DirectInput = False
  end
  object SCLButton1: TTBXButtonSCL
    Left = 350
    Top = 3
    Width = 21
    Height = 20
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    Enabled = False
    ImageIndex = 9
    Images = _fMDI.imagenesPCP
    SmartFocus = False
    TabOrder = 1
    TabStop = False
  end
  inline fram_ubic_regional: Tffra_ubic_regional
    Top = 23
    Width = 375
    TabOrder = 2
    inherited SCLDBLabel3: TSCLDBLabel
      Top = -1
    end
    inherited SCLDBLabel4: TSCLDBLabel
      Top = 19
    end
    inherited SCLDBLabel5: TSCLDBLabel
      Top = 39
    end
    inherited comb_paises: TPCPLookUpComboEdit
      Top = -1
      Width = 245
      OnChange = ffra_ubic_regional1comb_paisesChange
    end
    inherited comb_departamentos: TPCPLookUpComboEdit
      Top = 19
      Width = 245
    end
    inherited comb_ciudades: TPCPLookUpComboEdit
      Top = 39
      Width = 245
    end
    inherited SCLButton1: TTBXButtonSCL
      Left = 350
      Top = 1
    end
    inherited SCLButton2: TTBXButtonSCL
      Left = 350
    end
    inherited SCLButton3: TTBXButtonSCL
      Left = 350
      Top = 42
    end
  end
  object quer_empresas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select * from'
      'glo_empresas'
      'order by NOMB_EMPRESA')
    Left = 256
    Top = 65535
    object quer_empresasCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.CONS_EMPRESA'
    end
    object quer_empresasNOMB_EMPRESA: TStringField
      FieldName = 'NOMB_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.NOMB_EMPRESA'
      Size = 60
    end
    object quer_empresasCONS_PAIS: TIntegerField
      FieldName = 'CONS_PAIS'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.CONS_PAIS'
    end
    object quer_empresasCONS_DEPARTAMENTO: TIntegerField
      FieldName = 'CONS_DEPARTAMENTO'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.CONS_DEPARTAMENTO'
    end
    object quer_empresasCONS_CIUDAD: TIntegerField
      FieldName = 'CONS_CIUDAD'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.CONS_CIUDAD'
    end
    object quer_empresasCODI_EMPRESA: TStringField
      FieldName = 'CODI_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.CODI_EMPRESA'
      Size = 12
    end
    object quer_empresasNUME_IDENTIFICACION: TStringField
      FieldName = 'NUME_IDENTIFICACION'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.NUME_IDENTIFICACION'
    end
    object quer_empresasDIGI_VERI_NUME_IDENTIFICACION: TStringField
      FieldName = 'DIGI_VERI_NUME_IDENTIFICACION'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.DIGI_VERI_NUME_IDENTIFICACION'
      Size = 1
    end
    object quer_empresasACTI_PRINCIPAL: TStringField
      FieldName = 'ACTI_PRINCIPAL'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.ACTI_PRINCIPAL'
      Size = 60
    end
    object quer_empresasREPR_LEGAL: TStringField
      FieldName = 'REPR_LEGAL'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.REPR_LEGAL'
      Size = 60
    end
    object quer_empresasDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.DIRECCION'
      Size = 240
    end
    object quer_empresasTELE_1: TStringField
      FieldName = 'TELE_1'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.TELE_1'
      Size = 30
    end
    object quer_empresasTELE_2: TStringField
      FieldName = 'TELE_2'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.TELE_2'
      Size = 30
    end
    object quer_empresasTELE_FAX: TStringField
      FieldName = 'TELE_FAX'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.TELE_FAX'
      Size = 30
    end
    object quer_empresasTELE_MOVIL: TStringField
      FieldName = 'TELE_MOVIL'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.TELE_MOVIL'
      Size = 30
    end
    object quer_empresasCORR_ELECTRONICO: TStringField
      FieldName = 'CORR_ELECTRONICO'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.CORR_ELECTRONICO'
      Size = 60
    end
    object quer_empresasPAGI_WEB: TStringField
      FieldName = 'PAGI_WEB'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.PAGI_WEB'
      Size = 60
    end
    object quer_empresasFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.FECH_SISTEMA'
    end
    object quer_empresasUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.USUA_SISTEMA'
    end
  end
  object data_empresas: TDataSource
    DataSet = quer_empresas
    Left = 284
    Top = 65535
  end
end

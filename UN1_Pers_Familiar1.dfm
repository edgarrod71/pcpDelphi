inherited FN1_Pers_Familiar1: TFN1_Pers_Familiar1
  Left = 250
  Top = 119
  Width = 576
  Height = 565
  ActiveControl = CBCodigo
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited _LFecha_Creacion: TSCLDBLabel
    Top = 481
    Visible = False
  end
  inherited _LUsuario: TSCLDBLabel
    Top = 503
    Visible = False
  end
  object SCLDBLabel4: TSCLDBLabel [2]
    Left = 10
    Top = 86
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
    FocusControl = CBPersonal
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Personal:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel10: TSCLDBLabel [3]
    Left = 10
    Top = 62
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
    FocusControl = CBCodigo
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Código:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERSONAL'
    Field = 'CODI_PERSONAL'
  end
  object SCLDBLabel1: TSCLDBLabel [4]
    Left = 10
    Top = 109
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
    Caption = 'Primer Apellido:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_PRIM_APELLIDO'
    Field = 'FAMI_PRIM_APELLIDO'
  end
  object SCLDBLabel2: TSCLDBLabel [5]
    Left = 202
    Top = 110
    Width = 94
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
    Caption = 'Segundo Apellido:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_SEGU_APELLIDO'
    Field = 'FAMI_SEGU_APELLIDO'
  end
  object SCLDBLabel3: TSCLDBLabel [6]
    Left = 10
    Top = 132
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
    Caption = 'Nombres:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_NOMBRES'
    Field = 'FAMI_NOMBRES'
  end
  object SCLDBLabel5: TSCLDBLabel [7]
    Left = 10
    Top = 178
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
    Caption = 'No. documento:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_NUME_DOCU_IDENTIDAD'
    Field = 'FAMI_NUME_DOCU_IDENTIDAD'
  end
  object SCLDBLabel6: TSCLDBLabel [8]
    Left = 10
    Top = 155
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
    FocusControl = CBTipo_Documento
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Tipo de Documento:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_CODI_TIPO_DOCU_IDENTIDAD'
    Field = 'FAMI_CODI_TIPO_DOCU_IDENTIDAD'
  end
  object SCLDBLabel7: TSCLDBLabel [9]
    Left = 10
    Top = 201
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
    FocusControl = dxDBDateEdit1
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Fecha nacimiento:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_FECH_NACIMIENTO'
    Field = 'FAMI_FECH_NACIMIENTO'
  end
  object SCLDBLabel8: TSCLDBLabel [10]
    Left = 10
    Top = 224
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
    FocusControl = CBPaises
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'País:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_CODI_PAIS_RESIDENCIA'
    Field = 'FAMI_CODI_PAIS_RESIDENCIA'
  end
  object SCLDBLabel9: TSCLDBLabel [11]
    Left = 10
    Top = 248
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
    FocusControl = CBDepartamentos
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Departamento:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_CODI_DEPA_RESIDENCIA'
    Field = 'FAMI_CODI_DEPA_RESIDENCIA'
  end
  object SCLDBLabel11: TSCLDBLabel [12]
    Left = 10
    Top = 271
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
    FocusControl = CBMunicipios
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Municipio:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_CODI_CIUD_RESIDENCIA'
    Field = 'FAMI_CODI_CIUD_RESIDENCIA'
  end
  object SCLDBLabel12: TSCLDBLabel [13]
    Left = 10
    Top = 294
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
    Caption = 'Dirección:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_DIRE_RESIDENCIA'
    Field = 'FAMI_DIRE_RESIDENCIA'
  end
  object SCLDBLabel13: TSCLDBLabel [14]
    Left = 10
    Top = 318
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
    Caption = 'Teléfono:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_TELE_RESIDENCIA'
    Field = 'FAMI_TELE_RESIDENCIA'
  end
  object SCLDBLabel14: TSCLDBLabel [15]
    Left = 213
    Top = 318
    Width = 82
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
    Caption = 'Otro Teléfono'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_TELE_OTRO'
    Field = 'FAMI_TELE_OTRO'
  end
  object SCLDBLabel15: TSCLDBLabel [16]
    Left = 10
    Top = 341
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
    Caption = 'Móvil:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_TELE_MOVIL'
    Field = 'FAMI_TELE_MOVIL'
  end
  object SCLDBLabel16: TSCLDBLabel [17]
    Left = 10
    Top = 364
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
    FocusControl = CBParentescos
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Parentesco:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_CODI_PARENTESCO'
    Field = 'FAMI_CODI_PARENTESCO'
  end
  object SCLDBLabel17: TSCLDBLabel [18]
    Left = 10
    Top = 410
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
    FocusControl = dxDBEdit9
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Ocupación:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_OCUPACION'
    Field = 'FAMI_OCUPACION'
  end
  object SCLDBLabel18: TSCLDBLabel [19]
    Left = 10
    Top = 432
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
    FocusControl = dxDBEdit10
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Empresa:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_NOMB_EMPRESA'
    Field = 'FAMI_NOMB_EMPRESA'
  end
  object SCLDBLabel19: TSCLDBLabel [20]
    Left = 10
    Top = 454
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
    FocusControl = dxDBEdit11
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Dirección Empresa:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_DIRE_EMPRESA'
    Field = 'FAMI_DIRE_EMPRESA'
  end
  object SCLDBLabel20: TSCLDBLabel [21]
    Left = 10
    Top = 387
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
    FocusControl = dxDBEdit12
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Correo Electrónico:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'FAMI_CORR_ELECTRONICO'
    Field = 'FAMI_CORR_ELECTRONICO'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 568
  end
  inherited padr_pane_arriba: TPanel
    Width = 568
    TabOrder = 21
  end
  inherited _DBFecha_Creacion: TdxDBEdit
    Top = 481
    TabOrder = 22
    Visible = False
    DataField = ''
    DataSource = nil
    StoredValues = 64
  end
  inherited _DBUsuario: TdxDBEdit
    Top = 503
    TabOrder = 23
    Visible = False
    DataField = ''
    DataSource = nil
    StoredValues = 64
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 568
    TabOrder = 24
    inherited padr_beve_1: TBevel
      Width = 562
    end
  end
  object CBPersonal: TPCPLookUpComboEdit [27]
    Left = 112
    Top = 86
    Width = 275
    Height = 21
    DropDownCount = 8
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    TabOrder = 1
    DirectInput = False
  end
  object CBCodigo: TPCPLookUpComboEdit [28]
    Left = 112
    Top = 62
    Width = 137
    Height = 21
    DropDownCount = 8
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'CODI_PERSONAL'
    ListSource = DSPersonal
    TabOrder = 0
    DirectInput = False
  end
  object dxDBEdit2: TdxDBEdit [29]
    Left = 112
    Top = 109
    Width = 89
    TabOrder = 2
    DataField = 'FAMI_PRIM_APELLIDO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit1: TdxDBEdit [30]
    Left = 298
    Top = 110
    Width = 89
    TabOrder = 3
    DataField = 'FAMI_SEGU_APELLIDO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit3: TdxDBEdit [31]
    Left = 112
    Top = 132
    Width = 185
    TabOrder = 4
    DataField = 'FAMI_NOMBRES'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit4: TdxDBEdit [32]
    Left = 112
    Top = 178
    Width = 185
    TabOrder = 6
    DataField = 'FAMI_NUME_DOCU_IDENTIDAD'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object CBTipo_Documento: TPCPLookUpComboEdit [33]
    Left = 112
    Top = 155
    Width = 274
    Height = 21
    DropDownCount = 8
    DataField = 'FAMI_CODI_TIPO_DOCU_IDENTIDAD'
    DataSource = data_ventana
    KeyField = 'CODI_TIPO_DOCUMENTO'
    ListField = 'NOMB_TIPO_DOCUMENTO'
    ListSource = DSTipo_Documento
    TabOrder = 5
    DirectInput = False
  end
  object dxDBDateEdit1: TdxDBDateEdit [34]
    Left = 112
    Top = 201
    Width = 105
    TabOrder = 7
    DataField = 'FAMI_FECH_NACIMIENTO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object CBPaises: TPCPLookUpComboEdit [35]
    Left = 112
    Top = 224
    Width = 274
    Height = 21
    DropDownCount = 8
    DataField = 'FAMI_CODI_PAIS_RESIDENCIA'
    DataSource = data_ventana
    KeyField = 'CODI_PAIS'
    ListField = 'NOMB_PAIS'
    ListSource = DSPaises
    TabOrder = 8
    DirectInput = False
  end
  object CBDepartamentos: TPCPLookUpComboEdit [36]
    Left = 112
    Top = 248
    Width = 274
    Height = 21
    DropDownCount = 8
    DataField = 'FAMI_CODI_DEPA_RESIDENCIA'
    DataSource = data_ventana
    KeyField = 'CODI_DEPARTAMENTO'
    ListField = 'NOMB_DEPARTAMENTO'
    ListSource = DSDepartamentos
    TabOrder = 9
    DirectInput = False
  end
  object CBMunicipios: TPCPLookUpComboEdit [37]
    Left = 112
    Top = 271
    Width = 274
    Height = 21
    DropDownCount = 8
    DataField = 'FAMI_CODI_CIUD_RESIDENCIA'
    DataSource = data_ventana
    KeyField = 'CODI_CIUDAD'
    ListField = 'NOMB_CIUDAD'
    ListSource = DSMunicipios
    TabOrder = 10
    DirectInput = False
  end
  object dxDBEdit5: TdxDBEdit [38]
    Left = 112
    Top = 294
    Width = 274
    TabOrder = 11
    DataField = 'FAMI_DIRE_RESIDENCIA'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit6: TdxDBEdit [39]
    Left = 112
    Top = 318
    Width = 89
    TabOrder = 12
    DataField = 'FAMI_TELE_RESIDENCIA'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit7: TdxDBEdit [40]
    Left = 297
    Top = 318
    Width = 89
    TabOrder = 13
    DataField = 'FAMI_TELE_OTRO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit8: TdxDBEdit [41]
    Left = 112
    Top = 341
    Width = 89
    TabOrder = 14
    DataField = 'FAMI_TELE_MOVIL'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object CBParentescos: TPCPLookUpComboEdit [42]
    Left = 112
    Top = 364
    Width = 274
    Height = 21
    DropDownCount = 8
    DataField = 'FAMI_CODI_PARENTESCO'
    DataSource = data_ventana
    KeyField = 'CODI_PARENTESCO'
    ListField = 'NOMB_PARENTESCO'
    ListSource = DSParentescos
    TabOrder = 15
    DirectInput = False
  end
  object dxDBEdit9: TdxDBEdit [43]
    Left = 112
    Top = 410
    Width = 274
    TabOrder = 17
    DataField = 'FAMI_OCUPACION'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit10: TdxDBEdit [44]
    Left = 112
    Top = 432
    Width = 274
    TabOrder = 18
    DataField = 'FAMI_NOMB_EMPRESA'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit11: TdxDBEdit [45]
    Left = 112
    Top = 454
    Width = 274
    TabOrder = 19
    DataField = 'FAMI_DIRE_EMPRESA'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit12: TdxDBEdit [46]
    Left = 112
    Top = 387
    Width = 274
    TabOrder = 16
    DataField = 'FAMI_CORR_ELECTRONICO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object SCLButton1: TSCLButton [47]
    Left = 390
    Top = 87
    Width = 21
    Height = 21
    Action = Padr_Busq_Personal
    TabOrder = 25
    TabStop = False
    Down = False
    Images = Imagenes_Botones_Pequenos
    ImageIndex = 0
    Flat = True
    Color = clBtnFace
    Style = bsNew
    BackColor = clBtnFace
    ColorBordeBoton = clBtnShadow
    TipoPintadoBoton = tpbContorno
    RedondeoBoton = 4
  end
  object SCLButton2: TSCLButton [48]
    Left = 390
    Top = 156
    Width = 21
    Height = 21
    Hint = 'Buscar Tipo de Documento'
    TabOrder = 26
    TabStop = False
    OnClick = BTipo_DocumentoClick
    Down = False
    Images = Imagenes_Botones_Pequenos
    ImageIndex = 0
    Flat = True
    Color = clBtnFace
    Style = bsNew
    BackColor = clBtnFace
    ColorBordeBoton = clBtnShadow
    TipoPintadoBoton = tpbContorno
    RedondeoBoton = 4
  end
  object SCLButton3: TSCLButton [49]
    Left = 390
    Top = 223
    Width = 21
    Height = 21
    Action = Padr_Busq_Pais
    TabOrder = 27
    TabStop = False
    OnClick = BPaisClick
    Down = False
    Images = Imagenes_Botones_Pequenos
    ImageIndex = 0
    Flat = True
    Color = clBtnFace
    Style = bsNew
    BackColor = clBtnFace
    ColorBordeBoton = clBtnShadow
    TipoPintadoBoton = tpbContorno
    RedondeoBoton = 4
  end
  object SCLButton4: TSCLButton [50]
    Left = 390
    Top = 247
    Width = 21
    Height = 21
    Hint = 'Buscar Departamento'
    TabOrder = 28
    TabStop = False
    OnClick = BDepartamentoClick
    Down = False
    Images = Imagenes_Botones_Pequenos
    ImageIndex = 0
    Flat = True
    Color = clBtnFace
    Style = bsNew
    BackColor = clBtnFace
    ColorBordeBoton = clBtnShadow
    TipoPintadoBoton = tpbContorno
    RedondeoBoton = 4
  end
  object SCLButton5: TSCLButton [51]
    Left = 390
    Top = 271
    Width = 21
    Height = 21
    Hint = 'Buscar Municipio'
    TabOrder = 29
    TabStop = False
    OnClick = BMunicipioClick
    Down = False
    Images = Imagenes_Botones_Pequenos
    ImageIndex = 0
    Flat = True
    Color = clBtnFace
    Style = bsNew
    BackColor = clBtnFace
    ColorBordeBoton = clBtnShadow
    TipoPintadoBoton = tpbContorno
    RedondeoBoton = 4
  end
  object SCLButton6: TSCLButton [52]
    Left = 390
    Top = 365
    Width = 21
    Height = 21
    TabOrder = 30
    TabStop = False
    OnClick = SCLButton6Click
    Down = False
    Images = Imagenes_Botones_Pequenos
    ImageIndex = 0
    Flat = True
    Color = clBtnFace
    Style = bsNew
    BackColor = clBtnFace
    ColorBordeBoton = clBtnShadow
    TipoPintadoBoton = tpbContorno
    RedondeoBoton = 4
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_PERS_FAMILIAR'
    object Tabla_VentanaCODI_PERSONAL: TStringField
      DisplayLabel = 'Personal'
      FieldName = 'CODI_PERSONAL'
      Required = True
      Size = 12
    end
    object Tabla_VentanaFAMI_PRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'FAMI_PRIM_APELLIDO'
      Size = 30
    end
    object Tabla_VentanaFAMI_SEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'FAMI_SEGU_APELLIDO'
      Size = 30
    end
    object Tabla_VentanaFAMI_NOMBRES: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'FAMI_NOMBRES'
      Size = 40
    end
    object Tabla_VentanaFAMI_CODI_PARENTESCO: TStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'FAMI_CODI_PARENTESCO'
      Size = 12
    end
    object Tabla_VentanaFAMI_FECH_NACIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha Nacimiento'
      FieldName = 'FAMI_FECH_NACIMIENTO'
    end
    object Tabla_VentanaFAMI_CODI_PAIS_RESIDENCIA: TStringField
      DisplayLabel = 'País'
      FieldName = 'FAMI_CODI_PAIS_RESIDENCIA'
      Size = 12
    end
    object Tabla_VentanaFAMI_CODI_DEPA_RESIDENCIA: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'FAMI_CODI_DEPA_RESIDENCIA'
      Size = 12
    end
    object Tabla_VentanaFAMI_CODI_CIUD_RESIDENCIA: TStringField
      DisplayLabel = 'Municipio'
      FieldName = 'FAMI_CODI_CIUD_RESIDENCIA'
      Size = 12
    end
    object Tabla_VentanaFAMI_DIRE_RESIDENCIA: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'FAMI_DIRE_RESIDENCIA'
      Size = 240
    end
    object Tabla_VentanaFAMI_TELE_RESIDENCIA: TStringField
      DisplayLabel = 'Teléfono'
      FieldName = 'FAMI_TELE_RESIDENCIA'
      Size = 30
    end
    object Tabla_VentanaFAMI_TELE_OTRO: TStringField
      DisplayLabel = 'Otro Teléfono'
      FieldName = 'FAMI_TELE_OTRO'
      Size = 30
    end
    object Tabla_VentanaFAMI_TELE_MOVIL: TStringField
      DisplayLabel = 'Movil'
      FieldName = 'FAMI_TELE_MOVIL'
      Size = 30
    end
    object Tabla_VentanaFAMI_CODI_TIPO_DOCU_IDENTIDAD: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'FAMI_CODI_TIPO_DOCU_IDENTIDAD'
      Size = 12
    end
    object Tabla_VentanaFAMI_NUME_DOCU_IDENTIDAD: TStringField
      DisplayLabel = 'Número de Documento'
      FieldName = 'FAMI_NUME_DOCU_IDENTIDAD'
      Size = 12
    end
    object Tabla_VentanaFAMI_OCUPACION: TStringField
      DisplayLabel = 'Ocupación'
      FieldName = 'FAMI_OCUPACION'
      Size = 60
    end
    object Tabla_VentanaFAMI_NOMB_EMPRESA: TStringField
      DisplayLabel = 'Nombre Empresa'
      FieldName = 'FAMI_NOMB_EMPRESA'
      Size = 60
    end
    object Tabla_VentanaFAMI_DIRE_EMPRESA: TStringField
      DisplayLabel = 'Dirección Empresa'
      FieldName = 'FAMI_DIRE_EMPRESA'
      Size = 240
    end
    object Tabla_VentanaFAMI_TELE_EMPRESA: TStringField
      DisplayLabel = 'Teléfono Empresa'
      FieldName = 'FAMI_TELE_EMPRESA'
      Size = 30
    end
    object Tabla_VentanaFAMI_CORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo Electrónico'
      FieldName = 'FAMI_CORR_ELECTRONICO'
      Size = 60
    end
  end
  object TPersonal: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PERSONAL'
    Left = 472
    Top = 96
  end
  object TTipo_Documento: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_TIPO_DOCU_PERSONAL'
    Left = 472
    Top = 128
  end
  object TPaises: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PAISES'
    Left = 472
    Top = 160
  end
  object TDepartamentos: TTable
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CODI_PAIS'
    MasterFields = 'CODI_PAIS'
    MasterSource = DSPaises
    TableName = 'GLO_DEPARTAMENTOS'
    Left = 472
    Top = 192
  end
  object TMunicipios: TTable
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CODI_PAIS;CODI_DEPARTAMENTO'
    MasterFields = 'CODI_PAIS;CODI_DEPARTAMENTO'
    MasterSource = DSDepartamentos
    TableName = 'GLO_CIUDADES'
    Left = 472
    Top = 224
  end
  object TParentescos: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_PARENTESCOS'
    Left = 472
    Top = 256
  end
  object DSPersonal: TDataSource
    AutoEdit = False
    DataSet = TPersonal
    Left = 504
    Top = 96
  end
  object DSTipo_Documento: TDataSource
    AutoEdit = False
    DataSet = TTipo_Documento
    Left = 504
    Top = 128
  end
  object DSPaises: TDataSource
    AutoEdit = False
    DataSet = TPaises
    Left = 504
    Top = 160
  end
  object DSDepartamentos: TDataSource
    AutoEdit = False
    DataSet = TDepartamentos
    Left = 504
    Top = 192
  end
  object DSMunicipios: TDataSource
    AutoEdit = False
    DataSet = TMunicipios
    Left = 504
    Top = 224
  end
  object DSParentescos: TDataSource
    AutoEdit = False
    DataSet = TParentescos
    Left = 504
    Top = 256
  end
end

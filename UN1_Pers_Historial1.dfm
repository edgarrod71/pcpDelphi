inherited FN1_Pers_Historial1: TFN1_Pers_Historial1
  Left = 353
  Top = 179
  Height = 398
  PixelsPerInch = 96
  TextHeight = 13
  inherited _LFecha_Creacion: TSCLDBLabel
    Top = 321
  end
  inherited _LUsuario: TSCLDBLabel
    Top = 343
  end
  object SCLDBLabel4: TSCLDBLabel [2]
    Left = 10
    Top = 85
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
    Top = 108
    Width = 100
    Height = 211
    Alive = True
    ColorActive = clBtnFace
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBAnotacion
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Anotación:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'TEXT_ANOTACION'
    Field = 'TEXT_ANOTACION'
  end
  inherited _DBFecha_Creacion: TdxDBEdit
    Top = 321
    StoredValues = 64
  end
  inherited _DBUsuario: TdxDBEdit
    Top = 343
    StoredValues = 64
  end
  object CBPersonal: TPCPLookUpComboEdit [10]
    Left = 112
    Top = 85
    Width = 264
    Height = 21
    DropDownCount = 8
    DataField = 'CODI_PERSONAL'
    DataSource = data_ventana
    KeyField = 'CODI_PERSONAL'
    ListField = 'NOMB_COMPLETO'
    ListSource = DSPersonal
    TabOrder = 5
    DirectInput = False
  end
  object CBCodigo: TPCPLookUpComboEdit [11]
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
    TabOrder = 6
    DirectInput = False
  end
  object SCLButton1: TSCLButton [12]
    Left = 380
    Top = 86
    Width = 21
    Height = 21
    Action = Padr_Busq_Personal
    TabOrder = 7
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
  object DBAnotacion: TdxDBMemo [13]
    Left = 112
    Top = 108
    Width = 290
    TabOrder = 8
    DataField = 'TEXT_ANOTACION'
    DataSource = data_ventana
    StyleController = padr_estilo
    Height = 211
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_PERS_HISTORIAL'
    object Tabla_VentanaCODI_PERSONAL: TStringField
      DisplayLabel = 'Pesonal'
      FieldName = 'CODI_PERSONAL'
      Required = True
      Size = 12
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaTEXT_ANOTACION: TMemoField
      DisplayLabel = 'Anotación'
      FieldName = 'TEXT_ANOTACION'
      BlobType = ftMemo
      Size = 2000
    end
  end
  object TPersonal: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PERSONAL'
    Left = 440
    Top = 80
  end
  object DSPersonal: TDataSource
    AutoEdit = False
    DataSet = TPersonal
    Left = 472
    Top = 80
  end
end

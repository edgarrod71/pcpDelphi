inherited Fn1_Pers_Tipo_Movimientos1: TFn1_Pers_Tipo_Movimientos1
  Left = 261
  Top = 224
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 32
    Top = 64
    Width = 105
    Height = 21
    Alive = False
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBCodigo
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Código:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERS_TIPO_MOVIMIENTO'
    Field = 'CODI_PERS_TIPO_MOVIMIENTO'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 32
    Top = 84
    Width = 105
    Height = 21
    Alive = False
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = DBDescripcion
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Tipo de Movimiento:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_PERS_TIPO_MOVIMIENTO'
    Field = 'NOMB_PERS_TIPO_MOVIMIENTO'
  end
  object SCLDBLabel3: TSCLDBLabel [2]
    Left = 32
    Top = 104
    Width = 105
    Height = 21
    Alive = False
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = CBFamilia
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Familia Movimiento:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_FAMI_MOVIMIENTO'
    Field = 'CONS_FAMI_MOVIMIENTO'
  end
  inherited padr_pane_info: TPanel
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object DBCodigo: TdxDBEdit [9]
    Left = 139
    Top = 64
    Width = 121
    TabOrder = 6
    DataField = 'CODI_PERS_TIPO_MOVIMIENTO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBDescripcion: TdxDBEdit [10]
    Left = 139
    Top = 84
    Width = 198
    TabOrder = 7
    DataField = 'NOMB_PERS_TIPO_MOVIMIENTO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object CBFamilia: TPCPLookUpComboEdit [11]
    Left = 139
    Top = 104
    Width = 198
    Height = 21
    DropDownCount = 8
    Ctl3D = True
    DataField = 'CONS_FAMI_MOVIMIENTO'
    DataSource = data_ventana
    KeyField = 'CONS_FAMI_MOVIMIENTO'
    ListField = 'NOMB_FAMI_MOVIMIENTO'
    ListSource = DSQFamilias
    ParentCtl3D = False
    TabOrder = 8
    DirectInput = False
  end
  object SCLButton3: TTBXButtonSCL [12]
    Left = 340
    Top = 105
    Width = 20
    Height = 20
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    Enabled = False
    ImageIndex = 0
    Images = Imagenes_Botones_Pequenos
    SmartFocus = False
    TabOrder = 9
    TabStop = False
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_PERS_TIPO_MOVIMIENTO'
    object Tabla_VentanaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons. Tipo Movimiento'
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCONS_FAMI_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Familia Movimiento'
      FieldName = 'CONS_FAMI_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCODI_PERS_TIPO_MOVIMIENTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERS_TIPO_MOVIMIENTO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PERS_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Tipo de Movimiento'
      FieldName = 'NOMB_PERS_TIPO_MOVIMIENTO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object QFamilias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_FAMI_MOVIMIENTO'
      'ORDER BY NOMB_FAMI_MOVIMIENTO')
    Left = 408
    Top = 72
  end
  object DSQFamilias: TDataSource
    AutoEdit = False
    DataSet = QFamilias
    Left = 440
    Top = 72
  end
end

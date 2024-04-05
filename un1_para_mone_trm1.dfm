inherited fn1_para_mone_trm1: Tfn1_para_mone_trm1
  Top = 159
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
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
  object Panel1: TPanel [6]
    Left = 0
    Top = 54
    Width = 557
    Height = 107
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 8
      Top = 56
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
      FocusControl = dxDBDateEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECHA'
      Field = 'FECHA'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 8
      Top = 76
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
      FocusControl = dxDBCurrencyEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Valor TRM:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'TRM'
      Field = 'TRM'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 8
      Top = 8
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Moneda base:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 8
      Top = 28
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Moneda:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBDateEdit1: TdxDBDateEdit
      Left = 110
      Top = 56
      Width = 121
      TabOrder = 0
      DataField = 'FECHA'
      DataSource = data_ventana
      StyleController = padr_estilo
      SaveTime = False
    end
    object dxDBCurrencyEdit1: TdxDBCurrencyEdit
      Left = 110
      Top = 76
      Width = 121
      TabOrder = 1
      Alignment = taRightJustify
      DataField = 'TRM'
      DataSource = data_ventana
      StyleController = padr_estilo
      DisplayFormat = '$ ,0.00'
      Nullable = False
      StoredValues = 1
    end
    object dxDBEdit2: TdxDBEdit
      Left = 110
      Top = 28
      Width = 121
      Enabled = False
      TabOrder = 2
      DataField = 'NOMB_MONEDA'
      DataSource = data_monedas
      StyleController = padr_estilo
    end
    object dxDBEdit1: TdxDBEdit
      Left = 110
      Top = 8
      Width = 121
      Enabled = False
      TabOrder = 3
      DataField = 'NOMB_MONEDA'
      DataSource = data_mone_base
      StyleController = padr_estilo
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_MONE_TRM'
    object Tabla_VentanaCONS_MONEDA: TIntegerField
      FieldName = 'CONS_MONEDA'
      Required = True
    end
    object Tabla_VentanaFECHA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Required = True
    end
    object Tabla_VentanaTRM: TFloatField
      DisplayLabel = 'Valor TRM'
      FieldName = 'TRM'
      Required = True
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object quer_mone_base: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select nomb_moneda'
      'from GLO_MONEDAS'
      'Where cons_moneda = 0')
    Left = 408
    Top = 78
  end
  object data_mone_base: TDataSource
    DataSet = quer_mone_base
    Left = 440
    Top = 78
  end
  object quer_monedas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select nomb_moneda'
      'from GLO_MONEDAS'
      'where cons_moneda = :cons_moneda')
    Left = 408
    Top = 110
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_moneda'
        ParamType = ptInput
      end>
  end
  object data_monedas: TDataSource
    DataSet = quer_monedas
    Left = 440
    Top = 110
  end
end

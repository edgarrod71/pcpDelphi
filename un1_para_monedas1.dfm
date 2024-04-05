inherited fn1_para_monedas1: Tfn1_para_monedas1
  OldCreateOrder = True
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
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
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
      FocusControl = dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Símbolo:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'SIMB_MONEDA'
      Field = 'SIMB_MONEDA'
    end
    object SCLDBLabel2: TSCLDBLabel
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
      Caption = 'Nombre moneda:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_MONEDA'
      Field = 'NOMB_MONEDA'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 110
      Top = 8
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'SIMB_MONEDA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 110
      Top = 28
      Width = 193
      TabOrder = 1
      DataField = 'NOMB_MONEDA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_MONEDAS'
    object Tabla_VentanaCONS_MONEDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_MONEDA'
      Required = True
    end
    object Tabla_VentanaSIMB_MONEDA: TStringField
      DisplayLabel = 'Símbolo'
      FieldName = 'SIMB_MONEDA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_MONEDA: TStringField
      DisplayLabel = 'Nombre moneda'
      FieldName = 'NOMB_MONEDA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
  end
end

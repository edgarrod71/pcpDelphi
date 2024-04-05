inherited fn2_come_prio_pedidos1: Tfn2_come_prio_pedidos1
  Left = 155
  Top = 152
  ActiveControl = dxDBEdit1
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
    Height = 139
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
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
      Caption = 'Código:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_COME_PRIO_PEDIDO'
      Field = 'CODI_COME_PRIO_PEDIDO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 32
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
      Caption = 'Prioridad:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_COME_PRIO_PEDIDO'
      Field = 'NOMB_COME_PRIO_PEDIDO'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 56
      Width = 100
      Height = 28
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = boto_color
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Color:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 8
      Width = 130
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_COME_PRIO_PEDIDO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 32
      Width = 130
      TabOrder = 1
      DataField = 'NOMB_COME_PRIO_PEDIDO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object boto_color: TdfsColorButton
      Left = 112
      Top = 56
      Width = 130
      Height = 28
      Caption = 'Color del estado'
      TabOrder = 2
      OtherBtnCaption = '&Más'
      OtherColor = clBtnFace
      PaletteColors.XSize = 4
      PaletteColors.YSize = 5
      PaletteColors.Colors = (
        16777215
        255
        65280
        16711680
        12572607
        0
        127
        32512
        8323072
        15712159
        12566463
        65535
        16776960
        16711935
        15726591
        8355711
        32639
        8355584
        8323199
        10461087)
      CustomColors.XSize = 8
      CustomColors.YSize = 2
      CustomColors.Colors = (
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215
        16777215)
      Color = clBtnFace
      OnColorChange = boto_colorColorChange
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_COME_PRIO_PEDIDOS'
    object Tabla_VentanaCONS_COME_PRIO_PEDIDO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_COME_PRIO_PEDIDO'
      Required = True
    end
    object Tabla_VentanaCODI_COME_PRIO_PEDIDO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_COME_PRIO_PEDIDO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_COME_PRIO_PEDIDO: TStringField
      DisplayLabel = 'Prioridad'
      FieldName = 'NOMB_COME_PRIO_PEDIDO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaCOLOR: TIntegerField
      DisplayLabel = 'Color'
      FieldName = 'COLOR'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
end

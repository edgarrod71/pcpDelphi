inherited FN1_Para_Peri_Pago1: TFN1_Para_Peri_Pago1
  Left = 345
  Top = 233
  Width = 350
  Height = 210
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited _LFecha_Creacion: TSCLDBLabel
    Left = 8
    Top = 115
  end
  inherited _LUsuario: TSCLDBLabel
    Left = 8
    Top = 137
  end
  object SCLDBLabel1: TSCLDBLabel [2]
    Left = 8
    Top = 72
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
    Caption = 'Código:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERI_PAGO'
    Field = 'CODI_PERI_PAGO'
  end
  object SCLDBLabel2: TSCLDBLabel [3]
    Left = 8
    Top = 94
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
    Caption = 'Período de Pago:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_PERI_PAGO'
    Field = 'NOMB_PERI_PAGO'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 342
  end
  inherited padr_pane_arriba: TPanel
    Width = 342
  end
  inherited _DBFecha_Creacion: TdxDBEdit
    Left = 110
    Top = 115
    StoredValues = 64
  end
  inherited _DBUsuario: TdxDBEdit
    Left = 110
    Top = 137
    StoredValues = 64
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 342
    inherited padr_beve_1: TBevel
      Width = 336
    end
  end
  object dxDBEdit1: TdxDBEdit [9]
    Left = 110
    Top = 72
    Width = 89
    Style.BorderStyle = xbsFlat
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtNone
    Style.HotTrack = False
    Style.Shadow = False
    TabOrder = 5
    CharCase = ecUpperCase
    DataField = 'CODI_PERI_PAGO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [10]
    Left = 110
    Top = 94
    Width = 185
    Style.BorderStyle = xbsFlat
    Style.ButtonStyle = btsSimple
    Style.ButtonTransparence = ebtNone
    Style.HotTrack = False
    Style.Shadow = False
    TabOrder = 6
    DataField = 'NOMB_PERI_PAGO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  inherited Tabla_Ventana: TTable
    TableName = 'SIS_PERI_PAGO'
    object Tabla_VentanaCONS_PERI_PAGO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERI_PAGO'
      Required = True
    end
    object Tabla_VentanaCODI_PERI_PAGO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERI_PAGO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PERI_PAGO: TStringField
      DisplayLabel = 'Período de Pago'
      FieldName = 'NOMB_PERI_PAGO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
end

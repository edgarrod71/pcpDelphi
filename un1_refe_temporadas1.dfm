inherited fn1_refe_temporadas1: Tfn1_refe_temporadas1
  Left = 225
  Top = 198
  Width = 493
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 485
  end
  inherited padr_shap_xp_down: TShape
    Width = 485
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 485
  end
  inherited padr_pane_arriba: TPanel
    Width = 485
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 485
    inherited padr_beve_1: TBevel
      Width = 479
    end
    inherited padr_sepa_new: TShape
      Width = 479
    end
  end
  inherited padr_pane_info: TPanel
    Width = 485
    inherited _LFecha_Creacion: TSCLDBLabel
      Left = 34
      Top = 122
    end
    inherited _LUsuario: TSCLDBLabel
      Left = 34
      Top = 144
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Left = 136
      Top = 122
      StyleController = padr_estilo
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Left = 136
      Top = 144
      StyleController = padr_estilo
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Width = 485
    inherited padr_beve_abajo: TBevel
      Width = 479
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 485
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 485
    Height = 107
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 34
      Top = 11
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
      DataField = 'CODI_REFE_TEMPORADA'
      Field = 'CODI_REFE_TEMPORADA'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 16
      Top = 30
      Width = 118
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
      Caption = 'Colección/Temporada:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_REFE_TEMPORADA'
      Field = 'NOMB_REFE_TEMPORADA'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 34
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
      Caption = 'Fecha inicial:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_INICIAL'
      Field = 'FECH_INICIAL'
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 34
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
      FocusControl = dxDBDateEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha inicial:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_FINAL'
      Field = 'FECH_FINAL'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 136
      Top = 11
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_REFE_TEMPORADA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 136
      Top = 30
      Width = 185
      TabOrder = 1
      DataField = 'NOMB_REFE_TEMPORADA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBDateEdit1: TdxDBDateEdit
      Left = 136
      Top = 56
      Width = 121
      TabOrder = 2
      DataField = 'FECH_INICIAL'
      DataSource = data_ventana
      StyleController = padr_estilo
      SaveTime = False
      UseEditMask = True
      StoredValues = 4
    end
    object dxDBDateEdit2: TdxDBDateEdit
      Left = 136
      Top = 76
      Width = 121
      TabOrder = 3
      DataField = 'FECH_FINAL'
      DataSource = data_ventana
      StyleController = padr_estilo
      SaveTime = False
      UseEditMask = True
      StoredValues = 4
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_REFE_TEMPORADAS'
    object Tabla_VentanaCONS_REFE_TEMPORADA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      DisplayWidth = 10
      FieldName = 'CONS_REFE_TEMPORADA'
      Required = True
    end
    object Tabla_VentanaCODI_REFE_TEMPORADA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_TEMPORADA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Colección/Temporada'
      FieldName = 'NOMB_REFE_TEMPORADA'
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
    object Tabla_VentanaFECH_INICIAL: TDateTimeField
      FieldName = 'FECH_INICIAL'
    end
    object Tabla_VentanaFECH_FINAL: TDateTimeField
      FieldName = 'FECH_FINAL'
    end
  end
end

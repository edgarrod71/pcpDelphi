inherited fn1_refe_grupos1: Tfn1_refe_grupos1
  Left = 238
  Top = 151
  Width = 346
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 10
    Top = 65
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
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
    DataField = 'CODI_REFE_GRUPO'
    Field = 'CODI_REFE_GRUPO'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 10
    Top = 84
    Width = 100
    Height = 21
    Alive = True
    ColorActive = 16578290
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
    Caption = 'Grupo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_REFE_GRUPO'
    Field = 'NOMB_REFE_GRUPO'
  end
  inherited padr_shap_xp_up: TShape
    Width = 338
  end
  inherited padr_shap_xp_down: TShape
    Width = 338
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 338
  end
  inherited padr_pane_arriba: TPanel
    Width = 338
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 338
    inherited padr_beve_1: TBevel
      Width = 332
    end
    inherited padr_sepa_new: TShape
      Width = 332
    end
  end
  inherited padr_pane_info: TPanel
    Width = 338
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 126
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 126
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
  object dxDBEdit1: TdxDBEdit [8]
    Left = 112
    Top = 65
    Width = 121
    Style.BorderStyle = xbsFlat
    TabOrder = 5
    CharCase = ecUpperCase
    DataField = 'CODI_REFE_GRUPO'
    DataSource = data_ventana
  end
  object dxDBEdit2: TdxDBEdit [9]
    Left = 112
    Top = 84
    Width = 185
    Style.BorderStyle = xbsFlat
    TabOrder = 6
    DataField = 'NOMB_REFE_GRUPO'
    DataSource = data_ventana
  end
  inherited pane_beve_abajo: TPanel
    Width = 338
    inherited padr_beve_abajo: TBevel
      Width = 332
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 338
    TabOrder = 7
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_REFE_GRUPOS'
    object Tabla_VentanaCONS_REFE_GRUPO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_GRUPO'
      Required = True
    end
    object Tabla_VentanaCODI_REFE_GRUPO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_GRUPO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_REFE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_REFE_GRUPO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUA_SISTEMA'
    end
  end
end

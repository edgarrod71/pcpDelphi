inherited FN1_Para_Nive_Salariales1: TFN1_Para_Nive_Salariales1
  Left = 370
  Top = 212
  Width = 340
  Height = 323
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 332
  end
  inherited padr_shap_xp_down: TShape
    Top = 295
    Width = 332
  end
  object SCLDBLabel1: TSCLDBLabel [2]
    Left = 10
    Top = 64
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
    DataField = 'CODI_PERS_NIVE_SALARIAL'
    Field = 'CODI_PERS_NIVE_SALARIAL'
  end
  object SCLDBLabel2: TSCLDBLabel [3]
    Left = 10
    Top = 112
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
    FocusControl = dxDBCurrencyEdit1
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Valor Mínimo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'VALO_MINIMO'
    Field = 'VALO_MINIMO'
  end
  object SCLDBLabel3: TSCLDBLabel [4]
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
    Caption = 'Nivel Salarial:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_PERS_NIVE_SALARIAL'
    Field = 'NOMB_PERS_NIVE_SALARIAL'
  end
  object SCLDBLabel4: TSCLDBLabel [5]
    Left = 10
    Top = 132
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
    FocusControl = dxDBCurrencyEdit2
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Valor Máximo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'VALO_MAXIMO'
    Field = 'VALO_MAXIMO'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 332
  end
  inherited padr_pane_arriba: TPanel
    Width = 332
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 332
    inherited padr_beve_1: TBevel
      Width = 326
    end
    inherited padr_sepa_new: TShape
      Width = 326
    end
  end
  inherited padr_pane_info: TPanel
    Top = 294
    Width = 332
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 161
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 183
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 161
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 183
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 286
    Width = 332
    inherited padr_beve_abajo: TBevel
      Width = 326
    end
  end
  object dxDBEdit1: TdxDBEdit [11]
    Left = 112
    Top = 64
    Width = 89
    TabOrder = 9
    DataField = 'CODI_PERS_NIVE_SALARIAL'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBCurrencyEdit1: TdxDBCurrencyEdit [12]
    Left = 112
    Top = 112
    Width = 89
    TabOrder = 7
    Alignment = taRightJustify
    DataField = 'VALO_MINIMO'
    DataSource = data_ventana
    StyleController = padr_estilo
    DisplayFormat = '$ ,0.00'
    Nullable = False
    StoredValues = 1
  end
  object dxDBEdit2: TdxDBEdit [13]
    Left = 112
    Top = 84
    Width = 185
    TabOrder = 6
    DataField = 'NOMB_PERS_NIVE_SALARIAL'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBCurrencyEdit2: TdxDBCurrencyEdit [14]
    Left = 112
    Top = 132
    Width = 89
    TabOrder = 8
    Alignment = taRightJustify
    DataField = 'VALO_MAXIMO'
    DataSource = data_ventana
    StyleController = padr_estilo
    DisplayFormat = '$ ,0.00'
    Nullable = False
    StoredValues = 1
  end
  inherited padr_pane_principal: TPanel
    Width = 332
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_PERS_NIVE_SALARIALES'
    object Tabla_VentanaCONS_PERS_NIVE_SALARIAL: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
      Required = True
    end
    object Tabla_VentanaCODI_PERS_NIVE_SALARIAL: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERS_NIVE_SALARIAL'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PERS_NIVE_SALARIAL: TStringField
      DisplayLabel = 'Nivel Salarial'
      FieldName = 'NOMB_PERS_NIVE_SALARIAL'
      Required = True
      Size = 60
    end
    object Tabla_VentanaVALO_MINIMO: TIntegerField
      DisplayLabel = 'Valor Mínimo'
      FieldName = 'VALO_MINIMO'
    end
    object Tabla_VentanaVALO_MAXIMO: TIntegerField
      DisplayLabel = 'Valor Máximo'
      FieldName = 'VALO_MAXIMO'
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
end

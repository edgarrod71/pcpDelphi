inherited FN1_Para_Parentescos1: TFN1_Para_Parentescos1
  Width = 380
  Height = 192
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 372
  end
  inherited padr_shap_xp_down: TShape
    Top = 164
    Width = 372
  end
  object SCLDBLabel1: TSCLDBLabel [2]
    Left = 10
    Top = 67
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
    Caption = 'Código'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PARENTESCO'
    Field = 'CODI_PARENTESCO'
  end
  object SCLDBLabel2: TSCLDBLabel [3]
    Left = 10
    Top = 86
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
    Caption = 'Parentesco'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_PARENTESCO'
    Field = 'NOMB_PARENTESCO'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 372
  end
  inherited padr_pane_arriba: TPanel
    Width = 372
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 372
    inherited padr_beve_1: TBevel
      Width = 366
    end
    inherited padr_sepa_new: TShape
      Width = 366
    end
  end
  inherited padr_pane_info: TPanel
    Top = 163
    Width = 372
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 111
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 133
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 111
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 133
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 155
    Width = 372
    inherited padr_beve_abajo: TBevel
      Width = 366
    end
  end
  object dxDBEdit1: TdxDBEdit [9]
    Left = 112
    Top = 67
    Width = 89
    TabOrder = 7
    CharCase = ecUpperCase
    DataField = 'CODI_PARENTESCO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [10]
    Left = 112
    Top = 86
    Width = 241
    TabOrder = 6
    DataField = 'NOMB_PARENTESCO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  inherited padr_pane_principal: TPanel
    Width = 372
  end
  inherited Tabla_Ventana: TTable
    TableName = 'SIS_PARENTESCOS'
    object Tabla_VentanaCODI_PARENTESCO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PARENTESCO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PARENTESCO: TStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'NOMB_PARENTESCO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
end

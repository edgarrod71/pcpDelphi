inherited FN1_Para_Cargos1: TFN1_Para_Cargos1
  Left = 263
  Top = 211
  Width = 611
  Height = 356
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
    DataField = 'CODI_PERS_CARGO'
    Field = 'CODI_PERS_CARGO'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 10
    Top = 85
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
    Caption = 'Cargo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_PERS_CARGO'
    Field = 'NOMB_PERS_CARGO'
  end
  inherited padr_shap_xp_up: TShape
    Width = 603
  end
  inherited padr_shap_xp_down: TShape
    Top = 328
    Width = 603
  end
  object SCLDBLabel15: TSCLDBLabel [4]
    Left = 10
    Top = 116
    Width = 100
    Height = 58
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = dxDBEdit10
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Observaciones'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'OBSERVACIONES'
    Field = 'OBSERVACIONES'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 603
  end
  inherited padr_pane_arriba: TPanel
    Width = 603
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 603
    inherited padr_beve_1: TBevel
      Width = 509
    end
    inherited padr_sepa_new: TShape
      Width = 597
    end
  end
  inherited padr_pane_info: TPanel
    Top = 327
    Width = 603
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
  object dxDBEdit1: TdxDBEdit [9]
    Left = 112
    Top = 65
    Width = 89
    Style.Shadow = False
    TabOrder = 5
    CharCase = ecUpperCase
    DataField = 'CODI_PERS_CARGO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [10]
    Left = 112
    Top = 85
    Width = 241
    Style.Shadow = False
    TabOrder = 6
    DataField = 'NOMB_PERS_CARGO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  inherited pane_beve_abajo: TPanel
    Top = 319
    Width = 603
    inherited padr_beve_abajo: TBevel
      Width = 597
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 603
    TabOrder = 7
  end
  object dxDBEdit10: TdxDBEdit [13]
    Left = 112
    Top = 116
    Width = 435
    TabOrder = 8
    AutoSize = False
    DataField = 'OBSERVACIONES'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    Height = 58
    StoredValues = 64
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_PERS_CARGOS'
    object Tabla_VentanaCONS_PERS_CARGO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_CARGO'
      Required = True
    end
    object Tabla_VentanaCODI_PERS_CARGO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERS_CARGO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PERS_CARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'NOMB_PERS_CARGO'
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
    object Tabla_VentanaOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
  end
end

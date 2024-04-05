inherited FN1_Para_Cent_Costos1: TFN1_Para_Cent_Costos1
  Left = 386
  Top = 199
  Width = 722
  Height = 474
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 10
    Top = 68
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
    DataField = 'CODI_PERS_CENT_COSTO'
    Field = 'CODI_PERS_CENT_COSTO'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 10
    Top = 88
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
    Caption = 'Centro de Costo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_PERS_CENT_COSTO'
    Field = 'NOMB_PERS_CENT_COSTO'
  end
  inherited padr_shap_xp_up: TShape
    Width = 714
  end
  inherited padr_shap_xp_down: TShape
    Top = 446
    Width = 714
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
    Width = 714
  end
  inherited padr_pane_arriba: TPanel
    Width = 714
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 714
    inherited padr_beve_1: TBevel
      Width = 379
    end
    inherited padr_sepa_new: TShape
      Width = 708
    end
  end
  inherited padr_pane_info: TPanel
    Top = 445
    Width = 714
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 136
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 158
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 136
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 158
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object dxDBEdit1: TdxDBEdit [9]
    Left = 112
    Top = 68
    Width = 89
    Style.Shadow = False
    TabOrder = 5
    CharCase = ecUpperCase
    DataField = 'CODI_PERS_CENT_COSTO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [10]
    Left = 112
    Top = 88
    Width = 260
    Style.Shadow = False
    TabOrder = 6
    DataField = 'NOMB_PERS_CENT_COSTO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  inherited pane_beve_abajo: TPanel
    Top = 437
    Width = 714
    inherited padr_beve_abajo: TBevel
      Width = 708
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 714
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
    TableName = 'GLO_PERS_CENT_COSTOS'
    object Tabla_VentanaCONS_PERS_CENT_COSTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_CENT_COSTO'
      Required = True
    end
    object Tabla_VentanaCODI_PERS_CENT_COSTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERS_CENT_COSTO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PERS_CENT_COSTO: TStringField
      DisplayLabel = 'Centro de Costo'
      FieldName = 'NOMB_PERS_CENT_COSTO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 240
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

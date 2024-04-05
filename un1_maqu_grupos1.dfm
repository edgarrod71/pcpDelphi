inherited fn1_maqu_grupos1: Tfn1_maqu_grupos1
  Left = 333
  Top = 225
  Width = 501
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 493
  end
  inherited padr_shap_xp_down: TShape
    Width = 493
  end
  object SCLDBLabel1: TSCLDBLabel [2]
    Left = 10
    Top = 56
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
    DataField = 'CODI_RECU_GRUPO'
    Field = 'CODI_RECU_GRUPO'
  end
  object SCLDBLabel2: TSCLDBLabel [3]
    Left = 10
    Top = 80
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
    Caption = 'Grupo de Recurso:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_RECU_GRUPO'
    Field = 'NOMB_RECU_GRUPO'
  end
  object SCLDBLabel3: TSCLDBLabel [4]
    Left = 10
    Top = 104
    Width = 100
    Height = 97
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = dxDBMemo1
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Observaciones:'
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
    Width = 493
  end
  inherited padr_pane_arriba: TPanel
    Width = 493
    TabOrder = 8
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 493
    TabOrder = 7
    inherited padr_beve_1: TBevel
      Width = 487
    end
    inherited padr_sepa_new: TShape
      Width = 487
    end
  end
  inherited padr_pane_info: TPanel
    Width = 493
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 204
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 226
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 204
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 226
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Width = 493
    inherited padr_beve_abajo: TBevel
      Width = 487
    end
  end
  object dxDBEdit1: TdxDBEdit [10]
    Left = 112
    Top = 56
    Width = 121
    TabOrder = 0
    CharCase = ecUpperCase
    DataField = 'CODI_RECU_GRUPO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBEdit2: TdxDBEdit [11]
    Left = 112
    Top = 80
    Width = 185
    TabOrder = 1
    DataField = 'NOMB_RECU_GRUPO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBMemo1: TdxDBMemo [12]
    Left = 112
    Top = 104
    Width = 329
    TabOrder = 2
    DataField = 'OBSERVACIONES'
    DataSource = data_ventana
    StyleController = padr_estilo
    Height = 97
  end
  inherited padr_pane_principal: TPanel
    Width = 493
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_RECU_GRUPOS'
    object Tabla_VentanaCONS_RECU_GRUPO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_RECU_GRUPO'
      Required = True
    end
    object Tabla_VentanaCODI_RECU_GRUPO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECU_GRUPO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_RECU_GRUPO: TStringField
      DisplayLabel = 'Grupo de Recurso'
      FieldName = 'NOMB_RECU_GRUPO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
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

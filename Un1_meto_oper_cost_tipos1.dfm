inherited fn1_meto_oper_cost_tipos1: Tfn1_meto_oper_cost_tipos1
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 541
  end
  inherited padr_shap_xp_down: TShape
    Top = 196
    Width = 541
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 541
  end
  inherited padr_pane_arriba: TPanel
    Width = 541
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 541
    inherited padr_sepa_new: TShape
      Width = 535
    end
  end
  inherited padr_pane_info: TPanel
    Top = 195
    Width = 541
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
    Width = 541
    Height = 151
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 8
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
      DataField = 'CODI_OPER_COST_TIPO'
      Field = 'CODI_OPER_COST_TIPO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 27
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo de operación:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_OPER_COST_TIPO'
      Field = 'NOMB_OPER_COST_TIPO'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 48
      Width = 100
      Height = 89
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Descripción'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'DESCRIPCION'
      Field = 'DESCRIPCION'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 8
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_OPER_COST_TIPO'
      DataSource = data_ventana
      MaxLength = 3
      StyleController = padr_estilo
      StoredValues = 2
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 28
      Width = 185
      TabOrder = 1
      DataField = 'NOMB_OPER_COST_TIPO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBMemo1: TdxDBMemo
      Left = 112
      Top = 48
      Width = 345
      TabOrder = 2
      DataField = 'DESCRIPCION'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 89
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 197
    Width = 541
    inherited padr_beve_abajo: TBevel
      Width = 535
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 541
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_OPER_COST_TIPOS'
    object Tabla_VentanaCONS_OPER_COST_TIPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_OPER_COST_TIPO'
      Required = True
    end
    object Tabla_VentanaCODI_OPER_COST_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_OPER_COST_TIPO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_OPER_COST_TIPO: TStringField
      DisplayLabel = 'Tipo de operación'
      FieldName = 'NOMB_OPER_COST_TIPO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 240
    end
  end
end

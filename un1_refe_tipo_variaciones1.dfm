inherited fn1_refe_tipo_variaciones1: Tfn1_refe_tipo_variaciones1
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 541
  end
  inherited padr_shap_xp_down: TShape
    Top = 224
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
  object Panel1: TPanel [5]
    Left = 0
    Top = 52
    Width = 541
    Height = 181
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 3
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
      DataField = 'CODI_REFE_TIPO_VARIACION'
      Field = 'CODI_REFE_TIPO_VARIACION'
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
      Caption = 'Tipo de variación:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_REFE_TIPO_VARIACION'
      Field = 'NOMB_REFE_TIPO_VARIACION'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 51
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
      Caption = 'Observaciones:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'OBSERVACIONES'
      Field = 'OBSERVACIONES'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 3
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_REFE_TIPO_VARIACION'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 26
      Width = 193
      TabOrder = 1
      DataField = 'NOMB_REFE_TIPO_VARIACION'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBMemo1: TdxDBMemo
      Left = 112
      Top = 56
      Width = 193
      TabOrder = 2
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 105
    end
  end
  inherited padr_pane_info: TPanel
    Top = 223
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
  inherited pane_beve_abajo: TPanel
    Top = 225
    Width = 541
    inherited padr_beve_abajo: TBevel
      Width = 535
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 233
    Width = 541
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_REFE_TIPO_VARIACIONES'
    object Tabla_VentanaCONS_REFE_TIPO_VARIACION: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.PCP_REFE_TIPO_VARIACIONES.CONS_REFE_TIPO_VARIACION'
      Required = True
    end
    object Tabla_VentanaCODI_REFE_TIPO_VARIACION: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.PCP_REFE_TIPO_VARIACIONES.CODI_REFE_TIPO_VARIACION'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Tipo de variación'
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.PCP_REFE_TIPO_VARIACIONES.NOMB_REFE_TIPO_VARIACION'
      Required = True
      Size = 60
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.PCP_REFE_TIPO_VARIACIONES.OBSERVACIONES'
      Size = 250
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_REFE_TIPO_VARIACIONES.FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_REFE_TIPO_VARIACIONES.USUA_SISTEMA'
    end
  end
end

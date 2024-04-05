inherited FN1_Para_Tipo_Caracteristicas1: TFN1_Para_Tipo_Caracteristicas1
  Left = 322
  Top = 193
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 541
  end
  inherited padr_shap_xp_down: TShape
    Top = 232
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
    Top = 231
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
    Top = 233
    Width = 541
    inherited padr_beve_abajo: TBevel
      Width = 535
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 541
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 541
    Height = 187
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 25
      Top = 8
      Width = 116
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
      DataField = 'CODI_TIPO_CARACTERISTICA'
      Field = 'CODI_TIPO_CARACTERISTICA'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 25
      Top = 28
      Width = 116
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
      Caption = 'Tipo de característica:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_TIPO_CARACTERISTICA'
      Field = 'NOMB_TIPO_CARACTERISTICA'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 41
      Top = 56
      Width = 100
      Height = 113
      Alive = False
      ColorActive = clBtnFace
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
    object dxDBEdit1: TdxDBEdit
      Left = 143
      Top = 8
      Width = 89
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_TIPO_CARACTERISTICA'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object dxDBEdit2: TdxDBEdit
      Left = 143
      Top = 28
      Width = 241
      TabOrder = 1
      DataField = 'NOMB_TIPO_CARACTERISTICA'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object dxDBMemo1: TdxDBMemo
      Left = 143
      Top = 56
      Width = 393
      TabOrder = 2
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 113
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_TIPO_CARACTERISTICAS'
    object Tabla_VentanaCONS_TIPO_CARACTERISTICA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_TIPO_CARACTERISTICA'
      Required = True
    end
    object Tabla_VentanaCODI_TIPO_CARACTERISTICA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_TIPO_CARACTERISTICA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Tipo de característica'
      FieldName = 'NOMB_TIPO_CARACTERISTICA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 5000
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
end

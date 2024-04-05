inherited FN1_Para_Colo_Grupos1: TFN1_Para_Colo_Grupos1
  Left = 122
  Top = 127
  Width = 425
  ActiveControl = DBCodigo
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 417
  end
  inherited padr_shap_xp_down: TShape
    Width = 417
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 417
  end
  inherited padr_pane_arriba: TPanel
    Width = 417
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 54
    Width = 417
    Height = 140
    Align = alClient
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
      FocusControl = DBCodigo
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'C�digo:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_COLO_GRUPO'
      Field = 'CODI_COLO_GRUPO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 28
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
      FocusControl = DBDescripcion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grupo de Color:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_COLO_GRUPO'
      Field = 'NOMB_COLO_GRUPO'
    end
    object DBCodigo: TdxDBEdit
      Left = 112
      Top = 8
      Width = 97
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_COLO_GRUPO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBDescripcion: TdxDBEdit
      Left = 112
      Top = 28
      Width = 260
      TabOrder = 1
      DataField = 'NOMB_COLO_GRUPO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 417
    inherited padr_beve_1: TBevel
      Width = 411
    end
    inherited padr_sepa_new: TShape
      Width = 411
    end
  end
  inherited padr_pane_info: TPanel
    Width = 417
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 104
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 126
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 104
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 126
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Width = 417
    inherited padr_beve_abajo: TBevel
      Width = 411
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 417
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_COLO_GRUPOS'
    object Tabla_VentanaCONS_COLO_GRUPO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_COLO_GRUPO'
      Required = True
    end
    object Tabla_VentanaCODI_COLO_GRUPO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C�digo'
      FieldName = 'CODI_COLO_GRUPO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_COLO_GRUPO: TStringField
      DisplayLabel = 'Grupo de Color'
      FieldName = 'NOMB_COLO_GRUPO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Creaci�n'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario Creaci�n'
      FieldName = 'USUA_SISTEMA'
    end
  end
end

inherited fn1_refe_estilos1: Tfn1_refe_estilos1
  Left = 189
  Top = 161
  Width = 375
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 10
    Top = 66
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
    DataField = 'CODI_REFE_ESTILO'
    Field = 'CODI_REFE_ESTILO'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
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
    Caption = 'Estilo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_REFE_ESTILO'
    Field = 'NOMB_REFE_ESTILO'
  end
  inherited padr_shap_xp_up: TShape
    Width = 367
  end
  inherited padr_shap_xp_down: TShape
    Width = 367
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 367
  end
  inherited padr_pane_arriba: TPanel
    Width = 367
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 367
    inherited padr_beve_1: TBevel
      Width = 361
    end
    inherited padr_sepa_new: TShape
      Width = 361
    end
  end
  inherited padr_pane_info: TPanel
    Width = 367
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
  object dxDBEdit1: TdxDBEdit [8]
    Left = 112
    Top = 66
    Width = 121
    TabOrder = 5
    CharCase = ecUpperCase
    DataField = 'CODI_REFE_ESTILO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBEdit2: TdxDBEdit [9]
    Left = 112
    Top = 86
    Width = 185
    TabOrder = 6
    DataField = 'NOMB_REFE_ESTILO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  inherited pane_beve_abajo: TPanel
    Width = 367
    inherited padr_beve_abajo: TBevel
      Width = 361
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 367
    TabOrder = 7
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_REFE_ESTILOS'
    object Tabla_VentanaCONS_REFE_ESTILO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_ESTILO'
      Required = True
    end
    object Tabla_VentanaCODI_REFE_ESTILO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_ESTILO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_REFE_ESTILO: TStringField
      DisplayLabel = 'Estilo'
      FieldName = 'NOMB_REFE_ESTILO'
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
  end
end

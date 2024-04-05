inherited fn1_maqu_marcas1: Tfn1_maqu_marcas1
  Left = 399
  Top = 256
  Width = 358
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 350
  end
  inherited padr_shap_xp_down: TShape
    Width = 350
  end
  object SCLDBLabel1: TSCLDBLabel [2]
    Left = 10
    Top = 72
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
    DataField = 'CODI_RECU_MARCA'
    Field = 'CODI_RECU_MARCA'
  end
  object SCLDBLabel2: TSCLDBLabel [3]
    Left = 10
    Top = 96
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
    Caption = 'Marca de Recurso:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_RECU_MARCA'
    Field = 'NOMB_RECU_MARCA'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 350
  end
  inherited padr_pane_arriba: TPanel
    Width = 350
    TabOrder = 7
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 350
    TabOrder = 6
    inherited padr_beve_1: TBevel
      Width = 344
    end
    inherited padr_sepa_new: TShape
      Width = 344
    end
  end
  inherited padr_pane_info: TPanel
    Width = 350
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 119
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 141
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 119
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 141
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Width = 350
    inherited padr_beve_abajo: TBevel
      Width = 344
    end
  end
  object dxDBEdit1: TdxDBEdit [9]
    Left = 112
    Top = 72
    Width = 121
    TabOrder = 0
    CharCase = ecUpperCase
    DataField = 'CODI_RECU_MARCA'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBEdit2: TdxDBEdit [10]
    Left = 112
    Top = 96
    Width = 121
    TabOrder = 1
    DataField = 'NOMB_RECU_MARCA'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  inherited padr_pane_principal: TPanel
    Width = 350
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_RECU_MARCAS'
    object Tabla_VentanaCONS_RECU_MARCA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_RECU_MARCA'
      Required = True
    end
    object Tabla_VentanaCODI_RECU_MARCA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECU_MARCA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_RECU_MARCA: TStringField
      DisplayLabel = 'Marca de Recurso'
      FieldName = 'NOMB_RECU_MARCA'
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

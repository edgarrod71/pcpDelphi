inherited fn1_refe_lineas1: Tfn1_refe_lineas1
  Left = 171
  Top = 174
  Width = 373
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 10
    Top = 61
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
    DataField = 'CODI_REFE_LINEA'
    Field = 'CODI_REFE_LINEA'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 10
    Top = 81
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
    Caption = 'Línea:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_REFE_LINEA'
    Field = 'NOMB_REFE_LINEA'
  end
  inherited padr_shap_xp_up: TShape
    Width = 365
  end
  inherited padr_shap_xp_down: TShape
    Width = 365
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 365
  end
  inherited padr_pane_arriba: TPanel
    Width = 365
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 365
    inherited padr_beve_1: TBevel
      Width = 359
    end
    inherited padr_sepa_new: TShape
      Width = 359
    end
  end
  inherited padr_pane_info: TPanel
    Width = 365
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
    Top = 61
    Width = 121
    TabOrder = 5
    DataField = 'CODI_REFE_LINEA'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBEdit2: TdxDBEdit [9]
    Left = 112
    Top = 81
    Width = 185
    TabOrder = 6
    DataField = 'NOMB_REFE_LINEA'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  inherited pane_beve_abajo: TPanel
    Width = 365
    inherited padr_beve_abajo: TBevel
      Width = 359
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 365
    TabOrder = 7
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_REFE_LINEAS'
    object Tabla_VentanaCONS_REFE_LINEA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_LINEA'
      Required = True
    end
    object Tabla_VentanaCODI_REFE_LINEA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_LINEA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_REFE_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_REFE_LINEA'
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

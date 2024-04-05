inherited FN1_Para_Tipo_Documento1: TFN1_Para_Tipo_Documento1
  Width = 383
  Height = 193
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 10
    Top = 67
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
    Caption = 'Código'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_TIPO_DOCUMENTO'
    Field = 'CODI_TIPO_DOCUMENTO'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 10
    Top = 87
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
    FocusControl = padr_barra
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Tipo de Documento'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_TIPO_DOCUMENTO'
    Field = 'NOMB_TIPO_DOCUMENTO'
  end
  inherited padr_shap_xp_up: TShape
    Width = 375
  end
  inherited padr_shap_xp_down: TShape
    Top = 165
    Width = 375
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 375
  end
  inherited padr_pane_arriba: TPanel
    Width = 375
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 375
    inherited padr_beve_1: TBevel
      Width = 369
    end
    inherited padr_sepa_new: TShape
      Width = 369
    end
  end
  inherited padr_pane_info: TPanel
    Top = 164
    Width = 375
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 111
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 133
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 111
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 133
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object dxDBEdit1: TdxDBEdit [8]
    Left = 112
    Top = 67
    Width = 89
    Style.Shadow = False
    TabOrder = 5
    DataField = 'CODI_TIPO_DOCUMENTO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [9]
    Left = 112
    Top = 87
    Width = 241
    Style.Shadow = False
    TabOrder = 6
    DataField = 'NOMB_TIPO_DOCUMENTO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  inherited pane_beve_abajo: TPanel
    Top = 156
    Width = 375
    inherited padr_beve_abajo: TBevel
      Width = 369
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 375
    TabOrder = 7
  end
  inherited Tabla_Ventana: TTable
    TableName = 'SIS_TIPO_DOCU_PERSONAL'
    object Tabla_VentanaCODI_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_TIPO_DOCUMENTO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'NOMB_TIPO_DOCUMENTO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
end

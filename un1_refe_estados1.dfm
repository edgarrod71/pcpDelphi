inherited fn1_refe_estados1: Tfn1_refe_estados1
  Top = 142
  Width = 476
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLShape1: TSCLShape [0]
    Left = 153
    Top = 112
    Width = 248
    Height = 57
    Brush.Style = bsClear
    Pen.Color = 14467501
  end
  object SCLDBLabel1: TSCLDBLabel [1]
    Left = 51
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
    Caption = 'Código:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_REFE_ESTADO'
    Field = 'CODI_REFE_ESTADO'
  end
  object SCLDBLabel2: TSCLDBLabel [2]
    Left = 51
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
    Caption = 'Estado:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_REFE_ESTADO'
    Field = 'NOMB_REFE_ESTADO'
  end
  inherited padr_shap_xp_up: TShape
    Width = 468
  end
  inherited padr_shap_xp_down: TShape
    Width = 468
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 468
  end
  inherited padr_pane_arriba: TPanel
    Width = 468
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 468
    inherited padr_beve_1: TBevel
      Width = 462
    end
    inherited padr_sepa_new: TShape
      Width = 462
    end
  end
  inherited padr_pane_info: TPanel
    Width = 468
    inherited _LFecha_Creacion: TSCLDBLabel
      Left = 51
      Top = 151
    end
    inherited _LUsuario: TSCLDBLabel
      Left = 51
      Top = 173
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Left = 153
      Top = 151
      StyleController = padr_estilo
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Left = 153
      Top = 173
      StyleController = padr_estilo
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object dxDBEdit1: TdxDBEdit [9]
    Left = 153
    Top = 67
    Width = 121
    TabOrder = 5
    CharCase = ecUpperCase
    DataField = 'CODI_REFE_ESTADO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBEdit2: TdxDBEdit [10]
    Left = 153
    Top = 86
    Width = 248
    TabOrder = 6
    DataField = 'NOMB_REFE_ESTADO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  inherited pane_beve_abajo: TPanel
    Width = 468
    inherited padr_beve_abajo: TBevel
      Width = 462
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 468
    TabOrder = 7
  end
  object dxDBCheckEdit1: TdxDBCheckEdit [13]
    Left = 156
    Top = 119
    Width = 105
    TabOrder = 8
    Caption = 'Editar maestro'
    DataField = 'EDIT_MAESTRO'
    DataSource = data_ventana
    StyleController = padr_estilo_chec
    ValueChecked = '1'
    ValueUnchecked = '-1'
  end
  object dxDBCheckEdit2: TdxDBCheckEdit [14]
    Left = 156
    Top = 143
    Width = 108
    TabOrder = 9
    Caption = 'Ver en O.Trabajo'
    DataField = 'MOST_ORDE_TRABAJO'
    DataSource = data_ventana
    StyleController = padr_estilo_chec
    ValueChecked = '1'
    ValueUnchecked = '-1'
  end
  object dxDBCheckEdit3: TdxDBCheckEdit [15]
    Left = 284
    Top = 119
    Width = 114
    TabOrder = 10
    Caption = 'Ver en métodos'
    DataField = 'MOST_METODOS'
    DataSource = data_ventana
    StyleController = padr_estilo_chec
    ValueChecked = '1'
    ValueUnchecked = '-1'
  end
  object dxDBCheckEdit4: TdxDBCheckEdit [16]
    Left = 284
    Top = 143
    Width = 114
    TabOrder = 11
    Caption = 'Ver en inventarios'
    DataField = 'MOST_INVE_MATERIALES'
    DataSource = data_ventana
    StyleController = padr_estilo_chec
    ValueChecked = '1'
    ValueUnchecked = '-1'
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_REFE_ESTADOS'
    object Tabla_VentanaCONS_REFE_ESTADO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_ESTADO'
      Required = True
    end
    object Tabla_VentanaCODI_REFE_ESTADO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_ESTADO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_REFE_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'NOMB_REFE_ESTADO'
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
    object Tabla_VentanaEDIT_MAESTRO: TIntegerField
      DisplayLabel = 'Editar Maestro'
      FieldName = 'EDIT_MAESTRO'
    end
    object Tabla_VentanaMOST_METODOS: TIntegerField
      DisplayLabel = 'Mostrar Métodos'
      FieldName = 'MOST_METODOS'
    end
    object Tabla_VentanaMOST_ORDE_TRABAJO: TIntegerField
      DisplayLabel = 'Mostrar Orden de Trabajo'
      FieldName = 'MOST_ORDE_TRABAJO'
    end
    object Tabla_VentanaMOST_INVE_MATERIALES: TIntegerField
      DisplayLabel = 'Mostrar Inventario de Materiales'
      FieldName = 'MOST_INVE_MATERIALES'
    end
  end
end

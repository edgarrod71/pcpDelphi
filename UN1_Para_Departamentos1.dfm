inherited FN1_Para_Departamentos1: TFN1_Para_Departamentos1
  Left = 318
  Top = 198
  Width = 399
  Height = 254
  HelpContext = 11
  ActiveControl = DBCodigo
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 391
  end
  inherited padr_shap_xp_down: TShape
    Top = 226
    Width = 391
  end
  object SCLDBLabel1: TSCLDBLabel [2]
    Left = 10
    Top = 76
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
    FocusControl = CBPaises
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'País:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_PAIS'
    Field = 'CONS_PAIS'
  end
  object SCLDBLabel2: TSCLDBLabel [3]
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
    FocusControl = DBCodigo
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
    DataField = 'CODI_DEPARTAMENTO'
    Field = 'CODI_DEPARTAMENTO'
  end
  object SCLDBLabel3: TSCLDBLabel [4]
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
    FocusControl = DBDescripcion
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Departamento:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_DEPARTAMENTO'
    Field = 'NOMB_DEPARTAMENTO'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 391
  end
  inherited padr_pane_arriba: TPanel
    Width = 391
    TabOrder = 9
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 391
    TabOrder = 7
    inherited padr_beve_1: TBevel
      Width = 385
    end
    inherited padr_sepa_new: TShape
      Width = 385
    end
  end
  inherited padr_pane_info: TPanel
    Top = 225
    Width = 391
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 125
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 147
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 125
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 147
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 217
    Width = 391
    inherited padr_beve_abajo: TBevel
      Width = 385
    end
  end
  object DBCodigo: TdxDBEdit [10]
    Left = 112
    Top = 56
    Width = 97
    Style.Shadow = False
    TabOrder = 0
    CharCase = ecUpperCase
    DataField = 'CODI_DEPARTAMENTO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBDescripcion: TdxDBEdit [11]
    Left = 112
    Top = 96
    Width = 257
    Style.Shadow = False
    TabOrder = 2
    DataField = 'NOMB_DEPARTAMENTO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object CBPaises: TPCPLookUpComboEdit [12]
    Left = 112
    Top = 76
    Width = 229
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CONS_PAIS'
    DataSource = data_ventana
    KeyField = 'CONS_PAIS'
    ListField = 'NOMB_PAIS'
    ListSource = DSPaises
    ParentCtl3D = False
    TabOrder = 1
    DirectInput = False
  end
  object SCLButton1: TTBXButtonSCL [13]
    Left = 343
    Top = 75
    Width = 21
    Height = 20
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    ImageIndex = 0
    Images = Imagenes_Botones_Pequenos
    SmartFocus = False
    TabOrder = 8
    TabStop = False
  end
  inherited padr_pane_principal: TPanel
    Width = 391
  end
  object TPaises: TTable [15]
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PAISES'
    Left = 16
    Top = 80
    object TPaisesCONS_PAIS: TIntegerField
      FieldName = 'CONS_PAIS'
      Required = True
    end
    object TPaisesNOMB_PAIS: TStringField
      FieldName = 'NOMB_PAIS'
      Required = True
      Size = 60
    end
  end
  object DSPaises: TDataSource [16]
    AutoEdit = False
    DataSet = TPaises
    Left = 48
    Top = 80
  end
  inherited Tabla_Ventana: TTable
    IndexName = 'GLO_DEPARTAMENTOS_PK'
    TableName = 'GLO_DEPARTAMENTOS'
    object Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Consecutivo'
      FieldName = 'CONS_DEPARTAMENTO'
      Required = True
    end
    object Tabla_VentanaCONS_PAIS: TIntegerField
      DisplayLabel = 'País'
      FieldName = 'CONS_PAIS'
      Required = True
    end
    object Tabla_VentanaCODI_DEPARTAMENTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_DEPARTAMENTO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUA_SISTEMA'
    end
  end
end

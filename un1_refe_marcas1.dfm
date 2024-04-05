inherited fn1_refe_marcas1: Tfn1_refe_marcas1
  Left = 192
  Top = 213
  Width = 401
  Height = 368
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 393
  end
  inherited padr_shap_xp_down: TShape
    Top = 340
    Width = 393
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 393
  end
  inherited padr_pane_arriba: TPanel
    Width = 393
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 393
    inherited padr_beve_1: TBevel
      Width = 387
    end
    inherited padr_sepa_new: TShape
      Width = 387
    end
  end
  inherited padr_pane_info: TPanel
    Top = 339
    Width = 393
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 55
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 77
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 55
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 77
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 331
    Width = 393
    inherited padr_beve_abajo: TBevel
      Width = 387
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 393
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 393
    Height = 109
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
      FontActive.Name = 'MS Sans Serif'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Layout = tlTop
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_REFE_MARCA'
      Field = 'CODI_REFE_MARCA'
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
      FontActive.Name = 'MS Sans Serif'
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
      Caption = 'Marca:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Layout = tlTop
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_REFE_MARCA'
      Field = 'NOMB_REFE_MARCA'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 11
      Top = 56
      Width = 100
      Height = 21
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBDateEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha de creación:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_CREA_MARCA'
      Field = 'FECH_CREA_MARCA'
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 11
      Top = 76
      Width = 100
      Height = 21
      Alive = False
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
      Caption = 'Tiempo de uso:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'TIEM_USO'
      Field = 'TIEM_USO'
    end
    object Label1: TLabel
      Left = 167
      Top = 81
      Width = 30
      Height = 13
      Caption = 'meses'
    end
    object DBCodigo: TdxDBEdit
      Left = 112
      Top = 8
      Width = 121
      Style.Shadow = False
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_REFE_MARCA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBDescripcion: TdxDBEdit
      Left = 112
      Top = 28
      Width = 257
      Style.Shadow = False
      TabOrder = 1
      DataField = 'NOMB_REFE_MARCA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBDateEdit1: TdxDBDateEdit
      Left = 113
      Top = 56
      Width = 121
      TabOrder = 2
      DataField = 'FECH_CREA_MARCA'
      DataSource = data_ventana
      StyleController = padr_estilo
      SaveTime = False
      UseEditMask = True
      StoredValues = 4
    end
    object dxDBEdit1: TdxDBEdit
      Left = 113
      Top = 76
      Width = 49
      Enabled = False
      TabOrder = 3
      DataField = 'TIEM_USO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inherited data_ventana: TDataSource
    Left = 64
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 96
  end
  inherited Tabla_Ventana: TTable
    OnCalcFields = Tabla_VentanaCalcFields
    TableName = 'GLO_REFE_MARCAS'
    object Tabla_VentanaCONS_REFE_MARCA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_MARCA'
      Required = True
    end
    object Tabla_VentanaCODI_REFE_MARCA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_MARCA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_REFE_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOMB_REFE_MARCA'
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
    object Tabla_VentanaFECH_CREA_MARCA: TDateTimeField
      DisplayLabel = 'Fecha de creación'
      FieldName = 'FECH_CREA_MARCA'
      Required = True
    end
    object Tabla_VentanaTIEM_USO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TIEM_USO'
      DisplayFormat = ',0'
      Calculated = True
    end
  end
end

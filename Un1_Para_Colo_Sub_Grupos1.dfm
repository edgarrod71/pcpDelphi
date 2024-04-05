inherited Fn1_Para_Colo_Sub_Grupos1: TFn1_Para_Colo_Sub_Grupos1
  Left = 196
  Top = 171
  Width = 354
  Height = 225
  ActiveControl = DBCodigo
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 346
  end
  inherited padr_shap_xp_down: TShape
    Top = 197
    Width = 346
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 346
  end
  inherited padr_pane_arriba: TPanel
    Width = 346
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 54
    Width = 346
    Height = 134
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
      Caption = 'Código:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_COLO_SUBGRUPO'
      Field = 'CODI_COLO_SUBGRUPO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 48
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
      Caption = 'Subgrupo de color:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_COLO_SUBGRUPO'
      Field = 'NOMB_COLO_SUBGRUPO'
    end
    object SCLDBLabel3: TSCLDBLabel
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
      FocusControl = Look_grupo
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grupo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Layout = tlTop
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_COLO_GRUPO'
      Field = 'CONS_COLO_GRUPO'
    end
    object DBCodigo: TdxDBEdit
      Left = 112
      Top = 8
      Width = 97
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_COLO_SUBGRUPO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBDescripcion: TdxDBEdit
      Left = 112
      Top = 48
      Width = 193
      TabOrder = 2
      DataField = 'NOMB_COLO_SUBGRUPO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object Look_grupo: TPCPLookUpComboEdit
      Left = 112
      Top = 28
      Width = 193
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_COLO_GRUPO'
      DataSource = data_ventana
      KeyField = 'CONS_COLO_GRUPO'
      ListField = 'NOMB_COLO_GRUPO'
      ListSource = DataQ_grup_colores
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 346
    inherited padr_beve_1: TBevel
      Width = 340
    end
    inherited padr_sepa_new: TShape
      Width = 340
    end
  end
  inherited padr_pane_info: TPanel
    Top = 196
    Width = 346
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
    Top = 188
    Width = 346
    inherited padr_beve_abajo: TBevel
      Width = 340
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 346
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_COLO_SUBGRUPOS'
    object Tabla_VentanaCONS_COLO_SUBGRUPO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_COLO_SUBGRUPO'
      Required = True
    end
    object Tabla_VentanaCONS_COLO_GRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'CONS_COLO_GRUPO'
      Required = True
    end
    object Tabla_VentanaCODI_COLO_SUBGRUPO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_COLO_SUBGRUPO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_COLO_SUBGRUPO: TStringField
      DisplayLabel = 'Subgrupo de Color'
      FieldName = 'NOMB_COLO_SUBGRUPO'
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
  object Que_grup_colores: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_COLO_GRUPOS'
      'WHERE CONS_COLO_GRUPO > 0'
      'ORDER BY CODI_COLO_GRUPO')
    Left = 304
    Top = 58
    object Que_grup_coloresCONS_COLO_GRUPO: TIntegerField
      DisplayLabel = 'Cons. Grupo de Color'
      FieldName = 'CONS_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.CONS_COLO_GRUPO'
    end
    object Que_grup_coloresCODI_COLO_GRUPO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.CODI_COLO_GRUPO'
      Size = 12
    end
    object Que_grup_coloresNOMB_COLO_GRUPO: TStringField
      DisplayLabel = 'Grupo de Color'
      FieldName = 'NOMB_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.NOMB_COLO_GRUPO'
      Size = 60
    end
    object Que_grup_coloresFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.FECH_SISTEMA'
    end
    object Que_grup_coloresUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.USUA_SISTEMA'
    end
  end
  object DataQ_grup_colores: TDataSource
    AutoEdit = False
    DataSet = Que_grup_colores
    Left = 272
    Top = 54
  end
end

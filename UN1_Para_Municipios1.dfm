inherited FN1_Para_Municipios1: TFN1_Para_Municipios1
  Left = 289
  Top = 208
  Width = 396
  Height = 250
  ActiveControl = DBCodigo
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 388
  end
  inherited padr_shap_xp_down: TShape
    Top = 222
    Width = 388
  end
  object SCLDBLabel1: TSCLDBLabel [2]
    Left = 10
    Top = 84
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
    Top = 104
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
    FocusControl = CBDepartamento
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
    DataField = 'CONS_DEPARTAMENTO'
    Field = 'CONS_DEPARTAMENTO'
  end
  object SCLDBLabel3: TSCLDBLabel [4]
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
    DataField = 'CODI_CIUDAD'
    Field = 'CODI_CIUDAD'
  end
  object SCLDBLabel4: TSCLDBLabel [5]
    Left = 10
    Top = 132
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
    Caption = 'Municipio/ciudad'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_CIUDAD'
    Field = 'NOMB_CIUDAD'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 388
  end
  inherited padr_pane_arriba: TPanel
    Width = 388
    TabOrder = 8
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 388
    TabOrder = 6
    inherited padr_beve_1: TBevel
      Width = 382
    end
    inherited padr_sepa_new: TShape
      Width = 382
    end
  end
  inherited padr_pane_info: TPanel
    Top = 221
    Width = 388
    TabOrder = 9
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 152
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 176
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 152
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 176
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 213
    Width = 388
    inherited padr_beve_abajo: TBevel
      Width = 382
    end
  end
  object DBCodigo: TdxDBEdit [11]
    Left = 112
    Top = 56
    Width = 97
    TabOrder = 0
    DataField = 'CODI_CIUDAD'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBDescripcion: TdxDBEdit [12]
    Left = 112
    Top = 132
    Width = 229
    TabOrder = 3
    DataField = 'NOMB_CIUDAD'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object CBDepartamento: TPCPLookUpComboEdit [13]
    Left = 112
    Top = 104
    Width = 229
    Height = 21
    DropDownCount = 8
    DisplayAllFields = True
    Ctl3D = False
    DataField = 'CONS_DEPARTAMENTO'
    DataSource = data_ventana
    KeyField = 'cons_departamento'
    ListField = 'nomb_departamento'
    ListSource = data_departamentos
    ParentCtl3D = False
    TabOrder = 2
    DirectInput = False
  end
  object CBPaises: TPCPLookUpComboEdit [14]
    Left = 112
    Top = 84
    Width = 229
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CONS_PAIS'
    DataSource = data_ventana
    KeyField = 'cons_pais'
    ListField = 'nomb_pais'
    ListSource = data_paises
    ParentCtl3D = False
    TabOrder = 1
    OnChange = CBPaisesChange
    DirectInput = False
  end
  inherited padr_pane_principal: TPanel
    Width = 388
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_CIUDADES'
    object Tabla_VentanaCONS_PAIS: TIntegerField
      FieldName = 'CONS_PAIS'
      Required = True
    end
    object Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
      Required = True
    end
    object Tabla_VentanaCONS_CIUDAD: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_CIUDAD'
      Required = True
    end
    object Tabla_VentanaCODI_CIUDAD: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_CIUDAD'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_CIUDAD: TStringField
      DisplayLabel = 'Municipio/Ciudad'
      FieldName = 'NOMB_CIUDAD'
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
  object data_departamentos: TDataSource
    AutoEdit = False
    DataSet = quer_departamentos
    Left = 48
    Top = 112
  end
  object data_paises: TDataSource
    DataSet = quer_paises
    Left = 48
    Top = 80
  end
  object quer_paises: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_pais, nomb_pais'
      'from glo_paises'
      'order by nomb_pais')
    Left = 16
    Top = 80
    object quer_paisesCONS_PAIS: TIntegerField
      FieldName = 'CONS_PAIS'
    end
    object quer_paisesNOMB_PAIS: TStringField
      FieldName = 'NOMB_PAIS'
      Size = 60
    end
  end
  object quer_departamentos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_paises
    SQL.Strings = (
      'Select cons_departamento, nomb_departamento'
      'from glo_departamentos'
      'where cons_pais = :cons_pais'
      'order by nomb_departamento')
    Left = 16
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PAIS'
        ParamType = ptInput
      end>
    object quer_departamentosCONS_DEPARTAMENTO: TIntegerField
      FieldName = 'CONS_DEPARTAMENTO'
    end
    object quer_departamentosNOMB_DEPARTAMENTO: TStringField
      FieldName = 'NOMB_DEPARTAMENTO'
      Size = 60
    end
  end
end

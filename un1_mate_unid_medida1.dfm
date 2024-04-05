inherited fn1_mate_unid_medida1: Tfn1_mate_unid_medida1
  ActiveControl = dxDBEdit1
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_info: TPanel
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
  end
  object Panel1: TPanel [6]
    Left = 0
    Top = 54
    Width = 615
    Height = 83
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
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_UNID_MEDIDA'
      Field = 'CODI_UNID_MEDIDA'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 32
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Unidad de medida:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_UNID_MEDIDA'
      Field = 'NOMB_UNID_MEDIDA'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 56
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
      FocusControl = PCPLookUpComboEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo de unidad:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_TIPO_UNID_MEDIDA'
      Field = 'CONS_TIPO_UNID_MEDIDA'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 8
      Width = 121
      TabOrder = 0
      DataField = 'CODI_UNID_MEDIDA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 32
      Width = 185
      TabOrder = 1
      DataField = 'NOMB_UNID_MEDIDA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 112
      Top = 56
      Width = 185
      Height = 21
      DropDownCount = 8
      DataField = 'CONS_TIPO_UNID_MEDIDA'
      DataSource = data_ventana
      KeyField = 'cons_tipo_unid_medida'
      ListField = 'nomb_tipo_unid_medida'
      ListSource = data_tipo_unid_medida
      TabOrder = 2
      DirectInput = False
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_INVE_UNIDADES'
    object Tabla_VentanaCONS_UNID_MEDIDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_UNID_MEDIDA'
      Required = True
    end
    object Tabla_VentanaCONS_TIPO_UNID_MEDIDA: TIntegerField
      DisplayLabel = 'Tipo de unidad'
      FieldName = 'CONS_TIPO_UNID_MEDIDA'
      Required = True
    end
    object Tabla_VentanaCODI_UNID_MEDIDA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_UNID_MEDIDA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_UNID_MEDIDA: TStringField
      DisplayLabel = 'Unidad de medida'
      FieldName = 'NOMB_UNID_MEDIDA'
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
  object quer_tipo_unid_medida: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'select cons_tipo_unid_medida, nomb_tipo_unid_medida'
      'from sis_tipo_unid_medida'
      'order by nomb_tipo_unid_medida')
    Left = 376
    Top = 78
    object quer_tipo_unid_medidaCONS_TIPO_UNID_MEDIDA: TIntegerField
      FieldName = 'CONS_TIPO_UNID_MEDIDA'
    end
    object quer_tipo_unid_medidaNOMB_TIPO_UNID_MEDIDA: TStringField
      FieldName = 'NOMB_TIPO_UNID_MEDIDA'
      Size = 60
    end
  end
  object data_tipo_unid_medida: TDataSource
    DataSet = quer_tipo_unid_medida
    Left = 408
    Top = 78
  end
end

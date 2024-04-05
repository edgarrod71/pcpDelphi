inherited fn1_refe_entrepiernas1: Tfn1_refe_entrepiernas1
  OldCreateOrder = True
  Position = poDefault
  Visible = True
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
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object Panel1: TPanel [6]
    Left = 0
    Top = 54
    Width = 557
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 8
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
      Caption = 'Código:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_COLOR'
      Field = 'CODI_COLOR'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 28
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Entrepierna:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_COLOR'
      Field = 'NOMB_COLOR'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 8
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_COLOR'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 28
      Width = 201
      TabOrder = 1
      DataField = 'NOMB_COLOR'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inherited Tabla_Ventana: TTable
    Filter = 'es_entrepierna = 1'
    Filtered = True
    TableName = 'GLO_COLORES'
    object Tabla_VentanaCONS_COLOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_COLOR'
      Required = True
    end
    object Tabla_VentanaCONS_COLO_GRUPO: TIntegerField
      FieldName = 'CONS_COLO_GRUPO'
      Required = True
    end
    object Tabla_VentanaCONS_COLO_SUBGRUPO: TIntegerField
      FieldName = 'CONS_COLO_SUBGRUPO'
      Required = True
    end
    object Tabla_VentanaCONS_COLO_TONO: TIntegerField
      FieldName = 'CONS_COLO_TONO'
      Required = True
    end
    object Tabla_VentanaCODI_COLOR: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_COLOR'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_COLOR: TStringField
      DisplayLabel = 'Entrepierna'
      FieldName = 'NOMB_COLOR'
      Required = True
      Size = 60
    end
    object Tabla_VentanaROJO: TIntegerField
      FieldName = 'ROJO'
    end
    object Tabla_VentanaVERDE: TIntegerField
      FieldName = 'VERDE'
    end
    object Tabla_VentanaAZUL: TIntegerField
      FieldName = 'AZUL'
    end
    object Tabla_VentanaMUES_COLOR: TIntegerField
      FieldName = 'MUES_COLOR'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaES_ENTREPIERNA: TIntegerField
      FieldName = 'ES_ENTREPIERNA'
    end
  end
end

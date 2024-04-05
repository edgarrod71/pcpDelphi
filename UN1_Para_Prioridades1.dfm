inherited FN1_Para_Prioridades1: TFN1_Para_Prioridades1
  Left = 285
  Top = 199
  ActiveControl = DBCodigo
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 32
    Top = 64
    Width = 100
    Height = 21
    Alive = False
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
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PRIORIDAD'
    Field = 'CODI_PRIORIDAD'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 32
    Top = 84
    Width = 100
    Height = 21
    Alive = False
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
    Caption = 'Prioridad:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_PRIORIDAD'
    Field = 'NOMB_PRIORIDAD'
  end
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
  object DBCodigo: TdxDBEdit [8]
    Left = 134
    Top = 64
    Width = 91
    TabOrder = 6
    DataField = 'CODI_PRIORIDAD'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBEdit1: TdxDBEdit [9]
    Left = 134
    Top = 84
    Width = 251
    TabOrder = 7
    DataField = 'NOMB_PRIORIDAD'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_PRIORIDADES'
    object Tabla_VentanaCONS_PRIORIDAD: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons. Prioridad'
      FieldName = 'CONS_PRIORIDAD'
      Required = True
    end
    object Tabla_VentanaCODI_PRIORIDAD: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PRIORIDAD'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PRIORIDAD: TStringField
      DisplayLabel = 'Prioridad'
      FieldName = 'NOMB_PRIORIDAD'
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

inherited FN1_Para_Firmas1: TFN1_Para_Firmas1
  Left = 282
  Top = 196
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
    Caption = 'C�digo:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_FIRMA'
    Field = 'CODI_FIRMA'
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
    Caption = 'Firma:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_FIRMA'
    Field = 'NOMB_FIRMA'
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
    DataField = 'CODI_FIRMA'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBEdit1: TdxDBEdit [9]
    Left = 134
    Top = 84
    Width = 251
    TabOrder = 7
    DataField = 'NOMB_FIRMA'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_FIRMAS'
    object Tabla_VentanaCONS_FIRMA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons. Firma'
      FieldName = 'CONS_FIRMA'
      Required = True
    end
    object Tabla_VentanaCODI_FIRMA: TStringField
      DisplayLabel = 'C�digo'
      FieldName = 'CODI_FIRMA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_FIRMA: TStringField
      DisplayLabel = 'Firma'
      FieldName = 'NOMB_FIRMA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Creaci�n'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario Creaci�n'
      FieldName = 'USUA_SISTEMA'
    end
  end
end

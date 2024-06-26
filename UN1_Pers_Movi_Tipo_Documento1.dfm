inherited FN1_Pers_Movi_Tipo_Documento1: TFN1_Pers_Movi_Tipo_Documento1
  Left = 244
  Top = 229
  ActiveControl = DBCodigo
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 10
    Top = 64
    Width = 105
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
    Caption = 'C�digo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERS_MOVI_TIPO_DOCUMENTO'
    Field = 'CODI_PERS_MOVI_TIPO_DOCUMENTO'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 10
    Top = 84
    Width = 105
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
    Caption = 'Tipo de Documento:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
    Field = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
  end
  inherited padr_shap_xp_up: TShape
    Width = 541
  end
  inherited padr_shap_xp_down: TShape
    Top = 208
    Width = 541
  end
  object SCLDBLabel15: TSCLDBLabel [4]
    Left = 15
    Top = 112
    Width = 100
    Height = 105
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = edit_observaciones
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Observaciones'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'USO'
    Field = 'USO'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 541
  end
  inherited padr_pane_arriba: TPanel
    Width = 541
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 541
    inherited padr_sepa_new: TShape
      Width = 535
    end
  end
  inherited padr_pane_info: TPanel
    Top = 207
    Width = 541
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
  object DBCodigo: TdxDBEdit [9]
    Left = 117
    Top = 64
    Width = 124
    TabOrder = 6
    CharCase = ecUpperCase
    DataField = 'CODI_PERS_MOVI_TIPO_DOCUMENTO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBDescripcion: TdxDBEdit [10]
    Left = 117
    Top = 84
    Width = 252
    TabOrder = 7
    DataField = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  inherited pane_beve_abajo: TPanel
    Top = 209
    Width = 541
    inherited padr_beve_abajo: TBevel
      Width = 535
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 541
  end
  object edit_observaciones: TdxDBMemo [13]
    Left = 117
    Top = 112
    Width = 348
    TabOrder = 8
    DataField = 'USO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    Height = 105
    StoredValues = 64
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_PERS_MOVI_TIPO_DOCUMENTO'
    object Tabla_VentanaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Required = True
    end
    object Tabla_VentanaCODI_PERS_MOVI_TIPO_DOCUMENTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C�digo'
      FieldName = 'CODI_PERS_MOVI_TIPO_DOCUMENTO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PERS_MOVI_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaUSO: TStringField
      FieldName = 'USO'
      Size = 240
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

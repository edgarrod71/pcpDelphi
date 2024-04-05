inherited FN1_Para_Tipo_Contrato1: TFN1_Para_Tipo_Contrato1
  Left = 238
  Top = 227
  Width = 455
  Height = 264
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 10
    Top = 72
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
    Caption = 'Código'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_PERS_TIPO_CONTRATO'
    Field = 'CODI_PERS_TIPO_CONTRATO'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 10
    Top = 92
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
    Caption = 'Tipo de Contrato'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_PERS_TIPO_CONTRATO'
    Field = 'NOMB_PERS_TIPO_CONTRATO'
  end
  object SCLDBLabel4: TSCLDBLabel [2]
    Left = 24
    Top = 140
    Width = 86
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
    FocusControl = PCPLookUpComboEdit1
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Tiempo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_UNID_MEDI_TIEMPO'
    Field = 'CONS_UNID_MEDI_TIEMPO'
  end
  object SCLDBLabel3: TSCLDBLabel [3]
    Left = 10
    Top = 120
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
    FocusControl = dxDBEdit3
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Duración:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'DURACION'
    Field = 'DURACION'
  end
  inherited padr_shap_xp_up: TShape
    Width = 447
  end
  inherited padr_shap_xp_down: TShape
    Top = 236
    Width = 447
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 447
  end
  inherited padr_pane_arriba: TPanel
    Width = 447
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 447
    inherited padr_beve_1: TBevel
      Width = 441
    end
    inherited padr_sepa_new: TShape
      Width = 441
    end
  end
  inherited padr_pane_info: TPanel
    Top = 235
    Width = 447
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 160
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 182
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 160
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 182
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object dxDBEdit1: TdxDBEdit [10]
    Left = 112
    Top = 72
    Width = 89
    TabOrder = 5
    DataField = 'CODI_PERS_TIPO_CONTRATO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object dxDBEdit2: TdxDBEdit [11]
    Left = 112
    Top = 92
    Width = 241
    TabOrder = 6
    DataField = 'NOMB_PERS_TIPO_CONTRATO'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  object PCPLookUpComboEdit1: TPCPLookUpComboEdit [12]
    Left = 112
    Top = 140
    Width = 145
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CONS_UNID_MEDI_TIEMPO'
    DataSource = data_ventana
    KeyField = 'CONS_UNID_MEDI_TIEMPO'
    ListField = 'NOMB_UNID_MEDI_TIEMPO'
    ListSource = DSUnidad_Tiempo
    ParentCtl3D = False
    TabOrder = 8
    DirectInput = False
  end
  object SCLButton1: TTBXButtonSCL [13]
    Left = 261
    Top = 140
    Width = 21
    Height = 20
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    Enabled = False
    ImageIndex = 0
    Images = Imagenes_Botones_Pequenos
    SmartFocus = False
    TabOrder = 9
    TabStop = False
  end
  object dxDBEdit3: TdxDBEdit [14]
    Left = 112
    Top = 120
    Width = 89
    TabOrder = 7
    DataField = 'DURACION'
    DataSource = data_ventana
    ReadOnly = False
    StyleController = padr_estilo
    StoredValues = 64
  end
  inherited pane_beve_abajo: TPanel
    Top = 227
    Width = 447
    inherited padr_beve_abajo: TBevel
      Width = 441
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 447
    TabOrder = 10
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_PERS_TIPO_CONTRATO'
    object Tabla_VentanaCONS_PERS_TIPO_CONTRATO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
      Required = True
    end
    object Tabla_VentanaCODI_PERS_TIPO_CONTRATO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERS_TIPO_CONTRATO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PERS_TIPO_CONTRATO: TStringField
      DisplayLabel = 'Tipo de contrato'
      FieldName = 'NOMB_PERS_TIPO_CONTRATO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaCONS_UNID_MEDI_TIEMPO: TIntegerField
      DisplayLabel = 'Tiempo'
      FieldName = 'CONS_UNID_MEDI_TIEMPO'
      Required = True
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
    object Tabla_VentanaDURACION: TFloatField
      DisplayLabel = 'Duración'
      FieldName = 'DURACION'
      Required = True
    end
  end
  object DSUnidad_Tiempo: TDataSource
    AutoEdit = False
    DataSet = TUnidad_Tiempo
    Left = 376
    Top = 64
  end
  object TUnidad_Tiempo: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_UNID_MEDI_TIEMPO'
    Left = 344
    Top = 64
  end
end

inherited FN1_Para_Sub_Improductivos1: TFN1_Para_Sub_Improductivos1
  Left = 292
  Top = 200
  Width = 499
  Height = 398
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 491
  end
  inherited padr_shap_xp_down: TShape
    Top = 370
    Width = 491
  end
  object SCLDBLabel1: TSCLDBLabel [2]
    Left = 10
    Top = 57
    Width = 160
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
    FocusControl = CBCodigo
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Código Improductivo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_IMPRODUCTIVO'
    Field = 'CONS_IMPRODUCTIVO'
  end
  object SCLDBLabel2: TSCLDBLabel [3]
    Left = 10
    Top = 77
    Width = 160
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
    FocusControl = CBImproductivo
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Improductivo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_IMPRODUCTIVO'
    Field = 'CONS_IMPRODUCTIVO'
  end
  object SCLDBLabel3: TSCLDBLabel [4]
    Left = 10
    Top = 108
    Width = 160
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
    Caption = 'Código Sub Improductivo'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_SUB_IMPRODUCTIVO'
    Field = 'CODI_SUB_IMPRODUCTIVO'
  end
  object SCLDBLabel4: TSCLDBLabel [5]
    Left = 10
    Top = 128
    Width = 160
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
    FocusControl = DBSub_Improductivo
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Sub Improductivo'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_SUB_IMPRODUCTIVO'
    Field = 'NOMB_SUB_IMPRODUCTIVO'
  end
  object SCLDBLabel7: TSCLDBLabel [6]
    Left = 10
    Top = 248
    Width = 160
    Height = 81
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
    Caption = 'Descripción:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'DESCRIPCION'
    Field = 'DESCRIPCION'
  end
  object SCLDBLabel5: TSCLDBLabel [7]
    Left = 70
    Top = 156
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
    FocusControl = dxDBCurrencyEdit1
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Porcentaje:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'porcentaje'
    Field = 'porcentaje'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 491
  end
  inherited padr_pane_arriba: TPanel
    Width = 491
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 491
    inherited padr_sepa_new: TShape
      Width = 485
    end
  end
  inherited padr_pane_info: TPanel
    Top = 369
    Width = 491
    inherited _LFecha_Creacion: TSCLDBLabel
      Left = 37
      Top = 254
    end
    inherited _LUsuario: TSCLDBLabel
      Left = 37
      Top = 276
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Left = 139
      Top = 254
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Left = 139
      Top = 276
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 361
    Width = 491
    inherited padr_beve_abajo: TBevel
      Width = 485
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 491
  end
  object CBCodigo: TPCPLookUpComboEdit [14]
    Left = 172
    Top = 57
    Width = 121
    Height = 21
    DropDownCount = 8
    Ctl3D = True
    DataField = 'CONS_IMPRODUCTIVO'
    DataSource = data_ventana
    KeyField = 'CONS_IMPRODUCTIVO'
    ListField = 'CODI_IMPRODUCTIVO'
    ListSource = DSImproductivos
    ParentCtl3D = False
    TabOrder = 15
    DirectInput = False
  end
  object DBCodigo: TdxDBEdit [15]
    Left = 172
    Top = 108
    Width = 121
    TabOrder = 7
    CharCase = ecUpperCase
    DataField = 'CODI_SUB_IMPRODUCTIVO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBSub_Improductivo: TdxDBEdit [16]
    Left = 172
    Top = 128
    Width = 254
    TabOrder = 8
    DataField = 'NOMB_SUB_IMPRODUCTIVO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBCheckEdit1: TdxDBCheckEdit [17]
    Left = 172
    Top = 176
    Width = 254
    TabOrder = 10
    Caption = 'Activo'
    DataField = 'ACTIVO'
    DataSource = data_ventana
    StyleController = padr_estilo
    ValueChecked = '1'
    ValueGrayed = '-1'
    ValueUnchecked = '-1'
  end
  object DBDescripcion: TdxDBMemo [18]
    Left = 172
    Top = 248
    Width = 254
    TabOrder = 11
    DataField = 'DESCRIPCION'
    DataSource = data_ventana
    StyleController = padr_estilo
    Height = 81
  end
  object SCLButton1: TTBXButtonSCL [19]
    Left = 428
    Top = 80
    Width = 21
    Height = 20
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    Enabled = False
    ImageIndex = 0
    Images = Imagenes_Botones_Pequenos
    ParentShowHint = False
    ShowHint = True
    SmartFocus = False
    TabOrder = 12
    TabStop = False
  end
  object dxDBCheckEdit2: TdxDBCheckEdit [20]
    Left = 172
    Top = 216
    Width = 254
    TabOrder = 14
    Caption = 'Descontable en el incentivo'
    DataField = 'DESC_INCENTIVOS'
    DataSource = data_ventana
    StyleController = padr_estilo
    ValueChecked = '1'
    ValueGrayed = '-1'
    ValueUnchecked = '-1'
  end
  object dxDBCheckEdit3: TdxDBCheckEdit [21]
    Left = 172
    Top = 196
    Width = 254
    TabOrder = 13
    Caption = 'Descontable en la eficiencia'
    DataField = 'DESC_EFICIENCIA'
    DataSource = data_ventana
    StyleController = padr_estilo
    ValueChecked = '1'
    ValueGrayed = '-1'
    ValueUnchecked = '-1'
  end
  object CBImproductivo: TPCPLookUpComboEdit [22]
    Left = 172
    Top = 77
    Width = 254
    Height = 21
    DropDownCount = 8
    Ctl3D = True
    DataField = 'CONS_IMPRODUCTIVO'
    DataSource = data_ventana
    KeyField = 'CONS_IMPRODUCTIVO'
    ListField = 'NOMB_IMPRODUCTIVO'
    ListSource = DSImproductivos
    ParentCtl3D = False
    TabOrder = 6
    DirectInput = False
  end
  object dxDBCurrencyEdit1: TdxDBCurrencyEdit [23]
    Left = 172
    Top = 156
    Width = 73
    TabOrder = 9
    Alignment = taRightJustify
    DataField = 'porcentaje'
    DataSource = data_ventana
    StyleController = padr_estilo
    DisplayFormat = ',0.00 %'
    Nullable = False
    StoredValues = 1
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_SUB_IMPRODUCTIVOS'
    object Tabla_VentanaCONS_SUB_IMPRODUCTIVO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_SUB_IMPRODUCTIVO'
      Required = True
    end
    object Tabla_VentanaCONS_IMPRODUCTIVO: TIntegerField
      FieldName = 'CONS_IMPRODUCTIVO'
      Required = True
    end
    object Tabla_VentanaCODI_SUB_IMPRODUCTIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_SUB_IMPRODUCTIVO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_SUB_IMPRODUCTIVO: TStringField
      DisplayLabel = 'Sub Improductivo'
      FieldName = 'NOMB_SUB_IMPRODUCTIVO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Size = 240
    end
    object Tabla_VentanaDESC_INCENTIVOS: TIntegerField
      DisplayLabel = 'Descontable en el incentivo'
      FieldName = 'DESC_INCENTIVOS'
    end
    object Tabla_VentanaDESC_EFICIENCIA: TIntegerField
      DisplayLabel = 'Descontable en la eficiencia'
      FieldName = 'DESC_EFICIENCIA'
    end
    object Tabla_VentanaPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
    end
    object Tabla_VentanaACTIVO: TIntegerField
      FieldName = 'ACTIVO'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object TImproductivos: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_IMPRODUCTIVOS'
    Left = 640
    Top = 72
  end
  object DSImproductivos: TDataSource
    AutoEdit = False
    DataSet = TImproductivos
    Left = 664
    Top = 72
  end
end

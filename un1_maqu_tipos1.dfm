inherited fn1_maqu_tipos1: Tfn1_maqu_tipos1
  Left = 230
  Top = 126
  Width = 621
  Height = 393
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 42
    Top = 67
    Width = 116
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
    Caption = 'Código:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_RECU_TIPO'
    Field = 'CODI_RECU_TIPO'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 32
    Top = 87
    Width = 126
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
    Caption = 'Sub - Grupo de recurso:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_RECU_TIPO'
    Field = 'NOMB_RECU_TIPO'
  end
  object SCLDBLabel3: TSCLDBLabel [2]
    Left = 42
    Top = 141
    Width = 116
    Height = 68
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = dxDBMemo1
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Observaciones:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CARACTERISTICAS'
    Field = 'CARACTERISTICAS'
  end
  object SCLDBLabel4: TSCLDBLabel [3]
    Left = 42
    Top = 107
    Width = 116
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
    FocusControl = CBGrupos
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Grupo de recurso:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_RECU_GRUPO'
    Field = 'CONS_RECU_GRUPO'
  end
  inherited padr_shap_xp_up: TShape
    Width = 613
  end
  inherited padr_shap_xp_down: TShape
    Top = 365
    Width = 613
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 613
  end
  inherited padr_pane_arriba: TPanel
    Width = 613
    TabOrder = 7
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 613
    TabOrder = 8
    inherited padr_beve_1: TBevel
      Width = 413
    end
    inherited padr_sepa_new: TShape
      Width = 607
    end
  end
  inherited padr_pane_info: TPanel
    Top = 364
    Width = 613
    TabOrder = 10
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 235
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 257
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 235
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 257
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object dxDBEdit1: TdxDBEdit [10]
    Left = 160
    Top = 67
    Width = 121
    TabOrder = 0
    DataField = 'CODI_RECU_TIPO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBEdit2: TdxDBEdit [11]
    Left = 160
    Top = 87
    Width = 185
    TabOrder = 1
    DataField = 'NOMB_RECU_TIPO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBMemo1: TdxDBMemo [12]
    Left = 160
    Top = 141
    Width = 441
    TabOrder = 3
    DataField = 'CARACTERISTICAS'
    DataSource = data_ventana
    StyleController = padr_estilo
    Height = 68
  end
  object CBGrupos: TPCPLookUpComboEdit [13]
    Left = 160
    Top = 107
    Width = 229
    Height = 21
    DropDownCount = 8
    Ctl3D = True
    DataField = 'CONS_RECU_GRUPO'
    DataSource = data_ventana
    KeyField = 'CONS_RECU_GRUPO'
    ListField = 'NOMB_RECU_GRUPO'
    ListSource = DSQGrupos
    ParentCtl3D = False
    TabOrder = 2
    DirectInput = False
  end
  object SCLButton1: TTBXButtonSCL [14]
    Left = 393
    Top = 109
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
  inherited pane_beve_abajo: TPanel
    Top = 356
    Width = 613
    inherited padr_beve_abajo: TBevel
      Width = 607
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 613
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_RECU_TIPOS'
    object Tabla_VentanaCONS_RECU_TIPO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_RECU_TIPO'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'Grupo de Recurso'
      FieldName = 'CONS_RECU_GRUPO'
      Required = True
    end
    object Tabla_VentanaCODI_RECU_TIPO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECU_TIPO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_RECU_TIPO: TStringField
      DisplayLabel = 'Sub - Grupo de Recurso'
      FieldName = 'NOMB_RECU_TIPO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaCARACTERISTICAS: TStringField
      DisplayLabel = 'Caracteristicas'
      FieldName = 'CARACTERISTICAS'
      Size = 240
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
  object DSQGrupos: TDataSource
    AutoEdit = False
    DataSet = QGrupos
    Left = 336
    Top = 56
  end
  object QGrupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_GRUPOS'
      'ORDER BY NOMB_RECU_GRUPO')
    Left = 304
    Top = 56
  end
end

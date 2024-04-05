inherited fn1_maqu_tipo_movimiento1: Tfn1_maqu_tipo_movimiento1
  Left = 264
  Top = 208
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 10
    Top = 60
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
    Caption = 'Código:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CODI_RECU_TIPO_MOVIMIENTO'
    Field = 'CODI_RECU_TIPO_MOVIMIENTO'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 10
    Top = 80
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
    FocusControl = PCPLookUpComboEdit1
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Familia:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_FAMI_MOVIMIENTO'
    Field = 'CONS_FAMI_MOVIMIENTO'
  end
  object SCLDBLabel3: TSCLDBLabel [2]
    Left = 0
    Top = 100
    Width = 110
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
    Caption = 'Tipo de movimiento:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'NOMB_RECU_TIPO_MOVIMIENTO'
    Field = 'NOMB_RECU_TIPO_MOVIMIENTO'
  end
  object SCLDBLabel4: TSCLDBLabel [3]
    Left = 10
    Top = 126
    Width = 100
    Height = 86
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
    DataField = 'OBSERVACIONES'
    Field = 'OBSERVACIONES'
  end
  inherited padr_shap_xp_up: TShape
    Width = 541
  end
  inherited padr_shap_xp_down: TShape
    Top = 203
    Width = 541
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
    Top = 202
    Width = 541
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 223
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 245
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 223
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 245
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object dxDBEdit1: TdxDBEdit [10]
    Left = 112
    Top = 60
    Width = 121
    TabOrder = 5
    DataField = 'CODI_RECU_TIPO_MOVIMIENTO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object PCPLookUpComboEdit1: TPCPLookUpComboEdit [11]
    Left = 112
    Top = 80
    Width = 185
    Height = 21
    DropDownCount = 8
    Ctl3D = True
    DataField = 'CONS_FAMI_MOVIMIENTO'
    DataSource = data_ventana
    KeyField = 'CONS_FAMI_MOVIMIENTO'
    ListField = 'NOMB_FAMI_MOVIMIENTO'
    ListSource = DSMovimientos
    ParentCtl3D = False
    TabOrder = 6
    DirectInput = False
  end
  object dxDBEdit2: TdxDBEdit [12]
    Left = 112
    Top = 100
    Width = 185
    TabOrder = 7
    DataField = 'NOMB_RECU_TIPO_MOVIMIENTO'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object dxDBMemo1: TdxDBMemo [13]
    Left = 112
    Top = 126
    Width = 353
    TabOrder = 8
    DataField = 'OBSERVACIONES'
    DataSource = data_ventana
    StyleController = padr_estilo
    Height = 86
  end
  inherited pane_beve_abajo: TPanel
    Top = 204
    Width = 541
    inherited padr_beve_abajo: TBevel
      Width = 535
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 541
    TabOrder = 9
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_RECU_TIPO_MOVIMIENTO'
    object Tabla_VentanaCONS_RECU_TIPO_MOVIMIENTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No. Tipo Movimiento'
      FieldName = 'CONS_RECU_TIPO_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCONS_FAMI_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Familia'
      FieldName = 'CONS_FAMI_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCODI_RECU_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECU_TIPO_MOVIMIENTO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_RECU_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Tipo de Movimiento'
      FieldName = 'NOMB_RECU_TIPO_MOVIMIENTO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
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
  object TMovimientos: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_FAMI_MOVIMIENTO'
    Left = 384
    Top = 64
  end
  object DSMovimientos: TDataSource
    AutoEdit = False
    DataSet = TMovimientos
    Left = 416
    Top = 64
  end
end

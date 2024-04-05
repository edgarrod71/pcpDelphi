inherited fn1_meto_procesos1: Tfn1_meto_procesos1
  Left = 72
  Top = 115
  Width = 822
  Height = 497
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 814
  end
  inherited padr_shap_xp_down: TShape
    Top = 469
    Width = 814
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 814
  end
  inherited padr_pane_arriba: TPanel
    Width = 814
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 814
    inherited padr_sepa_new: TShape
      Width = 808
    end
  end
  inherited padr_pane_info: TPanel
    Top = 460
    Width = 814
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
    Width = 814
    Height = 146
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 21
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
      DataField = 'CODI_PROCESO'
      Field = 'CODI_PROCESO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 21
      Top = 28
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
      Caption = 'Proceso:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_PROCESO'
      Field = 'NOMB_PROCESO'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 21
      Top = 70
      Width = 100
      Height = 73
      Alive = True
      ColorActive = clBtnFace
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
    object SCLDBLabel7: TSCLDBLabel
      Left = 22
      Top = 49
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
      FocusControl = PCPLookUpComboEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Grupo:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_GRUP_PROCESO'
      Field = 'CONS_GRUP_PROCESO'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 123
      Top = 8
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_PROCESO'
      DataSource = data_ventana
      MaxLength = 2
      StyleController = padr_estilo
      StoredValues = 2
    end
    object dxDBEdit2: TdxDBEdit
      Left = 123
      Top = 28
      Width = 185
      TabOrder = 1
      DataField = 'NOMB_PROCESO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBMemo1: TdxDBMemo
      Left = 123
      Top = 70
      Width = 369
      TabOrder = 2
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 73
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 124
      Top = 49
      Width = 185
      Height = 21
      DropDownCount = 8
      DataField = 'CONS_GRUP_PROCESO'
      DataSource = data_ventana
      KeyField = 'CONS_GRUP_PROCESO'
      ListField = 'NOMB_GRUP_PROCESO'
      ListSource = DSQGrupos
      TabOrder = 3
      DirectInput = False
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 461
    Width = 814
    inherited padr_beve_abajo: TBevel
      Width = 808
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 814
  end
  object fram_info_general: TPCPFrame [9]
    Tag = 82
    Left = 0
    Top = 200
    Width = 814
    Height = 82
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Caption = 'Información general'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object SCLDBLabel6: TSCLDBLabel
      Left = 22
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
      FocusControl = comb_responsable
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Responsable:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBCheckEdit1: TdxDBCheckEdit
      Left = 404
      Top = 29
      Width = 185
      TabOrder = 1
      Caption = 'Se utiliza en análisis de métodos'
      DataField = 'ANAL_METODOS'
      DataSource = data_ventana
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueUnchecked = '-1'
      NullStyle = nsUnchecked
    end
    object chec_cont_tiquetes: TdxDBCheckEdit
      Left = 7
      Top = 48
      Width = 345
      TabOrder = 2
      Caption = 'Control por tiquetes'
      DataField = 'CONT_TIQUETES'
      DataSource = data_ventana
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueUnchecked = '-1'
      OnChange = chec_cont_tiquetesChange
      NullStyle = nsUnchecked
    end
    object chec_dura_estimada: TdxDBCheckEdit
      Left = 404
      Top = 49
      Width = 177
      TabOrder = 4
      Caption = 'Duración estimada'
      DataField = 'DURA_ESTIMADA'
      DataSource = data_ventana
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueUnchecked = '-1'
      OnChange = chec_dura_estimadaChange
      NullStyle = nsUnchecked
    end
    object edit_dura_estimada: TdxDBCurrencyEdit
      Left = 532
      Top = 49
      Width = 57
      Enabled = False
      TabOrder = 5
      Alignment = taRightJustify
      DataField = 'VALO_DURA_ESTIMADA'
      DataSource = data_ventana
      StyleController = padr_estilo
      DisplayFormat = ',0.00'
      Nullable = False
      StoredValues = 1
    end
    object comb_tipo_paqueteo: TPCPLookUpComboEdit
      Left = 124
      Top = 48
      Width = 230
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PROD_PAQU_TIPO'
      DataSource = data_ventana
      Enabled = False
      KeyField = 'cons_prod_paqu_tipo'
      ListField = 'nomb_prod_paqu_tipo'
      ListSource = data_prod_paqu_tipos
      ParentCtl3D = False
      TabOrder = 3
      DirectInput = False
    end
    object StaticText1: TStaticText
      Left = 593
      Top = 51
      Width = 23
      Height = 17
      Caption = 'dias'
      TabOrder = 7
    end
    object comb_responsable: TPCPLookUpComboEdit
      Left = 124
      Top = 28
      Width = 185
      Height = 21
      DropDownCount = 8
      DataField = 'RESPONSABLE'
      DataSource = data_ventana
      KeyField = 'user_name'
      ListField = 'user_name'
      ListSource = data_usuarios
      TabOrder = 0
      DirectInput = False
    end
  end
  object fram_plan_detallada: TPCPFrame [10]
    Tag = 112
    Left = 0
    Top = 282
    Width = 814
    Height = 112
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Caption = 'Opciones de planeación detallada'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object SCLDBLabel4: TSCLDBLabel
      Left = 5
      Top = 56
      Width = 121
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
      FocusControl = comb_punt_cont_inicial
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Punto de control incial:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 5
      Top = 76
      Width = 121
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
      FocusControl = comb_punt_cont_final
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Punto de control final:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_punt_cont_inicial: TPCPLookUpComboEdit
      Left = 128
      Top = 56
      Width = 257
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PUNT_CONT_INICIAL'
      DataSource = data_ventana
      Enabled = False
      KeyField = 'cons_punt_control'
      ListField = 'nomb_punt_control'
      ListSource = data_punt_control
      ParentCtl3D = False
      TabOrder = 0
      DirectInput = False
    end
    object comb_punt_cont_final: TPCPLookUpComboEdit
      Left = 128
      Top = 76
      Width = 257
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PUNT_CONT_FINAL'
      DataSource = data_ventana
      Enabled = False
      KeyField = 'cons_punt_control'
      ListField = 'nomb_punt_control'
      ListSource = data_punt_control
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object chec_plan_detallada: TdxDBCheckEdit
      Left = 128
      Top = 36
      Width = 257
      TabOrder = 3
      Caption = 'Se utiliza en planeación detallada de producción'
      DataField = 'PLAN_DETALLADA'
      DataSource = data_ventana
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueUnchecked = '-1'
      OnChange = chec_plan_detalladaChange
      NullStyle = nsUnchecked
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_PROCESOS'
    object Tabla_VentanaCONS_PROCESO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PROCESO'
      Required = True
    end
    object Tabla_VentanaCODI_PROCESO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_PROCESO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_PROCESO: TStringField
      DisplayLabel = 'Proceso'
      FieldName = 'NOMB_PROCESO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 250
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaREGI_SISTEMA: TIntegerField
      FieldName = 'REGI_SISTEMA'
    end
    object Tabla_VentanaCONS_PROC_SIGUIENTE: TIntegerField
      FieldName = 'CONS_PROC_SIGUIENTE'
    end
    object Tabla_VentanaRESPONSABLE: TStringField
      FieldName = 'RESPONSABLE'
    end
    object Tabla_VentanaANAL_METODOS: TIntegerField
      FieldName = 'ANAL_METODOS'
    end
    object Tabla_VentanaCONS_PROD_PAQU_TIPO: TIntegerField
      FieldName = 'CONS_PROD_PAQU_TIPO'
    end
    object Tabla_VentanaCONT_TIQUETES: TIntegerField
      FieldName = 'CONT_TIQUETES'
    end
    object Tabla_VentanaPLAN_DETALLADA: TIntegerField
      FieldName = 'PLAN_DETALLADA'
    end
    object Tabla_VentanaDURA_ESTIMADA: TIntegerField
      FieldName = 'DURA_ESTIMADA'
    end
    object Tabla_VentanaVALO_DURA_ESTIMADA: TIntegerField
      FieldName = 'VALO_DURA_ESTIMADA'
    end
    object Tabla_VentanaCONS_PUNT_CONT_INICIAL: TIntegerField
      FieldName = 'CONS_PUNT_CONT_INICIAL'
    end
    object Tabla_VentanaCONS_PUNT_CONT_FINAL: TIntegerField
      FieldName = 'CONS_PUNT_CONT_FINAL'
    end
    object Tabla_VentanaCONS_GRUP_PROCESO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'CONS_GRUP_PROCESO'
      Required = True
    end
  end
  object quer_prod_paqu_tipos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_prod_paqu_tipo, nomb_prod_paqu_tipo'
      'from pcp_prod_paqu_tipos'
      'order by nomb_prod_paqu_tipo')
    Left = 424
    Top = 61
    object quer_prod_paqu_tiposCONS_PROD_PAQU_TIPO: TIntegerField
      FieldName = 'CONS_PROD_PAQU_TIPO'
    end
    object quer_prod_paqu_tiposNOMB_PROD_PAQU_TIPO: TStringField
      FieldName = 'NOMB_PROD_PAQU_TIPO'
      Size = 60
    end
  end
  object data_prod_paqu_tipos: TDataSource
    DataSet = quer_prod_paqu_tipos
    Left = 458
    Top = 60
  end
  object quer_punt_control: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_punt_control, codi_punt_control, nomb_punt_control'
      'from pcp_punt_control'
      'order by nomb_punt_control')
    Left = 424
    Top = 94
  end
  object data_punt_control: TDataSource
    DataSet = quer_punt_control
    Left = 456
    Top = 94
  end
  object data_usuarios: TDataSource
    DataSet = _fMDI.tabl_usuarios
    Left = 512
    Top = 62
  end
  object QGrupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_PCP_GRUP_PROCESOS'
      'ORDER BY NOMB_GRUP_PROCESO')
    Left = 568
    Top = 110
  end
  object DSQGrupos: TDataSource
    DataSet = QGrupos
    Left = 600
    Top = 110
  end
end

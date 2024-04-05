inherited fn1_meto_tiem_cicl_maquina1: Tfn1_meto_tiem_cicl_maquina1
  Width = 521
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 497
  end
  inherited padr_shap_xp_down: TShape
    Top = 232
    Width = 497
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 497
  end
  inherited padr_pane_arriba: TPanel
    Width = 497
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 497
    inherited padr_sepa_new: TShape
      Width = 491
    end
  end
  inherited padr_pane_info: TPanel
    Top = 231
    Width = 497
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
  inherited pane_beve_abajo: TPanel
    Top = 233
    Width = 497
    inherited padr_beve_abajo: TBevel
      Width = 491
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 497
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 497
    Height = 187
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 8
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
      DataField = 'CODI_METO_TIEM_CICLO'
      Field = 'CODI_METO_TIEM_CICLO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 8
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
      Caption = 'Nombre:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_METO_TIEM_CICLO'
      Field = 'NOMB_METO_TIEM_CICLO'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 8
      Top = 56
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
      Caption = 'Grupo recurso:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_RECU_GRUPO'
      Field = 'CONS_RECU_GRUPO'
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 8
      Top = 76
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
      FocusControl = PCPLookUpComboEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo recurso:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_RECU_TIPO'
      Field = 'CONS_RECU_TIPO'
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 8
      Top = 96
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
      FocusControl = PCPLookUpComboEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Familia recurso:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_RECU_FAMILIA'
      Field = 'CONS_RECU_FAMILIA'
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 8
      Top = 124
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
      FocusControl = edit_Tiem_asignado
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tiempo:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'TIEM_ASIGNADO'
      Field = 'TIEM_ASIGNADO'
    end
    object Label1: TLabel
      Left = 358
      Top = 127
      Width = 21
      Height = 13
      Caption = 'TMU'
    end
    object DBText1: TDBText
      Left = 179
      Top = 126
      Width = 65
      Height = 17
      DataField = 'INGE_METO_UNID_MEDIDA'
      DataSource = _fMDI.data_pcp_opciones
    end
    object dxDBEdit1: TdxDBEdit
      Left = 110
      Top = 8
      Width = 121
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_METO_TIEM_CICLO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 110
      Top = 28
      Width = 235
      TabOrder = 1
      DataField = 'NOMB_METO_TIEM_CICLO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 110
      Top = 56
      Width = 235
      Height = 21
      DropDownCount = 8
      DataField = 'CONS_RECU_GRUPO'
      DataSource = data_ventana
      KeyField = 'cons_Recu_grupo'
      ListField = 'nomb_recu_grupo'
      ListSource = data_recu_grupos
      TabOrder = 2
      DirectInput = False
    end
    object PCPLookUpComboEdit2: TPCPLookUpComboEdit
      Left = 110
      Top = 76
      Width = 235
      Height = 21
      DropDownCount = 8
      DataField = 'CONS_RECU_TIPO'
      DataSource = data_ventana
      KeyField = 'cons_Recu_tipo'
      ListField = 'nomb_recu_tipo'
      ListSource = data_recu_tipos
      TabOrder = 3
      DirectInput = False
    end
    object PCPLookUpComboEdit3: TPCPLookUpComboEdit
      Left = 110
      Top = 96
      Width = 235
      Height = 21
      DropDownCount = 8
      DataField = 'CONS_RECU_FAMILIA'
      DataSource = data_ventana
      KeyField = 'cons_Recu_familia'
      ListField = 'nomb_recu_Familia'
      ListSource = data_recu_familias
      TabOrder = 4
      DirectInput = False
    end
    object edit_Tiem_asignado: TdxDBCurrencyEdit
      Left = 110
      Top = 124
      Width = 65
      TabOrder = 5
      OnExit = edit_Tiem_asignadoChange
      Alignment = taRightJustify
      DataField = 'TIEM_ASIGNADO'
      DataSource = data_ventana
      StyleController = padr_estilo
      OnChange = edit_Tiem_asignadoChange
      DecimalPlaces = 4
      DisplayFormat = ',0.0000'
      Nullable = False
      StoredValues = 1
    end
    object edit_tiem_tmu: TdxCurrencyEditPCP
      Left = 280
      Top = 124
      Width = 65
      Enabled = False
      TabOrder = 6
      Alignment = taRightJustify
      StyleController = padr_estilo
      DecimalPlaces = 4
      DisplayFormat = ',0.0000'
      StoredValues = 1
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_METO_TIEM_CICLO'
    object Tabla_VentanaCONS_METO_TIEM_CICLO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_METO_TIEM_CICLO'
      Required = True
    end
    object Tabla_VentanaCODI_METO_TIEM_CICLO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_METO_TIEM_CICLO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_METO_TIEM_CICLO: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMB_METO_TIEM_CICLO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'CONS_RECU_GRUPO'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_TIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'CONS_RECU_TIPO'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_FAMILIA: TIntegerField
      DisplayLabel = 'Familia'
      FieldName = 'CONS_RECU_FAMILIA'
      Required = True
    end
    object Tabla_VentanaCARACTERISTICAS: TStringField
      DisplayLabel = 'Características'
      FieldName = 'CARACTERISTICAS'
      Size = 240
    end
    object Tabla_VentanaTIEM_CST: TFloatField
      DisplayLabel = 'Tiempo'
      FieldName = 'TIEM_CST'
    end
    object Tabla_VentanaTIEM_ASIGNADO: TFloatField
      DisplayLabel = 'Tiempo'
      FieldName = 'TIEM_ASIGNADO'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object quer_recu_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_recu_grupo, nomb_recu_grupo'
      'from glo_recu_grupos'
      'order by nomb_recu_grupo'
      ' ')
    Left = 409
    Top = 57
    object quer_recu_gruposCONS_RECU_GRUPO: TIntegerField
      FieldName = 'CONS_RECU_GRUPO'
    end
    object quer_recu_gruposNOMB_RECU_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_RECU_GRUPO'
      Size = 60
    end
  end
  object data_recu_grupos: TDataSource
    DataSet = quer_recu_grupos
    Left = 409
    Top = 80
  end
  object quer_recu_tipos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_recu_grupos
    SQL.Strings = (
      'Select cons_recu_grupo, cons_recu_tipo, nomb_recu_tipo'
      'from glo_recu_tipos'
      'where cons_recu_grupo = :cons_recu_grupo'
      'order by nomb_recu_tipo')
    Left = 433
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECU_GRUPO'
        ParamType = ptUnknown
      end>
    object quer_recu_tiposCONS_RECU_GRUPO: TIntegerField
      FieldName = 'CONS_RECU_GRUPO'
    end
    object quer_recu_tiposCONS_RECU_TIPO: TIntegerField
      FieldName = 'CONS_RECU_TIPO'
    end
    object quer_recu_tiposNOMB_RECU_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NOMB_RECU_TIPO'
      Size = 60
    end
  end
  object data_recu_tipos: TDataSource
    DataSet = quer_recu_tipos
    Left = 433
    Top = 80
  end
  object quer_recu_familias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_recu_tipos
    SQL.Strings = (
      'Select cons_recu_familia, nomb_recu_familia'
      'from glo_recu_familias'
      'where cons_recu_grupo = :cons_recu_grupo'
      'and cons_recu_tipo = :cons_recu_tipo'
      'order by nomb_recu_familia')
    Left = 460
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECU_GRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_RECU_TIPO'
        ParamType = ptUnknown
      end>
    object quer_recu_familiasCONS_RECU_FAMILIA: TIntegerField
      FieldName = 'CONS_RECU_FAMILIA'
    end
    object quer_recu_familiasNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_RECU_FAMILIA'
      Size = 60
    end
  end
  object data_recu_familias: TDataSource
    DataSet = quer_recu_familias
    Left = 460
    Top = 80
  end
end

inherited FN1_Pers_Poli_Maquinas1: TFN1_Pers_Poli_Maquinas1
  Left = 436
  Top = 195
  Width = 376
  Height = 214
  Caption = 'Maquinas Utilizadas'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 368
  end
  inherited padr_shap_xp_down: TShape
    Top = 178
    Width = 368
  end
  object SCLDBLabel3: TSCLDBLabel [2]
    Left = 17
    Top = 60
    Width = 89
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
    FocusControl = CBGrupo_Recurso
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvNone
    Light = lpLeftTop
    Caption = 'Grupo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_RECU_GRUPO'
    Field = 'CONS_RECU_GRUPO'
  end
  object SCLDBLabel5: TSCLDBLabel [3]
    Left = 17
    Top = 105
    Width = 89
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
    FocusControl = CBFamilia_Recurso
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvNone
    Light = lpLeftTop
    Caption = 'Familia:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_RECU_FAMILIA'
    Field = 'CONS_RECU_FAMILIA'
  end
  object SCLDBLabel4: TSCLDBLabel [4]
    Left = 17
    Top = 83
    Width = 89
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
    FocusControl = CBTipo_Recurso
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvNone
    Light = lpLeftTop
    Caption = 'Tipo:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_RECU_TIPO'
    Field = 'CONS_RECU_TIPO'
  end
  object SCLDBLabel1: TSCLDBLabel [5]
    Left = 17
    Top = 128
    Width = 89
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
    BevelOuter = bvNone
    Light = lpLeftTop
    Caption = 'Grado Habilidad:'
    Layout = tlTop
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_GRAD_HABILIDAD'
    Field = 'CONS_GRAD_HABILIDAD'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 368
  end
  inherited padr_pane_arriba: TPanel
    Width = 368
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 368
    inherited padr_sepa_new: TShape
      Width = 362
    end
  end
  inherited padr_pane_info: TPanel
    Top = 177
    Width = 368
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
    Top = 179
    Width = 368
    inherited padr_beve_abajo: TBevel
      Width = 362
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 368
  end
  object CBGrupo_Recurso: TPCPLookUpComboEdit [12]
    Left = 108
    Top = 60
    Width = 185
    Height = 21
    DropDownCount = 8
    Ctl3D = True
    DataField = 'CONS_RECU_GRUPO'
    DataSource = data_ventana
    KeyField = 'CONS_RECU_GRUPO'
    ListField = 'NOMB_RECU_GRUPO'
    ListSource = DSQGrupos
    ParentCtl3D = False
    TabOrder = 6
    DirectInput = False
  end
  object CBFamilia_Recurso: TPCPLookUpComboEdit [13]
    Left = 108
    Top = 105
    Width = 185
    Height = 21
    DropDownCount = 8
    Ctl3D = True
    DataField = 'CONS_RECU_FAMILIA'
    DataSource = data_ventana
    KeyField = 'CONS_RECU_FAMILIA'
    ListField = 'NOMB_RECU_FAMILIA'
    ListSource = DSQFamilias
    ParentCtl3D = False
    TabOrder = 7
    DirectInput = False
  end
  object CBTipo_Recurso: TPCPLookUpComboEdit [14]
    Left = 108
    Top = 83
    Width = 185
    Height = 21
    DropDownCount = 8
    Ctl3D = True
    DataField = 'CONS_RECU_TIPO'
    DataSource = data_ventana
    KeyField = 'CONS_RECU_TIPO'
    ListField = 'NOMB_RECU_TIPO'
    ListSource = DSQTipo_Recurso
    ParentCtl3D = False
    TabOrder = 8
    DirectInput = False
  end
  object PCPLookUpComboEdit1: TPCPLookUpComboEdit [15]
    Left = 108
    Top = 128
    Width = 185
    Height = 21
    DropDownCount = 8
    Ctl3D = True
    DataField = 'CONS_GRAD_HABILIDAD'
    DataSource = data_ventana
    KeyField = 'CONS_GRAD_HABILIDAD'
    ListField = 'NOMB_GRAD_HABILIDAD'
    ListSource = DSQHabilidad
    ParentCtl3D = False
    TabOrder = 9
    DirectInput = False
  end
  inherited Tabla_Ventana: TTable
    AfterInsert = nil
    TableName = 'GLO_PERS_MAQU_UTILIZADAS'
    object Tabla_VentanaCONS_PERS_MAQU_UTILIZADA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_PERS_MAQU_UTILIZADA'
      Required = True
    end
    object Tabla_VentanaCONS_PERSONAL: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons. Personal'
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_TIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'CONS_RECU_TIPO'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'CONS_RECU_GRUPO'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_FAMILIA: TIntegerField
      DisplayLabel = 'Familia'
      FieldName = 'CONS_RECU_FAMILIA'
      Required = True
    end
    object Tabla_VentanaCONS_GRAD_HABILIDAD: TIntegerField
      DisplayLabel = 'Grado Habilidad'
      FieldName = 'CONS_GRAD_HABILIDAD'
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
  end
  object QFamilias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQTipo_Recurso
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_FAMILIAS'
      'WHERE CONS_RECU_TIPO = :CONS_RECU_TIPO'
      'ORDER BY NOMB_RECU_FAMILIA')
    Left = 296
    Top = 110
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_TIPO'
        ParamType = ptUnknown
      end>
  end
  object DSQFamilias: TDataSource
    AutoEdit = False
    DataSet = QFamilias
    Left = 324
    Top = 110
  end
  object DSQTipo_Recurso: TDataSource
    AutoEdit = False
    DataSet = QTipo_Recurso
    Left = 324
    Top = 82
  end
  object QTipo_Recurso: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQGrupos
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_TIPOS'
      'WHERE CONS_RECU_GRUPO = :CONS_RECU_GRUPO'
      'ORDER BY NOMB_RECU_TIPO')
    Left = 296
    Top = 82
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_GRUPO'
        ParamType = ptUnknown
      end>
  end
  object QGrupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_GRUPOS'
      'ORDER BY NOMB_RECU_GRUPO')
    Left = 296
    Top = 54
  end
  object DSQGrupos: TDataSource
    AutoEdit = False
    DataSet = QGrupos
    Left = 324
    Top = 54
  end
  object QHabilidad: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_GRAD_HABILIDAD'
      'ORDER BY NOMB_GRAD_HABILIDAD')
    Left = 296
    Top = 138
  end
  object DSQHabilidad: TDataSource
    AutoEdit = False
    DataSet = QHabilidad
    Left = 324
    Top = 138
  end
end

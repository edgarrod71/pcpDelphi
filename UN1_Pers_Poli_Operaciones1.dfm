inherited FN1_Pers_Poli_Operaciones1: TFN1_Pers_Poli_Operaciones1
  Left = 403
  Top = 39
  Width = 385
  Height = 172
  Caption = 'Operaciones Ejecutadas'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 377
  end
  inherited padr_shap_xp_down: TShape
    Top = 136
    Width = 377
  end
  object SCLDBLabel1: TSCLDBLabel [2]
    Left = 24
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
    FocusControl = PCPLookUpComboEdit1
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Tipo Operación:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_OPER_COST_TIPO'
    Field = 'CONS_OPER_COST_TIPO'
  end
  object SCLDBLabel2: TSCLDBLabel [3]
    Left = 24
    Top = 87
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
    FocusControl = PCPLookUpComboEdit2
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Rango Eficiencia:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_RANG_EFICIENCIA'
    Field = 'CONS_RANG_EFICIENCIA'
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 377
  end
  inherited padr_pane_arriba: TPanel
    Width = 377
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 377
    inherited padr_sepa_new: TShape
      Width = 371
    end
  end
  inherited padr_pane_info: TPanel
    Top = 135
    Width = 377
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
    Top = 137
    Width = 377
    inherited padr_beve_abajo: TBevel
      Width = 371
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 377
  end
  object PCPLookUpComboEdit1: TPCPLookUpComboEdit [10]
    Left = 126
    Top = 64
    Width = 145
    Height = 21
    DropDownCount = 8
    DataField = 'CONS_OPER_COST_TIPO'
    DataSource = data_ventana
    KeyField = 'CONS_OPER_COST_TIPO'
    ListField = 'NOMB_OPER_COST_TIPO'
    ListSource = DSQOperaciones
    TabOrder = 6
    DirectInput = False
  end
  object PCPLookUpComboEdit2: TPCPLookUpComboEdit [11]
    Left = 126
    Top = 87
    Width = 145
    Height = 21
    DropDownCount = 8
    DataField = 'CONS_RANG_EFICIENCIA'
    DataSource = data_ventana
    KeyField = 'CONS_RANG_EFICIENCIA'
    ListField = 'NOMB_RANG_EFICIENCIA'
    ListSource = DSQRango
    TabOrder = 7
    DirectInput = False
  end
  inherited Tabla_Ventana: TTable
    AfterInsert = nil
    TableName = 'GLO_PERS_OPER_EJECUTADAS'
    object Tabla_VentanaCONS_PERS_OPER_EJECUTADA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Consecutivo'
      FieldName = 'CONS_PERS_OPER_EJECUTADA'
      Required = True
    end
    object Tabla_VentanaCONS_PERS_MAQU_UTILIZADA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cons. Maquina'
      FieldName = 'CONS_PERS_MAQU_UTILIZADA'
      Required = True
    end
    object Tabla_VentanaCONS_OPER_COST_TIPO: TIntegerField
      DisplayLabel = 'Tipo Operación'
      FieldName = 'CONS_OPER_COST_TIPO'
      Required = True
    end
    object Tabla_VentanaCONS_RANG_EFICIENCIA: TIntegerField
      DisplayLabel = 'Rango Eficiencia'
      FieldName = 'CONS_RANG_EFICIENCIA'
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
  object QOperaciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM PCP_OPER_COST_TIPOS'
      'ORDER BY NOMB_OPER_COST_TIPO')
    Left = 272
    Top = 64
  end
  object QRango: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_RANG_EFICIENCIA'
      'ORDER BY NOMB_RANG_EFICIENCIA')
    Left = 272
    Top = 96
  end
  object DSQOperaciones: TDataSource
    AutoEdit = False
    DataSet = QOperaciones
    Left = 304
    Top = 64
  end
  object DSQRango: TDataSource
    DataSet = QRango
    Left = 304
    Top = 96
  end
end

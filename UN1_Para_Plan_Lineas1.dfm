inherited FN1_Para_Plan_Lineas1: TFN1_Para_Plan_Lineas1
  Left = 357
  Top = 233
  Width = 397
  Height = 192
  ActiveControl = CBEmpresa
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 8
    Top = 87
    Width = 65
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
    FocusControl = CBPlanta
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Planta'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_PLANTA'
    Field = 'CONS_PLANTA'
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 8
    Top = 67
    Width = 65
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
    FocusControl = CBEmpresa
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Empresa'
    Transparent = True
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
  end
  inherited padr_shap_xp_up: TShape
    Width = 389
  end
  inherited padr_shap_xp_down: TShape
    Top = 164
    Width = 389
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 389
  end
  inherited padr_pane_arriba: TPanel
    Width = 389
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 389
    inherited padr_beve_1: TBevel
      Width = 383
    end
    inherited padr_sepa_new: TShape
      Width = 383
    end
  end
  inherited padr_pane_info: TPanel
    Top = 163
    Width = 389
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
  object CBPlanta: TPCPLookUpComboEdit [8]
    Left = 75
    Top = 87
    Width = 185
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CONS_PLANTA'
    DataSource = data_ventana
    KeyField = 'CONS_PLANTA'
    ListField = 'NOMB_PLANTA'
    ListSource = DSQPlantas
    ParentCtl3D = False
    TabOrder = 7
    DirectInput = False
  end
  object SCLButton1: TTBXButtonSCL [9]
    Left = 265
    Top = 87
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
    TabOrder = 8
    TabStop = False
  end
  object CBEmpresa: TPCPLookUpComboEdit [10]
    Left = 75
    Top = 67
    Width = 185
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    KeyField = 'CONS_EMPRESA'
    ListField = 'NOMB_EMPRESA'
    ListSource = DSQEmpresas
    ParentCtl3D = False
    TabOrder = 6
    DirectInput = False
  end
  object SCLButton2: TTBXButtonSCL [11]
    Left = 265
    Top = 67
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
    TabOrder = 9
    TabStop = False
  end
  inherited pane_beve_abajo: TPanel
    Top = 155
    Width = 389
    inherited padr_beve_abajo: TBevel
      Width = 383
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 389
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Visible = False
    end
  end
  inherited Tabla_Ventana: TTable
    AfterPost = nil
    TableName = 'GLO_PLAN_LINEAS'
    object Tabla_VentanaCONS_PLAN_LINEA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PLAN_LINEA'
      Required = True
    end
    object Tabla_VentanaCONS_PLANTA: TIntegerField
      DisplayLabel = 'Planta'
      FieldName = 'CONS_PLANTA'
      Required = True
    end
    object Tabla_VentanaCONS_LINEA: TIntegerField
      DisplayLabel = 'Línea'
      FieldName = 'CONS_LINEA'
      Required = True
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUA_SISTEMA'
    end
  end
  object DSQPlantas: TDataSource
    AutoEdit = False
    DataSet = QPlantas
    Left = 336
    Top = 88
  end
  object QPlantas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQEmpresas
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PLANTAS'
      'WHERE CONS_EMPRESA = :CONS_EMPRESA'
      'ORDER BY NOMB_PLANTA')
    Left = 304
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_EMPRESA'
        ParamType = ptUnknown
      end>
  end
  object QEmpresas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_EMPRESAS'
      'ORDER BY NOMB_EMPRESA')
    Left = 304
    Top = 60
  end
  object DSQEmpresas: TDataSource
    AutoEdit = False
    DataSet = QEmpresas
    Left = 336
    Top = 60
  end
end

inherited FN1_Para_Line_Secciones1: TFN1_Para_Line_Secciones1
  Left = 285
  Top = 195
  Width = 516
  Height = 292
  ActiveControl = CBEmpresa
  Caption = 'Modificar línea'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 16
    Top = 87
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
    FocusControl = CBPlanta
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Planta:'
    Transparent = True
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
  end
  object SCLDBLabel2: TSCLDBLabel [1]
    Left = 16
    Top = 67
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
    FocusControl = CBEmpresa
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Empresa:'
    Transparent = True
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
  end
  object SCLDBLabel3: TSCLDBLabel [2]
    Left = 16
    Top = 107
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
    FocusControl = CBLineas
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Línea:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_PLAN_LINEA'
    Field = 'CONS_PLAN_LINEA'
  end
  object SCLDBLabel7: TSCLDBLabel [3]
    Left = 16
    Top = 129
    Width = 89
    Height = 33
    Alive = True
    ColorActive = 16578290
    FontActive.Charset = DEFAULT_CHARSET
    FontActive.Color = clWindowText
    FontActive.Height = -11
    FontActive.Name = 'Tahoma'
    FontActive.Style = []
    FocusOffset = 2
    Position = wlpLeft
    FocusControl = RGFuncionamiento
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Funcionamiento:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'TIPO_SECCION'
    Field = 'TIPO_SECCION'
  end
  object SCLDBLabel8: TSCLDBLabel [4]
    Left = 16
    Top = 171
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
    FocusControl = DBSupervisor
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Supervisor:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'SUPERVISOR'
    Field = 'SUPERVISOR'
  end
  object SCLDBLabel9: TSCLDBLabel [5]
    Left = 16
    Top = 191
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
    FocusControl = DBResponsable
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Responsable:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'RESPONSABLE'
    Field = 'RESPONSABLE'
  end
  inherited padr_shap_xp_up: TShape
    Width = 508
  end
  inherited padr_shap_xp_down: TShape
    Top = 264
    Width = 508
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 508
  end
  inherited padr_pane_arriba: TPanel
    Width = 508
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 508
    inherited padr_beve_1: TBevel
      Width = 502
    end
    inherited padr_sepa_new: TShape
      Width = 502
    end
  end
  inherited padr_pane_info: TPanel
    Top = 263
    Width = 508
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
  object CBPlanta: TPCPLookUpComboEdit [12]
    Left = 107
    Top = 87
    Width = 216
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    KeyField = 'CONS_PLANTA'
    ListField = 'NOMB_PLANTA'
    ListSource = DSQPlantas
    ParentCtl3D = False
    TabOrder = 7
    DirectInput = False
  end
  object SCLButton1: TTBXButtonSCL [13]
    Left = 326
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
    TabOrder = 12
    TabStop = False
  end
  object CBEmpresa: TPCPLookUpComboEdit [14]
    Left = 107
    Top = 67
    Width = 216
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
  object SCLButton2: TTBXButtonSCL [15]
    Left = 326
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
    TabOrder = 13
    TabStop = False
  end
  object CBLineas: TPCPLookUpComboEdit [16]
    Left = 107
    Top = 107
    Width = 216
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CONS_PLAN_LINEA'
    DataSource = data_ventana
    KeyField = 'CONS_PLAN_LINEA'
    ListField = 'NOMB_LINEA'
    ListSource = DSQLineas
    ParentCtl3D = False
    TabOrder = 8
    DirectInput = False
  end
  object SCLButton3: TTBXButtonSCL [17]
    Left = 326
    Top = 107
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
    TabOrder = 14
    TabStop = False
  end
  object RGFuncionamiento: TDBRadioGroup [18]
    Left = 107
    Top = 129
    Width = 241
    Height = 33
    Columns = 2
    DataField = 'TIPO_SECCION'
    DataSource = data_ventana
    Items.Strings = (
      'Lineal'
      'Modular')
    TabOrder = 9
    Values.Strings = (
      '0'
      '1')
  end
  object DBSupervisor: TdxDBEdit [19]
    Left = 107
    Top = 171
    Width = 241
    TabOrder = 10
    DataField = 'SUPERVISOR'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  object DBResponsable: TdxDBEdit [20]
    Left = 107
    Top = 191
    Width = 241
    TabOrder = 11
    DataField = 'RESPONSABLE'
    DataSource = data_ventana
    StyleController = padr_estilo
  end
  inherited pane_beve_abajo: TPanel
    Top = 255
    Width = 508
    inherited padr_beve_abajo: TBevel
      Width = 502
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 508
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
    TableName = 'GLO_LINE_SECCIONES'
    object Tabla_VentanaCONS_LINE_SECCION: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_LINE_SECCION'
      Required = True
    end
    object Tabla_VentanaCONS_SECCION: TIntegerField
      FieldName = 'CONS_SECCION'
      Required = True
    end
    object Tabla_VentanaCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Required = True
    end
    object Tabla_VentanaSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Size = 60
    end
    object Tabla_VentanaRESPONSABLE: TStringField
      FieldName = 'RESPONSABLE'
      Size = 60
    end
    object Tabla_VentanaTIPO_SECCION: TIntegerField
      FieldName = 'TIPO_SECCION'
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
  object QEmpresas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_EMPRESAS'
      'ORDER BY NOMB_EMPRESA')
    Left = 384
    Top = 58
  end
  object QPlantas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQEmpresas
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PLANTAS'
      'WHERE CONS_EMPRESA = :CONS_EMPRESA'
      'ORDER BY NOMB_PLANTA')
    Left = 384
    Top = 86
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_EMPRESA'
        ParamType = ptUnknown
      end>
  end
  object QLineas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQPlantas
    SQL.Strings = (
      'SELECT L.CONS_LINEA, L.CODI_LINEA, L.NOMB_LINEA,'
      ' PL.CONS_PLAN_LINEA, P.CONS_PLANTA, E.CONS_EMPRESA'
      'FROM GLO_LINEAS L, GLO_PLAN_LINEAS PL,'
      ' GLO_PLANTAS P, GLO_EMPRESAS E'
      'WHERE L.CONS_LINEA = PL.CONS_LINEA'
      ' AND PL.CONS_PLANTA = :CONS_PLANTA'
      ' AND PL.CONS_PLANTA = P.CONS_PLANTA'
      ' AND P.CONS_EMPRESA = E.CONS_EMPRESA'
      'ORDER BY L.NOMB_LINEA')
    Left = 384
    Top = 114
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PLANTA'
        ParamType = ptUnknown
      end>
  end
  object DSQEmpresas: TDataSource
    AutoEdit = False
    DataSet = QEmpresas
    Left = 416
    Top = 58
  end
  object DSQPlantas: TDataSource
    AutoEdit = False
    DataSet = QPlantas
    Left = 416
    Top = 86
  end
  object DSQLineas: TDataSource
    AutoEdit = False
    DataSet = QLineas
    Left = 416
    Top = 114
  end
  object QBuscar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT L.CONS_LINEA, L.CODI_LINEA, L.NOMB_LINEA,'
      ' PL.CONS_PLAN_LINEA, P.CONS_PLANTA, E.CONS_EMPRESA'
      'FROM GLO_LINEAS L, GLO_PLAN_LINEAS PL,'
      ' GLO_PLANTAS P, GLO_EMPRESAS E'
      'WHERE L.CONS_LINEA = PL.CONS_LINEA'
      ' AND PL.CONS_PLAN_LINEA = :CONS_PLAN_LINEA'
      ' AND PL.CONS_PLANTA = P.CONS_PLANTA'
      ' AND P.CONS_EMPRESA = E.CONS_EMPRESA'
      'ORDER BY L.NOMB_LINEA')
    Left = 392
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PLAN_LINEA'
        ParamType = ptUnknown
      end>
  end
end

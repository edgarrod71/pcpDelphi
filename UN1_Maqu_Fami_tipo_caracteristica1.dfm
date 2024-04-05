inherited FN1_Maqu_Fami_tipo_caracteristica1: TFN1_Maqu_Fami_tipo_caracteristica1
  Left = 292
  Top = 189
  Width = 436
  Height = 168
  ActiveControl = CBTipo_Caracteristica
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SCLDBLabel1: TSCLDBLabel [0]
    Left = 24
    Top = 64
    Width = 118
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
    FocusControl = CBTipo_Caracteristica
    Alignment = taRightJustify
    WordWrap = False
    Bevel = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Light = lpLeftTop
    Caption = 'Tipo de Característica:'
    Transparent = True
    DataSource = data_ventana
    SCLPropiedades = Variables
    ColorRequerido = 12615680
    ColorNoRequerido = clWindowText
    DataField = 'CONS_RECU_TIPO_CARACTERISTICA'
    Field = 'CONS_RECU_TIPO_CARACTERISTICA'
  end
  inherited padr_shap_xp_up: TShape
    Width = 428
  end
  inherited padr_shap_xp_down: TShape
    Top = 140
    Width = 428
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 428
  end
  inherited padr_pane_arriba: TPanel
    Width = 428
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 428
    inherited padr_beve_1: TBevel
      Width = 422
    end
    inherited padr_sepa_new: TShape
      Width = 422
    end
  end
  inherited padr_pane_info: TPanel
    Top = 139
    Width = 428
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
  object CBTipo_Caracteristica: TPCPLookUpComboEdit [7]
    Left = 144
    Top = 64
    Width = 195
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    DataField = 'CONS_TIPO_CARACTERISTICA'
    DataSource = data_ventana
    KeyField = 'CONS_TIPO_CARACTERISTICA'
    ListField = 'NOMB_TIPO_CARACTERISTICA'
    ListSource = DSQTipo_Caracteristica
    ParentCtl3D = False
    TabOrder = 6
    DirectInput = False
  end
  object SCLButton2: TTBXButtonSCL [8]
    Left = 344
    Top = 63
    Width = 21
    Height = 20
    AllowAllUnchecked = True
    BorderSize = 2
    ButtonStyle = bsFlat
    Enabled = False
    ImageIndex = 0
    Images = Imagenes_Botones_Pequenos
    SmartFocus = False
    TabOrder = 7
    TabStop = False
  end
  inherited pane_beve_abajo: TPanel
    Top = 131
    Width = 428
    inherited padr_beve_abajo: TBevel
      Width = 422
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 428
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
    TableName = 'GLO_RECU_TIPO_CARACTERISTICAS'
    object Tabla_VentanaCONS_RECU_TIPO_CARACTERISTICA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_RECU_TIPO_CARACTERISTICA'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_FAMILIA: TIntegerField
      FieldName = 'CONS_RECU_FAMILIA'
      Required = True
    end
    object Tabla_VentanaCONS_TIPO_CARACTERISTICA: TIntegerField
      DisplayLabel = 'Tipo de Característica'
      FieldName = 'CONS_TIPO_CARACTERISTICA'
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
  object QTipo_Caracteristica: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_TIPO_CARACTERISTICAS'
      'ORDER BY NOMB_TIPO_CARACTERISTICA')
    Left = 384
    Top = 56
  end
  object DSQTipo_Caracteristica: TDataSource
    AutoEdit = False
    DataSet = QTipo_Caracteristica
    Left = 416
    Top = 56
  end
end

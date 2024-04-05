inherited cn1_prod_cons_prog_linea: Tcn1_prod_cons_prog_linea
  Width = 812
  Height = 523
  Caption = 'Consulta de programación por línea'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 495
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    inherited padr_barra: TTBXToolbar
      ProcessShortCuts = False
      Visible = False
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 494
    Width = 804
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
    Top = 486
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
  end
  object pane_info_destino: TPCPFrame [8]
    Tag = 95
    Left = 0
    Top = 54
    Width = 804
    Height = 95
    Align = alTop
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Caption = 'Información del destino'
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel1: TSCLDBLabel
      Left = 286
      Top = 25
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
      FocusControl = comb_planta
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
    object SCLDBLabel5: TSCLDBLabel
      Left = 16
      Top = 25
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
      FocusControl = comb_empresa
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
    object SCLDBLabel12: TSCLDBLabel
      Left = 16
      Top = 45
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
      FocusControl = comb_turno
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Turno:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel13: TSCLDBLabel
      Left = 530
      Top = 25
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
      FocusControl = comb_linea
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Línea:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_empresa: TPCPLookUpComboEdit
      Left = 118
      Top = 25
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_empresa'
      DataSource = data_ventana
      KeyField = 'cons_empresa'
      ListField = 'nomb_empresa'
      ListSource = data_empresas
      ParentCtl3D = False
      TabOrder = 0
      OnChange = doActualizarFrame
      DirectInput = False
    end
    object comb_planta: TPCPLookUpComboEdit
      Left = 388
      Top = 25
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_planta'
      DataSource = data_ventana
      KeyField = 'cons_planta'
      ListField = 'nomb_planta'
      ListSource = data_plantas
      ParentCtl3D = False
      TabOrder = 1
      OnChange = doActualizarFrame
      DirectInput = False
    end
    object comb_turno: TPCPLookUpComboEdit
      Left = 118
      Top = 45
      Width = 120
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_turno'
      DataSource = data_ventana
      KeyField = 'cons_turno'
      ListField = 'codi_turno'
      ParentCtl3D = False
      TabOrder = 3
      OnChange = doActualizarFrame
      DirectInput = False
    end
    object comb_linea: TPCPLookUpComboEdit
      Left = 632
      Top = 25
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'cons_plan_linea'
      DataSource = data_ventana
      KeyField = 'cons_plan_linea'
      ListField = 'nomb_linea'
      ListSource = data_plan_lineas
      ParentCtl3D = False
      TabOrder = 2
      OnChange = doActualizarFrame
      DirectInput = False
    end
    object pane_sele_fechas: TPanel
      Left = 4
      Top = 66
      Width = 617
      Height = 21
      BevelOuter = bvNone
      TabOrder = 5
      object SCLDBLabel3: TSCLDBLabel
        Left = 12
        Top = -1
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
        FocusControl = edit_fech_inicial
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Fecha inicial:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object SCLDBLabel4: TSCLDBLabel
        Left = 282
        Top = 0
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
        FocusControl = edit_fech_final
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Fecha final:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
      end
      object edit_fech_inicial: TdxDateEdit
        Left = 114
        Top = -1
        Width = 120
        TabOrder = 0
        StyleController = padr_estilo
        OnChange = doActualizarFrame
        Date = -700000
        DateOnError = deToday
        DateValidation = True
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
      object edit_fech_final: TdxDateEdit
        Left = 384
        Top = 0
        Width = 121
        TabOrder = 1
        StyleController = padr_estilo
        OnChange = doActualizarFrame
        Date = -700000
        DateOnError = deToday
        DateValidation = True
        SaveTime = False
        UseEditMask = True
        StoredValues = 4
      end
    end
  end
  inline fram_plan_Detallada: Tffra_prod_plan_detallada [9]
    Top = 149
    Height = 337
    Align = alClient
    TabOrder = 7
    inherited pane_trab_planeacion: TPanel
      Height = 314
      inherited Grid: TSCLColumnGrid
        Height = 288
        TabOrder = 1
        ScrollWidth = 16
      end
      inherited TBXDock1: TTBXDock
        inherited TBXToolbar1: TTBXToolbar
          inherited edit_cuad_por_dia: TdxSpinEdit
            StoredValues = 49
          end
        end
      end
    end
    inherited pane_info_destino: TPCPFrame
      inherited pane_sele_fechas: TPanel
        inherited edit_fech_inicial: TdxDateEdit
          StoredValues = 4
        end
        inherited edit_fech_final: TdxDateEdit
          StoredValues = 4
        end
      end
      inherited edit_empresa: TdxCurrencyEditPCP
        StoredValues = 1
      end
      inherited edit_planta: TdxCurrencyEditPCP
        StoredValues = 1
      end
      inherited edit_linea: TdxCurrencyEditPCP
        StoredValues = 1
      end
      inherited edit_turno: TdxCurrencyEditPCP
        StoredValues = 1
      end
      inherited edit_cons_prog_produccion: TdxCurrencyEditPCP
        StoredValues = 1
      end
    end
  end
  inherited padr_acciones: TActionList [10]
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_imprimir: TAction
      Enabled = False
    end
    inherited padr_acti_ayuda: TAction
      Enabled = False
    end
    inherited padr_acti_salir: TAction
      Enabled = False
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
    end
    inherited acti_padr_cancelar_2: TAction
      Enabled = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = False
    end
    inherited padr_acti_expo_xls: TAction
      Enabled = False
    end
    inherited padr_acti_expo_HTML: TAction
      Enabled = False
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      Enabled = False
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList [11]
  end
  inherited Variables: TSCLPropiedadesForm [12]
  end
  inherited Tabla_Ventana: TTable [13]
  end
  inherited padr_estilo: TdxEditStyleController [14]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [15]
  end
  inherited padr_esti_panel: TAdvPanelStyler [16]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [17]
  end
  inherited imag_pequenas: TImageList [18]
  end
  inherited padr_imag_tem1_colo: TImageList [19]
  end
  inherited data_ventana: TDataSource [21]
    DataSet = myTabla_Ventana
  end
  object quer_empresas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_empresa, nomb_empresa'
      'from GLO_EMPRESAS'
      'Order by nomb_empresa')
    Left = 680
    Top = 6
    object quer_empresasCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
    end
    object quer_empresasNOMB_EMPRESA: TStringField
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
  end
  object data_empresas: TDataSource
    DataSet = quer_empresas
    Left = 713
    Top = 7
  end
  object quer_plantas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_empresas
    SQL.Strings = (
      'Select cons_planta, nomb_planta'
      'from GLO_PLANTAS'
      'Where cons_empresa = :cons_empresa'
      'order by nomb_planta')
    Left = 680
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_EMPRESA'
        ParamType = ptUnknown
      end>
    object quer_plantasCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
    end
    object quer_plantasNOMB_PLANTA: TStringField
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
  end
  object data_plantas: TDataSource
    DataSet = quer_plantas
    Left = 712
    Top = 40
  end
  object quer_plan_lineas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_plantas
    SQL.Strings = (
      'Select CONS_PLAN_LINEA, CONS_LINEA, CODI_LINEA, NOMB_LINEA'
      'from VIS_GLO_PLAN_LINEAS'
      'WHERE CONS_PLANTA = :CONS_PLANTA'
      'ORDER BY NOMB_LINEA')
    Left = 680
    Top = 78
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PLANTA'
        ParamType = ptUnknown
      end>
    object quer_plan_lineasCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLAN_LINEAS.CONS_PLAN_LINEA'
    end
    object quer_plan_lineasCONS_LINEA: TIntegerField
      FieldName = 'CONS_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLAN_LINEAS.CONS_LINEA'
    end
    object quer_plan_lineasCODI_LINEA: TStringField
      FieldName = 'CODI_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLAN_LINEAS.CODI_LINEA'
      Size = 12
    end
    object quer_plan_lineasNOMB_LINEA: TStringField
      FieldName = 'NOMB_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLAN_LINEAS.NOMB_LINEA'
      Size = 60
    end
  end
  object data_plan_lineas: TDataSource
    DataSet = quer_plan_lineas
    Left = 712
    Top = 77
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_planta'
        DataType = ftInteger
      end
      item
        Name = 'cons_empresa'
        DataType = ftInteger
      end
      item
        Name = 'cons_plan_linea'
        DataType = ftInteger
      end
      item
        Name = 'cons_turno'
        DataType = ftInteger
      end>
    Left = 248
    Top = 8
  end
end

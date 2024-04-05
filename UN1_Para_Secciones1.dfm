inherited FN1_Para_Secciones1: TFN1_Para_Secciones1
  Left = 122
  Top = 150
  Width = 812
  Height = 532
  OldCreateOrder = True
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
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
    TabOrder = 2
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 47
    Width = 804
    TabOrder = 3
    inherited padr_beve_1: TBevel
      Width = 829
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 504
    Width = 804
    TabOrder = 4
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 167
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 189
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 167
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 189
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object PLineas: TPanel [6]
    Left = 0
    Top = 160
    Width = 804
    Height = 335
    Align = alClient
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 6
    object padr_grid: TdxDBGrid
      Left = 0
      Top = 26
      Width = 804
      Height = 309
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_LINE_SECCION'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <>
          Name = 'padr_summary_grid'
        end>
      SummarySeparator = ', '
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PMLineas
      TabOrder = 0
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DSQLineas
      Filter.CaseInsensitive = True
      Filter.Criteria = {00000000}
      GridLineColor = 14737632
      GroupPanelFontColor = clWhite
      HeaderColor = 15133420
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowRowFooter = True
      object padr_gridCONS_SECCION: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_SECCION'
      end
      object padr_gridNOMB_EMPRESA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 148
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_EMPRESA'
      end
      object padr_gridNOMB_PLANTA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 147
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PLANTA'
      end
      object padr_gridNOMB_LINEA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_LINEA'
      end
      object padr_gridTIPO_SECCION: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO_SECCION'
      end
      object padr_gridSUPERVISOR: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUPERVISOR'
      end
      object padr_gridRESPONSABLE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 161
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RESPONSABLE'
      end
      object padr_gridCONS_LINE_SECCION: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_LINE_SECCION'
      end
    end
    object TBXDock1: TTBXDock
      Left = 0
      Top = 0
      Width = 804
      Height = 26
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        Caption = 'TBXToolbar1'
        Options = [tboImageAboveCaption]
        Stretch = True
        TabOrder = 0
        object TBXItem2: TTBXItem
          Action = Acti_Nuev_Linea
          Caption = 'Asignar a una lìnea'
          DisplayMode = nbdmImageAndText
          ImageIndex = 0
          Images = _fMDI.imag_pequenas
          InheritOptions = False
        end
        object TBXItem5: TTBXItem
          Action = Acti_modi_linea
          DisplayMode = nbdmImageAndText
          ImageIndex = 1
          Images = _fMDI.imag_pequenas
          InheritOptions = False
        end
        object TBXItem1: TTBXItem
          Action = Acti_Elim_Linea
          DisplayMode = nbdmImageAndText
          ImageIndex = 2
          Images = _fMDI.imag_pequenas
          InheritOptions = False
        end
      end
    end
  end
  object Panel1: TPanel [7]
    Left = 0
    Top = 54
    Width = 804
    Height = 106
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 0
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
      FocusControl = DBCodigo
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
      DataField = 'CODI_SECCION'
      Field = 'CODI_SECCION'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 20
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
      FocusControl = DBDescripcion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Sección:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_SECCION'
      Field = 'CODI_SECCION'
    end
    object SCLDBLabel15: TSCLDBLabel
      Left = 10
      Top = 40
      Width = 100
      Height = 58
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = DBObservaciones
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Descripción:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'DESCRIPCION'
      Field = 'DESCRIPCION'
    end
    object DBCodigo: TdxDBEdit
      Left = 112
      Top = 0
      Width = 113
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_SECCION'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object DBDescripcion: TdxDBEdit
      Left = 112
      Top = 20
      Width = 241
      TabOrder = 1
      DataField = 'NOMB_SECCION'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object DBObservaciones: TdxDBEdit
      Left = 112
      Top = 40
      Width = 241
      TabOrder = 2
      AutoSize = False
      DataField = 'DESCRIPCION'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      Height = 58
      StoredValues = 64
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 496
    Width = 804
    TabOrder = 5
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 45
    Width = 804
    TabOrder = 7
  end
  inherited padr_acciones: TActionList
    object Acti_Nuev_Linea: TAction
      Caption = 'Nueva Línea'
      OnExecute = Acti_Nuev_LineaExecute
    end
    object Acti_Elim_Linea: TAction
      Caption = 'Eliminar Línea'
      OnExecute = Acti_Elim_LineaExecute
    end
    object Acti_modi_linea: TAction
      Caption = 'Modificar Línea'
      OnExecute = Acti_modi_lineaExecute
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_SECCIONES'
    object Tabla_VentanaCONS_SECCION: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_SECCION'
      Required = True
    end
    object Tabla_VentanaCODI_SECCION: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_SECCION'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_SECCION'
      Required = True
      Size = 60
    end
    object Tabla_VentanaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Size = 240
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object QLineas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT SL.CONS_SECCION, L.NOMB_LINEA, P.NOMB_PLANTA, '
      ' E.NOMB_EMPRESA, SL.CONS_LINE_SECCION,'
      ' CASE SL.TIPO_SECCION'
      '   WHEN 0 THEN '#39'Lineal'#39
      '   WHEN 1 THEN '#39'Modular'#39
      '   ELSE '#39'Desconocido'#39
      ' END AS TIPO_SECCION,'
      ' SL.SUPERVISOR,  SL.RESPONSABLE'
      'FROM GLO_LINEAS L, GLO_PLANTAS P, GLO_EMPRESAS E,'
      ' GLO_LINE_SECCIONES SL, GLO_PLAN_LINEAS PL'
      'WHERE SL.CONS_PLAN_LINEA = PL.CONS_PLAN_LINEA'
      ' AND PL.CONS_LINEA = L.CONS_LINEA'
      ' AND PL.CONS_PLANTA = P.CONS_PLANTA'
      ' AND P.CONS_EMPRESA = E.CONS_EMPRESA'
      ' AND SL.CONS_SECCION = :CONS_SECCION'
      'ORDER BY L.CODI_LINEA')
    Left = 24
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_SECCION'
        ParamType = ptUnknown
      end>
    object QLineasCONS_SECCION: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_SECCION'
      Origin = 'DATA_BASE_PCP.GLO_LINE_SECCIONES.CONS_SECCION'
    end
    object QLineasNOMB_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_LINEAS.NOMB_LINEA'
      Size = 60
    end
    object QLineasNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Origin = 'DATA_BASE_PCP.GLO_PLANTAS.NOMB_PLANTA'
      Size = 60
    end
    object QLineasNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.NOMB_EMPRESA'
      Size = 60
    end
    object QLineasCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
      Origin = 'DATA_BASE_PCP.GLO_LINE_SECCIONES.CONS_LINE_SECCION'
    end
    object QLineasTIPO_SECCION: TStringField
      DisplayLabel = 'Funcionamiento'
      FieldName = 'TIPO_SECCION'
      FixedChar = True
      Size = 11
    end
    object QLineasSUPERVISOR: TStringField
      DisplayLabel = 'Supervisor'
      FieldName = 'SUPERVISOR'
      Size = 60
    end
    object QLineasRESPONSABLE: TStringField
      DisplayLabel = 'Responsable'
      FieldName = 'RESPONSABLE'
      Size = 60
    end
  end
  object DSQLineas: TDataSource
    AutoEdit = False
    DataSet = QLineas
    Left = 56
    Top = 272
  end
  object PMLineas: TTBXPopupMenu
    Left = 144
    Top = 315
    object TBXItem4: TTBXItem
      Action = Acti_Nuev_Linea
      Caption = 'Asignar a una lìnea'
      ImageIndex = 0
      Images = _fMDI.imag_pequenas
    end
    object TBXItem6: TTBXItem
      Action = Acti_modi_linea
      ImageIndex = 1
      Images = _fMDI.imag_pequenas
    end
    object TBXItem3: TTBXItem
      Action = Acti_Elim_Linea
      ImageIndex = 2
      Images = _fMDI.imag_pequenas
    end
  end
  object QEliminar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQLineas
    SQL.Strings = (
      'DELETE'
      'FROM GLO_LINE_SECCIONES'
      'WHERE CONS_LINE_SECCION = :CONS_LINE_SECCION')
    Left = 24
    Top = 307
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_LINE_SECCION'
        ParamType = ptUnknown
      end>
  end
end

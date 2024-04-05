inherited FN1_Para_Lineas1: TFN1_Para_Lineas1
  Left = 265
  Top = 131
  Width = 497
  Height = 395
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 489
  end
  inherited padr_shap_xp_down: TShape
    Top = 358
    Width = 489
  end
  inherited padr_dock_arriba: TTBXDock
    Top = 1
    Width = 489
  end
  inherited padr_pane_arriba: TPanel
    Top = 43
    Width = 489
    TabOrder = 2
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 489
    TabOrder = 3
    inherited padr_beve_1: TBevel
      Width = 483
    end
    inherited padr_sepa_new: TShape
      Width = 483
    end
  end
  inherited padr_pane_info: TPanel
    Top = 367
    Width = 489
    TabOrder = 4
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 65
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 87
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 65
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 87
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object PPlantas: TPanel [6]
    Left = 0
    Top = 110
    Width = 489
    Height = 248
    Align = alClient
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 6
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 489
      Height = 2
      Align = alTop
    end
    object DBPlantas: TdxDBGrid
      Left = 0
      Top = 28
      Width = 489
      Height = 220
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_PLAN_LINEA'
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
      PopupMenu = PMPlantas
      TabOrder = 0
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DSQPlantas
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
      OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      ShowRowFooter = True
      object DBPlantasNOMB_PLANTA: TdxDBGridMaskColumn
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PLANTA'
      end
      object DBPlantasNOMB_EMPRESA: TdxDBGridMaskColumn
        Width = 288
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_EMPRESA'
      end
    end
    object TBXDock1: TTBXDock
      Left = 0
      Top = 2
      Width = 489
      Height = 26
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        DockPos = 0
        FullSize = True
        TabOrder = 0
        object TBXItem2: TTBXItem
          Action = Acti_Nuev_Planta
          Caption = 'Asignar a una planta'
          DisplayMode = nbdmImageAndText
          ImageIndex = 0
          Images = _fMDI.imag_pequenas
        end
        object TBXItem1: TTBXItem
          Action = Acti_Elim_Planta
          DisplayMode = nbdmImageAndText
          ImageIndex = 2
          Images = _fMDI.imag_pequenas
        end
      end
    end
  end
  object Panel1: TPanel [7]
    Left = 0
    Top = 54
    Width = 489
    Height = 56
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object SCLDBLabel1: TSCLDBLabel
      Left = 18
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
      DataField = 'CODI_LINEA'
      Field = 'CODI_LINEA'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 18
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
      FocusControl = DBDescripcion
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Línea:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_LINEA'
      Field = 'NOMB_LINEA'
    end
    object DBCodigo: TdxDBEdit
      Left = 120
      Top = 8
      Width = 113
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_LINEA'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
    object DBDescripcion: TdxDBEdit
      Left = 120
      Top = 28
      Width = 241
      TabOrder = 1
      DataField = 'NOMB_LINEA'
      DataSource = data_ventana
      ReadOnly = False
      StyleController = padr_estilo
      StoredValues = 64
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 359
    Width = 489
    TabOrder = 5
    inherited padr_beve_abajo: TBevel
      Width = 483
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 489
    TabOrder = 7
  end
  inherited padr_acciones: TActionList
    object Acti_Nuev_Planta: TAction
      Caption = 'Nueva Planta'
      OnExecute = Acti_Nuev_PlantaExecute
    end
    object Acti_Elim_Planta: TAction
      Caption = 'Eliminar Planta'
      OnExecute = Acti_Elim_PlantaExecute
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_LINEAS'
    object Tabla_VentanaCONS_LINEA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_LINEA'
      Required = True
    end
    object Tabla_VentanaCODI_LINEA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_LINEA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_LINEA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object DSQPlantas: TDataSource
    AutoEdit = False
    DataSet = QPlantas
    Left = 56
    Top = 176
  end
  object QPlantas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT PL.CONS_PLANTA, P.NOMB_PLANTA, E.NOMB_EMPRESA,'
      ' PL.CONS_PLAN_LINEA'
      'FROM GLO_PLANTAS P, GLO_EMPRESAS E, GLO_PLAN_LINEAS PL'
      'WHERE P.CONS_EMPRESA = E.CONS_EMPRESA'
      ' AND P.CONS_PLANTA = PL.CONS_PLANTA'
      ' AND PL.CONS_LINEA = :CONS_LINEA'
      'ORDER BY P.CODI_PLANTA')
    Left = 24
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_LINEA'
        ParamType = ptInput
      end>
    object QPlantasCONS_PLANTA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PLANTA'
      Origin = 'DATA_BASE_PCP.GLO_PLAN_LINEAS.CONS_PLANTA'
    end
    object QPlantasNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Origin = 'DATA_BASE_PCP.GLO_PLANTAS.NOMB_PLANTA'
      Size = 60
    end
    object QPlantasNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_EMPRESAS.NOMB_EMPRESA'
      Size = 60
    end
    object QPlantasCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_PLAN_LINEAS.CONS_PLAN_LINEA'
    end
  end
  object PMPlantas: TTBXPopupMenu
    Left = 112
    Top = 243
    object TBXItem4: TTBXItem
      Action = Acti_Nuev_Planta
      Caption = 'Asignar a una planta'
      ImageIndex = 0
      Images = _fMDI.imag_pequenas
    end
    object TBXItem3: TTBXItem
      Action = Acti_Elim_Planta
      ImageIndex = 2
      Images = _fMDI.imag_pequenas
    end
  end
  object QEliminar_Planta: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQPlantas
    SQL.Strings = (
      'DELETE'
      'FROM GLO_PLAN_LINEAS'
      'WHERE CONS_PLAN_LINEA = :CONS_PLAN_LINEA')
    Left = 24
    Top = 211
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PLAN_LINEA'
        ParamType = ptUnknown
      end>
  end
end

inherited fn2_cont_cons_lote_unid_fecha: Tfn2_cont_cons_lote_unid_fecha
  Left = 21
  Top = 147
  Width = 963
  Height = 520
  Caption = 'Consulta de unidades por lote/fecha'
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dfsSplitter1: TdfsSplitter [0]
    Left = 401
    Top = 86
    Height = 368
    Cursor = crHSplit
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 955
  end
  inherited padr_pane_arriba: TPanel
    Width = 955
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 955
    inherited padr_beve_1: TBevel
      Width = 949
    end
  end
  inherited padr_pane_info: TPanel
    Top = 462
    Width = 955
    inherited _DBFecha_Creacion: TdxDBEdit
      DataField = ''
      DataSource = nil
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      DataField = ''
      DataSource = nil
      Height = 18
      StoredValues = 64
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 454
    Width = 955
    inherited padr_beve_abajo: TBevel
      Width = 949
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 955
  end
  object Panel1: TPanel [7]
    Left = 0
    Top = 54
    Width = 955
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 272
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'No. orden:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 544
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Lote:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 16
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
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object comb_prod_ordenes: TPCPLookUpComboEdit
      Left = 376
      Top = 8
      Width = 145
      Height = 21
      DropDownCount = 8
      KeyField = 'cons_prod_orden'
      ListField = 'nume_prod_orden'
      ListSource = data_prod_ordenes
      TabOrder = 1
      OnChange = comb_prod_ordenesChange
      DirectInput = False
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 648
      Top = 8
      Width = 73
      Height = 21
      DropDownCount = 8
      DataField = 'cons_prod_lote'
      DataSource = data_ventana
      KeyField = 'cons_prod_lote'
      ListField = 'nume_lote'
      ListSource = data_prod_lotes
      TabOrder = 2
      OnChange = doGuardar
      DirectInput = False
    end
    object dxDBDateEdit1: TdxDBDateEdit
      Left = 120
      Top = 8
      Width = 137
      TabOrder = 0
      DataField = 'fecha'
      DataSource = data_ventana
      StyleController = padr_estilo
      OnChange = doGuardar
      DateOnError = deToday
      DateValidation = True
    end
  end
  object Panel2: TPanel [8]
    Left = 0
    Top = 86
    Width = 401
    Height = 368
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 7
    object grid: TdxDBGrid
      Left = 2
      Top = 2
      Width = 397
      Height = 364
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SECU_OPERACION'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      DataSource = data_consulta
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object gridSECU_OPERACION: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SECU_OPERACION'
      end
      object gridCODI_OPER_COSTURA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_OPER_COSTURA'
      end
      object gridNOMB_OPER_COSTURA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 197
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_OPER_COSTURA'
      end
      object gridCANT_UNIDADES: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CANT_UNIDADES'
        SummaryFooterType = cstAvg
        SummaryFooterField = 'CANT_UNIDADES'
        SummaryFooterFormat = ',0'
      end
      object gridTIEMPO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIEMPO'
        SummaryFooterType = cstSum
        SummaryFooterField = 'TIEMPO'
        SummaryFooterFormat = ',0.00'
      end
    end
  end
  object Panel3: TPanel [9]
    Left = 411
    Top = 86
    Width = 544
    Height = 368
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 8
    object grafica: TDBChart
      Left = 0
      Top = 0
      Width = 544
      Height = 368
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.AdjustFrame = False
      Title.Text.Strings = (
        '')
      Title.Visible = False
      View3DOptions.Zoom = 93
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Series1: TBarSeries
        ColorEachPoint = True
        Marks.ArrowLength = 20
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = quer_consulta
        SeriesColor = clRed
        ShowInLegend = False
        Title = 'Datos'
        XLabelsSource = 'SECU_OPERACION'
        BarPen.Color = 15395562
        BarPen.Style = psDashDotDot
        BarPen.SmallDots = True
        BarPen.Visible = False
        BarStyle = bsCilinder
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1
        XValues.Order = loAscending
        XValues.ValueSource = 'SECU_OPERACION'
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1
        YValues.Order = loNone
        YValues.ValueSource = 'CANT_UNIDADES'
      end
    end
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_Ventana
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_ayuda: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
    end
    inherited acti_padr_cancelar_2: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
  end
  object quer_consulta: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select *'
      'FROM CON_PROD_ORDE_LOTE_DIA(:cons_prod_lote,'
      ':fecha)')
    Left = 40
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fecha'
        ParamType = ptInput
      end>
    object quer_consultaSECU_OPERACION: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'SECU_OPERACION'
    end
    object quer_consultaCODI_OPER_COSTURA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_OPER_COSTURA'
      Size = 12
    end
    object quer_consultaNOMB_OPER_COSTURA: TStringField
      DisplayLabel = 'Operación'
      FieldName = 'NOMB_OPER_COSTURA'
      Size = 60
    end
    object quer_consultaCANT_UNIDADES: TIntegerField
      DisplayLabel = 'Unidades'
      FieldName = 'CANT_UNIDADES'
      DisplayFormat = ',0'
    end
    object quer_consultaTIEMPO: TFloatField
      DisplayLabel = 'Tiempo'
      FieldName = 'TIEMPO'
      DisplayFormat = ',0.00'
    end
  end
  object data_consulta: TDataSource
    DataSet = quer_consulta
    Left = 72
    Top = 176
  end
  object quer_prod_ordenes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'select cons_prod_orden, nume_prod_orden'
      'from pcp_prod_ordenes'
      'order by nume_prod_orden')
    Left = 138
    Top = 12
    object quer_prod_ordenesCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
    end
    object quer_prod_ordenesNUME_PROD_ORDEN: TStringField
      FieldName = 'NUME_PROD_ORDEN'
      Size = 12
    end
  end
  object data_prod_ordenes: TDataSource
    DataSet = quer_prod_ordenes
    Left = 170
    Top = 12
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_prod_lote'
        DataType = ftInteger
      end
      item
        Name = 'fecha'
        DataType = ftDate
      end>
    Left = 218
    Top = 4
    object myTabla_Ventanacons_prod_lote: TIntegerField
      FieldName = 'cons_prod_lote'
    end
    object myTabla_Ventanafecha: TDateField
      FieldName = 'fecha'
    end
  end
  object quer_prod_lotes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_prod_ordenes
    SQL.Strings = (
      'Select cons_prod_lote,'
      'cast (nume_lote as varchar(12)) as nume_lote'
      'from pcp_prod_lotes'
      'where cons_prod_orden = :cons_prod_orden'
      'order by nume_lote')
    Left = 138
    Top = 44
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptUnknown
      end>
    object quer_prod_lotesCONS_PROD_LOTE: TIntegerField
      FieldName = 'CONS_PROD_LOTE'
    end
    object quer_prod_lotesNUME_LOTE: TStringField
      FieldName = 'NUME_LOTE'
      Size = 12
    end
  end
  object data_prod_lotes: TDataSource
    DataSet = quer_prod_lotes
    Left = 168
    Top = 44
  end
end

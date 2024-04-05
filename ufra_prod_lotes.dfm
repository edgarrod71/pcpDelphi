object ffra_prod_lotes: Tffra_prod_lotes
  Left = 0
  Top = 0
  Width = 795
  Height = 424
  TabOrder = 0
  object TBXDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 795
    Height = 26
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 0
      DragHandleStyle = dhDouble
      FullSize = True
      TabOrder = 0
      object TBXItem4: TTBXItem
        Action = acti_nuevo
        DisplayMode = nbdmImageAndText
        ImageIndex = 0
        Images = _fMDI.imag_pequenas
      end
      object TBXItem1: TTBXItem
        Action = acti_eliminar
        DisplayMode = nbdmImageAndText
        ImageIndex = 2
        Images = _fMDI.imag_pequenas
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object TBXItem3: TTBXItem
        Action = acti_guardar
        DisplayMode = nbdmImageAndText
        ImageIndex = 5
        Images = _fMDI.imag_pequenas
      end
      object TBXItem2: TTBXItem
        Action = acti_cancelar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_pequenas
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object TBXItem5: TTBXItem
        Action = acti_actualizar
        DisplayMode = nbdmImageAndText
        ImageIndex = 4
        Images = _fMDI.imag_pequenas
      end
    end
  end
  object PCPFrame2: TPCPFrame
    Tag = 398
    Left = 0
    Top = 26
    Width = 337
    Height = 398
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Caption = 'Lotes existentes'
    Titulo_Color = 16244694
    Boton_Visible = False
    BorderWidthIn = 4
    object grid_lotes: TdxDBGrid
      Left = 6
      Top = 26
      Width = 325
      Height = 366
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_PROD_LOTE'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      PopupMenu = pop_lotes
      TabOrder = 1
      OnDblClick = doEstablecerLoteManual
      DataSource = data_prod_lotes
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object grid_lotesNUME_LOTE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Sorted = csUp
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUME_LOTE'
      end
      object grid_lotesFECH_SISTEMA: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 176
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_SISTEMA'
      end
      object grid_lotesUSUA_SISTEMA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUA_SISTEMA'
      end
    end
  end
  object PCPFrame1: TPCPFrame
    Tag = 398
    Left = 337
    Top = 26
    Width = 458
    Height = 398
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Caption = 'Responsables por etapa'
    Titulo_Color = 16244694
    Boton_Visible = False
    BorderWidthIn = 4
    object grid_responsables: TdxDBGrid
      Left = 6
      Top = 26
      Width = 446
      Height = 366
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_PROD_ORDE_RESPONSABLE'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 1
      DataSource = data_prod_responsables
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSort, edgoDblClick, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object grid_responsablesCONS_PROD_ORDE_RESPONSABLE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 126
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PROD_ORDE_RESPONSABLE'
      end
      object grid_responsablesCONS_PROD_ORDEN: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PROD_ORDEN'
      end
      object grid_responsablesNUME_LOTE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUME_LOTE'
      end
      object grid_responsablesCONS_PROD_ETAPA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PROCESO'
      end
      object grid_responsablesNOMB_PROD_ETAPA: TdxDBGridColumn
        Color = 15000804
        HeaderAlignment = taCenter
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PROCESO'
      end
      object grid_responsablesUSUA_RESPONSABLE: TdxDBGridPickColumn
        HeaderAlignment = taCenter
        Width = 157
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUA_RESPONSABLE'
        ItemsSorted = True
        ImmediateDropDown = False
        Revertable = True
      end
      object grid_responsablesFECH_ESTIMADA: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Width = 144
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_ESTIMADA'
      end
      object grid_responsablesHECHO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HECHO'
      end
      object grid_responsablesPORC_AVANCE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 57
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PORC_AVANCE'
      end
      object grid_responsablesOBSERVACIONES: TdxDBGridMemoColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBSERVACIONES'
      end
      object grid_responsablesFECH_SISTEMA: TdxDBGridDateColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_SISTEMA'
        SaveTime = False
      end
      object grid_responsablesUSUA_SISTEMA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUA_SISTEMA'
      end
    end
  end
  object acti_frame: TActionList
    Left = 245
    Top = 58
    object acti_cancelar: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      ImageIndex = 8
      ShortCut = 16449
      DataSource = data_prod_responsables
    end
    object acti_nuevo: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Nuevo lote'
      ImageIndex = 4
      ShortCut = 16462
      DataSource = data_prod_lotes
    end
    object acti_guardar: TDataSetPost
      Category = 'Dataset'
      Caption = 'Guardar'
      ImageIndex = 7
      ShortCut = 16455
      DataSource = data_prod_responsables
    end
    object acti_eliminar: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Eliminar lote'
      ImageIndex = 5
      ShortCut = 16453
      DataSource = data_prod_lotes
    end
    object acti_actualizar: TDataSetRefresh
      Category = 'Dataset'
      Caption = 'Actualizar'
      ImageIndex = 9
      ShortCut = 116
      OnExecute = acti_actualizarExecute
      DataSource = data_prod_lotes
    end
  end
  object tabl_prod_lotes: TTable
    AfterInsert = tabl_prod_lotesAfterInsert
    BeforePost = tabl_prod_lotesBeforePost
    AfterPost = tabl_prod_lotesAfterPost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PROD_ORDEN'
    MasterFields = 'CONS_PROD_ORDEN'
    MasterSource = data_prod_ordenes
    TableName = 'PCP_PROD_LOTES'
    Left = 32
    Top = 82
    object tabl_prod_lotesCONS_PROD_LOTE: TIntegerField
      FieldName = 'CONS_PROD_LOTE'
      Required = True
    end
    object tabl_prod_lotesCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
      Required = True
    end
    object tabl_prod_lotesNUME_LOTE: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'NUME_LOTE'
      Required = True
    end
    object tabl_prod_lotesCAPA_SIMULACION: TIntegerField
      FieldName = 'CAPA_SIMULACION'
    end
    object tabl_prod_lotesFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_prod_lotesUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object data_prod_lotes: TDataSource
    AutoEdit = False
    DataSet = tabl_prod_lotes
    Left = 64
    Top = 82
  end
  object tabl_prod_ordenes: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'PCP_PROD_ORDENES'
    Left = 51
    Top = 10
    object tabl_prod_ordenesCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
      Required = True
    end
    object tabl_prod_ordenesNUME_PROD_ORDEN: TStringField
      FieldName = 'NUME_PROD_ORDEN'
      Required = True
      Size = 12
    end
    object tabl_prod_ordenesCONT_POR_LOTES: TIntegerField
      FieldName = 'CONT_POR_LOTES'
    end
    object tabl_prod_ordenesANULADA: TIntegerField
      FieldName = 'ANULADA'
    end
    object tabl_prod_ordenesFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_prod_ordenesUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object data_prod_ordenes: TDataSource
    AutoEdit = False
    DataSet = tabl_prod_ordenes
    Left = 83
    Top = 10
  end
  object tabl_prod_responsables: TTable
    AfterOpen = tabl_prod_responsablesAfterOpen
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PROD_ORDEN;NUME_LOTE;CONS_PROCESO'
    MasterFields = 'CONS_PROD_ORDEN;NUME_LOTE'
    MasterSource = data_prod_lotes
    TableName = 'PCP_PROD_ORDE_RESPONSABLES'
    Left = 361
    Top = 82
    object tabl_prod_responsablesCONS_PROD_ORDE_RESPONSABLE: TIntegerField
      FieldName = 'CONS_PROD_ORDE_RESPONSABLE'
      ReadOnly = True
      Required = True
    end
    object tabl_prod_responsablesCONS_PROD_ORDEN: TIntegerField
      FieldName = 'CONS_PROD_ORDEN'
      ReadOnly = True
      Required = True
    end
    object tabl_prod_responsablesNUME_LOTE: TIntegerField
      FieldName = 'NUME_LOTE'
      ReadOnly = True
    end
    object tabl_prod_responsablesCONS_PROCESO: TIntegerField
      FieldName = 'CONS_PROCESO'
      ReadOnly = True
      Required = True
    end
    object tabl_prod_responsablesUSUA_RESPONSABLE: TStringField
      DisplayLabel = 'Responsable'
      FieldName = 'USUA_RESPONSABLE'
      LookupResultField = 'user_name'
    end
    object tabl_prod_responsablesFECH_ESTIMADA: TDateTimeField
      DisplayLabel = 'Fecha estimada'
      FieldName = 'FECH_ESTIMADA'
    end
    object tabl_prod_responsablesHECHO: TIntegerField
      FieldName = 'HECHO'
      ReadOnly = True
    end
    object tabl_prod_responsablesPORC_AVANCE: TSmallintField
      FieldName = 'PORC_AVANCE'
      ReadOnly = True
    end
    object tabl_prod_responsablesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      ReadOnly = True
      BlobType = ftMemo
      Size = 1000
    end
    object tabl_prod_responsablesFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      ReadOnly = True
    end
    object tabl_prod_responsablesUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      ReadOnly = True
    end
    object tabl_prod_responsablesNOMB_PROCESO: TStringField
      DisplayLabel = 'Proceso'
      FieldKind = fkLookup
      FieldName = 'NOMB_PROCESO'
      LookupDataSet = quer_procesos
      LookupKeyFields = 'CONS_PROCESO'
      LookupResultField = 'NOMB_PROCESO'
      KeyFields = 'CONS_PROCESO'
      ReadOnly = True
      Size = 60
      Lookup = True
    end
  end
  object data_prod_responsables: TDataSource
    DataSet = tabl_prod_responsables
    Left = 393
    Top = 82
  end
  object quer_procesos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_proceso, nomb_proceso'
      'from pcp_procesos'
      'order by cons_proceso')
    Left = 361
    Top = 114
    object quer_procesosCONS_PROCESO: TIntegerField
      FieldName = 'CONS_PROCESO'
    end
    object quer_procesosNOMB_PROCESO: TStringField
      FieldName = 'NOMB_PROCESO'
      Size = 60
    end
  end
  object data_usuarios: TDataSource
    AutoEdit = False
    DataSet = _fMDI.tabl_usuarios
    Left = 360
    Top = 152
  end
  object pop_lotes: TTBXPopupMenu
    Left = 40
    Top = 122
    object TBXItem6: TTBXItem
      Caption = 'Establecer número manualmente'
      OnClick = doEstablecerLoteManual
    end
  end
  object quer_nume_lote: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_prod_ordenes
    SQL.Strings = (
      'SELECT MAX(NUME_LOTE) as nume_lote'
      '    FROM PCP_PROD_LOTES'
      '    WHERE CONS_PROD_ORDEN = :cons_prod_orden')
    Left = 40
    Top = 162
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_orden'
        ParamType = ptInput
      end>
  end
end

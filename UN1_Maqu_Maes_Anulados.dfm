inherited FN1_Maqu_Maes_Anulados: TFN1_Maqu_Maes_Anulados
  Left = 255
  Top = 152
  Width = 743
  Height = 553
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 735
  end
  inherited padr_shap_xp_down: TShape
    Top = 516
    Width = 735
  end
  object dfsSplitter1: TdfsSplitter [2]
    Left = 369
    Top = 161
    Height = 355
    Cursor = crHSplit
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 735
    inherited padr_barra: TTBXToolbar
      object TBXItem1: TTBXItem [0]
        Action = Acti_Anulados
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 735
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 735
    inherited padr_beve_1: TBevel
      Width = 729
    end
    inherited padr_sepa_new: TShape
      Width = 729
    end
  end
  inherited padr_pane_info: TPanel
    Top = 525
    Width = 735
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
  object PCPFrame1: TPCPFrame [7]
    Left = 0
    Top = 54
    Width = 735
    Height = 107
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Caption = 'Información de la anulación'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object SCLDBLabel1: TSCLDBLabel
      Left = 32
      Top = 25
      Width = 89
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
      FocusControl = CBResponsable
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Responsable:'
      Transparent = True
      DataSource = DSAnulados
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERSONAL'
      Field = 'CONS_PERSONAL'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 32
      Top = 46
      Width = 89
      Height = 54
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
      Caption = 'Observaciones:'
      Layout = tlTop
      Transparent = True
      DataSource = DSAnulados
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'OBSERVACIONES'
      Field = 'OBSERVACIONES'
    end
    object CBResponsable: TPCPLookUpComboEdit
      Left = 123
      Top = 25
      Width = 222
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_PERSONAL'
      DataSource = DSAnulados
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQResponsables
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object SCLButton2: TTBXButtonSCL
      Left = 350
      Top = 24
      Width = 21
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 2
      TabStop = False
    end
    object DBObservaciones: TdxDBEdit
      Left = 123
      Top = 46
      Width = 334
      TabOrder = 3
      AutoSize = False
      DataField = 'OBSERVACIONES'
      DataSource = DSAnulados
      StyleController = padr_estilo
      Height = 54
    end
  end
  object PCPFrame2: TPCPFrame [8]
    Left = 0
    Top = 161
    Width = 369
    Height = 355
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
    TabOrder = 7
    Caption = 'Recursos'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object DBRecursos: TdxDBGrid
      Left = 2
      Top = 21
      Width = 365
      Height = 332
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_RECURSO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
      DataSource = DSQRecursos
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OnChangeNodeEx = DBRecursosChangeNodeEx
      OnSelectedCountChange = DBRecursosSelectedCountChange
      object DBRecursosCONS_RECURSO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_RECURSO'
      end
      object DBRecursosCODI_RECURSO: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_RECURSO'
      end
      object DBRecursosCODI_INTE_RECURSO: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_INTE_RECURSO'
      end
      object DBRecursosNOMB_RECU_GRUPO: TdxDBGridMaskColumn
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_RECU_GRUPO'
      end
      object DBRecursosNOMB_RECU_TIPO: TdxDBGridMaskColumn
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_RECU_TIPO'
      end
      object DBRecursosNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_RECU_FAMILIA'
      end
    end
  end
  object PCPFrame3: TPCPFrame [9]
    Tag = 325
    Left = 379
    Top = 161
    Width = 356
    Height = 355
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
    TabOrder = 8
    Caption = 'Movimientos'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object DBMovimientos: TdxDBGrid
      Left = 2
      Top = 21
      Width = 352
      Height = 332
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_RECU_MOVIMIENTO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
      DataSource = DSQMovimientos
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      object DBMovimientosCONS_RECU_MOVIMIENTO: TdxDBGridMaskColumn
        Visible = False
        Width = 151
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_RECU_MOVIMIENTO'
      end
      object DBMovimientosCONS_RECURSO: TdxDBGridMaskColumn
        Visible = False
        Width = 102
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_RECURSO'
      end
      object DBMovimientosCODI_RECURSO: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_RECURSO'
      end
      object DBMovimientosCODI_INTE_RECURSO: TdxDBGridMaskColumn
        Visible = False
        Width = 209
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_INTE_RECURSO'
      end
      object DBMovimientosNOMB_RECU_TIPO_MOVIMIENTO: TdxDBGridMaskColumn
        Width = 135
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_RECU_TIPO_MOVIMIENTO'
      end
      object DBMovimientosNOMB_TIPO_DOCUMENTO: TdxDBGridMaskColumn
        Width = 149
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_TIPO_DOCUMENTO'
      end
      object DBMovimientosNUME_DOCUMENTO: TdxDBGridMaskColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUME_DOCUMENTO'
      end
      object DBMovimientosFECH_INICIAL: TdxDBGridDateColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_INICIAL'
      end
      object DBMovimientosFECH_FINAL: TdxDBGridDateColumn
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_FINAL'
      end
      object DBMovimientosOBSERVACIONES: TdxDBGridMaskColumn
        Width = 300
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBSERVACIONES'
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 517
    Width = 735
    inherited padr_beve_abajo: TBevel
      Width = 729
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 735
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
    object Acti_Anulados: TAction
      Caption = 'Anular Movimientos'
      Hint = 'Anular Movimientos'
      ImageIndex = 4
      OnExecute = Acti_AnuladosExecute
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList
    Left = 697
    Top = 40
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 696
    Top = 12
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_ACCE_MOVIMIENTOS'
  end
  inherited padr_estilo: TdxEditStyleController
    Top = 106
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Top = 106
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 666
    Top = 74
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 698
    Top = 74
  end
  inherited imag_pequenas: TImageList
    Left = 667
    Top = 42
  end
  inherited padr_pict_container: TPictureContainer
    Left = 698
    Top = 141
  end
  object QRecursos: TQuery
    DatabaseName = 'data_base_pcp'
    Left = 72
    Top = 249
    object QRecursosCONS_RECURSO: TIntegerField
      DisplayLabel = 'Cons. Recurso'
      FieldName = 'CONS_RECURSO'
    end
    object QRecursosCODI_RECURSO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECURSO'
      Size = 12
    end
    object QRecursosCODI_INTE_RECURSO: TStringField
      DisplayLabel = 'Código Interno'
      FieldName = 'CODI_INTE_RECURSO'
    end
    object QRecursosNOMB_RECU_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_RECU_GRUPO'
      Size = 60
    end
    object QRecursosNOMB_RECU_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NOMB_RECU_TIPO'
      Size = 60
    end
    object QRecursosNOMB_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'NOMB_RECU_FAMILIA'
      Size = 60
    end
  end
  object DSQRecursos: TDataSource
    DataSet = QRecursos
    Left = 104
    Top = 249
  end
  object TAnulados: TRxMemoryData
    FieldDefs = <>
    BeforePost = TAnuladosBeforePost
    Left = 72
    Top = 281
    object TAnuladosCONS_PERSONAL: TIntegerField
      DisplayLabel = 'Responsable'
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object TAnuladosOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Required = True
      Size = 240
    end
  end
  object DSAnulados: TDataSource
    DataSet = TAnulados
    Left = 104
    Top = 281
  end
  object QResponsables: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERSONAL, NOMB_COMPLETO'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 72
    Top = 313
    object QResponsablesCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Origin = 'DATA_BASE_PCP.GLO_PERSONAL.CONS_PERSONAL'
    end
    object QResponsablesNOMB_COMPLETO: TStringField
      FieldName = 'NOMB_COMPLETO'
      Origin = 'DATA_BASE_PCP.GLO_PERSONAL.NOMB_COMPLETO'
      Size = 102
    end
  end
  object DSQResponsables: TDataSource
    AutoEdit = False
    DataSet = QResponsables
    Left = 104
    Top = 313
  end
  object QInsertar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'INSERT INTO GLO_RECU_MOVI_ANULADOS'
      ' (CONS_RECU_MOVIMIENTO, CONS_PERSONAL, OBSERVACIONES)'
      'VALUES (:CONS_RECU_MOVIMIENTO, :CONS_PERSONAL, :OBSERVACIONES)')
    Left = 40
    Top = 281
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_RECU_MOVIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_PERSONAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OBSERVACIONES'
        ParamType = ptInput
      end>
  end
  object QMovimientos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT M.CONS_RECU_MOVIMIENTO, M.CONS_RECURSO, M.FECH_INICIAL,'
      ' M.FECH_FINAL, M.NUME_DOCUMENTO, M.OBSERVACIONES,'
      ' T.NOMB_RECU_TIPO_MOVIMIENTO, D.NOMB_TIPO_DOCUMENTO,'
      ' T.CONS_FAMI_MOVIMIENTO'
      'FROM GLO_RECU_MOVIMIENTOS M, GLO_RECU_TIPO_MOVIMIENTO T,'
      ' GLO_TIPO_DOCUMENTO D'
      'WHERE M.CONS_RECU_TIPO_MOVIMIENTO = T.CONS_RECU_TIPO_MOVIMIENTO'
      ' AND M.CONS_TIPO_DOCUMENTO = D.CONS_TIPO_DOCUMENTO'
      ' AND M.CONS_RECU_MOVIMIENTO NOT IN ('
      '  SELECT CONS_RECU_MOVIMIENTO'
      '  FROM GLO_RECU_MOVI_ANULADOS)'
      'ORDER BY M.CONS_RECU_MOVIMIENTO')
    Left = 440
    Top = 249
    object QMovimientosCONS_RECU_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_RECU_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_MOVIMIENTOS.CONS_PERS_MOVIMIENTO'
    end
    object QMovimientosCONS_RECURSO: TIntegerField
      FieldName = 'CONS_RECURSO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_MOVIMIENTOS.CONS_PERSONAL'
    end
    object QMovimientosFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_MOVIMIENTOS.FECH_INICIAL'
    end
    object QMovimientosFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_MOVIMIENTOS.FECH_FINAL'
    end
    object QMovimientosNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_MOVIMIENTOS.NUME_DOCUMENTO'
      Size = 12
    end
    object QMovimientosOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.GLO_PERS_MOVIMIENTOS.OBSERVACIONES'
      Size = 240
    end
    object QMovimientosNOMB_PERS_TIPO_MOVIMIENTO: TStringField
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'NOMB_RECU_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.NOMB_PERS_TIPO_MOVIMIENTO'
      Size = 60
    end
    object QMovimientosNOMB_PERS_MOVI_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'NOMB_TIPO_DOCUMENTO'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_MOVI_TIPO_DOCUMENTO.NOMB_PERS_MOVI_TIPO_D' +
        'OCUMENTO'
      Size = 60
    end
    object QMovimientosCODI_RECURSO: TStringField
      DisplayLabel = 'Cód. Recurso'
      FieldKind = fkLookup
      FieldName = 'CODI_RECURSO'
      LookupDataSet = QRecursos
      LookupKeyFields = 'CONS_RECURSO'
      LookupResultField = 'CODI_RECURSO'
      KeyFields = 'CONS_RECURSO'
      Size = 12
      Lookup = True
    end
    object QMovimientosCODI_INTE_RECURSO: TStringField
      DisplayLabel = 'Cód. Inte. Recurso'
      FieldKind = fkLookup
      FieldName = 'CODI_INTE_RECURSO'
      LookupDataSet = QRecursos
      LookupKeyFields = 'CONS_RECURSO'
      LookupResultField = 'CODI_INTE_RECURSO'
      KeyFields = 'CONS_RECURSO'
      Lookup = True
    end
  end
  object DSQMovimientos: TDataSource
    DataSet = QMovimientos
    Left = 472
    Top = 249
  end
end

inherited fn1_refe_grup_tall_detalle: Tfn1_refe_grup_tall_detalle
  Left = 52
  Top = 161
  Width = 633
  Height = 371
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object dfsSplitter1: TdfsSplitter [0]
    Left = 301
    Top = 52
    Height = 253
    Cursor = crHSplit
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 625
    inherited padr_barra: TTBXToolbar
      ItemTransparency = itEnable
      inherited padr_boto_guardar: TTBXItem [0]
      end
      inherited padr_boto_guar_cerrar: TTBXItem [1]
      end
      inherited padr_sepa_1: TTBXSeparatorItem [2]
      end
      inherited padr_boto_nuevo: TTBXItem [3]
      end
      inherited padr_boto_modificar: TTBXItem [4]
      end
      inherited padr_boto_eliminar: TTBXItem [5]
      end
      object TBXItem8: TTBXItem [8]
        Action = padr_acti_duplicar
      end
      object TBXItem1: TTBXItem [9]
        Action = padr_acti_elim_todos
        Images = padr_imag_tem1_colo
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 625
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 625
    inherited padr_beve_1: TBevel
      Width = 619
    end
  end
  inherited padr_pane_info: TPanel
    Top = 305
    Width = 625
    Caption = '|'
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 329
    Width = 625
  end
  object AdvPanel1: TAdvPanel [6]
    Left = 0
    Top = 52
    Width = 301
    Height = 253
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 5
    UseDockManager = True
    AnchorHint = False
    AutoSize.Enabled = False
    AutoSize.Height = True
    AutoSize.Width = True
    AutoHideChildren = False
    BackgroundPosition = bpTopLeft
    BorderColor = clBtnFace
    BorderShadow = False
    BorderWidth = 3
    Buffered = True
    CanMove = False
    CanSize = False
    Caption.ButtonPosition = cbpRight
    Caption.Color = clBtnShadow
    Caption.ColorTo = clBtnShadow
    Caption.CloseColor = clBtnShadow
    Caption.CloseButton = False
    Caption.CloseButtonColor = clWhite
    Caption.Flat = False
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Height = 20
    Caption.Indent = 5
    Caption.MinMaxButton = True
    Caption.MinMaxButtonColor = clWhite
    Caption.ShadeLight = 255
    Caption.ShadeGrain = 32
    Caption.ShadeType = stNormal
    Caption.Shape = csRectangle
    Caption.Text = 'Información del grupo'
    Caption.TopIndent = 3
    Caption.Visible = True
    Collaps = False
    CollapsColor = clBtnFace
    CollapsDelay = 0
    CollapsSteps = 0
    ColorTo = clNone
    FixedTop = False
    FixedLeft = False
    FixedHeight = False
    FixedWidth = False
    FreeOnClose = False
    Hover = False
    HoverColor = clBlack
    HoverFontColor = clBlack
    Indent = 0
    ShadowColor = clBlack
    ShadowOffset = 0
    ShowMoveCursor = False
    Styler = padr_esti_panel
    TextVAlign = tvaTop
    TopIndent = 0
    URLColor = clBlue
    FullHeight = 0
    object SCLDBLabel1: TSCLDBLabel
      Left = 7
      Top = 24
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
      FocusControl = dxDBEdit1
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
      DataField = 'CODI_GRUP_TALLAS'
      Field = 'CODI_GRUP_TALLAS'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 7
      Top = 47
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombre grupo:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_GRUP_TALLAS'
      Field = 'NOMB_GRUP_TALLAS'
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 7
      Top = 72
      Width = 100
      Height = 94
      Alive = True
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBMemo1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Observaciones:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'OBSERVACIONES'
      Field = 'OBSERVACIONES'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 109
      Top = 24
      Width = 121
      Style.BorderStyle = xbsFlat
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_GRUP_TALLAS'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 109
      Top = 47
      Width = 185
      Style.BorderStyle = xbsFlat
      TabOrder = 1
      DataField = 'NOMB_GRUP_TALLAS'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBMemo1: TdxDBMemo
      Left = 109
      Top = 72
      Width = 185
      Style.BorderStyle = xbsFlat
      TabOrder = 2
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 94
    end
  end
  object AdvPanel2: TAdvPanel [7]
    Left = 311
    Top = 52
    Width = 282
    Height = 253
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 6
    UseDockManager = True
    AnchorHint = False
    AutoSize.Enabled = False
    AutoSize.Height = True
    AutoSize.Width = True
    AutoHideChildren = False
    BackgroundPosition = bpTopLeft
    BorderColor = clBtnFace
    BorderShadow = False
    BorderWidth = 3
    Buffered = True
    CanMove = False
    CanSize = False
    Caption.ButtonPosition = cbpRight
    Caption.Color = clBtnShadow
    Caption.ColorTo = clBtnShadow
    Caption.CloseColor = clBtnShadow
    Caption.CloseButton = False
    Caption.CloseButtonColor = clWhite
    Caption.Flat = False
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Height = 20
    Caption.Indent = 5
    Caption.MinMaxButton = True
    Caption.MinMaxButtonColor = clWhite
    Caption.ShadeLight = 255
    Caption.ShadeGrain = 32
    Caption.ShadeType = stNormal
    Caption.Shape = csRectangle
    Caption.Text = 'Tallas del grupo'
    Caption.TopIndent = 3
    Caption.Visible = True
    Collaps = False
    CollapsColor = clBtnFace
    CollapsDelay = 0
    CollapsSteps = 0
    ColorTo = clNone
    FixedTop = False
    FixedLeft = False
    FixedHeight = False
    FixedWidth = False
    FreeOnClose = False
    Hover = False
    HoverColor = clBlack
    HoverFontColor = clBlack
    Indent = 0
    ShadowColor = clBlack
    ShadowOffset = 0
    ShowMoveCursor = False
    Styler = padr_esti_panel
    TextVAlign = tvaTop
    TopIndent = 0
    URLColor = clBlue
    FullHeight = 0
    object grid_detalle: TdxDBGrid
      Left = 3
      Top = 23
      Width = 276
      Height = 227
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SECU_TALLA'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      PopupMenu = pop_grid
      TabOrder = 0
      DataSource = data_detalle
      Filter.CaseInsensitive = True
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      object grid_detalleCODI_GRUP_TALLAS: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 94
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_GRUP_TALLAS'
      end
      object grid_detalleCODI_REFE_TEMPORADA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 117
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_REFE_TEMPORADA'
      end
      object grid_detalleSECU_TALLA: TdxDBGridMaskColumn
        Color = clBtnFace
        HeaderAlignment = taCenter
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SECU_TALLA'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '0'
      end
      object grid_detalleTALLA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TALLA'
      end
      object grid_detalleColumn5: TdxDBGridColumn
        Caption = 'Talla Aternativa'
        HeaderAlignment = taCenter
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TALL_ALTERNATIVA'
      end
    end
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_nuevo: TDataSetInsert
      Visible = True
      DataSource = data_detalle
    end
    inherited padr_acti_modificar: TDataSetEdit
      Visible = True
      DataSource = data_detalle
    end
    inherited padr_acti_eliminar: TDataSetDelete
      Visible = True
      DataSource = data_detalle
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      OnExecute = padr_acti_duplicarExecute
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      OnExecute = padr_acti_elim_todosExecute
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList
    Left = 453
    Top = 12
  end
  inherited Variables: TSCLPropiedadesForm
    NombreAMostrar = 'Grupo de tallas de producto'
    TipoGenero = geEl
  end
  inherited Tabla_Ventana: TTable
    AfterPost = tabl_grup_tallasAfterPost
    TableName = 'GLO_GRUP_TALLAS'
    object Tabla_VentanaCODI_GRUP_TALLAS: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_GRUP_TALLAS'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_GRUP_TALLAS: TStringField
      DisplayLabel = 'Nombre grupo'
      FieldName = 'NOMB_GRUP_TALLAS'
      Required = True
      Size = 60
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaOBSERVACIONES: TMemoField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 2000
    end
    object Tabla_VentanaCONS_GRUP_TALLAS: TIntegerField
      FieldName = 'CONS_GRUP_TALLAS'
      Required = True
    end
  end
  object data_detalle: TDataSource
    DataSet = tabl_grup_tall_detalle
    Left = 312
    Top = 2
  end
  object tabl_grup_tall_detalle: TTable
    BeforeInsert = tabl_grup_tall_detalleBeforeInsert
    AfterInsert = tabl_grup_tall_detalleAfterInsert
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_GRUP_TALLAS'
    MasterFields = 'CONS_GRUP_TALLAS'
    MasterSource = data_ventana
    TableName = 'GLO_GRUP_TALL_DETALLE'
    Left = 312
    Top = 26
    object tabl_grup_tall_detalleCONS_GRUP_TALLAS: TIntegerField
      FieldName = 'CONS_GRUP_TALLAS'
      Required = True
    end
    object tabl_grup_tall_detalleCONS_GRUP_TALL_DETALLE: TIntegerField
      FieldName = 'CONS_GRUP_TALL_DETALLE'
      Required = True
    end
    object tabl_grup_tall_detalleCODI_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Código temporada'
      FieldName = 'CODI_REFE_TEMPORADA'
      Required = True
      Visible = False
      Size = 12
    end
    object tabl_grup_tall_detalleSECU_TALLA: TIntegerField
      DisplayLabel = 'Secuencia'
      FieldName = 'SECU_TALLA'
      Required = True
    end
    object tabl_grup_tall_detalleTALLA: TStringField
      DisplayLabel = 'Talla'
      FieldName = 'TALLA'
      Required = True
      Size = 12
    end
    object tabl_grup_tall_detalleTALL_ALTERNATIVA: TStringField
      FieldName = 'TALL_ALTERNATIVA'
      Size = 12
    end
  end
  object pop_grid: TTBXPopupMenu
    Images = imag_pequenas
    Left = 496
    Top = 136
    object TBXItem5: TTBXItem
      Action = padr_acti_nuevo
      Images = imag_pequenas
    end
    object TBXItem6: TTBXItem
      Action = padr_acti_modificar
      Images = imag_pequenas
    end
    object TBXItem7: TTBXItem
      Action = padr_acti_eliminar
      Images = imag_pequenas
    end
  end
  object stor_duplicar: TStoredProc
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_REFE_TALL_DETA_DUPLICAR'
    ParamBindMode = pbByNumber
    Left = 384
    Top = 2
    ParamData = <
      item
        DataType = ftString
        Name = 'CODI_GRUP_TALLAS_ORIGEN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODI_GRUP_TALLAS_DESTINO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODI_REFE_TEMPORADA_ORIGEN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODI_REFE_TEMOPRADA_DESTINO'
        ParamType = ptInput
      end>
  end
  object stor_elim_todos: TStoredProc
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_REFE_TALL_DETA_ELIMINAR'
    ParamBindMode = pbByNumber
    Left = 384
    Top = 26
    ParamData = <
      item
        DataType = ftString
        Name = 'CODI_GRUP_TALLAS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODI_REFE_TEMPORADA'
        ParamType = ptInput
      end>
  end
end

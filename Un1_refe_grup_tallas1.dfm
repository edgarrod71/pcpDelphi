inherited fn1_refe_grup_tallas1: Tfn1_refe_grup_tallas1
  Left = 52
  Top = 89
  Width = 682
  Height = 548
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 674
  end
  inherited padr_shap_xp_down: TShape
    Top = 511
    Width = 674
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 674
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
      inherited padr_boto_vinculos: TTBXSubmenuItem [6]
      end
      inherited padr_sepa_31: TTBSeparatorItem [7]
      end
      object TBXItem8: TTBXItem [8]
        Action = padr_acti_duplicar
      end
      object TBXItem1: TTBXItem [9]
        Action = padr_acti_elim_todos
        Images = padr_imag_tem1_colo
      end
      inherited padr_sepa_33: TTBSeparatorItem [10]
      end
      inherited padr_boto_aceptar: TTBXItem [11]
      end
      inherited padr_boto_cancelar: TTBXItem [12]
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 674
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 47
    Width = 674
    inherited padr_beve_1: TBevel
      Width = 668
    end
    inherited padr_sepa_new: TShape
      Width = 668
    end
  end
  inherited padr_pane_info: TPanel
    Top = 512
    Width = 674
    Caption = '|'
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
  object PCPFrame1: TPCPFrame [6]
    Tag = 74
    Left = 0
    Top = 54
    Width = 674
    Height = 74
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
    Caption = 'Información del grupo de tallas'
    Titulo_Color = 16244694
    object SCLDBLabel1: TSCLDBLabel
      Left = 7
      Top = 27
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
    object dxDBEdit1: TdxDBEdit
      Left = 109
      Top = 27
      Width = 121
      TabOrder = 1
      CharCase = ecUpperCase
      DataField = 'CODI_GRUP_TALLAS'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 109
      Top = 47
      Width = 185
      TabOrder = 2
      DataField = 'NOMB_GRUP_TALLAS'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  object PCPFrame2: TPCPFrame [7]
    Tag = 354
    Left = 0
    Top = 128
    Width = 674
    Height = 383
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
    TabOrder = 7
    Caption = 'Tallas del grupo'
    Titulo_Color = 16244694
    BorderWidthIn = 4
    object grid_detalle: TdxDBGrid
      Left = 6
      Top = 51
      Width = 99
      Height = 326
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SECU_TALLA'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alLeft
      PopupMenu = pop_grid
      TabOrder = 1
      DataSource = data_detalle
      Filter.CaseInsensitive = True
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      ShowHeader = False
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
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SECU_TALLA'
      end
      object grid_detalleTALLA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 119
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TALLA'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '0'
      end
    end
    object TBXDock1: TTBXDock
      Left = 2
      Top = 25
      Width = 670
      Height = 26
      object barr_ventana: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        CloseButton = False
        DockMode = dmCannotFloatOrChangeDocks
        TabOrder = 0
        object TBXItem4: TTBXItem
          Action = acti_nuev_talla
          DisplayMode = nbdmImageAndText
          Images = imag_pequenas
        end
        object TBXItem3: TTBXItem
          Action = acti_modi_talla
          DisplayMode = nbdmImageAndText
          Images = imag_pequenas
        end
        object TBXItem2: TTBXItem
          Action = padr_acti_eliminar
          DisplayMode = nbdmImageAndText
          Images = imag_pequenas
        end
        object TBXItem9: TTBXItem
          Action = acti_elim_todas
          DisplayMode = nbdmImageAndText
          Images = imag_pequenas
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
        end
        object TBXItem10: TTBXItem
          Action = acti_duplicar
          DisplayMode = nbdmImageAndText
          Images = imag_pequenas
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 513
    Width = 674
    inherited padr_beve_abajo: TBevel
      Width = 668
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 45
    Width = 674
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_nuevo: TDataSetInsert
      Caption = '&Nueva talla'
      DataSource = data_detalle
    end
    inherited padr_acti_modificar: TDataSetEdit
      Caption = '&Modificar talla'
      Visible = True
      DataSource = data_detalle
    end
    inherited padr_acti_eliminar: TDataSetDelete
      Caption = '&Eliminar talla'
      Visible = True
      DataSource = data_detalle
    end
    inherited padr_acti_duplicar: TAction
      Caption = '&Duplicar asignación'
      Enabled = False
      OnExecute = acti_duplicarExecute
    end
    inherited padr_acti_elim_todos: TAction
      Caption = 'Eliminar todas las tallas'
      Enabled = False
      OnExecute = acti_elim_todosExecute
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
    object Tabla_VentanaCONS_GRUP_TALLAS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_GRUP_TALLAS'
      Required = True
    end
    object Tabla_VentanaCODI_GRUP_TALLAS: TStringField
      AutoGenerateValue = arDefault
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
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
  end
  object data_detalle: TDataSource [16]
    DataSet = tabl_grup_tall_detalle
    Left = 344
    Top = 2
  end
  object tabl_grup_tall_detalle: TTable [17]
    BeforeInsert = tabl_grup_tall_detalleBeforeInsert
    AfterInsert = tabl_grup_tall_detalleAfterInsert
    BeforePost = tabl_grup_tall_detalleBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_GRUP_TALLAS;SECU_TALLA'
    MasterFields = 'CONS_GRUP_TALLAS'
    MasterSource = data_ventana
    TableName = 'GLO_GRUP_TALL_DETALLE'
    Left = 312
    Top = 42
  end
  object pop_grid: TTBXPopupMenu [18]
    Left = 496
    Top = 136
    object TBXItem5: TTBXItem
      Action = acti_nuev_talla
      Images = _fMDI.imag_pequenas
    end
    object TBXItem6: TTBXItem
      Action = acti_modi_talla
      Images = _fMDI.imag_pequenas
    end
    object TBXItem7: TTBXItem
      Action = padr_acti_eliminar
      Images = _fMDI.imag_pequenas
    end
  end
  object stor_duplicar: TStoredProc [19]
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_GRUP_TALL_DETA_DUPLICAR'
    ParamBindMode = pbByNumber
    Left = 384
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_CONS_GRUP_TALLAS_ORIGEN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_CONS_GRUP_TALLAS_DESTINO'
        ParamType = ptInput
      end>
  end
  object stor_elim_todos: TStoredProc [20]
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_GRUP_TALL_DETA_ELIMINAR'
    ParamBindMode = pbByNumber
    Left = 384
    Top = 34
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_CONS_GRUP_TALLAS'
        ParamType = ptInput
      end>
  end
  inherited padr_quer_consecutivo: TQuery
    SQL.Strings = (
      '.')
  end
  object acci_ventana: TActionList
    Images = imag_pequenas
    Left = 432
    Top = 80
    object acti_nuev_talla: TAction
      Caption = 'Nueva talla'
      ImageIndex = 0
      OnExecute = acti_nuev_tallaExecute
    end
    object acti_modi_talla: TAction
      Caption = 'Modificar talla'
      ImageIndex = 1
      OnExecute = acti_modi_tallaExecute
    end
    object acti_elim_todas: TAction
      Caption = 'Eliminar todas'
      ImageIndex = 3
      OnExecute = acti_elim_todosExecute
    end
    object acti_duplicar: TAction
      Caption = 'Crear tallas desde otro grupo'
      OnExecute = acti_duplicarExecute
    end
  end
  object quer_consecutivo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select secuencia'
      
        'from fun_glo_gene_secuencia("GLO_GRUP_TALLAS", "CONS_GRUP_TALLAS' +
        '")')
    Left = 250
    Top = 36
  end
end

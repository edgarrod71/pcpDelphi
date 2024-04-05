inherited fn2_come_zonas2: Tfn2_come_zonas2
  Left = 71
  Top = 140
  Height = 363
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 326
  end
  inherited padr_pane_info: TPanel
    Top = 335
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
    Tag = 69
    Left = 0
    Top = 54
    Width = 557
    Height = 69
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
    Caption = 'Información de la zona'
    Titulo_Color = 16244694
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 24
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
      FocusControl = dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_COME_ZONA'
      Field = 'CODI_COME_ZONA'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 44
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombre zona:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_COME_ZONA'
      Field = 'NOMB_COME_ZONA'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 24
      Width = 130
      TabOrder = 1
      CharCase = ecUpperCase
      DataField = 'CODI_COME_ZONA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 44
      Width = 260
      TabOrder = 2
      DataField = 'NOMB_COME_ZONA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  object fram_subzonas: TPCPFrame [7]
    Tag = 173
    Left = 0
    Top = 123
    Width = 557
    Height = 203
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
    Visible = False
    Caption = 'Información de las subzonas'
    Titulo_Color = 16244694
    object TBXDock1: TTBXDock
      Left = 2
      Top = 21
      Width = 553
      Height = 26
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        Caption = 'TBXToolbar1'
        Images = _fMDI.imag_pequenas
        TabOrder = 0
        object TBXItem3: TTBXItem
          Action = acti_nuevo
          DisplayMode = nbdmImageAndText
        end
        object TBXItem2: TTBXItem
          Action = acti_modificar
          DisplayMode = nbdmImageAndText
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
        end
        object TBXItem1: TTBXItem
          Action = acti_eliminar
          DisplayMode = nbdmImageAndText
        end
        object TBXSeparatorItem2: TTBXSeparatorItem
        end
        object TBXItem4: TTBXItem
          Action = acti_actualizar
          DisplayMode = nbdmImageAndText
        end
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 47
      Width = 553
      Height = 154
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 2
      TabOrder = 2
      object Grid: TdxDBGrid
        Left = 2
        Top = 2
        Width = 549
        Height = 150
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_COME_ZONA_DETALLE'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = data_subzonas
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        object GridCONS_COME_ZONA_DETALLE: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 86
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_COME_ZONA_DETALLE'
        end
        object GridCONS_COME_ZONA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 139
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_COME_ZONA'
        end
        object GridCODI_COME_ZONA_DETALLE: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 121
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODI_COME_ZONA_DETALLE'
          SummaryFooterType = cstCount
          SummaryFooterFormat = '0'
        end
        object GridNOMB_COME_ZONA_DETALLE: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 242
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_COME_ZONA_DETALLE'
        end
        object GridFECH_SISTEMA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 148
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FECH_SISTEMA'
        end
        object GridUSUA_SISTEMA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 92
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USUA_SISTEMA'
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 327
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_COME_ZONAS'
    object Tabla_VentanaCONS_COME_ZONA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_COME_ZONA'
      Required = True
    end
    object Tabla_VentanaCODI_COME_ZONA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_COME_ZONA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaNOMB_COME_ZONA: TStringField
      DisplayLabel = 'Nombre zona'
      FieldName = 'NOMB_COME_ZONA'
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
  object acti_ventana: TActionList
    Images = _fMDI.imag_pequenas
    Left = 426
    Top = 4
    object acti_eliminar: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Eliminar subzona'
      ImageIndex = 2
      ShortCut = 16453
      OnExecute = acti_eliminarExecute
      DataSource = data_subzonas
    end
    object acti_modificar: TDataSetEdit
      Category = 'Dataset'
      Caption = 'Modificar subzona'
      ImageIndex = 1
      OnExecute = acti_modificarExecute
      DataSource = data_subzonas
    end
    object acti_nuevo: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Nueva subzona'
      ImageIndex = 0
      OnExecute = acti_nuevoExecute
      DataSource = data_subzonas
    end
    object acti_actualizar: TDataSetRefresh
      Category = 'Dataset'
      Caption = 'Actualizar'
      ImageIndex = 4
      DataSource = data_subzonas
    end
  end
  object tabl_subzonas: TTable
    BeforePost = tabl_subzonasBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_COME_ZONA'
    MasterFields = 'CONS_COME_ZONA'
    MasterSource = data_ventana
    TableName = 'GLO_COME_ZONA_DETALLE'
    Left = 280
    Top = 52
    object tabl_subzonasCONS_COME_ZONA_DETALLE: TIntegerField
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_COME_ZONA_DETALLE'
      Required = True
    end
    object tabl_subzonasCONS_COME_ZONA: TIntegerField
      FieldName = 'CONS_COME_ZONA'
    end
    object tabl_subzonasCODI_COME_ZONA_DETALLE: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COME_ZONA_DETALLE'
      Required = True
      Size = 12
    end
    object tabl_subzonasNOMB_COME_ZONA_DETALLE: TStringField
      DisplayLabel = 'Nombre subzona'
      FieldName = 'NOMB_COME_ZONA_DETALLE'
      Required = True
      Size = 60
    end
    object tabl_subzonasFECH_SISTEMA: TIntegerField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_subzonasUSUA_SISTEMA: TIntegerField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object data_subzonas: TDataSource
    DataSet = tabl_subzonas
    Left = 312
    Top = 52
  end
end

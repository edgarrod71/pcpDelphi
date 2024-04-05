inherited FN1_Para_Improductivos1: TFN1_Para_Improductivos1
  Left = 166
  Top = 43
  Width = 740
  Height = 546
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 732
  end
  inherited padr_shap_xp_down: TShape
    Top = 518
    Width = 732
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 732
  end
  inherited padr_pane_arriba: TPanel
    Width = 732
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 732
    inherited padr_sepa_new: TShape
      Width = 726
    end
  end
  inherited padr_pane_info: TPanel
    Top = 517
    Width = 732
    inherited _LFecha_Creacion: TSCLDBLabel
      Left = -3
      Top = 162
    end
    inherited _LUsuario: TSCLDBLabel
      Left = -3
      Top = 184
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Left = 99
      Top = 162
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Left = 99
      Top = 184
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 509
    Width = 732
    inherited padr_beve_abajo: TBevel
      Width = 726
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 269
    Width = 732
  end
  object Panel1: TPCPFrame [8]
    Tag = 217
    Left = 0
    Top = 52
    Width = 732
    Height = 217
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
    Caption = 'Información del paro improductivo'
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel2: TSCLDBLabel
      Left = 82
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
      FocusControl = PCPLookUpComboEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Familia:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_IMPR_FAMILIA'
      Field = 'CONS_IMPR_FAMILIA'
    end
    object SCLDBLabel1: TSCLDBLabel
      Left = 82
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
      DataField = 'CODI_IMPRODUCTIVO'
      Field = 'CODI_IMPRODUCTIVO'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 314
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
      Caption = 'Improductivo:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_IMPRODUCTIVO'
      Field = 'NOMB_IMPRODUCTIVO'
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 82
      Top = 67
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
      FocusControl = dxDBCurrencyEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Porcentaje:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'porcentaje'
      Field = 'porcentaje'
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 336
      Top = 212
      Width = 174
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
      FocusControl = comb_pago_minimo
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Valor hora mínimo garantizado:'
      Transparent = True
      Visible = False
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_VALO_MINIMO'
      Field = 'CONS_VALO_MINIMO'
    end
    object SCLDBLabel7: TSCLDBLabel
      Left = 688
      Top = 212
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
      FocusControl = valo_2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Valor:'
      Transparent = True
      Visible = False
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'VALO_MINIMO'
      Field = 'VALO_MINIMO'
    end
    object DBText2: TDBText
      Left = 875
      Top = 216
      Width = 65
      Height = 17
      DataField = 'SIMB_MONEDA'
      DataSource = _fMDI.data_configuracion
      Visible = False
    end
    object SCLDBLabel8: TSCLDBLabel
      Left = 16
      Top = 160
      Width = 166
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
      FocusControl = comb_pago_hora
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Valor hora producción:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_VALO_HORA'
      Field = 'CONS_VALO_HORA'
    end
    object SCLDBLabel9: TSCLDBLabel
      Left = 360
      Top = 160
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
      FocusControl = valo_1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Valor:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'VALO_HORA'
      Field = 'VALO_HORA'
    end
    object DBText1: TDBText
      Left = 546
      Top = 164
      Width = 65
      Height = 17
      DataField = 'SIMB_MONEDA'
      DataSource = _fMDI.data_configuracion
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 80
      Top = 188
      Width = 102
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
      Caption = 'Código equivalente:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'ADICIONAL_1'
      Field = 'ADICIONAL_1'
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 184
      Top = 27
      Width = 120
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_IMPR_FAMILIA'
      DataSource = data_ventana
      KeyField = 'CONS_IMPR_FAMILIA'
      ListField = 'NOMB_IMPR_FAMILIA'
      ListSource = DSFamilias
      ParentCtl3D = False
      TabOrder = 0
      DirectInput = False
    end
    object DBCodigo: TdxDBEdit
      Left = 184
      Top = 47
      Width = 120
      TabOrder = 1
      CharCase = ecUpperCase
      DataField = 'CODI_IMPRODUCTIVO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 416
      Top = 47
      Width = 260
      TabOrder = 2
      DataField = 'NOMB_IMPRODUCTIVO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBCurrencyEdit1: TdxDBCurrencyEdit
      Left = 184
      Top = 67
      Width = 73
      TabOrder = 3
      Alignment = taRightJustify
      DataField = 'porcentaje'
      DataSource = data_ventana
      StyleController = padr_estilo
      DisplayFormat = ',0.00 %'
      Nullable = False
      StoredValues = 1
    end
    object dxDBCheckEdit1: TdxDBCheckEdit
      Left = 184
      Top = 91
      Width = 161
      TabOrder = 4
      Caption = 'Activo'
      DataField = 'ACTIVO'
      DataSource = data_ventana
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueGrayed = '-1'
      ValueUnchecked = '-1'
    end
    object dxDBCheckEdit3: TdxDBCheckEdit
      Left = 184
      Top = 111
      Width = 161
      TabOrder = 5
      Caption = 'Descontable en la eficiencia'
      DataField = 'DESC_EFICIENCIA'
      DataSource = data_ventana
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueGrayed = '-1'
      ValueUnchecked = '-1'
    end
    object dxDBCheckEdit2: TdxDBCheckEdit
      Left = 184
      Top = 131
      Width = 161
      TabOrder = 6
      Caption = 'Descontable en el incentivo'
      DataField = 'DESC_INCENTIVOS'
      DataSource = data_ventana
      StyleController = padr_estilo
      ValueChecked = '1'
      ValueGrayed = '-1'
      ValueUnchecked = '-1'
    end
    object comb_pago_minimo: TPCPLookUpComboEdit
      Left = 512
      Top = 212
      Width = 230
      Height = 21
      DropDownCount = 8
      DataField = 'CONS_VALO_MINIMO'
      DataSource = data_ventana
      KeyField = 'CONS_FORM_PAGO_VALO_MINIMO'
      ListField = 'NOMB_FORM_PAGO_VALO_MINIMO'
      ListSource = data_valo_minimo
      TabOrder = 8
      Visible = False
      OnChange = comb_pago_minimoChange
      DirectInput = False
    end
    object valo_2: TdxDBCurrencyEdit
      Left = 790
      Top = 212
      Width = 77
      Enabled = False
      TabOrder = 9
      Visible = False
      Alignment = taRightJustify
      DataField = 'VALO_MINIMO'
      DataSource = data_ventana
      StyleController = padr_estilo
      DecimalPlaces = 3
      DisplayFormat = ',0.000'
      Nullable = False
      StoredValues = 1
    end
    object pane_hide_valo_minimo: TPanel
      Left = 790
      Top = 212
      Width = 77
      Height = 21
      BevelOuter = bvNone
      TabOrder = 10
      Visible = False
      inline mens_valo_minimo: Tffra_mens_atencion
        Width = 77
        Height = 21
        Align = alClient
        inherited padr_shap_top: TShape
          Width = 77
        end
        inherited padr_shap_bottom: TShape
          Top = 20
          Width = 77
        end
        inherited padr_shap_right: TShape
          Left = 76
          Height = 19
        end
        inherited padr_shap_left: TShape
          Height = 19
        end
        inherited fram_label: TAdvPanel
          Width = 75
          Height = 19
          Text = '<IMG src="info"> Calculado'
          FullHeight = 15
        end
      end
    end
    object comb_pago_hora: TPCPLookUpComboEdit
      Left = 184
      Top = 160
      Width = 230
      Height = 21
      DropDownCount = 8
      DataField = 'CONS_VALO_HORA'
      DataSource = data_ventana
      KeyField = 'CONS_FORM_PAGO_VALO_HORA'
      ListField = 'NOMB_FORM_PAGO_VALO_HORA'
      ListSource = data_valo_hora
      TabOrder = 11
      OnChange = comb_pago_horaChange
      DirectInput = False
    end
    object valo_1: TdxDBCurrencyEdit
      Left = 462
      Top = 160
      Width = 77
      Enabled = False
      TabOrder = 12
      Alignment = taRightJustify
      DataField = 'VALO_HORA'
      DataSource = data_ventana
      StyleController = padr_estilo
      DecimalPlaces = 3
      DisplayFormat = ',0.000'
      Nullable = False
      StoredValues = 1
    end
    object dxDBEdit1: TdxDBEdit
      Left = 184
      Top = 188
      Width = 120
      TabOrder = 13
      DataField = 'ADICIONAL_1'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    inline mens_valo_hora: Tffra_mens_atencion
      Left = 463
      Top = 160
      Width = 81
      Height = 22
      Align = alNone
      TabOrder = 14
      inherited padr_shap_top: TShape
        Width = 81
      end
      inherited padr_shap_bottom: TShape
        Top = 21
        Width = 81
      end
      inherited padr_shap_right: TShape
        Left = 80
        Height = 20
      end
      inherited padr_shap_left: TShape
        Height = 20
      end
      inherited fram_label: TAdvPanel
        Width = 79
        Height = 19
        Align = alNone
        Text = '<IMG src="info"> Calculado'
        FullHeight = 15
      end
    end
  end
  object pane_Sub: TPCPFrame [9]
    Tag = 238
    Left = 0
    Top = 271
    Width = 732
    Height = 238
    Align = alClient
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
    Caption = 'Subimproductivos'
    Titulo_Color = 16244694
    Boton_Visible = False
    FlatBorder = True
    object TBXDock1: TTBXDock
      Left = 3
      Top = 22
      Width = 726
      Height = 26
      object TBXToolbar1: TTBXToolbar
        Left = 0
        Top = 0
        BorderStyle = bsNone
        DockMode = dmCannotFloatOrChangeDocks
        FullSize = True
        TabOrder = 0
        object TBXItem3: TTBXItem
          Action = acti_subp_nuevo
          DisplayMode = nbdmImageAndText
          Images = _fMDI.imagenesPCP
        end
        object TBXItem2: TTBXItem
          Action = acti_subp_edit
          DisplayMode = nbdmImageAndText
          Images = _fMDI.imagenesPCP
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
        end
        object TBXItem1: TTBXItem
          Action = acti_subp_eliminar
          DisplayMode = nbdmImageAndText
          Images = _fMDI.imagenesPCP
        end
      end
    end
    object pane: TPanel
      Left = 3
      Top = 48
      Width = 726
      Height = 187
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object padr_grid: TSCLDBGrid
        Left = 0
        Top = 0
        Width = 726
        Height = 187
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderMinRowCount = 2
        HeaderPanelRowCount = 1
        KeyField = 'CONS_SUB_IMPRODUCTIVO'
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
        PopupMenu = pop_sub_improductivos
        TabOrder = 0
        OnDblClick = padr_gridDblClick
        OnKeyDown = padr_gridKeyDown
        ArrowsColor = clHighlight
        AutoSearchColor = 4227327
        AutoSearchTextColor = clBlack
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = data_subimproductivos
        Filter.Active = True
        Filter.AutoDataSetFilter = True
        Filter.CaseInsensitive = True
        Filter.Criteria = {00000000}
        GridLineColor = clBtnFace
        GroupPanelColor = 13265692
        GroupPanelFontColor = clWhite
        GroupNodeColor = 15982803
        GroupNodeTextColor = 8072450
        HeaderColor = 16578290
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clBlack
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        HideFocusRect = True
        IniSectionName = 'Columnas visibles'
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMouseScroll, edgoMultiSelect, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoResetColumnFocus, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoInvertSelect, edgoRowAutoHeight, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        ShowRowFooter = True
        object padr_gridCONS_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 78
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_SUB_IMPRODUCTIVO'
        end
        object padr_gridCODI_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 76
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODI_SUB_IMPRODUCTIVO'
        end
        object padr_gridNOMB_SUB_IMPRODUCTIVO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_SUB_IMPRODUCTIVO'
        end
        object padr_gridPORCENTAJE: TdxDBGridColumn
          HeaderAlignment = taCenter
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PORCENTAJE'
        end
        object padr_gridACTIVO: TdxDBGridCheckColumn
          HeaderAlignment = taCenter
          Width = 89
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ACTIVO'
          ValueChecked = '1'
          ValueUnchecked = '-1'
        end
        object padr_gridDESC_INCENTIVOS: TdxDBGridCheckColumn
          HeaderAlignment = taCenter
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESC_INCENTIVOS'
          ValueChecked = '1'
          ValueUnchecked = '-1'
        end
        object padr_gridDESC_EFICIENCIA: TdxDBGridCheckColumn
          HeaderAlignment = taCenter
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESC_EFICIENCIA'
          ValueChecked = '1'
          ValueUnchecked = '-1'
        end
        object padr_gridDESCRIPCION: TdxDBGridBlobColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 1759
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESCRIPCION'
          BlobKind = bkMemo
        end
        object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
          HeaderAlignment = taCenter
          Width = 172
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FECH_SISTEMA'
        end
        object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 99
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USUA_SISTEMA'
        end
      end
    end
  end
  inherited Tabla_Ventana: TTable
    AfterCancel = Tabla_VentanaAfterCancel
    AfterDelete = Tabla_VentanaAfterDelete
    TableName = 'GLO_IMPRODUCTIVOS'
    object Tabla_VentanaCONS_IMPRODUCTIVO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_IMPRODUCTIVO'
      Required = True
    end
    object Tabla_VentanaCODI_IMPRODUCTIVO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_IMPRODUCTIVO'
      Required = True
      Size = 12
    end
    object Tabla_VentanaCONS_IMPR_FAMILIA: TIntegerField
      DisplayLabel = 'Familia'
      FieldName = 'CONS_IMPR_FAMILIA'
      Required = True
    end
    object Tabla_VentanaNOMB_IMPRODUCTIVO: TStringField
      DisplayLabel = 'Improductivo'
      FieldName = 'NOMB_IMPRODUCTIVO'
      Required = True
      Size = 60
    end
    object Tabla_VentanaACTIVO: TIntegerField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
    end
    object Tabla_VentanaDESC_INCENTIVOS: TIntegerField
      DisplayLabel = 'Des. Incentivos'
      FieldName = 'DESC_INCENTIVOS'
    end
    object Tabla_VentanaDESC_EFICIENCIA: TIntegerField
      DisplayLabel = 'Desc. Eficiencia'
      FieldName = 'DESC_EFICIENCIA'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
    end
    object Tabla_VentanaADICIONAL_1: TStringField
      FieldName = 'ADICIONAL_1'
      Size = 12
    end
    object Tabla_VentanaCONS_VALO_HORA: TIntegerField
      FieldName = 'CONS_VALO_HORA'
    end
    object Tabla_VentanaVALO_HORA: TFloatField
      DisplayLabel = 'Valor hora producción'
      FieldName = 'VALO_HORA'
      DisplayFormat = ',0.000'
    end
    object Tabla_VentanaCONS_VALO_MINIMO: TIntegerField
      FieldName = 'CONS_VALO_MINIMO'
    end
    object Tabla_VentanaVALO_MINIMO: TFloatField
      DisplayLabel = 'Valor hora mínimo garantizado'
      FieldName = 'VALO_MINIMO'
      DisplayFormat = ',0.000'
    end
  end
  object TFamilias: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_IMPR_FAMILIAS'
    Left = 32
    Top = 80
  end
  object DSFamilias: TDataSource
    AutoEdit = False
    DataSet = TFamilias
    Top = 80
  end
  object Acciones: TActionList
    Images = _fMDI.imagenesPCP
    Left = 520
    Top = 110
    object acti_subp_nuevo: TAction
      Caption = 'Nuevo subimproductivo'
      ImageIndex = 0
      OnExecute = acti_subp_nuevoExecute
    end
    object acti_subp_edit: TAction
      Caption = 'Editar subimproductivo'
      ImageIndex = 1
      OnExecute = acti_subp_editExecute
    end
    object acti_subp_eliminar: TAction
      Caption = 'Eliminar subimproductivo'
      ImageIndex = 2
      OnExecute = acti_subp_eliminarExecute
      OnUpdate = acti_subp_eliminarUpdate
    end
  end
  object tabl_subimproductivos: TTable
    AfterInsert = tabl_subimproductivosAfterInsert
    BeforePost = tabl_subimproductivosBeforePost
    DatabaseName = 'data_base_pcp'
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'GLO_SUB_IMPRODUCTIVOS'
    Left = 352
    Top = 120
    object tabl_subimproductivosCONS_SUB_IMPRODUCTIVO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_SUB_IMPRODUCTIVO'
      Required = True
    end
    object tabl_subimproductivosCONS_IMPRODUCTIVO: TIntegerField
      FieldName = 'CONS_IMPRODUCTIVO'
      Required = True
    end
    object tabl_subimproductivosCODI_SUB_IMPRODUCTIVO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_SUB_IMPRODUCTIVO'
      Required = True
      Size = 12
    end
    object tabl_subimproductivosNOMB_SUB_IMPRODUCTIVO: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMB_SUB_IMPRODUCTIVO'
      Required = True
      Size = 60
    end
    object tabl_subimproductivosDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Size = 240
    end
    object tabl_subimproductivosDESC_INCENTIVOS: TIntegerField
      DisplayLabel = 'Des. Incentivos'
      FieldName = 'DESC_INCENTIVOS'
    end
    object tabl_subimproductivosDESC_EFICIENCIA: TIntegerField
      DisplayLabel = 'Des. Eficiencia'
      FieldName = 'DESC_EFICIENCIA'
    end
    object tabl_subimproductivosACTIVO: TIntegerField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
    end
    object tabl_subimproductivosPORCENTAJE: TFloatField
      DisplayLabel = '%'
      FieldName = 'PORCENTAJE'
    end
    object tabl_subimproductivosADICIONAL_1: TStringField
      DisplayLabel = 'Adicional'
      FieldName = 'ADICIONAL_1'
      Size = 12
    end
    object tabl_subimproductivosAPLI_SUB_IMPRODUCTIVO: TStringField
      FieldName = 'APLI_SUB_IMPRODUCTIVO'
      Size = 240
    end
    object tabl_subimproductivosFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_subimproductivosUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object data_subimproductivos: TDataSource
    DataSet = tabl_subimproductivos
    Left = 384
    Top = 126
  end
  object pop_sub_improductivos: TTBXPopupMenu
    Left = 552
    Top = 110
    object TBXItem4: TTBXItem
      Action = acti_subp_nuevo
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imagenesPCP
    end
    object TBXItem5: TTBXItem
      Action = acti_subp_edit
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem2: TTBXSeparatorItem
    end
    object TBXItem6: TTBXItem
      Action = acti_subp_eliminar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imagenesPCP
    end
  end
  object quer_valo_hora: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_FORM_PAGO_VALO_HORA, '
      'NOMB_FORM_PAGO_VALO_HORA, '
      'VALO_HORA_PRODUCCION, CALCULADO'
      'FROM PCP_FORM_PAGO_VALO_HORA'
      'ORDER BY 1')
    Left = 520
    Top = 144
  end
  object data_valo_hora: TDataSource
    DataSet = quer_valo_hora
    Left = 552
    Top = 144
  end
  object quer_valo_minimo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_FORM_PAGO_VALO_MINIMO, '
      'NOMB_FORM_PAGO_VALO_MINIMO, '
      'VALO_HORA_MINIMO, CALCULADO'
      'FROM PCP_FORM_PAGO_VALO_MINIMO'
      'ORDER BY 1')
    Left = 520
    Top = 176
  end
  object data_valo_minimo: TDataSource
    DataSet = quer_valo_minimo
    Left = 552
    Top = 176
  end
end

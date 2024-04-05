inherited fn2_come_vendedores2: Tfn2_come_vendedores2
  Left = 4
  Top = 46
  Width = 799
  Height = 500
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 791
  end
  inherited padr_shap_xp_down: TShape
    Top = 463
    Width = 791
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 791
  end
  inherited padr_pane_arriba: TPanel
    Width = 791
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 791
    inherited padr_beve_1: TBevel
      Width = 785
    end
    inherited padr_sepa_new: TShape
      Width = 785
    end
  end
  inherited padr_pane_info: TPanel
    Top = 472
    Width = 791
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
  object page: TSCLPageControl [6]
    Left = 0
    Top = 108
    Width = 791
    Height = 355
    ActivePage = page_datos
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 6
    Transparent = True
    FixedDimension = 19
    object page_datos: TSCLTabSheet
      Color = 16578290
      Caption = 'Datos generales'
      object PCPFrame1: TPCPFrame
        Tag = 151
        Left = 0
        Top = 0
        Width = 787
        Height = 151
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        Constraints.MinHeight = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Titulo_Color = 16244694
        TipoFrame = tfNinguno
        object SCLDBLabel7: TSCLDBLabel
          Left = 10
          Top = 23
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
          FocusControl = dxDBEdit4
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Dirección:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'DIRECCION'
          Field = 'DIRECCION'
        end
        object SCLDBLabel8: TSCLDBLabel
          Left = 270
          Top = 43
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
          FocusControl = dxDBEdit6
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Teléfono:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'TELEFONO1'
          Field = 'TELEFONO1'
        end
        object SCLDBLabel9: TSCLDBLabel
          Left = 530
          Top = 43
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
          FocusControl = dxDBEdit7
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Teléfono (2):'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'TELEFONO2'
          Field = 'TELEFONO2'
        end
        object SCLDBLabel10: TSCLDBLabel
          Left = 10
          Top = 63
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
          FocusControl = dxDBEdit8
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Teléfono (3):'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'TELEFONO3'
          Field = 'TELEFONO3'
        end
        object SCLDBLabel11: TSCLDBLabel
          Left = 270
          Top = 63
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
          FocusControl = dxDBEdit9
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fax:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'TELE_FAX'
          Field = 'TELE_FAX'
        end
        object SCLDBLabel12: TSCLDBLabel
          Left = 530
          Top = 63
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
          FocusControl = dxDBEdit10
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Móvil:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'TELE_MOVIL'
          Field = 'TELE_MOVIL'
        end
        object SCLDBLabel13: TSCLDBLabel
          Left = 10
          Top = 43
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
          FocusControl = dxDBEdit5
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Apartado aéreo:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'APAR_AEREO'
          Field = 'APAR_AEREO'
        end
        object SCLDBLabel14: TSCLDBLabel
          Left = 10
          Top = 83
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
          FocusControl = dxDBEdit11
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Correo electrónico:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CORR_ELECTRONICO'
          Field = 'CORR_ELECTRONICO'
        end
        object SCLDBLabel15: TSCLDBLabel
          Left = 10
          Top = 103
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
          FocusControl = dxDBEdit12
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Página Internet:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'PAGI_WEB'
          Field = 'PAGI_WEB'
        end
        object dxDBEdit4: TdxDBEdit
          Left = 112
          Top = 23
          Width = 390
          TabOrder = 2
          DataField = 'DIRECCION'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit5: TdxDBEdit
          Left = 112
          Top = 43
          Width = 130
          TabOrder = 3
          DataField = 'APAR_AEREO'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit6: TdxDBEdit
          Left = 372
          Top = 43
          Width = 130
          TabOrder = 4
          DataField = 'TELEFONO1'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit7: TdxDBEdit
          Left = 632
          Top = 43
          Width = 130
          TabOrder = 5
          DataField = 'TELEFONO2'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit8: TdxDBEdit
          Left = 112
          Top = 63
          Width = 130
          TabOrder = 6
          DataField = 'TELEFONO3'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit9: TdxDBEdit
          Left = 372
          Top = 63
          Width = 130
          TabOrder = 7
          DataField = 'TELE_FAX'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit10: TdxDBEdit
          Left = 632
          Top = 63
          Width = 130
          TabOrder = 8
          DataField = 'TELE_MOVIL'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit11: TdxDBEdit
          Left = 112
          Top = 83
          Width = 390
          TabOrder = 9
          DataField = 'CORR_ELECTRONICO'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxDBEdit12: TdxDBEdit
          Left = 112
          Top = 103
          Width = 390
          TabOrder = 10
          DataField = 'PAGI_WEB'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        inline fram_ubic_regional: Tffra_ubic_regional
          Left = 2
          Top = 2
          Width = 783
          Height = 21
          Align = alTop
          inherited SCLDBLabel3: TSCLDBLabel
            Left = 8
            Width = 100
            FontActive.Name = 'Tahoma'
            DataSource = data_ventana
          end
          inherited SCLDBLabel4: TSCLDBLabel
            Left = 268
            Top = 1
            FontActive.Name = 'Tahoma'
            DataSource = data_ventana
          end
          inherited SCLDBLabel5: TSCLDBLabel
            Left = 528
            Top = 0
            FontActive.Name = 'Tahoma'
            DataSource = data_ventana
          end
          inherited comb_paises: TPCPLookUpComboEdit
            Left = 110
            Width = 130
            DataSource = data_ventana
          end
          inherited comb_departamentos: TPCPLookUpComboEdit
            Left = 370
            Top = 1
            Width = 130
            DataSource = data_ventana
          end
          inherited comb_ciudades: TPCPLookUpComboEdit
            Left = 630
            Top = 0
            Width = 130
            DataSource = data_ventana
          end
          inherited SCLButton1: TTBXButtonSCL
            Left = 242
            Top = 1
          end
          inherited SCLButton2: TTBXButtonSCL
            Left = 502
            Top = 1
          end
          inherited SCLButton3: TTBXButtonSCL
            Left = 763
            Top = -1
          end
        end
      end
      object PCPFrame2: TPCPFrame
        Tag = 174
        Left = 0
        Top = 151
        Width = 787
        Height = 181
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
        TabOrder = 1
        Caption = 'Observaciones'
        Titulo_Color = 16244694
        object Panel2: TPanel
          Left = 2
          Top = 21
          Width = 783
          Height = 158
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 1
          object dxDBMemo1: TdxDBMemo
            Left = 5
            Top = 5
            Width = 773
            Align = alClient
            TabOrder = 0
            DataField = 'OBSERVACIONES'
            DataSource = data_ventana
            StyleController = padr_estilo
            Height = 148
          end
        end
      end
    end
    object page_ubicacion: TSCLTabSheet
      Color = 16578290
      Caption = 'Ubicación (zonas)'
      object dfsSplitter1: TdfsSplitter
        Left = 289
        Top = 26
        Height = 296
        Cursor = crHSplit
        Align = alLeft
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object PCPFrame3: TPCPFrame
        Tag = 296
        Left = 299
        Top = 26
        Width = 486
        Height = 296
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
        TabOrder = 0
        Caption = 'Zonas y subzonas asignadas'
        Titulo_Color = 16244694
        Boton_Visible = False
        object Panel4: TPanel
          Left = 2
          Top = 21
          Width = 482
          Height = 273
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 1
          object grid_asignadas: TdxDBGrid
            Left = 2
            Top = 2
            Width = 478
            Height = 269
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CONS_COME_ZONA_DETALLE'
            ShowGroupPanel = True
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            PopupMenu = pop_grid_2
            TabOrder = 0
            OnDblClick = acti_eliminarExecute
            DataSource = data_subz_asignadas
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
            object grid_asignadasCONS_COME_VEND_ZONA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 185
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_COME_VEND_ZONA'
            end
            object grid_asignadasCONS_COME_VENDEDOR: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 177
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_COME_VENDEDOR'
            end
            object grid_asignadasCONS_COME_ZONA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 141
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_COME_ZONA'
            end
            object grid_asignadasNOMB_COME_ZONA: TdxDBGridLookupColumn
              HeaderAlignment = taCenter
              Width = 124
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_COME_ZONA'
            end
            object grid_asignadasCONS_COME_ZONA_DETALLE: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 206
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_COME_ZONA_DETALLE'
            end
            object grid_asignadasNOMB_COME_ZONA_DETALLE: TdxDBGridLookupColumn
              HeaderAlignment = taCenter
              Width = 128
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_COME_ZONA_DETALLE'
            end
            object grid_asignadasFECH_SISTEMA: TdxDBGridDateColumn
              HeaderAlignment = taCenter
              Width = 143
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FECH_SISTEMA'
            end
            object grid_asignadasUSUA_SISTEMA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'USUA_SISTEMA'
            end
          end
        end
      end
      object PCPFrame4: TPCPFrame
        Tag = 296
        Left = 0
        Top = 26
        Width = 289
        Height = 296
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
        Caption = 'Zonas y subzonas existentes'
        Titulo_Color = 16244694
        Boton_Visible = False
        object Panel3: TPanel
          Left = 2
          Top = 21
          Width = 285
          Height = 273
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 1
          object grid_disponibles: TdxDBGrid
            Left = 2
            Top = 2
            Width = 281
            Height = 269
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CONS_COME_ZONA_DETALLE'
            ShowGroupPanel = True
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            PopupMenu = pop_grid_1
            TabOrder = 0
            OnDblClick = acti_asignarExecute
            DataSource = data_subz_disponibles
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
            object grid_disponiblesCONS_COME_ZONA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 56
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_COME_ZONA'
            end
            object grid_disponiblesCODI_COME_ZONA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 56
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODI_COME_ZONA'
              SummaryFooterType = cstCount
              SummaryFooterFormat = '0'
            end
            object grid_disponiblesNOMB_COME_ZONA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 144
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_COME_ZONA'
            end
            object grid_disponiblesCONS_COME_ZONA_DETALLE: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 81
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_COME_ZONA_DETALLE'
            end
            object grid_disponiblesCODI_COME_ZONA_DETALLE: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 59
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODI_COME_ZONA_DETALLE'
            end
            object grid_disponiblesNOMB_COME_ZONA_DETALLE: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 157
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_COME_ZONA_DETALLE'
            end
            object grid_disponiblesFECH_SISTEMA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 43
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FECH_SISTEMA'
            end
            object grid_disponiblesUSUA_SISTEMA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 43
              BandIndex = 0
              RowIndex = 0
              FieldName = 'USUA_SISTEMA'
            end
          end
        end
      end
      object TBXDock1: TTBXDock
        Left = 0
        Top = 0
        Width = 785
        Height = 26
        object TBXToolbar1: TTBXToolbar
          Left = 0
          Top = 0
          BorderStyle = bsNone
          Caption = 'TBXToolbar1'
          Images = _fMDI.imag_pequenas
          TabOrder = 0
          object TBXItem5: TTBXItem
            Action = acti_asignar
            DisplayMode = nbdmImageAndText
            ImageIndex = 25
            Images = _fMDI.imag_pequenas
          end
          object TBXItem4: TTBXItem
            Action = acti_eliminar
            DisplayMode = nbdmImageAndText
            ImageIndex = 27
            Images = _fMDI.imag_pequenas
          end
          object TBXSeparatorItem2: TTBXSeparatorItem
          end
          object TBXItem3: TTBXItem
            Action = acti_actualizar
            DisplayMode = nbdmImageAndText
            ImageIndex = 4
            Images = _fMDI.imag_pequenas
          end
          object TBXSeparatorItem1: TTBXSeparatorItem
          end
          object TBXItem2: TTBXItem
            Action = acti_ir_zonas
            DisplayMode = nbdmImageAndText
            ImageIndex = 34
            Images = _fMDI.imag_pequenas
          end
        end
      end
    end
    object page_historial: TSCLTabSheet
      Color = 16578290
      Caption = 'Historial'
      inline ffra_historialDB1: Tffra_historialDB
        Width = 787
        Height = 332
        Align = alClient
        inherited fram_pane: TPanel
          Width = 787
          Height = 332
          inherited fram_grid_historial: TdxDBGrid
            Width = 785
            Height = 296
            Filter.Criteria = {00000000}
            inherited fram_grid_historialFECHA: TdxDBGridDateColumn
              Width = 143
            end
            inherited fram_grid_historialUSUARIO: TdxDBGridColumn
              Width = 117
            end
            inherited fram_grid_historialANOTACION: TdxDBGridMemoColumn
              Width = 512
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 785
            inherited TBXToolbar1: TTBXToolbar
              Images = _fMDI.imag_pequenas
            end
          end
        end
        inherited data_historial: TDataSource
          DataSet = tabl_historial
        end
        inherited pop_grid_anotaciones: TTBXPopupMenu
          Images = _fMDI.imag_pequenas
          inherited TBXItem1: TTBXItem
            Images = _fMDI.imag_pequenas
          end
          inherited TBXItem2: TTBXItem
            Images = _fMDI.imag_pequenas
          end
          inherited TBXItem3: TTBXItem
            Images = _fMDI.imag_pequenas
          end
        end
      end
    end
  end
  object Panel1: TPCPFrame [7]
    Left = 0
    Top = 54
    Width = 791
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 4
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
      DataField = 'CODI_COME_VENDEDOR'
      Field = 'CODI_COME_VENDEDOR'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 270
      Top = 4
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
      Caption = 'No. identificación:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'IDEN_COME_VENDEDOR'
      Field = 'IDEN_COME_VENDEDOR'
    end
    object SCLDBLabel3: TSCLDBLabel
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
      FocusControl = dxDBEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombre:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_COME_VENDEDOR'
      Field = 'NOMB_COME_VENDEDOR'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 4
      Width = 130
      TabOrder = 0
      DataField = 'CODI_COME_VENDEDOR'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 372
      Top = 4
      Width = 130
      TabOrder = 1
      DataField = 'IDEN_COME_VENDEDOR'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit3: TdxDBEdit
      Left = 112
      Top = 24
      Width = 261
      TabOrder = 2
      DataField = 'NOMB_COME_VENDEDOR'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 464
    Width = 791
    inherited padr_beve_abajo: TBevel
      Width = 785
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 791
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_COME_VENDEDORES'
    object Tabla_VentanaCONS_COME_VENDEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_COME_VENDEDOR'
      Required = True
    end
    object Tabla_VentanaCODI_COME_VENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODI_COME_VENDEDOR'
      Required = True
      OnChange = Tabla_VentanaCODI_COME_VENDEDORChange
      Size = 12
    end
    object Tabla_VentanaIDEN_COME_VENDEDOR: TStringField
      DisplayLabel = 'No. identificación:'
      FieldName = 'IDEN_COME_VENDEDOR'
    end
    object Tabla_VentanaNOMB_COME_VENDEDOR: TStringField
      DisplayLabel = 'Nombre:'
      FieldName = 'NOMB_COME_VENDEDOR'
      Required = True
      Size = 60
    end
    object Tabla_VentanaCONS_PAIS: TIntegerField
      DisplayLabel = 'País:'
      FieldName = 'CONS_PAIS'
      Required = True
    end
    object Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
      Required = True
    end
    object Tabla_VentanaCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Ciudad'
      FieldName = 'CONS_CIUDAD'
      Required = True
    end
    object Tabla_VentanaDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 240
    end
    object Tabla_VentanaAPAR_AEREO: TStringField
      DisplayLabel = 'Apartado aéreo'
      FieldName = 'APAR_AEREO'
    end
    object Tabla_VentanaTELEFONO1: TStringField
      DisplayLabel = 'Teléfono'
      FieldName = 'TELEFONO1'
    end
    object Tabla_VentanaTELEFONO2: TStringField
      DisplayLabel = 'Teléfono (2)'
      FieldName = 'TELEFONO2'
    end
    object Tabla_VentanaTELEFONO3: TStringField
      DisplayLabel = 'Teléfono (3)'
      FieldName = 'TELEFONO3'
    end
    object Tabla_VentanaTELE_FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'TELE_FAX'
    end
    object Tabla_VentanaTELE_MOVIL: TStringField
      DisplayLabel = 'Móvil'
      FieldName = 'TELE_MOVIL'
    end
    object Tabla_VentanaCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Size = 120
    end
    object Tabla_VentanaPAGI_WEB: TStringField
      DisplayLabel = 'Página Internet'
      FieldName = 'PAGI_WEB'
      Size = 120
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited padr_pict_container: TPictureContainer
    Left = 602
  end
  object quer_subz_disponibles: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select cons_come_zona, cons_come_zona_detalle, nomb_come_zona,'
      'nomb_come_zona_detalle '
      'from vis_glo_come_subzonas'
      'where not cons_come_zona_detalle'
      'in '
      '    (Select cons_come_zona_detalle'
      '    from glo_come_vend_zonas '
      '    where cons_come_vendedor = :cons_come_vendedor)'
      'order by cons_come_zona_detalle')
    Left = 616
    Top = 70
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_COME_VENDEDOR'
        ParamType = ptUnknown
      end>
    object quer_subz_disponiblesCONS_COME_ZONA_DETALLE: TIntegerField
      FieldName = 'CONS_COME_ZONA_DETALLE'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_SUBZONAS.CONS_COME_ZONA_DETALLE'
    end
    object quer_subz_disponiblesNOMB_COME_ZONA_DETALLE: TStringField
      DisplayLabel = 'Subzona'
      FieldName = 'NOMB_COME_ZONA_DETALLE'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_SUBZONAS.NOMB_COME_ZONA_DETALLE'
      Size = 60
    end
    object quer_subz_disponiblesCONS_COME_ZONA: TIntegerField
      FieldName = 'CONS_COME_ZONA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_SUBZONAS.CONS_COME_ZONA'
    end
    object quer_subz_disponiblesNOMB_COME_ZONA: TStringField
      DisplayLabel = 'Zona'
      FieldName = 'NOMB_COME_ZONA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_COME_SUBZONAS.NOMB_COME_ZONA'
      Size = 60
    end
  end
  object data_subz_disponibles: TDataSource
    DataSet = quer_subz_disponibles
    Left = 616
    Top = 102
  end
  object tabl_subz_asignadas: TTable
    BeforePost = tabl_subz_asignadasBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_COME_VENDEDOR;CONS_COME_ZONA;CONS_COME_ZONA_DETALLE'
    MasterFields = 'CONS_COME_VENDEDOR'
    MasterSource = data_ventana
    TableName = 'GLO_COME_VEND_ZONAS'
    Left = 648
    Top = 70
    object tabl_subz_asignadasCONS_COME_VEND_ZONA: TIntegerField
      FieldName = 'CONS_COME_VEND_ZONA'
      Required = True
    end
    object tabl_subz_asignadasCONS_COME_VENDEDOR: TIntegerField
      FieldName = 'CONS_COME_VENDEDOR'
      Required = True
    end
    object tabl_subz_asignadasCONS_COME_ZONA: TIntegerField
      FieldName = 'CONS_COME_ZONA'
    end
    object tabl_subz_asignadasNOMB_COME_ZONA: TStringField
      DisplayLabel = 'Zona'
      FieldKind = fkLookup
      FieldName = 'NOMB_COME_ZONA'
      LookupDataSet = quer_subz_auxiliar
      LookupKeyFields = 'CONS_COME_ZONA_DETALLE'
      LookupResultField = 'NOMB_COME_ZONA'
      KeyFields = 'CONS_COME_ZONA_DETALLE'
      Size = 60
      Lookup = True
    end
    object tabl_subz_asignadasCONS_COME_ZONA_DETALLE: TIntegerField
      FieldName = 'CONS_COME_ZONA_DETALLE'
    end
    object tabl_subz_asignadasNOMB_COME_ZONA_DETALLE: TStringField
      DisplayLabel = 'Subzona'
      FieldKind = fkLookup
      FieldName = 'NOMB_COME_ZONA_DETALLE'
      LookupDataSet = quer_subz_auxiliar
      LookupKeyFields = 'CONS_COME_ZONA_DETALLE'
      LookupResultField = 'NOMB_COME_ZONA_DETALLE'
      KeyFields = 'CONS_COME_ZONA_DETALLE'
      Size = 60
      Lookup = True
    end
    object tabl_subz_asignadasFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_subz_asignadasUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object data_subz_asignadas: TDataSource
    DataSet = tabl_subz_asignadas
    Left = 648
    Top = 102
  end
  object quer_subz_auxiliar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_come_zona_detalle,'
      'nomb_come_zona, nomb_come_zona_detalle'
      'from vis_glo_come_subzonas'
      'order by cons_come_zona_detalle')
    Left = 680
    Top = 70
    object quer_subz_auxiliarCONS_COME_ZONA_DETALLE: TIntegerField
      FieldName = 'CONS_COME_ZONA_DETALLE'
    end
    object quer_subz_auxiliarNOMB_COME_ZONA: TStringField
      FieldName = 'NOMB_COME_ZONA'
      Size = 60
    end
    object quer_subz_auxiliarNOMB_COME_ZONA_DETALLE: TStringField
      FieldName = 'NOMB_COME_ZONA_DETALLE'
      Size = 60
    end
  end
  object acti_Ventana: TActionList
    OnUpdate = acti_VentanaUpdate
    Left = 424
    Top = 6
    object acti_asignar: TAction
      Caption = 'Asignar subzona'
      OnExecute = acti_asignarExecute
    end
    object acti_eliminar: TAction
      Caption = 'Eliminar subzona'
      OnExecute = acti_eliminarExecute
    end
    object acti_actualizar: TAction
      Caption = 'Actualizar subzonas'
      ShortCut = 116
      OnExecute = acti_actualizarExecute
    end
    object acti_ir_zonas: TAction
      Caption = 'Ir a zonas comerciales'
      OnExecute = acti_ir_zonasExecute
    end
  end
  object pop_grid_1: TTBXPopupMenu
    Images = _fMDI.imag_pequenas
    Left = 34
    Top = 231
    object TBXItem1: TTBXItem
      Action = acti_asignar
      DisplayMode = nbdmImageAndText
      ImageIndex = 25
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem3: TTBXSeparatorItem
    end
    object TBXItem6: TTBXItem
      Action = acti_actualizar
      DisplayMode = nbdmImageAndText
      ImageIndex = 4
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem4: TTBXSeparatorItem
    end
    object TBXItem7: TTBXItem
      Action = acti_ir_zonas
      DisplayMode = nbdmImageAndText
      ImageIndex = 34
      Images = _fMDI.imag_pequenas
    end
  end
  object pop_grid_2: TTBXPopupMenu
    Images = _fMDI.imag_pequenas
    Left = 333
    Top = 247
    object TBXItem8: TTBXItem
      Action = acti_eliminar
      DisplayMode = nbdmImageAndText
      ImageIndex = 27
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem5: TTBXSeparatorItem
    end
    object TBXItem9: TTBXItem
      Action = acti_actualizar
      DisplayMode = nbdmImageAndText
      ImageIndex = 4
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem6: TTBXSeparatorItem
    end
    object TBXItem10: TTBXItem
      Action = acti_ir_zonas
      DisplayMode = nbdmImageAndText
      ImageIndex = 34
      Images = _fMDI.imag_pequenas
    end
  end
  object tabl_historial: TTable
    BeforePost = tabl_historialBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_COME_VENDEDOR'
    MasterFields = 'CONS_COME_VENDEDOR'
    MasterSource = data_ventana
    TableName = 'GLO_COME_VEND_HISTORIAL'
    Left = 8
    Top = 203
  end
end

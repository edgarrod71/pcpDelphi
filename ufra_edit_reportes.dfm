object ffra_edit_reportes: Tffra_edit_reportes
  Left = 0
  Top = 0
  Width = 965
  Height = 506
  TabOrder = 0
  object TBXDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 965
    Height = 26
    object barr_fram_archivo: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Archivo'
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = -8
      DragHandleStyle = dhDouble
      Images = ImageList1
      ParentShowHint = False
      ProcessShortCuts = True
      ShowHint = True
      TabOrder = 0
      object TBXItem17: TTBXItem
        Action = acti_nuevo
      end
      object TBXItem16: TTBXItem
        Action = acti_abri_repo_para_editar
        ImageIndex = 24
        Images = _fMDI.imagenesPCP
      end
      object TBXItem15: TTBXItem
        Action = acti_guardar
        ImageIndex = 5
        Images = _fMDI.imagenesPCP
      end
      object TBXItem28: TTBXItem
        ImageIndex = 29
        Visible = False
      end
      object TBXSeparatorItem5: TTBXSeparatorItem
      end
      object TBXItem14: TTBXItem
        Action = acti_vist_previa
        Images = ImageList1
      end
      object TBXItem13: TTBXItem
        Action = acti_imprimir
        ImageIndex = 10
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object boto_Cerrar: TTBXItem
        Caption = 'Cerrar'
        ImageIndex = 15
        Images = _fMDI.imagenesPCP
      end
    end
    object barr_edicion: TTBXToolbar
      Left = 171
      Top = 0
      BorderStyle = bsNone
      Caption = 'Edición'
      CloseButton = False
      DockPos = 171
      DragHandleStyle = dhDouble
      Images = ImageList1
      ProcessShortCuts = True
      TabOrder = 1
      object TBXItem12: TTBXItem
        Action = acti_cortar
        ImageIndex = 12
        Images = _fMDI.imagenesPCP
      end
      object TBXItem11: TTBXItem
        Action = acti_copiar
        ImageIndex = 11
        Images = _fMDI.imagenesPCP
      end
      object TBXItem10: TTBXItem
        Action = acti_pegar
        ImageIndex = 13
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object TBXItem8: TTBXItem
        Action = acti_eliminar
        ImageIndex = 2
        Images = _fMDI.imagenesPCP
      end
      object TBXItem7: TTBXItem
        Action = acti_alin_grid
        Caption = 'Alinear a la cuadrícula'
        ImageIndex = 26
        Images = ImageList1
      end
      object TBXItem9: TTBXItem
        Action = acti_trae_frente
        Images = ImageList1
      end
      object TBXItem6: TTBXItem
        Action = acti_envi_atras
        Images = ImageList1
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object TBXItem5: TTBXItem
        Action = acti_bloquear
        Images = ImageList1
      end
      object TBXItem4: TTBXItem
        Action = acti_desbloquear
        Images = ImageList1
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object TBXItem3: TTBXItem
        Action = acti_prop_reporte
        Images = ImageList1
      end
      object TBXVisibilityToggleItem1: TTBXVisibilityToggleItem
        Caption = 'Ver el inspector de propiedades'
        Control = pane_insp_objetos
        ImageIndex = 21
        Images = ImageList1
        ShortCut = 122
      end
      object TBXSeparatorItem6: TTBXSeparatorItem
      end
      object Edit_Zoom: TTBXSpinEditItem
        Visible = False
        OnAcceptText = Edit_ZoomAcceptText
        Decimal = 0
        Postfix = '%'
        SpaceAfterPrefix = False
        SpaceBeforePostfix = False
        Value = 100
        OnValueChange = Edit_ZoomValueChange
      end
      object TBControlItem1: TTBControlItem
        Control = comb_dataSources
      end
      object TBXItem26: TTBXItem
        Action = acti_sele_dataSource
        Images = ImageList1
        Visible = False
      end
      object TBXItem27: TTBXItem
        Caption = 'uepa'
        Images = ImageList1
        Visible = False
        OnClick = TBXItem27Click
      end
      object comb_dataSources: TdxPickEdit
        Tag = -15
        Left = 277
        Top = 0
        Width = 170
        TabOrder = 0
        OnKeyDown = comb_dataSourcesKeyDown
        OnSelectionChange = comb_dataSourcesSelectionChange
        DropDownListStyle = True
        Revertable = True
      end
    end
    object TBXToolbar2: TTBXToolbar
      Left = 631
      Top = 0
      BorderStyle = bsNone
      Caption = 'Alineación'
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 450
      DragHandleStyle = dhDouble
      Images = ImageList1
      ParentShowHint = False
      ProcessShortCuts = True
      ShowHint = True
      TabOrder = 2
      object TBXItem19: TTBXItem
        Action = acti_alin_izquierda
      end
      object TBXItem18: TTBXItem
        Action = acti_alin_derecha
      end
      object TBXItem2: TTBXItem
        Action = acti_alin_espa_horizontal
      end
      object TBXItem1: TTBXItem
        Action = acti_alin_cent_horizontal
      end
      object TBXItem20: TTBXItem
        Action = acti_alin_cent_vent_horizontal
      end
      object TBXSeparatorItem7: TTBXSeparatorItem
      end
      object TBXItem21: TTBXItem
        Action = acti_alin_arriba
      end
      object TBXItem22: TTBXItem
        Action = acti_alin_abajo
      end
      object TBXItem25: TTBXItem
        Action = acti_alin_espa_vertical
      end
      object TBXItem24: TTBXItem
        Action = acti_alin_cent_vertical
      end
      object TBXItem23: TTBXItem
        Action = acti_alin_cent_Vent_vertical
      end
    end
  end
  object TBXDock2: TTBXDock
    Left = 0
    Top = 26
    Width = 35
    Height = 480
    Position = dpLeft
    object barr_componentes: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'Componentes'
      DockPos = 16
      DockRow = 2
      DragHandleStyle = dhDouble
      FullSize = True
      Images = _fMDI.imagenes_reportes_objetos
      ParentShowHint = False
      ProcessShortCuts = True
      ShowHint = True
      TabOrder = 0
      object qrboto_flecha: TTBXItem
        AutoCheck = True
        Checked = True
        GroupIndex = 1
        ImageIndex = 0
      end
      object TBXSeparatorItem8: TTBXSeparatorItem
      end
      object qrBoto_banda: TTBXItem
        AutoCheck = True
        Caption = 'Banda'
        GroupIndex = 1
        ImageIndex = 2
      end
      object qrboto_grupo: TTBXItem
        AutoCheck = True
        Caption = 'Grupo'
        GroupIndex = 1
        ImageIndex = 11
      end
      object qrBoto_ColumnDetail: TTBXItem
        AutoCheck = True
        Caption = 'Detalle con columnas'
        GroupIndex = 1
        ImageIndex = 17
      end
      object qrBoto_SubDetail: TTBXItem
        AutoCheck = True
        Caption = 'Subdetalle'
        GroupIndex = 1
        ImageIndex = 19
      end
      object qrBoto_Panel: TTBXItem
        AutoCheck = True
        Caption = 'Panel'
        GroupIndex = 1
        ImageIndex = 21
      end
      object TBXSeparatorItem9: TTBXSeparatorItem
      end
      object qrBoto_label: TTBXItem
        AutoCheck = True
        Caption = 'Texto'
        GroupIndex = 1
        ImageIndex = 3
      end
      object qrBoto_RotatedLabel: TTBXItem
        AutoCheck = True
        Caption = 'Texto (rotado)'
        GroupIndex = 1
        ImageIndex = 16
      end
      object qrBoto_dbText: TTBXItem
        AutoCheck = True
        Caption = 'Texto (desde la base de datos)'
        GroupIndex = 1
        ImageIndex = 4
      end
      object qrBoto_memo: TTBXItem
        AutoCheck = True
        Caption = 'Memo'
        GroupIndex = 1
        ImageIndex = 7
      end
      object qrBoto_MemoDB: TTBXItem
        AutoCheck = True
        Caption = 'Memo (desde la base de datos)'
        GroupIndex = 1
        ImageIndex = 20
      end
      object qrBoto_imagen: TTBXItem
        AutoCheck = True
        Caption = 'Imágen'
        GroupIndex = 1
        ImageIndex = 12
      end
      object qrBoto_imagenDB: TTBXItem
        AutoCheck = True
        Caption = 'Imágen (desde la base de datos)'
        GroupIndex = 1
        ImageIndex = 13
      end
      object qrBoto_sys: TTBXItem
        AutoCheck = True
        Caption = 'Variable del sistema'
        GroupIndex = 1
        ImageIndex = 6
      end
      object qrBoto_forma: TTBXItem
        AutoCheck = True
        Caption = 'Forma'
        GroupIndex = 1
        ImageIndex = 9
      end
      object qrBoto_SumaDB: TTBXItem
        AutoCheck = True
        Caption = 'Sumatoria de la base de datos'
        GroupIndex = 1
        ImageIndex = 15
      end
      object qrBoto_BarCode: TTBXItem
        AutoCheck = True
        Caption = 'Código de barras'
        GroupIndex = 1
        ImageIndex = 10
      end
      object qrBoto_barcodeDB: TTBXItem
        AutoCheck = True
        Caption = 'Código de barras (desde la base de datos)'
        GroupIndex = 1
        ImageIndex = 14
      end
    end
  end
  object pane_contenedor: TPCPFrame
    Tag = 480
    Left = 35
    Top = 26
    Width = 595
    Height = 480
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    BorderWidthIn = 4
    FlatBorder = True
    object ELDesignPanel1: TELDesignPanel
      Left = 7
      Top = 7
      Width = 581
      Height = 466
      BorderStyle = bsNone
      AutoScroll = True
      Align = alClient
      TabOrder = 1
      TabStop = True
    end
  end
  object TBXDock3: TTBXDock
    Left = 630
    Top = 26
    Width = 335
    Height = 480
    Position = dpRight
    object pane_insp_objetos: TTBXDockablePanel
      Left = 0
      Top = 0
      Caption = 'Inspector de propiedades'
      Color = clBtnFace
      DockedWidth = 331
      SupportedDocks = [dkStandardDock, dkMultiDock]
      TabOrder = 0
      object page: TSCLPageControl
        Left = 0
        Top = 0
        Width = 331
        Height = 460
        ActivePage = page_propiedades
        ActivePageDefault = page_propiedades
        Align = alClient
        BoldCurrentTab = True
        Color = 16578290
        FlatColor = 10435335
        HotTrack = False
        Margin = 5
        ParentColor = False
        TabColors.Shadow = 15582631
        TabColors.Unselected = 16578290
        TabIndex = 0
        TabOrder = 0
        Transparent = True
        FixedDimension = 19
        object page_propiedades: TSCLTabSheet
          Color = 16578290
          Caption = 'Propiedades'
          object page_prop: TSCLPageControl
            Left = 0
            Top = 0
            Width = 327
            Height = 437
            ActivePage = page_labels
            ActivePageDefault = page_labels
            Align = alClient
            BoldCurrentTab = True
            Color = 16578290
            FlatColor = 16578290
            Margin = 5
            ParentColor = False
            TabColors.Shadow = 15582631
            TabColors.Unselected = 16578290
            TabIndex = 0
            TabOrder = 0
            Transparent = True
            FixedDimension = 19
            object page_labels: TSCLTabSheet
              Color = 16578290
              Caption = 'page_labels'
              object scro_box: TScrollBox
                Left = 0
                Top = 0
                Width = 323
                Height = 414
                Align = alClient
                BorderStyle = bsNone
                TabOrder = 0
                object pane_prop_general: TPCPFrame
                  Tag = 95
                  Left = 0
                  Top = 0
                  Width = 307
                  Height = 95
                  Align = alTop
                  BorderWidth = 2
                  Constraints.MinHeight = 23
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  Caption = 'General'
                  Titulo_Color = 16244694
                  FlatBorder = True
                  object pane_texto: TPanel
                    Left = 3
                    Top = 22
                    Width = 301
                    Height = 25
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 1
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
                      Alignment = taRightJustify
                      WordWrap = False
                      Bevel = False
                      BevelInner = bvRaised
                      BevelOuter = bvLowered
                      Light = lpLeftTop
                      Caption = 'Nombre objeto:'
                      Transparent = True
                      ColorRequerido = 12615680
                      ColorNoRequerido = clWindowText
                    end
                    object edit_nombre: TdxEdit
                      Left = 112
                      Top = 4
                      Width = 185
                      TabOrder = 0
                    end
                  end
                  object chec_visible: TdxCheckEdit
                    Left = 115
                    Top = 46
                    Width = 134
                    Style.ButtonStyle = btsHotFlat
                    TabOrder = 2
                    Caption = 'Visible'
                    OnChange = Modificar_Visible
                  end
                  object chec_transparent: TdxCheckEdit
                    Left = 115
                    Top = 66
                    Width = 134
                    Style.ButtonStyle = btsHotFlat
                    TabOrder = 3
                    Caption = 'Transparente'
                    OnChange = Modificar_Transparent
                  end
                end
                object pane_apariencia: TPCPFrame
                  Tag = 227
                  Left = 0
                  Top = 95
                  Width = 307
                  Height = 227
                  Align = alTop
                  BorderWidth = 2
                  Constraints.MinHeight = 23
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  Caption = 'Apariencia'
                  Titulo_Color = 16244694
                  FlatBorder = True
                  object SCLShape1: TSCLShape
                    Left = 3
                    Top = 110
                    Width = 301
                    Height = 1
                    Align = alTop
                    Brush.Style = bsClear
                    Pen.Color = 14467501
                  end
                  object SCLShape2: TSCLShape
                    Left = 3
                    Top = 155
                    Width = 301
                    Height = 1
                    Align = alTop
                    Brush.Style = bsClear
                    Pen.Color = 14467501
                  end
                  inline fram_distribucion: Tffra_edit_repo_distribucion
                    Left = 3
                    Top = 22
                    Width = 301
                    Height = 62
                    HorzScrollBar.Visible = False
                    VertScrollBar.Visible = False
                    Align = alTop
                    TabOrder = 1
                    inherited labe_alin_control: TSCLDBLabel
                      FontActive.Name = 'Tahoma'
                    end
                    inherited labe_dist_texto: TSCLDBLabel
                      FontActive.Name = 'Tahoma'
                    end
                    inherited chec_autoSize: TdxCheckEdit
                      Top = 42
                      Width = 184
                      Style.ButtonStyle = btsHotFlat
                      OnChange = fram_distribucionchec_autoSizeChange
                    end
                    inherited edit_layout: TdxImageEdit
                      Width = 184
                      OnChange = fram_distribucionedit_layoutChange
                    end
                    inherited edit_cont_align: TdxImageEdit
                      Width = 184
                      OnChange = fram_distribucionedit_cont_alignChange
                    end
                  end
                  object pane_alin_texto: TPanel
                    Left = 3
                    Top = 84
                    Width = 301
                    Height = 26
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 2
                    inline fram_alin_texto: Tffra_edit_repo_alin_texto
                      Height = 22
                      inherited labe_alin_texto: TSCLDBLabel
                        Top = -1
                        FontActive.Name = 'Tahoma'
                      end
                      inherited edit_alin_texto: TdxImageEdit
                        Top = 0
                        Width = 184
                        OnChange = fram_alin_textoedit_alin_textoChange
                      end
                    end
                  end
                  object pane_fuente: TPanel
                    Left = 3
                    Top = 111
                    Width = 301
                    Height = 44
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 3
                    inline fram_fuente: Tffra_edit_repo_fuente
                      Left = 2
                      Top = -5
                      Width = 292
                      Height = 47
                      HorzScrollBar.Visible = False
                      VertScrollBar.Visible = False
                      inherited pane_fuente: TPanel
                        Left = 109
                        Width = 182
                        Height = 35
                      end
                      inherited boto_Camb_fuente: TTBXButtonSCL
                        Left = 1
                        Width = 106
                        Caption = 'Fuente...'
                        OnClick = fram_fuenteboto_Camb_fuenteClick
                      end
                    end
                  end
                  inline fram_color: Tffra_edit_repo_band_color
                    Left = 6
                    Top = 160
                    Width = 257
                    Height = 57
                    HorzScrollBar.Visible = False
                    VertScrollBar.Visible = False
                    TabOrder = 4
                    inherited SCLDBLabel1: TSCLDBLabel
                      FontActive.Name = 'Tahoma'
                    end
                    inherited chec_gradiente: TdxCheckEdit
                      Left = 8
                      Width = 96
                    end
                  end
                end
                object pane_bordes: TPCPFrame
                  Tag = 190
                  Left = 0
                  Top = 322
                  Width = 307
                  Height = 190
                  Align = alTop
                  BorderWidth = 2
                  Constraints.MinHeight = 23
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  Caption = 'Bordes'
                  Titulo_Color = 16244694
                  FlatBorder = True
                  inline fram_bordes: Tffra_edit_Repo_band_bordes
                    Left = 65
                    Top = 26
                    Height = 155
                    TabOrder = 1
                    inherited Label1: TLabel
                      Width = 56
                    end
                  end
                end
              end
            end
          end
        end
        object page_campos: TSCLTabSheet
          Color = 16578290
          Caption = 'Campos'
          object grid_camp_disponibles: TSCLDBGrid
            Left = 0
            Top = 0
            Width = 327
            Height = 482
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderMinRowCount = 2
            HeaderPanelRowCount = 1
            KeyField = 'consecutivo'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            DragMode = dmAutomatic
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ArrowsColor = clHighlight
            AutoSearchColor = 4227327
            AutoSearchTextColor = clBlack
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWindowText
            BandFont.Height = -11
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = []
            DataSource = data_campos
            Filter.Criteria = {00000000}
            GridLineColor = 14467501
            GroupPanelColor = 13265692
            GroupPanelFontColor = clWhite
            GroupNodeColor = 15982803
            GroupNodeTextColor = 8072450
            HeaderColor = 16578290
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = 8072450
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            HideFocusRect = True
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
            ShowHeader = False
            object gridconsecutivo: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'consecutivo'
            end
            object gridnomb_campo: TdxDBGridMaskColumn
              BandIndex = 0
              RowIndex = 0
              FieldName = 'nomb_campo'
            end
            object gridDESC_CAMPO: TdxDBGridColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DESC_CAMPO'
            end
          end
        end
        object page_avanzado: TSCLTabSheet
          Color = 16578290
          Caption = 'Avanzado'
          object PropInsp: TELPropertyInspector
            Left = 0
            Top = 0
            Width = 327
            Height = 456
            Splitter = 119
            Align = alClient
            TabOrder = 0
            OnFilterProp = PropInspFilterProp
          end
        end
      end
    end
  end
  object pane_data: TPanel
    Left = 50
    Top = 83
    Width = 115
    Height = 73
    TabOrder = 4
    Visible = False
  end
  object ImageList1: TImageList
    Left = 56
    Top = 168
    Bitmap = {
      494C010124002700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF85B3C9FF679BB6FF5088A6FF4A86A7FF4585A6FF4282A5FF5694B6FF5D9D
      C0FF000000FF000000FF000000FF000000FF555555FFE3E3E3FF000000FF0000
      00FF000000FF000000FF000000FF000000FF393939FF000000FF000000FF0000
      00FF000000FF000000FFE3E3E3FF555555FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00000000000000000000000000000000FF000000FF000000FF6599
      B3FF5BA3C3FF57B3DEFF4EB2E2FF40ACE2FF37A7E0FF38A4DBFF3090C0FF2F89
      B4FF4588ADFF000000FF000000FF000000FFE3E3E3FF555555FF000000FF0000
      00FF000000FF000000FF000000FF000000FF393939FF000000FF000000FF0000
      00FF000000FF000000FF555555FFE3E3E3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF00000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FFFF
      FF00BDBDBD00000000000000000000000000000000FF000000FF6A90A2FF82C2
      DFFF7DCDEFFF6CC7ECFF62C3EDFF54BCECFF47B4EAFF3AAEE9FF2EA5E4FF2C9D
      D8FF2D8AB7FF3C7595FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF00000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00000000000000000000000000000000FF000000FF6F92A3FF8BD6
      F2FF91DBF3FF83D4F1FF71CAEFFF62C2EDFF53BAECFF45B3EBFF39ADE9FF2FA8
      E8FF238DC4FF3C7594FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF00000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFF
      FF00BDBDBD00000000000000000000000000000000FF000000FF7596A5FFA9E7
      F6FF9DE1F5FF8FD9F3FF7FD1F1FF6EC8EFFF5EC1EEFF4FB9EBFF43B3EBFF38AD
      E9FF2A9AD1FF3C7594FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFFC3B2FF000000FF868686FF989898FF000000FF000000FF000000FFFFD1
      C3FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF00000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00000000000000000000000000000000FF000000FF7A99A7FFB0EB
      F7FFA6E5F6FF99DFF4FF8BD7F2FF79CEF1FF6AC7EEFF5BBFEDFF4DB8ECFF42B2
      EAFF2F9ED6FF3C7594FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFFBDA7FF000000FF9A9A9AFFABABABFF000000FF000000FF000000FFFFC5
      B2FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF00000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFF
      FF00BDBDBD00000000000000000000000000000000FF000000FF7E9CA8FFB5ED
      F8FFADE9F7FFA2E4F6FF95DDF4FF85D5F3FF75CDF1FF65C5EFFF56BDEDFF4BB6
      ECFF34A4DAFF3D7796FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFFB39DFF000000FF000000FF000000FF000000FF000000FF000000FFFFB9
      A3FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF00000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00000000000000000000000000000000FF000000FF839FAAFFB5EE
      F8FFB3EDF8FFAAE8F7FF9FE2F6FF90DAF4FF7FD2F3FF70CAF0FF61C2EEFF53BB
      EDFF39A9DEFF417896FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFFAE93FFFFB49EFFFFBCA6FFFFBDA8FFFFBCA6FFFFBCA6FFFFB098FFFFAF
      95FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FFFF
      FF00BDBDBD00000000000000000000000000000000FF000000FF87A1ABFFB6EE
      F8FFB5EDF8FFB1ECF8FFA6E7F7FF9ADFF5FF8AD8F3FF7BD0F2FF6BC8F0FF5CC0
      EFFF3FAFE1FF447998FF000000FF000000FF393939FF393939FF000000FF0000
      00FFFFA284FFFFCFBFFF000000FF000000FF000000FF000000FFFFA88CFFFFA3
      86FF000000FF000000FF393939FF393939FF0000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00000000000000000000000000000000FF000000FF11118AFF8F8F
      CBFFBDF0F9FFBCEEF9FFB7EDF8FFAEE7F7FFA0E1F6FF93DBF4FF85D3F3FF77CD
      F2FF44B3E5FF487B98FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFF9C7BFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFAD
      93FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000000000000000000000000000FFFFFF00BDBDBD00BDBDBD00FFFF
      FF00BDBDBD00000000000000000000000000000000FF000000FF90A5AEFFACD9
      E9FFA6CAD6FFA8BAC3FF8FA8B4FF89A5B3FF819EABFF7E9EAFFF91ADBBFF89BD
      D4FF85C6E5FF4B7E99FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFF9877FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00000000000000000000000000000000FF000000FF11118AFF8F8F
      CBFFB1D5DCFFB3D4DCFFB2DCE5FFA3D9E9FF95D1E7FF93CDE5FF90C4DCFF7AAE
      C9FF769AAEFF51819BFF000000FF000000FF000000FF000000FF000000FF0000
      00FFFF9977FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
      FFFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B007B7B
      7B007B7B7B00000000000000000000000000000000FF000000FF10108AFF4444
      A7FFBFEEF7FFB6EEF8FFB6EEF8FFA9E6F6FF96DCF2FF7ECFEFFF66C1EAFF68BD
      E7FF73A5C1FF6B95ABFF000000FF000000FF000000FF000000FF000000FF1D1D
      1DFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF1D1D1DFF000000FF000000FF000000FF0000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFF
      FF007B7B7B00000000000000000000000000000000FF000000FF9696CDFF1010
      8AFF7D7DC5FFBEDFE5FFBEEAF1FFB1EAF7FFA0DFF3FF99D6EFFF90CAE1FF82B3
      CCFF74A1B9FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000008686C8FF0000ADFF000000FF1111
      8AFF11118AFFB3C9D0FFA1BAC3FF9DB7C2FF94B0BBFF8FAFBDFF93BACCFF9EC3
      D4FF000000FF000000FF000000FF000000FFE3E3E3FF555555FF000000FF0000
      00FF000000FF000000FF000000FF000000FF393939FF000000FF000000FF0000
      00FF000000FF000000FF555555FFE3E3E3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009696CDFF10108AFF11118AFF0505
      83FF8F8FCBFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF555555FFE3E3E3FF000000FF0000
      00FF000000FF000000FF000000FF000000FF393939FF000000FF000000FF0000
      00FF000000FF000000FFE3E3E3FF555555FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF000000FF0000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF000000FF0000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FF000000FF0000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B00BDBDBD00BDBDBD007B7B
      7B0000000000FFFFFF00000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B00BDBDBD00BDBDBD00FFFF00007B7B
      7B00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B00BDBDBD0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000BDBDBD00FFFF0000BDBDBD00BDBDBD007B7B
      7B00BDBDBD0000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B00FFFF0000FFFF0000BDBDBD007B7B
      7B00FFFFFF0000000000000000000000000000000000FFFFFF0000000000BDBD
      BD0000000000FFFFFF0000000000BDBDBD0000000000BDBDBD00000000000000
      000000000000000000007B0000007B0000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B00BDBDBD00BDBDBD007B7B
      7B000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000BDBDBD0000000000BDBDBD0000000000BDBDBD0000000000BDBDBD00BDBD
      BD00BDBDBD00000000007B0000007B0000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD0000000000BDBDBD0000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B0000007B00000000000000FF000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B0000007B00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00000000007B0000007B00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF666666FF6633
      33FF663333FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000FF000000FF663333FFCC66
      66FFCC6666FFCC6666FFCC6666FF996666FF993333FF993333FF663333FF6633
      33FF663333FF000000FF000000FF000000FF0000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000BDBDBD0000000000FFFF
      FF007B0000007B000000FFFFFF00BDBDBD00FFFFFF007B0000007B0000007B00
      00007B0000007B000000FFFFFF0000000000000000FF666666FF663333FF6633
      33FF663333FF663333FF222222FF330000FF111111FF110000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000FFCC6666FFFFCCCCFFFFCC
      CCFFFFCCCCFFFFCCCCFFFFCCCCFFFF9999FFFF9999FFCC9999FFCC6666FFCC66
      66FF66FFCCFFCC6666FF000000FF000000FF0000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000BDBDBD0000000000FFFF
      FF007B0000007B000000FFFFFF00BDBDBD00FFFFFF007B0000007B0000007B00
      00007B0000007B000000FFFFFF0000000000000000FFCC6666FFFFFFFFFFFFCC
      CCFFFFCCCCFFFFCCCCFFFFCCCCFFFF9999FFFF9999FFCC9999FFCC6666FFCC66
      66FFCC6666FFCC6666FF000000FF000000FF0000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000FF666666FFCC6666FFCC66
      66FFCC6666FFCC6666FFCC6666FF996666FF993333FF663333FF663333FF6633
      33FF663333FF440000FF000000FF000000FF0000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000BDBDBD0000000000FFFF
      FF007B0000007B000000FFFFFF00BDBDBD00FFFFFF007B0000007B0000007B00
      00007B0000007B000000FFFFFF0000000000000000FF000000FFCC6666FFFFCC
      CCFF555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF3333
      33FFCC6666FF440000FF000000FF000000FF0000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000FF000000FFCC6666FFFFFF
      FFFF555555FFFFFFFFFF888888FF888888FFBBBBBBFFFFFFFFFFDDDDDDFF3333
      33FFCC6666FF440000FF000000FF000000FF0000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000BDBDBD0000000000FFFF
      FF007B0000007B000000FFFFFF00BDBDBD00FFFFFF007B0000007B0000007B00
      00007B0000007B000000FFFFFF0000000000000000FF000000FFCC6666FFCC66
      66FF555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF3333
      33FF440000FF440000FF000000FF000000FF0000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000FF000000FF000000FF0000
      00FF555555FFFFFFFFFF888888FFBBBBBBFF888888FF888888FFDDDDDDFF3333
      33FF000000FF000000FF000000FF000000FF0000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF3333
      33FF000000FF000000FF000000FF000000FF0000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000084000000840000008400
      00008400000084000000FFFFFF00840000008400000084000000840000008400
      0000FFFFFF0084000000000000000000000000000000FFFFFF0000000000FFFF
      FF00BDBDBD00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF0000000000000000FF000000FF000000FF0000
      00FF555555FFFFFFFFFF888888FF888888FFBBBBBBFF555555FF333333FF3333
      33FF000000FF000000FF000000FF000000FF0000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555555FFDDDDDDFF3333
      33FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF8888
      88FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF00000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000007B7B
      7B00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF00000000007B7B7B00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFF00007B7B
      7B00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000007B7B7B00FFFF00000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFF0000FFFFFF007B7B
      7B00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF000000
      0000000000000000000000000000000000000000FF0000000000000000007B7B
      7B0000000000000000007B7B7B00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF0000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      00008400000084000000FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFF00007B7B
      7B00BDBDBD00FFFFFF00BDBDBD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00BDBDBD007B7B7B00FFFF00000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFF0000FFFFFF007B7B
      7B00FFFFFF00BDBDBD00FFFFFF00BDBDBD0000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00BDBDBD00FFFFFF007B7B7B00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF0000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFF00007B7B
      7B00BDBDBD00FFFFFF00BDBDBD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00BDBDBD007B7B7B00FFFF0000FFFFFF00FFFF0000FFFFFF000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFF0000FFFFFF007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000007B7B
      7B00BDBDBD00FFFFFF007B7B7B00FFFFFF00FFFF0000FFFFFF00FFFF00000000
      0000BDBDBD000000000000000000000000000000000084000000FFFFFF008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF00FFFF0000FFFF
      FF00FFFF000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000007B7B
      7B00FFFFFF00BDBDBD007B7B7B00FFFF0000FFFFFF00FFFF0000FFFFFF000000
      0000000000000000000000000000000000000000000084000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFF0000FFFFFF00FFFF
      0000FFFFFF0000000000000000000000000000000000000000000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000007B7B
      7B00BDBDBD00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000007B7B
      7B00FFFFFF00BDBDBD00FFFFFF00BDBDBD0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000007B7B
      7B00BDBDBD00FFFFFF00BDBDBD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      00008400000084000000840000008400000084000000FFFFFF00840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF00BDBD
      BD007B7B7B00BDBDBD00FFFFFF00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF007B7B7B00FFFFFF007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000007B0000007B0000007B000000
      7B00000000000000000000000000000000000000000000000000000000000000
      000000007B0000007B0000000000000000007B0000007B0000007B0000007B00
      000000000000000000007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFF
      FF007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B000000
      7B0000007B000000000000000000000000000000000000000000000000000000
      7B0000007B0000007B0000007B00000000000000000000000000000000007B00
      0000FF0000007B00000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000007B000000
      7B0000007B0000007B000000000000000000000000000000000000007B000000
      7B0000007B0000007B0000000000000000000000000000000000000000007B00
      00007B000000FF0000007B00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      7B0000007B0000007B0000007B00000000000000000000007B0000007B000000
      7B0000007B000000000000000000000000000000000000000000000000007B00
      0000FF0000007B000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      00007B7B7B00000000007B7B7B0000000000000000007B7B7B00000000000000
      000000007B0000007B0000007B0000007B0000007B0000007B0000007B000000
      7B007B7B7B00000000007B7B7B00000000000000000000000000000000007B00
      00007B000000FF0000007B00000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000007B7B7B000000000000FFFF0000FF
      FF0000FFFF0000007B0000007B0000007B0000007B0000007B0000007B000000
      00000000000000FFFF0000000000000000000000000000000000000000007B00
      0000FF0000007B000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00000000007B7B7B0000000000FFFFFF0000FFFF000000
      000000FFFF000000000000007B0000007B0000007B0000007B00000000000000
      00000000000000FFFF00000000007B7B7B000000000000000000000000007B00
      00007B000000FF0000007B00000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      000000FFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000000000FFFFFF0000FFFF000000
      000000FFFF0000007B0000007B0000007B0000007B0000007B0000007B00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000007B00
      0000FF0000007B000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B0000000000FFFFFF0000FFFF000000
      000000007B0000007B0000007B0000007B0000007B0000007B0000007B000000
      7B000000000000000000000000007B7B7B000000000000000000000000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000FFFFFF000000
      7B0000007B0000007B0000007B00000000000000000000007B0000007B000000
      7B0000007B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B0000007B000000
      7B0000007B0000007B000000000000000000000000000000000000007B000000
      7B0000007B0000007B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B000000
      7B0000007B000000000000000000000000000000000000000000000000000000
      7B0000007B0000007B0000007B00000000000000000000000000000000000000
      00000000000000000000007B0000007B0000007B0000007B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000007B0000007B0000007B000000
      7B00000000000000000000000000000000000000000000000000000000000000
      000000007B0000007B0000007B0000007B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B0000007B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B7B7B007B7B7B00FFFF
      FF007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF007B7B7B00FFFF
      FF007B7B7B00FFFFFF007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B0000000000000000000000000000007B00
      0000BDBDBD00BDBDBD007B00000000000000000000007B0000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B0000007B7B7B0000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      00000000000000000000000000007B000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF007B0000000000000000000000000000007B00
      0000BDBDBD00BDBDBD007B000000000000007B000000BDBDBD00BDBDBD007B00
      000000000000000000000000000000000000000000007B7B7B00007B7B007B7B
      7B00007B7B007B7B7B007B000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF007B0000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B0000000000000000000000000000007B00
      0000BDBDBD00BDBDBD007B000000000000007B000000BDBDBD00BDBDBD007B00
      00000000000000000000000000000000000000000000007B7B007B7B7B00007B
      7B007B7B7B00007B7B007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B0000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF007B0000000000000000000000000000000000
      00007B0000007B0000007B000000000000007B000000BDBDBD00BDBDBD007B00
      000000000000000000000000000000000000000000007B7B7B00007B7B007B7B
      7B00007B7B007B7B7B007B000000FFFFFF00000000000000000000000000FFFF
      FF007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF007B7B7B00FFFF
      FF007B7B7B00FFFFFF007B7B7B00000000000000000000000000FFFFFF000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B0000000000000000000000000000000000
      000000000000000000007B000000000000007B0000007B0000007B0000000000
      00000000000000000000000000000000000000000000007B7B007B7B7B00007B
      7B007B7B7B00007B7B007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B000000FFFFFF007B000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B7B7B007B7B7B00FFFF
      FF007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF000000000000000000FFFF
      FF007B0000007B0000007B0000007B0000000000000000000000000000000000
      000000000000000000007B000000000000007B00000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00007B7B007B7B
      7B00007B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000007B00000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000007B7B7B00000000007B7B7B00FFFF
      FF007B7B7B000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B000000FFFFFF007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B007B7B7B00007B
      7B007B7B7B00007B7B007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000000000000000000000000000007B7B7B00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00007B7B007B7B
      7B00007B7B007B7B7B00007B7B007B7B7B00007B7B007B7B7B00007B7B007B7B
      7B00007B7B000000000000000000000000007B7B7B0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00000000007B0000007B0000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B000000000000000000000000007B7B7B00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B000000
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00000000007B7B
      7B00007B7B000000000000000000000000007B7B7B0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B007B7B7B00007B
      7B000000000000FFFF00000000000000000000FFFF00000000007B7B7B00007B
      7B007B7B7B000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000FFFF00FFFFFF0000FF
      FF007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF007B7B7B00000000000000000000000000000000FF000000FF000000FF6060
      60FF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF606060FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF131313FFE3E3
      E3FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B7B7B007B7B7B00FFFF
      FF007B7B7B007B7B7B00FFFFFF0000000000000000FF000000FF000000FF4C4C
      4CFFABABABFFABABABFFABABABFFABABABFFABABABFFABABABFFABABABFFABAB
      ABFFABABABFF4C4C4CFF000000FF000000FF000000FF000000FF393939FF3BC0
      EDFF03AFE8FF03AFE8FF03AFE8FF03AFE8FF03AFE8FF03AFE8FF03AFE8FF3F6D
      7AFFE3E3E3FF000000FF000000FF000000FF000000FF000000FFFF7345FFFFB7
      9FFF000000FF8D8D8DFF8A8A8AFF9D9D9DFF0D0D0DFF000000FF000000FF0000
      00FFFFC3B0FFFF9D7EFF000000FF000000FF7B7B7B0000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF007B7B7B00FFFF
      FF007B7B7B00FFFFFF007B7B7B0000000000000000FF000000FF000000FF4C4C
      4CFFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2
      B2FFB2B2B2FF4C4C4CFF000000FF000000FF000000FF000000FF54D3FEFF3F4E
      53FF3CC2EEFF05B1EAFF05B1EAFF05B1EAFF05B1EAFF05B1EAFF05B1EAFF05B1
      EAFF436A75FFE3E3E3FF000000FF000000FF000000FF000000FFFF7D53FFFFB7
      9FFF000000FF989898FF959595FF9D9D9DFF000000FF000000FF000000FF0000
      00FFFFD9CDFFFFA88CFF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B00000000FF000000FF000000FF4C4C
      4CFFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
      B8FFB8B8B8FF4C4C4CFF000000FF000000FF000000FF000000FF26C8FEFF56D4
      FEFF393939FF59CBF1FF59CBF1FF59CBF1FF59CBF1FF59CBF1FF59CBF1FF59CB
      F1FF59CBF1FF393939FFE3E3E3FF000000FF000000FF000000FFFF906BFFFFB8
      A1FF000000FFC4C4C4FFC6C6C6FFD6D6D6FF0D0D0DFF000000FF000000FF0000
      00FFFFDDD2FFFFBEA9FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FF000000FF4C4C
      4CFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
      BEFFBEBEBEFF4C4C4CFF000000FF000000FF000000FF000000FF2AC9FEFF2AC9
      FEFF59D5FEFF131313FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF333333FF262626FF000000FF000000FF000000FFFF9573FFFFB1
      97FF1D1D1DFF000000FF000000FF000000FF000000FF000000FF000000FF1D1D
      1DFFFFDACFFFFFC2AEFF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B00000000FF000000FF000000FF4C4C
      4CFFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
      C5FFC5C5C5FF4C4C4CFF000000FF000000FF000000FF000000FF2DCAFEFF2DCA
      FEFF2DCAFEFF2DCAFEFF2DCAFEFF2DCAFEFF2DCAFEFF44D0FEFF393939FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFFA082FFFF95
      72FFFFCFC0FFFFDBCFFFFFDED3FFFFE2D9FFFFE8E1FFFFEBE5FFFFEDE7FFFFE6
      DEFFFFCDBDFFFFC0ABFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00FFFFFF007B7B7B00FFFF
      FF007B7B7B00FFFFFF007B7B7B0000000000000000FF000000FF000000FF4C4C
      4CFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
      CBFFCBCBCBFF4C4C4CFF000000FF000000FF000000FF000000FF30CBFEFF30CB
      FEFF30CBFEFF47D0FEFF75DCFEFF75DCFEFF75DCFEFF0B0B0BFF00044EFF0004
      4EFF000885FF000000FF000000FF000000FF000000FF000000FFFF9673FFFFCD
      BEFF393939FF000000FF000000FF000000FF000000FF000000FF000000FF3939
      39FFFFE3DBFFFFCFC0FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B7B7B007B7B7B00FFFF
      FF007B7B7B007B7B7B00FFFFFF0000000000000000FF000000FF000000FF4C4C
      4CFFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
      D1FFD1D1D1FF4C4C4CFF000000FF000000FF000000FF000000FF77DCFEFF8EE2
      FEFF393939FF393939FF000000FF000000FF000000FF0B0B0BFF7C8AFFFF7C8A
      FFFF00044EFF000000FF000000FF000000FF000000FF000000FFFFA588FF3939
      39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF393939FFFFCDBDFF000000FF000000FF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000007B7B7B00FFFF
      FF007B7B7B00000000000000000000000000000000FF000000FF000000FF4C4C
      4CFFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
      D7FFD7D7D7FF4C4C4CFF000000FF000000FF000000FF0D0D0DFF000000FF0000
      00FF0D0D0DFF000000FF000000FF000000FF000000FF0B0B0BFF0011FFFF7C8A
      FFFF00044EFF000000FF000000FF000000FF000000FF000000FFFFB095FF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FFFFD2C3FF000000FF000000FF00000000FFFFFF00000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF4C4C
      4CFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
      DCFFDFDFDFFF4C4C4CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0B0B0BFF00044EFF0B0B0BFF0011FFFF7C8A
      FFFF00044EFF00044EFF000885FF000000FF000000FF000000FFFFAD93FF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FFFFCEBEFF000000FF000000FF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF4C4C
      4CFFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FF555555FF4C4C
      4CFF747474FF4C4C4CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0B0B0BFF0102B8FF0011FFFF0001FFFF0011
      FFFF7C8AFFFF7C8AFFFF0B0B0BFF000000FF000000FF000000FFFFB8A0FF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FFFFBDA7FF000000FF000000FF00000000FFFFFF00000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF4C4C
      4CFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF4C4C4CFFDADA
      DAFFCBCBCBFF4C4C4CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0B0B0BFF0102B8FF0011FFFF0011
      FFFF000DB8FF0B0B0BFF000000FF000000FF000000FF000000FFFFB49CFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF727272FF000000FF000000FF00000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF4C4C
      4CFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEDEDEDFF4C4C4CFFCBCB
      CBFF747474FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF0B0B0BFF0102B8FF000D
      B8FF0B0B0BFF000000FF000000FF000000FF000000FF000000FFFFB49BFF3939
      39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF393939FFFFFFFFFF000000FF000000FF00000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF6060
      60FF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0B0B0BFF0B0B
      0BFF000000FF000000FF000000FF000000FF000000FF1D1D1DFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF1D1D1DFF000000FF00000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFC003F00F3F7CFB83C003E0073F7C
      F183C003C003FFFFEA83C003C003F007FB83C003C003E047FB83C003C003E047
      FF83C003C003E007E083C003C003E007E083C003C0032004E0FFC003C003E007
      E0FFC003C003E007E0FFC003C003E007E0FFC003C003E007E0FFC007C007FFFF
      E0FFC00F200F3F7CFFFFFFFF07FF3F7CFFFFFFFFFFFFFE01FFFFE0FFFFE1FE01
      FFFFE0FFFFE1FE018077E0FFDFE1FE01807BE0FF8C21EE018041E0FF5421EE01
      807BE0FFDC21AA018077E083DC3FC601FFFFE083FC3BEFFFFE01FF83843BFFFF
      FE01FB83842AFFFFFE01FB838431FFFFFE01EA8387FBFE01FE01F18387FFFE01
      FFFFFB8387FFFE01FFFFFFFFFFFFFE01FFFF81FFFFFFFFFF00F081FFFFFFFFFF
      00F081FFFFFFFFFF00F0F00FFFDDEE0100F0F00FFFCDDE0100F0F00F80058201
      00F0FF81FFCDDE0100F0FF81FFDDEE0100F0FF81BBFFFFFFFFFFFFFFB3FF807F
      FDFFB7EDA001807FFEFFAFF5B3FF807FF07F8001BBFF807FFEFFAFF5FFFF807F
      FDFFB7EDFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFDF000C000FFC4181EF
      0008000FFC7781070001000FFC6381EF0003000FE05581DF0001000FE077FFFF
      0003000FE077F00F0003000FE3F7F00F00030004E3F7F00F0007000003F7F00F
      000F000003F7FFFF000FF80003D5FB81000FFC001FE3F781001FFE041FF7E081
      003FFFFF1FC1F781007FFFFFFFFFFBFFFFFFFFFFFFFFFFFF800380030000C007
      800380030000C003800380030000800380038003000080018003800300008001
      8003800300008003800380030000C003800380030000C003800380030000C003
      800380030000F00F800380030000F00F800380030000F00F800380030000F00F
      FFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFE00F87FFFC00FFFFE00FC7FFFC00
      FFFFE00F8401FC00FFDD000F1401FC00FFCD000F7C01E0008005000F6001E000
      FFCD000FE001E000FFDD001FE001E007BBFF003FE0018007B3FF007DE0038007
      A00100FDE0078007B3FF01D1E00F801FBBFF03C3E01F801FFFFFFFC7E03F801F
      FFFFFFC3E07F801FFFFFFFFFFFFFFFFF0000FFFFFFFF9FFF0000FFFFFFFF0FF3
      0000DFFBFFFF87E1E0078FFFFFFFC3C3E00787F7FFFFE187E007C7EF83F18001
      E007E3CF03F10011E007F19F00000000E007F83F00000000E007FC7F00000000
      E007F83F03FF0187FFFFF19F83FF83C3F81FC3CFFFFF87E1F81F87E7FFFF0FF0
      F81F8FFBFFFF9FF9FFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFF01FE00F3FFFC00
      F701FE00E19F80000200FE00E10F000002008000E10F000076008000F10F0000
      7F018000FD1F0001FF018000FC7F000300478001FEFF0003007F8003FC7F0003
      007F8007FD7F0003007F807FF93F0003007F80FFFBBF0003007F81FFFBBF8007
      00FFFFFFFBBFF87F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E003800FC001F701
      E003800780610301E003800380610200E003800180617600E003800180017E00
      E003801F8001FF01E003800780010001E0038007800100C7E0038787800100FF
      E003FE01800100FFE003FE01800100FFE003FF03800100FFE007FF87800100FF
      E00FFFCF800101FFFFFFFFFFFFFF03FF00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 56
    Top = 196
    object acti_nuevo: TAction
      Category = 'File'
      Caption = 'Nuevo'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = acti_nuevoExecute
    end
    object acti_vist_previa: TAction
      Category = 'Report'
      Caption = 'Vista previa'
      ImageIndex = 20
      ShortCut = 120
      OnExecute = acti_vist_previaExecute
    end
    object acti_ver_insp_objetos: TAction
      Category = 'View'
      Caption = 'Inspector de objetos'
      ImageIndex = 21
      ShortCut = 122
    end
    object acti_abrir: TAction
      Category = 'File'
      Caption = 'Abrir'
      ImageIndex = 1
      ShortCut = 16463
      OnExecute = acti_abrirExecute
    end
    object acti_guardar: TAction
      Category = 'File'
      Caption = 'Guardar'
      ImageIndex = 2
      ShortCut = 16455
      OnExecute = acti_guardarExecute
      OnUpdate = acti_guardarUpdate
    end
    object acti_copiar: TAction
      Category = 'Edit'
      Caption = 'Copiar'
      ImageIndex = 5
      ShortCut = 16451
      OnExecute = acti_copiarExecute
      OnUpdate = acti_copiarUpdate
    end
    object acti_cortar: TAction
      Category = 'Edit'
      Caption = 'Cortar'
      ImageIndex = 6
      ShortCut = 16472
      OnExecute = acti_cortarExecute
      OnUpdate = acti_cortarUpdate
    end
    object acti_pegar: TAction
      Category = 'Edit'
      Caption = 'Pegar'
      ImageIndex = 7
      ShortCut = 16470
      OnExecute = acti_pegarExecute
      OnUpdate = acti_pegarUpdate
    end
    object acti_habilitar: TAction
      Category = 'Edit'
      Caption = 'Habilitar'
    end
    object acti_eliminar: TAction
      Category = 'Edit'
      Caption = 'Eliminar'
      ImageIndex = 9
      ShortCut = 46
      OnExecute = acti_eliminarExecute
    end
    object acti_bloquear: TAction
      Category = 'Edit'
      Caption = 'Bloquear control'
      ImageIndex = 10
      OnExecute = acti_bloquearExecute
    end
    object acti_desbloquear: TAction
      Category = 'Edit'
      Caption = 'Desbloquear control'
      ImageIndex = 11
      OnExecute = acti_desbloquearExecute
    end
    object acti_desb_todos: TAction
      Category = 'Edit'
      Caption = 'Desbloquear todos'
      OnExecute = acti_desb_todosExecute
    end
    object acti_sele_todos: TAction
      Category = 'Edit'
      Caption = 'Seleccionar todos'
      ShortCut = 16449
      OnExecute = acti_sele_todosExecute
    end
    object acti_alin_grid: TAction
      Category = 'Edit'
      Caption = 'Alinear a la tabla'
      ImageIndex = 12
      OnExecute = acti_alin_gridExecute
    end
    object acti_trae_frente: TAction
      Category = 'Edit'
      Caption = 'Traer al frente'
      ImageIndex = 14
      OnExecute = acti_trae_frenteExecute
    end
    object acti_envi_atras: TAction
      Category = 'Edit'
      Caption = 'Enviar al fondo'
      ImageIndex = 13
      OnExecute = acti_envi_atrasExecute
    end
    object acti_habi_todos: TAction
      Category = 'Edit'
      Caption = 'Habilitar todos'
      OnExecute = acti_habi_todosExecute
    end
    object acti_camb_datos: TAction
      Category = 'Report'
      Caption = 'Cambiar la fuente de datos'
      ImageIndex = 18
      ShortCut = 16505
    end
    object acti_zoom_100: TAction
      Category = 'View'
      Caption = 'Mostrar al 100%'
      OnExecute = acti_zoom_100Execute
    end
    object acti_imprimir: TAction
      Category = 'Report'
      Caption = 'Imprimir'
      ImageIndex = 19
      ShortCut = 16464
      OnExecute = acti_imprimirExecute
    end
    object acti_alin_izquierda: TAction
      Category = 'Align'
      Caption = 'Alinear a la izquierda'
      ImageIndex = 27
      OnExecute = doAlinear
    end
    object acti_alin_derecha: TAction
      Tag = 1
      Category = 'Align'
      Caption = 'Alinear a la derecha'
      ImageIndex = 28
      OnExecute = doAlinear
    end
    object acti_alin_arriba: TAction
      Tag = 2
      Category = 'Align'
      Caption = 'Alinear al borde superior'
      ImageIndex = 29
      OnExecute = doAlinear
    end
    object acti_alin_abajo: TAction
      Tag = 3
      Category = 'Align'
      Caption = 'Alinear al borde inferior'
      ImageIndex = 32
      OnExecute = doAlinear
    end
    object acti_alin_espa_horizontal: TAction
      Tag = 4
      Category = 'Align'
      Caption = 'Espacios horizontales iguales'
      ImageIndex = 24
      OnExecute = doAlinear
    end
    object acti_alin_espa_vertical: TAction
      Tag = 5
      Category = 'Align'
      Caption = 'Espacios verticales iguales'
      ImageIndex = 31
      OnExecute = doAlinear
    end
    object acti_alin_cent_horizontal: TAction
      Tag = 6
      Category = 'Align'
      Caption = 'Alinear al centro (horizontal)'
      ImageIndex = 23
      OnExecute = doAlinear
    end
    object acti_alin_cent_vertical: TAction
      Tag = 7
      Category = 'Align'
      Caption = 'Alinear al centro (vertical)'
      ImageIndex = 30
      OnExecute = doAlinear
    end
    object acti_alin_cent_vent_horizontal: TAction
      Tag = 8
      Category = 'Align'
      Caption = 'Centrar horizontalmente en la ventana'
      ImageIndex = 25
      OnExecute = doAlinear
    end
    object acti_alin_cent_Vent_vertical: TAction
      Tag = 9
      Category = 'Align'
      Caption = 'Centrar verticalmente en la ventana'
      ImageIndex = 22
      OnExecute = doAlinear
    end
    object acti_prop_reporte: TAction
      Category = 'Report'
      Caption = 'Propiedades del reporte'
      ImageIndex = 33
      ShortCut = 123
      OnExecute = acti_prop_reporteExecute
    end
    object acti_sele_dataSource: TAction
      Category = 'Datos'
      Caption = 'Asignar fuente de datos'
      ImageIndex = 34
      OnExecute = acti_sele_dataSourceExecute
      OnUpdate = acti_sele_dataSourceUpdate
    end
    object acti_abri_repo_para_editar: TAction
      Category = 'File'
      Caption = 'Abrir un reporte para editarlo'
      ImageIndex = 1
      OnExecute = acti_abri_repo_para_editarExecute
    end
  end
  object PopUpMenu1: TTBXPopupMenu
    Images = ImageList1
    Left = 56
    Top = 224
    object Enable1: TTBXItem
      Action = acti_habilitar
    end
    object N7: TTBXSeparatorItem
    end
    object Cut2: TTBXItem
      Action = acti_cortar
    end
    object Copy2: TTBXItem
      Action = acti_copiar
    end
    object Paste2: TTBXItem
      Action = acti_pegar
    end
    object Delete2: TTBXItem
      Action = acti_eliminar
    end
    object N2: TTBXSeparatorItem
    end
    object Align2: TTBXSubmenuItem
      Caption = 'Alinear'
      object actALLeft2: TTBXItem
        Action = acti_alin_izquierda
      end
      object actALRight2: TTBXItem
        Action = acti_alin_derecha
      end
      object actALHSpace2: TTBXItem
        Action = acti_alin_espa_horizontal
      end
      object actALHCenter2: TTBXItem
        Action = acti_alin_cent_horizontal
      end
      object actALHCenterWindow2: TTBXItem
        Action = acti_alin_cent_vent_horizontal
      end
      object N10: TTBXSeparatorItem
      end
      object actALTop2: TTBXItem
        Action = acti_alin_arriba
      end
      object actALBottom2: TTBXItem
        Action = acti_alin_abajo
      end
      object actALVSpace2: TTBXItem
        Action = acti_alin_espa_vertical
      end
      object actALVCenter2: TTBXItem
        Action = acti_alin_cent_vertical
      end
      object actALVCenterWindow2: TTBXItem
        Action = acti_alin_cent_Vent_vertical
      end
    end
    object AlignToGrid1: TTBXItem
      Action = acti_alin_grid
    end
    object Bringtofront1: TTBXItem
      Action = acti_trae_frente
    end
    object Sendtoback2: TTBXItem
      Action = acti_envi_atras
    end
    object N6: TTBXSeparatorItem
    end
    object Lock2: TTBXItem
      Action = acti_bloquear
    end
    object Unlock1: TTBXItem
      Action = acti_desbloquear
    end
  end
  object ELDesigner1: TELDesigner
    DesignPanel = ELDesignPanel1
    ShowingHints = [htControl]
    PopupMenu = PopUpMenu1
    ClipboardFormat = 'Extension Library designer components'
    OnControlInserting = ELDesigner1ControlInserting
    OnControlInserted = ELDesigner1ControlInserted
    OnChangeSelection = ELDesigner1ChangeSelection
    OnControlHint = ELDesigner1ControlHint
    OnKeyPress = TeclaEnControl
    OnDblClick = ELDesigner1DblClick
    OnDragDrop = ELDesigner1DragDrop
    OnDragOver = ELDesigner1DragOver
    Left = 56
    Top = 88
  end
  object data_reporte: TDataSource
    AutoEdit = False
    DataSet = tabl_Reporte
    Left = 84
    Top = 88
  end
  object fram_dial_abrir: TOpenPictureDialog
    Filter = 
      'Todos los tipos(*.qbmp;*.gif;*.bmp;*.ico;*.emf;*.wmf)|*.qbmp;*.g' +
      'if;*.bmp;*.ico;*.emf;*.wmf;*.jpg|Imágen Quick Bitmap (*.qbmp)|*.' +
      'qbmp|Imágen CompuServe GIF (*.gif)|*.gif|Mapas de Bits(*.bmp)|*.' +
      'bmp|Iconos (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Metafi' +
      'les (*.wmf)|*.wmf|JPG (*.jpg)|*.jpg;*.jpeg'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Abrir imágen'
    Left = 56
    Top = 252
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Texto enriquecido'
    Left = 56
    Top = 280
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'Página Web'
    Left = 88
    Top = 280
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Author = 'Softconf Limitada'
    DocumentInfo.Creator = 
      'PCP 4 - FortesReport v3.23 \251 Copyright © 1999-2004 Fortes Inf' +
      'ormática'
    DocumentInfo.Producer = 'PCP 4'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 120
    Top = 280
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Libro de MS-Excel'
    Left = 154
    Top = 279
  end
  object OQDLG: TOQBuilderDialog
    ShowButtons = [bRunQuery]
    Left = 52
    Top = 452
  end
  object tabl_Reporte: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 114
    Top = 88
  end
  object quer_repo_existentes: TQuery
    DatabaseName = 'data_base_pcp'
    Left = 74
    Top = 347
  end
  object myTabla_campos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.00 beta'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 51
    Top = 486
    object myTabla_Ventanaconsecutivo: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'consecutivo'
    end
    object myTabla_Ventananomb_campo: TStringField
      DisplayLabel = 'Nombre real'
      FieldName = 'nomb_campo'
      Size = 31
    end
    object myTabla_VentanaDESC_CAMPO: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESC_CAMPO'
      Size = 150
    end
  end
  object data_campos: TDataSource
    DataSet = myTabla_campos
    Left = 80
    Top = 486
  end
end

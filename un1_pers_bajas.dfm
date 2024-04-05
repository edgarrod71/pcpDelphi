inherited fn1_pers_bajas: Tfn1_pers_bajas
  Left = 20
  Top = 49
  Width = 812
  Height = 612
  Caption = 'Modificando personal (bajas)'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 584
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_vinculos: TTBXSubmenuItem
        Images = _fMDI.imag_grandes
        LinkSubitems = _fMDI.menu_personal
        Visible = True
      end
      object TBXItem3: TTBXItem [2]
        Action = acti_movi_ejecutar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_grandes
      end
      object TBXItem2: TTBXItem [3]
        Action = acti_movi_cancelar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_grandes
      end
      inherited padr_sepa_33: TTBSeparatorItem [4]
      end
      inherited padr_boto_nuevo: TTBXItem [5]
      end
      inherited padr_boto_modificar: TTBXItem [6]
      end
      inherited padr_boto_eliminar: TTBXItem [7]
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 234
    Width = 804
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 583
    Width = 804
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
  inherited pane_beve_abajo: TPanel
    Top = 575
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 241
    Width = 804
  end
  object PCPFrame1: TPCPFrame [8]
    Tag = 189
    Left = 0
    Top = 45
    Width = 804
    Height = 189
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
    Caption = 'Información del documento de baja'
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel40: TSCLDBLabel
      Left = 290
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
      FocusControl = CBTipo_Documento
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo Documento:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Field = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
    end
    object SCLDBLabel42: TSCLDBLabel
      Left = 560
      Top = 27
      Width = 110
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
      FocusControl = ENumero_Documento
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Número Documento:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NUME_DOCUMENTO'
      Field = 'NUME_DOCUMENTO'
    end
    object SCLDBLabel64: TSCLDBLabel
      Left = 10
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
      FocusControl = DBInicial
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha Inicial:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_INICIAL'
      Field = 'FECH_INICIAL'
    end
    object SCLDBLabel68: TSCLDBLabel
      Left = 10
      Top = 115
      Width = 100
      Height = 65
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
      Caption = 'Observaciones'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'OBSERVACIONES'
      Field = 'OBSERVACIONES'
    end
    object SCLDBLabel65: TSCLDBLabel
      Left = 280
      Top = 47
      Width = 110
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
      FocusControl = DBFinal
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha Final:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_FINAL'
      Field = 'FECH_FINAL'
    end
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
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
      FocusControl = CBTipo_Movimiento
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Tipo Baja:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERS_TIPO_MOVIMIENTO'
      Field = 'CONS_PERS_TIPO_MOVIMIENTO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 67
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
      FocusControl = CBSolicita
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Solicitado Por:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_SOLICITA'
      Field = 'CONS_SOLICITA'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 87
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
      FocusControl = CBAprobo
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Aprobado Por:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_APROBO'
      Field = 'CONS_APROBO'
    end
    object CBTipo_Documento: TPCPLookUpComboEdit
      Left = 392
      Top = 27
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      DataSource = data_ventana
      KeyField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      ListField = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
      ListSource = DSQTipo_Documento
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object SCLButton27: TTBXButtonSCL
      Left = 539
      Top = 28
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 9
      TabStop = False
    end
    object ENumero_Documento: TdxDBEdit
      Left = 672
      Top = 27
      Width = 145
      TabOrder = 2
      DataField = 'NUME_DOCUMENTO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBInicial: TdxDBDateEdit
      Left = 112
      Top = 47
      Width = 145
      TabOrder = 3
      DataField = 'FECH_INICIAL'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBObservaciones: TdxDBMemo
      Left = 112
      Top = 115
      Width = 425
      TabOrder = 7
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 65
    end
    object DBFinal: TdxDBDateEdit
      Left = 392
      Top = 47
      Width = 145
      Enabled = False
      TabOrder = 4
      DataField = 'FECH_FINAL'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object CBTipo_Movimiento: TPCPLookUpComboEdit
      Left = 112
      Top = 27
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PERS_TIPO_MOVIMIENTO'
      DataSource = data_ventana
      KeyField = 'CONS_PERS_TIPO_MOVIMIENTO'
      ListField = 'NOMB_PERS_TIPO_MOVIMIENTO'
      ListSource = DSQTipo_Movimiento
      ParentCtl3D = False
      TabOrder = 0
      OnChange = CBTipo_MovimientoChange
      DirectInput = False
    end
    object SCLButton1: TTBXButtonSCL
      Left = 259
      Top = 28
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 10
      TabStop = False
    end
    object CBSolicita: TPCPLookUpComboEdit
      Left = 112
      Top = 67
      Width = 281
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_SOLICITA'
      DataSource = data_ventana
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = data_pers_solicitar
      ParentCtl3D = False
      TabOrder = 5
      DirectInput = False
    end
    object CBAprobo: TPCPLookUpComboEdit
      Left = 112
      Top = 87
      Width = 281
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_APROBO'
      DataSource = data_ventana
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = data_pers_aprobar
      ParentCtl3D = False
      TabOrder = 6
      DirectInput = False
    end
  end
  object PCPFrame4: TPCPFrame [9]
    Tag = 119
    Left = 0
    Top = 243
    Width = 804
    Height = 23
    Align = alTop
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Caption = 'Filtros del personal'
    Titulo_Color = 16244694
    Titulo_Comprimido = True
    FlatBorder = True
    object Panel1: TPanel
      Left = 3
      Top = 22
      Width = 798
      Height = 91
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      inline fram_filt_personal: Tffra_maqu_ubicacion
        Left = 16
        Width = 577
        Height = 91
        inherited pane_tipo_ubicacion: TPanel
          Width = 577
          inherited SCLDBLabel33: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
            OnChange = fram_filt_personalcomb_tipo_ubicacionChange
          end
        end
        inherited pane_ubic_propia: TPanel
          Width = 577
          inherited SCLDBLabel34: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel35: TSCLDBLabel
            Left = 272
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_empresa: TPCPLookUpComboEdit
            OnChange = doActualizarConsultaPersonal
          end
          inherited comb_ubic_area: TPCPLookUpComboEdit
            Left = 354
            Width = 194
            OnChange = doActualizarConsultaPersonal
          end
          inherited SCLButton6: TTBXButton
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton7: TTBXButton
            Left = 550
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_externa: TPanel
          Width = 577
          Height = 44
          inherited SCLDBLabel36: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel37: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel1: TSCLDBLabel
            Left = 272
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_planta: TPCPLookUpComboEdit
            OnChange = doActualizarConsultaPersonal
          end
          inherited comb_ubic_seccion: TPCPLookUpComboEdit
            OnChange = doActualizarConsultaPersonal
          end
          inherited SCLButton8: TTBXButton
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton9: TTBXButton
            Images = Imagenes_Botones_Pequenos
          end
          inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
            Left = 354
            Width = 194
            OnChange = doActualizarConsultaPersonal
          end
          inherited SCLButton1: TTBXButton
            Left = 550
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_bodega: TPanel
          Top = 88
          Width = 577
          inherited SCLDBLabel39: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
        end
        inherited pane_ubic_otra: TPanel
          Top = 108
          Width = 577
          inherited SCLDBLabel38: TSCLDBLabel
            FontActive.Name = 'Tahoma'
          end
        end
      end
    end
  end
  object PCPFrame2: TPCPFrame [10]
    Tag = 362
    Left = 0
    Top = 266
    Width = 804
    Height = 309
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    FlatBorder = True
    object dfsSplitter1: TdfsSplitter
      Left = 403
      Top = 2
      Height = 305
      Cursor = crHSplit
      Align = alLeft
      Visible = False
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object PCPFrame5: TPCPFrame
      Tag = 358
      Left = 413
      Top = 2
      Width = 389
      Height = 305
      Align = alClient
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Caption = 'Personal que se dará de baja'
      Titulo_Color = 16244694
      Boton_Visible = False
      BorderWidthIn = 4
      FlatBorder = True
      object grid_temporal: TSCLDBGrid
        Left = 7
        Top = 26
        Width = 375
        Height = 272
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_PERSONAL'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = pop_2
        TabOrder = 1
        OnDblClick = grid_temporalDblClick
        ArrowsColor = clHighlight
        AutoSearchColor = 4227327
        AutoSearchTextColor = clBlack
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = data_temporal
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
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object dxDBGridMaskColumn1: TdxDBGridMaskColumn
          Visible = False
          Width = 176
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_PERSONAL'
        end
        object dxDBGridMaskColumn2: TdxDBGridMaskColumn
          Sorted = csUp
          Width = 101
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODI_PERSONAL'
          SummaryFooterType = cstCount
          SummaryFooterField = 'CONS_PERSONAL'
          SummaryFooterFormat = ',0'
        end
        object dxDBGridMaskColumn3: TdxDBGridMaskColumn
          Width = 244
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_COMPLETO'
        end
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 401
      Height = 305
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object PCPFrame3: TPCPFrame
        Tag = 358
        Left = 0
        Top = 0
        Width = 370
        Height = 305
        Align = alClient
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Caption = 'Personal disponible'
        Titulo_Color = 16244694
        Boton_Visible = False
        BorderWidthIn = 4
        FlatBorder = True
        object grid_pers_disponible: TSCLDBGrid
          Left = 7
          Top = 26
          Width = 356
          Height = 272
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_PERSONAL'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = pop_1
          TabOrder = 1
          OnDblClick = grid_pers_disponibleDblClick
          ArrowsColor = clHighlight
          AutoSearchColor = 4227327
          AutoSearchTextColor = clBlack
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = data_pers_disponible
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
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnSizing]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object grid_pers_disponibleCONS_PERSONAL: TdxDBGridMaskColumn
            Visible = False
            Width = 199
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERSONAL'
          end
          object grid_pers_disponibleCODI_PERSONAL: TdxDBGridMaskColumn
            Sorted = csUp
            Width = 90
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERSONAL'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CONS_PERSONAL'
            SummaryFooterFormat = ',0'
          end
          object grid_pers_disponibleNOMB_COMPLETO: TdxDBGridMaskColumn
            Width = 350
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMPLETO'
          end
        end
      end
      object Panel2: TPanel
        Left = 370
        Top = 0
        Width = 31
        Height = 305
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object boto_Adel_1: TTBXButtonSCL
          Left = 5
          Top = 27
          Width = 23
          Height = 20
          BorderSize = 2
          ButtonStyle = bsFlat
          ImageIndex = 60
          Images = _fMDI.imagenesPCP
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Action = acti_adic_1
        end
        object boto_adel_2: TTBXButtonSCL
          Left = 5
          Top = 59
          Width = 23
          Height = 20
          BorderSize = 2
          ButtonStyle = bsFlat
          ImageIndex = 59
          Images = _fMDI.imagenesPCP
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Action = acti_adic_todos
        end
        object boto_Atra_1: TTBXButtonSCL
          Left = 5
          Top = 107
          Width = 23
          Height = 20
          BorderSize = 2
          ButtonStyle = bsFlat
          ImageIndex = 57
          Images = _fMDI.imagenesPCP
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Action = acti_elim_1
        end
        object boto_atra_2: TTBXButtonSCL
          Left = 5
          Top = 131
          Width = 23
          Height = 20
          BorderSize = 2
          ButtonStyle = bsFlat
          ImageIndex = 58
          Images = _fMDI.imagenesPCP
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Action = acti_elim_todos
        end
      end
    end
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_Ventana
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_imprimir: TAction
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
    inherited padr_acti_expo_xls: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_HTML: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited Variables: TSCLPropiedadesForm
    verBotonesNavegacion = False
  end
  object quer_Tipo_Movimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_GLO_PERS_TIPO_MOVI_BAJA'
      '')
    Left = 673
    Top = 154
    object quer_Tipo_MovimientoCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CONS_PERS_TIPO_MOVIMIENTO'
    end
    object quer_Tipo_MovimientoCONS_FAMI_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_FAMI_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CONS_FAMI_MOVIMIENTO'
    end
    object quer_Tipo_MovimientoCODI_PERS_TIPO_MOVIMIENTO: TStringField
      FieldName = 'CODI_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CODI_PERS_TIPO_MOVIMIENTO'
      Size = 12
    end
    object quer_Tipo_MovimientoNOMB_PERS_TIPO_MOVIMIENTO: TStringField
      FieldName = 'NOMB_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.NOMB_PERS_TIPO_MOVIMIENTO'
      Size = 60
    end
    object quer_Tipo_MovimientoFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.FECH_SISTEMA'
    end
    object quer_Tipo_MovimientoUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.USUA_SISTEMA'
    end
  end
  object Quer_Tipo_Documento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_MOVI_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_MOVI_TIPO_DOCUMENTO')
    Left = 673
    Top = 182
  end
  object DSQTipo_Documento: TDataSource
    AutoEdit = False
    DataSet = Quer_Tipo_Documento
    Left = 701
    Top = 182
  end
  object DSQTipo_Movimiento: TDataSource
    AutoEdit = False
    DataSet = quer_Tipo_Movimiento
    Left = 701
    Top = 154
  end
  object quer_pers_disponible: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT'
      'CONS_PERSONAL, CODI_PERSONAL,'
      'NOMB_COMPLETO, CONS_UBIC_TIPO,'
      
        'CONS_EMPRESA, CONS_AREA, CONS_PLANTA, CONS_PLAN_LINEA, CONS_LINE' +
        '_SECCION'
      'from CON_GLO_PERS_UBIC_FECHA("NOW")'
      'WHERE CONS_ESTADO = 1'
      '')
    Left = 128
    Top = 490
    object quer_pers_disponibleCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
    end
    object quer_pers_disponibleCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object quer_pers_disponibleNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombres y apellidos'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
    end
    object quer_pers_disponibleCONS_UBIC_TIPO: TIntegerField
      FieldName = 'CONS_UBIC_TIPO'
    end
    object quer_pers_disponibleCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
    end
    object quer_pers_disponibleCONS_AREA: TIntegerField
      FieldName = 'CONS_AREA'
    end
    object quer_pers_disponibleCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
    end
    object quer_pers_disponibleCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
    end
    object quer_pers_disponibleCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
    end
  end
  object data_pers_disponible: TDataSource
    DataSet = quer_pers_disponible
    Left = 160
    Top = 490
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <>
    AfterInsert = myTabla_VentanaAfterInsert
    BeforePost = myTabla_VentanaBeforePost
    Left = 249
    Top = 6
    object myTabla_VentanaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Tipo Baja'
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CONS_PERS_TIPO_MOVIMIENTO'
      Required = True
    end
    object myTabla_VentanaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Origin = 
        'DATA_BASE_PCP.GLO_PERS_MOVI_TIPO_DOCUMENTO.CONS_PERS_MOVI_TIPO_D' +
        'OCUMENTO'
      Required = True
    end
    object myTabla_VentanaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
    end
    object myTabla_VentanaFECH_INICIAL: TDateField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
      Required = True
    end
    object myTabla_VentanaFECH_FINAL: TDateField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
    end
    object myTabla_VentanaCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado Por'
      FieldName = 'CONS_SOLICITA'
    end
    object myTabla_VentanaCONS_APROBO: TIntegerField
      DisplayLabel = 'Aprobado Por'
      FieldName = 'CONS_APROBO'
    end
    object myTabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
  end
  object acti_Ventana: TActionList
    Images = _fMDI.imagenesPCP
    OnUpdate = acti_VentanaUpdate
    Left = 576
    Top = 156
    object acti_adic_1: TAction
      Caption = 'Adicionar selección'
      ImageIndex = 60
      OnExecute = acti_adic_1Execute
    end
    object acti_adic_todos: TAction
      Caption = 'Adicionar todos'
      ImageIndex = 59
      OnExecute = acti_adic_todosExecute
    end
    object acti_elim_1: TAction
      Caption = 'Eliminar selección'
      ImageIndex = 57
      OnExecute = acti_elim_1Execute
    end
    object acti_elim_todos: TAction
      Caption = 'Eliminar todos'
      ImageIndex = 58
      OnExecute = acti_elim_todosExecute
    end
    object acti_movi_ejecutar: TAction
      Caption = 'Ejecutar'
      ImageIndex = 7
      OnExecute = acti_movi_ejecutarExecute
    end
    object acti_movi_cancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 8
      OnExecute = acti_movi_cancelarExecute
    end
  end
  object pop_1: TTBXPopupMenu
    Left = 96
    Top = 490
    object TBXItem6: TTBXItem
      Action = acti_adic_1
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imagenesPCP
    end
    object TBXItem7: TTBXItem
      Action = acti_adic_todos
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imagenesPCP
    end
  end
  object tabl_temporal: TRxMemoryData
    FieldDefs = <>
    Left = 504
    Top = 372
    object tabl_temporalCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
    end
    object tabl_temporalCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object tabl_temporalNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombres y apellidos'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
    end
  end
  object data_temporal: TDataSource
    AutoEdit = False
    DataSet = tabl_temporal
    Left = 536
    Top = 372
  end
  object pop_2: TTBXPopupMenu
    Left = 507
    Top = 406
    object TBXItem1: TTBXItem
      Action = acti_elim_1
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imagenesPCP
    end
    object TBXItem10: TTBXItem
      Action = acti_elim_todos
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imagenesPCP
    end
    object TBXSeparatorItem3: TTBXSeparatorItem
    end
    object TBXItem11: TTBXItem
      Action = acti_movi_ejecutar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imagenesPCP
    end
    object TBXItem12: TTBXItem
      Action = acti_movi_cancelar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imagenesPCP
    end
  end
  object quer_ejecutar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'EXECUTE PROCEDURE PRO_GLO_PERS_MODI_BAJAS'
      '(:CONS_PERS_TIPO_MOVIMIENTO,'
      ':CONS_PERS_MOVI_TIPO_DOCUMENTO,'
      ':NUME_DOCUMENTO,'
      ':FECH_INICIAL,'
      ':FECH_FINAL,'
      ':OBSERVACIONES,'
      ':CONS_PERSONAL,'
      ':CONS_SOLICITA,'
      ':CONS_APROBO)')
    Left = 509
    Top = 444
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_TIPO_MOVIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUME_DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSERVACIONES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_SOLICITA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_APROBO'
        ParamType = ptUnknown
      end>
  end
  object quer_pers_solicitar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_MOVI_SOLICITAR("NOW")'
      'ORDER BY NOMB_COMPLETO')
    Left = 673
    Top = 210
  end
  object data_pers_solicitar: TDataSource
    DataSet = quer_pers_solicitar
    Left = 701
    Top = 210
  end
  object quer_pers_aprobar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_MOVI_APROBAR("NOW")'
      'ORDER BY NOMB_COMPLETO')
    Left = 673
    Top = 238
  end
  object data_pers_aprobar: TDataSource
    DataSet = quer_pers_aprobar
    Left = 701
    Top = 238
  end
end

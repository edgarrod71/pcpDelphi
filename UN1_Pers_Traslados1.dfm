inherited FN1_Pers_Traslados1: TFN1_Pers_Traslados1
  Left = 122
  Top = 13
  Width = 812
  Height = 612
  VertScrollBar.Visible = False
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object dfsSplitter3: TdfsSplitter [0]
    Left = 331
    Top = 198
    Height = 377
    Cursor = crHSplit
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    inherited padr_barra: TTBXToolbar
      object TBXItem1: TTBXItem [0]
        Action = Acti_Traslados
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 864
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
    Width = 804
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 486
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 509
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 486
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 509
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object PCPFrame2: TPCPFrame [7]
    Tag = 144
    Left = 0
    Top = 54
    Width = 804
    Height = 144
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
    TabOrder = 5
    Caption = 'Datos Modificación'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object SCLDBLabel42: TSCLDBLabel
      Left = 313
      Top = 41
      Width = 113
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
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NUME_DOCUMENTO'
      Field = 'NUME_DOCUMENTO'
    end
    object SCLDBLabel64: TSCLDBLabel
      Left = 8
      Top = 63
      Width = 113
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_INICIAL'
      Field = 'FECH_INICIAL'
    end
    object SCLDBLabel68: TSCLDBLabel
      Left = 8
      Top = 107
      Width = 113
      Height = 32
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
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'OBSERVACIONES'
      Field = 'OBSERVACIONES'
    end
    object SCLDBLabel65: TSCLDBLabel
      Left = 313
      Top = 63
      Width = 113
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
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_FINAL'
      Field = 'FECH_FINAL'
    end
    object SCLDBLabel40: TSCLDBLabel
      Left = 8
      Top = 41
      Width = 113
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Field = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 8
      Top = 19
      Width = 113
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
      Caption = 'Tipo Movimiento:'
      Transparent = True
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERS_TIPO_MOVIMIENTO'
      Field = 'CONS_PERS_TIPO_MOVIMIENTO'
    end
    object SCLDBLabel10: TSCLDBLabel
      Left = 8
      Top = 85
      Width = 113
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
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_SOLICITA'
      Field = 'CONS_SOLICITA'
    end
    object SCLDBLabel11: TSCLDBLabel
      Left = 313
      Top = 85
      Width = 113
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
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_APROBO'
      Field = 'CONS_APROBO'
    end
    object SCLButton27: TTBXButtonSCL
      Left = 272
      Top = 42
      Width = 20
      Height = 16
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      SmartFocus = False
      TabOrder = 9
      TabStop = False
    end
    object ENumero_Documento: TdxDBEdit
      Left = 428
      Top = 41
      Width = 145
      TabOrder = 3
      DataField = 'NUME_DOCUMENTO'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBInicial: TdxDBDateEdit
      Left = 123
      Top = 63
      Width = 145
      TabOrder = 4
      DataField = 'FECH_INICIAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBObservaciones: TdxDBEdit
      Left = 123
      Top = 107
      Width = 451
      TabOrder = 8
      AutoSize = False
      DataField = 'OBSERVACIONES'
      DataSource = DSMovimiento
      StyleController = padr_estilo
      Height = 32
    end
    object DBFinal: TdxDBDateEdit
      Left = 428
      Top = 63
      Width = 145
      TabOrder = 5
      DataField = 'FECH_FINAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object CBTipo_Documento: TPCPLookUpComboEdit
      Left = 123
      Top = 41
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      ListField = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
      ListSource = DSQTipo_Documento_Movimiento
      ParentCtl3D = False
      TabOrder = 2
      DirectInput = False
    end
    object CBTipo_Movimiento: TPCPLookUpComboEdit
      Left = 123
      Top = 19
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_PERS_TIPO_MOVIMIENTO'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERS_TIPO_MOVIMIENTO'
      ListField = 'NOMB_PERS_TIPO_MOVIMIENTO'
      ListSource = DSQTipo_Movimientos
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object SCLButton3: TTBXButtonSCL
      Left = 272
      Top = 20
      Width = 20
      Height = 16
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      SmartFocus = False
      TabOrder = 10
      TabStop = False
    end
    object CBSolicita: TPCPLookUpComboEdit
      Left = 123
      Top = 85
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_SOLICITA'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 6
      DirectInput = False
    end
    object SCLButton5: TTBXButtonSCL
      Left = 272
      Top = 86
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 11
      TabStop = False
    end
    object CBAprobo: TPCPLookUpComboEdit
      Left = 428
      Top = 85
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      DataField = 'CONS_APROBO'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 7
      DirectInput = False
    end
    object SCLButton6: TTBXButtonSCL
      Left = 577
      Top = 86
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 12
      TabStop = False
    end
  end
  object PCPFrame1: TPCPFrame [8]
    Tag = 456
    Left = 0
    Top = 198
    Width = 331
    Height = 377
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
    TabOrder = 6
    Caption = 'Personal Seleccionado'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object DBPersonal: TdxDBGrid
      Left = 2
      Top = 21
      Width = 327
      Height = 354
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONS_PERSONAL'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      BorderStyle = bsNone
      Color = clInfoBk
      TabOrder = 1
      DataSource = DSTemporal
      Filter.Criteria = {00000000}
      HideSelection = True
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object DBPersonalCONS_PERSONAL: TdxDBGridMaskColumn
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PERSONAL'
      end
      object DBPersonalCODI_PERSONAL: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PERSONAL'
      end
      object DBPersonalNOMB_COMPLETO: TdxDBGridMaskColumn
        Width = 247
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_COMPLETO'
      end
      object DBPersonalCONS_UBIC_TIPO: TdxDBGridMaskColumn
        Visible = False
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_UBIC_TIPO'
      end
      object DBPersonalCONS_EMPRESA: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_EMPRESA'
      end
      object DBPersonalCONS_AREA: TdxDBGridMaskColumn
        Visible = False
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_AREA'
      end
      object DBPersonalCONS_PLANTA: TdxDBGridMaskColumn
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PLANTA'
      end
      object DBPersonalCONS_PLAN_LINEA: TdxDBGridMaskColumn
        Visible = False
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PLAN_LINEA'
      end
      object DBPersonalCONS_LINE_SECCION: TdxDBGridMaskColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_LINE_SECCION'
      end
      object DBPersonalCONS_BODEGA: TdxDBGridMaskColumn
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_BODEGA'
      end
      object DBPersonalOTRA_UBICACION: TdxDBGridMaskColumn
        Visible = False
        Width = 324
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OTRA_UBICACION'
      end
      object DBPersonalCONS_TURNO: TdxDBGridMaskColumn
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_TURNO'
      end
      object DBPersonalColumn13: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PERS_CARGO'
      end
      object DBPersonalColumn14: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_PERS_CENT_COSTO'
      end
      object DBPersonalColumn15: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONS_COST_GRUPO'
      end
    end
  end
  object Panel1: TPanel [9]
    Left = 341
    Top = 198
    Width = 463
    Height = 377
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 7
    object dfsSplitter2: TdfsSplitter
      Left = 0
      Top = 182
      Width = 463
      Height = 10
      Cursor = crVSplit
      Align = alTop
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object PCPFrame3: TPCPFrame
      Tag = 264
      Left = 0
      Top = 192
      Width = 463
      Height = 185
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
      Caption = 'Nueva Ubicación'
      Titulo_Color = 16244694
      TipoFrame = tfGrupo
      inline ffra_maqu_ubicacion2: Tffra_maqu_ubicacion
        Left = 2
        Top = 21
        Width = 459
        Align = alTop
        TabOrder = 1
        inherited pane_tipo_ubicacion: TPanel
          Width = 459
          inherited SCLDBLabel33: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
            Left = 129
            Width = 145
            DataSource = DSMovimiento
            OnChange = ffra_maqu_ubicacion2comb_tipo_ubicacionChange
          end
        end
        inherited pane_ubic_propia: TPanel
          Width = 459
          inherited SCLDBLabel34: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited SCLDBLabel35: TSCLDBLabel
            Left = 302
            Width = 42
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited comb_ubic_empresa: TPCPLookUpComboEdit
            Left = 129
            Width = 145
            DataSource = DSMovimiento
          end
          inherited comb_ubic_area: TPCPLookUpComboEdit
            Left = 346
            Width = 145
            DataSource = DSMovimiento
          end
          inherited SCLButton6: TTBXButton
            Left = 280
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton7: TTBXButton
            Left = 496
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_externa: TPanel
          Width = 459
          inherited SCLDBLabel36: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited SCLDBLabel37: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited SCLDBLabel1: TSCLDBLabel
            Left = 302
            Width = 42
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited comb_ubic_planta: TPCPLookUpComboEdit
            Left = 129
            Width = 145
            DataSource = DSMovimiento
          end
          inherited comb_ubic_seccion: TPCPLookUpComboEdit
            Left = 129
            Width = 145
            DataSource = DSMovimiento
          end
          inherited SCLButton8: TTBXButton
            Left = 280
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton9: TTBXButton
            Left = 280
            Images = Imagenes_Botones_Pequenos
          end
          inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
            Left = 346
            Width = 145
            DataSource = DSMovimiento
          end
          inherited SCLButton1: TTBXButton
            Left = 496
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_bodega: TPanel
          Width = 459
          inherited SCLDBLabel39: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited comb_ubic_bodega: TPCPLookUpComboEdit
            Left = 129
            Width = 145
            DataSource = DSMovimiento
          end
          inherited SCLButton10: TTBXButton
            Left = 280
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_otra: TPanel
          Width = 459
          inherited SCLDBLabel38: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited edit_ubic_otra_ubicacion: TdxDBEdit
            Left = 129
            Style.BorderStyle = xbsFlat
            DataSource = DSMovimiento
            StyleController = padr_estilo
          end
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 155
        Width = 459
        Height = 109
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object SCLDBLabel2: TSCLDBLabel
          Left = 0
          Top = 1
          Width = 127
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
          FocusControl = PCPLookUpComboEdit2
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Turno:'
          Transparent = True
          DataSource = DSMovimiento
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_TURNO'
          Field = 'CONS_TURNO'
        end
        object SCLDBLabel16: TSCLDBLabel
          Left = 0
          Top = 23
          Width = 127
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
          FocusControl = PCPLookUpComboEdit10
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Cargo:'
          Transparent = True
          DataSource = DSMovimiento
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_PERS_CARGO'
          Field = 'CONS_PERS_CARGO'
        end
        object SCLDBLabel44: TSCLDBLabel
          Left = 0
          Top = 45
          Width = 127
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
          FocusControl = PCPLookUpComboEdit6
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Centro de costos:'
          Transparent = True
          DataSource = DSMovimiento
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_PERS_CENT_COSTO'
          Field = 'CONS_PERS_CENT_COSTO'
        end
        object SCLDBLabel45: TSCLDBLabel
          Left = 0
          Top = 66
          Width = 127
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
          FocusControl = PCPLookUpComboEdit7
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Sub - Centro de costos:'
          Transparent = True
          DataSource = DSMovimiento
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_COST_GRUPO'
          Field = 'CONS_COST_GRUPO'
        end
        object PCPLookUpComboEdit2: TPCPLookUpComboEdit
          Left = 129
          Top = 1
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          DataField = 'CONS_TURNO'
          DataSource = DSMovimiento
          KeyField = 'CONS_TURNO'
          ListField = 'CODI_TURNO'
          ListSource = DSQTurnos
          ParentCtl3D = False
          TabOrder = 0
          DirectInput = False
        end
        object SCLButton2: TTBXButtonSCL
          Left = 280
          Top = 2
          Width = 20
          Height = 20
          AllowAllUnchecked = True
          BorderSize = 2
          ButtonStyle = bsFlat
          Enabled = False
          ImageIndex = 0
          Images = Imagenes_Botones_Pequenos
          SmartFocus = False
          TabOrder = 1
          TabStop = False
        end
        object PCPLookUpComboEdit10: TPCPLookUpComboEdit
          Left = 129
          Top = 23
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          DataField = 'CONS_PERS_CARGO'
          DataSource = DSMovimiento
          KeyField = 'CONS_PERS_CARGO'
          ListField = 'NOMB_PERS_CARGO'
          ListSource = DSQCargos
          ParentCtl3D = False
          TabOrder = 2
          DirectInput = False
        end
        object SCLButton4: TTBXButtonSCL
          Left = 280
          Top = 24
          Width = 20
          Height = 20
          AllowAllUnchecked = True
          BorderSize = 2
          ButtonStyle = bsFlat
          Enabled = False
          ImageIndex = 0
          Images = Imagenes_Botones_Pequenos
          SmartFocus = False
          TabOrder = 3
          TabStop = False
        end
        object PCPLookUpComboEdit6: TPCPLookUpComboEdit
          Left = 129
          Top = 45
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          DataField = 'CONS_PERS_CENT_COSTO'
          DataSource = DSMovimiento
          KeyField = 'CONS_PERS_CENT_COSTO'
          ListField = 'NOMB_PERS_CENT_COSTO'
          ListSource = DSQCentro_Costos
          ParentCtl3D = False
          TabOrder = 4
          DirectInput = False
        end
        object SCLButton7: TTBXButtonSCL
          Left = 280
          Top = 46
          Width = 20
          Height = 20
          AllowAllUnchecked = True
          BorderSize = 2
          ButtonStyle = bsFlat
          Enabled = False
          ImageIndex = 0
          Images = Imagenes_Botones_Pequenos
          SmartFocus = False
          TabOrder = 5
          TabStop = False
        end
        object PCPLookUpComboEdit7: TPCPLookUpComboEdit
          Left = 129
          Top = 66
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          DataField = 'CONS_COST_GRUPO'
          DataSource = DSMovimiento
          KeyField = 'CONS_COST_GRUPO'
          ListField = 'NOMB_COST_GRUPO'
          ListSource = DSQSub_Centros
          ParentCtl3D = False
          TabOrder = 6
          DirectInput = False
        end
        object SCLButton8: TTBXButtonSCL
          Left = 280
          Top = 66
          Width = 20
          Height = 20
          AllowAllUnchecked = True
          BorderSize = 2
          ButtonStyle = bsFlat
          Enabled = False
          ImageIndex = 0
          Images = Imagenes_Botones_Pequenos
          SmartFocus = False
          TabOrder = 7
          TabStop = False
        end
      end
    end
    object PCPFrame4: TPCPFrame
      Tag = 182
      Left = 0
      Top = 0
      Width = 463
      Height = 182
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
      TabOrder = 1
      Caption = 'Ubicación Actual'
      Titulo_Color = 16244694
      TipoFrame = tfGrupo
      inline ffra_maqu_ubicacion1: Tffra_maqu_ubicacion
        Left = 2
        Top = 21
        Width = 459
        Align = alTop
        TabOrder = 1
        inherited pane_tipo_ubicacion: TPanel
          Width = 459
          inherited SCLDBLabel33: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
          end
          inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
            Left = 129
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
        end
        inherited pane_ubic_propia: TPanel
          Width = 459
          inherited SCLDBLabel34: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel35: TSCLDBLabel
            Left = 302
            Width = 42
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_empresa: TPCPLookUpComboEdit
            Left = 129
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited comb_ubic_area: TPCPLookUpComboEdit
            Left = 346
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited SCLButton6: TTBXButton
            Left = 280
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton7: TTBXButton
            Left = 496
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_externa: TPanel
          Width = 459
          inherited SCLDBLabel36: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel37: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel1: TSCLDBLabel
            Left = 302
            Width = 42
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_planta: TPCPLookUpComboEdit
            Left = 129
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited comb_ubic_seccion: TPCPLookUpComboEdit
            Left = 129
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited SCLButton8: TTBXButton
            Left = 280
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton9: TTBXButton
            Left = 280
            Images = Imagenes_Botones_Pequenos
          end
          inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
            Left = 346
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited SCLButton1: TTBXButton
            Left = 496
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_bodega: TPanel
          Width = 459
          inherited SCLDBLabel39: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_bodega: TPCPLookUpComboEdit
            Left = 129
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited SCLButton10: TTBXButton
            Left = 280
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_otra: TPanel
          Width = 459
          inherited SCLDBLabel38: TSCLDBLabel
            Left = 0
            Width = 127
            FontActive.Name = 'Tahoma'
          end
          inherited edit_ubic_otra_ubicacion: TdxDBEdit
            Left = 129
            Enabled = False
            Style.BorderStyle = xbsFlat
            DataSource = DSTemporal
            ReadOnly = True
            StyleController = padr_estilo
            StoredValues = 64
          end
        end
      end
      object Panel2: TPanel
        Left = 2
        Top = 155
        Width = 459
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object SCLDBLabel1: TSCLDBLabel
          Left = 0
          Top = 1
          Width = 127
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
          Caption = 'Turno:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_TIPO_DOCUMENTO'
          Field = 'CONS_TIPO_DOCUMENTO'
        end
        object PCPLookUpComboEdit1: TPCPLookUpComboEdit
          Left = 129
          Top = 1
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = False
          DataField = 'CONS_TURNO'
          DataSource = DSTemporal
          Enabled = False
          KeyField = 'CONS_TURNO'
          ListField = 'CODI_TURNO'
          ListSource = DSQTurnos
          ParentCtl3D = False
          TabOrder = 0
          DirectInput = False
        end
        object SCLButton1: TTBXButtonSCL
          Left = 280
          Top = 2
          Width = 20
          Height = 20
          AllowAllUnchecked = True
          BorderSize = 2
          ButtonStyle = bsFlat
          Enabled = False
          ImageIndex = 0
          Images = Imagenes_Botones_Pequenos
          SmartFocus = False
          TabOrder = 1
          TabStop = False
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 576
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
    TabOrder = 8
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
    object Acti_Traslados: TAction
      ImageIndex = 4
      OnExecute = Acti_TrasladosExecute
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_PERS_MOVIMIENTOS'
    object Tabla_VentanaCONS_PERS_MOVIMIENTO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'Personal'
      FieldName = 'CONS_PERSONAL'
    end
    object Tabla_VentanaCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
    end
    object Tabla_VentanaFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
      Required = True
    end
    object Tabla_VentanaFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
    end
    object Tabla_VentanaCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Required = True
    end
    object Tabla_VentanaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Múmero de Documento'
      FieldName = 'NUME_DOCUMENTO'
      Size = 12
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object TTemporal: TRxMemoryData
    FieldDefs = <>
    AfterScroll = TTemporalAfterScroll
    Left = 12
    Top = 340
    object TTemporalCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
    end
    object TTemporalCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object TTemporalNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombre Completo'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
    end
    object TTemporalCONS_UBIC_TIPO: TIntegerField
      FieldName = 'CONS_UBIC_TIPO'
    end
    object TTemporalCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
    end
    object TTemporalCONS_AREA: TIntegerField
      FieldName = 'CONS_AREA'
    end
    object TTemporalCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
    end
    object TTemporalCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
    end
    object TTemporalCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
    end
    object TTemporalCONS_BODEGA: TIntegerField
      FieldName = 'CONS_BODEGA'
    end
    object TTemporalOTRA_UBICACION: TStringField
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object TTemporalCONS_TURNO: TIntegerField
      FieldName = 'CONS_TURNO'
    end
    object TTemporalCONS_COST_GRUPO: TIntegerField
      DisplayLabel = 'Sub - Centro de Costos'
      FieldName = 'CONS_COST_GRUPO'
      Required = True
    end
    object TTemporalCONS_PERS_CENT_COSTO: TIntegerField
      DisplayLabel = 'Centro de Costos'
      FieldName = 'CONS_PERS_CENT_COSTO'
      Required = True
    end
    object TTemporalCONS_PERS_CARGO: TIntegerField
      DisplayLabel = 'Cargo'
      FieldName = 'CONS_PERS_CARGO'
      Required = True
    end
  end
  object DSTemporal: TDataSource
    DataSet = TTemporal
    Left = 40
    Top = 340
  end
  object DSQTurnos: TDataSource
    AutoEdit = False
    DataSet = QTurnos
    Left = 41
    Top = 298
  end
  object DSQTipo_Documento_Movimiento: TDataSource
    AutoEdit = False
    DataSet = QTipo_Documento_Movimiento
    Left = 41
    Top = 242
  end
  object SPTraslados: TStoredProc
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_PERS_MODI_TRASLADOS'
    ParamBindMode = pbByNumber
    Left = 88
    Top = 244
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERS_TIPO_MOVIMIENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERS_MOVI_TIPO_DOCU'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NUME_DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PE_FECH_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PE_FECH_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_OBSERVACIONES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERSONAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_UBIC_TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_AREA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PLANTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PLAN_LINEA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_LINE_SECCION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_BODEGA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_OTRA_UBICACION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_TURNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_SOLICITA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_APROBO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERS_CARGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERS_CENT_COSTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_COST_GRUPO'
        ParamType = ptInput
      end>
  end
  object QTipo_Movimientos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_TIPO_MOVIMIENTO'
      'WHERE CONS_FAMI_MOVIMIENTO = 2')
    Left = 13
    Top = 270
    object QTipo_MovimientosCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CONS_PERS_TIPO_MOVIMIENTO'
    end
    object QTipo_MovimientosCONS_FAMI_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_FAMI_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CONS_FAMI_MOVIMIENTO'
    end
    object QTipo_MovimientosCODI_PERS_TIPO_MOVIMIENTO: TStringField
      FieldName = 'CODI_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.CODI_PERS_TIPO_MOVIMIENTO'
      Size = 12
    end
    object QTipo_MovimientosNOMB_PERS_TIPO_MOVIMIENTO: TStringField
      FieldName = 'NOMB_PERS_TIPO_MOVIMIENTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.NOMB_PERS_TIPO_MOVIMIENTO'
      Size = 60
    end
    object QTipo_MovimientosFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.FECH_SISTEMA'
    end
    object QTipo_MovimientosUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_MOVIMIENTO.USUA_SISTEMA'
    end
  end
  object DSQTipo_Movimientos: TDataSource
    AutoEdit = False
    DataSet = QTipo_Movimientos
    Left = 41
    Top = 270
  end
  object TMovimiento: TRxMemoryData
    FieldDefs = <>
    BeforePost = TMovimientoBeforePost
    Left = 12
    Top = 368
    object TMovimientoCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
      Required = True
    end
    object TMovimientoFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
      Required = True
    end
    object TMovimientoFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
    end
    object TMovimientoCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Required = True
    end
    object TMovimientoNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Múmero de Documento'
      FieldName = 'NUME_DOCUMENTO'
      Size = 12
    end
    object TMovimientoCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado Por'
      FieldName = 'CONS_SOLICITA'
    end
    object TMovimientoCONS_APROBO: TIntegerField
      DisplayLabel = 'Aprobado Por'
      FieldName = 'CONS_APROBO'
    end
    object TMovimientoOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object TMovimientoCONS_UBIC_TIPO: TIntegerField
      FieldName = 'CONS_UBIC_TIPO'
      Required = True
    end
    object TMovimientoCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
      Required = True
    end
    object TMovimientoCONS_AREA: TIntegerField
      FieldName = 'CONS_AREA'
      Required = True
    end
    object TMovimientoCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
      Required = True
    end
    object TMovimientoCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Required = True
    end
    object TMovimientoCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
      Required = True
    end
    object TMovimientoCONS_BODEGA: TIntegerField
      FieldName = 'CONS_BODEGA'
      Required = True
    end
    object TMovimientoOTRA_UBICACION: TStringField
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object TMovimientoCONS_TURNO: TIntegerField
      FieldName = 'CONS_TURNO'
    end
    object TMovimientoCONS_PERS_CARGO: TIntegerField
      DisplayLabel = 'Cargo'
      FieldName = 'CONS_PERS_CARGO'
    end
    object TMovimientoCONS_PERS_CENT_COSTO: TIntegerField
      DisplayLabel = 'Centro de Costos'
      FieldName = 'CONS_PERS_CENT_COSTO'
    end
    object TMovimientoCONS_COST_GRUPO: TIntegerField
      DisplayLabel = 'Sub - Centro de Costos'
      FieldName = 'CONS_COST_GRUPO'
    end
  end
  object DSMovimiento: TDataSource
    DataSet = TMovimiento
    Left = 40
    Top = 368
  end
  object QTipo_Documento_Movimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_MOVI_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_MOVI_TIPO_DOCUMENTO')
    Left = 13
    Top = 242
  end
  object QTurnos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_TURNOS'
      'ORDER BY CODI_TURNO')
    Left = 12
    Top = 298
  end
  object QPersonal: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 11
    Top = 398
  end
  object DSQPersonal: TDataSource
    AutoEdit = False
    DataSet = QPersonal
    Left = 43
    Top = 398
  end
  object QCentro_Costos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_CENT_COSTOS'
      'ORDER BY NOMB_PERS_CENT_COSTO')
    Left = 8
    Top = 434
  end
  object QSub_Centros: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_COST_GRUPOS'
      'ORDER BY NOMB_COST_GRUPO')
    Left = 8
    Top = 466
  end
  object DSQCentro_Costos: TDataSource
    AutoEdit = False
    DataSet = QCentro_Costos
    Left = 40
    Top = 434
  end
  object DSQSub_Centros: TDataSource
    AutoEdit = False
    DataSet = QSub_Centros
    Left = 40
    Top = 466
  end
  object QCargos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_CARGOS'
      'ORDER BY NOMB_PERS_CARGO')
    Left = 10
    Top = 504
  end
  object DSQCargos: TDataSource
    AutoEdit = False
    DataSet = QCargos
    Left = 42
    Top = 504
  end
end

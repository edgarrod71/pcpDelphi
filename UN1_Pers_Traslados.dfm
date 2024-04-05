inherited FN1_Pers_Traslados: TFN1_Pers_Traslados
  Left = 188
  Top = 100
  Width = 812
  Height = 566
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 530
    Width = 804
  end
  object dfsSplitter1: TdfsSplitter [2]
    Left = 0
    Top = 156
    Width = 804
    Height = 10
    Cursor = crVSplit
    Align = alTop
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object dfsSplitter3: TdfsSplitter [3]
    Left = 331
    Top = 166
    Height = 363
    Cursor = crHSplit
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 804
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 529
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
  inherited pane_beve_abajo: TPanel
    Top = 531
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  object PCPFrame2: TPCPFrame [9]
    Left = 0
    Top = 52
    Width = 804
    Height = 102
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
    TabOrder = 8
    Caption = 'Datos Modificación'
    Titulo_Color = 16244694
    TipoFrame = tfGrupo
    object SCLDBLabel40: TSCLDBLabel
      Left = 8
      Top = 25
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
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_TIPO_DOCUMENTO'
      Field = 'CONS_TIPO_DOCUMENTO'
    end
    object SCLDBLabel42: TSCLDBLabel
      Left = 297
      Top = 25
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
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NUME_DOCUMENTO'
      Field = 'NUME_DOCUMENTO'
    end
    object SCLDBLabel64: TSCLDBLabel
      Left = 8
      Top = 47
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
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_INICIAL'
      Field = 'FECH_INICIAL'
    end
    object SCLDBLabel68: TSCLDBLabel
      Left = 8
      Top = 69
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
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'OBSERVACIONES'
      Field = 'OBSERVACIONES'
    end
    object SCLDBLabel65: TSCLDBLabel
      Left = 297
      Top = 47
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
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_FINAL'
      Field = 'FECH_FINAL'
    end
    object CBTipo_Documento: TPCPLookUpComboEdit
      Left = 123
      Top = 25
      Width = 145
      Height = 21
      DropDownCount = 8
      KeyField = 'CONS_TIPO_DOCUMENTO'
      ListField = 'NOMB_TIPO_DOCUMENTO'
      ListSource = DSTipo_Documento_Movimiento
      TabOrder = 1
      DirectInput = False
    end
    object SCLButton27: TSCLButton
      Left = 272
      Top = 26
      Width = 20
      Height = 20
      TabOrder = 6
      TabStop = False
      Down = False
      ImageIndex = 0
      Flat = True
      Color = clBtnFace
      Style = bsNew
      BackColor = clBtnFace
      ColorBordeBoton = clBtnShadow
      TipoPintadoBoton = tpbContorno
      RedondeoBoton = 4
    end
    object ENumero_Documento: TdxEdit
      Left = 412
      Top = 25
      Width = 145
      TabOrder = 2
      StyleController = _fvent_modal.padr_estilo
    end
    object DBInicial: TdxDateEdit
      Left = 123
      Top = 47
      Width = 145
      TabOrder = 3
      StyleController = _fvent_modal.padr_estilo
      Date = -700000
    end
    object DBObservaciones: TdxEdit
      Left = 123
      Top = 69
      Width = 435
      TabOrder = 5
      AutoSize = False
      StyleController = _fvent_modal.padr_estilo
      Height = 32
    end
    object DBFinal: TdxDateEdit
      Left = 412
      Top = 47
      Width = 145
      TabOrder = 4
      StyleController = _fvent_modal.padr_estilo
      Date = -700000
    end
  end
  object PCPFrame1: TPCPFrame [10]
    Left = 0
    Top = 166
    Width = 331
    Height = 363
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
    object dxDBGrid1: TdxDBGrid
      Left = 2
      Top = 21
      Width = 327
      Height = 340
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
      object dxDBGrid1CODI_PERSONAL: TdxDBGridMaskColumn
        Color = clBtnFace
        ReadOnly = True
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PERSONAL'
      end
      object dxDBGrid1NOMB_COMPLETO: TdxDBGridMaskColumn
        Color = clBtnFace
        ReadOnly = True
        Width = 239
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_COMPLETO'
      end
    end
  end
  object Panel1: TPanel [11]
    Left = 341
    Top = 166
    Width = 463
    Height = 363
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
      Left = 0
      Top = 192
      Width = 463
      Height = 171
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
            FontActive.Name = 'Tahoma'
          end
        end
        inherited pane_ubic_propia: TPanel
          Width = 459
          inherited SCLDBLabel34: TSCLDBLabel
            Left = 8
            Width = 113
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel35: TSCLDBLabel
            Left = 296
            Width = 42
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_empresa: TPCPLookUpComboEdit
            Left = 123
            Width = 145
            DataField = 'CONS_EMPRESA1'
            DataSource = DSTemporal
          end
          inherited comb_ubic_area: TPCPLookUpComboEdit
            Left = 340
            Width = 145
            DataField = 'CONS_AREA1'
            DataSource = DSTemporal
          end
          inherited SCLButton6: TTBXButton
            Left = 272
          end
          inherited SCLButton7: TTBXButton
            Left = 488
          end
        end
        inherited pane_ubic_externa: TPanel
          Width = 459
          inherited SCLDBLabel36: TSCLDBLabel
            Left = 8
            Width = 113
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel37: TSCLDBLabel
            Left = 8
            Width = 113
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel1: TSCLDBLabel
            Left = 296
            Width = 42
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_planta: TPCPLookUpComboEdit
            Left = 123
            Width = 145
            DataField = 'CONS_PLANTA1'
            DataSource = DSTemporal
          end
          inherited comb_ubic_seccion: TPCPLookUpComboEdit
            Left = 123
            Width = 145
            DataField = 'CONS_LINE_SECCION1'
            DataSource = DSTemporal
          end
          inherited SCLButton8: TTBXButton
            Left = 272
          end
          inherited SCLButton9: TTBXButton
            Left = 272
          end
          inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
            Left = 340
            Width = 145
            DataField = 'CONS_PLAN_LINEA1'
            DataSource = DSTemporal
          end
          inherited SCLButton1: TTBXButton
            Left = 488
          end
        end
        inherited pane_ubic_bodega: TPanel
          Width = 459
          inherited SCLDBLabel39: TSCLDBLabel
            Left = 8
            Width = 113
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_bodega: TPCPLookUpComboEdit
            Left = 123
            Width = 145
            DataField = 'CONS_BODEGA1'
            DataSource = DSTemporal
          end
          inherited SCLButton10: TTBXButton
            Left = 272
          end
        end
        inherited pane_ubic_otra: TPanel
          Width = 459
          inherited SCLDBLabel38: TSCLDBLabel
            Left = 8
            Width = 113
            FontActive.Name = 'Tahoma'
          end
          inherited edit_ubic_otra_ubicacion: TdxDBEdit
            Left = 123
            Style.BorderStyle = xbsFlat
            DataField = 'OTRA_UBICACION1'
            DataSource = DSTemporal
            StyleController = padr_estilo
          end
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 155
        Width = 459
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object SCLDBLabel2: TSCLDBLabel
          Left = 8
          Top = 1
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
          FocusControl = PCPLookUpComboEdit2
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Turno:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_TIPO_DOCUMENTO'
          Field = 'CONS_TIPO_DOCUMENTO'
        end
        object PCPLookUpComboEdit2: TPCPLookUpComboEdit
          Left = 123
          Top = 1
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_TURNO1'
          DataSource = DSTemporal
          KeyField = 'CONS_TURNO'
          ListField = 'CODI_TURNO'
          ListSource = DSTurnos
          TabOrder = 0
          DirectInput = False
        end
        object SCLButton2: TSCLButton
          Left = 272
          Top = 2
          Width = 20
          Height = 20
          TabOrder = 1
          TabStop = False
          Down = False
          ImageIndex = 0
          Flat = True
          Color = clBtnFace
          Style = bsNew
          BackColor = clBtnFace
          ColorBordeBoton = clBtnShadow
          TipoPintadoBoton = tpbContorno
          RedondeoBoton = 4
        end
      end
    end
    object PCPFrame4: TPCPFrame
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
            FontActive.Name = 'Tahoma'
          end
        end
        inherited pane_ubic_propia: TPanel
          Width = 459
          inherited SCLDBLabel34: TSCLDBLabel
            Left = 8
            Width = 113
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel35: TSCLDBLabel
            Left = 296
            Width = 42
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_empresa: TPCPLookUpComboEdit
            Left = 123
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited comb_ubic_area: TPCPLookUpComboEdit
            Left = 340
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited SCLButton6: TTBXButton
            Left = 272
          end
          inherited SCLButton7: TTBXButton
            Left = 488
          end
        end
        inherited pane_ubic_externa: TPanel
          Width = 459
          inherited SCLDBLabel36: TSCLDBLabel
            Left = 8
            Width = 113
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel37: TSCLDBLabel
            Left = 8
            Width = 113
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel1: TSCLDBLabel
            Left = 296
            Width = 42
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_planta: TPCPLookUpComboEdit
            Left = 123
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited comb_ubic_seccion: TPCPLookUpComboEdit
            Left = 123
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited SCLButton8: TTBXButton
            Left = 272
          end
          inherited SCLButton9: TTBXButton
            Left = 272
          end
          inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
            Left = 340
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited SCLButton1: TTBXButton
            Left = 488
          end
        end
        inherited pane_ubic_bodega: TPanel
          Width = 459
          inherited SCLDBLabel39: TSCLDBLabel
            Left = 8
            Width = 113
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_bodega: TPCPLookUpComboEdit
            Left = 123
            Width = 145
            DataSource = DSTemporal
            Enabled = False
          end
          inherited SCLButton10: TTBXButton
            Left = 272
          end
        end
        inherited pane_ubic_otra: TPanel
          Width = 459
          inherited SCLDBLabel38: TSCLDBLabel
            Left = 8
            Width = 113
            FontActive.Name = 'Tahoma'
          end
          inherited edit_ubic_otra_ubicacion: TdxDBEdit
            Left = 123
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
          Left = 8
          Top = 1
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
          FocusControl = PCPLookUpComboEdit1
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Turno:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_TIPO_DOCUMENTO'
          Field = 'CONS_TIPO_DOCUMENTO'
        end
        object PCPLookUpComboEdit1: TPCPLookUpComboEdit
          Left = 123
          Top = 1
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_TURNO'
          DataSource = DSTemporal
          Enabled = False
          KeyField = 'CONS_TURNO'
          ListField = 'CODI_TURNO'
          ListSource = DSTurnos
          TabOrder = 0
          DirectInput = False
        end
        object SCLButton1: TSCLButton
          Left = 272
          Top = 2
          Width = 20
          Height = 20
          TabOrder = 1
          TabStop = False
          Down = False
          ImageIndex = 0
          Flat = True
          Color = clBtnFace
          Style = bsNew
          BackColor = clBtnFace
          ColorBordeBoton = clBtnShadow
          TipoPintadoBoton = tpbContorno
          RedondeoBoton = 4
        end
      end
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 154
    Width = 804
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
    object Tabla_VentanaCONS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo de documento'
      FieldName = 'CONS_TIPO_DOCUMENTO'
      Required = True
    end
    object Tabla_VentanaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Múmero de Documento'
      FieldName = 'NUME_DOCUMENTO'
      Size = 12
    end
    object Tabla_VentanaANULADO: TIntegerField
      DisplayLabel = 'Anulado'
      FieldName = 'ANULADO'
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
    BeforePost = TTemporalBeforePost
    Left = 592
    Top = 92
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
    object TTemporalCONS_UBIC_TIPO1: TIntegerField
      FieldName = 'CONS_UBIC_TIPO1'
    end
    object TTemporalCONS_EMPRESA1: TIntegerField
      FieldName = 'CONS_EMPRESA1'
    end
    object TTemporalCONS_AREA1: TIntegerField
      FieldName = 'CONS_AREA1'
    end
    object TTemporalCONS_PLANTA1: TIntegerField
      FieldName = 'CONS_PLANTA1'
    end
    object TTemporalCONS_PLAN_LINEA1: TIntegerField
      FieldName = 'CONS_PLAN_LINEA1'
    end
    object TTemporalCONS_LINE_SECCION1: TIntegerField
      FieldName = 'CONS_LINE_SECCION1'
    end
    object TTemporalCONS_BODEGA1: TIntegerField
      FieldName = 'CONS_BODEGA1'
    end
    object TTemporalOTRA_UBICACION1: TStringField
      FieldName = 'OTRA_UBICACION1'
      Size = 60
    end
    object TTemporalCONS_TURNO1: TIntegerField
      FieldName = 'CONS_TURNO1'
    end
  end
  object DSTemporal: TDataSource
    DataSet = TTemporal
    Left = 624
    Top = 92
  end
  object TTurnos: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_TURNOS'
    Left = 592
    Top = 124
  end
  object DSTurnos: TDataSource
    AutoEdit = False
    DataSet = TTurnos
    Left = 624
    Top = 124
  end
  object TTipo_Documento_Movimiento: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_TIPO_DOCUMENTO'
    Left = 591
    Top = 60
  end
  object DSTipo_Documento_Movimiento: TDataSource
    AutoEdit = False
    DataSet = TTipo_Documento_Movimiento
    Left = 623
    Top = 60
  end
end

inherited FN1_Pers_Reingresos1: TFN1_Pers_Reingresos1
  Left = 94
  Top = 79
  Width = 812
  Height = 612
  Caption = 'Reingreso de personal'
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
    Top = 575
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    inherited padr_barra: TTBXToolbar
      object TBXItem1: TTBXItem [0]
        Action = Acti_Reingreso
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 925
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
    Width = 804
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 439
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 461
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 439
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 461
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object PCPFrame2: TPCPFrame [6]
    Tag = 185
    Left = 0
    Top = 54
    Width = 804
    Height = 185
    Align = alTop
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
    FlatBorder = True
    object SCLDBLabel42: TSCLDBLabel
      Left = 8
      Top = 49
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
      Left = 315
      Top = 49
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
      Caption = 'Fecha de reingreso:'
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
      Top = 117
      Width = 113
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
    object SCLDBLabel40: TSCLDBLabel
      Left = 315
      Top = 29
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
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Field = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 8
      Top = 29
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
      Top = 77
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
      Left = 8
      Top = 97
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
    object SCLDBLabel65: TSCLDBLabel
      Left = 628
      Top = 29
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
      Enabled = False
      Transparent = True
      Visible = False
      DataSource = DSMovimiento
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_FINAL'
      Field = 'FECH_FINAL'
    end
    object SCLButton27: TTBXButtonSCL
      Left = 579
      Top = 30
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
      Visible = False
    end
    object ENumero_Documento: TdxDBEdit
      Left = 123
      Top = 49
      Width = 145
      TabOrder = 3
      DataField = 'NUME_DOCUMENTO'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBInicial: TdxDBDateEdit
      Left = 430
      Top = 49
      Width = 145
      TabOrder = 4
      DataField = 'FECH_INICIAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
    object DBObservaciones: TdxDBMemo
      Left = 123
      Top = 117
      Width = 342
      TabOrder = 7
      DataField = 'OBSERVACIONES'
      DataSource = DSMovimiento
      StyleController = padr_estilo
      Height = 54
    end
    object CBTipo_Documento: TPCPLookUpComboEdit
      Left = 430
      Top = 29
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = True
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
      Top = 29
      Width = 145
      Height = 21
      DropDownCount = 8
      Ctl3D = True
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
      TabOrder = 8
      TabStop = False
      Visible = False
    end
    object CBSolicita: TPCPLookUpComboEdit
      Left = 123
      Top = 77
      Width = 308
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_SOLICITA'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = data_pers_solicitar
      ParentCtl3D = False
      TabOrder = 5
      DirectInput = False
    end
    object CBAprobo: TPCPLookUpComboEdit
      Left = 123
      Top = 97
      Width = 308
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_APROBO'
      DataSource = DSMovimiento
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = data_pers_aprobar
      ParentCtl3D = False
      TabOrder = 6
      DirectInput = False
    end
    object DBFinal: TdxDBDateEdit
      Left = 743
      Top = 29
      Width = 145
      Enabled = False
      TabOrder = 10
      Visible = False
      DataField = 'FECH_FINAL'
      DataSource = DSMovimiento
      StyleController = padr_estilo
    end
  end
  object Panel1: TPanel [7]
    Left = 473
    Top = 239
    Width = 331
    Height = 336
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object PCPFrame3: TPCPFrame
      Tag = 196
      Left = 0
      Top = 174
      Width = 331
      Height = 162
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
      Caption = 'Nueva Ubicación'
      Titulo_Color = 16244694
      FlatBorder = True
      inline ffra_maqu_ubicacion2: Tffra_maqu_ubicacion
        Left = 3
        Top = 22
        Width = 325
        Height = 84
        Align = alTop
        TabOrder = 1
        inherited pane_tipo_ubicacion: TPanel
          Width = 325
          inherited SCLDBLabel33: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = DSMovimiento
            OnChange = ffra_maqu_ubicacion2comb_tipo_ubicacionChange
          end
        end
        inherited pane_ubic_propia: TPanel
          Width = 325
          inherited SCLDBLabel34: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited SCLDBLabel35: TSCLDBLabel
            Left = 262
            Width = 42
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited comb_ubic_empresa: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = DSMovimiento
          end
          inherited comb_ubic_area: TPCPLookUpComboEdit
            Left = 306
            Width = 145
            DataSource = DSMovimiento
          end
          inherited SCLButton6: TTBXButton
            Left = 237
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton7: TTBXButton
            Left = 456
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_externa: TPanel
          Width = 325
          inherited SCLDBLabel36: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited SCLDBLabel37: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited SCLDBLabel1: TSCLDBLabel
            Left = 262
            Width = 42
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited comb_ubic_planta: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = DSMovimiento
          end
          inherited comb_ubic_seccion: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = DSMovimiento
          end
          inherited SCLButton8: TTBXButton
            Left = 237
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton9: TTBXButton
            Left = 237
            Images = Imagenes_Botones_Pequenos
          end
          inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
            Left = 306
            Width = 145
            DataSource = DSMovimiento
          end
          inherited SCLButton1: TTBXButton
            Left = 456
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_bodega: TPanel
          Width = 325
          inherited SCLDBLabel39: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited comb_ubic_bodega: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = DSMovimiento
          end
          inherited SCLButton10: TTBXButton
            Left = 237
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_otra: TPanel
          Width = 325
          inherited SCLDBLabel38: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
            DataSource = DSMovimiento
          end
          inherited edit_ubic_otra_ubicacion: TdxDBEdit
            Left = 87
            Width = 146
            Style.BorderStyle = xbsFlat
            DataSource = DSMovimiento
            StyleController = padr_estilo
          end
        end
      end
      object Panel3: TPanel
        Left = 3
        Top = 106
        Width = 325
        Height = 20
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object SCLDBLabel2: TSCLDBLabel
          Left = 4
          Top = -1
          Width = 81
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
        object PCPLookUpComboEdit2: TPCPLookUpComboEdit
          Left = 87
          Top = -1
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
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
          Left = 237
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
          Visible = False
        end
      end
      object Panel4: TPanel
        Left = 3
        Top = 126
        Width = 325
        Height = 19
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object SCLDBLabel4: TSCLDBLabel
          Left = 4
          Top = -1
          Width = 81
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
          FocusControl = PCPLookUpComboEdit3
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
        object PCPLookUpComboEdit3: TPCPLookUpComboEdit
          Left = 87
          Top = -1
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_PERS_CARGO'
          DataSource = DSMovimiento
          KeyField = 'CONS_PERS_CARGO'
          ListField = 'NOMB_PERS_CARGO'
          ListSource = DSQCargos
          ParentCtl3D = False
          TabOrder = 0
          DirectInput = False
        end
        object SCLButton4: TTBXButtonSCL
          Left = 237
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
          Visible = False
        end
      end
      object Panel5: TPanel
        Left = 3
        Top = 145
        Width = 325
        Height = 20
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object SCLDBLabel5: TSCLDBLabel
          Left = 4
          Top = 0
          Width = 81
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
          FocusControl = PCPLookUpComboEdit4
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Cen. de Costos'
          Transparent = True
          DataSource = DSMovimiento
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_PERS_CENT_COSTO'
          Field = 'CONS_PERS_CENT_COSTO'
        end
        object PCPLookUpComboEdit4: TPCPLookUpComboEdit
          Left = 87
          Top = 0
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_PERS_CENT_COSTO'
          DataSource = DSMovimiento
          KeyField = 'CONS_PERS_CENT_COSTO'
          ListField = 'NOMB_PERS_CENT_COSTO'
          ListSource = DSQCentro_Costos
          ParentCtl3D = False
          TabOrder = 0
          DirectInput = False
        end
        object SCLButton7: TTBXButtonSCL
          Left = 237
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
          Visible = False
        end
      end
      object Panel6: TPanel
        Left = 3
        Top = 165
        Width = 325
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 5
        object SCLDBLabel6: TSCLDBLabel
          Left = 4
          Top = 0
          Width = 81
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
          FocusControl = PCPLookUpComboEdit5
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Sub Cen. Cost.'
          Transparent = True
          DataSource = DSMovimiento
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_COST_GRUPO'
          Field = 'CONS_COST_GRUPO'
        end
        object PCPLookUpComboEdit5: TPCPLookUpComboEdit
          Left = 87
          Top = 0
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_COST_GRUPO'
          DataSource = DSMovimiento
          KeyField = 'CONS_COST_GRUPO'
          ListField = 'NOMB_COST_GRUPO'
          ListSource = DSQSub_Centro_Costo
          ParentCtl3D = False
          TabOrder = 0
          DirectInput = False
        end
        object SCLButton8: TTBXButtonSCL
          Left = 237
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
          Visible = False
        end
      end
    end
    object PCPFrame4: TPCPFrame
      Tag = 174
      Left = 0
      Top = 0
      Width = 331
      Height = 174
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
      Caption = 'Ultima ubicación en la empresa'
      Titulo_Color = 16244694
      FlatBorder = True
      inline ffra_maqu_ubicacion1: Tffra_maqu_ubicacion
        Left = 3
        Top = 22
        Width = 325
        Height = 124
        Align = alTop
        TabOrder = 1
        inherited pane_tipo_ubicacion: TPanel
          Width = 325
          inherited SCLDBLabel33: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
          end
          inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = fram_list_personal.data_pers_disponible
            Enabled = False
            OnChange = ffra_maqu_ubicacion1comb_tipo_ubicacionChange
            HideButton = True
          end
        end
        inherited pane_ubic_propia: TPanel
          Width = 325
          inherited SCLDBLabel34: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel35: TSCLDBLabel
            Left = 262
            Width = 42
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_empresa: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = fram_list_personal.data_pers_disponible
            Enabled = False
            HideButton = True
          end
          inherited comb_ubic_area: TPCPLookUpComboEdit
            Left = 306
            Width = 145
            DataSource = fram_list_personal.data_pers_disponible
            Enabled = False
            HideButton = True
          end
          inherited SCLButton6: TTBXButton
            Left = 237
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton7: TTBXButton
            Left = 456
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_externa: TPanel
          Width = 325
          inherited SCLDBLabel36: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel37: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
          end
          inherited SCLDBLabel1: TSCLDBLabel
            Left = 262
            Width = 42
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_planta: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = fram_list_personal.data_pers_disponible
            Enabled = False
            HideButton = True
          end
          inherited comb_ubic_seccion: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = fram_list_personal.data_pers_disponible
            Enabled = False
            HideButton = True
          end
          inherited SCLButton8: TTBXButton
            Left = 237
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton9: TTBXButton
            Left = 237
            Images = Imagenes_Botones_Pequenos
          end
          inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
            Left = 306
            Width = 145
            DataSource = fram_list_personal.data_pers_disponible
            Enabled = False
            HideButton = True
          end
          inherited SCLButton1: TTBXButton
            Left = 456
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_bodega: TPanel
          Width = 325
          inherited SCLDBLabel39: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
          end
          inherited comb_ubic_bodega: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = fram_list_personal.data_pers_disponible
            Enabled = False
            HideButton = True
          end
          inherited SCLButton10: TTBXButton
            Left = 237
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_otra: TPanel
          Width = 325
          inherited SCLDBLabel38: TSCLDBLabel
            Left = 4
            Width = 81
            FontActive.Name = 'Tahoma'
          end
          inherited edit_ubic_otra_ubicacion: TdxDBEdit
            Left = 87
            Width = 145
            Enabled = False
            DataSource = fram_list_personal.data_pers_disponible
            ReadOnly = True
            StyleController = padr_estilo
            StoredValues = 64
          end
        end
      end
      object Panel2: TPanel
        Left = 3
        Top = 146
        Width = 325
        Height = 20
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object SCLDBLabel1: TSCLDBLabel
          Left = 4
          Top = -1
          Width = 81
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
          DataField = 'CONS_TURNO'
          Field = 'CONS_TURNO'
        end
        object PCPLookUpComboEdit1: TPCPLookUpComboEdit
          Left = 87
          Top = -1
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_TURNO'
          DataSource = fram_list_personal.data_pers_disponible
          Enabled = False
          KeyField = 'CONS_TURNO'
          ListField = 'CODI_TURNO'
          ListSource = DSQTurnos
          ParentCtl3D = False
          TabOrder = 0
          DirectInput = False
          HideButton = True
        end
        object SCLButton1: TTBXButtonSCL
          Left = 237
          Top = 0
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
    TabOrder = 7
  end
  inline fram_list_personal: Tffra_sele_pers_lista [10]
    Top = 239
    Width = 473
    Height = 336
    Align = alLeft
    TabOrder = 8
    inherited pane_filtros: TPCPFrame
      Tag = 117
      Top = 313
      Width = 473
      Height = 23
      Align = alBottom
      Titulo_Comprimido = True
      inherited Panel1: TPanel
        Width = 467
        Height = 90
        inherited fram_filt_personal: Tffra_maqu_ubicacion
          Width = 467
          Height = 579
          inherited pane_tipo_ubicacion: TPanel
            Width = 467
            inherited SCLDBLabel33: TSCLDBLabel
              Left = 2
            end
            inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
              Left = 84
              Width = 170
            end
          end
          inherited pane_ubic_propia: TPanel
            Width = 467
            inherited SCLDBLabel34: TSCLDBLabel
              Left = 2
            end
            inherited SCLDBLabel35: TSCLDBLabel
              Left = 208
            end
            inherited comb_ubic_empresa: TPCPLookUpComboEdit
              Left = 84
              Width = 170
            end
            inherited comb_ubic_area: TPCPLookUpComboEdit
              Left = 290
              Width = 170
            end
            inherited SCLButton6: TTBXButton
              Left = 255
              Visible = False
            end
            inherited SCLButton7: TTBXButton
              Visible = False
            end
          end
          inherited pane_ubic_externa: TPanel
            Width = 467
            inherited SCLDBLabel36: TSCLDBLabel
              Left = 2
            end
            inherited SCLDBLabel37: TSCLDBLabel
              Left = 2
            end
            inherited SCLDBLabel1: TSCLDBLabel
              Left = 208
            end
            inherited comb_ubic_planta: TPCPLookUpComboEdit
              Left = 84
              Width = 170
            end
            inherited comb_ubic_seccion: TPCPLookUpComboEdit
              Left = 84
              Width = 170
            end
            inherited SCLButton8: TTBXButton
              Left = 255
              Visible = False
            end
            inherited SCLButton9: TTBXButton
              Left = 255
              Visible = False
            end
            inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
              Left = 290
              Width = 170
            end
            inherited SCLButton1: TTBXButton
              Visible = False
            end
          end
          inherited pane_ubic_bodega: TPanel
            Width = 467
            inherited SCLDBLabel39: TSCLDBLabel
              Left = 2
            end
            inherited comb_ubic_bodega: TPCPLookUpComboEdit
              Left = 84
              Width = 170
            end
            inherited SCLButton10: TTBXButton
              Left = 257
            end
          end
          inherited pane_ubic_otra: TPanel
            Width = 467
            inherited SCLDBLabel38: TSCLDBLabel
              Left = 2
            end
            inherited edit_ubic_otra_ubicacion: TdxDBEdit
              Left = 84
            end
          end
        end
      end
    end
    inherited PCPFrame1: TPCPFrame
      Tag = 347
      Top = 0
      Width = 473
      Height = 313
      inherited grid_pers_disponible: TSCLDBGrid
        Width = 459
        Height = 280
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
        OnChangeNode = fram_list_personalgrid_pers_disponibleChangeNode
        inherited grid_pers_disponibleCONS_PERSONAL: TdxDBGridMaskColumn
          Width = 184
        end
        inherited grid_pers_disponibleCODI_PERSONAL: TdxDBGridMaskColumn
          Width = 121
        end
        inherited grid_pers_disponibleNOMB_COMPLETO: TdxDBGridMaskColumn
          Width = 336
        end
      end
    end
    inherited quer_pers_disponible: TQuery
      SQL.Strings = (
        'SELECT'
        '*'
        'FROM CON_GLO_PERS_UBIC_INACTIVO(:PE_FECHA)'
        '')
    end
  end
  inherited padr_estilo: TdxEditStyleController [11]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [12]
  end
  inherited padr_esti_panel: TAdvPanelStyler [13]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [14]
  end
  inherited imag_pequenas: TImageList [15]
  end
  inherited padr_quer_consecutivo: TQuery [16]
  end
  inherited padr_imag_tem1_colo: TImageList [17]
  end
  inherited padr_acciones: TActionList [18]
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
    object Acti_Reingreso: TAction
      ImageIndex = 4
      OnExecute = Acti_ReingresoExecute
    end
  end
  inherited data_ventana: TDataSource [19]
  end
  inherited Imagenes_Botones_Pequenos: TImageList [20]
  end
  inherited Variables: TSCLPropiedadesForm [21]
    verBotonesNavegacion = False
  end
  inherited Tabla_Ventana: TTable [22]
    TableName = 'GLO_PERS_MOVIMIENTOS'
  end
  object DSQTurnos: TDataSource
    AutoEdit = False
    DataSet = QTurnos
    Left = 357
    Top = 388
  end
  object TMovimiento: TRxMemoryData
    FieldDefs = <>
    AfterInsert = TMovimientoAfterInsert
    BeforePost = TMovimientoBeforePost
    Left = 280
    Top = 101
    object TMovimientoCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
      Required = True
    end
    object TMovimientoFECH_INICIAL: TDateTimeField
      FieldName = 'FECH_INICIAL'
      Required = True
    end
    object TMovimientoFECH_FINAL: TDateTimeField
      FieldName = 'FECH_FINAL'
    end
    object TMovimientoCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField
      FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Required = True
    end
    object TMovimientoNUME_DOCUMENTO: TStringField
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
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object TMovimientoCONS_UBIC_TIPO: TIntegerField
      FieldName = 'CONS_UBIC_TIPO'
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
    end
    object TMovimientoOTRA_UBICACION: TStringField
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object TMovimientoCONS_TURNO: TIntegerField
      FieldName = 'CONS_TURNO'
    end
    object TMovimientoCONS_PERS_CARGO: TIntegerField
      FieldName = 'CONS_PERS_CARGO'
    end
    object TMovimientoCONS_PERS_CENT_COSTO: TIntegerField
      FieldName = 'CONS_PERS_CENT_COSTO'
    end
    object TMovimientoCONS_COST_GRUPO: TIntegerField
      FieldName = 'CONS_COST_GRUPO'
    end
  end
  object DSMovimiento: TDataSource
    DataSet = TMovimiento
    Left = 309
    Top = 101
  end
  object SPReingreso: TStoredProc
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_PERS_MODI_TRASLADOS'
    Left = 123
    Top = 254
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
      'WHERE CONS_FAMI_MOVIMIENTO = 5')
    Left = 328
    Top = 416
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
    Left = 357
    Top = 416
  end
  object DSQTipo_Documento_Movimiento: TDataSource
    AutoEdit = False
    DataSet = QTipo_Documento_Movimiento
    Left = 357
    Top = 360
  end
  object QTipo_Documento_Movimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_MOVI_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_MOVI_TIPO_DOCUMENTO')
    Left = 328
    Top = 360
  end
  object QTurnos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_TURNOS'
      'ORDER BY CODI_TURNO')
    Left = 328
    Top = 388
  end
  object QPersonal1: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 328
    Top = 478
  end
  object DSQPersonal1: TDataSource
    AutoEdit = False
    DataSet = QPersonal1
    Left = 360
    Top = 478
  end
  object QCargos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_CARGOS'
      'ORDER BY NOMB_PERS_CARGO')
    Left = 811
    Top = 572
  end
  object QCentro_Costos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_CENT_COSTOS'
      'ORDER BY NOMB_PERS_CENT_COSTO')
    Left = 811
    Top = 602
  end
  object QSub_Centro_Costo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_COST_GRUPOS'
      'ORDER BY NOMB_COST_GRUPO')
    Left = 811
    Top = 632
  end
  object DSQCargos: TDataSource
    AutoEdit = False
    DataSet = QCargos
    Left = 843
    Top = 572
  end
  object DSQCentro_Costos: TDataSource
    AutoEdit = False
    DataSet = QCentro_Costos
    Left = 844
    Top = 602
  end
  object DSQSub_Centro_Costo: TDataSource
    AutoEdit = False
    DataSet = QSub_Centro_Costo
    Left = 843
    Top = 632
  end
  object quer_pers_solicitar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_MOVI_SOLICITAR("NOW")'
      'ORDER BY NOMB_COMPLETO')
    Left = 585
    Top = 103
  end
  object data_pers_solicitar: TDataSource
    DataSet = quer_pers_solicitar
    Left = 613
    Top = 103
  end
  object quer_pers_aprobar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_MOVI_APROBAR("NOW")'
      'ORDER BY NOMB_COMPLETO')
    Left = 585
    Top = 131
  end
  object data_pers_aprobar: TDataSource
    DataSet = quer_pers_aprobar
    Left = 613
    Top = 131
  end
end

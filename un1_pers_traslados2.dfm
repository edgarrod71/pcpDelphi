inherited fn1_pers_traslados2: Tfn1_pers_traslados2
  Left = -81
  Top = 73
  Width = 812
  Height = 612
  Caption = 'Traslados de personal'
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
      object TBXItem14: TTBXItem [2]
        Action = acti_movi_ejecutar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_grandes
      end
      object TBXItem13: TTBXItem [3]
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
    Width = 804
  end
  object PCPFrame1: TPCPFrame [8]
    Tag = 189
    Left = 0
    Top = 54
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
    Caption = 'Información del documento de traslado'
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
      Caption = 'Tipo de traslado:'
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
  object PCPFrame2: TPCPFrame [9]
    Tag = 405
    Left = 0
    Top = 243
    Width = 804
    Height = 332
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
    TabOrder = 7
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    object dfsSplitter2: TdfsSplitter
      Left = 528
      Top = 2
      Height = 328
      Cursor = crHSplit
      Align = alRight
      Visible = False
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object PCPFrame3: TPCPFrame
      Tag = 401
      Left = 2
      Top = 2
      Width = 526
      Height = 328
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
      TabOrder = 1
      Titulo_Color = 16244694
      TipoFrame = tfNinguno
      object page: TSCLPageControl
        Left = 2
        Top = 2
        Width = 522
        Height = 324
        ActivePage = page_individual
        ActivePageDefault = page_individual
        Align = alClient
        BoldCurrentTab = True
        Color = 16578290
        FlatColor = 10435335
        Images = _fMDI.imagenesPCP
        Margin = 5
        ParentColor = False
        TabColors.Shadow = 15582631
        TabColors.Unselected = 16578290
        TabIndex = 0
        TabOrder = 1
        Transparent = True
        OnChange = pageChange
        FixedDimension = 22
        object page_individual: TSCLTabSheet
          Color = 16578290
          ImageIndex = 61
          Caption = 'Una sola persona'
          object PCPFrame7: TPCPFrame
            Tag = 201
            Left = 0
            Top = 0
            Width = 518
            Height = 201
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
            TabOrder = 0
            Caption = 'Información del personal y ubicación actual'
            Titulo_Color = 16244694
            Boton_Visible = False
            TipoFrame = tfGrupo
            object SCLDBLabel4: TSCLDBLabel
              Left = 16
              Top = 27
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
              FocusControl = comb_codi_personal
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
              DataField = 'CONS_PERSONAL'
              Field = 'CONS_PERSONAL'
            end
            object SCLDBLabel5: TSCLDBLabel
              Left = 309
              Top = 27
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
              FocusControl = comb_nomb_personal
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Nombres:'
              Transparent = True
              DataSource = data_ventana
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CONS_PERSONAL'
              Field = 'CONS_PERSONAL'
            end
            object comb_codi_personal: TPCPLookUpComboEdit
              Left = 118
              Top = 27
              Width = 145
              Height = 21
              DropDownCount = 8
              Ctl3D = True
              DataField = 'CONS_PERSONAL'
              DataSource = data_ventana
              KeyField = 'cons_personal'
              ListField = 'codi_personal'
              ListSource = data_pers_disponible1
              ParentCtl3D = False
              TabOrder = 1
              OnChange = comb_codi_personalChange
              DirectInput = False
            end
            object comb_nomb_personal: TPCPLookUpComboEdit
              Left = 411
              Top = 27
              Width = 281
              Height = 21
              DropDownCount = 8
              Ctl3D = True
              DataField = 'CONS_PERSONAL'
              DataSource = data_ventana
              KeyField = 'cons_personal'
              ListField = 'nomb_completo'
              ListSource = data_pers_disponible1
              ParentCtl3D = False
              TabOrder = 2
              OnChange = comb_codi_personalChange
              DirectInput = False
            end
            inline fram_ubic_actual: Tffra_maqu_ubicacion
              Left = 26
              Top = 51
              Width = 671
              Height = 150
              TabOrder = 3
              Visible = False
              inherited pane_tipo_ubicacion: TPanel
                Width = 671
                Height = 25
                inherited SCLDBLabel33: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                  DataSource = data_pers_disponible1
                end
                inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
                  DataSource = data_pers_disponible1
                  Enabled = False
                  HideButton = True
                end
              end
              inherited pane_ubic_propia: TPanel
                Top = 25
                Width = 671
                inherited SCLDBLabel34: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                  DataSource = data_pers_disponible1
                end
                inherited SCLDBLabel35: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                  DataSource = data_pers_disponible1
                end
                inherited comb_ubic_empresa: TPCPLookUpComboEdit
                  DataSource = data_pers_disponible1
                  Enabled = False
                  HideButton = True
                end
                inherited comb_ubic_area: TPCPLookUpComboEdit
                  DataSource = data_pers_disponible1
                  Enabled = False
                  HideButton = True
                end
                inherited SCLButton6: TTBXButton
                  Visible = False
                end
                inherited SCLButton7: TTBXButton
                  Visible = False
                end
              end
              inherited pane_ubic_externa: TPanel
                Top = 45
                Width = 671
                inherited SCLDBLabel36: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                  DataSource = data_pers_disponible1
                end
                inherited SCLDBLabel37: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                  DataSource = data_pers_disponible1
                end
                inherited SCLDBLabel1: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                  DataSource = data_pers_disponible1
                end
                inherited comb_ubic_planta: TPCPLookUpComboEdit
                  DataSource = data_pers_disponible1
                  Enabled = False
                  HideButton = True
                end
                inherited comb_ubic_seccion: TPCPLookUpComboEdit
                  DataSource = data_pers_disponible1
                  Enabled = False
                  HideButton = True
                end
                inherited SCLButton8: TTBXButton
                  Visible = False
                end
                inherited SCLButton9: TTBXButton
                  Visible = False
                end
                inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
                  DataSource = data_pers_disponible1
                  Enabled = False
                  HideButton = True
                end
                inherited SCLButton1: TTBXButton
                  Visible = False
                end
              end
              inherited pane_ubic_bodega: TPanel
                Top = 85
                Width = 671
                inherited SCLDBLabel39: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                  DataSource = data_pers_disponible1
                end
                inherited comb_ubic_bodega: TPCPLookUpComboEdit
                  DataSource = data_pers_disponible1
                  Enabled = False
                end
              end
              inherited pane_ubic_otra: TPanel
                Top = 105
                Width = 671
                inherited SCLDBLabel38: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                  DataSource = data_pers_disponible1
                end
                inherited edit_ubic_otra_ubicacion: TdxDBEdit
                  Enabled = False
                  DataSource = data_pers_disponible1
                end
              end
              inherited quer_plantas: TQuery
                Left = 418
              end
            end
            object pane_info_turno: TPanel
              Left = 30
              Top = 143
              Width = 619
              Height = 50
              BevelOuter = bvNone
              TabOrder = 4
              Visible = False
              object SCLDBLabel7: TSCLDBLabel
                Left = 1
                Top = 1
                Width = 85
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
                DataSource = data_pers_disponible1
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
                DataField = 'CONS_TURNO'
                Field = 'CONS_TURNO'
              end
              object SCLDBLabel8: TSCLDBLabel
                Left = 296
                Top = 7
                Width = 85
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
                DataSource = data_pers_disponible1
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
                DataField = 'CONS_PERS_CARGO'
                Field = 'CONS_PERS_CARGO'
              end
              object SCLDBLabel9: TSCLDBLabel
                Left = 1
                Top = 21
                Width = 85
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
                Caption = 'Centro costos:'
                Transparent = True
                DataSource = data_pers_disponible1
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
                DataField = 'CONS_PERS_CENT_COSTO'
                Field = 'CONS_PERS_CENT_COSTO'
              end
              object SCLDBLabel10: TSCLDBLabel
                Left = 296
                Top = 27
                Width = 85
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
                Caption = 'Subcentro:'
                Transparent = True
                DataSource = data_pers_disponible1
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
                DataField = 'CONS_COST_GRUPO'
                Field = 'CONS_COST_GRUPO'
              end
              object PCPLookUpComboEdit1: TPCPLookUpComboEdit
                Left = 88
                Top = 1
                Width = 193
                Height = 21
                DropDownCount = 8
                Ctl3D = True
                DataField = 'CONS_TURNO'
                DataSource = data_pers_disponible1
                Enabled = False
                KeyField = 'CONS_TURNO'
                ListField = 'CODI_TURNO'
                ListSource = DSQTurnos
                ParentCtl3D = False
                TabOrder = 0
                DirectInput = False
                HideButton = True
              end
              object SCLButton6: TTBXButtonSCL
                Left = 282
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
              object PCPLookUpComboEdit3: TPCPLookUpComboEdit
                Left = 383
                Top = 7
                Width = 193
                Height = 21
                DropDownCount = 8
                Ctl3D = True
                DataField = 'CONS_PERS_CARGO'
                DataSource = data_pers_disponible1
                Enabled = False
                KeyField = 'CONS_PERS_CARGO'
                ListField = 'NOMB_PERS_CARGO'
                ListSource = DSQCargos
                ParentCtl3D = False
                TabOrder = 2
                DirectInput = False
                HideButton = True
              end
              object SCLButton9: TTBXButtonSCL
                Left = 578
                Top = 8
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
                Visible = False
              end
              object PCPLookUpComboEdit4: TPCPLookUpComboEdit
                Left = 88
                Top = 21
                Width = 193
                Height = 21
                DropDownCount = 8
                Ctl3D = True
                DataField = 'CONS_PERS_CENT_COSTO'
                DataSource = data_pers_disponible1
                Enabled = False
                KeyField = 'CONS_PERS_CENT_COSTO'
                ListField = 'NOMB_PERS_CENT_COSTO'
                ListSource = DSQCentro_Costos
                ParentCtl3D = False
                TabOrder = 4
                DirectInput = False
                HideButton = True
              end
              object SCLButton10: TTBXButtonSCL
                Left = 282
                Top = 22
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
                Visible = False
              end
              object PCPLookUpComboEdit5: TPCPLookUpComboEdit
                Left = 383
                Top = 27
                Width = 193
                Height = 21
                DropDownCount = 8
                Ctl3D = True
                DataField = 'CONS_COST_GRUPO'
                DataSource = data_pers_disponible1
                Enabled = False
                KeyField = 'CONS_COST_GRUPO'
                ListField = 'NOMB_COST_GRUPO'
                ListSource = DSQSub_Centros
                ParentCtl3D = False
                TabOrder = 6
                DirectInput = False
                HideButton = True
              end
              object SCLButton11: TTBXButtonSCL
                Left = 578
                Top = 27
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
                Visible = False
              end
            end
            object pane_mens_seleccione: TPanel
              Left = 110
              Top = 51
              Width = 164
              Height = 94
              TabOrder = 5
              object SCLShape2: TSCLShape
                Left = 8
                Top = 8
                Width = 149
                Height = 77
                Brush.Style = bsClear
                Pen.Color = 14467501
              end
              object labe_pers_inactivo: THTMLabel
                Left = 15
                Top = 10
                Width = 138
                Height = 79
                ColorTo = clNone
                AnchorHint = False
                AutoSizing = False
                AutoSizeType = asVertical
                Ellipsis = False
                GradientType = gtFullHorizontal
                HintShowFull = False
                Hover = False
                HoverColor = clNone
                HoverFontColor = clNone
                HTMLHint = False
                HTMLText.Strings = (
                  
                    '<IMG src="1"> <B>  ATENCIÓN</FONT></B><BR><BR>Debe seleccionar p' +
                    'or lo menos un registro para efectuar el traslado.')
                LineWidth = 0
                PictureContainer = padr_pict_container
                ShadowColor = clGray
                ShadowOffset = 2
                Transparent = True
                URLColor = clBlue
                VAlignment = tvaTop
                Version = '1.7.1.1'
              end
              object SCLShape3: TSCLShape
                Left = 11
                Top = 30
                Width = 143
                Height = 1
                Brush.Style = bsClear
                Pen.Color = 14467501
              end
            end
          end
        end
        object page_grupal: TSCLTabSheet
          Color = 16578290
          ImageIndex = 62
          Caption = 'Un grupo de personas'
          object PCPFrame4: TPCPFrame
            Tag = 117
            Left = 0
            Top = 0
            Width = 518
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
            TabOrder = 0
            Caption = 'Filtros del personal'
            Titulo_Color = 16244694
            Titulo_Comprimido = True
            FlatBorder = True
            object Panel1: TPanel
              Left = 3
              Top = 22
              Width = 512
              Height = 91
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              inline fram_filt_personal: Tffra_maqu_ubicacion
                Width = 577
                Height = 91
                Align = alLeft
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
                  Width = 577
                  inherited SCLDBLabel39: TSCLDBLabel
                    FontActive.Name = 'Tahoma'
                  end
                end
                inherited pane_ubic_otra: TPanel
                  Width = 577
                  inherited SCLDBLabel38: TSCLDBLabel
                    FontActive.Name = 'Tahoma'
                  end
                end
              end
            end
          end
          object PCPFrame5: TPCPFrame
            Tag = 348
            Left = 0
            Top = 23
            Width = 518
            Height = 275
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
            TabOrder = 1
            Titulo_Color = 16244694
            TipoFrame = tfNinguno
            object dfsSplitter1: TdfsSplitter
              Left = 417
              Top = 2
              Width = 15
              Height = 344
              Cursor = crHSplit
              Align = alLeft
              Beveled = True
              Visible = False
              Maximized = False
              Minimized = False
              ButtonCursor = crDefault
            end
            object PCPFrame8: TPCPFrame
              Tag = 344
              Left = 432
              Top = 2
              Width = 292
              Height = 344
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
                Width = 278
                Height = 311
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
            object Panel4: TPanel
              Left = 2
              Top = 2
              Width = 415
              Height = 344
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object PCPFrame6: TPCPFrame
                Tag = 344
                Left = 0
                Top = 0
                Width = 384
                Height = 344
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
                  Width = 370
                  Height = 311
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
                    Width = 90
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'CODI_PERSONAL'
                    SummaryFooterType = cstCount
                    SummaryFooterField = 'CONS_PERSONAL'
                    SummaryFooterFormat = ',0'
                  end
                  object grid_pers_disponibleNOMB_COMPLETO: TdxDBGridMaskColumn
                    Sorted = csUp
                    Width = 350
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'NOMB_COMPLETO'
                  end
                  object grid_pers_disponibleCONS_TURNO: TdxDBGridColumn
                    Visible = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'CONS_TURNO'
                  end
                  object grid_pers_disponibleCONS_PERS_CARGO: TdxDBGridColumn
                    Visible = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'CONS_PERS_CARGO'
                  end
                  object grid_pers_disponibleCONS_PERS_CENT_COSTO: TdxDBGridColumn
                    Visible = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'CONS_PERS_CENT_COSTO'
                  end
                  object grid_pers_disponibleCONS_COST_GRUPO: TdxDBGridColumn
                    Visible = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'CONS_COST_GRUPO'
                  end
                end
              end
              object Panel5: TPanel
                Left = 384
                Top = 0
                Width = 31
                Height = 344
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 1
                object boto_adic_1: TTBXButtonSCL
                  Left = 5
                  Top = 50
                  Width = 22
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
                object boto_adic_todos: TTBXButtonSCL
                  Left = 5
                  Top = 74
                  Width = 22
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
                object boto_elim_1: TTBXButtonSCL
                  Left = 5
                  Top = 106
                  Width = 22
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
                object boto_elim_todos: TTBXButtonSCL
                  Left = 5
                  Top = 130
                  Width = 22
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
        end
      end
    end
    object PCPFrame9: TPCPFrame
      Tag = 401
      Left = 538
      Top = 2
      Width = 264
      Height = 328
      Align = alRight
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Caption = 'Nueva ubicación'
      Titulo_Color = 16244694
      Boton_Visible = False
      FlatBorder = True
      inline fram_nuev_ubicacion: Tffra_maqu_ubicacion
        Left = 3
        Top = 22
        Width = 258
        Height = 167
        Align = alTop
        TabOrder = 1
        inherited pane_tipo_ubicacion: TPanel
          Width = 258
          inherited SCLDBLabel33: TSCLDBLabel
            Left = 0
            Width = 85
            FontActive.Name = 'Tahoma'
            DataSource = data_ventana
          end
          inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = data_ventana
            OnChange = fram_nuev_ubicacioncomb_tipo_ubicacionChange
          end
        end
        inherited pane_ubic_propia: TPanel
          Width = 258
          Height = 40
          inherited SCLDBLabel34: TSCLDBLabel
            Left = 0
            Width = 85
            FontActive.Name = 'Tahoma'
            DataSource = data_ventana
          end
          inherited SCLDBLabel35: TSCLDBLabel
            Left = 0
            Top = 19
            Width = 85
            FontActive.Name = 'Tahoma'
            DataSource = data_ventana
          end
          inherited comb_ubic_empresa: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = data_ventana
          end
          inherited comb_ubic_area: TPCPLookUpComboEdit
            Left = 87
            Top = 19
            Width = 145
            DataSource = data_ventana
          end
          inherited SCLButton6: TTBXButton
            Left = 234
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton7: TTBXButton
            Left = 234
            Top = 20
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_externa: TPanel
          Top = 64
          Width = 258
          Height = 63
          inherited SCLDBLabel36: TSCLDBLabel
            Left = 0
            Width = 85
            FontActive.Name = 'Tahoma'
            DataSource = data_ventana
          end
          inherited SCLDBLabel37: TSCLDBLabel
            Left = 0
            Top = 39
            Width = 85
            FontActive.Name = 'Tahoma'
            DataSource = data_ventana
          end
          inherited SCLDBLabel1: TSCLDBLabel
            Left = 0
            Top = 19
            Width = 85
            FontActive.Name = 'Tahoma'
            DataSource = data_ventana
          end
          inherited comb_ubic_planta: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = data_ventana
          end
          inherited comb_ubic_seccion: TPCPLookUpComboEdit
            Left = 87
            Top = 39
            Width = 145
            DataSource = data_ventana
          end
          inherited SCLButton8: TTBXButton
            Left = 234
            Images = Imagenes_Botones_Pequenos
          end
          inherited SCLButton9: TTBXButton
            Left = 234
            Top = 47
            Images = Imagenes_Botones_Pequenos
          end
          inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
            Left = 87
            Top = 19
            Width = 145
            DataSource = data_ventana
          end
          inherited SCLButton1: TTBXButton
            Left = 234
            Top = 24
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_bodega: TPanel
          Top = 127
          Width = 258
          inherited SCLDBLabel39: TSCLDBLabel
            Left = 0
            Width = 85
            FontActive.Name = 'Tahoma'
            DataSource = data_ventana
          end
          inherited comb_ubic_bodega: TPCPLookUpComboEdit
            Left = 87
            Width = 145
            DataSource = data_ventana
          end
          inherited SCLButton10: TTBXButton
            Left = 234
            Images = Imagenes_Botones_Pequenos
          end
        end
        inherited pane_ubic_otra: TPanel
          Top = 147
          Width = 258
          inherited SCLDBLabel38: TSCLDBLabel
            Left = 0
            Width = 85
            FontActive.Name = 'Tahoma'
            DataSource = data_ventana
          end
          inherited edit_ubic_otra_ubicacion: TdxDBEdit
            Left = 87
            Width = 145
            DataSource = data_ventana
            StyleController = padr_estilo
          end
        end
      end
      object pane_otro_Datos: TPanel
        Left = 3
        Top = 284
        Width = 258
        Height = 109
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object SCLDBLabel6: TSCLDBLabel
          Left = 0
          Top = 11
          Width = 85
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
          FocusControl = comb_ubic_turno
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
          DataField = 'CONS_TURNO'
          Field = 'CONS_TURNO'
        end
        object SCLDBLabel16: TSCLDBLabel
          Left = 0
          Top = 31
          Width = 85
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
          FocusControl = comb_ubic_cargo
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Cargo:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_PERS_CARGO'
          Field = 'CONS_PERS_CARGO'
        end
        object SCLDBLabel44: TSCLDBLabel
          Left = 0
          Top = 51
          Width = 85
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
          FocusControl = comb_ubic_cent_costos
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Centro costos:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_PERS_CENT_COSTO'
          Field = 'CONS_PERS_CENT_COSTO'
        end
        object SCLDBLabel45: TSCLDBLabel
          Left = 0
          Top = 71
          Width = 85
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
          FocusControl = comb_cent_cost_grupo
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Subcentro:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_COST_GRUPO'
          Field = 'CONS_COST_GRUPO'
        end
        object SCLShape1: TSCLShape
          Left = 0
          Top = 0
          Width = 258
          Height = 1
          Align = alTop
          Brush.Style = bsClear
          Pen.Color = 14467501
        end
        object comb_ubic_turno: TPCPLookUpComboEdit
          Left = 87
          Top = 11
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_TURNO'
          DataSource = data_ventana
          KeyField = 'CONS_TURNO'
          ListField = 'CODI_TURNO'
          ListSource = DSQTurnos
          ParentCtl3D = False
          TabOrder = 0
          DirectInput = False
        end
        object SCLButton4: TTBXButtonSCL
          Left = 234
          Top = 10
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
        object comb_ubic_cargo: TPCPLookUpComboEdit
          Left = 87
          Top = 31
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_PERS_CARGO'
          DataSource = data_ventana
          KeyField = 'CONS_PERS_CARGO'
          ListField = 'NOMB_PERS_CARGO'
          ListSource = DSQCargos
          ParentCtl3D = False
          TabOrder = 2
          DirectInput = False
        end
        object SCLButton5: TTBXButtonSCL
          Left = 234
          Top = 32
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
        object comb_ubic_cent_costos: TPCPLookUpComboEdit
          Left = 87
          Top = 51
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_PERS_CENT_COSTO'
          DataSource = data_ventana
          KeyField = 'CONS_PERS_CENT_COSTO'
          ListField = 'NOMB_PERS_CENT_COSTO'
          ListSource = DSQCentro_Costos
          ParentCtl3D = False
          TabOrder = 4
          DirectInput = False
        end
        object SCLButton7: TTBXButtonSCL
          Left = 234
          Top = 52
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
        object comb_cent_cost_grupo: TPCPLookUpComboEdit
          Left = 87
          Top = 71
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_COST_GRUPO'
          DataSource = data_ventana
          KeyField = 'CONS_COST_GRUPO'
          ListField = 'NOMB_COST_GRUPO'
          ListSource = DSQSub_Centros
          ParentCtl3D = False
          TabOrder = 6
          DirectInput = False
        end
        object SCLButton8: TTBXButtonSCL
          Left = 234
          Top = 72
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
      object Panel2: TPanel
        Left = 3
        Top = 273
        Width = 258
        Height = 11
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
      end
      object pane_aten_nuev_ubicacion: TPanel
        Left = 3
        Top = 189
        Width = 258
        Height = 84
        Align = alTop
        TabOrder = 4
        object SCLShape4: TSCLShape
          Left = 87
          Top = 8
          Width = 149
          Height = 65
          Brush.Style = bsClear
          Pen.Color = 14467501
        end
        object HTMLabel1: THTMLabel
          Left = 94
          Top = 10
          Width = 138
          Height = 59
          ColorTo = clNone
          AnchorHint = False
          AutoSizing = False
          AutoSizeType = asVertical
          Ellipsis = False
          GradientType = gtFullHorizontal
          HintShowFull = False
          Hover = False
          HoverColor = clNone
          HoverFontColor = clNone
          HTMLHint = False
          HTMLText.Strings = (
            
              '<IMG src="1"> <FONT color="#000000"><B>  ATENCIÓN</B><BR><BR>Sel' +
              'eccione una nueva ubicación para el personal.')
          LineWidth = 0
          PictureContainer = padr_pict_container
          ShadowColor = clGray
          ShadowOffset = 2
          Transparent = True
          URLColor = clBlue
          VAlignment = tvaTop
          Version = '1.7.1.1'
        end
        object SCLShape5: TSCLShape
          Left = 90
          Top = 30
          Width = 143
          Height = 1
          Brush.Style = bsClear
          Pen.Color = 14467501
        end
      end
    end
  end
  inherited data_ventana: TDataSource
    DataSet = myTabla_Ventana
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
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
  object quer_Tipo_Movimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_GLO_PERS_TIPO_MOVI_TRASLADO'
      '')
    Left = 673
    Top = 156
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
    Top = 184
  end
  object DSQTipo_Movimiento: TDataSource
    AutoEdit = False
    DataSet = quer_Tipo_Movimiento
    Left = 701
    Top = 156
  end
  object DSQTipo_Documento: TDataSource
    AutoEdit = False
    DataSet = Quer_Tipo_Documento
    Left = 701
    Top = 184
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <>
    AfterInsert = myTabla_VentanaAfterInsert
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
      Required = True
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
    object myTabla_Ventanacons_personal: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object myTabla_VentanaCONS_UBIC_TIPO: TIntegerField
      FieldName = 'CONS_UBIC_TIPO'
      Required = True
    end
    object myTabla_VentanaCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
      Required = True
    end
    object myTabla_VentanaCONS_AREA: TIntegerField
      FieldName = 'CONS_AREA'
      Required = True
    end
    object myTabla_VentanaCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
      Required = True
    end
    object myTabla_VentanaCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Required = True
    end
    object myTabla_VentanaCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
      Required = True
    end
    object myTabla_VentanaCONS_BODEGA: TIntegerField
      FieldName = 'CONS_BODEGA'
      Required = True
    end
    object myTabla_VentanaOTRA_UBICACION: TStringField
      FieldName = 'OTRA_UBICACION'
      Required = True
      Size = 60
    end
    object myTabla_VentanaCONS_TURNO: TIntegerField
      FieldName = 'CONS_TURNO'
      Required = True
    end
    object myTabla_VentanaCONS_PERS_CARGO: TIntegerField
      FieldName = 'CONS_PERS_CARGO'
      Required = True
    end
    object myTabla_VentanaCONS_PERS_CENT_COSTO: TIntegerField
      FieldName = 'CONS_PERS_CENT_COSTO'
      Required = True
    end
    object myTabla_VentanaCONS_COST_GRUPO: TIntegerField
      FieldName = 'CONS_COST_GRUPO'
      Required = True
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
  object quer_pers_disponible: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT'
      '*'
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
    object quer_pers_disponibleCONS_BODEGA: TIntegerField
      FieldName = 'CONS_BODEGA'
    end
    object quer_pers_disponibleOTRA_UBICACION: TStringField
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object quer_pers_disponibleCONS_TURNO: TIntegerField
      FieldName = 'CONS_TURNO'
    end
    object quer_pers_disponibleCONS_PERS_CARGO: TIntegerField
      FieldName = 'CONS_PERS_CARGO'
    end
    object quer_pers_disponibleCONS_PERS_CENT_COSTO: TIntegerField
      FieldName = 'CONS_PERS_CENT_COSTO'
    end
    object quer_pers_disponibleCONS_COST_GRUPO: TIntegerField
      FieldName = 'CONS_COST_GRUPO'
    end
  end
  object data_pers_disponible: TDataSource
    DataSet = quer_pers_disponible
    Left = 160
    Top = 490
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
    object tabl_temporalCONS_TURNO: TIntegerField
      FieldName = 'CONS_TURNO'
    end
    object tabl_temporalCONS_PERS_CARGO: TIntegerField
      FieldName = 'CONS_PERS_CARGO'
    end
    object tabl_temporalCONS_PERS_CENT_COSTO: TIntegerField
      FieldName = 'CONS_PERS_CENT_COSTO'
    end
    object tabl_temporalCONS_COST_GRUPO: TIntegerField
      FieldName = 'CONS_COST_GRUPO'
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
    end
    object TBXItem12: TTBXItem
      Action = acti_movi_cancelar
      DisplayMode = nbdmImageAndText
    end
  end
  object quer_pers_disponible1: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT'
      '*'
      'from CON_GLO_PERS_UBIC_FECHA("NOW")'
      'WHERE CONS_ESTADO = 1'
      '')
    Left = 128
    Top = 522
    object IntegerField1: TIntegerField
      FieldName = 'CONS_PERSONAL'
    end
    object StringField1: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Size = 12
    end
    object StringField2: TStringField
      DisplayLabel = 'Nombres y apellidos'
      FieldName = 'NOMB_COMPLETO'
      Size = 102
    end
    object IntegerField2: TIntegerField
      FieldName = 'CONS_UBIC_TIPO'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CONS_EMPRESA'
    end
    object IntegerField4: TIntegerField
      FieldName = 'CONS_AREA'
    end
    object IntegerField5: TIntegerField
      FieldName = 'CONS_PLANTA'
    end
    object IntegerField6: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
    end
    object IntegerField7: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
    end
    object IntegerField8: TIntegerField
      FieldName = 'CONS_BODEGA'
    end
    object StringField3: TStringField
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object quer_pers_disponible1CONS_TURNO: TIntegerField
      FieldName = 'CONS_TURNO'
    end
    object quer_pers_disponible1CONS_PERS_CARGO: TIntegerField
      FieldName = 'CONS_PERS_CARGO'
    end
    object quer_pers_disponible1CONS_PERS_CENT_COSTO: TIntegerField
      FieldName = 'CONS_PERS_CENT_COSTO'
    end
    object quer_pers_disponible1CONS_COST_GRUPO: TIntegerField
      FieldName = 'CONS_COST_GRUPO'
    end
  end
  object data_pers_disponible1: TDataSource
    DataSet = quer_pers_disponible1
    Left = 160
    Top = 522
  end
  object QTurnos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_TURNOS'
      'ORDER BY CODI_TURNO')
    Left = 891
    Top = 522
  end
  object DSQTurnos: TDataSource
    AutoEdit = False
    DataSet = QTurnos
    Left = 919
    Top = 522
  end
  object QCentro_Costos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_CENT_COSTOS'
      'ORDER BY NOMB_PERS_CENT_COSTO')
    Left = 891
    Top = 550
  end
  object DSQCentro_Costos: TDataSource
    AutoEdit = False
    DataSet = QCentro_Costos
    Left = 919
    Top = 550
  end
  object QSub_Centros: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_COST_GRUPOS'
      'ORDER BY NOMB_COST_GRUPO')
    Left = 891
    Top = 578
  end
  object DSQSub_Centros: TDataSource
    AutoEdit = False
    DataSet = QSub_Centros
    Left = 919
    Top = 579
  end
  object QCargos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_CARGOS'
      'ORDER BY NOMB_PERS_CARGO')
    Left = 891
    Top = 606
  end
  object DSQCargos: TDataSource
    AutoEdit = False
    DataSet = QCargos
    Left = 919
    Top = 606
  end
  object quer_pers_solicitar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_MOVI_SOLICITAR("NOW")'
      'ORDER BY NOMB_COMPLETO')
    Left = 673
    Top = 212
  end
  object data_pers_solicitar: TDataSource
    DataSet = quer_pers_solicitar
    Left = 701
    Top = 212
  end
  object quer_pers_aprobar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_MOVI_APROBAR("NOW")'
      'ORDER BY NOMB_COMPLETO')
    Left = 673
    Top = 240
  end
  object data_pers_aprobar: TDataSource
    DataSet = quer_pers_aprobar
    Left = 701
    Top = 240
  end
  object quer_traslado: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'EXECUTE PROCEDURE PRO_GLO_PERS_MODI_TRASLADOS'
      '(:CONS_PERS_TIPO_MOVIMIENTO,'
      ':CONS_PERS_MOVI_TIPO_DOCUMENTO,'
      ':NUME_DOCUMENTO,'
      ':FECH_INICIAL,'
      ':FECH_FINAL,'
      ':OBSERVACIONES,'
      ':CONS_PERSONAL,'
      ':CONS_UBIC_TIPO,'
      ':CONS_EMPRESA,'
      ':CONS_AREA,'
      ':CONS_PLANTA,'
      ':CONS_PLAN_LINEA,'
      ':CONS_LINE_SECCION,'
      ':CONS_BODEGA,'
      ':OTRA_UBICACION,'
      ':CONS_TURNO,'
      ':CONS_SOLICITA,'
      ':CONS_APROBO,'
      ':CONS_PERS_CARGO,'
      ':CONS_PERS_CENT_COSTO,'
      ':CONS_COST_GRUPO)')
    Left = 544
    Top = 440
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
        Name = 'CONS_UBIC_TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_AREA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PLANTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PLAN_LINEA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_LINE_SECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_BODEGA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OTRA_UBICACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_TURNO'
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
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_CARGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_CENT_COSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_COST_GRUPO'
        ParamType = ptUnknown
      end>
  end
end

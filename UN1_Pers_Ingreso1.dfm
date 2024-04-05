inherited FN1_Pers_Ingreso1: TFN1_Pers_Ingreso1
  Left = -8
  Top = 35
  Width = 812
  Height = 612
  OldCreateOrder = True
  Scaled = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Top = 24
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Top = 27
    Width = 804
    inherited padr_barra: TTBXToolbar
      DockPos = 0
      DockRow = 1
      inherited padr_boto_vinculos: TTBXSubmenuItem
        Images = _fMDI.imag_grandes
        LinkSubitems = _fMDI.menu_personal
        Visible = True
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Top = 25
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 69
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 782
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
    Width = 804
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 447
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 469
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 447
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 469
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
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
    Top = 76
    Width = 804
  end
  object PCPFrame1: TPCPFrame [8]
    Tag = 541
    Left = 0
    Top = 78
    Width = 804
    Height = 497
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
    TabOrder = 6
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    object Page: TSCLPageControl
      Left = 2
      Top = 2
      Width = 800
      Height = 493
      ActivePage = page_info_documento
      ActivePageDefault = page_info_documento
      DblClickUndocks = False
      Align = alClient
      AlignTabs = True
      BoldCurrentTab = True
      Color = 16578290
      FlatColor = 10435335
      Images = _fMDI.imagenesPCP
      Margin = 5
      ParentColor = False
      ShowShadow = False
      TabColors.Shadow = 15582631
      TabColors.Unselected = 16578290
      TabIndex = 0
      TabOrder = 1
      Transparent = True
      FixedDimension = 22
      object page_info_documento: TSCLTabSheet
        Color = 16578290
        ImageIndex = 61
        Caption = 'Documento de ingreso'
        object SCLDBLabel40: TSCLDBLabel
          Left = 24
          Top = 11
          Width = 137
          Height = 21
          Alive = True
          ColorActive = 16578290
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = []
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = comb_tipo_docu_ingreso
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo Documento Ingreso:'
          Transparent = True
          DataSource = data_glo_pers_movimientos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
          Field = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
        end
        object SCLDBLabel42: TSCLDBLabel
          Left = 328
          Top = 11
          Width = 112
          Height = 21
          Alive = True
          ColorActive = 16578290
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = []
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = DBNumero
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Número Documento:'
          Transparent = True
          DataSource = data_glo_pers_movimientos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'NUME_DOCUMENTO'
          Field = 'NUME_DOCUMENTO'
        end
        object SCLDBLabel64: TSCLDBLabel
          Left = 48
          Top = 31
          Width = 113
          Height = 21
          Alive = True
          ColorActive = 16578290
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = []
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = DBFecha_Inicial
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fecha de ingreso:'
          Transparent = True
          DataSource = data_glo_pers_movimientos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'FECH_INICIAL'
          Field = 'FECH_INICIAL'
        end
        object SCLDBLabel17: TSCLDBLabel
          Left = 24
          Top = 59
          Width = 137
          Height = 21
          Alive = True
          ColorActive = 16578290
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = []
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = CBSolicitado
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Solicitado Por:'
          Transparent = True
          DataSource = data_glo_pers_movimientos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_SOLICITA'
          Field = 'CONS_SOLICITA'
        end
        object SCLDBLabel39: TSCLDBLabel
          Left = 24
          Top = 79
          Width = 137
          Height = 21
          Alive = True
          ColorActive = 16578290
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = []
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = CBAprobado
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Aprobado Por:'
          Transparent = True
          DataSource = data_glo_pers_movimientos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_APROBO'
          Field = 'CONS_APROBO'
        end
        object SCLDBLabel68: TSCLDBLabel
          Left = 48
          Top = 107
          Width = 113
          Height = 102
          Alive = True
          ColorActive = 16578290
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
          Caption = 'Observaciones:'
          Layout = tlTop
          Transparent = True
          DataSource = data_glo_pers_movimientos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'OBSERVACIONES'
          Field = 'OBSERVACIONES'
        end
        object comb_tipo_docu_ingreso: TPCPLookUpComboEdit
          Left = 163
          Top = 11
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
          DataSource = data_glo_pers_movimientos
          KeyField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
          ListField = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
          ListSource = data_tipo_docu_ingreso
          TabOrder = 0
          DirectInput = False
        end
        object DBNumero: TdxDBEdit
          Left = 442
          Top = 11
          Width = 145
          TabOrder = 1
          DataField = 'NUME_DOCUMENTO'
          DataSource = data_glo_pers_movimientos
          StyleController = padr_estilo
        end
        object DBFecha_Inicial: TdxDBDateEdit
          Left = 163
          Top = 31
          Width = 145
          TabOrder = 2
          AutoSize = False
          DataField = 'FECH_INICIAL'
          DataSource = data_glo_pers_movimientos
          StyleController = padr_estilo
          Height = 21
        end
        object CBSolicitado: TPCPLookUpComboEdit
          Left = 163
          Top = 59
          Width = 424
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_SOLICITA'
          DataSource = data_glo_pers_movimientos
          KeyField = 'CONS_PERSONAL'
          ListField = 'NOMB_COMPLETO'
          ListSource = data_pers_solicitar
          TabOrder = 3
          DirectInput = False
        end
        object CBAprobado: TPCPLookUpComboEdit
          Left = 163
          Top = 79
          Width = 424
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_APROBO'
          DataSource = data_glo_pers_movimientos
          KeyField = 'CONS_PERSONAL'
          ListField = 'NOMB_COMPLETO'
          ListSource = data_pers_aprobar
          TabOrder = 4
          DirectInput = False
        end
        object DBObservaciones: TdxDBMemo
          Left = 163
          Top = 107
          Width = 424
          TabOrder = 5
          OnExit = cambiarPagina
          DataField = 'OBSERVACIONES'
          DataSource = data_glo_pers_movimientos
          StyleController = padr_estilo
          Height = 102
        end
      end
      object page_generales: TSCLTabSheet
        Color = 16578290
        ImageIndex = 56
        Caption = 'Datos Generales'
        object PCPFrame10: TPCPFrame
          Tag = 305
          Left = 0
          Top = 0
          Width = 798
          Height = 305
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
          Caption = 'Información Personal'
          Titulo_Color = 16244694
          TipoFrame = tfGrupo
          object SCLDBLabel1: TSCLDBLabel
            Left = 64
            Top = 22
            Width = 97
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
            FocusControl = edit_Codi_personal
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Código:'
            Transparent = True
            DataSource = data_glo_personal
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CODI_PERSONAL'
            Field = 'CODI_PERSONAL'
          end
          object SCLDBLabel2: TSCLDBLabel
            Left = 64
            Top = 50
            Width = 97
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
            FocusControl = edit_apellido1
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Primer Apellido:'
            Transparent = True
            DataSource = data_glo_personal
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'PRIM_APELLIDO'
            Field = 'PRIM_APELLIDO'
          end
          object SCLDBLabel3: TSCLDBLabel
            Left = 64
            Top = 70
            Width = 97
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
            FocusControl = edit_apellido2
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Segundo Apellido:'
            Transparent = True
            DataSource = data_glo_personal
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'SEGU_APELLIDO'
            Field = 'SEGU_APELLIDO'
          end
          object SCLDBLabel4: TSCLDBLabel
            Left = 64
            Top = 90
            Width = 97
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
            FocusControl = Edit_Nombres
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Nombres:'
            Transparent = True
            DataSource = data_glo_personal
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'NOMBRES'
            Field = 'NOMBRES'
          end
          object SCLDBLabel41: TSCLDBLabel
            Left = 64
            Top = 118
            Width = 97
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
            FocusControl = comb_sexo
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Sexo:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_SEXO'
            Field = 'CONS_SEXO'
          end
          object SCLDBLabel43: TSCLDBLabel
            Left = 64
            Top = 138
            Width = 97
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
            FocusControl = comb_Esta_civil
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Estado Civil:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_ESTA_CIVIL'
            Field = 'CONS_ESTA_CIVIL'
          end
          object SCLDBLabel69: TSCLDBLabel
            Left = 64
            Top = 158
            Width = 97
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
            FocusControl = edit_nume_hijos
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'No. Hijos'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'NUME_HIJOS'
            Field = 'NUME_HIJOS'
          end
          object edit_Codi_personal: TdxDBEdit
            Left = 163
            Top = 22
            Width = 145
            TabOrder = 1
            OnExit = edit_Codi_personalExit
            DataField = 'CODI_PERSONAL'
            DataSource = data_glo_personal
            StyleController = padr_estilo
          end
          object edit_apellido1: TdxDBEdit
            Left = 163
            Top = 50
            Width = 145
            TabOrder = 2
            DataField = 'PRIM_APELLIDO'
            DataSource = data_glo_personal
            StyleController = padr_estilo
          end
          object edit_apellido2: TdxDBEdit
            Left = 163
            Top = 70
            Width = 145
            TabOrder = 3
            DataField = 'SEGU_APELLIDO'
            DataSource = data_glo_personal
            StyleController = padr_estilo
          end
          object Edit_Nombres: TdxDBEdit
            Left = 163
            Top = 90
            Width = 145
            TabOrder = 4
            DataField = 'NOMBRES'
            DataSource = data_glo_personal
            StyleController = padr_estilo
          end
          inline ffra_fotografiaDB1: Tffra_fotografiaDB
            Left = 328
            Top = 18
            Width = 265
            Height = 287
            TabOrder = 8
            inherited fram_pane_atras: TPanel
              Width = 265
              Height = 261
              inherited fram_fotografia: TEDBImage
                Width = 255
                Height = 228
                DataField = 'IMAGEN'
                DataSource = data_glo_pers_general
              end
              inherited fram_pane_stretch: TPanel
                Top = 233
                Width = 255
                inherited fram_chec_ajustar: TdxDBCheckEdit
                  OnExit = cambiarPagina
                  DataField = 'AJUS_IMAGEN'
                  DataSource = data_glo_pers_general
                end
              end
            end
            inherited TBXDock1: TTBXDock
              Width = 265
            end
          end
          object comb_sexo: TPCPLookUpComboEdit
            Left = 163
            Top = 118
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'CONS_SEXO'
            DataSource = data_glo_pers_general
            KeyField = 'CONS_SEXO'
            ListField = 'NOMB_SEXO'
            ListSource = data_sexos
            TabOrder = 5
            DirectInput = False
          end
          object comb_Esta_civil: TPCPLookUpComboEdit
            Left = 163
            Top = 138
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'CONS_ESTA_CIVIL'
            DataSource = data_glo_pers_general
            KeyField = 'CONS_ESTA_CIVIL'
            ListField = 'NOMB_ESTA_CIVIL'
            ListSource = data_esta_civil
            TabOrder = 6
            DirectInput = False
          end
          object edit_nume_hijos: TdxDBEdit
            Left = 163
            Top = 158
            Width = 46
            TabOrder = 7
            DataField = 'NUME_HIJOS'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
        end
      end
      object page_dato_personales: TSCLTabSheet
        Color = 16578290
        ImageIndex = 55
        Caption = 'Datos Personales'
        object PCPFrame2: TPCPFrame
          Tag = 65
          Left = 0
          Top = 67
          Width = 798
          Height = 65
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
          Caption = 'Documento de identificación'
          Titulo_Color = 16244694
          TipoFrame = tfGrupo
          object SCLDBLabel5: TSCLDBLabel
            Left = 48
            Top = 22
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
            FocusControl = comb_tipo_documento
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Tipo Documento:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_PERS_TIPO_DOCUMENTO'
            Field = 'CONS_PERS_TIPO_DOCUMENTO'
          end
          object SCLDBLabel6: TSCLDBLabel
            Left = 336
            Top = 22
            Width = 104
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
            FocusControl = edit_nume_documento
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Número Documento:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'NUME_DOCUMENTO'
            Field = 'NUME_DOCUMENTO'
          end
          object SCLDBLabel31: TSCLDBLabel
            Left = 48
            Top = 42
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
            FocusControl = edit_docu_fech_expedicion
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha Expedición:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'FECH_EXPE_DOCUMENTO'
            Field = 'FECH_EXPE_DOCUMENTO'
          end
          object SCLDBLabel32: TSCLDBLabel
            Left = 336
            Top = 42
            Width = 104
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
            FocusControl = edit_docu_luga_expedicion
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Lugar Expedición:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'LUGA_EXPE_DOCUMENTO'
            Field = 'LUGA_EXPE_DOCUMENTO'
          end
          object comb_tipo_documento: TPCPLookUpComboEdit
            Left = 163
            Top = 22
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'CONS_PERS_TIPO_DOCUMENTO'
            DataSource = data_glo_pers_general
            KeyField = 'CONS_PERS_TIPO_DOCUMENTO'
            ListField = 'NOMB_PERS_TIPO_DOCUMENTO'
            ListSource = data_tipo_documento
            TabOrder = 1
            DirectInput = False
          end
          object edit_nume_documento: TdxDBEdit
            Left = 442
            Top = 22
            Width = 145
            TabOrder = 2
            DataField = 'NUME_DOCUMENTO'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
          object edit_docu_fech_expedicion: TdxDBDateEdit
            Left = 163
            Top = 42
            Width = 145
            TabOrder = 3
            DataField = 'FECH_EXPE_DOCUMENTO'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object edit_docu_luga_expedicion: TdxDBEdit
            Left = 442
            Top = 42
            Width = 145
            TabOrder = 4
            DataField = 'LUGA_EXPE_DOCUMENTO'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
        end
        object PCPFrame3: TPCPFrame
          Tag = 65
          Left = 0
          Top = 132
          Width = 798
          Height = 65
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
          TabOrder = 2
          Caption = 'Pasaporte'
          Titulo_Color = 16244694
          Boton_Visible = False
          TipoFrame = tfGrupo
          object SCLDBLabel33: TSCLDBLabel
            Left = 48
            Top = 22
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
            FocusControl = edit_pasa_numero
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Número:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'NUME_PASAPORTE'
            Field = 'NUME_PASAPORTE'
          end
          object SCLDBLabel34: TSCLDBLabel
            Left = 336
            Top = 22
            Width = 104
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
            FocusControl = edit_pasa_fech_expedicion
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha Expedición:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'FECH_EXPE_PASAPORTE'
            Field = 'FECH_EXPE_PASAPORTE'
          end
          object SCLDBLabel35: TSCLDBLabel
            Left = 48
            Top = 42
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
            FocusControl = edit_pasa_lugar
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvNone
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Lugar Expedición:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'LUGA_EXPE_PASAPORTE'
            Field = 'LUGA_EXPE_PASAPORTE'
          end
          object SCLDBLabel36: TSCLDBLabel
            Left = 336
            Top = 42
            Width = 104
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
            FocusControl = edit_pasa_fech_vencimiento
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha Vencimiento:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'FECH_VENC_PASAPORTE'
            Field = 'FECH_VENC_PASAPORTE'
          end
          object edit_pasa_numero: TdxDBEdit
            Left = 163
            Top = 22
            Width = 145
            TabOrder = 1
            DataField = 'NUME_PASAPORTE'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
          object edit_pasa_fech_expedicion: TdxDBDateEdit
            Left = 442
            Top = 22
            Width = 145
            TabOrder = 2
            DataField = 'FECH_EXPE_PASAPORTE'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
          object edit_pasa_lugar: TdxDBEdit
            Left = 163
            Top = 42
            Width = 145
            TabOrder = 3
            DataField = 'LUGA_EXPE_PASAPORTE'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
          object edit_pasa_fech_vencimiento: TdxDBDateEdit
            Left = 442
            Top = 42
            Width = 145
            TabOrder = 4
            DataField = 'FECH_VENC_PASAPORTE'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
        end
        object PCPFrame4: TPCPFrame
          Tag = 43
          Left = 0
          Top = 197
          Width = 798
          Height = 43
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
          TabOrder = 3
          Caption = 'Libreta militar'
          Titulo_Color = 16244694
          TipoFrame = tfGrupo
          object SCLDBLabel37: TSCLDBLabel
            Left = 48
            Top = 22
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
            FocusControl = edit_libr_numero
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Número:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'NUME_LIBR_MILITAR'
            Field = 'NUME_LIBR_MILITAR'
          end
          object SCLDBLabel38: TSCLDBLabel
            Left = 336
            Top = 22
            Width = 104
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
            FocusControl = edit_libr_fecha
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha Expedición:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'FECH_EXPE_LIBR_MILITAR'
            Field = 'FECH_EXPE_LIBR_MILITAR'
          end
          object edit_libr_numero: TdxDBEdit
            Left = 163
            Top = 22
            Width = 145
            TabOrder = 1
            DataField = 'NUME_LIBR_MILITAR'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
          object edit_libr_fecha: TdxDBDateEdit
            Left = 442
            Top = 22
            Width = 145
            TabOrder = 2
            OnExit = cambiarPagina
            DataField = 'FECH_EXPE_LIBR_MILITAR'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
        end
        object PCPFrame11: TPCPFrame
          Tag = 67
          Left = 0
          Top = 0
          Width = 798
          Height = 67
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
          Caption = 'Lugar y Fecha de Nacimiento'
          Titulo_Color = 16244694
          TipoFrame = tfGrupo
          object SCLDBLabel27: TSCLDBLabel
            Left = 64
            Top = 22
            Width = 97
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
            FocusControl = edit_fech_nacimiento
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha Nacimiento:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'FECH_NACIMIENTO'
            Field = 'FECH_NACIMIENTO'
          end
          object SCLDBLabel28: TSCLDBLabel
            Left = 343
            Top = 22
            Width = 97
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
            FocusControl = comb_naci_pais
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'País:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_PAIS_NACIMIENTO'
            Field = 'CONS_PAIS_NACIMIENTO'
          end
          object SCLDBLabel30: TSCLDBLabel
            Left = 343
            Top = 42
            Width = 97
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
            FocusControl = comb_naci_ciudad
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Ciudad:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_CIUD_NACIMIENTO'
            Field = 'CONS_CIUD_NACIMIENTO'
          end
          object SCLDBLabel29: TSCLDBLabel
            Left = 57
            Top = 42
            Width = 104
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
            FocusControl = comb_naci_departamento
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Departamento:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_DEPA_NACIMIENTO'
            Field = 'CONS_DEPA_NACIMIENTO'
          end
          object edit_fech_nacimiento: TdxDBDateEdit
            Left = 163
            Top = 22
            Width = 145
            TabOrder = 1
            DataField = 'FECH_NACIMIENTO'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object comb_naci_pais: TPCPLookUpComboEdit
            Left = 442
            Top = 22
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'CONS_PAIS_NACIMIENTO'
            DataSource = data_glo_pers_general
            KeyField = 'CONS_PAIS'
            ListField = 'NOMB_PAIS'
            ListSource = data_naci_pais
            TabOrder = 2
            DirectInput = False
          end
          object comb_naci_ciudad: TPCPLookUpComboEdit
            Left = 442
            Top = 42
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'CONS_CIUD_NACIMIENTO'
            DataSource = data_glo_pers_general
            KeyField = 'CONS_CIUDAD'
            ListField = 'NOMB_CIUDAD'
            ListSource = data_naci_ciudades
            TabOrder = 4
            OnChange = comb_naci_ciudadChange
            DirectInput = False
          end
          object SCLButton13: TTBXButtonSCL
            Left = 592
            Top = 21
            Width = 20
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 0
            Images = Imagenes_Botones_Pequenos
            SmartFocus = False
            TabOrder = 5
            TabStop = False
            Action = _fMDI.acti_n1_para_paises
          end
          object SCLButton12: TTBXButtonSCL
            Left = 592
            Top = 41
            Width = 20
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 0
            Images = Imagenes_Botones_Pequenos
            SmartFocus = False
            TabOrder = 6
            TabStop = False
            Action = _fMDI.Acti_n1_para_municipios
          end
          object comb_naci_departamento: TPCPLookUpComboEdit
            Left = 163
            Top = 42
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'CONS_DEPA_NACIMIENTO'
            DataSource = data_glo_pers_general
            KeyField = 'CONS_DEPARTAMENTO'
            ListField = 'NOMB_DEPARTAMENTO'
            ListSource = data_naci_departamentos
            TabOrder = 3
            DirectInput = False
          end
          object SCLButton14: TTBXButtonSCL
            Left = 312
            Top = 42
            Width = 20
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 0
            Images = Imagenes_Botones_Pequenos
            SmartFocus = False
            TabOrder = 7
            TabStop = False
            Action = _fMDI.Acti_n1_para_departamentos
          end
        end
        object PCPFrame6: TPCPFrame
          Tag = 85
          Left = 0
          Top = 240
          Width = 798
          Height = 85
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
          TabOrder = 4
          Caption = 'Carnet de conducción'
          Titulo_Color = 16244694
          Boton_Visible = False
          TipoFrame = tfGrupo
          object SCLDBLabel53: TSCLDBLabel
            Left = 48
            Top = 22
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
            FocusControl = dxDBEdit2
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Número:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'NUME_CONDUCCION'
            Field = 'NUME_CONDUCCION'
          end
          object SCLDBLabel54: TSCLDBLabel
            Left = 336
            Top = 22
            Width = 104
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
            FocusControl = dxDBDateEdit1
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha Expedición:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'FECH_EXPE_CONDUCCION'
            Field = 'FECH_EXPE_CONDUCCION'
          end
          object SCLDBLabel55: TSCLDBLabel
            Left = 48
            Top = 42
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
            FocusControl = dxDBEdit3
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvNone
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Lugar Expedición:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'LUGA_EXPE_CONDUCCION'
            Field = 'LUGA_EXPE_CONDUCCION'
          end
          object SCLDBLabel56: TSCLDBLabel
            Left = 336
            Top = 42
            Width = 104
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
            FocusControl = dxDBDateEdit2
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha Vencimiento:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'FECH_VENC_CONDUCCION'
            Field = 'FECH_VENC_CONDUCCION'
          end
          object SCLDBLabel57: TSCLDBLabel
            Left = 48
            Top = 62
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
            FocusControl = dxDBEdit4
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvNone
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Categoría:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CATE_CONDUCCION'
            Field = 'CATE_CONDUCCION'
          end
          object dxDBEdit2: TdxDBEdit
            Left = 163
            Top = 22
            Width = 145
            TabOrder = 1
            DataField = 'NUME_CONDUCCION'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
          object dxDBDateEdit1: TdxDBDateEdit
            Left = 442
            Top = 22
            Width = 145
            TabOrder = 2
            DataField = 'FECH_EXPE_CONDUCCION'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
          object dxDBEdit3: TdxDBEdit
            Left = 163
            Top = 42
            Width = 145
            TabOrder = 3
            DataField = 'LUGA_EXPE_CONDUCCION'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
          object dxDBDateEdit2: TdxDBDateEdit
            Left = 442
            Top = 42
            Width = 145
            TabOrder = 4
            DataField = 'FECH_VENC_CONDUCCION'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object dxDBEdit4: TdxDBEdit
            Left = 163
            Top = 62
            Width = 145
            TabOrder = 5
            DataField = 'CATE_CONDUCCION'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
        end
      end
      object page_direcciones: TSCLTabSheet
        Color = 16578290
        ImageIndex = 42
        Caption = 'Direcciones'
        object PCPFrame5: TPCPFrame
          Tag = 134
          Left = 0
          Top = 0
          Width = 798
          Height = 134
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
          Caption = 'Residencia'
          Titulo_Color = 16244694
          TipoFrame = tfGrupo
          object SCLDBLabel20: TSCLDBLabel
            Left = 64
            Top = 22
            Width = 97
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
            FocusControl = comb_vivi_pais
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'País:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_PAIS'
            Field = 'CONS_PAIS'
          end
          object SCLDBLabel21: TSCLDBLabel
            Left = 336
            Top = 22
            Width = 104
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
            FocusControl = comb_vivi_departamento
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Departamento:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_DEPARTAMENTO'
            Field = 'CONS_DEPARTAMENTO'
          end
          object SCLDBLabel22: TSCLDBLabel
            Left = 64
            Top = 42
            Width = 97
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
            FocusControl = comb_vivi_ciudad
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Ciudad:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_CIUDAD'
            Field = 'CONS_CIUDAD'
          end
          object SCLDBLabel23: TSCLDBLabel
            Left = 64
            Top = 62
            Width = 97
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
            FocusControl = comb_vivi_direccion
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Dirección:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'DIRECCION'
            Field = 'DIRECCION'
          end
          object SCLDBLabel24: TSCLDBLabel
            Left = 64
            Top = 90
            Width = 97
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
            FocusControl = edit_telefono1
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Tel. Residencia:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'TELE_RESIDENCIA'
            Field = 'TELE_RESIDENCIA'
          end
          object SCLDBLabel25: TSCLDBLabel
            Left = 336
            Top = 90
            Width = 104
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
            FocusControl = edit_telefono2
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Otro Teléfono:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'TELE_OTRO'
            Field = 'TELE_OTRO'
          end
          object SCLDBLabel26: TSCLDBLabel
            Left = 64
            Top = 110
            Width = 97
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
            FocusControl = edit_telefono3
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Teléfono Movil:'
            Transparent = True
            DataSource = data_glo_pers_general
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'TELE_MOVIL'
            Field = 'TELE_MOVIL'
          end
          object comb_vivi_pais: TPCPLookUpComboEdit
            Left = 163
            Top = 22
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'CONS_PAIS'
            DataSource = data_glo_pers_general
            KeyField = 'CONS_PAIS'
            ListField = 'NOMB_PAIS'
            ListSource = data_vivi_pais
            TabOrder = 1
            DirectInput = False
          end
          object SCLButton9: TTBXButtonSCL
            Left = 313
            Top = 22
            Width = 20
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 0
            Images = Imagenes_Botones_Pequenos
            SmartFocus = False
            TabOrder = 2
            TabStop = False
            Action = _fMDI.acti_n1_para_paises
          end
          object comb_vivi_departamento: TPCPLookUpComboEdit
            Left = 442
            Top = 22
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'CONS_DEPARTAMENTO'
            DataSource = data_glo_pers_general
            KeyField = 'CONS_DEPARTAMENTO'
            ListField = 'NOMB_DEPARTAMENTO'
            ListSource = data_vivi_departamento
            TabOrder = 3
            DirectInput = False
          end
          object SCLButton10: TTBXButtonSCL
            Left = 591
            Top = 22
            Width = 20
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 0
            Images = Imagenes_Botones_Pequenos
            SmartFocus = False
            TabOrder = 4
            TabStop = False
            Action = _fMDI.Acti_n1_para_departamentos
          end
          object comb_vivi_ciudad: TPCPLookUpComboEdit
            Left = 163
            Top = 42
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'CONS_CIUDAD'
            DataSource = data_glo_pers_general
            KeyField = 'CONS_CIUDAD'
            ListField = 'NOMB_CIUDAD'
            ListSource = data_vivi_ciudad
            TabOrder = 5
            DirectInput = False
          end
          object SCLButton11: TTBXButtonSCL
            Left = 313
            Top = 42
            Width = 20
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 0
            Images = Imagenes_Botones_Pequenos
            SmartFocus = False
            TabOrder = 6
            TabStop = False
            Action = _fMDI.Acti_n1_para_municipios
          end
          object comb_vivi_direccion: TdxDBEdit
            Left = 163
            Top = 62
            Width = 425
            TabOrder = 7
            DataField = 'DIRECCION'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
          object edit_telefono1: TdxDBEdit
            Left = 163
            Top = 90
            Width = 145
            TabOrder = 8
            DataField = 'TELE_RESIDENCIA'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
          object edit_telefono2: TdxDBEdit
            Left = 442
            Top = 90
            Width = 145
            TabOrder = 9
            DataField = 'TELE_OTRO'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
          object edit_telefono3: TdxDBEdit
            Left = 163
            Top = 110
            Width = 145
            TabOrder = 10
            OnExit = cambiarPagina
            DataField = 'TELE_MOVIL'
            DataSource = data_glo_pers_general
            StyleController = padr_estilo
          end
        end
      end
      object page_ubicacion: TSCLTabSheet
        Color = 16578290
        ImageIndex = 53
        Caption = 'Ubicación en la Empresa'
        object FUbicacion: TPCPFrame
          Tag = 269
          Left = 0
          Top = 0
          Width = 798
          Height = 269
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
          Caption = 'Localización'
          Titulo_Color = 16244694
          TipoFrame = tfGrupo
          inline fram_ubicacion: Tffra_maqu_ubicacion
            Left = 2
            Top = 21
            Width = 794
            Height = 129
            Align = alTop
            TabOrder = 1
            inherited pane_tipo_ubicacion: TPanel
              Width = 794
              inherited SCLDBLabel33: TSCLDBLabel
                Left = 79
                FontActive.Name = 'Tahoma'
                DataSource = data_glo_pers_movi_traslados
              end
              inherited comb_tipo_ubicacion: TPCPLookUpComboEdit
                Left = 161
                Width = 145
                DataSource = data_glo_pers_movi_traslados
                OnChange = fram_ubicacioncomb_tipo_ubicacionChange
              end
            end
            inherited pane_ubic_propia: TPanel
              Width = 794
              inherited SCLDBLabel34: TSCLDBLabel
                Left = 79
                FontActive.Name = 'Tahoma'
                DataSource = data_glo_pers_movi_traslados
              end
              inherited SCLDBLabel35: TSCLDBLabel
                Left = 336
                Width = 104
                FontActive.Name = 'Tahoma'
                DataSource = data_glo_pers_movi_traslados
              end
              inherited comb_ubic_empresa: TPCPLookUpComboEdit
                Left = 161
                Width = 145
                DataSource = data_glo_pers_movi_traslados
              end
              inherited comb_ubic_area: TPCPLookUpComboEdit
                Left = 442
                Width = 145
                DataSource = data_glo_pers_movi_traslados
              end
              inherited SCLButton6: TTBXButton
                Left = 311
                Images = Imagenes_Botones_Pequenos
                Visible = False
              end
              inherited SCLButton7: TTBXButton
                Left = 591
                Images = Imagenes_Botones_Pequenos
              end
            end
            inherited pane_ubic_externa: TPanel
              Width = 794
              inherited SCLDBLabel36: TSCLDBLabel
                Left = 79
                FontActive.Name = 'Tahoma'
                DataSource = data_glo_pers_movi_traslados
              end
              inherited SCLDBLabel37: TSCLDBLabel
                Left = 79
                FontActive.Name = 'Tahoma'
                DataSource = data_glo_pers_movi_traslados
              end
              inherited SCLDBLabel1: TSCLDBLabel
                Left = 336
                Width = 104
                FontActive.Name = 'Tahoma'
                DataSource = data_glo_pers_movi_traslados
              end
              inherited comb_ubic_planta: TPCPLookUpComboEdit
                Left = 161
                Width = 145
                DataSource = data_glo_pers_movi_traslados
              end
              inherited comb_ubic_seccion: TPCPLookUpComboEdit
                Left = 161
                Width = 145
                DataSource = data_glo_pers_movi_traslados
              end
              inherited SCLButton8: TTBXButton
                Left = 311
                Images = Imagenes_Botones_Pequenos
                Visible = False
              end
              inherited SCLButton9: TTBXButton
                Left = 308
                Top = 20
                Images = Imagenes_Botones_Pequenos
                Visible = False
              end
              inherited Comb_Ubic_Linea: TPCPLookUpComboEdit
                Left = 442
                Width = 145
                DataSource = data_glo_pers_movi_traslados
              end
              inherited SCLButton1: TTBXButton
                Left = 591
                Images = Imagenes_Botones_Pequenos
              end
            end
            inherited pane_ubic_bodega: TPanel
              Width = 794
              inherited SCLDBLabel39: TSCLDBLabel
                Left = 79
                FontActive.Name = 'Tahoma'
                DataSource = data_glo_pers_movi_traslados
              end
              inherited comb_ubic_bodega: TPCPLookUpComboEdit
                Left = 161
                Width = 145
                DataSource = data_glo_pers_movi_traslados
              end
              inherited SCLButton10: TTBXButton
                Left = 311
                Images = Imagenes_Botones_Pequenos
              end
            end
            inherited pane_ubic_otra: TPanel
              Width = 794
              Height = 21
              inherited SCLDBLabel38: TSCLDBLabel
                Left = 79
                Top = 0
                FontActive.Name = 'Tahoma'
                DataSource = data_glo_pers_movi_traslados
              end
              inherited edit_ubic_otra_ubicacion: TdxDBEdit
                Left = 161
                Top = 0
                Width = 425
                DataSource = data_glo_pers_movi_traslados
                StyleController = padr_estilo
              end
            end
            inherited quer_empresas: TQuery
              Top = 18
            end
          end
          object Panel1: TPCPFrame
            Tag = 111
            Left = 2
            Top = 150
            Width = 794
            Height = 111
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
            TabOrder = 2
            Caption = 'Otros datos'
            Titulo_Color = 16244694
            TipoFrame = tfGrupo
            object SCLDBLabel11: TSCLDBLabel
              Left = 62
              Top = 25
              Width = 97
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
              FocusControl = comb_turno
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Turno:'
              Transparent = True
              DataSource = data_glo_pers_movi_traslados
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CONS_TURNO'
              Field = 'CONS_TURNO'
            end
            object SCLDBLabel16: TSCLDBLabel
              Left = 62
              Top = 45
              Width = 97
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
              FocusControl = comb_cargo
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Cargo:'
              Transparent = True
              DataSource = data_glo_pers_movi_traslados
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CONS_PERS_CARGO'
              Field = 'CONS_PERS_CARGO'
            end
            object SCLDBLabel44: TSCLDBLabel
              Left = 62
              Top = 65
              Width = 97
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
              FocusControl = comb_cent_costos
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Centro de costos:'
              Transparent = True
              DataSource = data_glo_pers_movi_traslados
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CONS_PERS_CENT_COSTO'
              Field = 'CONS_PERS_CENT_COSTO'
            end
            object SCLDBLabel45: TSCLDBLabel
              Left = 32
              Top = 85
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
              FocusControl = comb_subc_costos
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Sub - Centro de costos'
              Transparent = True
              DataSource = data_glo_pers_movi_traslados
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CONS_COST_GRUPO'
              Field = 'CONS_COST_GRUPO'
            end
            object comb_turno: TPCPLookUpComboEdit
              Left = 161
              Top = 25
              Width = 145
              Height = 21
              DropDownCount = 8
              DataField = 'CONS_TURNO'
              DataSource = data_glo_pers_movi_traslados
              KeyField = 'CONS_TURNO'
              ListField = 'CODI_TURNO'
              ListSource = data_turnos
              TabOrder = 0
              DirectInput = False
            end
            object SCLButton1: TTBXButtonSCL
              Left = 311
              Top = 27
              Width = 20
              Height = 20
              AllowAllUnchecked = True
              BorderSize = 2
              ButtonStyle = bsFlat
              ImageIndex = 0
              Images = Imagenes_Botones_Pequenos
              SmartFocus = False
              TabOrder = 1
              TabStop = False
              Action = _fMDI.Acti_n1_para_turnos
            end
            object comb_cargo: TPCPLookUpComboEdit
              Left = 161
              Top = 45
              Width = 145
              Height = 21
              DropDownCount = 8
              DataField = 'CONS_PERS_CARGO'
              DataSource = data_glo_pers_movi_traslados
              KeyField = 'CONS_PERS_CARGO'
              ListField = 'NOMB_PERS_CARGO'
              ListSource = data_cargos
              TabOrder = 2
              DirectInput = False
            end
            object SCLButton5: TTBXButtonSCL
              Left = 311
              Top = 47
              Width = 20
              Height = 20
              AllowAllUnchecked = True
              BorderSize = 2
              ButtonStyle = bsFlat
              ImageIndex = 0
              Images = Imagenes_Botones_Pequenos
              SmartFocus = False
              TabOrder = 3
              TabStop = False
              Action = _fMDI.Acti_n1_para_Cargos
            end
            object comb_cent_costos: TPCPLookUpComboEdit
              Left = 161
              Top = 65
              Width = 145
              Height = 21
              DropDownCount = 8
              DataField = 'CONS_PERS_CENT_COSTO'
              DataSource = data_glo_pers_movi_traslados
              KeyField = 'CONS_PERS_CENT_COSTO'
              ListField = 'NOMB_PERS_CENT_COSTO'
              ListSource = data_cent_costos
              TabOrder = 4
              DirectInput = False
            end
            object SCLButton4: TTBXButtonSCL
              Left = 311
              Top = 67
              Width = 20
              Height = 20
              AllowAllUnchecked = True
              BorderSize = 2
              ButtonStyle = bsFlat
              ImageIndex = 0
              Images = Imagenes_Botones_Pequenos
              SmartFocus = False
              TabOrder = 5
              TabStop = False
              Action = _fMDI.Acti_n1_para_Centro_Costos
            end
            object comb_subc_costos: TPCPLookUpComboEdit
              Left = 161
              Top = 85
              Width = 145
              Height = 21
              DropDownCount = 8
              DataField = 'CONS_COST_GRUPO'
              DataSource = data_glo_pers_movi_traslados
              KeyField = 'CONS_COST_GRUPO'
              ListField = 'NOMB_COST_GRUPO'
              ListSource = data_subc_costos
              TabOrder = 6
              OnExit = cambiarPagina
              DirectInput = False
            end
          end
        end
      end
      object page_confidenciales: TSCLTabSheet
        Color = 16578290
        ImageIndex = 52
        Caption = 'Datos Confidenciales'
        object labe_status: TDBStatusLabel
          Left = 24
          Top = 240
          Width = 66
          Height = 13
          DataSource = data_vivi_pais
        end
        object FContrato: TPCPFrame
          Tag = 106
          Left = 0
          Top = 0
          Width = 798
          Height = 106
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
          Caption = 'Contrato'
          Titulo_Color = 16244694
          TipoFrame = tfGrupo
          object SCLDBLabel7: TSCLDBLabel
            Left = 64
            Top = 22
            Width = 97
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
            FocusControl = comb_tipo_contrato
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Tipo Contrato:'
            Transparent = True
            DataSource = data_glo_pers_confidenciales
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_PERS_TIPO_CONTRATO'
            Field = 'CONS_PERS_TIPO_CONTRATO'
          end
          object SCLDBLabel8: TSCLDBLabel
            Left = 64
            Top = 42
            Width = 97
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
            FocusControl = dxEdit1
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Nro. de Contrato:'
            Transparent = True
            DataSource = data_glo_pers_confidenciales
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'NUME_CONTRATO'
            Field = 'NUME_CONTRATO'
          end
          object SCLDBLabel13: TSCLDBLabel
            Left = 17
            Top = 62
            Width = 144
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
            FocusControl = dxDBEdit9
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Aviso Vencimiento Contrato:'
            Transparent = True
            DataSource = data_glo_pers_confidenciales
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'DIAS_VENC_CONTRATO'
            Field = 'DIAS_VENC_CONTRATO'
          end
          object SCLDBLabel14: TSCLDBLabel
            Left = 250
            Top = 62
            Width = 59
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
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Días antes'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'NUME_CONTRATO'
            Field = 'NUME_CONTRATO'
          end
          object comb_tipo_contrato: TPCPLookUpComboEdit
            Left = 163
            Top = 22
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'CONS_PERS_TIPO_CONTRATO'
            DataSource = data_glo_pers_confidenciales
            KeyField = 'CONS_PERS_TIPO_CONTRATO'
            ListField = 'NOMB_PERS_TIPO_CONTRATO'
            ListSource = data_Tipo_Contrato
            TabOrder = 1
            OnChange = comb_tipo_contratoChange
            DirectInput = False
          end
          object dxEdit1: TdxDBEdit
            Left = 163
            Top = 42
            Width = 145
            TabOrder = 2
            DataField = 'NUME_CONTRATO'
            DataSource = data_glo_pers_confidenciales
            StyleController = padr_estilo
          end
          object SCLButton15: TTBXButtonSCL
            Left = 313
            Top = 22
            Width = 20
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 0
            Images = Imagenes_Botones_Pequenos
            SmartFocus = False
            TabOrder = 3
            TabStop = False
            Action = _fMDI.Acti_n1_para_tipo_contrato
          end
          object dxDBEdit9: TdxDBEdit
            Left = 163
            Top = 62
            Width = 81
            TabOrder = 4
            DataField = 'DIAS_VENC_CONTRATO'
            DataSource = data_glo_pers_confidenciales
            StyleController = padr_estilo
          end
          object dxDBCheckEdit1: TdxDBCheckEdit
            Left = 163
            Top = 82
            Width = 145
            TabOrder = 5
            Alignment = taLeftJustify
            Caption = 'Aplica Incentivo'
            DataField = 'APLI_INCENTIVO'
            DataSource = data_glo_pers_confidenciales
            StyleController = padr_estilo
            ValueChecked = '1'
            ValueGrayed = '-1'
            ValueUnchecked = '-1'
            StoredValues = 1
          end
          object pane_dura_contrato: TPanel
            Left = 344
            Top = 21
            Width = 265
            Height = 25
            TabOrder = 6
            Visible = False
            object SCLDBLabel15: TSCLDBLabel
              Left = 48
              Top = 2
              Width = 68
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
              FocusControl = dxDBEdit10
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Duración:'
              Transparent = True
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
            end
            object dxDBEdit10: TdxDBEdit
              Tag = -1
              Left = 118
              Top = 2
              Width = 31
              Enabled = False
              TabOrder = 0
              TabStop = False
              DataField = 'DURACION'
              DataSource = data_Tipo_Contrato
              ReadOnly = True
              StyleController = padr_estilo
              StoredValues = 64
            end
            object dxDBEdit11: TdxDBEdit
              Tag = -1
              Left = 148
              Top = 2
              Width = 106
              Enabled = False
              TabOrder = 1
              TabStop = False
              DataField = 'NOMB_UNID_MEDI_TIEMPO'
              DataSource = data_Tipo_Contrato
              ReadOnly = True
              StyleController = padr_estilo
              StoredValues = 64
            end
          end
        end
        object FSalario: TPCPFrame
          Tag = 84
          Left = 0
          Top = 106
          Width = 798
          Height = 84
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
          Caption = 'Salario'
          Titulo_Color = 16244694
          TipoFrame = tfGrupo
          object SCLDBLabel9: TSCLDBLabel
            Left = 64
            Top = 22
            Width = 97
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
            FocusControl = comb_nive_salarial
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Nivel Salarial:'
            Transparent = True
            DataSource = data_glo_pers_confidenciales
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_PERS_NIVE_SALARIAL'
            Field = 'CONS_PERS_NIVE_SALARIAL'
          end
          object SCLDBLabel10: TSCLDBLabel
            Left = 64
            Top = 62
            Width = 97
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
            Caption = 'Período de Pago:'
            Transparent = True
            DataSource = data_glo_pers_confidenciales
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'CONS_PERI_PAGO'
            Field = 'CONS_PERI_PAGO'
          end
          object SCLDBLabel12: TSCLDBLabel
            Left = 64
            Top = 42
            Width = 97
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
            FocusControl = edit_salario
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Salario:'
            Transparent = True
            DataSource = data_glo_pers_confidenciales
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'VALO_SALARIO'
            Field = 'VALO_SALARIO'
          end
          object SCLDBLabel50: TSCLDBLabel
            Left = 248
            Top = 22
            Width = 112
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
            FocusControl = comb_nive_sala_valores
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Rango:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object PCPLookUpComboEdit4: TPCPLookUpComboEdit
            Left = 163
            Top = 62
            Width = 145
            Height = 21
            DropDownCount = 8
            DataField = 'CONS_PERI_PAGO'
            DataSource = data_glo_pers_confidenciales
            KeyField = 'CONS_PERI_PAGO'
            ListField = 'NOMB_PERI_PAGO'
            ListSource = data_peri_pago
            TabOrder = 4
            DirectInput = False
          end
          object SCLButton16: TTBXButtonSCL
            Left = 558
            Top = 22
            Width = 20
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            ImageIndex = 0
            Images = Imagenes_Botones_Pequenos
            SmartFocus = False
            TabOrder = 5
            TabStop = False
            Action = _fMDI.Acti_n1_para_nive_salarial
          end
          object edit_salario: TdxDBCurrencyEdit
            Left = 163
            Top = 42
            Width = 145
            TabOrder = 3
            OnEnter = doCambiarColorNivelSalarial
            OnExit = doCambiarColorNivelSalarial
            Alignment = taRightJustify
            DataField = 'VALO_SALARIO'
            DataSource = data_glo_pers_confidenciales
            StyleController = padr_estilo
            DisplayFormat = '$ ,0'
            Nullable = False
            StoredValues = 1
          end
          object comb_nive_salarial: TPCPLookUpComboEdit
            Left = 163
            Top = 22
            Width = 145
            Height = 21
            DropDownCount = 8
            DisplayAllFields = True
            Ctl3D = True
            DataField = 'CONS_PERS_NIVE_SALARIAL'
            DataSource = data_glo_pers_confidenciales
            KeyField = 'cons_pers_nive_salarial'
            ListField = 'nomb_pers_nive_salarial'
            ListSource = data_nive_salarial
            ParentCtl3D = False
            TabOrder = 0
            OnChange = comb_nive_sala_valoresChange
            DirectInput = False
          end
          object comb_nive_sala_valores: TPCPLookUpComboEdit
            Left = 362
            Top = 22
            Width = 191
            Height = 21
            DropDownCount = 8
            DisplayAllFields = True
            Ctl3D = True
            DataField = 'CONS_PERS_NIVE_SALARIAL'
            DataSource = data_glo_pers_confidenciales
            KeyField = 'cons_pers_nive_salarial'
            ListField = 'valo_minimo;valo_maximo'
            ListSource = data_nive_salarial
            ParentCtl3D = False
            TabOrder = 1
            OnChange = comb_nive_sala_valoresChange
            DirectInput = False
          end
        end
        object FAuxilios: TPCPFrame
          Tag = 66
          Left = 0
          Top = 190
          Width = 798
          Height = 66
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
          TabOrder = 2
          Caption = 'Auxilios'
          Titulo_Color = 16244694
          TipoFrame = tfGrupo
          object SCLDBLabel18: TSCLDBLabel
            Left = 64
            Top = 22
            Width = 97
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
            FocusControl = dxCurrencyEdit1
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Transporte:'
            Transparent = True
            DataSource = data_glo_pers_confidenciales
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'AUXI_TRANSPORTE'
            Field = 'AUXI_TRANSPORTE'
          end
          object SCLDBLabel19: TSCLDBLabel
            Left = 64
            Top = 42
            Width = 97
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
            FocusControl = dxCurrencyEdit2
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Salarial:'
            Transparent = True
            DataSource = data_glo_pers_confidenciales
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'AUXI_SALARIAL'
            Field = 'AUXI_SALARIAL'
          end
          object dxCurrencyEdit2: TdxDBCurrencyEdit
            Left = 163
            Top = 42
            Width = 145
            TabOrder = 2
            OnExit = cambiarPagina
            Alignment = taRightJustify
            DataField = 'AUXI_SALARIAL'
            DataSource = data_glo_pers_confidenciales
            StyleController = padr_estilo
            Nullable = False
            StoredValues = 1
          end
          object dxCurrencyEdit1: TdxDBCurrencyEdit
            Left = 163
            Top = 22
            Width = 145
            TabOrder = 1
            Alignment = taRightJustify
            DataField = 'AUXI_TRANSPORTE'
            DataSource = data_glo_pers_confidenciales
            StyleController = padr_estilo
            Nullable = False
            StoredValues = 1
          end
        end
      end
      object page_form_pago: TSCLTabSheet
        Color = 16578290
        ImageIndex = 98
        Caption = 'Forma de pago'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 798
          Height = 285
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object SCLDBLabel47: TSCLDBLabel
            Left = 3
            Top = 27
            Width = 177
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
            Caption = 'Forma de pago:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel48: TSCLDBLabel
            Left = 3
            Top = 7
            Width = 177
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
            FocusControl = edit_valo_hora_mini_garantizado
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Valor hora mínimo garantizado:'
            Transparent = True
            DataSource = data_glo_pers_form_pago
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'valo_hora_mini_garantizado'
            Field = 'valo_hora_mini_garantizado'
          end
          object DBText1: TDBText
            Left = 253
            Top = 12
            Width = 41
            Height = 13
            AutoSize = True
            DataField = 'SIMB_MONEDA'
            DataSource = _fMDI.data_configuracion
          end
          object SCLShape1: TSCLShape
            Left = 182
            Top = 27
            Width = 571
            Height = 255
            Brush.Style = bsClear
            Pen.Color = 14467501
          end
          object edit_valo_hora_mini_garantizado: TdxDBCurrencyEdit
            Left = 182
            Top = 7
            Width = 65
            TabOrder = 0
            Alignment = taRightJustify
            DataField = 'valo_hora_mini_garantizado'
            DataSource = data_glo_pers_form_pago
            StyleController = padr_estilo
            DisplayFormat = ',0.00'
            Nullable = False
            StoredValues = 1
          end
          object radi_form_pago: TJvDBRadioPanel
            Left = 183
            Top = 28
            Width = 569
            Height = 253
            BevelOuter = bvNone
            Color = clWindow
            Columns = 2
            DataField = 'cons_sis_form_pago'
            DataSource = data_glo_pers_form_pago
            TabOrder = 1
            TabStop = True
            OnChange = radi_form_pagoChange
            OnExit = cambiarPagina
          end
        end
        object pane_valo_hora_produccion: TPanel
          Left = 0
          Top = 285
          Width = 798
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          object SCLDBLabel46: TSCLDBLabel
            Left = 3
            Top = 4
            Width = 177
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
            FocusControl = edit_valo_hora_produccion
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Valor hora producción:'
            Transparent = True
            DataSource = data_glo_pers_form_pago
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
            DataField = 'valo_hora_produccion'
            Field = 'valo_hora_produccion'
          end
          object DBText2: TDBText
            Left = 253
            Top = 9
            Width = 41
            Height = 13
            AutoSize = True
            DataField = 'SIMB_MONEDA'
            DataSource = _fMDI.data_configuracion
          end
          object edit_valo_hora_produccion: TdxDBCurrencyEdit
            Left = 182
            Top = 4
            Width = 65
            TabOrder = 0
            OnExit = cambiarPagina
            Alignment = taRightJustify
            DataField = 'valo_hora_produccion'
            DataSource = data_glo_pers_form_pago
            StyleController = padr_estilo
            DisplayFormat = ',0.00'
            Nullable = False
            StoredValues = 1
          end
        end
        object pane_codigo: TPanel
          Left = 0
          Top = 311
          Width = 798
          Height = 30
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          Visible = False
          object SCLDBLabel49: TSCLDBLabel
            Left = 3
            Top = 4
            Width = 177
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
            FocusControl = comb_codigo
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Código:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object comb_codigo: TPCPLookUpComboEdit
            Left = 182
            Top = 4
            Width = 323
            Height = 21
            DropDownCount = 8
            DisplayAllFields = True
            Ctl3D = True
            DataField = 'para_1'
            DataSource = data_glo_pers_form_pago
            KeyField = 'codigo'
            ListField = 'codigo;nombre'
            ListSource = data_codigo
            ParentCtl3D = False
            TabOrder = 0
            OnExit = cambiarPagina
            DirectInput = False
          end
        end
      end
      object page_sistema: TSCLTabSheet
        Color = 16578290
        ImageIndex = 106
        Caption = 'Sistema'
        object SCLDBLabel51: TSCLDBLabel
          Left = 58
          Top = 8
          Width = 100
          Height = 21
          Alive = False
          ColorActive = 16578290
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
          Caption = 'Nombre de usuario:'
          Transparent = True
          Visible = False
          DataSource = data_Glo_pers_sistema
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'USUA_PERSONAL'
          Field = 'USUA_PERSONAL'
        end
        object SCLDBLabel52: TSCLDBLabel
          Left = 50
          Top = 39
          Width = 108
          Height = 21
          Alive = False
          ColorActive = 16578290
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = [fsBold]
          FocusOffset = 2
          Position = wlpLeft
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Módulo personal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object dxDBEdit1: TdxDBEdit
          Left = 161
          Top = 8
          Width = 137
          TabOrder = 0
          Visible = False
          CharCase = ecUpperCase
          DataField = 'USUA_PERSONAL'
          DataSource = data_Glo_pers_sistema
        end
        object dxDBCheckEdit2: TdxDBCheckEdit
          Left = 161
          Top = 38
          Width = 137
          TabOrder = 1
          Caption = 'Solicitar movimientos'
          DataField = 'PERS_MOVI_SOLICITAR'
          DataSource = data_Glo_pers_sistema
          StyleController = padr_estilo
          ValueChecked = '1'
          ValueGrayed = '-1'
          ValueUnchecked = '-1'
        end
        object dxDBCheckEdit3: TdxDBCheckEdit
          Left = 305
          Top = 38
          Width = 137
          TabOrder = 2
          OnExit = cambiarPagina
          Caption = 'Aprobar movimientos'
          DataField = 'PERS_MOVI_APROBAR'
          DataSource = data_Glo_pers_sistema
          StyleController = padr_estilo
          ValueChecked = '1'
          ValueGrayed = '-1'
          ValueUnchecked = '-1'
        end
        object dxDBCheckEdit4: TdxDBCheckEdit
          Left = 449
          Top = 38
          Width = 192
          TabOrder = 3
          OnExit = cambiarPagina
          Caption = 'Avisar vencimiento de contratos'
          DataField = 'PERS_AVIS_VENC_CONTRATOS'
          DataSource = data_Glo_pers_sistema
          StyleController = padr_estilo
          ValueChecked = '1'
          ValueGrayed = '-1'
          ValueUnchecked = '-1'
        end
      end
      object page_familiares: TSCLTabSheet
        Tag = -1
        Color = 16578290
        ImageIndex = 54
        Caption = 'Datos Familiares'
        object TBXDock1: TTBXDock
          Left = 0
          Top = 0
          Width = 798
          Height = 26
          object TBXToolbar1: TTBXToolbar
            Left = 0
            Top = 0
            BorderStyle = bsNone
            Caption = 'TBXToolbar1'
            Images = _fMDI.imagenesPCP
            Stretch = True
            TabOrder = 0
            object TBXItem3: TTBXItem
              Action = Acti_Nuev_Familiar
              DisplayMode = nbdmImageAndText
              ImageIndex = 0
              Images = _fMDI.imagenesPCP
              InheritOptions = False
            end
            object TBXItem2: TTBXItem
              Action = Acti_Modi_Familiar
              DisplayMode = nbdmImageAndText
              ImageIndex = 1
              Images = _fMDI.imagenesPCP
              InheritOptions = False
            end
            object TBXItem1: TTBXItem
              Action = Acti_Elim_Familiar
              DisplayMode = nbdmImageAndText
              ImageIndex = 2
              Images = _fMDI.imagenesPCP
              InheritOptions = False
            end
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 26
          Width = 798
          Height = 443
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 1
          object DBFamiliares: TdxDBGrid
            Tag = -1
            Left = 4
            Top = 4
            Width = 790
            Height = 435
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CONS_PERSONAL'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 0
            OnDblClick = DBFamiliaresDblClick
            DataSource = data_glo_pers_familiares
            Filter.Criteria = {00000000}
            HideSelection = True
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            object DBFamiliaresNUME_DOCUMENTO: TdxDBGridMaskColumn
              Width = 107
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NUME_DOCUMENTO'
            end
            object DBFamiliaresPRIM_APELLIDO: TdxDBGridMaskColumn
              Width = 110
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PRIM_APELLIDO'
            end
            object DBFamiliaresSEGU_APELLIDO: TdxDBGridMaskColumn
              Width = 98
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SEGU_APELLIDO'
            end
            object DBFamiliaresNOMBRES: TdxDBGridMaskColumn
              Width = 134
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMBRES'
            end
            object DBFamiliaresNOMB_PARENTESCO: TdxDBGridColumn
              Width = 128
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_PARENTESCO'
            end
            object DBFamiliaresTELE_RESIDENCIA: TdxDBGridMaskColumn
              Width = 116
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TELE_RESIDENCIA'
            end
            object DBFamiliaresTELE_EMPRESA: TdxDBGridMaskColumn
              Width = 114
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TELE_EMPRESA'
            end
            object DBFamiliaresTELE_OTRO: TdxDBGridMaskColumn
              Width = 103
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TELE_OTRO'
            end
            object DBFamiliaresTELE_MOVIL: TdxDBGridMaskColumn
              Width = 114
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TELE_MOVIL'
            end
            object DBFamiliaresCORR_ELECTRONICO: TdxDBGridMaskColumn
              Width = 245
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CORR_ELECTRONICO'
            end
            object DBFamiliaresOCUPACION: TdxDBGridMaskColumn
              Width = 364
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OCUPACION'
            end
          end
        end
      end
    end
  end
  inline pane_nombre: Tffra_mens_atencion [9]
    Width = 804
    Height = 24
    Font.Style = [fsBold]
    TabOrder = 7
    inherited padr_shap_top: TShape
      Width = 804
    end
    inherited padr_shap_bottom: TShape
      Top = 23
      Width = 804
    end
    inherited padr_shap_right: TShape
      Left = 803
      Height = 22
    end
    inherited padr_shap_left: TShape
      Height = 22
    end
    inherited fram_label: TAdvPanel
      Width = 802
      Height = 22
      FullHeight = 15
      inherited data_label: TDBText
        Left = 7
        Top = 5
        Width = 60
        DataField = 'NOMB_COMPLETO'
        DataSource = data_glo_personal
        Font.Style = [fsBold]
        ParentFont = False
        Visible = True
      end
    end
  end
  inherited padr_estilo: TdxEditStyleController [10]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [11]
    Left = 754
    Top = 10
  end
  inherited padr_esti_panel: TAdvPanelStyler [12]
    Left = 562
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [13]
    Left = 714
  end
  inherited imag_pequenas: TImageList [14]
    Left = 587
  end
  object Fami_Acciones: TActionList [15]
    Images = padr_imag_tem1_colo
    Left = 890
    Top = 474
    object Acti_Nuev_Familiar: TAction
      Category = 'DataSet'
      Caption = 'Nuevo Familiar'
      OnExecute = Acti_Nuev_FamiliarExecute
    end
    object Acti_Modi_Familiar: TAction
      Category = 'DataSet'
      Caption = 'Modificar Familiar'
      OnExecute = Acti_Modi_FamiliarExecute
    end
    object Acti_Elim_Familiar: TAction
      Category = 'DataSet'
      Caption = 'Eliminar Familiar'
      OnExecute = Acti_Elim_FamiliarExecute
    end
  end
  object DSQTipo_Movimiento: TDataSource [16]
    AutoEdit = False
    DataSet = QTipo_Movimiento
    Left = 814
    Top = 264
  end
  object data_parentescos: TDataSource [17]
    AutoEdit = False
    DataSet = quer_parentescos
    Left = 245
    Top = 431
  end
  object data_esta_civil: TDataSource [18]
    AutoEdit = False
    DataSet = quer_esta_civil
    Left = 710
    Top = 324
  end
  object data_sexos: TDataSource [19]
    AutoEdit = False
    DataSet = quer_sexos
    Left = 710
    Top = 296
  end
  object data_vivi_pais: TDataSource [20]
    AutoEdit = False
    DataSet = quer_vivi_pais
    Left = 254
    Top = 155
  end
  object data_vivi_departamento: TDataSource [21]
    AutoEdit = False
    DataSet = quer_vivi_departamento
    Left = 254
    Top = 183
  end
  object data_vivi_ciudad: TDataSource [22]
    AutoEdit = False
    DataSet = quer_vivi_ciudad
    Left = 254
    Top = 211
  end
  object DSQEmpresas: TDataSource [23]
    AutoEdit = False
    DataSet = QEmpresas
    Left = 814
    Top = 412
  end
  object data_turnos: TDataSource [24]
    AutoEdit = False
    DataSet = quer_turnos
    Left = 254
    Top = 248
  end
  object data_Tipo_Contrato: TDataSource [25]
    AutoEdit = False
    DataSet = quer_tipo_contrato
    Left = 374
    Top = 292
  end
  object data_cargos: TDataSource [26]
    AutoEdit = False
    DataSet = quer_cargos
    Left = 254
    Top = 276
  end
  object data_nive_salarial: TDataSource [27]
    AutoEdit = False
    DataSet = quer_nive_salarial
    Left = 374
    Top = 320
  end
  object data_peri_pago: TDataSource [28]
    AutoEdit = False
    DataSet = quer_peri_pago
    Left = 374
    Top = 348
  end
  object QConsecutivo_Movimiento: TQuery [29]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT SECUENCIA'
      
        'FROM FUN_GLO_GENE_SECUENCIA("GLO_PERS_MOVIMIENTOS","CONS_PERS_MO' +
        'VIMIENTO")')
    Left = 154
    Top = 2
  end
  object data_tipo_docu_ingreso: TDataSource [30]
    AutoEdit = False
    DataSet = quer_tipo_docu_ingreso
    Left = 710
    Top = 268
  end
  object TFamiliares_I: TTable [31]
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PERSONAL'
    MasterFields = 'CONS_PERSONAL'
    TableName = 'GLO_PERS_FAMILIAR'
    Left = 850
    Top = 264
    object TFamiliares_ICONS_PERS_FAMILIAR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PERS_FAMILIAR'
      Required = True
    end
    object TFamiliares_ICONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
    end
    object TFamiliares_ICONS_PERS_TIPO_DOCUMENTO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_DOCUMENTO'
    end
    object TFamiliares_INUME_DOCUMENTO: TStringField
      FieldName = 'NUME_DOCUMENTO'
    end
    object TFamiliares_IPRIM_APELLIDO: TStringField
      FieldName = 'PRIM_APELLIDO'
      Required = True
      Size = 30
    end
    object TFamiliares_ISEGU_APELLIDO: TStringField
      FieldName = 'SEGU_APELLIDO'
      Required = True
      Size = 30
    end
    object TFamiliares_INOMBRES: TStringField
      FieldName = 'NOMBRES'
      Required = True
      Size = 40
    end
    object TFamiliares_ICONS_SEXO: TIntegerField
      FieldName = 'CONS_SEXO'
      Required = True
    end
    object TFamiliares_ICONS_PARENTESCO: TIntegerField
      FieldName = 'CONS_PARENTESCO'
      Required = True
    end
    object TFamiliares_IFECH_NACIMIENTO: TDateTimeField
      FieldName = 'FECH_NACIMIENTO'
    end
    object TFamiliares_ICONS_PAIS: TIntegerField
      FieldName = 'CONS_PAIS'
    end
    object TFamiliares_ICONS_DEPARTAMENTO: TIntegerField
      FieldName = 'CONS_DEPARTAMENTO'
    end
    object TFamiliares_ICONS_CIUDAD: TIntegerField
      FieldName = 'CONS_CIUDAD'
    end
    object TFamiliares_IDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 240
    end
    object TFamiliares_ITELE_RESIDENCIA: TStringField
      FieldName = 'TELE_RESIDENCIA'
    end
    object TFamiliares_ITELE_OTRO: TStringField
      FieldName = 'TELE_OTRO'
    end
    object TFamiliares_ITELE_MOVIL: TStringField
      FieldName = 'TELE_MOVIL'
    end
    object TFamiliares_IOCUPACION: TStringField
      FieldName = 'OCUPACION'
      Size = 60
    end
    object TFamiliares_INOMB_EMPRESA: TStringField
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object TFamiliares_IDIRE_EMPRESA: TStringField
      FieldName = 'DIRE_EMPRESA'
      Size = 240
    end
    object TFamiliares_ITELE_EMPRESA: TStringField
      FieldName = 'TELE_EMPRESA'
    end
    object TFamiliares_ICORR_ELECTRONICO: TStringField
      FieldName = 'CORR_ELECTRONICO'
      Size = 120
    end
  end
  object DSFamiliares_I: TDataSource [32]
    AutoEdit = False
    DataSet = TFamiliares_I
    Left = 882
    Top = 264
  end
  object quer_sexos: TQuery [33]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_SEXO, NOMB_SEXO'
      'FROM VIS_SIS_SEXO_PERSONAL'
      'ORDER BY NOMB_SEXO')
    Left = 682
    Top = 296
  end
  object quer_esta_civil: TQuery [34]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_ESTA_CIVIL, NOMB_ESTA_CIVIL'
      'FROM SIS_ESTA_CIVIL'
      'ORDER BY NOMB_ESTA_CIVIL')
    Left = 682
    Top = 324
  end
  object QTipo_Movimiento: TQuery [35]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERS_TIPO_DOCUMENTO, NOMB_PERS_TIPO_DOCUMENTO'
      'FROM SIS_PERS_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_TIPO_DOCUMENTO')
    Left = 786
    Top = 264
  end
  object quer_parentescos: TQuery [36]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PARENTESCO, NOMB_PARENTESCO'
      'FROM SIS_PARENTESCOS'
      'ORDER BY NOMB_PARENTESCO')
    Left = 217
    Top = 431
  end
  object quer_vivi_pais: TQuery [37]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PAIS, NOMB_PAIS'
      'FROM GLO_PAISES'
      'ORDER BY NOMB_PAIS')
    Left = 226
    Top = 155
  end
  object quer_vivi_departamento: TQuery [38]
    DatabaseName = 'data_base_pcp'
    DataSource = data_vivi_pais
    SQL.Strings = (
      'SELECT CONS_PAIS, CONS_DEPARTAMENTO, NOMB_DEPARTAMENTO'
      'FROM GLO_DEPARTAMENTOS'
      'WHERE CONS_PAIS = :CONS_PAIS'
      'ORDER BY NOMB_DEPARTAMENTO')
    Left = 226
    Top = 183
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PAIS'
        ParamType = ptUnknown
      end>
  end
  object quer_vivi_ciudad: TQuery [39]
    DatabaseName = 'data_base_pcp'
    DataSource = data_vivi_departamento
    SQL.Strings = (
      'SELECT CONS_CIUDAD, NOMB_CIUDAD'
      'FROM GLO_CIUDADES'
      'WHERE CONS_DEPARTAMENTO = :CONS_DEPARTAMENTO'
      'ORDER BY NOMB_CIUDAD')
    Left = 226
    Top = 211
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_DEPARTAMENTO'
        ParamType = ptUnknown
      end>
  end
  object QEmpresas: TQuery [40]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_EMPRESA, NOMB_EMPRESA'
      'FROM GLO_EMPRESAS'
      'ORDER BY NOMB_EMPRESA')
    Left = 786
    Top = 412
  end
  object quer_turnos: TQuery [41]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_TURNO, CODI_TURNO'
      'FROM GLO_TURNOS'
      'ORDER BY CODI_TURNO')
    Left = 226
    Top = 248
  end
  object quer_tipo_docu_ingreso: TQuery [42]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      
        'SELECT CONS_PERS_MOVI_TIPO_DOCUMENTO, NOMB_PERS_MOVI_TIPO_DOCUME' +
        'NTO'
      'FROM GLO_PERS_MOVI_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_MOVI_TIPO_DOCUMENTO')
    Left = 682
    Top = 268
  end
  object quer_tipo_contrato: TQuery [43]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT T.CONS_PERS_TIPO_CONTRATO, T.NOMB_PERS_TIPO_CONTRATO,'
      'T.DURACION,'
      'U.NOMB_UNID_MEDI_TIEMPO'
      'FROM GLO_PERS_TIPO_CONTRATO T, SIS_UNID_MEDI_TIEMPO U'
      'WHERE T.CONS_UNID_MEDI_TIEMPO = U.CONS_UNID_MEDI_TIEMPO'
      'ORDER BY T.NOMB_PERS_TIPO_CONTRATO')
    Left = 346
    Top = 292
  end
  object quer_cargos: TQuery [44]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERS_CARGO, NOMB_PERS_CARGO'
      'FROM GLO_PERS_CARGOS'
      'ORDER BY NOMB_PERS_CARGO')
    Left = 226
    Top = 276
  end
  object quer_nive_salarial: TQuery [45]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERS_NIVE_SALARIAL, NOMB_PERS_NIVE_SALARIAL,'
      'VALO_MINIMO,'
      'VALO_MAXIMO '
      'FROM GLO_PERS_NIVE_SALARIALES'
      'ORDER BY VALO_MINIMO')
    Left = 346
    Top = 320
    object quer_nive_salarialCONS_PERS_NIVE_SALARIAL: TIntegerField
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.CONS_PERS_NIVE_SALARIAL'
    end
    object quer_nive_salarialNOMB_PERS_NIVE_SALARIAL: TStringField
      FieldName = 'NOMB_PERS_NIVE_SALARIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.NOMB_PERS_NIVE_SALARIAL'
      Size = 60
    end
    object quer_nive_salarialVALO_MINIMO: TIntegerField
      FieldName = 'VALO_MINIMO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.VALO_MINIMO'
      DisplayFormat = '$ ,0.00'
    end
    object quer_nive_salarialVALO_MAXIMO: TIntegerField
      FieldName = 'VALO_MAXIMO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.VALO_MAXIMO'
      DisplayFormat = '$ ,0.00'
    end
  end
  object quer_peri_pago: TQuery [46]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERI_PAGO, NOMB_PERI_PAGO'
      'FROM SIS_PERI_PAGO'
      'ORDER BY NOMB_PERI_PAGO')
    Left = 346
    Top = 348
  end
  object quer_tipo_documento: TQuery [47]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERS_TIPO_DOCUMENTO, NOMB_PERS_TIPO_DOCUMENTO'
      'FROM SIS_PERS_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_TIPO_DOCUMENTO')
    Left = 682
    Top = 440
  end
  object data_tipo_documento: TDataSource [48]
    AutoEdit = False
    DataSet = quer_tipo_documento
    Left = 710
    Top = 440
  end
  object data_naci_pais: TDataSource [49]
    AutoEdit = False
    DataSet = quer_naci_paises
    Left = 709
    Top = 357
  end
  object data_naci_departamentos: TDataSource [50]
    AutoEdit = False
    DataSet = quer_naci_departamentos
    Left = 709
    Top = 385
  end
  object data_naci_ciudades: TDataSource [51]
    AutoEdit = False
    DataSet = quer_naci_ciudades
    Left = 709
    Top = 413
  end
  object quer_cent_costos: TQuery [52]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERS_CENT_COSTO, NOMB_PERS_CENT_COSTO'
      'FROM GLO_PERS_CENT_COSTOS'
      'ORDER BY NOMB_PERS_CENT_COSTO')
    Left = 225
    Top = 304
  end
  object data_cent_costos: TDataSource [53]
    AutoEdit = False
    DataSet = quer_cent_costos
    Left = 253
    Top = 304
  end
  object quer_subc_costos: TQuery [54]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_COST_GRUPO, NOMB_COST_GRUPO'
      'FROM SIS_COST_GRUPOS'
      'ORDER BY NOMB_COST_GRUPO')
    Left = 224
    Top = 332
  end
  object data_subc_costos: TDataSource [55]
    AutoEdit = False
    DataSet = quer_subc_costos
    Left = 253
    Top = 332
  end
  object quer_naci_paises: TQuery [56]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PAIS, NOMB_PAIS'
      'FROM GLO_PAISES'
      'ORDER BY NOMB_PAIS')
    Left = 681
    Top = 357
  end
  object quer_naci_departamentos: TQuery [57]
    DatabaseName = 'data_base_pcp'
    DataSource = data_naci_pais
    SQL.Strings = (
      'SELECT CONS_PAIS, CONS_DEPARTAMENTO, NOMB_DEPARTAMENTO'
      'FROM GLO_DEPARTAMENTOS'
      'WHERE CONS_PAIS = :CONS_PAIS'
      'ORDER BY NOMB_DEPARTAMENTO')
    Left = 681
    Top = 385
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PAIS'
        ParamType = ptUnknown
      end>
  end
  object quer_naci_ciudades: TQuery [58]
    DatabaseName = 'data_base_pcp'
    DataSource = data_naci_departamentos
    SQL.Strings = (
      'SELECT CONS_CIUDAD, NOMB_CIUDAD'
      'FROM GLO_CIUDADES'
      'WHERE CONS_DEPARTAMENTO = :CONS_DEPARTAMENTO'
      'ORDER BY NOMB_CIUDAD')
    Left = 681
    Top = 413
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_DEPARTAMENTO'
        ParamType = ptUnknown
      end>
  end
  object quer_form_pago: TQuery [59]
    AfterOpen = quer_form_pagoAfterOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT'
      'CONS_SIS_FORM_PAGO, NOMB_SIS_FORM_PAGO'
      'FROM SIS_PCP_FORM_PAGO '
      'WHERE ESTA_ACTIVA = 1'
      'AND CONS_SIS_FORM_PAGO <> 5'
      'ORDER BY CONS_SIS_FORM_PAGO'
      #9)
    Left = 347
    Top = 389
  end
  object data_form_pago: TDataSource [60]
    DataSet = quer_form_pago
    Left = 375
    Top = 389
  end
  object quer_diferencial: TQuery [61]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_FORM_PAGO_DIFERENCIAL AS CONSECUTIVO,'
      '   CODI_FORM_PAGO_DIFERENCIAL AS CODIGO,'
      '   NOMB_FORM_PAGO_DIFERENCIAL AS NOMBRE'
      'FROM PCP_FORM_PAGO_DIFERENCIAL'
      'WHERE ESTA_ACTIVO = 1'
      'ORDER BY 2')
    Left = 375
    Top = 417
  end
  object data_codigo: TDataSource [62]
    Left = 403
    Top = 417
  end
  object quer_dividido: TQuery [63]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_FORM_PAGO_DIVIDIDO AS CONSECUTIVO,'
      '   CODI_FORM_PAGO_DIVIDIDO AS CODIGO,'
      '   NOMB_FORM_PAGO_DIVIDIDO AS NOMBRE'
      'FROM PCP_FORM_PAGO_DIVIDIDO'
      'WHERE ESTA_ACTIVO = 1'
      'ORDER BY 2')
    Left = 347
    Top = 417
  end
  object quer_para_form_pago: TQuery [64]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT FIRST 1 *'
      'FROM PCP_FORM_PAGO_PARAMETROS')
    Left = 347
    Top = 445
  end
  object quer_guar_form_pago: TQuery [65]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'EXECUTE PROCEDURE'
      'PRO_PCP_FORM_PAGO_PERSONAL_IU'
      ' (:CONS_PERSONAL, :FECH_INICIAL,  :VALO_HORA_MINI_GARANTIZADO, '
      ':VALO_HORA_PRODUCCION,'
      ':CONS_SIS_FORM_PAGO,'
      ':PARA_1, NULL, NULL)')
    Left = 960
    Top = 345
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PERSONAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECH_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALO_HORA_MINI_GARANTIZADO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALO_HORA_PRODUCCION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_SIS_FORM_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARA_1'
        ParamType = ptInput
      end>
  end
  object quer_veri_codigo: TQuery [66]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT COUNT(*) AS CUANTOS'
      'FROM GLO_PERSONAL'
      'WHERE CODI_PERSONAL = :CODI_PERSONAL')
    Left = 56
    Top = 196
    ParamData = <
      item
        DataType = ftString
        Name = 'CODI_PERSONAL'
        ParamType = ptInput
      end>
  end
  inherited padr_quer_consecutivo: TQuery [67]
  end
  inherited padr_imag_tem1_colo: TImageList [68]
  end
  inherited data_ventana: TDataSource [69]
    DataSet = myTabla_Ventana
  end
  inherited padr_acciones: TActionList [70]
  end
  inherited Variables: TSCLPropiedadesForm [71]
    NombreAMostrar = 'Personal'
    TablaMaestra = 'GLO_PERSONAL'
    verBotonesNavegacion = False
    Left = 776
  end
  inherited Imagenes_Botones_Pequenos: TImageList [72]
    Left = 657
  end
  inherited Tabla_Ventana: TTable [73]
    TableName = 'GLO_PERS_MOVIMIENTOS'
    object Tabla_VentanaCONS_PERS_MOVIMIENTO: TIntegerField
      AutoGenerateValue = arDefault
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
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
      Size = 12
    end
    object Tabla_VentanaCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado Por'
      FieldName = 'CONS_SOLICITA'
    end
    object Tabla_VentanaCONS_APROBO: TIntegerField
      DisplayLabel = 'Aprobado Por'
      FieldName = 'CONS_APROBO'
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      DisplayWidth = 240
      FieldName = 'OBSERVACIONES'
      Size = 240
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
  end
  inherited padr_pict_container: TPictureContainer
    Left = 690
  end
  object tabl_glo_personal: TkbmMemTable
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
    OnCalcFields = tabl_glo_personalCalcFields
    Left = 611
    Top = 243
    object tabl_glo_personalCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object tabl_glo_personalCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Required = True
      Size = 12
    end
    object tabl_glo_personalPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer apellido'
      FieldName = 'PRIM_APELLIDO'
      Required = True
      Size = 30
    end
    object tabl_glo_personalSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo apellido'
      FieldName = 'SEGU_APELLIDO'
      Required = True
      Size = 30
    end
    object tabl_glo_personalNOMBRES: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMBRES'
      Required = True
      Size = 40
    end
    object tabl_glo_personalNOMB_COMPLETO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMB_COMPLETO'
      Size = 102
      Calculated = True
    end
  end
  object tabl_glo_pers_movimientos: TkbmMemTable
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
    AfterInsert = tabl_glo_pers_movimientosAfterInsert
    Left = 611
    Top = 307
    object tabl_glo_pers_movimientosCONS_PERS_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_MOVIMIENTO'
    end
    object tabl_glo_pers_movimientosCONS_PERSONAL: TIntegerField
      DisplayLabel = 'Personal'
      FieldName = 'CONS_PERSONAL'
    end
    object tabl_glo_pers_movimientosCONS_PERS_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'CONS_PERS_TIPO_MOVIMIENTO'
    end
    object tabl_glo_pers_movimientosFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha Inicial'
      FieldName = 'FECH_INICIAL'
      Required = True
    end
    object tabl_glo_pers_movimientosFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECH_FINAL'
    end
    object tabl_glo_pers_movimientosCONS_PERS_MOVI_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      Required = True
    end
    object tabl_glo_pers_movimientosNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
      Size = 12
    end
    object tabl_glo_pers_movimientosCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado Por'
      FieldName = 'CONS_SOLICITA'
    end
    object tabl_glo_pers_movimientosCONS_APROBO: TIntegerField
      DisplayLabel = 'Aprobado Por'
      FieldName = 'CONS_APROBO'
    end
    object tabl_glo_pers_movimientosOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      DisplayWidth = 240
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
  end
  object data_glo_pers_movimientos: TDataSource
    DataSet = tabl_glo_pers_movimientos
    Left = 639
    Top = 307
  end
  object tabl_glo_pers_general: TkbmMemTable
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
    AfterInsert = tabl_glo_pers_generalAfterInsert
    Left = 611
    Top = 279
    object tabl_glo_pers_generalCONS_PERSONAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PERSONAL'
    end
    object tabl_glo_pers_generalCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento Residencia'
      FieldName = 'CONS_DEPARTAMENTO'
      Required = True
    end
    object tabl_glo_pers_generalCONS_PAIS: TIntegerField
      DisplayLabel = 'País Residencia'
      FieldName = 'CONS_PAIS'
      Required = True
    end
    object tabl_glo_pers_generalCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Ciudad Residencia'
      FieldName = 'CONS_CIUDAD'
      Required = True
    end
    object tabl_glo_pers_generalDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 60
    end
    object tabl_glo_pers_generalTELE_RESIDENCIA: TStringField
      DisplayLabel = 'Teléfono Residencia'
      FieldName = 'TELE_RESIDENCIA'
      Size = 30
    end
    object tabl_glo_pers_generalTELE_OTRO: TStringField
      DisplayLabel = 'Otro Teléfono'
      FieldName = 'TELE_OTRO'
      Size = 30
    end
    object tabl_glo_pers_generalTELE_MOVIL: TStringField
      DisplayLabel = 'Teléfono Movil'
      FieldName = 'TELE_MOVIL'
      Size = 30
    end
    object tabl_glo_pers_generalFECH_NACIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha Nacimiento'
      FieldName = 'FECH_NACIMIENTO'
      Required = True
    end
    object tabl_glo_pers_generalCONS_PAIS_NACIMIENTO: TIntegerField
      DisplayLabel = 'País Nacimiento'
      FieldName = 'CONS_PAIS_NACIMIENTO'
      Required = True
    end
    object tabl_glo_pers_generalCONS_DEPA_NACIMIENTO: TIntegerField
      DisplayLabel = 'Departamento Nacimiento'
      FieldName = 'CONS_DEPA_NACIMIENTO'
      Required = True
    end
    object tabl_glo_pers_generalCONS_CIUD_NACIMIENTO: TIntegerField
      DisplayLabel = 'Ciudad Nacimiento'
      FieldName = 'CONS_CIUD_NACIMIENTO'
      Required = True
    end
    object tabl_glo_pers_generalCONS_PERS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'CONS_PERS_TIPO_DOCUMENTO'
      Required = True
    end
    object tabl_glo_pers_generalNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
      Required = True
      Size = 12
    end
    object tabl_glo_pers_generalFECH_EXPE_DOCUMENTO: TDateTimeField
      DisplayLabel = 'Fecha Expedición Documento'
      FieldName = 'FECH_EXPE_DOCUMENTO'
    end
    object tabl_glo_pers_generalLUGA_EXPE_DOCUMENTO: TStringField
      DisplayLabel = 'Lugar Expedición Documento'
      FieldName = 'LUGA_EXPE_DOCUMENTO'
      Required = True
      Size = 30
    end
    object tabl_glo_pers_generalNUME_PASAPORTE: TStringField
      DisplayLabel = 'Número Pasaporte'
      FieldName = 'NUME_PASAPORTE'
      Size = 12
    end
    object tabl_glo_pers_generalFECH_EXPE_PASAPORTE: TDateTimeField
      DisplayLabel = 'Fecha Expedición Pasaporte'
      FieldName = 'FECH_EXPE_PASAPORTE'
    end
    object tabl_glo_pers_generalFECH_VENC_PASAPORTE: TDateTimeField
      DisplayLabel = 'Fecha Vencimiento Pasaporte'
      FieldName = 'FECH_VENC_PASAPORTE'
    end
    object tabl_glo_pers_generalLUGA_EXPE_PASAPORTE: TStringField
      DisplayLabel = 'Lugar Expedición Pasaporte'
      FieldName = 'LUGA_EXPE_PASAPORTE'
      Size = 30
    end
    object tabl_glo_pers_generalNUME_LIBR_MILITAR: TStringField
      DisplayLabel = 'Número Libreta Militar'
      FieldName = 'NUME_LIBR_MILITAR'
      Size = 12
    end
    object tabl_glo_pers_generalFECH_EXPE_LIBR_MILITAR: TDateTimeField
      DisplayLabel = 'Fecha Expedición Libreta Militar'
      FieldName = 'FECH_EXPE_LIBR_MILITAR'
    end
    object tabl_glo_pers_generalNUME_SEGU_SOCIAL: TStringField
      DisplayLabel = 'Número Seguro Social'
      FieldName = 'NUME_SEGU_SOCIAL'
      Size = 12
    end
    object tabl_glo_pers_generalNUME_HIJOS: TIntegerField
      DisplayLabel = 'Número Hijos'
      FieldName = 'NUME_HIJOS'
      Required = True
    end
    object tabl_glo_pers_generalCONS_SEXO: TIntegerField
      DisplayLabel = 'Sexo'
      FieldName = 'CONS_SEXO'
      Required = True
    end
    object tabl_glo_pers_generalCONS_ESTA_CIVIL: TIntegerField
      DisplayLabel = 'Estado Civil'
      FieldName = 'CONS_ESTA_CIVIL'
      Required = True
    end
    object tabl_glo_pers_generalIMAGEN: TBlobField
      DisplayLabel = 'Imagen'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object tabl_glo_pers_generalAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Imagen'
      FieldName = 'AJUS_IMAGEN'
    end
    object tabl_glo_pers_generalNUME_CONDUCCION: TStringField
      DisplayLabel = 'Número conducción'
      FieldName = 'NUME_CONDUCCION'
      Size = 12
    end
    object tabl_glo_pers_generalFECH_EXPE_CONDUCCION: TDateField
      DisplayLabel = 'Fecha expedición conducción'
      FieldName = 'FECH_EXPE_CONDUCCION'
    end
    object tabl_glo_pers_generalLUGA_EXPE_CONDUCCION: TStringField
      DisplayLabel = 'Lugar de expedición conducción'
      FieldName = 'LUGA_EXPE_CONDUCCION'
      Size = 30
    end
    object tabl_glo_pers_generalFECH_VENC_CONDUCCION: TDateField
      DisplayLabel = 'Fecha vencimiento conducción'
      FieldName = 'FECH_VENC_CONDUCCION'
    end
    object tabl_glo_pers_generalCATE_CONDUCCION: TStringField
      DisplayLabel = 'Categoría consucción'
      FieldName = 'CATE_CONDUCCION'
      Size = 12
    end
  end
  object data_glo_pers_general: TDataSource
    DataSet = tabl_glo_pers_general
    Left = 639
    Top = 279
  end
  object tabl_glo_pers_movi_traslados: TkbmMemTable
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
    Left = 611
    Top = 335
    object tabl_glo_pers_movi_trasladosCONS_PERS_MOVIMIENTO: TIntegerField
      FieldName = 'CONS_PERS_MOVIMIENTO'
    end
    object tabl_glo_pers_movi_trasladosCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
      Required = True
    end
    object tabl_glo_pers_movi_trasladosCONS_AREA: TIntegerField
      FieldName = 'CONS_AREA'
      Required = True
    end
    object tabl_glo_pers_movi_trasladosCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
      Required = True
    end
    object tabl_glo_pers_movi_trasladosCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Required = True
    end
    object tabl_glo_pers_movi_trasladosCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
      Required = True
    end
    object tabl_glo_pers_movi_trasladosCONS_BODEGA: TIntegerField
      FieldName = 'CONS_BODEGA'
      Required = True
    end
    object tabl_glo_pers_movi_trasladosCONS_TURNO: TIntegerField
      FieldName = 'CONS_TURNO'
      Required = True
    end
    object tabl_glo_pers_movi_trasladosCONS_UBIC_TIPO: TIntegerField
      DisplayLabel = 'Tipo Ubicación'
      FieldName = 'CONS_UBIC_TIPO'
      Required = True
    end
    object tabl_glo_pers_movi_trasladosOTRA_UBICACION: TStringField
      DisplayLabel = 'Otra Ubicación'
      FieldName = 'OTRA_UBICACION'
      Size = 60
    end
    object tabl_glo_pers_movi_trasladosCONS_PERS_CARGO: TIntegerField
      DisplayLabel = 'Cargo'
      FieldName = 'CONS_PERS_CARGO'
      Required = True
    end
    object tabl_glo_pers_movi_trasladosCONS_PERS_CENT_COSTO: TIntegerField
      DisplayLabel = 'Centro de Costos'
      FieldName = 'CONS_PERS_CENT_COSTO'
      Required = True
    end
    object tabl_glo_pers_movi_trasladosCONS_COST_GRUPO: TIntegerField
      DisplayLabel = 'Sub - Centro de Costos'
      FieldName = 'CONS_COST_GRUPO'
      Required = True
    end
  end
  object data_glo_pers_movi_traslados: TDataSource
    DataSet = tabl_glo_pers_movi_traslados
    Left = 639
    Top = 335
  end
  object tabl_glo_pers_confidenciales: TkbmMemTable
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
    AfterInsert = tabl_glo_pers_confidencialesAfterInsert
    Left = 611
    Top = 363
    object tabl_glo_pers_confidencialesCONS_PERS_MOVIMIENTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_MOVIMIENTO'
    end
    object tabl_glo_pers_confidencialesCONS_PERS_NIVE_SALARIAL: TIntegerField
      DisplayLabel = 'Nivel salarial'
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
      Required = True
    end
    object tabl_glo_pers_confidencialesCONS_PERS_TIPO_CONTRATO: TIntegerField
      DisplayLabel = 'Tipo contrato'
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
      Required = True
    end
    object tabl_glo_pers_confidencialesNUME_CONTRATO: TStringField
      DisplayLabel = 'No. contrato'
      FieldName = 'NUME_CONTRATO'
      Required = True
    end
    object tabl_glo_pers_confidencialesCONS_PERI_PAGO: TIntegerField
      DisplayLabel = 'Período de pago'
      FieldName = 'CONS_PERI_PAGO'
      Required = True
    end
    object tabl_glo_pers_confidencialesAUXI_TRANSPORTE: TFloatField
      DisplayLabel = 'Auxilio de Transporte'
      FieldName = 'AUXI_TRANSPORTE'
    end
    object tabl_glo_pers_confidencialesAUXI_SALARIAL: TFloatField
      DisplayLabel = 'Auxilio Salarial'
      FieldName = 'AUXI_SALARIAL'
    end
    object tabl_glo_pers_confidencialesVALO_SALARIO: TIntegerField
      DisplayLabel = 'Salario'
      FieldName = 'VALO_SALARIO'
      Required = True
      DisplayFormat = '$ ,0'
    end
    object tabl_glo_pers_confidencialesDIAS_VENC_CONTRATO: TIntegerField
      DisplayLabel = 'Aviso Vencimiento Contrato'
      FieldName = 'DIAS_VENC_CONTRATO'
      Required = True
    end
    object tabl_glo_pers_confidencialesAPLI_INCENTIVO: TIntegerField
      DisplayLabel = 'Aplica Incentivo'
      FieldName = 'APLI_INCENTIVO'
    end
  end
  object data_glo_pers_confidenciales: TDataSource
    DataSet = tabl_glo_pers_confidenciales
    Left = 639
    Top = 363
  end
  object data_glo_personal: TDataSource
    DataSet = tabl_glo_personal
    Left = 639
    Top = 243
  end
  object myTabla_Ventana: TkbmMemTable
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
    BeforeInsert = myTabla_VentanaBeforeInsert
    AfterInsert = myTabla_VentanaAfterInsert
    BeforePost = myTabla_VentanaBeforePost
    AfterPost = myTabla_VentanaAfterPost
    AfterCancel = myTabla_VentanaAfterCancel
    Left = 252
    Top = 6
    object myTabla_Ventanacons_personal: TIntegerField
      FieldName = 'cons_personal'
    end
  end
  object tabl_glo_pers_form_pago: TkbmMemTable
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
    AfterInsert = tabl_glo_pers_form_pagoAfterInsert
    Left = 611
    Top = 391
    object tabl_glo_pers_form_pagocons_personal: TIntegerField
      FieldName = 'cons_personal'
    end
    object tabl_glo_pers_form_pagofech_inicial: TDateField
      FieldName = 'fech_inicial'
    end
    object tabl_glo_pers_form_pagovalo_hora_mini_garantizado: TFloatField
      FieldName = 'valo_hora_mini_garantizado'
    end
    object tabl_glo_pers_form_pagovalo_hora_produccion: TFloatField
      FieldName = 'valo_hora_produccion'
    end
    object tabl_glo_pers_form_pagocons_sis_form_pago: TIntegerField
      FieldName = 'cons_sis_form_pago'
    end
    object tabl_glo_pers_form_pagopara_1: TStringField
      FieldName = 'para_1'
    end
    object tabl_glo_pers_form_pagopara_2: TStringField
      FieldName = 'para_2'
    end
    object tabl_glo_pers_form_pagopara_3: TStringField
      FieldName = 'para_3'
    end
  end
  object data_glo_pers_form_pago: TDataSource
    DataSet = tabl_glo_pers_form_pago
    Left = 639
    Top = 391
  end
  object quer_cons_maestro: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT SECUENCIA'
      'FROM FUN_GLO_GENE_SECUENCIA("GLO_PERSONAL", "CONS_PERSONAL")')
    Left = 491
    Top = 295
  end
  object quer_inse_glo_personal: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_glo_personal
    SQL.Strings = (
      
        'INSERT INTO GLO_PERSONAL(CONS_PERSONAL, CODI_PERSONAL, PRIM_APEL' +
        'LIDO, SEGU_APELLIDO, NOMBRES)'
      
        'VALUES (:CONS_PERSONAL, :CODI_PERSONAL, :PRIM_APELLIDO, :SEGU_AP' +
        'ELLIDO, :NOMBRES)')
    Left = 560
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODI_PERSONAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRIM_APELLIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEGU_APELLIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRES'
        ParamType = ptUnknown
      end>
  end
  object quer_Cons_pers_movimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT SECUENCIA'
      
        'FROM FUN_GLO_GENE_SECUENCIA("GLO_PERS_MOVIMIENTOS", "CONS_PERS_M' +
        'OVIMIENTO")')
    Left = 491
    Top = 323
  end
  object quer_inse_glo_pers_general: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_glo_pers_general
    SQL.Strings = (
      'INSERT INTO GLO_PERS_GENERAL(CONS_PERSONAL, CONS_PAIS,'
      'CONS_DEPARTAMENTO, CONS_CIUDAD, DIRECCION, TELE_RESIDENCIA,'
      'TELE_OTRO, TELE_MOVIL, FECH_NACIMIENTO, CONS_PAIS_NACIMIENTO,'
      
        'CONS_DEPA_NACIMIENTO, CONS_CIUD_NACIMIENTO, CONS_PERS_TIPO_DOCUM' +
        'ENTO,'
      'NUME_DOCUMENTO, FECH_EXPE_DOCUMENTO, LUGA_EXPE_DOCUMENTO,'
      'NUME_PASAPORTE, FECH_EXPE_PASAPORTE, FECH_VENC_PASAPORTE,'
      'LUGA_EXPE_PASAPORTE, NUME_LIBR_MILITAR, FECH_EXPE_LIBR_MILITAR,'
      'NUME_SEGU_SOCIAL, NUME_HIJOS, CONS_SEXO,'
      'CONS_ESTA_CIVIL, IMAGEN, AJUS_IMAGEN)'
      
        'VALUES (:CONS_PERSONAL, :CONS_PAIS, :CONS_DEPARTAMENTO, :CONS_CI' +
        'UDAD,'
      ':DIRECCION, :TELE_RESIDENCIA, :TELE_OTRO,'
      ':TELE_MOVIL, :FECH_NACIMIENTO, :CONS_PAIS_NACIMIENTO,'
      
        ':CONS_DEPA_NACIMIENTO, :CONS_CIUD_NACIMIENTO, :CONS_PERS_TIPO_DO' +
        'CUMENTO,'
      ':NUME_DOCUMENTO, :FECH_EXPE_DOCUMENTO, :LUGA_EXPE_DOCUMENTO,'
      
        ':NUME_PASAPORTE, :FECH_EXPE_PASAPORTE, :FECH_VENC_PASAPORTE, :LU' +
        'GA_EXPE_PASAPORTE,'
      ':NUME_LIBR_MILITAR, :FECH_EXPE_LIBR_MILITAR, :NUME_SEGU_SOCIAL,'
      ':NUME_HIJOS, :CONS_SEXO, :CONS_ESTA_CIVIL,'
      ':IMAGEN, :AJUS_IMAGEN)')
    Left = 560
    Top = 324
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PAIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_DEPARTAMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_CIUDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELE_RESIDENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELE_OTRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELE_MOVIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_NACIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PAIS_NACIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_DEPA_NACIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_CIUD_NACIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_TIPO_DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUME_DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_EXPE_DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LUGA_EXPE_DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUME_PASAPORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_EXPE_PASAPORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_VENC_PASAPORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LUGA_EXPE_PASAPORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUME_LIBR_MILITAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_EXPE_LIBR_MILITAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUME_SEGU_SOCIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUME_HIJOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_SEXO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_ESTA_CIVIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AJUS_IMAGEN'
        ParamType = ptUnknown
      end>
  end
  object quer_inse_glo_pers_movimientos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_glo_pers_movimientos
    SQL.Strings = (
      
        'INSERT INTO GLO_PERS_MOVIMIENTOS(CONS_PERS_MOVIMIENTO, CONS_PERS' +
        'ONAL,'
      
        'CONS_PERS_TIPO_MOVIMIENTO, FECH_INICIAL, FECH_FINAL, CONS_PERS_M' +
        'OVI_TIPO_DOCUMENTO,'
      'NUME_DOCUMENTO, CONS_SOLICITA, CONS_APROBO, OBSERVACIONES)'
      'VALUES (:CONS_PERS_MOVIMIENTO, :CONS_PERSONAL,'
      
        ':CONS_PERS_TIPO_MOVIMIENTO, :FECH_INICIAL, :FECH_FINAL, :CONS_PE' +
        'RS_MOVI_TIPO_DOCUMENTO,'
      
        ':NUME_DOCUMENTO, :CONS_SOLICITA, :CONS_APROBO, :OBSERVACIONES)  ' +
        '             ')
    Left = 560
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_MOVIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_TIPO_MOVIMIENTO'
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
        Name = 'OBSERVACIONES'
        ParamType = ptUnknown
      end>
  end
  object quer_inse_glo_pers_movi_traslados: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_glo_pers_movi_traslados
    SQL.Strings = (
      
        'INSERT INTO GLO_PERS_MOVI_TRASLADOS(CONS_PERS_MOVIMIENTO, CONS_U' +
        'BIC_TIPO,'
      'CONS_EMPRESA, CONS_AREA, CONS_PLANTA, CONS_PLAN_LINEA,'
      'CONS_LINE_SECCION, CONS_BODEGA, OTRA_UBICACION, CONS_TURNO,'
      'CONS_PERS_CARGO, CONS_PERS_CENT_COSTO, CONS_COST_GRUPO)'
      'VALUES (:CONS_PERS_MOVIMIENTO, :CONS_UBIC_TIPO, :CONS_EMPRESA,'
      ':CONS_AREA, :CONS_PLANTA, :CONS_PLAN_LINEA, :CONS_LINE_SECCION,'
      ':CONS_BODEGA, :OTRA_UBICACION, :CONS_TURNO, :CONS_PERS_CARGO,'
      ':CONS_PERS_CENT_COSTO, :CONS_COST_GRUPO)')
    Left = 560
    Top = 380
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_MOVIMIENTO'
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
  object quer_inse_glo_pers_movi_confidenciales: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_glo_pers_confidenciales
    SQL.Strings = (
      
        'INSERT INTO GLO_PERS_MOVI_CONFIDENCIAL(CONS_PERS_MOVIMIENTO, CON' +
        'S_PERS_NIVE_SALARIAL,'
      
        'CONS_PERS_TIPO_CONTRATO, NUME_CONTRATO, CONS_PERI_PAGO, VALO_SAL' +
        'ARIO,'
      
        'AUXI_TRANSPORTE, AUXI_SALARIAL, DIAS_VENC_CONTRATO, APLI_INCENTI' +
        'VO)'
      
        'VALUES (:CONS_PERS_MOVIMIENTO, :CONS_PERS_NIVE_SALARIAL, :CONS_P' +
        'ERS_TIPO_CONTRATO,'
      
        ':NUME_CONTRATO, :CONS_PERI_PAGO, :VALO_SALARIO, :AUXI_TRANSPORTE' +
        ','
      ':AUXI_SALARIAL, :DIAS_VENC_CONTRATO, :APLI_INCENTIVO)')
    Left = 560
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_MOVIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_NIVE_SALARIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_TIPO_CONTRATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUME_CONTRATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERI_PAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALO_SALARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AUXI_TRANSPORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AUXI_SALARIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIAS_VENC_CONTRATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APLI_INCENTIVO'
        ParamType = ptUnknown
      end>
  end
  object quer_inse_glo_pers_form_pago: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_glo_pers_form_pago
    SQL.Strings = (
      'INSERT INTO PCP_FORM_PAGO_PERSONAL(CONS_PERSONAL,'
      'FECH_INICIAL, VALO_HORA_MINI_GARANTIZADO, VALO_HORA_PRODUCCION,'
      'CONS_SIS_FORM_PAGO, PARA_1)'
      
        'VALUES (:CONS_PERSONAL, :FECH_INICIAL, :VALO_HORA_MINI_GARANTIZA' +
        'DO,'
      ':VALO_HORA_PRODUCCION, :CONS_SIS_FORM_PAGO, :PARA_1)')
    Left = 560
    Top = 436
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALO_HORA_MINI_GARANTIZADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALO_HORA_PRODUCCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_SIS_FORM_PAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PARA_1'
        ParamType = ptUnknown
      end>
  end
  object tabl_glo_pers_familiares: TkbmMemTable
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
    Left = 610
    Top = 419
    object tabl_glo_pers_familiaresCONS_PERSONAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PERSONAL'
    end
    object tabl_glo_pers_familiaresCONS_PERS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'CONS_PERS_TIPO_DOCUMENTO'
    end
    object tabl_glo_pers_familiaresNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
    end
    object tabl_glo_pers_familiaresPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'PRIM_APELLIDO'
      Required = True
      Size = 30
    end
    object tabl_glo_pers_familiaresSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGU_APELLIDO'
      Required = True
      Size = 30
    end
    object tabl_glo_pers_familiaresNOMBRES: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMBRES'
      Required = True
      Size = 40
    end
    object tabl_glo_pers_familiaresCONS_SEXO: TIntegerField
      DisplayLabel = 'Sexo'
      FieldName = 'CONS_SEXO'
      Required = True
    end
    object tabl_glo_pers_familiaresCONS_PARENTESCO: TIntegerField
      DisplayLabel = 'Parentesco'
      FieldName = 'CONS_PARENTESCO'
      Required = True
    end
    object tabl_glo_pers_familiaresFECH_NACIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha Nacimiento'
      FieldName = 'FECH_NACIMIENTO'
    end
    object tabl_glo_pers_familiaresCONS_PAIS: TIntegerField
      DisplayLabel = 'País'
      FieldName = 'CONS_PAIS'
    end
    object tabl_glo_pers_familiaresCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
    end
    object tabl_glo_pers_familiaresCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Ciudad'
      FieldName = 'CONS_CIUDAD'
    end
    object tabl_glo_pers_familiaresDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 240
    end
    object tabl_glo_pers_familiaresTELE_RESIDENCIA: TStringField
      DisplayLabel = 'Teléfono Residencia'
      FieldName = 'TELE_RESIDENCIA'
    end
    object tabl_glo_pers_familiaresTELE_OTRO: TStringField
      DisplayLabel = 'Otro Teléfono'
      FieldName = 'TELE_OTRO'
    end
    object tabl_glo_pers_familiaresTELE_MOVIL: TStringField
      DisplayLabel = 'Teléfono Movil'
      FieldName = 'TELE_MOVIL'
    end
    object tabl_glo_pers_familiaresOCUPACION: TStringField
      DisplayLabel = 'Ocupación'
      FieldName = 'OCUPACION'
      Size = 60
    end
    object tabl_glo_pers_familiaresNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object tabl_glo_pers_familiaresDIRE_EMPRESA: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRE_EMPRESA'
      Size = 240
    end
    object tabl_glo_pers_familiaresTELE_EMPRESA: TStringField
      DisplayLabel = 'Teléfono Empresa'
      FieldName = 'TELE_EMPRESA'
    end
    object tabl_glo_pers_familiaresCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo Electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Size = 120
    end
    object tabl_glo_pers_familiaresNOMB_PARENTESCO: TStringField
      DisplayLabel = 'Parentesco'
      FieldKind = fkLookup
      FieldName = 'NOMB_PARENTESCO'
      LookupDataSet = quer_parentescos
      LookupKeyFields = 'CONS_PARENTESCO'
      LookupResultField = 'NOMB_PARENTESCO'
      KeyFields = 'CONS_PARENTESCO'
      Size = 60
      Lookup = True
    end
    object tabl_glo_pers_familiaresFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_glo_pers_familiaresUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
    object tabl_glo_pers_familiaresCONS_PERS_FAMILIAR: TIntegerField
      FieldName = 'CONS_PERS_FAMILIAR'
    end
  end
  object data_glo_pers_familiares: TDataSource
    DataSet = tabl_glo_pers_familiares
    Left = 639
    Top = 419
  end
  object quer_inse_glo_pers_familiares: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_glo_pers_familiares
    SQL.Strings = (
      
        'INSERT INTO GLO_PERS_FAMILIAR(CONS_PERSONAL, CONS_PERS_TIPO_DOCU' +
        'MENTO,'
      'NUME_DOCUMENTO, PRIM_APELLIDO, SEGU_APELLIDO, NOMBRES,'
      'CONS_SEXO, CONS_PARENTESCO, FECH_NACIMIENTO, CONS_PAIS,'
      'CONS_DEPARTAMENTO, CONS_CIUDAD, DIRECCION, TELE_RESIDENCIA,'
      'TELE_OTRO, TELE_MOVIL, OCUPACION, NOMB_EMPRESA,'
      'DIRE_EMPRESA, TELE_EMPRESA, CORR_ELECTRONICO)'
      
        'VALUES (:CONS_PERSONAL, :CONS_PERS_TIPO_DOCUMENTO, :NUME_DOCUMEN' +
        'TO,'
      ':PRIM_APELLIDO, :SEGU_APELLIDO, :NOMBRES,'
      ':CONS_SEXO, :CONS_PARENTESCO, :FECH_NACIMIENTO,'
      ':CONS_PAIS, :CONS_DEPARTAMENTO, :CONS_CIUDAD,'
      ':DIRECCION, :TELE_RESIDENCIA, :TELE_OTRO,'
      ':TELE_MOVIL, :OCUPACION, :NOMB_EMPRESA,'
      ':DIRE_EMPRESA, :TELE_EMPRESA, :CORR_ELECTRONICO)')
    Left = 560
    Top = 465
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_TIPO_DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUME_DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRIM_APELLIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEGU_APELLIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_SEXO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PARENTESCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECH_NACIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PAIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_DEPARTAMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_CIUDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELE_RESIDENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELE_OTRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELE_MOVIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OCUPACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMB_EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRE_EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELE_EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CORR_ELECTRONICO'
        ParamType = ptUnknown
      end>
  end
  object tabl_glo_pers_sistema: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'CONS_PERSONAL'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'USUA_PERSONAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PERS_MOVI_SOLICITAR'
        DataType = ftInteger
      end
      item
        Name = 'PERS_MOVI_APROBAR'
        DataType = ftInteger
      end>
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
    AfterInsert = tabl_glo_pers_sistemaAfterInsert
    Left = 611
    Top = 447
    object tabl_glo_pers_sistemaCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object tabl_glo_pers_sistemaUSUA_PERSONAL: TStringField
      FieldName = 'USUA_PERSONAL'
    end
    object tabl_glo_pers_sistemaPERS_MOVI_SOLICITAR: TIntegerField
      FieldName = 'PERS_MOVI_SOLICITAR'
    end
    object tabl_glo_pers_sistemaPERS_MOVI_APROBAR: TIntegerField
      FieldName = 'PERS_MOVI_APROBAR'
    end
    object tabl_glo_pers_sistemaPERS_AVIS_VENC_CONTRATOS: TIntegerField
      FieldName = 'PERS_AVIS_VENC_CONTRATOS'
    end
  end
  object data_Glo_pers_sistema: TDataSource
    DataSet = tabl_glo_pers_sistema
    Left = 639
    Top = 447
  end
  object quer_inse_glo_pers_sistema: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_Glo_pers_sistema
    SQL.Strings = (
      'INSERT INTO GLO_PERS_SISTEMA'
      '(CONS_PERSONAL, USUA_PERSONAL, '
      'PERS_MOVI_SOLICITAR,  '
      'PERS_MOVI_APROBAR,'
      'PERS_AVIS_VENC_CONTRATOS)'
      'VALUES (:CONS_PERSONAL, :USUA_PERSONAL, '
      ':PERS_MOVI_SOLICITAR,  :PERS_MOVI_APROBAR,'
      ':PERS_AVIS_VENC_CONTRATOS)')
    Left = 560
    Top = 494
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'USUA_PERSONAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PERS_MOVI_SOLICITAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PERS_MOVI_APROBAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERS_AVIS_VENC_CONTRATOS'
        ParamType = ptUnknown
      end>
  end
  object quer_pers_solicitar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_MOVI_SOLICITAR("NOW")'
      'ORDER BY NOMB_COMPLETO')
    Left = 683
    Top = 207
  end
  object data_pers_solicitar: TDataSource
    DataSet = quer_pers_solicitar
    Left = 711
    Top = 207
  end
  object quer_pers_aprobar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_MOVI_APROBAR("NOW")'
      'ORDER BY NOMB_COMPLETO')
    Left = 683
    Top = 235
  end
  object data_pers_aprobar: TDataSource
    DataSet = quer_pers_aprobar
    Left = 711
    Top = 235
  end
end

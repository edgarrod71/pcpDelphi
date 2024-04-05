inherited fn1_maqu_generales1: Tfn1_maqu_generales1
  Left = 228
  Top = 103
  Width = 678
  Height = 612
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 670
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
    Width = 670
  end
  inherited padr_dock_arriba: TTBXDock
    Top = 1
    Width = 670
    inherited padr_barra: TTBXToolbar
      object TBXItem2: TTBXItem [8]
        Caption = 'Más detalles'
        Images = padr_imag_tem1_colo
        Visible = False
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Top = 45
    Width = 670
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 47
    Width = 670
    inherited padr_beve_1: TBevel
      Width = 664
    end
    inherited padr_sepa_new: TShape
      Width = 664
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
    Width = 670
    inherited _LFecha_Creacion: TSCLDBLabel
      Left = 210
      Top = 55
      Visible = False
    end
    inherited _LUsuario: TSCLDBLabel
      Left = 210
      Top = 77
      Visible = False
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Left = 312
      Top = 55
      Visible = False
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Left = 312
      Top = 77
      Visible = False
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object pagina: TSCLPageControl [6]
    Left = 0
    Top = 281
    Width = 670
    Height = 294
    ActivePage = PCRecurso
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
    object PCRecurso: TSCLTabSheet
      Color = 16578290
      Caption = 'Recurso'
      object PCPFrame2: TPCPFrame
        Tag = 113
        Left = 0
        Top = 0
        Width = 666
        Height = 113
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
        Caption = 'Datos del Recurso'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        object SCLDBLabel1: TSCLDBLabel
          Left = 16
          Top = 21
          Width = 89
          Height = 18
          Alive = True
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = []
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = DBCodigo_Recurso
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvNone
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Código recurso:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CODI_RECURSO'
          Field = 'CODI_RECURSO'
        end
        object SCLDBLabel2: TSCLDBLabel
          Left = 325
          Top = 21
          Width = 89
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
          FocusControl = DBCodigo_Interno
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvNone
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Código interno:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CODI_INTE_RECURSO'
          Field = 'CODI_INTE_RECURSO'
        end
        object SCLDBLabel3: TSCLDBLabel
          Left = 16
          Top = 41
          Width = 89
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
          FocusControl = CBGrupo_Recurso
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Grupo:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_GRUPO'
          Field = 'CONS_RECU_GRUPO'
        end
        object SCLDBLabel4: TSCLDBLabel
          Left = 325
          Top = 41
          Width = 89
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
          FocusControl = CBTipo_Recurso
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Sub - Grupo:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_TIPO'
          Field = 'CONS_RECU_TIPO'
        end
        object SCLDBLabel5: TSCLDBLabel
          Left = 16
          Top = 61
          Width = 89
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
          FocusControl = CBFamilia_Recurso
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Familia:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_FAMILIA'
          Field = 'CONS_RECU_FAMILIA'
        end
        object SCLDBLabel6: TSCLDBLabel
          Left = 325
          Top = 61
          Width = 89
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
          FocusControl = CBMarca_Recurso
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Marca:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_MARCA'
          Field = 'CONS_RECU_MARCA'
        end
        object SCLDBLabel16: TSCLDBLabel
          Left = 16
          Top = 81
          Width = 89
          Height = 22
          Alive = True
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = []
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = DBClase
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvNone
          BevelOuter = bvNone
          Light = lpLeftTop
          Caption = 'Clase:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CLASE'
          Field = 'CLASE'
        end
        object DBCodigo_Recurso: TdxDBEdit
          Left = 107
          Top = 21
          Width = 118
          TabOrder = 1
          CharCase = ecUpperCase
          DataField = 'CODI_RECURSO'
          DataSource = DSRecursos
          StyleController = padr_estilo
        end
        object DBCodigo_Interno: TdxDBEdit
          Left = 416
          Top = 21
          Width = 118
          TabOrder = 2
          CharCase = ecUpperCase
          DataField = 'CODI_INTE_RECURSO'
          DataSource = DSRecursos
          StyleController = padr_estilo
        end
        object CBGrupo_Recurso: TPCPLookUpComboEdit
          Left = 107
          Top = 41
          Width = 185
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_GRUPO'
          DataSource = DSRecursos
          KeyField = 'CONS_RECU_GRUPO'
          ListField = 'NOMB_RECU_GRUPO'
          ListSource = DSQGrupos
          ParentCtl3D = False
          TabOrder = 3
          OnChange = CBGrupo_RecursoChange
          DirectInput = False
        end
        object CBTipo_Recurso: TPCPLookUpComboEdit
          Left = 416
          Top = 41
          Width = 185
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_TIPO'
          DataSource = DSRecursos
          KeyField = 'CONS_RECU_TIPO'
          ListField = 'NOMB_RECU_TIPO'
          ListSource = DSQTipo_Recurso
          ParentCtl3D = False
          TabOrder = 4
          OnChange = CBTipo_RecursoChange
          DirectInput = False
        end
        object CBFamilia_Recurso: TPCPLookUpComboEdit
          Left = 107
          Top = 61
          Width = 185
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_FAMILIA'
          DataSource = DSRecursos
          KeyField = 'CONS_RECU_FAMILIA'
          ListField = 'NOMB_RECU_FAMILIA'
          ListSource = DSQFamilias
          ParentCtl3D = False
          TabOrder = 5
          OnChange = CBFamilia_RecursoChange
          DirectInput = False
        end
        object CBMarca_Recurso: TPCPLookUpComboEdit
          Left = 416
          Top = 61
          Width = 185
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_MARCA'
          DataSource = DSRecursos
          KeyField = 'CONS_RECU_MARCA'
          ListField = 'NOMB_RECU_MARCA'
          ListSource = DSQMarcas
          ParentCtl3D = False
          TabOrder = 6
          DirectInput = False
        end
        object DBClase: TdxDBEdit
          Left = 107
          Top = 81
          Width = 118
          TabOrder = 7
          CharCase = ecUpperCase
          DataField = 'CLASE'
          DataSource = DSRecursos
          StyleController = padr_estilo
        end
        object SCLButton1: TTBXButtonSCL
          Left = 297
          Top = 41
          Width = 21
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
        end
        object SCLButton2: TTBXButtonSCL
          Left = 297
          Top = 62
          Width = 21
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
        object SCLButton3: TTBXButtonSCL
          Left = 605
          Top = 40
          Width = 21
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
        object SCLButton4: TTBXButtonSCL
          Left = 605
          Top = 61
          Width = 21
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
      end
    end
    object PCGenerales: TSCLTabSheet
      Color = 16578290
      Caption = 'Datos Técnicos Básicos'
      object PCPFrame3: TPCPFrame
        Tag = 66
        Left = 0
        Top = 0
        Width = 666
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
        TabOrder = 0
        Caption = 'General'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        object SCLDBLabel7: TSCLDBLabel
          Left = 16
          Top = 23
          Width = 89
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
          FocusControl = DBSerie
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Número de serie:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'NUME_SERIE'
          Field = 'NUME_SERIE'
        end
        object SCLDBLabel8: TSCLDBLabel
          Left = 325
          Top = 23
          Width = 89
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
          FocusControl = CBTipo_Puntada
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo de puntada:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_RECU_TIPO_PUNTADA'
          Field = 'CONS_RECU_TIPO_PUNTADA'
        end
        object SCLDBLabel9: TSCLDBLabel
          Left = 16
          Top = 43
          Width = 89
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
          FocusControl = DBRPM
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'R.P.M.:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'RPM'
          Field = 'RPM'
        end
        object SCLDBLabel12: TSCLDBLabel
          Left = 325
          Top = 43
          Width = 89
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
          FocusControl = DBVelocidad_Corte
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Velocidad:'
          Layout = tlTop
          Transparent = True
          DataSource = DSRecursos
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'VELOCIDAD'
          Field = 'VELOCIDAD'
        end
        object Label1: TLabel
          Left = 547
          Top = 46
          Width = 52
          Height = 13
          Caption = '(m/minuto)'
        end
        object DBSerie: TdxDBEdit
          Left = 107
          Top = 23
          Width = 185
          TabOrder = 1
          CharCase = ecUpperCase
          DataField = 'NUME_SERIE'
          DataSource = DSRecursos
          StyleController = padr_estilo
        end
        object CBTipo_Puntada: TPCPLookUpComboEdit
          Left = 416
          Top = 23
          Width = 185
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_RECU_TIPO_PUNTADA'
          DataSource = DSRecursos
          KeyField = 'CONS_RECU_TIPO_PUNTADA'
          ListField = 'CODI_RECU_TIPO_PUNTADA'
          ListSource = DSQTipo_Puntada
          ParentCtl3D = False
          TabOrder = 2
          DirectInput = False
        end
        object DBRPM: TdxDBCurrencyEdit
          Left = 107
          Top = 43
          Width = 118
          TabOrder = 3
          Alignment = taRightJustify
          DataField = 'RPM'
          DataSource = DSRecursos
          StyleController = padr_estilo
          DisplayFormat = ',0'
          Nullable = False
          StoredValues = 1
        end
        object SCLButton5: TTBXButtonSCL
          Left = 608
          Top = 24
          Width = 21
          Height = 20
          AllowAllUnchecked = True
          BorderSize = 2
          ButtonStyle = bsFlat
          Enabled = False
          ImageIndex = 0
          Images = Imagenes_Botones_Pequenos
          SmartFocus = False
          TabOrder = 4
          TabStop = False
        end
        object DBVelocidad_Corte: TdxDBCurrencyEdit
          Left = 416
          Top = 43
          Width = 118
          TabOrder = 5
          Alignment = taRightJustify
          DataField = 'VELOCIDAD'
          DataSource = DSRecursos
          StyleController = padr_estilo
          DisplayFormat = ',0'
          Nullable = False
          StoredValues = 1
        end
      end
      object PCPFrame7: TPCPFrame
        Tag = 195
        Left = 0
        Top = 66
        Width = 666
        Height = 205
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
        Caption = 'Datos Técnicos Especiales'
        Titulo_Color = 16244694
        Boton_Visible = False
        TipoFrame = tfGrupo
        object DBAsignados: TdxDBGrid
          Left = 2
          Top = 21
          Width = 660
          Height = 172
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CODI_TIPO_CARACTERISTICA'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 1
          DataSource = DSCaracteristicas_Temporal
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
          object DBAsignadosCONS_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
            ReadOnly = True
            Visible = False
            Width = 292
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TIPO_CARACTERISTICA'
          end
          object DBAsignadosCODI_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
            ReadOnly = True
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TIPO_CARACTERISTICA'
          end
          object DBAsignadosNOMB_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
            ReadOnly = True
            Sorted = csUp
            Width = 294
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_CARACTERISTICA'
          end
          object DBAsignadosVALOR: TdxDBGridMaskColumn
            Width = 78
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALOR'
          end
        end
      end
    end
    object PCImagen: TSCLTabSheet
      Color = 16578290
      Caption = 'Imágen'
      object sohoSplitter1: TsohoSplitter
        Left = 363
        Top = 0
        Width = 7
        Height = 271
        Cursor = crHSplit
        UnPackWidth = 100
      end
      object PCPFrame1: TPCPFrame
        Tag = 271
        Left = 0
        Top = 0
        Width = 363
        Height = 271
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
        TabOrder = 0
        Caption = 'Imagen Recurso'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        inline ffra_fotografiaDB1: Tffra_fotografiaDB
          Left = 2
          Top = 21
          Width = 359
          Height = 248
          Align = alClient
          TabOrder = 1
          inherited fram_pane_atras: TPanel
            Width = 359
            Height = 222
            inherited fram_fotografia: TEDBImage
              Width = 349
              Height = 179
              DataField = 'IMAGEN'
              DataSource = DSRecursos
            end
            inherited fram_pane_stretch: TPanel
              Top = 184
              Width = 349
              inherited fram_chec_ajustar: TdxDBCheckEdit
                DataField = 'AJUS_IMAGEN'
                DataSource = DSRecursos
              end
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 359
          end
        end
      end
      object PCPFrame4: TPCPFrame
        Tag = 271
        Left = 370
        Top = 0
        Width = 296
        Height = 271
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
        Caption = 'Detalle del Recurso'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        inline ffra_fotografiaDB2: Tffra_fotografiaDB
          Left = 2
          Top = 21
          Width = 292
          Height = 248
          Align = alClient
          TabOrder = 1
          inherited fram_pane_atras: TPanel
            Width = 292
            Height = 222
            inherited fram_fotografia: TEDBImage
              Width = 280
              Height = 179
              DataField = 'DETA_IMAGEN'
              DataSource = DSRecursos
            end
            inherited fram_pane_stretch: TPanel
              Top = 184
              Width = 280
              inherited fram_chec_ajustar: TdxDBCheckEdit
                DataField = 'AJUS_DETA_IMAGEN'
                DataSource = DSRecursos
              end
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 292
          end
        end
      end
    end
  end
  object FMovimiento: TPCPFrame [7]
    Tag = 227
    Left = 0
    Top = 54
    Width = 670
    Height = 227
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
    object SCLDBLabel40: TSCLDBLabel
      Left = 16
      Top = 5
      Width = 89
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
      Left = 325
      Top = 5
      Width = 89
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
      FocusControl = DBNumero_Documento
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nro. Documento:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NUME_DOCUMENTO'
      Field = 'NUME_DOCUMENTO'
    end
    object SCLDBLabel64: TSCLDBLabel
      Left = 16
      Top = 25
      Width = 89
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
      FocusControl = DBFecha_Inicial
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
    object SCLDBLabel65: TSCLDBLabel
      Left = 16
      Top = 45
      Width = 89
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
      FocusControl = DBFecha_Final
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
    object SCLDBLabel30: TSCLDBLabel
      Left = 16
      Top = 73
      Width = 89
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
      FocusControl = DBSolicitado
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Solicitado por:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_SOLICITA'
      Field = 'CONS_SOLICITA'
    end
    object SCLDBLabel31: TSCLDBLabel
      Left = 16
      Top = 113
      Width = 89
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
      FocusControl = DBEntregado
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Entregado por:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_ENTREGA'
      Field = 'CONS_ENTREGA'
    end
    object SCLDBLabel33: TSCLDBLabel
      Left = 16
      Top = 93
      Width = 89
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
      FocusControl = DBRecibido
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Recibido por:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_RECIBE'
      Field = 'CONS_RECIBE'
    end
    object SCLDBLabel68: TSCLDBLabel
      Left = 16
      Top = 141
      Width = 89
      Height = 70
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
    object CBTipo_Documento: TPCPLookUpComboEdit
      Left = 107
      Top = 5
      Width = 185
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_TIPO_DOCUMENTO'
      DataSource = data_ventana
      KeyField = 'CONS_TIPO_DOCUMENTO'
      ListField = 'NOMB_TIPO_DOCUMENTO'
      ListSource = DSQTipo_Documento_Movimiento
      ParentCtl3D = False
      TabOrder = 1
      DirectInput = False
    end
    object SCLButton27: TTBXButtonSCL
      Left = 297
      Top = 6
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
    object DBNumero_Documento: TdxDBEdit
      Left = 416
      Top = 5
      Width = 118
      TabOrder = 2
      DataField = 'NUME_DOCUMENTO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBFecha_Inicial: TdxDBDateEdit
      Left = 107
      Top = 25
      Width = 118
      TabOrder = 3
      DataField = 'FECH_INICIAL'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBObservaciones: TdxDBEdit
      Left = 107
      Top = 141
      Width = 495
      TabOrder = 9
      AutoSize = False
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 70
    end
    object DBFecha_Final: TdxDBDateEdit
      Left = 107
      Top = 45
      Width = 118
      Enabled = False
      TabOrder = 5
      DataField = 'FECH_FINAL'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBSolicitado: TPCPLookUpComboEdit
      Left = 107
      Top = 73
      Width = 430
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_SOLICITA'
      DataSource = data_ventana
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 6
      DirectInput = False
    end
    object SCLButton6: TTBXButtonSCL
      Left = 541
      Top = 73
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
    object DBEntregado: TPCPLookUpComboEdit
      Left = 107
      Top = 113
      Width = 430
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_ENTREGA'
      DataSource = data_ventana
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 7
      DirectInput = False
    end
    object SCLButton7: TTBXButtonSCL
      Left = 541
      Top = 115
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
    object DBRecibido: TPCPLookUpComboEdit
      Left = 107
      Top = 93
      Width = 430
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_RECIBE'
      DataSource = data_ventana
      KeyField = 'CONS_PERSONAL'
      ListField = 'NOMB_COMPLETO'
      ListSource = DSQPersonal
      ParentCtl3D = False
      TabOrder = 8
      DirectInput = False
    end
    object SCLButton8: TTBXButtonSCL
      Left = 541
      Top = 94
      Width = 20
      Height = 20
      AllowAllUnchecked = True
      BorderSize = 2
      ButtonStyle = bsFlat
      Enabled = False
      ImageIndex = 0
      Images = Imagenes_Botones_Pequenos
      SmartFocus = False
      TabOrder = 13
      TabStop = False
    end
    object CBPrestamo: TdxDBCheckEdit
      Left = 358
      Top = 25
      Width = 75
      TabOrder = 4
      Alignment = taRightJustify
      Caption = 'Prestamo:'
      DataField = 'PRESTAMO'
      DataSource = DSRecursos
      StyleController = padr_estilo_chec
      ValueChecked = '1'
      ValueGrayed = '-1'
      ValueUnchecked = '-1'
      OnChange = CBPrestamoChange
      StoredValues = 1
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 576
    Width = 670
    inherited padr_beve_abajo: TBevel
      Width = 664
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 43
    Width = 670
  end
  inherited padr_imag_tem1_colo: TImageList
    Left = 673
    Top = 12
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_guardar: TDataSetPost
      Enabled = True
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Enabled = True
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
    inherited padr_acti_modificar: TDataSetEdit
      Enabled = True
      Visible = True
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Enabled = True
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList
    Left = 737
  end
  inherited Variables: TSCLPropiedadesForm
    TipoDeBusqueda = tbArreglo
    Left = 736
  end
  inherited Tabla_Ventana: TTable
    BeforeCancel = Tabla_VentanaBeforeCancel
    TableName = 'GLO_RECU_MOVIMIENTOS'
    object Tabla_VentanaCONS_RECU_MOVIMIENTO: TIntegerField
      DisplayLabel = 'No. Movimiento'
      FieldName = 'CONS_RECU_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCONS_RECU_TIPO_MOVIMIENTO: TIntegerField
      DisplayLabel = 'Tipo Movimiento'
      FieldName = 'CONS_RECU_TIPO_MOVIMIENTO'
      Required = True
    end
    object Tabla_VentanaCONS_RECURSO: TIntegerField
      DisplayLabel = 'Recurso'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object Tabla_VentanaCONS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'CONS_TIPO_DOCUMENTO'
    end
    object Tabla_VentanaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número de Documento'
      FieldName = 'NUME_DOCUMENTO'
    end
    object Tabla_VentanaCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado por'
      FieldName = 'CONS_SOLICITA'
      Required = True
    end
    object Tabla_VentanaCONS_ENTREGA: TIntegerField
      DisplayLabel = 'Entregado por'
      FieldName = 'CONS_ENTREGA'
    end
    object Tabla_VentanaCONS_RECIBE: TIntegerField
      DisplayLabel = 'Recibido por'
      FieldName = 'CONS_RECIBE'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
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
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object Tabla_VentanaCODI_RECURSO: TStringField
      FieldKind = fkLookup
      FieldName = 'CODI_RECURSO'
      LookupDataSet = TRecursos
      LookupKeyFields = 'CONS_RECURSO'
      LookupResultField = 'CODI_RECURSO'
      KeyFields = 'CONS_RECURSO'
      Size = 12
      Lookup = True
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 706
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 738
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 706
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 738
  end
  inherited imag_pequenas: TImageList
    Left = 707
  end
  inherited padr_pict_container: TPictureContainer
    Left = 706
  end
  object DSQTipo_Documento_Movimiento: TDataSource
    AutoEdit = False
    DataSet = QTipo_Documento_Movimiento
    Left = 69
    Top = 482
  end
  object DSQPersonal: TDataSource
    AutoEdit = False
    DataSet = QPersonal
    Left = 69
    Top = 510
  end
  object DSQGrupos: TDataSource
    DataSet = QGrupos
    Left = 69
    Top = 332
  end
  object DSQTipo_Recurso: TDataSource
    DataSet = QTipo_Recurso
    Left = 69
    Top = 360
  end
  object DSQFamilias: TDataSource
    DataSet = QFamilias
    Left = 69
    Top = 388
  end
  object DSQMarcas: TDataSource
    AutoEdit = False
    DataSet = QMarcas
    Left = 69
    Top = 416
  end
  object DSQTipo_Puntada: TDataSource
    AutoEdit = False
    DataSet = QTipo_Puntada
    Left = 69
    Top = 448
  end
  object DSRecursos: TDataSource
    DataSet = TRecursos
    OnStateChange = DSRecursosStateChange
    Left = 196
    Top = 340
  end
  object TRecursos: TTable
    BeforePost = TRecursosBeforePost
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_RECURSOS'
    Left = 168
    Top = 340
    object TRecursosCONS_RECURSO: TIntegerField
      DisplayLabel = 'No. Recurso'
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TRecursosCODI_RECURSO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_RECURSO'
      Required = True
      Size = 12
    end
    object TRecursosCODI_INTE_RECURSO: TStringField
      DisplayLabel = 'Código Interno'
      FieldName = 'CODI_INTE_RECURSO'
    end
    object TRecursosCONS_RECU_GRUPO: TIntegerField
      DisplayLabel = 'Grupo de recurso'
      FieldName = 'CONS_RECU_GRUPO'
      Required = True
    end
    object TRecursosCONS_RECU_TIPO: TIntegerField
      DisplayLabel = 'Sub - Grupo'
      FieldName = 'CONS_RECU_TIPO'
      Required = True
    end
    object TRecursosCONS_RECU_FAMILIA: TIntegerField
      DisplayLabel = 'Familia'
      FieldName = 'CONS_RECU_FAMILIA'
      Required = True
    end
    object TRecursosCONS_RECU_MARCA: TIntegerField
      DisplayLabel = 'Marca'
      FieldName = 'CONS_RECU_MARCA'
      Required = True
    end
    object TRecursosCLASE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASE'
      Size = 60
    end
    object TRecursosNUME_SERIE: TStringField
      DisplayLabel = 'Número Serie'
      FieldName = 'NUME_SERIE'
    end
    object TRecursosCONS_RECU_TIPO_PUNTADA: TIntegerField
      DisplayLabel = 'Tipo de puntada'
      FieldName = 'CONS_RECU_TIPO_PUNTADA'
    end
    object TRecursosRPM: TIntegerField
      FieldName = 'RPM'
      Required = True
    end
    object TRecursosPRESTAMO: TIntegerField
      DisplayLabel = 'Prestamo'
      FieldName = 'PRESTAMO'
    end
    object TRecursosVELOCIDAD: TFloatField
      DisplayLabel = 'Velocidad'
      FieldName = 'VELOCIDAD'
      Required = True
    end
    object TRecursosIMAGEN: TBlobField
      DisplayLabel = 'Imagen del Recurso'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object TRecursosAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Imagen del Recurso'
      FieldName = 'AJUS_IMAGEN'
    end
    object TRecursosDETA_IMAGEN: TBlobField
      DisplayLabel = 'Detalle del Recurso'
      FieldName = 'DETA_IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object TRecursosAJUS_DETA_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Detalle del Recurso'
      FieldName = 'AJUS_DETA_IMAGEN'
    end
  end
  object QCaracteristicas_Asignadas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQFamilias
    SQL.Strings = (
      'SELECT C.CONS_TIPO_CARACTERISTICA, C.CODI_TIPO_CARACTERISTICA,'
      ' C.NOMB_TIPO_CARACTERISTICA, T.CONS_RECU_TIPO_CARACTERISTICA'
      'FROM GLO_TIPO_CARACTERISTICAS C, GLO_RECU_TIPO_CARACTERISTICAS T'
      'WHERE C.CONS_TIPO_CARACTERISTICA = T.CONS_TIPO_CARACTERISTICA'
      ' AND T.CONS_RECU_FAMILIA = :CONS_RECU_FAMILIA'
      'ORDER BY C.NOMB_TIPO_CARACTERISTICA')
    Left = 527
    Top = 303
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECU_FAMILIA'
        ParamType = ptUnknown
      end>
    object QCaracteristicas_AsignadasCONS_TIPO_CARACTERISTICA: TIntegerField
      FieldName = 'CONS_TIPO_CARACTERISTICA'
      Origin = 'DATA_BASE_PCP.GLO_TIPO_CARACTERISTICAS.CONS_TIPO_CARACTERISTICA'
    end
    object QCaracteristicas_AsignadasCODI_TIPO_CARACTERISTICA: TStringField
      FieldName = 'CODI_TIPO_CARACTERISTICA'
      Origin = 'DATA_BASE_PCP.GLO_TIPO_CARACTERISTICAS.CODI_TIPO_CARACTERISTICA'
      Size = 12
    end
    object QCaracteristicas_AsignadasNOMB_TIPO_CARACTERISTICA: TStringField
      FieldName = 'NOMB_TIPO_CARACTERISTICA'
      Origin = 'DATA_BASE_PCP.GLO_TIPO_CARACTERISTICAS.NOMB_TIPO_CARACTERISTICA'
      Size = 60
    end
    object QCaracteristicas_AsignadasCONS_RECU_TIPO_CARACTERISTICA: TIntegerField
      FieldName = 'CONS_RECU_TIPO_CARACTERISTICA'
      Origin = 
        'DATA_BASE_PCP.GLO_RECU_TIPO_CARACTERISTICAS.CONS_RECU_TIPO_CARAC' +
        'TERISTICA'
    end
  end
  object DSCaracteristicas_Asignadas: TDataSource
    DataSet = TCaracteristicas_Asignadas
    OnStateChange = DSCaracteristicas_AsignadasStateChange
    Left = 495
    Top = 303
  end
  object TCaracteristicas_Asignadas: TTable
    AfterOpen = TCaracteristicas_AsignadasAfterOpen
    BeforePost = TCaracteristicas_AsignadasBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_RECURSO'
    MasterFields = 'CONS_RECURSO'
    MasterSource = DSRecursos
    TableName = 'GLO_RECU_CARACTERISTICAS'
    Left = 464
    Top = 305
    object TCaracteristicas_AsignadasCONS_RECU_CARACTERISTICA: TIntegerField
      FieldName = 'CONS_RECU_CARACTERISTICA'
      Required = True
    end
    object TCaracteristicas_AsignadasCONS_RECURSO: TIntegerField
      FieldName = 'CONS_RECURSO'
      Required = True
    end
    object TCaracteristicas_AsignadasCONS_RECU_TIPO_CARACTERISTICA: TIntegerField
      FieldName = 'CONS_RECU_TIPO_CARACTERISTICA'
      Required = True
    end
    object TCaracteristicas_AsignadasVALOR: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      Size = 60
    end
    object TCaracteristicas_AsignadasCODI_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Código'
      FieldKind = fkLookup
      FieldName = 'CODI_TIPO_CARACTERISTICA'
      LookupDataSet = QCaracteristicas_Asignadas
      LookupKeyFields = 'CONS_RECU_TIPO_CARACTERISTICA'
      LookupResultField = 'CODI_TIPO_CARACTERISTICA'
      KeyFields = 'CONS_RECU_TIPO_CARACTERISTICA'
      Size = 12
      Lookup = True
    end
    object TCaracteristicas_AsignadasNOMB_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Tipo de Característica'
      FieldKind = fkLookup
      FieldName = 'NOMB_TIPO_CARACTERISTICA'
      LookupDataSet = QCaracteristicas_Asignadas
      LookupKeyFields = 'CONS_RECU_TIPO_CARACTERISTICA'
      LookupResultField = 'NOMB_TIPO_CARACTERISTICA'
      KeyFields = 'CONS_RECU_TIPO_CARACTERISTICA'
      Size = 60
      Lookup = True
    end
  end
  object QGrupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_GRUPOS'
      'ORDER BY NOMB_RECU_GRUPO')
    Left = 40
    Top = 332
  end
  object QTipo_Recurso: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQGrupos
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_TIPOS'
      'WHERE CONS_RECU_GRUPO = :CONS_RECU_GRUPO'
      'ORDER BY NOMB_RECU_TIPO')
    Left = 40
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECU_GRUPO'
        ParamType = ptUnknown
      end>
  end
  object QFamilias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQTipo_Recurso
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_FAMILIAS'
      'WHERE CONS_RECU_TIPO = :CONS_RECU_TIPO'
      'ORDER BY NOMB_RECU_FAMILIA')
    Left = 40
    Top = 388
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECU_TIPO'
        ParamType = ptUnknown
      end>
  end
  object QMarcas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_MARCAS'
      'ORDER BY NOMB_RECU_MARCA')
    Left = 40
    Top = 416
  end
  object QTipo_Puntada: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_RECU_TIPO_PUNTADA'
      'ORDER BY CODI_RECU_TIPO_PUNTADA')
    Left = 40
    Top = 448
  end
  object QTipo_Documento_Movimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_TIPO_DOCUMENTO'
      'ORDER BY NOMB_TIPO_DOCUMENTO')
    Left = 40
    Top = 481
  end
  object QPersonal: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERSONAL'
      'ORDER BY NOMB_COMPLETO')
    Left = 40
    Top = 509
  end
  object TCaracteristicas_Temporal: TRxMemoryData
    FieldDefs = <>
    Left = 464
    Top = 336
    object TCaracteristicas_TemporalVALOR: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      Size = 60
    end
    object TCaracteristicas_TemporalCODI_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_TIPO_CARACTERISTICA'
      LookupDataSet = QCaracteristicas_Asignadas
      Size = 12
    end
    object TCaracteristicas_TemporalNOMB_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Tipo de Característica'
      FieldName = 'NOMB_TIPO_CARACTERISTICA'
      LookupDataSet = QCaracteristicas_Asignadas
      Size = 60
    end
  end
  object DSCaracteristicas_Temporal: TDataSource
    DataSet = TCaracteristicas_Temporal
    OnStateChange = DSCaracteristicas_TemporalStateChange
    Left = 496
    Top = 336
  end
  object QEliminar_Caracteristicas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'DELETE FROM GLO_RECU_CARACTERISTICAS'
      'WHERE CONS_RECURSO = :CONS_RECURSO')
    Left = 528
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_RECURSO'
        ParamType = ptUnknown
      end>
  end
end

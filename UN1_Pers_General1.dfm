inherited FN1_Pers_General1: TFN1_Pers_General1
  Left = 113
  Top = 97
  Width = 772
  Height = 612
  OldCreateOrder = True
  Position = poDefault
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Top = 24
    Width = 764
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
    Width = 764
  end
  inherited padr_dock_arriba: TTBXDock
    Top = 27
    Width = 764
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_vinculos: TTBXSubmenuItem
        Images = _fMDI.imag_grandes
        LinkSubitems = _fMDI.menu_personal
        Visible = True
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Top = 25
    Width = 764
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 71
    Width = 764
    inherited padr_beve_1: TBevel
      Width = 758
    end
    inherited padr_sepa_new: TShape
      Width = 758
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
    Width = 764
    inherited _LFecha_Creacion: TSCLDBLabel
      Top = 260
    end
    inherited _LUsuario: TSCLDBLabel
      Top = 283
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Top = 260
      Width = 145
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Top = 283
      Width = 145
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  object PCPrincipal: TSCLPageControl [6]
    Left = 0
    Top = 78
    Width = 764
    Height = 497
    ActivePage = page_generales
    ActivePageDefault = page_generales
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
    TabOrder = 5
    Transparent = True
    FixedDimension = 22
    object page_generales: TSCLTabSheet
      Color = 16578290
      ImageIndex = 56
      Caption = 'Datos generales'
      object PCPFrame4: TPCPFrame
        Tag = 321
        Left = 0
        Top = 0
        Width = 760
        Height = 321
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
        Caption = 'Identificación'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        object SCLDBLabel1: TSCLDBLabel
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
          DataField = 'CODI_PERSONAL'
          Field = 'CODI_PERSONAL'
        end
        object SCLDBLabel2: TSCLDBLabel
          Left = 48
          Top = 50
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
          Caption = 'Primer Apellido:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'PRIM_APELLIDO'
          Field = 'PRIM_APELLIDO'
        end
        object SCLDBLabel3: TSCLDBLabel
          Left = 48
          Top = 70
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
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Segundo Apellido:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'SEGU_APELLIDO'
          Field = 'SEGU_APELLIDO'
        end
        object SCLDBLabel10: TSCLDBLabel
          Left = 48
          Top = 90
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
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Nombres:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'NOMBRES'
          Field = 'NOMBRES'
        end
        object SCLDBLabel41: TSCLDBLabel
          Left = 48
          Top = 119
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
          FocusControl = PCPLookUpComboEdit18
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Sexo:'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_SEXO'
          Field = 'CONS_SEXO'
        end
        object SCLDBLabel43: TSCLDBLabel
          Left = 48
          Top = 139
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
          FocusControl = PCPLookUpComboEdit19
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Estado Civil:'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_ESTA_CIVIL'
          Field = 'CONS_ESTA_CIVIL'
        end
        object SCLDBLabel69: TSCLDBLabel
          Left = 48
          Top = 159
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
          FocusControl = dxDBEdit8
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'No. Hijos'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'NUME_HIJOS'
          Field = 'NUME_HIJOS'
        end
        object DBCodigo: TdxDBEdit
          Left = 163
          Top = 22
          Width = 145
          TabOrder = 1
          CharCase = ecUpperCase
          DataField = 'CODI_PERSONAL'
          DataSource = data_ventana
          ReadOnly = False
          StyleController = padr_estilo
          StoredValues = 64
        end
        object dxDBEdit2: TdxDBEdit
          Left = 163
          Top = 50
          Width = 145
          TabOrder = 2
          DataField = 'PRIM_APELLIDO'
          DataSource = data_ventana
          ReadOnly = False
          StyleController = padr_estilo
          StoredValues = 64
        end
        object dxDBEdit3: TdxDBEdit
          Left = 163
          Top = 70
          Width = 145
          TabOrder = 3
          DataField = 'SEGU_APELLIDO'
          DataSource = data_ventana
          ReadOnly = False
          StyleController = padr_estilo
          StoredValues = 64
        end
        object dxDBEdit4: TdxDBEdit
          Left = 163
          Top = 90
          Width = 145
          TabOrder = 4
          DataField = 'NOMBRES'
          DataSource = data_ventana
          ReadOnly = False
          StyleController = padr_estilo
          StoredValues = 64
        end
        object PCPLookUpComboEdit18: TPCPLookUpComboEdit
          Left = 163
          Top = 119
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_SEXO'
          DataSource = DSGeneral
          KeyField = 'CONS_SEXO'
          ListField = 'NOMB_SEXO'
          ListSource = DSQSexos
          ParentCtl3D = False
          TabOrder = 5
          DirectInput = False
        end
        object PCPLookUpComboEdit19: TPCPLookUpComboEdit
          Left = 163
          Top = 139
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_ESTA_CIVIL'
          DataSource = DSGeneral
          KeyField = 'CONS_ESTA_CIVIL'
          ListField = 'NOMB_ESTA_CIVIL'
          ListSource = DSQEstado_Civil
          ParentCtl3D = False
          TabOrder = 6
          DirectInput = False
        end
        object dxDBEdit8: TdxDBEdit
          Left = 163
          Top = 159
          Width = 46
          TabOrder = 7
          DataField = 'NUME_HIJOS'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        inline ffra_fotografiaDB1: Tffra_fotografiaDB
          Left = 400
          Top = 21
          Width = 265
          Height = 299
          TabOrder = 8
          inherited fram_pane_atras: TPanel
            Width = 265
            Height = 273
            inherited fram_fotografia: TEDBImage
              Width = 255
              Height = 240
              DataField = 'IMAGEN'
              DataSource = DSGeneral
            end
            inherited fram_pane_stretch: TPanel
              Top = 245
              Width = 255
              inherited fram_chec_ajustar: TdxDBCheckEdit
                OnExit = CambiarPagina
                DataField = 'AJUS_IMAGEN'
                DataSource = DSGeneral
              end
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 265
          end
        end
        object PANE_INACTIVO: TPanel
          Left = 155
          Top = 184
          Width = 164
          Height = 86
          TabOrder = 9
          Visible = False
          object SCLShape1: TSCLShape
            Left = 8
            Top = 8
            Width = 149
            Height = 66
            Brush.Style = bsClear
            Pen.Color = 14467501
          end
          object labe_pers_inactivo: THTMLabel
            Left = 15
            Top = 10
            Width = 138
            Height = 61
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
              
                '<IMG src="1"> <FONT color="#000000"><B>  ATENCIÓN</B><BR><BR>El ' +
                'estado actual de esta persona es: </FONT><FONT color="#FF0000">I' +
                'NACTIVO</FONT>')
            LineWidth = 0
            PictureContainer = padr_pict_container
            ShadowColor = clGray
            ShadowOffset = 2
            Transparent = True
            URLColor = clBlue
            VAlignment = tvaTop
            Version = '1.7.1.1'
          end
          object SCLShape2: TSCLShape
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
    object page_personales: TSCLTabSheet
      Color = 16578290
      ImageIndex = 55
      Caption = 'Datos personales'
      object PCPFrame1: TPCPFrame
        Tag = 65
        Left = 0
        Top = 68
        Width = 760
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
        Caption = 'Documento de Identificación'
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
          FocusControl = PCPLookUpComboEdit1
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo Documento:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = dxDBEdit6
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Número Documento:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = dxDateEdit2
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fecha Expedición:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = dxEdit6
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Lugar Expedición:'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'LUGA_EXPE_DOCUMENTO'
          Field = 'LUGA_EXPE_DOCUMENTO'
        end
        object PCPLookUpComboEdit1: TPCPLookUpComboEdit
          Left = 163
          Top = 22
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_PERS_TIPO_DOCUMENTO'
          DataSource = DSGeneral
          KeyField = 'CONS_PERS_TIPO_DOCUMENTO'
          ListField = 'NOMB_PERS_TIPO_DOCUMENTO'
          ListSource = DSQTipo_Documento
          ParentCtl3D = False
          TabOrder = 1
          DirectInput = False
        end
        object dxDBEdit6: TdxDBEdit
          Left = 442
          Top = 22
          Width = 145
          TabOrder = 2
          DataField = 'NUME_DOCUMENTO'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxDateEdit2: TdxDBDateEdit
          Left = 163
          Top = 42
          Width = 145
          TabOrder = 3
          DataField = 'FECH_EXPE_DOCUMENTO'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxEdit6: TdxDBEdit
          Left = 442
          Top = 42
          Width = 145
          TabOrder = 4
          DataField = 'LUGA_EXPE_DOCUMENTO'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object SCLButton8: TTBXButtonSCL
          Left = 313
          Top = 21
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
      end
      object PCPFrame2: TPCPFrame
        Tag = 65
        Left = 0
        Top = 133
        Width = 760
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
          FocusControl = dxEdit7
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Número:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = dxDateEdit3
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fecha Expedición:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = dxEdit8
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvNone
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Lugar Expedición:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = dxDateEdit4
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fecha Vencimiento:'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'FECH_VENC_PASAPORTE'
          Field = 'FECH_VENC_PASAPORTE'
        end
        object dxEdit7: TdxDBEdit
          Left = 163
          Top = 22
          Width = 145
          TabOrder = 1
          DataField = 'NUME_PASAPORTE'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxDateEdit3: TdxDBDateEdit
          Left = 442
          Top = 22
          Width = 145
          TabOrder = 2
          DataField = 'FECH_EXPE_PASAPORTE'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxEdit8: TdxDBEdit
          Left = 163
          Top = 42
          Width = 145
          TabOrder = 3
          DataField = 'LUGA_EXPE_PASAPORTE'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxDateEdit4: TdxDBDateEdit
          Left = 442
          Top = 42
          Width = 145
          TabOrder = 4
          DataField = 'FECH_VENC_PASAPORTE'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
      end
      object PCPFrame3: TPCPFrame
        Tag = 51
        Left = 0
        Top = 198
        Width = 760
        Height = 51
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
        Caption = 'Libreta Militar'
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
          FocusControl = dxEdit9
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Número:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = dxDateEdit5
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fecha Expedición:'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'FECH_EXPE_LIBR_MILITAR'
          Field = 'FECH_EXPE_LIBR_MILITAR'
        end
        object dxEdit9: TdxDBEdit
          Left = 163
          Top = 22
          Width = 145
          TabOrder = 1
          DataField = 'NUME_LIBR_MILITAR'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxDateEdit5: TdxDBDateEdit
          Left = 442
          Top = 22
          Width = 145
          TabOrder = 2
          OnExit = CambiarPagina
          DataField = 'FECH_EXPE_LIBR_MILITAR'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
      end
      object PCPFrame7: TPCPFrame
        Tag = 68
        Left = 0
        Top = 0
        Width = 760
        Height = 68
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
          Left = 48
          Top = 23
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
          FocusControl = dxDateEdit1
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fecha Nacimiento:'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'FECH_NACIMIENTO'
          Field = 'FECH_NACIMIENTO'
        end
        object SCLDBLabel28: TSCLDBLabel
          Left = 343
          Top = 23
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
          FocusControl = PCPLookUpComboEdit17
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'País:'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_PAIS_NACIMIENTO'
          Field = 'CONS_PAIS_NACIMIENTO'
        end
        object SCLDBLabel30: TSCLDBLabel
          Left = 343
          Top = 43
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
          FocusControl = PCPLookUpComboEdit15
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Ciudad:'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_CIUD_NACIMIENTO'
          Field = 'CONS_CIUD_NACIMIENTO'
        end
        object SCLDBLabel29: TSCLDBLabel
          Left = 57
          Top = 43
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
          FocusControl = PCPLookUpComboEdit16
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Departamento:'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_DEPA_NACIMIENTO'
          Field = 'CONS_DEPA_NACIMIENTO'
        end
        object dxDateEdit1: TdxDBDateEdit
          Left = 163
          Top = 23
          Width = 145
          TabOrder = 1
          DataField = 'FECH_NACIMIENTO'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object SCLButton13: TTBXButtonSCL
          Left = 592
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
        end
        object SCLButton12: TTBXButtonSCL
          Left = 592
          Top = 42
          Width = 20
          Height = 20
          AllowAllUnchecked = True
          BorderSize = 2
          ButtonStyle = bsFlat
          Enabled = False
          ImageIndex = 0
          Images = Imagenes_Botones_Pequenos
          SmartFocus = False
          TabOrder = 6
          TabStop = False
        end
        object PCPLookUpComboEdit16: TPCPLookUpComboEdit
          Left = 163
          Top = 43
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_DEPA_NACIMIENTO'
          DataSource = DSGeneral
          KeyField = 'CONS_DEPARTAMENTO'
          ListField = 'NOMB_DEPARTAMENTO'
          ListSource = DSQDepartamento_Nacimiento
          ParentCtl3D = False
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
          Enabled = False
          ImageIndex = 0
          Images = Imagenes_Botones_Pequenos
          SmartFocus = False
          TabOrder = 7
          TabStop = False
        end
        object PCPLookUpComboEdit17: TPCPLookUpComboEdit
          Left = 442
          Top = 23
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_PAIS_NACIMIENTO'
          DataSource = DSGeneral
          KeyField = 'CONS_PAIS'
          ListField = 'NOMB_PAIS'
          ListSource = DSQPais_Nacimiento
          ParentCtl3D = False
          TabOrder = 2
          DirectInput = False
        end
        object PCPLookUpComboEdit15: TPCPLookUpComboEdit
          Left = 442
          Top = 43
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_CIUD_NACIMIENTO'
          DataSource = DSGeneral
          KeyField = 'CONS_CIUDAD'
          ListField = 'NOMB_CIUDAD'
          ListSource = DSQCiudades_Nacimiento
          ParentCtl3D = False
          TabOrder = 4
          DirectInput = False
        end
      end
      object PCPFrame6: TPCPFrame
        Tag = 85
        Left = 0
        Top = 249
        Width = 760
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
          FocusControl = dxDBEdit1
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Número:'
          Transparent = True
          DataSource = DSGeneral
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
          DataSource = DSGeneral
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
          FocusControl = dxDBEdit5
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvNone
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Lugar Expedición:'
          Transparent = True
          DataSource = DSGeneral
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
          DataSource = DSGeneral
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
          FocusControl = dxDBEdit7
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvNone
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Categoría:'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CATE_CONDUCCION'
          Field = 'CATE_CONDUCCION'
        end
        object dxDBEdit1: TdxDBEdit
          Left = 163
          Top = 22
          Width = 145
          TabOrder = 1
          DataField = 'NUME_CONDUCCION'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 442
          Top = 22
          Width = 145
          TabOrder = 2
          DataField = 'FECH_EXPE_CONDUCCION'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxDBEdit5: TdxDBEdit
          Left = 163
          Top = 42
          Width = 145
          TabOrder = 3
          DataField = 'LUGA_EXPE_CONDUCCION'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxDBDateEdit2: TdxDBDateEdit
          Left = 442
          Top = 42
          Width = 145
          TabOrder = 4
          DataField = 'FECH_VENC_CONDUCCION'
          DataSource = DSGeneral
          StyleController = padr_estilo
          SaveTime = False
          UseEditMask = True
          StoredValues = 4
        end
        object dxDBEdit7: TdxDBEdit
          Left = 163
          Top = 62
          Width = 145
          TabOrder = 5
          DataField = 'CATE_CONDUCCION'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
      end
    end
    object page_direcciones: TSCLTabSheet
      Color = 16578290
      ImageIndex = 42
      Caption = 'Direcciones'
      object PCPFrame5: TPCPFrame
        Tag = 131
        Left = 0
        Top = 0
        Width = 760
        Height = 131
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
        Caption = 'Vivienda'
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
          FocusControl = PCPLookUpComboEdit12
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'País:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = PCPLookUpComboEdit13
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Departamento:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = PCPLookUpComboEdit14
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Ciudad:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = dxEdit2
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Dirección:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = dxEdit3
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tel. Residencia:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = dxEdit4
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Otro Teléfono:'
          Transparent = True
          DataSource = DSGeneral
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
          FocusControl = dxEdit5
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Teléfono Movil:'
          Transparent = True
          DataSource = DSGeneral
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'TELE_MOVIL'
          Field = 'TELE_MOVIL'
        end
        object PCPLookUpComboEdit12: TPCPLookUpComboEdit
          Left = 163
          Top = 22
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_PAIS'
          DataSource = DSGeneral
          KeyField = 'CONS_PAIS'
          ListField = 'NOMB_PAIS'
          ListSource = DSQPaises
          ParentCtl3D = False
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
          Enabled = False
          ImageIndex = 0
          Images = Imagenes_Botones_Pequenos
          SmartFocus = False
          TabOrder = 2
          TabStop = False
        end
        object PCPLookUpComboEdit13: TPCPLookUpComboEdit
          Left = 442
          Top = 22
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_DEPARTAMENTO'
          DataSource = DSGeneral
          KeyField = 'CONS_DEPARTAMENTO'
          ListField = 'NOMB_DEPARTAMENTO'
          ListSource = DSQDepartamentos
          ParentCtl3D = False
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
          Enabled = False
          ImageIndex = 0
          Images = Imagenes_Botones_Pequenos
          SmartFocus = False
          TabOrder = 4
          TabStop = False
        end
        object PCPLookUpComboEdit14: TPCPLookUpComboEdit
          Left = 163
          Top = 42
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_CIUDAD'
          DataSource = DSGeneral
          KeyField = 'CONS_CIUDAD'
          ListField = 'NOMB_CIUDAD'
          ListSource = DSQCiudades
          ParentCtl3D = False
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
          Enabled = False
          ImageIndex = 0
          Images = Imagenes_Botones_Pequenos
          SmartFocus = False
          TabOrder = 6
          TabStop = False
        end
        object dxEdit2: TdxDBEdit
          Left = 163
          Top = 62
          Width = 425
          TabOrder = 7
          DataField = 'DIRECCION'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxEdit3: TdxDBEdit
          Left = 163
          Top = 90
          Width = 145
          TabOrder = 8
          DataField = 'TELE_RESIDENCIA'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxEdit4: TdxDBEdit
          Left = 442
          Top = 90
          Width = 146
          TabOrder = 9
          DataField = 'TELE_OTRO'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxEdit5: TdxDBEdit
          Left = 163
          Top = 110
          Width = 145
          TabOrder = 10
          OnExit = CambiarPagina
          DataField = 'TELE_MOVIL'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
      end
    end
    object dxTabSheet2: TSCLTabSheet
      Color = 16578290
      ImageIndex = 54
      Caption = 'Datos Familiares'
      object Grid: TdxDBGrid
        Tag = -1
        Left = 0
        Top = 26
        Width = 760
        Height = 438
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_PERS_FAMILIAR'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        PopupMenu = PMFamiliares
        TabOrder = 0
        OnDblClick = GridDblClick
        DataSource = DSQFamiliares
        Filter.Criteria = {00000000}
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        object GridNUME_DOCUMENTO: TdxDBGridMaskColumn
          Width = 123
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NUME_DOCUMENTO'
        end
        object GridPRIM_APELLIDO: TdxDBGridMaskColumn
          Width = 86
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRIM_APELLIDO'
        end
        object GridSEGU_APELLIDO: TdxDBGridMaskColumn
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SEGU_APELLIDO'
        end
        object GridNOMBRES: TdxDBGridMaskColumn
          Width = 119
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMBRES'
        end
        object GridNOMB_PARENTESCO: TdxDBGridMaskColumn
          Width = 107
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_PARENTESCO'
        end
        object GridTELE_EMPRESA: TdxDBGridMaskColumn
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TELE_EMPRESA'
        end
        object GridDIRECCION: TdxDBGridMaskColumn
          Width = 293
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DIRECCION'
        end
        object GridTELE_RESIDENCIA: TdxDBGridMaskColumn
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TELE_RESIDENCIA'
        end
        object GridTELE_OTRO: TdxDBGridMaskColumn
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TELE_OTRO'
        end
        object GridTELE_MOVIL: TdxDBGridMaskColumn
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TELE_MOVIL'
        end
        object GridCORR_ELECTRONICO: TdxDBGridMaskColumn
          Width = 245
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CORR_ELECTRONICO'
        end
      end
      object TBXDock1: TTBXDock
        Left = 0
        Top = 0
        Width = 760
        Height = 26
        object TBXToolbar1: TTBXToolbar
          Left = 0
          Top = 0
          BorderStyle = bsNone
          Caption = 'TBXToolbar1'
          Stretch = True
          TabOrder = 0
          object TBXItem2: TTBXItem
            Action = Acti_Nuev_Familiar
            DisplayMode = nbdmImageAndText
            ImageIndex = 0
            Images = _fMDI.imag_pequenas
            InheritOptions = False
          end
          object TBXItem1: TTBXItem
            Action = Acti_Modi_Familiar
            DisplayMode = nbdmImageAndText
            ImageIndex = 1
            Images = _fMDI.imag_pequenas
            InheritOptions = False
          end
          object TBXItem3: TTBXItem
            Action = Acti_Elim_Familiar
            DisplayMode = nbdmImageAndText
            ImageIndex = 2
            Images = _fMDI.imag_pequenas
            InheritOptions = False
          end
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 576
    Width = 764
    inherited padr_beve_abajo: TBevel
      Width = 758
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 69
    Width = 764
    TabOrder = 6
  end
  inline pane_nombre: Tffra_mens_atencion [9]
    Width = 764
    Height = 24
    TabOrder = 7
    inherited padr_shap_top: TShape
      Width = 764
    end
    inherited padr_shap_bottom: TShape
      Top = 23
      Width = 764
    end
    inherited padr_shap_right: TShape
      Left = 763
      Height = 22
    end
    inherited padr_shap_left: TShape
      Height = 22
    end
    inherited fram_label: TAdvPanel
      Width = 762
      Height = 22
      FullHeight = 15
      inherited data_label: TDBText
        Left = 7
        Top = 5
        Width = 60
        DataField = 'NOMB_COMPLETO'
        DataSource = data_ventana
        Font.Style = [fsBold]
        ParentFont = False
        Visible = True
      end
    end
  end
  inherited padr_acciones: TActionList [10]
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
    inherited padr_acti_modificar: TDataSetEdit
      Enabled = True
      Visible = True
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList [11]
  end
  inherited Variables: TSCLPropiedadesForm [12]
  end
  inherited Tabla_Ventana: TTable [13]
    BeforeCancel = Tabla_VentanaBeforeCancel
    TableName = 'GLO_PERSONAL'
    object Tabla_VentanaCONS_PERSONAL: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object Tabla_VentanaCODI_PERSONAL: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERSONAL'
      Required = True
      Size = 12
    end
    object Tabla_VentanaPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'PRIM_APELLIDO'
      Required = True
      Size = 30
    end
    object Tabla_VentanaSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGU_APELLIDO'
      Required = True
      Size = 30
    end
    object Tabla_VentanaNOMBRES: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMBRES'
      Required = True
      Size = 40
    end
    object Tabla_VentanaNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombre Completo'
      FieldName = 'NOMB_COMPLETO'
      ReadOnly = True
      Size = 102
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
  inherited padr_estilo: TdxEditStyleController [14]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [15]
  end
  inherited padr_esti_panel: TAdvPanelStyler [16]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [17]
  end
  inherited imag_pequenas: TImageList [18]
  end
  inherited padr_imag_tem1_colo: TImageList [19]
  end
  inherited data_ventana: TDataSource [21]
    AutoEdit = False
  end
  object DSQSexos: TDataSource
    AutoEdit = False
    DataSet = QSexos
    Left = 44
    Top = 175
  end
  object DSQEstado_Civil: TDataSource
    AutoEdit = False
    DataSet = QEstado_Civil
    Left = 44
    Top = 203
  end
  object DSQTipo_Documento: TDataSource
    AutoEdit = False
    DataSet = QTipo_Documento
    Left = 44
    Top = 231
  end
  object DSQPaises: TDataSource
    AutoEdit = False
    DataSet = QPaises
    Left = 44
    Top = 259
  end
  object DSQDepartamentos: TDataSource
    AutoEdit = False
    DataSet = QDepartamentos
    Left = 44
    Top = 287
  end
  object DSQCiudades: TDataSource
    AutoEdit = False
    DataSet = QCiudades
    Left = 44
    Top = 315
  end
  object TGeneral: TTable
    BeforePost = TGeneralBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PERSONAL'
    MasterFields = 'CONS_PERSONAL'
    MasterSource = data_ventana
    TableName = 'GLO_PERS_GENERAL'
    Left = 16
    Top = 350
    object TGeneralCONS_PERSONAL: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Personal'
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object TGeneralCONS_PAIS: TIntegerField
      DisplayLabel = 'País'
      FieldName = 'CONS_PAIS'
      Required = True
    end
    object TGeneralCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
      Required = True
    end
    object TGeneralCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Ciudad'
      FieldName = 'CONS_CIUDAD'
      Required = True
    end
    object TGeneralDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 60
    end
    object TGeneralTELE_RESIDENCIA: TStringField
      DisplayLabel = 'Télefono Residencia'
      FieldName = 'TELE_RESIDENCIA'
      Size = 30
    end
    object TGeneralTELE_OTRO: TStringField
      DisplayLabel = 'Otro Télefono'
      FieldName = 'TELE_OTRO'
      Size = 30
    end
    object TGeneralTELE_MOVIL: TStringField
      DisplayLabel = 'Télefono Movil'
      FieldName = 'TELE_MOVIL'
      Size = 30
    end
    object TGeneralFECH_NACIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha de Nacimiento'
      FieldName = 'FECH_NACIMIENTO'
      Required = True
    end
    object TGeneralCONS_PAIS_NACIMIENTO: TIntegerField
      DisplayLabel = 'País Nacimiento'
      FieldName = 'CONS_PAIS_NACIMIENTO'
      Required = True
    end
    object TGeneralCONS_DEPA_NACIMIENTO: TIntegerField
      DisplayLabel = 'Departamento Nacimiento'
      FieldName = 'CONS_DEPA_NACIMIENTO'
      Required = True
    end
    object TGeneralCONS_CIUD_NACIMIENTO: TIntegerField
      DisplayLabel = 'Ciudad Nacimiento'
      FieldName = 'CONS_CIUD_NACIMIENTO'
      Required = True
    end
    object TGeneralCONS_PERS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'CONS_PERS_TIPO_DOCUMENTO'
      Required = True
    end
    object TGeneralNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número de Documento'
      FieldName = 'NUME_DOCUMENTO'
      Required = True
      Size = 12
    end
    object TGeneralFECH_EXPE_DOCUMENTO: TDateTimeField
      DisplayLabel = 'Fecha Expedición Documento'
      FieldName = 'FECH_EXPE_DOCUMENTO'
    end
    object TGeneralLUGA_EXPE_DOCUMENTO: TStringField
      DisplayLabel = 'Lugar Expedición Documento'
      FieldName = 'LUGA_EXPE_DOCUMENTO'
      Required = True
      Size = 30
    end
    object TGeneralNUME_PASAPORTE: TStringField
      DisplayLabel = 'Número Pasaporte'
      FieldName = 'NUME_PASAPORTE'
      Size = 12
    end
    object TGeneralFECH_EXPE_PASAPORTE: TDateTimeField
      DisplayLabel = 'Fecha Expedición Pasaporte'
      FieldName = 'FECH_EXPE_PASAPORTE'
    end
    object TGeneralFECH_VENC_PASAPORTE: TDateTimeField
      DisplayLabel = 'Fecha Vemcimiento Pasaporte'
      FieldName = 'FECH_VENC_PASAPORTE'
    end
    object TGeneralLUGA_EXPE_PASAPORTE: TStringField
      DisplayLabel = 'Lugar Expedición Pasaporte'
      FieldName = 'LUGA_EXPE_PASAPORTE'
      Size = 30
    end
    object TGeneralNUME_LIBR_MILITAR: TStringField
      DisplayLabel = 'Libreta Militar'
      FieldName = 'NUME_LIBR_MILITAR'
      Size = 12
    end
    object TGeneralFECH_EXPE_LIBR_MILITAR: TDateTimeField
      DisplayLabel = 'Fecha Expedición Libreta Militar'
      FieldName = 'FECH_EXPE_LIBR_MILITAR'
    end
    object TGeneralNUME_SEGU_SOCIAL: TStringField
      DisplayLabel = 'Número Seguro Social'
      FieldName = 'NUME_SEGU_SOCIAL'
      Size = 12
    end
    object TGeneralNUME_HIJOS: TIntegerField
      DisplayLabel = 'Número de Hijos'
      FieldName = 'NUME_HIJOS'
      Required = True
    end
    object TGeneralCONS_SEXO: TIntegerField
      DisplayLabel = 'Sexo'
      FieldName = 'CONS_SEXO'
      Required = True
    end
    object TGeneralCONS_ESTA_CIVIL: TIntegerField
      DisplayLabel = 'Estado Civil'
      FieldName = 'CONS_ESTA_CIVIL'
      Required = True
    end
    object TGeneralIMAGEN: TBlobField
      DisplayLabel = 'Imagen'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object TGeneralAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar Imagen'
      FieldName = 'AJUS_IMAGEN'
    end
    object TGeneralNUME_CONDUCCION: TStringField
      DisplayLabel = 'Número Conducción'
      FieldName = 'NUME_CONDUCCION'
      Size = 12
    end
    object TGeneralFECH_EXPE_CONDUCCION: TDateTimeField
      DisplayLabel = 'Fecha Expedicción Conducción'
      FieldName = 'FECH_EXPE_CONDUCCION'
    end
    object TGeneralFECH_VENC_CONDUCCION: TDateTimeField
      DisplayLabel = 'Fecha Vencimiento Conducción'
      FieldName = 'FECH_VENC_CONDUCCION'
    end
    object TGeneralCATE_CONDUCCION: TStringField
      DisplayLabel = 'Categoría Conducción'
      FieldName = 'CATE_CONDUCCION'
      Size = 12
    end
    object TGeneralLUGA_EXPE_CONDUCCION: TStringField
      DisplayLabel = 'Lugar Expedición Conducción'
      FieldName = 'LUGA_EXPE_CONDUCCION'
      Size = 30
    end
  end
  object DSGeneral: TDataSource
    DataSet = TGeneral
    OnStateChange = DSGeneralStateChange
    Left = 44
    Top = 350
  end
  object Fami_Acciones: TActionList
    Images = padr_imag_tem1_colo
    Left = 17
    Top = 143
    object Acti_Nuev_Familiar: TAction
      Category = 'DataSet'
      Caption = 'Nuevo Familiar'
      Hint = 'Nuevo Familiar'
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
      Hint = 'Eliminar Familiar'
      OnExecute = Acti_Elim_FamiliarExecute
    end
  end
  object QSexos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_SIS_SEXO_PERSONAL'
      'ORDER BY NOMB_SEXO')
    Left = 16
    Top = 175
  end
  object QEstado_Civil: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_ESTA_CIVIL'
      'ORDER BY NOMB_ESTA_CIVIL')
    Left = 16
    Top = 203
  end
  object QTipo_Documento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_PERS_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_TIPO_DOCUMENTO')
    Left = 16
    Top = 231
  end
  object QPaises: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PAISES'
      'ORDER BY NOMB_PAIS')
    Left = 16
    Top = 259
  end
  object QDepartamentos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQPaises
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_DEPARTAMENTOS'
      'WHERE CONS_PAIS = :CONS_PAIS'
      'ORDER BY NOMB_DEPARTAMENTO')
    Left = 16
    Top = 287
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PAIS'
        ParamType = ptUnknown
      end>
  end
  object QCiudades: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQDepartamentos
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_CIUDADES'
      'WHERE CONS_DEPARTAMENTO = :CONS_DEPARTAMENTO'
      'ORDER BY NOMB_CIUDAD')
    Left = 16
    Top = 315
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_DEPARTAMENTO'
        ParamType = ptUnknown
      end>
  end
  object QPais_Nacimiento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PAISES'
      'ORDER BY NOMB_PAIS')
    Left = 16
    Top = 414
  end
  object DSQPais_Nacimiento: TDataSource
    AutoEdit = False
    DataSet = QPais_Nacimiento
    Left = 44
    Top = 414
  end
  object QDepartamento_Nacimiento: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQPais_Nacimiento
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_DEPARTAMENTOS'
      'WHERE CONS_PAIS = :CONS_PAIS'
      'ORDER BY NOMB_DEPARTAMENTO')
    Left = 16
    Top = 442
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PAIS'
        ParamType = ptUnknown
      end>
  end
  object DSQDepartamento_Nacimiento: TDataSource
    AutoEdit = False
    DataSet = QDepartamento_Nacimiento
    Left = 44
    Top = 442
  end
  object QCiudades_Nacimiento: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQDepartamento_Nacimiento
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_CIUDADES'
      'WHERE CONS_DEPARTAMENTO = :CONS_DEPARTAMENTO'
      'ORDER BY NOMB_CIUDAD')
    Left = 16
    Top = 470
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_DEPARTAMENTO'
        ParamType = ptUnknown
      end>
  end
  object DSQCiudades_Nacimiento: TDataSource
    AutoEdit = False
    DataSet = QCiudades_Nacimiento
    Left = 44
    Top = 470
  end
  object PMFamiliares: TTBXPopupMenu
    Left = 47
    Top = 143
    object TBXItem6: TTBXItem
      Action = Acti_Nuev_Familiar
      ImageIndex = 0
      Images = _fMDI.imag_pequenas
    end
    object TBXItem5: TTBXItem
      Action = Acti_Modi_Familiar
      ImageIndex = 1
      Images = _fMDI.imag_pequenas
    end
    object TBXItem4: TTBXItem
      Action = Acti_Elim_Familiar
      ImageIndex = 2
      Images = _fMDI.imag_pequenas
    end
  end
  object QFamiliares: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_FAMILIARES(:CONS_PERSONAL)')
    Left = 16
    Top = 383
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end>
    object QFamiliaresCONS_PERS_FAMILIAR: TIntegerField
      DisplayLabel = 'Cons. Familiar'
      FieldName = 'CONS_PERS_FAMILIAR'
    end
    object QFamiliaresNOMB_PERS_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'NOMB_PERS_TIPO_DOCUMENTO'
      Size = 60
    end
    object QFamiliaresNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número de Documento'
      FieldName = 'NUME_DOCUMENTO'
    end
    object QFamiliaresPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'PRIM_APELLIDO'
      Size = 30
    end
    object QFamiliaresSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGU_APELLIDO'
      Size = 30
    end
    object QFamiliaresNOMBRES: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRES'
      Size = 39
    end
    object QFamiliaresNOMB_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'NOMB_SEXO'
      Size = 60
    end
    object QFamiliaresNOMB_PARENTESCO: TStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'NOMB_PARENTESCO'
      Size = 60
    end
    object QFamiliaresFECH_NACIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha Nacimiento'
      FieldName = 'FECH_NACIMIENTO'
    end
    object QFamiliaresNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldName = 'NOMB_PAIS'
      Size = 60
    end
    object QFamiliaresNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Size = 60
    end
    object QFamiliaresNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'NOMB_CIUDAD'
      Size = 60
    end
    object QFamiliaresDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 240
    end
    object QFamiliaresTELE_RESIDENCIA: TStringField
      DisplayLabel = 'Tel. Residencia'
      FieldName = 'TELE_RESIDENCIA'
    end
    object QFamiliaresTELE_OTRO: TStringField
      DisplayLabel = 'Tel. Otro'
      FieldName = 'TELE_OTRO'
    end
    object QFamiliaresTELE_MOVIL: TStringField
      DisplayLabel = 'Movil'
      FieldName = 'TELE_MOVIL'
    end
    object QFamiliaresOCUPACION: TStringField
      DisplayLabel = 'Ocupación'
      FieldName = 'OCUPACION'
      Size = 60
    end
    object QFamiliaresNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object QFamiliaresDIRE_EMPRESA: TStringField
      DisplayLabel = 'Dir. Empresa'
      FieldName = 'DIRE_EMPRESA'
      Size = 240
    end
    object QFamiliaresTELE_EMPRESA: TStringField
      DisplayLabel = 'Tel. Empresa'
      FieldName = 'TELE_EMPRESA'
    end
    object QFamiliaresCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo Electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Size = 120
    end
    object QFamiliaresFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object QFamiliaresUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object DSQFamiliares: TDataSource
    AutoEdit = False
    DataSet = QFamiliares
    Left = 45
    Top = 383
  end
  object QEliminar_Familiar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQFamiliares
    SQL.Strings = (
      'DELETE'
      'FROM GLO_PERS_FAMILIAR'
      'WHERE CONS_PERS_FAMILIAR = :CONS_PERS_FAMILIAR')
    Left = 80
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PERS_FAMILIAR'
        ParamType = ptUnknown
      end>
  end
  object QCentro_Costos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_CENT_COSTOS'
      'ORDER BY NOMB_PERS_CENT_COSTO')
    Left = 160
    Top = 466
  end
  object DSQCentro_Costos: TDataSource
    AutoEdit = False
    DataSet = QCentro_Costos
    Left = 192
    Top = 466
  end
  object QSub_Centros: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_COST_GRUPOS'
      'ORDER BY NOMB_COST_GRUPO')
    Left = 160
    Top = 498
  end
  object DSQSub_Centros: TDataSource
    AutoEdit = False
    DataSet = QSub_Centros
    Left = 192
    Top = 498
  end
  object quer_esta_personal: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT CONS_ESTADO'
      'FROM CON_GLO_PERS_ESTADO(:CONS_PERSONAL, "NOW")')
    Left = 257
    Top = 469
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end>
  end
end

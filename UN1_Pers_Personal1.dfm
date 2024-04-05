inherited FN1_Pers_Personal1: TFN1_Pers_Personal1
  Left = 230
  Top = 116
  Width = 772
  Height = 612
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 764
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
    Width = 764
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 764
  end
  inherited padr_pane_arriba: TPanel
    Width = 764
  end
  inherited padr_pane_sepa_1: TPanel
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
  object PCPrincipal: TdxPageControl [6]
    Left = 0
    Top = 54
    Width = 764
    Height = 521
    ActivePage = dxTabSheet3
    Align = alClient
    HideButtons = False
    HotTrack = False
    MultiLine = False
    OwnerDraw = False
    RaggedRight = False
    ScrollOpposite = False
    Style = dxtsFlatButtons
    TabHeight = 0
    TabOrder = 5
    TabPosition = dxtpTop
    TabWidth = 0
    object dxTabSheet3: TdxTabSheet
      Caption = 'Identificación'
      object PCPFrame4: TPCPFrame
        Left = 0
        Top = 0
        Width = 764
        Height = 312
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
          FocusControl = dxDBEdit1
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
          Top = 45
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
          Top = 67
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
          Top = 89
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
        object Label1: TSCLDBLabel
          Left = 50
          Top = 200
          Width = 113
          Height = 20
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
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Nombre Completo:'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel27: TSCLDBLabel
          Left = 48
          Top = 111
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
        object SCLDBLabel41: TSCLDBLabel
          Left = 48
          Top = 133
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
          Top = 155
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
          Top = 177
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
        object dxDBEdit1: TdxDBEdit
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
          Top = 45
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
          Top = 67
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
          Top = 89
          Width = 145
          TabOrder = 4
          DataField = 'NOMBRES'
          DataSource = data_ventana
          ReadOnly = False
          StyleController = padr_estilo
          StoredValues = 64
        end
        object dxDBEdit5: TdxDBEdit
          Left = 165
          Top = 200
          Width = 233
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsFlat
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtNone
          Style.HotTrack = False
          Style.Shadow = False
          TabOrder = 5
          TabStop = False
          DataField = 'NOMB_COMPLETO'
          DataSource = data_ventana
          ReadOnly = True
          StoredValues = 64
        end
        inline ffra_fotografiaDB1: Tffra_fotografiaDB
          Left = 400
          Top = 21
          Width = 265
          Height = 299
          TabOrder = 6
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
                DataField = 'AJUS_IMAGEN'
                DataSource = DSGeneral
              end
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 265
          end
        end
        object dxDateEdit1: TdxDBDateEdit
          Left = 163
          Top = 111
          Width = 145
          TabOrder = 7
          DataField = 'FECH_NACIMIENTO'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object PCPLookUpComboEdit18: TPCPLookUpComboEdit
          Left = 163
          Top = 133
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_SEXO'
          DataSource = DSGeneral
          KeyField = 'CONS_SEXO'
          ListField = 'NOMB_SEXO'
          ListSource = DSSexos
          TabOrder = 8
          DirectInput = False
        end
        object PCPLookUpComboEdit19: TPCPLookUpComboEdit
          Left = 163
          Top = 155
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_ESTA_CIVIL'
          DataSource = DSGeneral
          KeyField = 'CONS_ESTA_CIVIL'
          ListField = 'NOMB_ESTA_CIVIL'
          ListSource = DSEstado_Civil
          TabOrder = 9
          DirectInput = False
        end
        object dxDBEdit8: TdxDBEdit
          Left = 163
          Top = 177
          Width = 46
          TabOrder = 10
          DataField = 'NUME_HIJOS'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
      end
    end
    object dxTabSheet1: TdxTabSheet
      Caption = 'Documentación'
      object PCPFrame1: TPCPFrame
        Left = 0
        Top = 0
        Width = 764
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
        TabOrder = 0
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
          Top = 44
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
          Top = 44
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
          DataField = 'CONS_PERS_TIPO_DOCUMENTO'
          DataSource = DSGeneral
          KeyField = 'CONS_PERS_TIPO_DOCUMENTO'
          ListField = 'NOMB_PERS_TIPO_DOCUMENTO'
          ListSource = DSTipo_Documento
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
          Top = 44
          Width = 145
          TabOrder = 3
          DataField = 'FECH_EXPE_DOCUMENTO'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxEdit6: TdxDBEdit
          Left = 442
          Top = 44
          Width = 145
          TabOrder = 4
          DataField = 'LUGA_EXPE_DOCUMENTO'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object SCLButton8: TSCLButton
          Left = 313
          Top = 22
          Width = 20
          Height = 20
          TabOrder = 5
          TabStop = False
          Down = False
          Images = Imagenes_Botones_Pequenos
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
      object PCPFrame2: TPCPFrame
        Left = 0
        Top = 65
        Width = 764
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
          Top = 44
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
          Top = 44
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
          Top = 44
          Width = 145
          TabOrder = 3
          DataField = 'LUGA_EXPE_PASAPORTE'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxDateEdit4: TdxDBDateEdit
          Left = 442
          Top = 44
          Width = 145
          TabOrder = 4
          DataField = 'FECH_VENC_PASAPORTE'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
      end
      object PCPFrame3: TPCPFrame
        Left = 0
        Top = 130
        Width = 764
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
        TabOrder = 2
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
          DataField = 'FECH_EXPE_LIBR_MILITAR'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
      end
    end
    object dxTabSheet2: TdxTabSheet
      Caption = 'Datos Familiares'
      object PCFamiliares: TdxPageControl
        Tag = -1
        Left = 0
        Top = 0
        Width = 764
        Height = 246
        ActivePage = dxTabSheet6
        Align = alTop
        HideButtons = False
        HotTrack = False
        MultiLine = False
        OwnerDraw = False
        RaggedRight = False
        ScrollOpposite = False
        Style = dxtsFlatButtons
        TabHeight = 0
        TabOrder = 0
        TabPosition = dxtpTop
        TabWidth = 0
        object dxTabSheet6: TdxTabSheet
          Tag = -1
          Caption = 'Idntificación'
          object PCPFrame11: TPCPFrame
            Left = 0
            Top = 0
            Width = 764
            Height = 153
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
            object SCLDBLabel44: TSCLDBLabel
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
              FocusControl = PCPLookUpComboEdit20
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Tipo Documento:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CONS_PERS_TIPO_DOCUMENTO'
              Field = 'CONS_PERS_TIPO_DOCUMENTO'
            end
            object SCLDBLabel45: TSCLDBLabel
              Left = 336
              Top = 21
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
              FocusControl = dxEdit13
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Número Documento:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'NUME_DOCUMENTO'
              Field = 'NUME_DOCUMENTO'
            end
            object SCLDBLabel46: TSCLDBLabel
              Left = 64
              Top = 44
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
              FocusControl = dxEdit14
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Primer Apellido:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'PRIM_APELLIDO'
              Field = 'PRIM_APELLIDO'
            end
            object SCLDBLabel47: TSCLDBLabel
              Left = 336
              Top = 44
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
              FocusControl = dxEdit15
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Segundo Apellido:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'SEGU_APELLIDO'
              Field = 'SEGU_APELLIDO'
            end
            object SCLDBLabel48: TSCLDBLabel
              Left = 64
              Top = 66
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
              FocusControl = dxEdit16
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Nombres:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'NOMBRES'
              Field = 'NOMBRES'
            end
            object SCLDBLabel49: TSCLDBLabel
              Left = 64
              Top = 88
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
              FocusControl = PCPLookUpComboEdit21
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Sexo:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CONS_SEXO'
              Field = 'CONS_SEXO'
            end
            object SCLDBLabel50: TSCLDBLabel
              Left = 336
              Top = 88
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
              FocusControl = PCPLookUpComboEdit22
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Parentesco:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CONS_PARENTESCO'
              Field = 'CONS_PARENTESCO'
            end
            object SCLDBLabel51: TSCLDBLabel
              Left = 336
              Top = 66
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
              FocusControl = dxDateEdit6
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Fecha Nacimiento:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'FECH_NACIMIENTO'
              Field = 'FECH_NACIMIENTO'
            end
            object SCLDBLabel59: TSCLDBLabel
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
              FocusControl = dxEdit21
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Ocupación:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'OCUPACION'
              Field = 'OCUPACION'
            end
            object SCLDBLabel63: TSCLDBLabel
              Left = 56
              Top = 132
              Width = 105
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
              FocusControl = dxEdit25
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Correo Electrónico:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CORR_ELECTRONICO'
              Field = 'CORR_ELECTRONICO'
            end
            object PCPLookUpComboEdit20: TPCPLookUpComboEdit
              Left = 163
              Top = 22
              Width = 145
              Height = 21
              DropDownCount = 8
              DataField = 'CONS_PERS_TIPO_DOCUMENTO'
              DataSource = DSFamiliares
              KeyField = 'CONS_PERS_TIPO_DOCUMENTO'
              ListField = 'NOMB_PERS_TIPO_DOCUMENTO'
              ListSource = DSTipo_Documento
              TabOrder = 1
              DirectInput = False
            end
            object SCLButton18: TSCLButton
              Left = 313
              Top = 22
              Width = 20
              Height = 20
              TabOrder = 2
              TabStop = False
              Down = False
              Images = Imagenes_Botones_Pequenos
              ImageIndex = 0
              Flat = True
              Color = clBtnFace
              Style = bsNew
              BackColor = clBtnFace
              ColorBordeBoton = clBtnShadow
              TipoPintadoBoton = tpbContorno
              RedondeoBoton = 4
            end
            object dxEdit13: TdxDBEdit
              Left = 442
              Top = 21
              Width = 145
              TabOrder = 3
              DataField = 'NUME_DOCUMENTO'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
            object dxEdit14: TdxDBEdit
              Left = 163
              Top = 44
              Width = 145
              TabOrder = 4
              DataField = 'PRIM_APELLIDO'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
            object dxEdit15: TdxDBEdit
              Left = 442
              Top = 44
              Width = 145
              TabOrder = 5
              DataField = 'SEGU_APELLIDO'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
            object dxEdit16: TdxDBEdit
              Left = 163
              Top = 66
              Width = 145
              TabOrder = 6
              DataField = 'NOMBRES'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
            object PCPLookUpComboEdit21: TPCPLookUpComboEdit
              Left = 163
              Top = 88
              Width = 145
              Height = 21
              DropDownCount = 8
              DataField = 'CONS_SEXO'
              DataSource = DSFamiliares
              KeyField = 'CONS_SEXO'
              ListField = 'NOMB_SEXO'
              ListSource = DSSexos
              TabOrder = 8
              DirectInput = False
            end
            object PCPLookUpComboEdit22: TPCPLookUpComboEdit
              Left = 442
              Top = 88
              Width = 145
              Height = 21
              DropDownCount = 8
              DataField = 'CONS_PARENTESCO'
              DataSource = DSFamiliares
              KeyField = 'CONS_PARENTESCO'
              ListField = 'NOMB_PARENTESCO'
              ListSource = DSParentescos
              TabOrder = 9
              DirectInput = False
            end
            object SCLButton19: TSCLButton
              Left = 591
              Top = 88
              Width = 20
              Height = 20
              TabOrder = 12
              TabStop = False
              Down = False
              Images = Imagenes_Botones_Pequenos
              ImageIndex = 0
              Flat = True
              Color = clBtnFace
              Style = bsNew
              BackColor = clBtnFace
              ColorBordeBoton = clBtnShadow
              TipoPintadoBoton = tpbContorno
              RedondeoBoton = 4
            end
            object dxDateEdit6: TdxDBDateEdit
              Left = 442
              Top = 66
              Width = 145
              TabOrder = 7
              DataField = 'FECH_NACIMIENTO'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
            object dxEdit21: TdxDBEdit
              Left = 163
              Top = 110
              Width = 145
              TabOrder = 10
              DataField = 'OCUPACION'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
            object dxEdit25: TdxDBEdit
              Left = 163
              Top = 132
              Width = 425
              TabOrder = 11
              DataField = 'CORR_ELECTRONICO'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
          end
        end
        object dxTabSheet7: TdxTabSheet
          Caption = 'Ubicación y Empresa'
          object PCPFrame12: TPCPFrame
            Left = 0
            Top = 0
            Width = 764
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
            Caption = 'Ubicación'
            Titulo_Color = 16244694
            TipoFrame = tfGrupo
            object SCLDBLabel52: TSCLDBLabel
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
              FocusControl = PCPLookUpComboEdit23
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'País:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CONS_PAIS'
              Field = 'CONS_PAIS'
            end
            object SCLDBLabel53: TSCLDBLabel
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
              FocusControl = PCPLookUpComboEdit24
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Departamento:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CONS_DEPARTAMENTO'
              Field = 'CONS_DEPARTAMENTO'
            end
            object SCLDBLabel54: TSCLDBLabel
              Left = 64
              Top = 44
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
              FocusControl = PCPLookUpComboEdit25
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Ciudad:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'CONS_CIUDAD'
              Field = 'CONS_CIUDAD'
            end
            object SCLDBLabel55: TSCLDBLabel
              Left = 64
              Top = 66
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
              FocusControl = dxEdit17
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Dirección:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'DIRECCION'
              Field = 'DIRECCION'
            end
            object SCLDBLabel56: TSCLDBLabel
              Left = 48
              Top = 88
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
              FocusControl = dxEdit18
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Teléfono Residencia:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'TELE_RESIDENCIA'
              Field = 'TELE_RESIDENCIA'
            end
            object SCLDBLabel57: TSCLDBLabel
              Left = 336
              Top = 88
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
              FocusControl = dxEdit19
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Otro Teléfono:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'TELE_OTRO'
              Field = 'TELE_OTRO'
            end
            object SCLDBLabel58: TSCLDBLabel
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
              FocusControl = dxEdit20
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Teléfono Movil:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'TELE_MOVIL'
              Field = 'TELE_MOVIL'
            end
            object PCPLookUpComboEdit23: TPCPLookUpComboEdit
              Left = 163
              Top = 22
              Width = 145
              Height = 21
              DropDownCount = 8
              DataField = 'CONS_PAIS'
              DataSource = DSFamiliares
              KeyField = 'CONS_PAIS'
              ListField = 'NOMB_PAIS'
              ListSource = DSPaises
              TabOrder = 1
              DirectInput = False
            end
            object PCPLookUpComboEdit24: TPCPLookUpComboEdit
              Left = 442
              Top = 22
              Width = 145
              Height = 21
              DropDownCount = 8
              DataField = 'CONS_DEPARTAMENTO'
              DataSource = DSFamiliares
              KeyField = 'CONS_DEPARTAMENTO'
              ListField = 'NOMB_DEPARTAMENTO'
              ListSource = DSDepartamentos
              TabOrder = 2
              DirectInput = False
            end
            object PCPLookUpComboEdit25: TPCPLookUpComboEdit
              Left = 163
              Top = 44
              Width = 145
              Height = 21
              DropDownCount = 8
              DataField = 'CONS_CIUDAD'
              DataSource = DSFamiliares
              KeyField = 'CONS_CIUDAD'
              ListField = 'NOMB_CIUDAD'
              ListSource = DSCiudades
              TabOrder = 3
              DirectInput = False
            end
            object SCLButton20: TSCLButton
              Left = 313
              Top = 22
              Width = 20
              Height = 20
              TabOrder = 4
              TabStop = False
              Down = False
              Images = Imagenes_Botones_Pequenos
              ImageIndex = 0
              Flat = True
              Color = clBtnFace
              Style = bsNew
              BackColor = clBtnFace
              ColorBordeBoton = clBtnShadow
              TipoPintadoBoton = tpbContorno
              RedondeoBoton = 4
            end
            object SCLButton21: TSCLButton
              Left = 591
              Top = 22
              Width = 20
              Height = 20
              TabOrder = 5
              TabStop = False
              Down = False
              Images = Imagenes_Botones_Pequenos
              ImageIndex = 0
              Flat = True
              Color = clBtnFace
              Style = bsNew
              BackColor = clBtnFace
              ColorBordeBoton = clBtnShadow
              TipoPintadoBoton = tpbContorno
              RedondeoBoton = 4
            end
            object SCLButton22: TSCLButton
              Left = 313
              Top = 44
              Width = 20
              Height = 20
              TabOrder = 6
              TabStop = False
              Down = False
              Images = Imagenes_Botones_Pequenos
              ImageIndex = 0
              Flat = True
              Color = clBtnFace
              Style = bsNew
              BackColor = clBtnFace
              ColorBordeBoton = clBtnShadow
              TipoPintadoBoton = tpbContorno
              RedondeoBoton = 4
            end
            object dxEdit17: TdxDBEdit
              Left = 163
              Top = 66
              Width = 425
              TabOrder = 7
              DataField = 'DIRECCION'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
            object dxEdit18: TdxDBEdit
              Left = 163
              Top = 88
              Width = 127
              TabOrder = 8
              DataField = 'TELE_RESIDENCIA'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
            object dxEdit19: TdxDBEdit
              Left = 442
              Top = 88
              Width = 145
              TabOrder = 9
              DataField = 'TELE_OTRO'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
            object dxEdit20: TdxDBEdit
              Left = 163
              Top = 110
              Width = 127
              TabOrder = 10
              DataField = 'TELE_MOVIL'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
          end
          object PCPFrame13: TPCPFrame
            Left = 0
            Top = 131
            Width = 764
            Height = 97
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
            Caption = 'Empresa'
            Titulo_Color = 16244694
            TipoFrame = tfGrupo
            object SCLDBLabel60: TSCLDBLabel
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
              FocusControl = dxEdit22
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Nombre:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'NOMB_EMPRESA'
              Field = 'NOMB_EMPRESA'
            end
            object SCLDBLabel61: TSCLDBLabel
              Left = 64
              Top = 44
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
              FocusControl = dxEdit23
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Dirección:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'DIRE_EMPRESA'
              Field = 'DIRE_EMPRESA'
            end
            object SCLDBLabel62: TSCLDBLabel
              Left = 64
              Top = 66
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
              FocusControl = dxEdit24
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Teléfonos:'
              Transparent = True
              DataSource = DSFamiliares
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
              DataField = 'TELE_EMPRESA'
              Field = 'TELE_EMPRESA'
            end
            object dxEdit22: TdxDBEdit
              Left = 163
              Top = 22
              Width = 296
              TabOrder = 1
              DataField = 'NOMB_EMPRESA'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
            object dxEdit23: TdxDBEdit
              Left = 163
              Top = 44
              Width = 296
              TabOrder = 2
              DataField = 'DIRE_EMPRESA'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
            object dxEdit24: TdxDBEdit
              Left = 163
              Top = 66
              Width = 145
              TabOrder = 3
              DataField = 'TELE_EMPRESA'
              DataSource = DSFamiliares
              StyleController = padr_estilo
            end
          end
        end
      end
      object DBFamiliares: TdxDBGrid
        Tag = -1
        Left = 0
        Top = 246
        Width = 764
        Height = 250
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
        TabOrder = 1
        DataSource = DSFamiliares
        Filter.Criteria = {00000000}
        HideSelection = True
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
        object DBFamiliaresNOMB_PERS_TIPO_DOCUMENTO: TdxDBGridMaskColumn
          Width = 168
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_PERS_TIPO_DOCUMENTO'
        end
        object DBFamiliaresNUME_DOCUMENTO: TdxDBGridMaskColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NUME_DOCUMENTO'
        end
        object DBFamiliaresPRIM_APELLIDO: TdxDBGridMaskColumn
          Width = 86
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRIM_APELLIDO'
        end
        object DBFamiliaresSEGU_APELLIDO: TdxDBGridMaskColumn
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SEGU_APELLIDO'
        end
        object DBFamiliaresNOMBRES: TdxDBGridMaskColumn
          Width = 185
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMBRES'
        end
        object DBFamiliaresNOMB_SEXO: TdxDBGridMaskColumn
          Width = 96
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_SEXO'
        end
        object DBFamiliaresNOMB_PARENTESCO: TdxDBGridMaskColumn
          Width = 126
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_PARENTESCO'
        end
        object DBFamiliaresFECH_NACIMIENTO: TdxDBGridDateColumn
          Width = 97
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FECH_NACIMIENTO'
        end
        object DBFamiliaresNOMB_PAIS: TdxDBGridMaskColumn
          Width = 108
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_PAIS'
        end
        object DBFamiliaresNOMB_DEPARTAMENTO: TdxDBGridMaskColumn
          Width = 144
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_DEPARTAMENTO'
        end
        object DBFamiliaresNOMB_CIUDAD: TdxDBGridMaskColumn
          Width = 138
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_CIUDAD'
        end
        object DBFamiliaresDIRECCION: TdxDBGridMaskColumn
          Width = 293
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DIRECCION'
        end
        object DBFamiliaresTELE_RESIDENCIA: TdxDBGridMaskColumn
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TELE_RESIDENCIA'
        end
        object DBFamiliaresTELE_OTRO: TdxDBGridMaskColumn
          Width = 114
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
        object DBFamiliaresOCUPACION: TdxDBGridMaskColumn
          Width = 364
          BandIndex = 0
          RowIndex = 0
          FieldName = 'OCUPACION'
        end
        object DBFamiliaresCORR_ELECTRONICO: TdxDBGridMaskColumn
          Width = 245
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CORR_ELECTRONICO'
        end
        object DBFamiliaresNOMB_EMPRESA: TdxDBGridMaskColumn
          Width = 242
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_EMPRESA'
        end
        object DBFamiliaresDIRE_EMPRESA: TdxDBGridMaskColumn
          Width = 293
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DIRE_EMPRESA'
        end
        object DBFamiliaresTELE_EMPRESA: TdxDBGridMaskColumn
          Width = 114
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TELE_EMPRESA'
        end
      end
      object SCLButton23: TSCLButton
        Left = 490
        Top = 200
        Width = 40
        Height = 40
        Action = Acti_Nuevo
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        Down = False
        Images = padr_imag_tem1_colo
        ImageIndex = 0
        Flat = True
        Color = 16578290
        Style = bsNew
        BackColor = 16578290
        ColorBordeBoton = clBtnShadow
        TipoPintadoBoton = tpbContorno
        RedondeoBoton = 4
      end
      object SCLButton24: TSCLButton
        Left = 533
        Top = 200
        Width = 40
        Height = 40
        Action = Acti_Grabar
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        Down = False
        Images = padr_imag_tem1_colo
        ImageIndex = 4
        Flat = True
        Color = 16578290
        Style = bsNew
        BackColor = 16578290
        ColorBordeBoton = clBtnShadow
        TipoPintadoBoton = tpbContorno
        RedondeoBoton = 4
      end
      object SCLButton25: TSCLButton
        Left = 576
        Top = 200
        Width = 40
        Height = 40
        Action = Acti_Cancelar
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TabStop = False
        Down = False
        Images = padr_imag_tem1_colo
        ImageIndex = 5
        Flat = True
        Color = 16578290
        Style = bsNew
        BackColor = 16578290
        ColorBordeBoton = clBtnShadow
        TipoPintadoBoton = tpbContorno
        RedondeoBoton = 4
      end
      object SCLButton26: TSCLButton
        Left = 619
        Top = 200
        Width = 40
        Height = 40
        Action = Acti_Eliminar
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TabStop = False
        Down = False
        Images = padr_imag_tem1_colo
        ImageIndex = 2
        Flat = True
        Color = 16578290
        Style = bsNew
        BackColor = 16578290
        ColorBordeBoton = clBtnShadow
        TipoPintadoBoton = tpbContorno
        RedondeoBoton = 4
      end
    end
    object dxTabSheet4: TdxTabSheet
      Caption = 'Ubicación'
      object PCPFrame6: TPCPFrame
        Left = 0
        Top = 0
        Width = 764
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
        TabOrder = 0
        Caption = 'Nacimiento'
        Titulo_Color = 16244694
        TipoFrame = tfGrupo
        object SCLDBLabel28: TSCLDBLabel
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
        object SCLDBLabel29: TSCLDBLabel
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
        object SCLDBLabel30: TSCLDBLabel
          Left = 64
          Top = 44
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
        object PCPLookUpComboEdit17: TPCPLookUpComboEdit
          Left = 163
          Top = 22
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_PAIS_NACIMIENTO'
          DataSource = DSGeneral
          KeyField = 'CONS_PAIS'
          ListField = 'NOMB_PAIS'
          ListSource = DSPaises
          TabOrder = 1
          DirectInput = False
        end
        object PCPLookUpComboEdit16: TPCPLookUpComboEdit
          Left = 442
          Top = 22
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_DEPA_NACIMIENTO'
          DataSource = DSGeneral
          KeyField = 'CONS_DEPARTAMENTO'
          ListField = 'NOMB_DEPARTAMENTO'
          ListSource = DSDepartamentos
          TabOrder = 2
          DirectInput = False
        end
        object PCPLookUpComboEdit15: TPCPLookUpComboEdit
          Left = 163
          Top = 44
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_CIUD_NACIMIENTO'
          DataSource = DSGeneral
          KeyField = 'CONS_CIUDAD'
          ListField = 'NOMB_CIUDAD'
          ListSource = DSCiudades
          TabOrder = 3
          DirectInput = False
        end
        object SCLButton14: TSCLButton
          Left = 591
          Top = 22
          Width = 20
          Height = 20
          TabOrder = 4
          TabStop = False
          Down = False
          Images = Imagenes_Botones_Pequenos
          ImageIndex = 0
          Flat = True
          Color = clBtnFace
          Style = bsNew
          BackColor = clBtnFace
          ColorBordeBoton = clBtnShadow
          TipoPintadoBoton = tpbContorno
          RedondeoBoton = 4
        end
        object SCLButton13: TSCLButton
          Left = 313
          Top = 22
          Width = 20
          Height = 20
          TabOrder = 5
          TabStop = False
          Down = False
          Images = Imagenes_Botones_Pequenos
          ImageIndex = 0
          Flat = True
          Color = clBtnFace
          Style = bsNew
          BackColor = clBtnFace
          ColorBordeBoton = clBtnShadow
          TipoPintadoBoton = tpbContorno
          RedondeoBoton = 4
        end
        object SCLButton12: TSCLButton
          Left = 313
          Top = 44
          Width = 20
          Height = 20
          TabOrder = 6
          TabStop = False
          Down = False
          Images = Imagenes_Botones_Pequenos
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
      object PCPFrame5: TPCPFrame
        Left = 0
        Top = 65
        Width = 764
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
        TabOrder = 1
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
          Top = 44
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
          Top = 66
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
          Top = 88
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
          Top = 88
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
          DataField = 'CONS_PAIS'
          DataSource = DSGeneral
          KeyField = 'CONS_PAIS'
          ListField = 'NOMB_PAIS'
          ListSource = DSPaises
          TabOrder = 1
          DirectInput = False
        end
        object SCLButton9: TSCLButton
          Left = 313
          Top = 22
          Width = 20
          Height = 20
          TabOrder = 2
          TabStop = False
          Down = False
          Images = Imagenes_Botones_Pequenos
          ImageIndex = 0
          Flat = True
          Color = clBtnFace
          Style = bsNew
          BackColor = clBtnFace
          ColorBordeBoton = clBtnShadow
          TipoPintadoBoton = tpbContorno
          RedondeoBoton = 4
        end
        object PCPLookUpComboEdit13: TPCPLookUpComboEdit
          Left = 442
          Top = 22
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_DEPARTAMENTO'
          DataSource = DSGeneral
          KeyField = 'CONS_DEPARTAMENTO'
          ListField = 'NOMB_DEPARTAMENTO'
          ListSource = DSDepartamentos
          TabOrder = 3
          DirectInput = False
        end
        object SCLButton10: TSCLButton
          Left = 591
          Top = 22
          Width = 20
          Height = 20
          TabOrder = 4
          TabStop = False
          Down = False
          Images = Imagenes_Botones_Pequenos
          ImageIndex = 0
          Flat = True
          Color = clBtnFace
          Style = bsNew
          BackColor = clBtnFace
          ColorBordeBoton = clBtnShadow
          TipoPintadoBoton = tpbContorno
          RedondeoBoton = 4
        end
        object PCPLookUpComboEdit14: TPCPLookUpComboEdit
          Left = 163
          Top = 44
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_CIUDAD'
          DataSource = DSGeneral
          KeyField = 'CONS_CIUDAD'
          ListField = 'NOMB_CIUDAD'
          ListSource = DSCiudades
          TabOrder = 5
          DirectInput = False
        end
        object SCLButton11: TSCLButton
          Left = 313
          Top = 44
          Width = 20
          Height = 20
          TabOrder = 6
          TabStop = False
          Down = False
          Images = Imagenes_Botones_Pequenos
          ImageIndex = 0
          Flat = True
          Color = clBtnFace
          Style = bsNew
          BackColor = clBtnFace
          ColorBordeBoton = clBtnShadow
          TipoPintadoBoton = tpbContorno
          RedondeoBoton = 4
        end
        object dxEdit2: TdxDBEdit
          Left = 163
          Top = 66
          Width = 425
          TabOrder = 7
          DataField = 'DIRECCION'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxEdit3: TdxDBEdit
          Left = 163
          Top = 88
          Width = 145
          TabOrder = 8
          DataField = 'TELE_RESIDENCIA'
          DataSource = DSGeneral
          StyleController = padr_estilo
        end
        object dxEdit4: TdxDBEdit
          Left = 442
          Top = 88
          Width = 145
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
          DataField = 'TELE_MOVIL'
          DataSource = DSGeneral
          StyleController = padr_estilo
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
    Width = 764
    TabOrder = 6
  end
  inherited Tabla_Ventana: TTable
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
  object TSexos: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_SEXOS'
    Left = 18
    Top = 175
  end
  object TEstado_Civil: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_ESTA_CIVIL'
    Left = 18
    Top = 203
  end
  object DSSexos: TDataSource
    AutoEdit = False
    DataSet = TSexos
    Left = 50
    Top = 175
  end
  object DSEstado_Civil: TDataSource
    AutoEdit = False
    DataSet = TEstado_Civil
    Left = 50
    Top = 203
  end
  object TTipo_Documento: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_PERS_TIPO_DOCUMENTO'
    Left = 18
    Top = 231
  end
  object DSTipo_Documento: TDataSource
    AutoEdit = False
    DataSet = TTipo_Documento
    Left = 50
    Top = 231
  end
  object TParentescos: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_PARENTESCOS'
    Left = 18
    Top = 259
  end
  object DSParentescos: TDataSource
    AutoEdit = False
    DataSet = TParentescos
    Left = 50
    Top = 259
  end
  object TPaises: TTable
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PAISES'
    Left = 18
    Top = 291
  end
  object DSPaises: TDataSource
    AutoEdit = False
    DataSet = TPaises
    Left = 50
    Top = 291
  end
  object TDepartamentos: TTable
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PAIS'
    MasterFields = 'CONS_PAIS'
    MasterSource = DSPaises
    TableName = 'GLO_DEPARTAMENTOS'
    Left = 18
    Top = 319
  end
  object DSDepartamentos: TDataSource
    AutoEdit = False
    DataSet = TDepartamentos
    Left = 50
    Top = 319
  end
  object TCiudades: TTable
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PAIS;CONS_DEPARTAMENTO'
    MasterFields = 'CONS_PAIS;CONS_DEPARTAMENTO'
    MasterSource = DSDepartamentos
    TableName = 'GLO_CIUDADES'
    Left = 18
    Top = 347
  end
  object DSCiudades: TDataSource
    AutoEdit = False
    DataSet = TCiudades
    Left = 50
    Top = 347
  end
  object TGeneral: TTable
    BeforePost = TGeneralBeforePost
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PERS_GENERAL'
    Left = 106
    Top = 246
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
      Size = 12
    end
    object TGeneralFECH_EXPE_DOCUMENTO: TDateTimeField
      DisplayLabel = 'Fecha Expedición Documento'
      FieldName = 'FECH_EXPE_DOCUMENTO'
    end
    object TGeneralLUGA_EXPE_DOCUMENTO: TStringField
      DisplayLabel = 'Lugar Expedición Documento'
      FieldName = 'LUGA_EXPE_DOCUMENTO'
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
  end
  object DSGeneral: TDataSource
    DataSet = TGeneral
    OnStateChange = DSGeneralStateChange
    Left = 138
    Top = 246
  end
  object TFamiliares: TTable
    BeforePost = TFamiliaresBeforePost
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_PERS_FAMILIAR'
    Left = 106
    Top = 275
    object TFamiliaresCONS_PERSONAL: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object TFamiliaresCONS_PERS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'No. Tipo Documento'
      FieldName = 'CONS_PERS_TIPO_DOCUMENTO'
      Required = True
    end
    object TFamiliaresNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
      Required = True
    end
    object TFamiliaresPRIM_APELLIDO: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'PRIM_APELLIDO'
      Required = True
      Size = 30
    end
    object TFamiliaresSEGU_APELLIDO: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'SEGU_APELLIDO'
      Required = True
      Size = 30
    end
    object TFamiliaresNOMBRES: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMBRES'
      Required = True
      Size = 40
    end
    object TFamiliaresCONS_SEXO: TIntegerField
      DisplayLabel = 'No. Sexo'
      FieldName = 'CONS_SEXO'
      Required = True
    end
    object TFamiliaresCONS_PARENTESCO: TIntegerField
      DisplayLabel = 'No. Parentesco'
      FieldName = 'CONS_PARENTESCO'
      Required = True
    end
    object TFamiliaresFECH_NACIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha Nacimiento'
      FieldName = 'FECH_NACIMIENTO'
    end
    object TFamiliaresCONS_PAIS: TIntegerField
      DisplayLabel = 'No. País'
      FieldName = 'CONS_PAIS'
      Required = True
    end
    object TFamiliaresCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'No. Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
      Required = True
    end
    object TFamiliaresCONS_CIUDAD: TIntegerField
      DisplayLabel = 'No. Ciudad'
      FieldName = 'CONS_CIUDAD'
      Required = True
    end
    object TFamiliaresDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 240
    end
    object TFamiliaresTELE_RESIDENCIA: TStringField
      DisplayLabel = 'Télefono Residencia'
      FieldName = 'TELE_RESIDENCIA'
    end
    object TFamiliaresTELE_OTRO: TStringField
      DisplayLabel = 'Otro Télefono'
      FieldName = 'TELE_OTRO'
    end
    object TFamiliaresTELE_MOVIL: TStringField
      DisplayLabel = 'Télefono Movil'
      FieldName = 'TELE_MOVIL'
    end
    object TFamiliaresOCUPACION: TStringField
      DisplayLabel = 'Ocupación'
      FieldName = 'OCUPACION'
      Size = 60
    end
    object TFamiliaresNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object TFamiliaresDIRE_EMPRESA: TStringField
      DisplayLabel = 'Dirección Empresa'
      FieldName = 'DIRE_EMPRESA'
      Size = 240
    end
    object TFamiliaresTELE_EMPRESA: TStringField
      DisplayLabel = 'Télefono Empresa'
      FieldName = 'TELE_EMPRESA'
    end
    object TFamiliaresCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo Electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Size = 120
    end
    object TFamiliaresNOMB_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldKind = fkLookup
      FieldName = 'NOMB_SEXO'
      LookupDataSet = TSexos
      LookupKeyFields = 'CONS_SEXO'
      LookupResultField = 'NOMB_SEXO'
      KeyFields = 'CONS_SEXO'
      Size = 60
      Lookup = True
    end
    object TFamiliaresNOMB_PARENTESCO: TStringField
      DisplayLabel = 'Parentesco'
      FieldKind = fkLookup
      FieldName = 'NOMB_PARENTESCO'
      LookupDataSet = TParentescos
      LookupKeyFields = 'CONS_PARENTESCO'
      LookupResultField = 'NOMB_PARENTESCO'
      KeyFields = 'CONS_PARENTESCO'
      Size = 60
      Lookup = True
    end
    object TFamiliaresNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldKind = fkLookup
      FieldName = 'NOMB_PAIS'
      LookupDataSet = TPaises
      LookupKeyFields = 'CONS_PAIS'
      LookupResultField = 'NOMB_PAIS'
      KeyFields = 'CONS_PAIS'
      Size = 60
      Lookup = True
    end
    object TFamiliaresNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldKind = fkLookup
      FieldName = 'NOMB_DEPARTAMENTO'
      LookupDataSet = TDepartamentos
      LookupKeyFields = 'CONS_DEPARTAMENTO'
      LookupResultField = 'NOMB_DEPARTAMENTO'
      KeyFields = 'CONS_DEPARTAMENTO'
      Size = 60
      Lookup = True
    end
    object TFamiliaresNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldKind = fkLookup
      FieldName = 'NOMB_CIUDAD'
      LookupDataSet = TCiudades
      LookupKeyFields = 'CONS_CIUDAD'
      LookupResultField = 'NOMB_CIUDAD'
      KeyFields = 'CONS_CIUDAD'
      Size = 60
      Lookup = True
    end
    object TFamiliaresNOMB_PERS_TIPO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldKind = fkLookup
      FieldName = 'NOMB_PERS_TIPO_DOCUMENTO'
      LookupDataSet = TTipo_Documento
      LookupKeyFields = 'CONS_PERS_TIPO_DOCUMENTO'
      LookupResultField = 'NOMB_PERS_TIPO_DOCUMENTO'
      KeyFields = 'CONS_PERS_TIPO_DOCUMENTO'
      Size = 60
      Lookup = True
    end
  end
  object DSFamiliares: TDataSource
    DataSet = TFamiliares
    OnStateChange = DSFamiliaresStateChange
    Left = 138
    Top = 275
  end
  object Fami_Acciones: TActionList
    Images = padr_imag_tem1_colo
    Left = 666
    Top = 290
    object Acti_Nuevo: TAction
      Category = 'DataSet'
      Hint = 'Nuevo Familiar'
      ImageIndex = 0
      OnExecute = Acti_NuevoExecute
    end
    object Acti_Grabar: TAction
      Category = 'DataSet'
      Hint = 'Grabar Familiar'
      ImageIndex = 4
      OnExecute = Acti_GrabarExecute
    end
    object Acti_Cancelar: TAction
      Category = 'DataSet'
      Hint = 'Cancelar Familiar'
      ImageIndex = 5
      OnExecute = Acti_CancelarExecute
    end
    object Acti_Eliminar: TAction
      Category = 'DataSet'
      Hint = 'Eliminar Familiar'
      ImageIndex = 2
      OnExecute = Acti_EliminarExecute
    end
  end
end

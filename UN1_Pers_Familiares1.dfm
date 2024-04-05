inherited FN1_Pers_Familiares1: TFN1_Pers_Familiares1
  Left = 249
  Top = 189
  Height = 367
  Caption = 'Datos familiares'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 330
  end
  inherited padr_dock_arriba: TTBXDock
    Top = 1
    inherited padr_barra: TTBXToolbar
      DockPos = 0
    end
  end
  inherited padr_pane_arriba: TPanel
    Top = 50
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 43
  end
  inherited padr_pane_info: TPanel
    Top = 339
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
  object PCFamiliares: TSCLPageControl [6]
    Tag = -1
    Left = 0
    Top = 54
    Width = 557
    Height = 276
    ActivePage = page_identificacion
    ActivePageDefault = page_identificacion
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
    TabOrder = 6
    Transparent = True
    FixedDimension = 22
    object page_identificacion: TSCLTabSheet
      Tag = -1
      Color = 16578290
      ImageIndex = 55
      Caption = 'Identificación'
      object PCPFrame11: TPCPFrame
        Tag = 153
        Left = 0
        Top = 0
        Width = 553
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
          Left = 16
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_PERS_TIPO_DOCUMENTO'
          Field = 'CONS_PERS_TIPO_DOCUMENTO'
        end
        object SCLDBLabel45: TSCLDBLabel
          Left = 288
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'NUME_DOCUMENTO'
          Field = 'NUME_DOCUMENTO'
        end
        object SCLDBLabel46: TSCLDBLabel
          Left = 16
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
          FocusControl = dxEdit14
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Primer Apellido:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'PRIM_APELLIDO'
          Field = 'PRIM_APELLIDO'
        end
        object SCLDBLabel47: TSCLDBLabel
          Left = 288
          Top = 41
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'SEGU_APELLIDO'
          Field = 'SEGU_APELLIDO'
        end
        object SCLDBLabel48: TSCLDBLabel
          Left = 16
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
          FocusControl = dxEdit16
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
          DataField = 'NOMBRES'
          Field = 'NOMBRES'
        end
        object SCLDBLabel49: TSCLDBLabel
          Left = 16
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
          FocusControl = PCPLookUpComboEdit21
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Sexo:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_SEXO'
          Field = 'CONS_SEXO'
        end
        object SCLDBLabel50: TSCLDBLabel
          Left = 288
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
          FocusControl = PCPLookUpComboEdit22
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Parentesco:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_PARENTESCO'
          Field = 'CONS_PARENTESCO'
        end
        object SCLDBLabel51: TSCLDBLabel
          Left = 288
          Top = 61
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'FECH_NACIMIENTO'
          Field = 'FECH_NACIMIENTO'
        end
        object SCLDBLabel59: TSCLDBLabel
          Left = 16
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'OCUPACION'
          Field = 'OCUPACION'
        end
        object SCLDBLabel63: TSCLDBLabel
          Left = 8
          Top = 130
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CORR_ELECTRONICO'
          Field = 'CORR_ELECTRONICO'
        end
        object PCPLookUpComboEdit20: TPCPLookUpComboEdit
          Left = 115
          Top = 22
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_PERS_TIPO_DOCUMENTO'
          DataSource = data_ventana
          KeyField = 'CONS_PERS_TIPO_DOCUMENTO'
          ListField = 'NOMB_PERS_TIPO_DOCUMENTO'
          ListSource = data_tipo_documento
          TabOrder = 1
          DirectInput = False
        end
        object dxEdit13: TdxDBEdit
          Left = 394
          Top = 21
          Width = 145
          TabOrder = 2
          DataField = 'NUME_DOCUMENTO'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxEdit14: TdxDBEdit
          Left = 115
          Top = 42
          Width = 145
          TabOrder = 3
          DataField = 'PRIM_APELLIDO'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxEdit15: TdxDBEdit
          Left = 394
          Top = 41
          Width = 145
          TabOrder = 4
          DataField = 'SEGU_APELLIDO'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxEdit16: TdxDBEdit
          Left = 115
          Top = 62
          Width = 145
          TabOrder = 5
          DataField = 'NOMBRES'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object PCPLookUpComboEdit21: TPCPLookUpComboEdit
          Left = 115
          Top = 90
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_SEXO'
          DataSource = data_ventana
          KeyField = 'CONS_SEXO'
          ListField = 'NOMB_SEXO'
          ListSource = data_sexos
          TabOrder = 7
          DirectInput = False
        end
        object PCPLookUpComboEdit22: TPCPLookUpComboEdit
          Left = 394
          Top = 90
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_PARENTESCO'
          DataSource = data_ventana
          KeyField = 'CONS_PARENTESCO'
          ListField = 'NOMB_PARENTESCO'
          ListSource = data_parentescos
          TabOrder = 8
          DirectInput = False
        end
        object dxDateEdit6: TdxDBDateEdit
          Left = 394
          Top = 61
          Width = 145
          TabOrder = 6
          DataField = 'FECH_NACIMIENTO'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxEdit21: TdxDBEdit
          Left = 115
          Top = 110
          Width = 145
          TabOrder = 9
          DataField = 'OCUPACION'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxEdit25: TdxDBEdit
          Left = 115
          Top = 130
          Width = 425
          TabOrder = 10
          OnExit = CambiarPagina
          DataField = 'CORR_ELECTRONICO'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
      end
    end
    object page_ubicacion: TSCLTabSheet
      Color = 16578290
      ImageIndex = 53
      Caption = 'Ubicación y Empresa'
      object PCPFrame12: TPCPFrame
        Tag = 131
        Left = 0
        Top = 0
        Width = 553
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
          Left = 16
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_PAIS'
          Field = 'CONS_PAIS'
        end
        object SCLDBLabel53: TSCLDBLabel
          Left = 288
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_DEPARTAMENTO'
          Field = 'CONS_DEPARTAMENTO'
        end
        object SCLDBLabel54: TSCLDBLabel
          Left = 16
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
          FocusControl = PCPLookUpComboEdit25
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Ciudad:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_CIUDAD'
          Field = 'CONS_CIUDAD'
        end
        object SCLDBLabel55: TSCLDBLabel
          Left = 16
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
          FocusControl = dxEdit17
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Dirección:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'DIRECCION'
          Field = 'DIRECCION'
        end
        object SCLDBLabel56: TSCLDBLabel
          Left = 0
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
          FocusControl = dxEdit18
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Teléfono Residencia:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'TELE_RESIDENCIA'
          Field = 'TELE_RESIDENCIA'
        end
        object SCLDBLabel57: TSCLDBLabel
          Left = 288
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
          FocusControl = dxEdit19
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Otro Teléfono:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'TELE_OTRO'
          Field = 'TELE_OTRO'
        end
        object SCLDBLabel58: TSCLDBLabel
          Left = 16
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'TELE_MOVIL'
          Field = 'TELE_MOVIL'
        end
        object PCPLookUpComboEdit23: TPCPLookUpComboEdit
          Left = 115
          Top = 22
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_PAIS'
          DataSource = data_ventana
          KeyField = 'CONS_PAIS'
          ListField = 'NOMB_PAIS'
          ListSource = data_paises
          TabOrder = 1
          DirectInput = False
        end
        object PCPLookUpComboEdit24: TPCPLookUpComboEdit
          Left = 394
          Top = 22
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_DEPARTAMENTO'
          DataSource = data_ventana
          KeyField = 'CONS_DEPARTAMENTO'
          ListField = 'NOMB_DEPARTAMENTO'
          ListSource = data_departamentos
          TabOrder = 2
          DirectInput = False
        end
        object PCPLookUpComboEdit25: TPCPLookUpComboEdit
          Left = 115
          Top = 42
          Width = 145
          Height = 21
          DropDownCount = 8
          DataField = 'CONS_CIUDAD'
          DataSource = data_ventana
          KeyField = 'CONS_CIUDAD'
          ListField = 'NOMB_CIUDAD'
          ListSource = data_ciudades
          TabOrder = 3
          DirectInput = False
        end
        object dxEdit17: TdxDBEdit
          Left = 115
          Top = 62
          Width = 425
          TabOrder = 4
          DataField = 'DIRECCION'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxEdit18: TdxDBEdit
          Left = 115
          Top = 90
          Width = 127
          TabOrder = 5
          DataField = 'TELE_RESIDENCIA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxEdit19: TdxDBEdit
          Left = 394
          Top = 90
          Width = 145
          TabOrder = 6
          DataField = 'TELE_OTRO'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxEdit20: TdxDBEdit
          Left = 115
          Top = 110
          Width = 127
          TabOrder = 7
          DataField = 'TELE_MOVIL'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
      end
      object PCPFrame13: TPCPFrame
        Tag = 97
        Left = 0
        Top = 131
        Width = 553
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
          Left = 16
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'NOMB_EMPRESA'
          Field = 'NOMB_EMPRESA'
        end
        object SCLDBLabel61: TSCLDBLabel
          Left = 16
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
          FocusControl = dxEdit23
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Dirección:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'DIRE_EMPRESA'
          Field = 'DIRE_EMPRESA'
        end
        object SCLDBLabel62: TSCLDBLabel
          Left = 16
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
          FocusControl = dxEdit24
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Teléfonos:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'TELE_EMPRESA'
          Field = 'TELE_EMPRESA'
        end
        object dxEdit22: TdxDBEdit
          Left = 115
          Top = 22
          Width = 296
          TabOrder = 1
          DataField = 'NOMB_EMPRESA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxEdit23: TdxDBEdit
          Left = 115
          Top = 42
          Width = 296
          TabOrder = 2
          DataField = 'DIRE_EMPRESA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object dxEdit24: TdxDBEdit
          Left = 115
          Top = 62
          Width = 145
          TabOrder = 3
          OnExit = CambiarPagina
          DataField = 'TELE_EMPRESA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 331
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_modificar: TDataSetEdit
      Visible = True
    end
  end
  inherited Variables: TSCLPropiedadesForm
    verBotonesNavegacion = False
  end
  inherited Tabla_Ventana: TTable
    AfterPost = nil
    TableName = 'GLO_PERS_FAMILIAR'
    object Tabla_VentanaCONS_PERS_FAMILIAR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PERS_FAMILIAR'
      Required = True
    end
    object Tabla_VentanaCONS_PERSONAL: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERSONAL'
    end
    object Tabla_VentanaCONS_PERS_TIPO_DOCUMENTO: TIntegerField
      DisplayLabel = 'Tipo documento'
      FieldName = 'CONS_PERS_TIPO_DOCUMENTO'
    end
    object Tabla_VentanaNUME_DOCUMENTO: TStringField
      DisplayLabel = 'Número Documento'
      FieldName = 'NUME_DOCUMENTO'
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
    object Tabla_VentanaCONS_SEXO: TIntegerField
      DisplayLabel = 'Sexo'
      FieldName = 'CONS_SEXO'
      Required = True
    end
    object Tabla_VentanaCONS_PARENTESCO: TIntegerField
      DisplayLabel = 'Parentesco'
      FieldName = 'CONS_PARENTESCO'
      Required = True
    end
    object Tabla_VentanaFECH_NACIMIENTO: TDateTimeField
      DisplayLabel = 'Fecha Nacimiento'
      FieldName = 'FECH_NACIMIENTO'
    end
    object Tabla_VentanaCONS_PAIS: TIntegerField
      DisplayLabel = 'País'
      FieldName = 'CONS_PAIS'
    end
    object Tabla_VentanaCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
    end
    object Tabla_VentanaCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Ciudad'
      FieldName = 'CONS_CIUDAD'
    end
    object Tabla_VentanaDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 240
    end
    object Tabla_VentanaTELE_RESIDENCIA: TStringField
      DisplayLabel = 'Télefono Residencia'
      FieldName = 'TELE_RESIDENCIA'
    end
    object Tabla_VentanaTELE_OTRO: TStringField
      DisplayLabel = 'Otro Télefono'
      FieldName = 'TELE_OTRO'
    end
    object Tabla_VentanaTELE_MOVIL: TStringField
      DisplayLabel = 'Télefono Movil'
      FieldName = 'TELE_MOVIL'
    end
    object Tabla_VentanaOCUPACION: TStringField
      DisplayLabel = 'Ocupación'
      FieldName = 'OCUPACION'
      Size = 60
    end
    object Tabla_VentanaNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
    object Tabla_VentanaDIRE_EMPRESA: TStringField
      DisplayLabel = 'Dirección Empresa'
      FieldName = 'DIRE_EMPRESA'
      Size = 240
    end
    object Tabla_VentanaTELE_EMPRESA: TStringField
      DisplayLabel = 'Télefono Empresa'
      FieldName = 'TELE_EMPRESA'
    end
    object Tabla_VentanaCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo Electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Size = 120
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
  object quer_sexos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_SIS_SEXO_PERSONAL'
      'ORDER BY NOMB_SEXO')
    Left = 440
    Top = 63
  end
  object data_sexos: TDataSource
    AutoEdit = False
    DataSet = quer_sexos
    Left = 468
    Top = 63
  end
  object quer_tipo_documento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_PERS_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_TIPO_DOCUMENTO')
    Left = 440
    Top = 91
  end
  object data_tipo_documento: TDataSource
    AutoEdit = False
    DataSet = quer_tipo_documento
    Left = 468
    Top = 91
  end
  object quer_parentescos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_PARENTESCOS'
      'ORDER BY NOMB_PARENTESCO')
    Left = 440
    Top = 119
  end
  object data_parentescos: TDataSource
    AutoEdit = False
    DataSet = quer_parentescos
    Left = 468
    Top = 119
  end
  object quer_paises: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PAISES'
      'ORDER BY NOMB_PAIS')
    Left = 440
    Top = 147
  end
  object quer_departamentos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_paises
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_DEPARTAMENTOS'
      'WHERE CONS_PAIS = :CONS_PAIS'
      'ORDER BY NOMB_DEPARTAMENTO')
    Left = 440
    Top = 175
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PAIS'
        ParamType = ptUnknown
      end>
  end
  object quer_ciudades: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_departamentos
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_CIUDADES'
      'WHERE CONS_DEPARTAMENTO = :CONS_DEPARTAMENTO'
      'ORDER BY NOMB_CIUDAD')
    Left = 440
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_DEPARTAMENTO'
        ParamType = ptUnknown
      end>
  end
  object data_ciudades: TDataSource
    AutoEdit = False
    DataSet = quer_ciudades
    Left = 468
    Top = 203
  end
  object data_departamentos: TDataSource
    AutoEdit = False
    DataSet = quer_departamentos
    Left = 468
    Top = 175
  end
  object data_paises: TDataSource
    AutoEdit = False
    DataSet = quer_paises
    Left = 468
    Top = 147
  end
end

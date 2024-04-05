inherited fn1_referencias1: Tfn1_referencias1
  Left = -12
  Top = 32
  Width = 812
  Height = 612
  ActiveControl = edit_codi_referencia
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 575
    Width = 804
  end
  inherited pane_beve_abajo: TPanel [2]
    Top = 576
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_sepa_1: TPanel [3]
    Width = 804
    Visible = True
    inherited padr_beve_1: TBevel
      Width = 949
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_arriba: TPanel [4]
    Width = 804
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 52
    Width = 804
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 7
    object SCLDBLabel17: TSCLDBLabel
      Left = 10
      Top = 2
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
      FocusControl = edit_codi_referencia
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
      DataField = 'CODI_REFERENCIA'
      Field = 'CODI_REFERENCIA'
    end
    object SCLDBLabel19: TSCLDBLabel
      Left = 270
      Top = 2
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
      FocusControl = dxDBEdit7
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'C.I.R.:'
      Layout = tlTop
      Transparent = True
      OnClick = doEntrepiernas
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_INTE_REFERENCIA'
      Field = 'CODI_INTE_REFERENCIA'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 22
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
      FocusControl = dxDBEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombre comercial:'
      Layout = tlTop
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_REFERENCIA'
      Field = 'NOMB_REFERENCIA'
    end
    object edit_codi_referencia: TdxDBEdit
      Left = 112
      Top = 2
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_REFERENCIA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit7: TdxDBEdit
      Left = 372
      Top = 2
      Width = 121
      TabOrder = 1
      CharCase = ecUpperCase
      DataField = 'CODI_INTE_REFERENCIA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit3: TdxDBEdit
      Left = 112
      Top = 22
      Width = 381
      TabOrder = 2
      DataField = 'NOMB_REFERENCIA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  object pagina: TSCLPageControl [6]
    Left = 0
    Top = 121
    Width = 804
    Height = 454
    ActivePage = page_dato_basicos
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Images = _fMDI.ImagenesMenus
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 6
    Transparent = True
    OnChange = paginaChange
    FixedDimension = 22
    object page_dato_basicos: TSCLTabSheet
      Color = 16578290
      ImageIndex = 51
      Caption = 'Datos básicos'
      object SCLDBLabel6: TSCLDBLabel
        Left = 10
        Top = 39
        Width = 100
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
        FocusControl = PCPLookUpComboEdit1
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Temporada:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_TEMPORADA'
        Field = 'CONS_REFE_TEMPORADA'
      end
      object SCLDBLabel7: TSCLDBLabel
        Left = 10
        Top = 59
        Width = 100
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
        FocusControl = PCPLookUpComboEdit2
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Marca:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_MARCA'
        Field = 'CONS_REFE_MARCA'
      end
      object SCLDBLabel8: TSCLDBLabel
        Left = 270
        Top = 39
        Width = 100
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
        FocusControl = PCPLookUpComboEdit3
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Línea:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_LINEA'
        Field = 'CONS_REFE_LINEA'
      end
      object SCLDBLabel9: TSCLDBLabel
        Left = 270
        Top = 79
        Width = 100
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
        FocusControl = PCPLookUpComboEdit4
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Edad:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_EDAD'
        Field = 'CONS_REFE_EDAD'
      end
      object SCLDBLabel10: TSCLDBLabel
        Left = 10
        Top = 79
        Width = 100
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
        FocusControl = PCPLookUpComboEdit5
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Estilo:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_ESTILO'
        Field = 'CONS_REFE_ESTILO'
      end
      object SCLDBLabel11: TSCLDBLabel
        Left = 270
        Top = 59
        Width = 100
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
        FocusControl = PCPLookUpComboEdit6
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Grupo:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_GRUPO'
        Field = 'CONS_REFE_GRUPO'
      end
      object SCLDBLabel12: TSCLDBLabel
        Left = 10
        Top = 99
        Width = 100
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
        FocusControl = PCPLookUpComboEdit7
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Sexo:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_SEXO'
        Field = 'CONS_REFE_SEXO'
      end
      object SCLDBLabel13: TSCLDBLabel
        Left = 10
        Top = 134
        Width = 100
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
        FocusControl = PCPLookUpComboEdit8
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Lavado:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_LAVADO'
        Field = 'CONS_REFE_LAVADO'
      end
      object SCLDBLabel14: TSCLDBLabel
        Left = 270
        Top = 134
        Width = 100
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
        FocusControl = PCPLookUpComboEdit9
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Estampado:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_ESTAMPADO'
        Field = 'CONS_REFE_ESTAMPADO'
      end
      object SCLDBLabel15: TSCLDBLabel
        Left = 10
        Top = 154
        Width = 100
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
        FocusControl = PCPLookUpComboEdit10
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Bordado:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_BORDADO'
        Field = 'CONS_REFE_BORDADO'
      end
      object SCLDBLabel16: TSCLDBLabel
        Left = 270
        Top = 154
        Width = 100
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
        FocusControl = PCPLookUpComboEdit11
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Grupo de tallas:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_GRUP_TALLAS'
        Field = 'CONS_REFE_GRUP_TALLAS'
      end
      object SCLDBLabel5: TSCLDBLabel
        Left = 10
        Top = 11
        Width = 100
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
        FocusControl = dxDBEdit4
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Molde:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'MOLDE'
        Field = 'MOLDE'
      end
      object SCLDBLabel4: TSCLDBLabel
        Left = 270
        Top = 11
        Width = 100
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
        FocusControl = dxDBEdit5
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Código de barras:'
        Layout = tlTop
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CODI_BARRAS'
        Field = 'CODI_BARRAS'
      end
      object SCLDBLabel1: TSCLDBLabel
        Left = 10
        Top = 174
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
        FocusControl = PCPLookUpComboEdit12
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Tallas asignadas:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_REFE_GRUP_TALLAS'
        Field = 'CONS_REFE_GRUP_TALLAS'
      end
      object SCLShape1: TSCLShape
        Left = 8
        Top = 125
        Width = 522
        Height = 1
        Brush.Style = bsClear
        Pen.Color = 14467501
      end
      object PCPLookUpComboEdit1: TPCPLookUpComboEdit
        Left = 112
        Top = 39
        Width = 160
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_TEMPORADA'
        DataSource = data_ventana
        KeyField = 'cons_refe_temporada'
        ListField = 'nomb_refe_temporada'
        ListSource = data_temporadas
        ParentCtl3D = False
        TabOrder = 2
        DirectInput = False
      end
      object PCPLookUpComboEdit2: TPCPLookUpComboEdit
        Left = 112
        Top = 59
        Width = 160
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_MARCA'
        DataSource = data_ventana
        KeyField = 'cons_refe_marca'
        ListField = 'nomb_refe_marca'
        ListSource = data_marcas
        ParentCtl3D = False
        TabOrder = 4
        DirectInput = False
      end
      object PCPLookUpComboEdit3: TPCPLookUpComboEdit
        Left = 372
        Top = 39
        Width = 160
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_LINEA'
        DataSource = data_ventana
        KeyField = 'cons_refe_linea'
        ListField = 'nomb_refe_linea'
        ListSource = data_lineas
        ParentCtl3D = False
        TabOrder = 3
        DirectInput = False
      end
      object PCPLookUpComboEdit4: TPCPLookUpComboEdit
        Left = 372
        Top = 79
        Width = 160
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_EDAD'
        DataSource = data_ventana
        KeyField = 'cons_Refe_edad'
        ListField = 'nomb_refe_edad'
        ListSource = data_edades
        ParentCtl3D = False
        TabOrder = 7
        DirectInput = False
      end
      object PCPLookUpComboEdit5: TPCPLookUpComboEdit
        Left = 112
        Top = 79
        Width = 160
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_ESTILO'
        DataSource = data_ventana
        KeyField = 'cons_refe_estilo'
        ListField = 'nomb_refe_estilo'
        ListSource = data_estilos
        ParentCtl3D = False
        TabOrder = 6
        DirectInput = False
      end
      object PCPLookUpComboEdit6: TPCPLookUpComboEdit
        Left = 372
        Top = 59
        Width = 160
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_GRUPO'
        DataSource = data_ventana
        KeyField = 'cons_refe_grupo'
        ListField = 'nomb_refe_grupo'
        ListSource = data_grupos
        ParentCtl3D = False
        TabOrder = 5
        DirectInput = False
      end
      object PCPLookUpComboEdit7: TPCPLookUpComboEdit
        Left = 112
        Top = 99
        Width = 160
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_SEXO'
        DataSource = data_ventana
        KeyField = 'cons_sexo'
        ListField = 'nomb_sexo'
        ListSource = data_sexos
        ParentCtl3D = False
        TabOrder = 8
        DirectInput = False
      end
      object PCPLookUpComboEdit8: TPCPLookUpComboEdit
        Left = 112
        Top = 134
        Width = 160
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_LAVADO'
        DataSource = data_ventana
        KeyField = 'cons_refe_lavado'
        ListField = 'nomb_refe_lavado'
        ListSource = data_lavados
        ParentCtl3D = False
        TabOrder = 9
        DirectInput = False
      end
      object PCPLookUpComboEdit9: TPCPLookUpComboEdit
        Left = 372
        Top = 134
        Width = 160
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_ESTAMPADO'
        DataSource = data_ventana
        KeyField = 'cons_refe_estampado'
        ListField = 'nomb_refe_estampado'
        ListSource = data_estampados
        ParentCtl3D = False
        TabOrder = 10
        DirectInput = False
      end
      object PCPLookUpComboEdit10: TPCPLookUpComboEdit
        Left = 112
        Top = 154
        Width = 160
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_BORDADO'
        DataSource = data_ventana
        KeyField = 'cons_Refe_bordado'
        ListField = 'nomb_refe_bordado'
        ListSource = data_bordados
        ParentCtl3D = False
        TabOrder = 11
        DirectInput = False
      end
      object PCPLookUpComboEdit11: TPCPLookUpComboEdit
        Left = 372
        Top = 154
        Width = 160
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_GRUP_TALLAS'
        DataSource = data_ventana
        KeyField = 'cons_grup_tallas'
        ListField = 'NOMB_GRUP_TALLAS'
        ListSource = data_grup_Tallas
        ParentCtl3D = False
        TabOrder = 12
        DirectInput = False
      end
      object dxDBEdit4: TdxDBEdit
        Left = 112
        Top = 11
        Width = 121
        TabOrder = 0
        DataField = 'MOLDE'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object dxDBEdit5: TdxDBEdit
        Left = 372
        Top = 11
        Width = 121
        TabOrder = 1
        DataField = 'CODI_BARRAS'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      inline ffra_fotografiaDB1: Tffra_fotografiaDB
        Left = 541
        Top = 2
        Width = 324
        Height = 447
        TabOrder = 15
        inherited fram_pane_atras: TPanel
          Width = 324
          Height = 421
          inherited fram_fotografia: TEDBImage
            Width = 314
            Height = 388
            DataField = 'IMAGEN'
            DataSource = data_ventana
          end
          inherited fram_pane_stretch: TPanel
            Top = 393
            Width = 314
            inherited fram_chec_ajustar: TdxDBCheckEdit
              DataField = 'AJUS_IMAGEN'
              DataSource = data_ventana
            end
          end
        end
        inherited TBXDock1: TTBXDock
          Width = 324
        end
      end
      object PCPLookUpComboEdit12: TPCPLookUpComboEdit
        Left = 112
        Top = 174
        Width = 420
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_REFE_GRUP_TALLAS'
        DataSource = data_ventana
        KeyField = 'cons_grup_tallas'
        ListField = 'TALLAS'
        ListSource = data_grup_Tallas
        ParentCtl3D = False
        TabOrder = 13
        DirectInput = False
      end
      object dxDBCheckEdit1: TdxDBCheckEdit
        Left = 112
        Top = 194
        Width = 163
        TabOrder = 14
        Caption = 'Utilizar entrepiernas'
        DataField = 'CON_ENTREPIERNAS'
        DataSource = data_ventana
        StyleController = padr_estilo
        ValueChecked = '1'
        ValueUnchecked = '-1'
        OnChange = doEntrepiernas
      end
    end
    object page_asig_colores: TSCLTabSheet
      Color = 16578290
      ImageIndex = 22
      Caption = 'Colores'
      OnShow = boto_actu_coloresClick
      object dfsSplitter1: TdfsSplitter
        Left = 201
        Top = 26
        Height = 402
        Cursor = crHSplit
        Align = alLeft
        MinSize = 1
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object pane_colo_existentes: TPCPFrame
        Tag = 455
        Left = 0
        Top = 26
        Width = 201
        Height = 402
        Align = alLeft
        BorderWidth = 3
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Caption = 'Colores existentes'
        Titulo_Color = 16244694
        Boton_Visible = False
        BorderWidthIn = 4
        FlatBorder = True
        object grid_colo_existentes: TdxDBGrid
          Left = 8
          Top = 27
          Width = 185
          Height = 420
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CODI_COLOR'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = pop_grid_colores
          TabOrder = 0
          OnDblClick = acti_nuev_colorExecute
          DataSource = data_colores
          Filter.Criteria = {00000000}
          HideSelection = True
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
          object grid_colo_existentesMUES_COLOR: TdxDBGridColumn
            Caption = 'Muestra'
            HeaderAlignment = taCenter
            Width = 52
            BandIndex = 0
            RowIndex = 0
            OnCustomDrawCell = grid_colo_existentesMUES_COLORCustomDrawCell
            FieldName = 'MUES_COLOR'
          end
          object grid_colo_existentesCODI_COLOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 92
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLOR'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object grid_colo_existentesNOMB_COLOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 39
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLOR'
          end
        end
      end
      object TBXDock2: TTBXDock
        Left = 0
        Top = 0
        Width = 800
        Height = 26
        object TBXToolbar2: TTBXToolbar
          Left = 0
          Top = 0
          BorderStyle = bsNone
          DockMode = dmCannotFloatOrChangeDocks
          FullSize = True
          TabOrder = 0
          object TBXItem12: TTBXItem
            Action = acti_colo_asignar
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imag_pequenas
          end
          object TBXItem17: TTBXItem
            Action = acti_colo_editar
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imag_pequenas
          end
          object TBXItem13: TTBXItem
            Action = acti_colo_eliminar
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imag_pequenas
          end
          object TBXSeparatorItem4: TTBXSeparatorItem
          end
          object TBXItem14: TTBXItem
            Action = acti_colo_ir
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imag_pequenas
          end
          object TBXItem15: TTBXItem
            Action = acti_colo_actualizar
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imag_pequenas
          end
          object padr_sepa_29: TTBXSeparatorItem
          end
          object padr_boto_subir: TTBXItem
            Action = padr_acti_subir
            Images = _fMDI.imagenesPCP
          end
          object padr_boto_Bajar: TTBXItem
            Action = padr_acti_bajar
            Images = _fMDI.imagenesPCP
          end
        end
      end
      object Panel2: TPanel
        Left = 211
        Top = 26
        Width = 589
        Height = 402
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object dfsSplitter3: TdfsSplitter
          Left = 0
          Top = 296
          Width = 589
          Height = 10
          Cursor = crVSplit
          Align = alBottom
          MinSize = 16
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object pane_colo_asignados: TPCPFrame
          Tag = 349
          Left = 0
          Top = 0
          Width = 589
          Height = 296
          Align = alClient
          BorderWidth = 3
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Caption = 'Colores asignados'
          Titulo_Color = 16244694
          Boton_Visible = False
          BorderWidthIn = 4
          FlatBorder = True
          object grid_colo_asignados: TdxDBGrid
            Left = 8
            Top = 27
            Width = 733
            Height = 314
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'SECU_COLOR'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            PopupMenu = pop_grid_colo_asignados
            TabOrder = 0
            OnDblClick = acti_edit_colorExecute
            DataSource = data_refe_colores
            Filter.Criteria = {00000000}
            HideSelection = True
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanNavigation, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
            object grid_colo_asignadosCONS_REFE_COLOR: TdxDBGridColumn
              Caption = 'No.'
              Width = 44
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_REFE_COLOR'
            end
            object grid_colo_asignadosMUES_COLOR: TdxDBGridColumn
              Caption = 'Muestra'
              HeaderAlignment = taCenter
              Width = 48
              BandIndex = 0
              RowIndex = 0
              OnCustomDrawCell = grid_colo_asignadosMUES_COLORCustomDrawCell
              FieldName = 'MUES_COLOR'
            end
            object grid_colo_asignadosSECU_COLOR: TdxDBGridMaskColumn
              Caption = 'No.'
              HeaderAlignment = taCenter
              Visible = False
              Width = 29
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SECU_COLOR'
              SummaryFooterType = cstCount
              SummaryFooterFormat = '0'
            end
            object grid_colo_asignadosCODI_COLOR: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'codi_color'
            end
            object grid_colo_asignadosNOMB_COLOR: TdxDBGridColumn
              HeaderAlignment = taCenter
              Width = 146
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_COLOR'
            end
            object grid_colo_asignadosNUME_COLOR: TdxDBGridColumn
              HeaderAlignment = taCenter
              Width = 91
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NUME_COLOR'
            end
            object grid_colo_asignadosColumn6: TdxDBGridColumn
              HeaderAlignment = taCenter
              Width = 167
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FECH_SISTEMA'
            end
            object grid_colo_asignadosColumn7: TdxDBGridColumn
              HeaderAlignment = taCenter
              Width = 94
              BandIndex = 0
              RowIndex = 0
              FieldName = 'USUA_SISTEMA'
            end
          end
        end
        inline fram_depe_colores: Tffra_dependencias
          Top = 306
          Width = 589
          Height = 96
          Align = alBottom
          TabOrder = 1
          inherited pane_dependencia: TPCPFrame
            Tag = 96
            Width = 589
            Height = 96
            inherited Panel1: TPanel
              Width = 743
              Height = 71
              inherited fram_list_dependencia: TdxDBTreeList
                Width = 733
                Height = 61
              end
            end
          end
          inherited fram_quer_dependencias: TQuery
            DataSource = data_refe_colores
            SQL.Strings = (
              'Select * from CON_PCP_REFE_COLO_DEPE_0(:cons_refe_color)'
              'order by padr_consulta, cons_consulta')
            ParamData = <
              item
                DataType = ftUnknown
                Name = 'cons_refe_color'
                ParamType = ptUnknown
              end>
          end
        end
      end
    end
    object page_asig_variaciones: TSCLTabSheet
      Color = 16578290
      ImageIndex = 24
      Caption = 'Variaciones'
      OnShow = acti_vari_actualizarExecute
      object dfsSplitter2: TdfsSplitter
        Left = 217
        Top = 26
        Height = 402
        Cursor = crHSplit
        Align = alLeft
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object PCPFrame2: TPCPFrame
        Tag = 318
        Left = 0
        Top = 26
        Width = 217
        Height = 402
        Align = alLeft
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Caption = 'Variaciones existentes'
        Titulo_Color = 16244694
        Boton_Visible = False
        BorderWidthIn = 4
        FlatBorder = True
        object grid_vari_existentes: TdxDBGrid
          Left = 7
          Top = 26
          Width = 203
          Height = 285
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CONS_REFE_TIPO_VARIACION'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = pop_vari_existentes
          TabOrder = 1
          OnDblClick = asignarVariacion
          DataSource = data_refe_tipo_variaciones
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
          object grid_vari_existentesCONS_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_TIPO_VARIACION'
          end
          object grid_vari_existentesCODI_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_TIPO_VARIACION'
          end
          object grid_vari_existentesNOMB_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TIPO_VARIACION'
          end
        end
      end
      object TBXDock1: TTBXDock
        Left = 0
        Top = 0
        Width = 800
        Height = 26
        object TBXToolbar1: TTBXToolbar
          Left = 0
          Top = 0
          BorderStyle = bsNone
          DockMode = dmCannotFloatOrChangeDocks
          FullSize = True
          TabOrder = 0
          object TBXItem7: TTBXItem
            Action = acti_vari_adicionar
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imag_pequenas
          end
          object TBXItem8: TTBXItem
            Action = acti_vari_eliminar
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imag_pequenas
          end
          object TBXSeparatorItem3: TTBXSeparatorItem
          end
          object TBXItem9: TTBXItem
            Action = acti_vari_ir
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imag_pequenas
          end
          object TBXItem10: TTBXItem
            Action = acti_vari_actualizar
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imag_pequenas
          end
        end
      end
      object Panel4: TPanel
        Left = 227
        Top = 26
        Width = 573
        Height = 402
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object dfsSplitter4: TdfsSplitter
          Left = 0
          Top = 292
          Width = 573
          Height = 10
          Cursor = crVSplit
          Align = alBottom
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
        end
        object PCPFrame1: TPCPFrame
          Tag = 208
          Left = 0
          Top = 0
          Width = 573
          Height = 292
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
          Caption = 'Variaciones asignadas'
          Titulo_Color = 16244694
          Boton_Visible = False
          BorderWidthIn = 4
          FlatBorder = True
          object grid_vari_asignadas: TdxDBGrid
            Left = 7
            Top = 26
            Width = 708
            Height = 175
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CONS_REFE_VARIACION'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            PopupMenu = pop_grid_vari_asignadas
            TabOrder = 1
            DataSource = data_refe_variaciones
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
            object grid_vari_asignadasCONS_REFE_VARIACION: TdxDBGridMaskColumn
              Caption = 'No.'
              HeaderAlignment = taCenter
              Width = 81
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_REFE_VARIACION'
            end
            object grid_vari_asignadasCONS_REFERENCIA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 44
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_REFERENCIA'
            end
            object grid_vari_asignadasCONS_REFE_TIPO_VARIACION: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 68
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_REFE_TIPO_VARIACION'
            end
            object grid_vari_asignadasCODI_REFE_TIPO_VARIACION: TdxDBGridLookupColumn
              HeaderAlignment = taCenter
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODI_REFE_TIPO_VARIACION'
            end
            object grid_vari_asignadasNOMB_TIPO_VARIACION: TdxDBGridLookupColumn
              HeaderAlignment = taCenter
              Width = 228
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_TIPO_VARIACION'
            end
            object grid_vari_asignadasOBSERVACIONES: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 122
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OBSERVACIONES'
            end
            object grid_vari_asignadasFECH_SISTEMA: TdxDBGridDateColumn
              HeaderAlignment = taCenter
              Width = 160
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FECH_SISTEMA'
            end
            object grid_vari_asignadasUSUA_SISTEMA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 95
              BandIndex = 0
              RowIndex = 0
              FieldName = 'USUA_SISTEMA'
            end
          end
        end
        inline fram_depe_variaciones: Tffra_dependencias
          Top = 302
          Width = 573
          Height = 100
          Align = alBottom
          TabOrder = 1
          inherited pane_dependencia: TPCPFrame
            Tag = 100
            Width = 573
            Height = 100
            inherited Panel1: TPanel
              Width = 716
              Height = 75
              inherited fram_list_dependencia: TdxDBTreeList
                Width = 706
                Height = 65
              end
            end
          end
          inherited fram_quer_dependencias: TQuery
            DataSource = data_refe_variaciones
            SQL.Strings = (
              'Select * from CON_PCP_REFE_VARI_DEPE_0(:cons_refe_variacion)'
              'order by padr_consulta, cons_consulta')
            ParamData = <
              item
                DataType = ftUnknown
                Name = 'cons_refe_variacion'
                ParamType = ptUnknown
              end>
          end
        end
      end
    end
    object page_observaciones: TSCLTabSheet
      Color = 16578290
      ImageIndex = 72
      Caption = 'Observaciones'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 949
        Height = 344
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 0
        object Bevel1: TBevel
          Left = 5
          Top = 5
          Width = 939
          Height = 7
          Align = alTop
          Shape = bsSpacer
        end
        object dxDBMemo1: TdxDBMemo
          Left = 5
          Top = 12
          Width = 939
          Align = alClient
          TabOrder = 0
          DataField = 'DESCRIPCION'
          DataSource = data_ventana
          StyleController = padr_estilo
          Height = 327
        end
      end
    end
    object page_historial: TSCLTabSheet
      Color = 16578290
      ImageIndex = 68
      Caption = 'Historial'
      inline ffra_historialDB1: Tffra_historialDB
        Width = 800
        Height = 428
        Align = alClient
        inherited fram_pane: TPanel
          Width = 800
          Height = 428
          inherited fram_grid_historial: TdxDBGrid
            Width = 945
            Height = 314
            KeyField = 'FECH_SISTEMA'
            ShowSummaryFooter = True
            Filter.Criteria = {00000000}
            inherited fram_grid_historialFECHA: TdxDBGridDateColumn
              Color = clBtnFace
              Width = 158
            end
            inherited fram_grid_historialUSUARIO: TdxDBGridColumn
              Color = clBtnFace
              Width = 130
            end
            inherited fram_grid_historialANOTACION: TdxDBGridMemoColumn
              Width = 440
            end
          end
          inherited TBXDock1: TTBXDock
            Width = 945
            inherited TBXToolbar1: TTBXToolbar
              ChevronHint = ''
              inherited TBXItem4: TTBXItem
                Images = _fMDI.imag_pequenas
              end
              inherited TBXItem5: TTBXItem
                Images = _fMDI.imag_pequenas
              end
              inherited TBXItem6: TTBXItem
                Images = _fMDI.imag_pequenas
              end
            end
          end
        end
        inherited data_historial: TDataSource
          DataSet = tabl_refe_historial
        end
        inherited pop_grid_anotaciones: TTBXPopupMenu
          inherited TBXItem1: TTBXItem
            Images = _fMDI.imagenesPCP
          end
          inherited TBXItem2: TTBXItem
            Images = _fMDI.imagenesPCP
          end
          inherited TBXItem3: TTBXItem
            Images = _fMDI.imagenesPCP
          end
        end
      end
    end
  end
  inherited padr_pane_info: TPanel
    Top = 584
    Width = 804
    inherited _LUsuario: TSCLDBLabel [0]
      Left = 168
      Top = 77
      Visible = False
    end
    inherited _LFecha_Creacion: TSCLDBLabel [1]
      Left = 130
      Top = 55
      Visible = False
    end
    inherited _DBUsuario: TdxDBEdit [2]
      Left = 270
      Top = 77
      Visible = False
      Height = 18
      StoredValues = 64
    end
    inherited _DBFecha_Creacion: TdxDBEdit [3]
      Left = 232
      Top = 55
      Visible = False
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited padr_dock_arriba: TTBXDock [8]
    Width = 804
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_vinculos: TTBXSubmenuItem
        Images = _fMDI.imag_grandes
        LinkSubitems = _fMDI.menu_referencias
        Visible = True
      end
      inherited padr_boto_nuevo: TTBXItem
        Action = nil
        Images = padr_imag_tem1_colo
      end
    end
  end
  inherited padr_pane_principal: TPanel
    Top = 119
    Width = 804
  end
  object pane_info_Estado: TAdvPanel [10]
    Left = 0
    Top = 98
    Width = 804
    Height = 21
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    UseDockManager = True
    Version = '1.6.0.3'
    AutoHideChildren = False
    BorderColor = clGray
    BorderShadow = True
    Caption.Color = clHighlight
    Caption.ColorTo = clBlue
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Verdana'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    CollapsColor = clBtnFace
    CollapsDelay = 0
    ColorTo = 14938354
    HoverFontColor = clWhite
    Indent = 5
    PictureContainer = padr_pict_container
    ShadowColor = clWhite
    ShadowOffset = 0
    StatusBar.BorderColor = clGray
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 14938354
    StatusBar.ColorTo = clWhite
    Styler = padr_esti_sugerencias
    Text = 
      'Estado :                          | <A href="informacion">Ver in' +
      'formación del estado</A> | <A href="cambiar">Cambiar estado</A>'
    TopIndent = 2
    URLColor = clBlack
    OnAnchorClick = pane_info_EstadoAnchorClick
    FullHeight = 0
    object clw: TDBText
      Left = 49
      Top = 2
      Width = 72
      Height = 13
      DataField = 'NOMB_REFE_ESTADO'
      DataSource = data_refe_estados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
    end
  end
  inherited padr_imag_tem1_colo: TImageList
    Left = 553
  end
  inherited data_ventana: TDataSource
    Left = 0
    Top = 22
  end
  object quer_temporadas: TQuery [13]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT '
      'CONS_REFE_TEMPORADA, NOMB_REFE_TEMPORADA'
      'FROM GLO_REFE_TEMPORADAS'
      'ORDER BY NOMB_REFE_TEMPORADA')
    Left = 856
    Top = 168
    object quer_temporadasCONS_REFE_TEMPORADA: TIntegerField
      FieldName = 'CONS_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_TEMPORADAS.CONS_REFE_TEMPORADA'
    end
    object quer_temporadasNOMB_REFE_TEMPORADA: TStringField
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_TEMPORADAS.NOMB_REFE_TEMPORADA'
      Size = 60
    end
  end
  object data_temporadas: TDataSource [14]
    DataSet = quer_temporadas
    Left = 888
    Top = 168
  end
  object quer_lineas: TQuery [15]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_LINEA, NOMB_REFE_LINEA'
      'FROM GLO_REFE_LINEAS'
      'ORDER BY NOMB_REFE_LINEA')
    Left = 856
    Top = 191
    object quer_lineasCONS_REFE_LINEA: TIntegerField
      FieldName = 'CONS_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.CONS_REFE_LINEA'
    end
    object quer_lineasNOMB_REFE_LINEA: TStringField
      FieldName = 'NOMB_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.NOMB_REFE_LINEA'
      Size = 60
    end
  end
  object data_lineas: TDataSource [16]
    DataSet = quer_lineas
    Left = 888
    Top = 191
  end
  object quer_marcas: TQuery [17]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_MARCA, NOMB_REFE_MARCA'
      'FROM GLO_REFE_MARCAS'
      'ORDER BY NOMB_REFE_MARCA')
    Left = 856
    Top = 217
    object quer_marcasCONS_REFE_MARCA: TIntegerField
      FieldName = 'CONS_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.CONS_REFE_MARCA'
    end
    object quer_marcasNOMB_REFE_MARCA: TStringField
      FieldName = 'NOMB_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.NOMB_REFE_MARCA'
      Size = 60
    end
  end
  object data_marcas: TDataSource [18]
    DataSet = quer_marcas
    Left = 888
    Top = 217
  end
  object quer_grupos: TQuery [19]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_GRUPO, NOMB_REFE_GRUPO'
      'FROM GLO_REFE_GRUPOS'
      'ORDER BY NOMB_REFE_GRUPO')
    Left = 856
    Top = 239
    object quer_gruposCONS_REFE_GRUPO: TIntegerField
      FieldName = 'CONS_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.CONS_REFE_GRUPO'
    end
    object quer_gruposNOMB_REFE_GRUPO: TStringField
      FieldName = 'NOMB_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.NOMB_REFE_GRUPO'
      Size = 60
    end
  end
  object data_grupos: TDataSource [20]
    DataSet = quer_grupos
    Left = 888
    Top = 239
  end
  object quer_estilos: TQuery [21]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_ESTILO, NOMB_REFE_ESTILO'
      'FROM GLO_REFE_ESTILOS'
      'ORDER BY NOMB_REFE_ESTILO')
    Left = 856
    Top = 263
    object quer_estilosCONS_REFE_ESTILO: TIntegerField
      FieldName = 'CONS_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.CONS_REFE_ESTILO'
    end
    object quer_estilosNOMB_REFE_ESTILO: TStringField
      FieldName = 'NOMB_REFE_ESTILO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTILOS.NOMB_REFE_ESTILO'
      Size = 60
    end
  end
  object data_estilos: TDataSource [22]
    DataSet = quer_estilos
    Left = 888
    Top = 263
  end
  object quer_edades: TQuery [23]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_EDAD, NOMB_REFE_EDAD'
      'FROM GLO_REFE_EDADES'
      'ORDER BY NOMB_REFE_EDAD')
    Left = 856
    Top = 287
    object quer_edadesCONS_REFE_EDAD: TIntegerField
      FieldName = 'CONS_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.CONS_REFE_EDAD'
    end
    object quer_edadesNOMB_REFE_EDAD: TStringField
      FieldName = 'NOMB_REFE_EDAD'
      Origin = 'DATA_BASE_PCP.GLO_REFE_EDADES.NOMB_REFE_EDAD'
      Size = 60
    end
  end
  object data_edades: TDataSource [24]
    DataSet = quer_edades
    Left = 888
    Top = 287
  end
  object quer_sexos: TQuery [25]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_SEXO, NOMB_SEXO'
      'FROM SIS_SEXOS'
      'ORDER BY NOMB_SEXO')
    Left = 856
    Top = 307
    object quer_sexosCONS_SEXO: TIntegerField
      FieldName = 'CONS_SEXO'
      Origin = 'DATA_BASE_PCP.SIS_SEXOS.CONS_SEXO'
    end
    object quer_sexosNOMB_SEXO: TStringField
      FieldName = 'NOMB_SEXO'
      Origin = 'DATA_BASE_PCP.SIS_SEXOS.NOMB_SEXO'
      Size = 60
    end
  end
  object data_sexos: TDataSource [26]
    DataSet = quer_sexos
    Left = 888
    Top = 307
  end
  object quer_lavados: TQuery [27]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_LAVADO, NOMB_REFE_LAVADO'
      'FROM GLO_REFE_LAVADOS'
      'ORDER BY NOMB_REFE_LAVADO')
    Left = 856
    Top = 331
    object quer_lavadosCONS_REFE_LAVADO: TIntegerField
      FieldName = 'CONS_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LAVADOS.CONS_REFE_LAVADO'
    end
    object quer_lavadosNOMB_REFE_LAVADO: TStringField
      FieldName = 'NOMB_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LAVADOS.NOMB_REFE_LAVADO'
      Size = 60
    end
  end
  object data_lavados: TDataSource [28]
    DataSet = quer_lavados
    Left = 888
    Top = 331
  end
  object quer_estampados: TQuery [29]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_ESTAMPADO, NOMB_REFE_ESTAMPADO'
      'FROM GLO_REFE_ESTAMPADOS'
      'ORDER BY NOMB_REFE_ESTAMPADO')
    Left = 856
    Top = 355
    object quer_estampadosCONS_REFE_ESTAMPADO: TIntegerField
      FieldName = 'CONS_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTAMPADOS.CONS_REFE_ESTAMPADO'
    end
    object quer_estampadosNOMB_REFE_ESTAMPADO: TStringField
      FieldName = 'NOMB_REFE_ESTAMPADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_ESTAMPADOS.NOMB_REFE_ESTAMPADO'
      Size = 60
    end
  end
  object data_estampados: TDataSource [30]
    DataSet = quer_estampados
    Left = 888
    Top = 355
  end
  object quer_bordados: TQuery [31]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_REFE_BORDADO, NOMB_REFE_BORDADO'
      'FROM GLO_REFE_BORDADOS'
      'ORDER BY NOMB_REFE_BORDADO')
    Left = 856
    Top = 379
    object quer_bordadosCONS_REFE_BORDADO: TIntegerField
      FieldName = 'CONS_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_BORDADOS.CONS_REFE_BORDADO'
    end
    object quer_bordadosNOMB_REFE_BORDADO: TStringField
      FieldName = 'NOMB_REFE_BORDADO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_BORDADOS.NOMB_REFE_BORDADO'
      Size = 60
    end
  end
  object data_bordados: TDataSource [32]
    DataSet = quer_bordados
    Left = 888
    Top = 379
  end
  object quer_colores: TQuery [33]
    DatabaseName = 'data_base_pcp'
    Filter = 'ES_ENTREPIERNA=-1'
    Filtered = True
    SQL.Strings = (
      'SELECT CONS_COLOR, CODI_COLOR, NOMB_COLOR, MUES_COLOR,'
      'ES_ENTREPIERNA'
      'FROM GLO_COLORES'
      'ORDER BY NOMB_COLOR')
    Left = 856
    Top = 411
    object quer_coloresCONS_COLOR: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.CONS_COLOR'
    end
    object quer_coloresNOMB_COLOR: TStringField
      DisplayLabel = 'Color'
      FieldName = 'NOMB_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.NOMB_COLOR'
      Size = 60
    end
    object quer_coloresCODI_COLOR: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.CODI_COLOR'
      Size = 12
    end
    object quer_coloresMUES_COLOR: TIntegerField
      FieldName = 'MUES_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.MUES_COLOR'
    end
    object quer_coloresES_ENTREPIERNA: TIntegerField
      FieldName = 'ES_ENTREPIERNA'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.ES_ENTREPIERNA'
    end
  end
  object data_colores: TDataSource [34]
    AutoEdit = False
    DataSet = quer_colores
    Left = 888
    Top = 411
  end
  object tabl_refe_historial: TTable [35]
    AfterInsert = tabl_refe_historialAfterInsert
    BeforePost = tabl_refe_historialBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_REFERENCIA'
    MasterFields = 'CONS_REFERENCIA'
    MasterSource = data_ventana
    TableName = 'GLO_REFE_HISTORIAL'
    Left = 832
    Top = 499
  end
  inherited padr_acciones: TActionList
    object acti_nuev_color: TAction
      Category = 'Asignacion Colores'
      ImageIndex = 0
      OnExecute = acti_nuev_colorExecute
    end
    object acti_elim_color: TAction
      Category = 'Asignacion Colores'
      ImageIndex = 2
      OnExecute = acti_elim_colorExecute
    end
    object acti_edit_color: TAction
      Category = 'Asignacion Colores'
      ImageIndex = 1
      OnExecute = acti_edit_colorExecute
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList
    Left = 625
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009E9E9E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009E9E9E00929292007A7A7A0092929200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A00000000009E9E9E00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E9E9E00929292007A7A7A0000000000CECECE0000000000929292000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A
      4A00CECECE00CECECE00AAAAAA00868686000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009E9E9E009292
      92007A7A7A0000000000CECECE00DADADA00DADADA00B6B6B600000000009292
      9200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A000000
      00008686860092929200AAAAAA00E6E6E600E6E6E60000000000000000000000
      00000000000000000000000000000000000000000000000000007A7A7A000000
      0000CECECE00DADADA00DADADA00DADADA00DADADA00DADADA00B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600000000000000
      0000000000000000000000000000000000000000000000000000CECECE00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00B6B6B600B6B6
      B600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6000000
      00000000000000000000000000000000000000000000DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00B6B6
      B600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E6E600E6E6
      E600E6E6E600E6E6E600B6B6B60086868600E6E6E600E6E6E600E6E6E6000000
      00000000000000000000000000000000000000000000DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00B6B6
      B600B6B6B6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E6E600E6E6
      E600E6E6E600B6B6B6004A4A4A0032323200B6B6B60000000000000000000000
      00000000000000000000000000000000000000000000DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00E6E6E600FFFF
      FF00B6B6B6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E6006E6E6E00B6B6B600F2F2F2000096960000B9B900000000000000
      00000000000000000000000000000000000000000000DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00E6E6E600FFFFFF00C2C2C200C2C2
      C200FFFFFF00B6B6B60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E60086868600E6E6E60000000000B1FFFF0000DCDC00009696000000
      00000000000000000000000000000000000000000000DADADA00DADADA00DADA
      DA00DADADA00DADADA00E6E6E600FFFFFF00C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600B6B6B600E6E6E600E6E6E6000000000000DCDC00005032000073
      4A000000000000000000000000000000000000000000DADADA00DADADA00DADA
      DA00E6E6E600FFFFFF00C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200DADADA00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E6009E9E9E00E6E6E600E6E6E600000000000000000000B97A0000DC
      92000000B90000000000000000000000000000000000DADADA00E6E6E600FFFF
      FF009E9E9E009E9E9E00C2C2C200C2C2C200C2C2C200C2C2C200DADADA00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E6000000000000000000000000006B6B
      FF006B6BFF004848FF00000000000000000000000000FFFFFF009E9E9E009E9E
      9E009E9E9E009E9E9E00C2C2C200C2C2C200DADADA00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600000000000000000000000000000000000000
      00006B6BFF002525FF000000000000000000000000000000000000000000FFFF
      FF009E9E9E009E9E9E00DADADA00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7FFDFDFDFFFDEDEDEFFFBFB
      FBFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000898989FF676768FF7B6767FFA9A9
      A9FFFBFBFBFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF4A4A4AFFCECECEFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000667986FF4573C3FF8B7FA3FF7865
      65FFA9A9A9FFFBFBFBFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000080000000800000008000000080000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF4A4A
      4AFF4A4A4AFF000000FFCECECEFFCECECEFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      00008080800000000000000000000000000055B4FEFF49AFFFFF4474C4FF8B7F
      A3FF786565FFA9A9A9FFFBFBFBFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      000000000000000000000000000000000000000000FF4A4A4AFF4A4A4AFF4A4A
      4AFF4A4A4AFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000000000FF55B4FEFF49AFFFFF4475
      C6FF8B7FA3FF786565FFA9A9A9FFFBFBFBFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000008000
      0000800000008000000000000000000000000000000000000000800000008000
      000080000000000000000000000000000000000000FF000000FF000000FF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000080808000FFFF0000FFFF0000C0C0C000C0C0C000C0C0
      C000C0C0C000808080000000000000000000000000FF000000FF55B4FEFF49AF
      FFFF4475C6FF8B7FA3FF816E6EFFE8E8E8FFF5F5F5FFDCDCDCFFD5D5D5FFD7D7
      D7FFEFEFEFFFFEFEFEFF000000FF000000FF0000000000000000000000008000
      0000800000000000000000000000000000000000000000000000000000008000
      000080000000000000000000000000000000000000FF000000FF000000FF0000
      00FFE6E6E6FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00008080800000000000C0C0C000FFFF0000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000080808000000000FF000000FF000000FF55B4
      FEFF49AFFFFF4475C6FF6C6C6CFF777777FF8D6D6DFF9A6767FFC69393FFA47E
      7EFF615E5EFFA7A7A7FFF9F9F9FF000000FF0000000000000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000800000000000000000000000000000FF000000FF000000FF0000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000C0C0C000FFFF0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000000000FF000000FF000000FF0000
      00FF52B1FEFFBDBDBDFF857B7BFFD8AA91FFFFEBBCFFFFFDD2FFFFFFD6FFFFFF
      DAFFF2E8C9FF856666FF999999FFFBFBFBFF0000000000000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000800000000000000000000000000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000000000000000FF000000FF000000FF0000
      00FF000000FFD5D5D5FFE3B194FFFFFCD0FFFFF1BEFFFFFFD4FFFFFFE3FFFFFF
      ECFFFFFFFFFFFAF7E7FF655555FFD5D5D5FF0000000000000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000800000000000000000000000000000FF000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFF0000C0C0C00000000000000000FF000000FF000000FF0000
      00FF000000FFC79D9DFFFFE8BCFFFFE2AFFFFFF6C3FFFFFFD9FFFFFFEBFFFFFF
      FAFFFFFFFCFFFFFFDDFFB79085FF909090FF0000000000000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000800000000000000000000000000000FF000000FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFF0000C0C0C00000000000000000FF000000FF000000FF0000
      00FFFEFEFEFFD6A99CFFFFFACAFFFFDEABFFFFF3C0FFFFFFD6FFFFFFE5FFFFFF
      EEFFFFFFEBFFFFFFDCFFEDE3BAFF6E6E6EFF0000000000000000000000008000
      0000800000000000000000000000000000000000000080000000000000008000
      000080000000000000000000000000000000000000FF000000FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00008080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFF0000FFFF00000000000080808000000000FF000000FF000000FF0000
      00FF000000FFE4BFA5FFFFF9C6FFFFD7A4FFFFEAB7FFFFFECCFFFFFFD9FFFFFF
      DFFFFFFFDDFFFFFFD2FFFFF3C0FF7D7D7DFF0000000000000000000000008000
      0000800000000000000000000000000000000000000080000000800000008000
      000080000000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C000C0C0C000FFFF0000FFFF
      0000FFFF0000808080000000000000000000000000FF000000FF000000FF0000
      00FF000000FFCEA099FFFFFDD1FFFFE3B9FFFFDBABFFFFF2BFFFFFFAC7FFFFFF
      CDFFFFFDCAFFFFFBC9FFDAB797FFB0B0B0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      000000000000000000000000000000000000000000FF000000FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFE7D3D3FFFFF1C2FFFFFFFFFFFFF9EDFFFFDAA8FFFFE2AFFFFFE5
      B2FFFFE7B4FFFFE8B9FF986B6BFFEFEFEFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      000080000000000000000000000000000000000000FF000000FF000000FF0000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      000080808000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFBF8F8FFFFFFFFFFFFFFCEDFFFFF8D4FFFFDDAAFFFFF5
      C2FFFFE6BAFFC08D81FFD8D8D8FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FFE6E6E6FFE6E6E6FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFC5A2A2FFD8B89CFFFFE8B5FFFFE2AFFFEDC6
      A3FFB78787FFEAEAEAFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFF7F00000000F1FFFC3F00000000
      C0FFF01F00000000007FC00F00000000C03FC00F00000000E01F800F00000000
      C00F800700000000C01F800700000000801F800300000000801F800300000000
      000F80010000000000078003000000000003800700000000C0C1801F00000000
      F0E1C07F00000000FDF3F1FF000000009FFF0FFFFFFFFFFF8FFF07FFFFFFF8FF
      C7FF03FFFC3FE07FE20701FFF00F803FF00380FFE3C7E01FF801C003E7E7F00F
      F000E001CFF3E007F000F000CFF3E00FF000F800CFF3C00FF000F800CFF3C01F
      F000F000E7A7801FF000F800E787803FF801F800FF8F803FFC03F800FF87E07F
      FE07FC01FFFFF87FFFFFFE03FFFFFEFF00000000000000000000000000000000
      000000000000}
  end
  inherited Variables: TSCLPropiedadesForm
    Left = 32
    Top = 24
  end
  inherited Tabla_Ventana: TTable
    TableName = 'GLO_REFERENCIAS'
    object Tabla_VentanaCONS_REFERENCIA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFERENCIA'
      Required = True
    end
    object Tabla_VentanaCODI_REFERENCIA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFERENCIA'
      Required = True
      Size = 12
    end
    object Tabla_VentanaCONS_REFE_TEMPORADA: TIntegerField
      DisplayLabel = 'Temporada'
      FieldName = 'CONS_REFE_TEMPORADA'
      Required = True
    end
    object Tabla_VentanaMOLDE: TStringField
      DisplayLabel = 'Molde'
      FieldName = 'MOLDE'
      Size = 12
    end
    object Tabla_VentanaCODI_INTE_REFERENCIA: TStringField
      DisplayLabel = 'C.I.R.'
      FieldName = 'CODI_INTE_REFERENCIA'
      Size = 12
    end
    object Tabla_VentanaNOMB_REFERENCIA: TStringField
      DisplayLabel = 'Nombre comercial'
      FieldName = 'NOMB_REFERENCIA'
      Required = True
      Size = 60
    end
    object Tabla_VentanaCODI_BARRAS: TStringField
      DisplayLabel = 'Código de barras'
      FieldName = 'CODI_BARRAS'
      Size = 30
    end
    object Tabla_VentanaCONS_REFE_MARCA: TIntegerField
      DisplayLabel = 'Marca'
      FieldName = 'CONS_REFE_MARCA'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_LINEA: TIntegerField
      DisplayLabel = 'Línea'
      FieldName = 'CONS_REFE_LINEA'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_EDAD: TIntegerField
      DisplayLabel = 'Edad'
      FieldName = 'CONS_REFE_EDAD'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_ESTILO: TIntegerField
      DisplayLabel = 'Estilo'
      FieldName = 'CONS_REFE_ESTILO'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_GRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'CONS_REFE_GRUPO'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_SEXO: TIntegerField
      DisplayLabel = 'Sexo'
      FieldName = 'CONS_REFE_SEXO'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_LAVADO: TIntegerField
      DisplayLabel = 'Lavado'
      FieldName = 'CONS_REFE_LAVADO'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_BORDADO: TIntegerField
      DisplayLabel = 'Bordado'
      FieldName = 'CONS_REFE_BORDADO'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_ESTAMPADO: TIntegerField
      DisplayLabel = 'Estampado'
      FieldName = 'CONS_REFE_ESTAMPADO'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_GRUP_TALLAS: TIntegerField
      DisplayLabel = 'Grupo de tallas'
      FieldName = 'CONS_REFE_GRUP_TALLAS'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_ESTADO: TIntegerField
      DisplayLabel = 'Estado'
      FieldName = 'CONS_REFE_ESTADO'
      Required = True
    end
    object Tabla_VentanaIMAGEN: TBlobField
      DisplayLabel = 'Imágen'
      FieldName = 'IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object Tabla_VentanaCON_ENTREPIERNAS: TIntegerField
      FieldName = 'CON_ENTREPIERNAS'
      OnChange = Tabla_VentanaCON_ENTREPIERNASChange
    end
    object Tabla_VentanaAJUS_IMAGEN: TIntegerField
      FieldName = 'AJUS_IMAGEN'
    end
    object Tabla_VentanaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Size = 240
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaES_PROTOTIPO: TIntegerField
      FieldName = 'ES_PROTOTIPO'
    end
    object Tabla_VentanaIMAG_SMALL: TBlobField
      FieldName = 'IMAG_SMALL'
      BlobType = ftBlob
      Size = 1
    end
  end
  object tabl_refe_colores: TTable [41]
    AfterInsert = tabl_refe_coloresAfterInsert
    BeforeEdit = doValidarColor
    BeforePost = tabl_refe_coloresBeforePost
    BeforeDelete = doValidarColor
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_REFERENCIA;SECU_COLOR'
    MasterFields = 'CONS_REFERENCIA'
    MasterSource = data_ventana
    TableName = 'GLO_REFE_COLORES'
    Left = 928
    Top = 486
    object tabl_refe_coloresCONS_REFE_COLOR: TIntegerField
      FieldName = 'CONS_REFE_COLOR'
      Required = True
    end
    object tabl_refe_coloresCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Required = True
    end
    object tabl_refe_coloresSECU_COLOR: TIntegerField
      DisplayLabel = 'Secuencia'
      FieldName = 'SECU_COLOR'
      Required = True
    end
    object tabl_refe_coloresCONS_COLOR: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_COLOR'
      Required = True
    end
    object tabl_refe_coloresFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_refe_coloresUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
    object tabl_refe_colorescodi_color: TStringField
      DisplayLabel = 'Código'
      FieldKind = fkLookup
      FieldName = 'codi_color'
      LookupDataSet = quer_colores
      LookupKeyFields = 'CONS_COLOR'
      LookupResultField = 'CODI_COLOR'
      KeyFields = 'CONS_COLOR'
      Size = 12
      Lookup = True
    end
    object tabl_refe_coloresNOMB_COLOR: TStringField
      DisplayLabel = 'Color'
      FieldKind = fkLookup
      FieldName = 'NOMB_COLOR'
      LookupDataSet = quer_colores
      LookupKeyFields = 'CONS_COLOR'
      LookupResultField = 'NOMB_COLOR'
      KeyFields = 'CONS_COLOR'
      Size = 60
      Lookup = True
    end
    object tabl_refe_coloresNUME_COLOR: TStringField
      DisplayLabel = 'Número'
      FieldName = 'NUME_COLOR'
      Size = 6
    end
    object tabl_refe_coloresMUES_COLOR: TIntegerField
      FieldKind = fkLookup
      FieldName = 'MUES_COLOR'
      LookupDataSet = quer_colores
      LookupKeyFields = 'CONS_COLOR'
      LookupResultField = 'MUES_COLOR'
      KeyFields = 'CONS_COLOR'
      Lookup = True
    end
  end
  object data_refe_colores: TDataSource [42]
    DataSet = tabl_refe_colores
    OnStateChange = data_refe_coloresStateChange
    Left = 960
    Top = 486
  end
  object quer_secu_color: TQuery [43]
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select max(secu_color) as secuencia'
      'from glo_refe_colores'
      'where cons_Referencia = :cons_Referencia')
    Left = 928
    Top = 518
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_Referencia'
        ParamType = ptUnknown
      end>
  end
  object pop_grid_colores: TTBXPopupMenu [44]
    Left = 648
    Top = 191
    object TBXItem16: TTBXItem
      Action = acti_colo_asignar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem5: TTBXSeparatorItem
    end
    object TBXItem18: TTBXItem
      Action = acti_colo_ir
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
    object TBXItem19: TTBXItem
      Action = acti_colo_actualizar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
  end
  object pop_grid_colo_asignados: TTBXPopupMenu [45]
    Left = 648
    Top = 223
    object TBXItem1: TTBXItem
      Action = acti_colo_asignar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
    object TBXItem2: TTBXItem
      Action = acti_colo_editar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
    object TBXItem3: TTBXItem
      Action = acti_colo_eliminar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem1: TTBXSeparatorItem
    end
    object TBXItem20: TTBXItem
      Action = acti_colo_ir
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
    object TBXItem21: TTBXItem
      Action = acti_colo_actualizar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
  end
  object quer_grup_tallas: TQuery [46]
    AfterOpen = quer_temporadas_coloresAfterOpen
    OnCalcFields = quer_temporadas_coloresCalcFields
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select CONS_GRUP_TALLAS, NOMB_GRUP_TALLAS,'
      'TALLAS'
      'From CON_GLO_GRUP_TALLAS'
      'Order by NOMB_GRUP_TALLAS')
    Left = 856
    Top = 444
    object quer_grup_tallasCONS_GRUP_TALLAS: TIntegerField
      FieldName = 'CONS_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.GLO_GRUP_TALLAS.CONS_GRUP_TALLAS'
    end
    object quer_grup_tallasNOMB_GRUP_TALLAS: TStringField
      FieldName = 'NOMB_GRUP_TALLAS'
      Origin = 'DATA_BASE_PCP.GLO_GRUP_TALLAS.NOMB_GRUP_TALLAS'
      Size = 60
    end
    object quer_grup_tallasTALLAS: TStringField
      FieldName = 'TALLAS'
      Size = 240
    end
  end
  object data_grup_Tallas: TDataSource [47]
    DataSet = quer_grup_tallas
    Left = 888
    Top = 444
  end
  object quer_refe_tipo_variaciones: TQuery [48]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_refe_tipo_variacion, codi_refe_tipo_variacion, '
      'nomb_refe_tipo_variacion'
      'from PCP_REFE_TIPO_VARIACIONES'
      'order by nomb_refe_tipo_variacion')
    Left = 858
    Top = 134
    object quer_refe_tipo_variacionesCONS_REFE_TIPO_VARIACION: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_TIPO_VARIACION'
    end
    object quer_refe_tipo_variacionesCODI_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_TIPO_VARIACION'
      Size = 12
    end
    object quer_refe_tipo_variacionesNOMB_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Variación'
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Size = 60
    end
  end
  object data_refe_tipo_variaciones: TDataSource [49]
    DataSet = quer_refe_tipo_variaciones
    Left = 890
    Top = 134
  end
  object tabl_refe_variaciones: TTable [50]
    BeforeEdit = doValidarVariacion
    BeforePost = tabl_refe_variacionesBeforePost
    BeforeDelete = doValidarVariacion
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_REFERENCIA;CONS_REFE_TIPO_VARIACION'
    MasterFields = 'CONS_REFERENCIA'
    MasterSource = data_ventana
    TableName = 'PCP_REFE_VARIACIONES'
    Left = 861
    Top = 488
    object tabl_refe_variacionesCONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
      Required = True
    end
    object tabl_refe_variacionesCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Required = True
    end
    object tabl_refe_variacionesCONS_REFE_TIPO_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_TIPO_VARIACION'
      Required = True
    end
    object tabl_refe_variacionesOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 250
    end
    object tabl_refe_variacionesFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_refe_variacionesUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
    end
    object tabl_refe_variacionesCODI_REFE_TIPO_VARIACION: TStringField
      DisplayLabel = 'Código'
      FieldKind = fkLookup
      FieldName = 'CODI_REFE_TIPO_VARIACION'
      LookupDataSet = quer_refe_tipo_variaciones
      LookupKeyFields = 'CONS_REFE_TIPO_VARIACION'
      LookupResultField = 'CODI_REFE_TIPO_VARIACION'
      KeyFields = 'CONS_REFE_TIPO_VARIACION'
      Size = 12
      Lookup = True
    end
    object tabl_refe_variacionesNOMB_TIPO_VARIACION: TStringField
      DisplayLabel = 'Variación'
      FieldKind = fkLookup
      FieldName = 'NOMB_TIPO_VARIACION'
      LookupDataSet = quer_refe_tipo_variaciones
      LookupKeyFields = 'CONS_REFE_TIPO_VARIACION'
      LookupResultField = 'NOMB_REFE_TIPO_VARIACION'
      KeyFields = 'CONS_REFE_TIPO_VARIACION'
      Size = 60
      Lookup = True
    end
  end
  object data_refe_variaciones: TDataSource [51]
    DataSet = tabl_refe_variaciones
    Left = 893
    Top = 488
  end
  object pop_vari_existentes: TTBXPopupMenu [52]
    Left = 682
    Top = 192
    object TBXItem4: TTBXItem
      Action = acti_vari_adicionar
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem2: TTBXSeparatorItem
    end
    object TBXItem5: TTBXItem
      Action = acti_vari_ir
      Images = _fMDI.imag_pequenas
    end
    object TBXItem11: TTBXItem
      Action = acti_vari_actualizar
      Images = _fMDI.imag_pequenas
    end
  end
  object acti_ventana: TActionList [53]
    Images = _fMDI.imagenesPCP
    OnUpdate = acti_ventanaUpdate
    Left = 523
    Top = 214
    object acti_vari_adicionar: TAction
      Category = 'Variaciones'
      Caption = 'Asignar variación'
      ImageIndex = 26
      OnExecute = asignarVariacion
    end
    object acti_vari_ir: TAction
      Category = 'Variaciones'
      Caption = 'Ir a la codificación de variaciones de referencia'
      ImageIndex = 34
      OnExecute = acti_vari_irExecute
    end
    object acti_vari_eliminar: TAction
      Category = 'Variaciones'
      Caption = 'Eliminar la variación asignada'
      ImageIndex = 27
      OnExecute = acti_vari_eliminarExecute
    end
    object acti_colo_asignar: TAction
      Category = 'Colores'
      Caption = 'Asignar color'
      ImageIndex = 26
      OnExecute = acti_nuev_colorExecute
    end
    object acti_vari_actualizar: TAction
      Category = 'Variaciones'
      Caption = 'Actualizar variaciones'
      ImageIndex = 4
      OnExecute = acti_vari_actualizarExecute
    end
    object acti_colo_eliminar: TAction
      Category = 'Colores'
      Caption = 'Eliminar color'
      ImageIndex = 27
      OnExecute = acti_elim_colorExecute
    end
    object acti_colo_ir: TAction
      Category = 'Colores'
      Caption = 'Ir a la codificación de colores'
      ImageIndex = 34
      OnExecute = menu_colo_ir_codificacionClick
    end
    object acti_colo_actualizar: TAction
      Category = 'Colores'
      Caption = 'Actualizar colores'
      ImageIndex = 4
      OnExecute = boto_actu_coloresClick
    end
    object acti_colo_editar: TAction
      Category = 'Colores'
      Caption = 'Editar color'
      ImageIndex = 1
      OnExecute = acti_edit_colorExecute
    end
    object padr_acti_subir: TAction
      Caption = 'Subir'
      ImageIndex = 28
      OnExecute = padr_acti_subirExecute
    end
    object padr_acti_bajar: TAction
      Caption = 'Bajar'
      ImageIndex = 29
      OnExecute = padr_acti_bajarExecute
    end
    object acti_refe_imagenes: TAction
      Caption = 'Regenerar imágenes'
      OnExecute = acti_refe_imagenesExecute
    end
  end
  object pop_grid_vari_asignadas: TTBXPopupMenu [54]
    Left = 683
    Top = 227
    object TBXItem6: TTBXItem
      Action = acti_vari_eliminar
      Images = _fMDI.imag_pequenas
    end
  end
  object quer_colo_eliminar: TQuery [55]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Delete from glo_refe_colores'
      'where secu_color = :secu_color'
      'and cons_referencia = :cons_referencia')
    Left = 862
    Top = 525
    ParamData = <
      item
        DataType = ftInteger
        Name = 'secu_color'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_referencia'
        ParamType = ptInput
      end>
  end
  object quer_vari_eliminar: TQuery [56]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Delete from pcp_refe_variaciones'
      'where cons_refe_variacion = :cons_refe_variacion')
    Left = 893
    Top = 526
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end>
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 690
    Top = 10
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 658
    Top = 10
  end
  inherited imag_pequenas: TImageList
    Left = 587
    Top = 10
  end
  inherited padr_pict_container: TPictureContainer
    Left = 522
    Top = 8
  end
  object quer_refe_estados: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'Select cons_refe_estado, nomb_refe_estado'
      'from glo_Refe_estados'
      'where cons_Refe_estado = :cons_refe_estado')
    Left = 520
    Top = 52
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_ESTADO'
        ParamType = ptUnknown
      end>
  end
  object data_refe_estados: TDataSource
    DataSet = quer_refe_estados
    Left = 552
    Top = 52
  end
  object quer_subir: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_refe_colores
    SQL.Strings = (
      'Execute procedure'
      'PRO_GLO_REFE_COLO_SUBIR(:cons_refe_color)')
    Left = 541
    Top = 341
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_refe_color'
        ParamType = ptUnknown
      end>
  end
  object quer_bajar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_refe_colores
    SQL.Strings = (
      'Execute procedure'
      'PRO_GLO_REFE_COLO_BAJAR(:cons_refe_color)')
    Left = 573
    Top = 341
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_refe_color'
        ParamType = ptUnknown
      end>
  end
end

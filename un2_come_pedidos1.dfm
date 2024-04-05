inherited fn2_come_pedidos1: Tfn2_come_pedidos1
  Left = 55
  Top = 40
  Width = 812
  Height = 540
  ActiveControl = dxDBEdit1
  OldCreateOrder = True
  WindowState = wsMaximized
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 503
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_vinculos: TTBXSubmenuItem
        Images = _fMDI.imag_grandes
        LinkSubitems = _fMDI.menu_comercial
        Visible = True
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_beve_1: TBevel
      Width = 784
    end
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 504
    Width = 804
    Visible = True
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
  object pane_info_pedido: TPCPFrame [6]
    Tag = 115
    Left = 0
    Top = 54
    Width = 804
    Height = 115
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
    Caption = 'Información básica del pedido'
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel1: TSCLDBLabel
      Left = 9
      Top = 26
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
      FocusControl = dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'No. pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NUME_PEDIDO'
      Field = 'NUME_PEDIDO'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 270
      Top = 26
      Width = 99
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
      FocusControl = PCPLookUpComboEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Temporada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_REFE_TEMPORADA'
      Field = 'CONS_REFE_TEMPORADA'
    end
    object SCLDBLabel3: TSCLDBLabel
      Left = 10
      Top = 46
      Width = 99
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
      FocusControl = PCPLookUpComboEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Cód. cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_TERCERO'
      Field = 'CONS_TERCERO'
    end
    object SCLDBLabel4: TSCLDBLabel
      Left = 270
      Top = 46
      Width = 99
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
      FocusControl = PCPLookUpComboEdit3
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_TERCERO'
      Field = 'CONS_TERCERO'
    end
    object SCLDBLabel5: TSCLDBLabel
      Left = 10
      Top = 66
      Width = 99
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
      FocusControl = dxDBDateEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_PEDIDO'
      Field = 'FECH_PEDIDO'
    end
    object SCLDBLabel6: TSCLDBLabel
      Left = 270
      Top = 66
      Width = 99
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
      FocusControl = dxDBDateEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Fecha entrega:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'FECH_ENTREGA'
      Field = 'FECH_ENTREGA'
    end
    object SCLDBLabel7: TSCLDBLabel
      Left = 529
      Top = 66
      Width = 99
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
      FocusControl = PCPLookUpComboEdit4
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Prioridad:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_COME_PRIO_PEDIDO'
      Field = 'CONS_COME_PRIO_PEDIDO'
    end
    object SCLDBLabel8: TSCLDBLabel
      Left = 10
      Top = 86
      Width = 99
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
      FocusControl = PCPLookUpComboEdit5
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Cod. vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_COME_VENDEDOR'
      Field = 'CONS_COME_VENDEDOR'
    end
    object SCLDBLabel9: TSCLDBLabel
      Left = 270
      Top = 86
      Width = 99
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
      FocusControl = PCPLookUpComboEdit6
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CONS_COME_VENDEDOR'
      Field = 'CONS_COME_VENDEDOR'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 111
      Top = 26
      Width = 160
      TabOrder = 1
      DataField = 'NUME_PEDIDO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object PCPLookUpComboEdit1: TPCPLookUpComboEdit
      Left = 371
      Top = 26
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
      Left = 111
      Top = 46
      Width = 160
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_TERCERO'
      DataSource = data_ventana
      KeyField = 'cons_tercero'
      ListField = 'codi_tercero'
      ListSource = data_clientes
      ParentCtl3D = False
      TabOrder = 3
      DirectInput = False
    end
    object PCPLookUpComboEdit3: TPCPLookUpComboEdit
      Left = 371
      Top = 46
      Width = 260
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_TERCERO'
      DataSource = data_ventana
      KeyField = 'cons_tercero'
      ListField = 'nomb_tercero'
      ListSource = data_clientes
      ParentCtl3D = False
      TabOrder = 4
      DirectInput = False
    end
    object dxDBDateEdit1: TdxDBDateEdit
      Left = 111
      Top = 66
      Width = 160
      TabOrder = 5
      DataField = 'FECH_PEDIDO'
      DataSource = data_ventana
      StyleController = padr_estilo
      SaveTime = False
    end
    object dxDBDateEdit2: TdxDBDateEdit
      Left = 371
      Top = 66
      Width = 160
      TabOrder = 6
      DataField = 'FECH_ENTREGA'
      DataSource = data_ventana
      StyleController = padr_estilo
      SaveTime = False
    end
    object PCPLookUpComboEdit4: TPCPLookUpComboEdit
      Left = 630
      Top = 66
      Width = 160
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_COME_PRIO_PEDIDO'
      DataSource = data_ventana
      KeyField = 'cons_come_prio_pedido'
      ListField = 'nomb_come_prio_pedido'
      ListSource = data_prio_pedidos
      ParentCtl3D = False
      TabOrder = 7
      DirectInput = False
    end
    object PCPLookUpComboEdit5: TPCPLookUpComboEdit
      Left = 111
      Top = 86
      Width = 160
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_COME_VENDEDOR'
      DataSource = data_ventana
      KeyField = 'cons_come_vendedor'
      ListField = 'codi_come_vendedor'
      ListSource = data_vendedores
      ParentCtl3D = False
      TabOrder = 8
      DirectInput = False
    end
    object PCPLookUpComboEdit6: TPCPLookUpComboEdit
      Left = 371
      Top = 86
      Width = 260
      Height = 21
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_COME_VENDEDOR'
      DataSource = data_ventana
      KeyField = 'cons_come_vendedor'
      ListField = 'nomb_come_vendedor'
      ListSource = data_vendedores
      ParentCtl3D = False
      TabOrder = 9
      DirectInput = False
    end
  end
  object page: TSCLPageControl [7]
    Left = 0
    Top = 169
    Width = 804
    Height = 334
    ActivePage = page_unidades
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 1
    TabOrder = 7
    Transparent = True
    Visible = False
    OnChange = pageChange
    FixedDimension = 19
    object page_despacho: TSCLTabSheet
      Color = 16578290
      Caption = 'Facturación y despacho'
      object PCPFrame1: TPCPFrame
        Tag = 115
        Left = 0
        Top = 0
        Width = 800
        Height = 115
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
        Caption = 'Datos de facturación'
        Titulo_Color = 16244694
        Boton_Visible = False
        FlatBorder = True
        object SCLDBLabel14: TSCLDBLabel
          Left = 10
          Top = 24
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
          FocusControl = PCPLookUpComboEdit8
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
        object SCLDBLabel15: TSCLDBLabel
          Left = 270
          Top = 24
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
          FocusControl = dxDBEdit7
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Cédula o NIT:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel16: TSCLDBLabel
          Left = 530
          Top = 24
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
          FocusControl = PCPLookUpComboEdit9
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Razón social:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel22: TSCLDBLabel
          Left = 10
          Top = 44
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
          FocusControl = dxDBEdit2
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Contacto 1 :'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel23: TSCLDBLabel
          Left = 530
          Top = 44
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
          FocusControl = dxDBEdit6
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Contacto 2 :'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel24: TSCLDBLabel
          Left = 10
          Top = 64
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
          FocusControl = dxDBEdit8
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'País :'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel25: TSCLDBLabel
          Left = 530
          Top = 64
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
          FocusControl = dxDBEdit10
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Ciudad :'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel26: TSCLDBLabel
          Left = 270
          Top = 64
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
          FocusControl = dxDBEdit9
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Departamento :'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel27: TSCLDBLabel
          Left = 10
          Top = 84
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
          FocusControl = dxDBEdit11
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Dirección :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Layout = tlTop
          ParentFont = False
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel28: TSCLDBLabel
          Left = 530
          Top = 84
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
          FocusControl = dxDBEdit12
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Código Postal :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Layout = tlTop
          ParentFont = False
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object dxDBEdit2: TdxDBEdit
          Left = 112
          Top = 44
          Width = 261
          Enabled = False
          TabOrder = 1
          AutoSize = False
          DataField = 'CONTACTO1'
          DataSource = data_fact_a
          StyleController = padr_estilo
          Height = 21
        end
        object dxDBEdit6: TdxDBEdit
          Left = 632
          Top = 44
          Width = 260
          Enabled = False
          TabOrder = 2
          AutoSize = False
          DataField = 'CONTACTO2'
          DataSource = data_fact_a
          StyleController = padr_estilo
          Height = 21
        end
        object PCPLookUpComboEdit8: TPCPLookUpComboEdit
          Left = 112
          Top = 24
          Width = 160
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_FACTURAR_A'
          DataSource = data_ventana
          Enabled = False
          KeyField = 'cons_facturar_a'
          ListField = 'codi_facturar_a'
          ListSource = data_fact_a
          ParentCtl3D = False
          TabOrder = 3
          DirectInput = False
        end
        object dxDBEdit7: TdxDBEdit
          Left = 372
          Top = 24
          Width = 160
          Enabled = False
          TabOrder = 4
          DataField = 'IDEN_FACTURAR_A'
          DataSource = data_fact_a
          StyleController = padr_estilo
        end
        object PCPLookUpComboEdit9: TPCPLookUpComboEdit
          Left = 632
          Top = 24
          Width = 260
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_FACTURAR_A'
          DataSource = data_ventana
          Enabled = False
          KeyField = 'cons_facturar_a'
          ListField = 'nomb_facturar_a'
          ListSource = data_fact_a
          ParentCtl3D = False
          TabOrder = 5
          DirectInput = False
        end
        object dxDBEdit8: TdxDBEdit
          Left = 112
          Top = 64
          Width = 160
          Enabled = False
          TabOrder = 6
          DataField = 'NOMB_PAIS'
          DataSource = data_fact_a
          StyleController = padr_estilo
        end
        object dxDBEdit9: TdxDBEdit
          Left = 372
          Top = 64
          Width = 160
          Enabled = False
          TabOrder = 7
          DataField = 'NOMB_DEPARTAMENTO'
          DataSource = data_fact_a
          StyleController = padr_estilo
        end
        object dxDBEdit10: TdxDBEdit
          Left = 632
          Top = 64
          Width = 160
          Enabled = False
          TabOrder = 8
          DataField = 'NOMB_CIUDAD'
          DataSource = data_fact_a
          StyleController = padr_estilo
        end
        object dxDBEdit11: TdxDBEdit
          Left = 112
          Top = 84
          Width = 261
          Enabled = False
          TabOrder = 9
          DataField = 'DIRECCION'
          DataSource = data_fact_a
          StyleController = padr_estilo
        end
        object dxDBEdit12: TdxDBEdit
          Left = 632
          Top = 84
          Width = 160
          Enabled = False
          TabOrder = 10
          DataField = 'CODI_POSTAL'
          DataSource = data_fact_a
          StyleController = padr_estilo
        end
        object dxDBEdit13: TdxDBEdit
          Left = 531
          Top = 24
          Width = 21
          Enabled = False
          TabOrder = 11
          DataField = 'DIGI_VERIFICACION'
          DataSource = data_fact_a
          StyleController = padr_estilo
        end
      end
      object PCPFrame3: TPCPFrame
        Tag = 189
        Left = 0
        Top = 115
        Width = 800
        Height = 196
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
        Caption = 'Datos de despacho'
        Titulo_Color = 16244694
        Boton_Visible = False
        FlatBorder = True
        object SCLDBLabel17: TSCLDBLabel
          Left = 10
          Top = 24
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
          FocusControl = PCPLookUpComboEdit10
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
        object SCLDBLabel18: TSCLDBLabel
          Left = 270
          Top = 24
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
          FocusControl = dxDBEdit5
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Cédula o NIT:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel19: TSCLDBLabel
          Left = 530
          Top = 24
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
          FocusControl = PCPLookUpComboEdit11
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Razón social:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel20: TSCLDBLabel
          Left = 10
          Top = 44
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
          Caption = 'Contacto 1 :'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel21: TSCLDBLabel
          Left = 530
          Top = 44
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
          FocusControl = dxDBEdit4
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Contacto 2 :'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel29: TSCLDBLabel
          Left = 10
          Top = 64
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
          FocusControl = dxDBEdit14
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'País :'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel30: TSCLDBLabel
          Left = 530
          Top = 64
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
          FocusControl = dxDBEdit16
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Ciudad :'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel31: TSCLDBLabel
          Left = 270
          Top = 64
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
          FocusControl = dxDBEdit15
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Departamento :'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel32: TSCLDBLabel
          Left = 10
          Top = 84
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
          FocusControl = dxDBEdit17
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Dirección :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Layout = tlTop
          ParentFont = False
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel33: TSCLDBLabel
          Left = 530
          Top = 84
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
          FocusControl = dxDBEdit18
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Código Postal :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Layout = tlTop
          ParentFont = False
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object dxDBEdit3: TdxDBEdit
          Left = 112
          Top = 44
          Width = 261
          Enabled = False
          TabOrder = 1
          AutoSize = False
          DataField = 'CONTACTO1'
          DataSource = data_desp_a
          StyleController = padr_estilo
          Height = 21
        end
        object dxDBEdit4: TdxDBEdit
          Left = 632
          Top = 44
          Width = 260
          Enabled = False
          TabOrder = 2
          AutoSize = False
          DataField = 'CONTACTO2'
          DataSource = data_desp_a
          StyleController = padr_estilo
          Height = 21
        end
        object PCPLookUpComboEdit10: TPCPLookUpComboEdit
          Left = 112
          Top = 24
          Width = 160
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_DESPACHAR_A'
          DataSource = data_ventana
          Enabled = False
          KeyField = 'cons_despachar_a'
          ListField = 'codi_despachar_a'
          ListSource = data_desp_a
          ParentCtl3D = False
          TabOrder = 3
          DirectInput = False
        end
        object dxDBEdit5: TdxDBEdit
          Left = 372
          Top = 24
          Width = 160
          Enabled = False
          TabOrder = 4
          DataField = 'IDEN_DESPACHAR_A'
          DataSource = data_desp_a
          StyleController = padr_estilo
        end
        object PCPLookUpComboEdit11: TPCPLookUpComboEdit
          Left = 632
          Top = 24
          Width = 260
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'CONS_DESPACHAR_A'
          DataSource = data_ventana
          Enabled = False
          KeyField = 'cons_despachar_a'
          ListField = 'nomb_despachar_a'
          ListSource = data_desp_a
          ParentCtl3D = False
          TabOrder = 5
          DirectInput = False
        end
        object dxDBEdit14: TdxDBEdit
          Left = 112
          Top = 64
          Width = 160
          Enabled = False
          TabOrder = 6
          DataField = 'NOMB_PAIS'
          DataSource = data_desp_a
          StyleController = padr_estilo
        end
        object dxDBEdit15: TdxDBEdit
          Left = 372
          Top = 64
          Width = 160
          Enabled = False
          TabOrder = 7
          DataField = 'NOMB_DEPARTAMENTO'
          DataSource = data_desp_a
          StyleController = padr_estilo
        end
        object dxDBEdit16: TdxDBEdit
          Left = 632
          Top = 64
          Width = 160
          Enabled = False
          TabOrder = 8
          DataField = 'NOMB_CIUDAD'
          DataSource = data_desp_a
          StyleController = padr_estilo
        end
        object dxDBEdit17: TdxDBEdit
          Left = 112
          Top = 84
          Width = 261
          Enabled = False
          TabOrder = 9
          DataField = 'DIRECCION'
          DataSource = data_desp_a
          StyleController = padr_estilo
        end
        object dxDBEdit18: TdxDBEdit
          Left = 632
          Top = 84
          Width = 160
          Enabled = False
          TabOrder = 10
          DataField = 'CODI_POSTAL'
          DataSource = data_desp_a
          StyleController = padr_estilo
        end
        object dxDBEdit19: TdxDBEdit
          Left = 531
          Top = 24
          Width = 21
          Enabled = False
          TabOrder = 11
          DataField = 'DIGI_VERIFICACION'
          DataSource = data_desp_a
          StyleController = padr_estilo
        end
      end
    end
    object page_unidades: TSCLTabSheet
      Color = 16578290
      Caption = 'Unidades'
      OnShow = page_unidadesShow
      object dfsSplitter1: TdfsSplitter
        Left = 245
        Top = 26
        Height = 285
        Cursor = crHSplit
        Align = alLeft
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object pane_referencias: TPCPFrame
        Tag = 278
        Left = 0
        Top = 26
        Width = 245
        Height = 285
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
        Caption = 'Referencias del pedido'
        Titulo_Color = 16244694
        Boton_Visible = False
        FlatBorder = True
        object Panel1: TPanel
          Left = 3
          Top = 22
          Width = 239
          Height = 260
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 3
          TabOrder = 1
          object grid_referencias: TdxDBGrid
            Left = 3
            Top = 3
            Width = 233
            Height = 254
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 0
            DataSource = data_pedi_referencia
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
            OnChangeNode = grid_referenciasChangeNode
            object grid_referenciasCONS_PEDI_REFERENCIA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 52
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_PEDI_REFERENCIA'
            end
            object grid_referenciasCONS_PEDIDO: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 30
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_PEDIDO'
            end
            object grid_referenciasCONS_REFERENCIA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 25
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_REFERENCIA'
            end
            object grid_referenciasCONS_REFE_VARIACION: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 25
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_REFE_VARIACION'
            end
            object grid_referenciasORDE_COMPRA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 79
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ORDE_COMPRA'
            end
            object grid_referenciasCONS_REFE_LAVADO: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 25
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_REFE_LAVADO'
            end
            object grid_referenciasTOLE_INFERIOR: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 34
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TOLE_INFERIOR'
            end
            object grid_referenciasTOLE_SUPERIOR: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 34
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TOLE_SUPERIOR'
            end
            object grid_referenciasFECH_SISTEMA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 31
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FECH_SISTEMA'
            end
            object grid_referenciasUSUA_SISTEMA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 33
              BandIndex = 0
              RowIndex = 0
              FieldName = 'USUA_SISTEMA'
            end
            object grid_referenciasCODI_REFERENCIA: TdxDBGridLookupColumn
              HeaderAlignment = taCenter
              Width = 73
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODI_REFERENCIA'
            end
            object grid_referenciasNOMB_VARIACION: TdxDBGridLookupColumn
              HeaderAlignment = taCenter
              Width = 62
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_VARIACION'
            end
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object TBXItem6: TTBXItem
            Action = acti_refe_nuevo
            DisplayMode = nbdmImageAndText
            ImageIndex = 0
            Images = _fMDI.imag_pequenas
          end
          object TBXItem5: TTBXItem
            Action = acti_refe_editar
            DisplayMode = nbdmImageAndText
            ImageIndex = 1
            Images = _fMDI.imag_pequenas
          end
          object TBXSeparatorItem1: TTBXSeparatorItem
          end
          object TBXItem4: TTBXItem
            Action = acti_refe_eliminar
            DisplayMode = nbdmImageAndText
            ImageIndex = 2
            Images = _fMDI.imag_pequenas
          end
          object TBXSeparatorItem2: TTBXSeparatorItem
          end
          object TBXItem3: TTBXItem
            Action = acti_refe_guardar
            DisplayMode = nbdmImageAndText
            ImageIndex = 5
            Images = _fMDI.imag_pequenas
          end
          object TBXItem2: TTBXItem
            Action = acti_refe_cancelar
            DisplayMode = nbdmImageAndText
            Images = _fMDI.imag_pequenas
          end
          object TBXSeparatorItem3: TTBXSeparatorItem
          end
          object TBXItem1: TTBXItem
            Action = acti_refe_actualizar
            DisplayMode = nbdmImageAndText
            ImageIndex = 4
            Images = _fMDI.imag_pequenas
          end
          object TBXSeparatorItem4: TTBXSeparatorItem
          end
          object TBXItem9: TTBXItem
            Action = acti_grid_movi_nada
            GroupIndex = 1
            ImageIndex = 16
            Images = _fMDI.imag_varias
          end
          object TBXItem8: TTBXItem
            Action = acti_grid_movi_filas
            GroupIndex = 1
            ImageIndex = 15
            Images = _fMDI.imag_varias
          end
          object TBXItem7: TTBXItem
            Action = acti_Grid_movi_columnas
            GroupIndex = 1
            ImageIndex = 14
            Images = _fMDI.imag_varias
          end
        end
      end
      object Panel2: TPanel
        Left = 255
        Top = 26
        Width = 545
        Height = 285
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object PCPFrame2: TPCPFrame
          Tag = 73
          Left = 0
          Top = 0
          Width = 545
          Height = 73
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
          Caption = 'Detalles del pedido'
          Titulo_Color = 16244694
          FlatBorder = True
          object Panel5: TPanel
            Left = 3
            Top = 22
            Width = 539
            Height = 48
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object SCLDBLabel10: TSCLDBLabel
              Left = 12
              Top = 3
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
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Sub-pedido:'
              Transparent = True
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
            end
            object SCLDBLabel11: TSCLDBLabel
              Left = 272
              Top = 3
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
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = 'Tipo de lavado:'
              Transparent = True
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
            end
            object SCLDBLabel12: TSCLDBLabel
              Left = 12
              Top = 24
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
              FocusControl = _DBFecha_Creacion
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = '% Tolerancia inf.:'
              Transparent = True
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
            end
            object SCLDBLabel13: TSCLDBLabel
              Left = 272
              Top = 24
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
              Alignment = taRightJustify
              WordWrap = False
              Bevel = False
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Light = lpLeftTop
              Caption = '% Tolerancia sup.:'
              Transparent = True
              SCLPropiedades = Variables
              ColorRequerido = 12615680
              ColorNoRequerido = clWindowText
            end
            object edit_orde_compra: TdxDBEdit
              Left = 114
              Top = 3
              Width = 130
              TabOrder = 0
              DataField = 'ORDE_COMPRA'
              DataSource = data_pedi_referencia
              StyleController = padr_estilo
            end
            object dxDBSpinEdit1: TdxDBSpinEdit
              Left = 114
              Top = 23
              Width = 57
              TabOrder = 2
              Alignment = taRightJustify
              DataField = 'TOLE_INFERIOR'
              DataSource = data_pedi_referencia
              StyleController = padr_estilo
              MaxValue = 100
              StoredValues = 17
            end
            object dxDBSpinEdit2: TdxDBSpinEdit
              Left = 374
              Top = 23
              Width = 57
              TabOrder = 3
              Alignment = taRightJustify
              DataField = 'TOLE_SUPERIOR'
              DataSource = data_pedi_referencia
              StyleController = padr_estilo
              MaxValue = 100
              StoredValues = 17
            end
            object PCPLookUpComboEdit7: TPCPLookUpComboEdit
              Left = 374
              Top = 3
              Width = 130
              Height = 21
              DropDownCount = 8
              Ctl3D = True
              DataField = 'CONS_REFE_LAVADO'
              DataSource = data_pedi_referencia
              KeyField = 'cons_refe_lavado'
              ListField = 'nomb_refe_lavado'
              ListSource = data_refe_lavados
              ParentCtl3D = False
              TabOrder = 1
              DirectInput = False
            end
          end
        end
        object fram_unidades: TPCPFrame
          Tag = 205
          Left = 0
          Top = 73
          Width = 545
          Height = 212
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
          Visible = False
          Caption = 'Unidades'
          Titulo_Color = 16244694
          Boton_Visible = False
          FlatBorder = True
          object Panel3: TPanel
            Left = 3
            Top = 22
            Width = 539
            Height = 187
            Align = alClient
            BevelOuter = bvNone
            BorderWidth = 3
            TabOrder = 1
            object grid: TSCLColumnGrid
              Left = 3
              Top = 43
              Width = 533
              Height = 141
              Cursor = crDefault
              Align = alClient
              ColCount = 3
              Ctl3D = False
              DefaultColWidth = 45
              DefaultRowHeight = 19
              FixedColor = 15582631
              RowCount = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
              ParentCtl3D = False
              ParentFont = False
              PopupMenu = pop_grid
              ScrollBars = ssBoth
              TabOrder = 0
              OnKeyDown = gridKeyDown
              GridLineColor = 14467501
              ActiveCellShow = True
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'MS Sans Serif'
              ActiveCellFont.Style = [fsBold]
              EnhRowColMove = False
              OnGetCellColor = gridGetCellColor
              OnGetAlignment = gridGetAlignment
              ControlLook.ControlStyle = csClassic
              EnableHTML = False
              Flat = True
              SearchFooter.FindNextCaption = 'Find next'
              SearchFooter.FindPrevCaption = 'Find previous'
              SearchFooter.HighLightCaption = 'Highlight'
              SearchFooter.HintClose = 'Close'
              SearchFooter.HintFindNext = 'Find next occurence'
              SearchFooter.HintFindPrev = 'Find previous occurence'
              SearchFooter.HintHighlight = 'Highlight occurences'
              SearchFooter.MatchCaseCaption = 'Match case'
              SelectionColor = clHighlight
              SelectionTextColor = clHighlightText
              PrintSettings.DateFormat = 'dd/mm/yyyy'
              PrintSettings.Font.Charset = DEFAULT_CHARSET
              PrintSettings.Font.Color = clWindowText
              PrintSettings.Font.Height = -11
              PrintSettings.Font.Name = 'MS Sans Serif'
              PrintSettings.Font.Style = []
              PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
              PrintSettings.FixedFont.Color = clWindowText
              PrintSettings.FixedFont.Height = -11
              PrintSettings.FixedFont.Name = 'MS Sans Serif'
              PrintSettings.FixedFont.Style = []
              PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
              PrintSettings.HeaderFont.Color = clWindowText
              PrintSettings.HeaderFont.Height = -11
              PrintSettings.HeaderFont.Name = 'MS Sans Serif'
              PrintSettings.HeaderFont.Style = []
              PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
              PrintSettings.FooterFont.Color = clWindowText
              PrintSettings.FooterFont.Height = -11
              PrintSettings.FooterFont.Name = 'MS Sans Serif'
              PrintSettings.FooterFont.Style = []
              PrintSettings.Borders = pbNoborder
              PrintSettings.Centered = False
              PrintSettings.PageNumSep = '/'
              Navigation.AdvanceOnEnter = True
              CellNode.ShowTree = False
              ScrollWidth = 16
              FixedColWidth = 100
              FixedRowHeight = 19
              FixedRowAlways = True
              FixedColAlways = True
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = []
              FloatFormat = '%.2f'
              WordWrap = False
              Filter = <>
              Version = '3.0.0.10'
              Columns = <
                item
                  AutoMinSize = 0
                  AutoMaxSize = 0
                  Alignment = taLeftJustify
                  Borders = []
                  BorderPen.Color = clSilver
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  ColumnPopupType = cpFixedCellsRClick
                  DropDownCount = 8
                  EditLength = 0
                  Editor = edNormal
                  FilterCaseSensitive = False
                  Fixed = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taLeftJustify
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'Tahoma'
                  HeaderFont.Style = []
                  MinSize = 0
                  MaxSize = 0
                  Name = 'gridNOMB_COLOR'
                  Password = False
                  PrintBorders = []
                  PrintColor = clWhite
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'Tahoma'
                  PrintFont.Style = []
                  ReadOnly = False
                  ShowBands = False
                  SortStyle = ssAutomatic
                  SpinMax = 0
                  SpinMin = 0
                  SpinStep = 1
                  Tag = 0
                  Width = 100
                end
                item
                  AutoMinSize = 0
                  AutoMaxSize = 0
                  Alignment = taLeftJustify
                  Borders = []
                  BorderPen.Color = clSilver
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  ColumnPopupType = cpFixedCellsRClick
                  DropDownCount = 8
                  EditLength = 0
                  Editor = edNormal
                  FilterCaseSensitive = False
                  Fixed = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taLeftJustify
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'Tahoma'
                  HeaderFont.Style = []
                  MinSize = 0
                  MaxSize = 0
                  Name = 'gridCONS_REFE_COLOR'
                  Password = False
                  PrintBorders = []
                  PrintColor = clWhite
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'Tahoma'
                  PrintFont.Style = []
                  ReadOnly = False
                  ShowBands = False
                  SortStyle = ssAutomatic
                  SpinMax = 0
                  SpinMin = 0
                  SpinStep = 1
                  Tag = 0
                  Width = 0
                end
                item
                  AutoMinSize = 0
                  AutoMaxSize = 0
                  Alignment = taLeftJustify
                  Borders = []
                  BorderPen.Color = clSilver
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  ColumnPopupType = cpFixedCellsRClick
                  DropDownCount = 8
                  EditLength = 0
                  Editor = edNormal
                  FilterCaseSensitive = False
                  Fixed = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  HeaderAlignment = taLeftJustify
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'Tahoma'
                  HeaderFont.Style = []
                  MinSize = 0
                  MaxSize = 0
                  Password = False
                  PrintBorders = []
                  PrintColor = clWhite
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'Tahoma'
                  PrintFont.Style = []
                  ReadOnly = False
                  ShowBands = False
                  SortStyle = ssAutomatic
                  SpinMax = 0
                  SpinMin = 0
                  SpinStep = 1
                  Tag = 0
                  Width = 45
                end>
              FilterDropDown.Color = clWindow
              FilterDropDown.ColumnWidth = False
              FilterDropDown.Font.Charset = DEFAULT_CHARSET
              FilterDropDown.Font.Color = clWindowText
              FilterDropDown.Font.Height = -11
              FilterDropDown.Font.Name = 'MS Sans Serif'
              FilterDropDown.Font.Style = []
              FilterDropDown.Height = 200
              FilterDropDown.Width = 200
              ActiveCellPaintSCL = False
              ColWidths = (
                100
                0
                45)
            end
            inline pane_falt_colores: Tffra_mens_atencion
              Left = 3
              Top = 23
              Width = 533
              Height = 20
              TabOrder = 1
              Visible = False
              inherited padr_shap_top: TShape
                Width = 533
              end
              inherited padr_shap_bottom: TShape
                Top = 19
                Width = 533
              end
              inherited padr_shap_right: TShape
                Left = 532
                Height = 18
              end
              inherited padr_shap_left: TShape
                Height = 18
              end
              inherited fram_label: TAdvPanel
                Width = 531
                Height = 18
                Text = 
                  '<IMG src="3"> La referencia no tiene colores asignados. De <A hr' +
                  'ef="c">click aquí</A> para ir al maestro de referencias.'
                OnAnchorClick = pane_falt_coloresAnchorClick
                FullHeight = 18
              end
            end
            inline pane_falt_tallas: Tffra_mens_atencion
              Left = 3
              Top = 3
              Width = 533
              Height = 20
              TabOrder = 2
              Visible = False
              inherited padr_shap_top: TShape
                Width = 533
              end
              inherited padr_shap_bottom: TShape
                Top = 19
                Width = 533
              end
              inherited padr_shap_right: TShape
                Left = 532
                Height = 18
              end
              inherited padr_shap_left: TShape
                Height = 18
              end
              inherited fram_label: TAdvPanel
                Width = 531
                Height = 18
                Text = 
                  '<IMG src="3"> No se encontraron tallas válidas para la asignació' +
                  'n. De <A href="c">click aquí</A> para ir al maestro de referenci' +
                  'as.'
                OnAnchorClick = pane_falt_coloresAnchorClick
                FullHeight = 18
              end
            end
          end
        end
      end
    end
    object page_historial: TSCLTabSheet
      Color = 16578290
      Caption = 'Historial'
      inline ffra_historialDB1: Tffra_historialDB
        Width = 800
        Height = 311
        Align = alClient
        inherited fram_pane: TPanel
          Width = 800
          Height = 311
          inherited fram_grid_historial: TdxDBGrid
            Width = 962
            Height = 278
            Filter.Criteria = {00000000}
          end
          inherited TBXDock1: TTBXDock
            Width = 962
            inherited TBXToolbar1: TTBXToolbar
              Images = _fMDI.imag_pequenas
            end
          end
        end
        inherited data_historial: TDataSource
          DataSet = tabl_historial
        end
        inherited pop_grid_anotaciones: TTBXPopupMenu
          Images = _fMDI.imag_pequenas
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 505
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_imprimir: TAction
      OnExecute = padr_acti_imprimirExecute
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
  end
  inherited Variables: TSCLPropiedadesForm
    verBotonesNavegacion = False
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_PEDIDOS'
    object Tabla_VentanaCONS_PEDIDO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PEDIDO'
      Required = True
    end
    object Tabla_VentanaNUME_PEDIDO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'No. pedido'
      FieldName = 'NUME_PEDIDO'
      Required = True
    end
    object Tabla_VentanaCONS_REFE_TEMPORADA: TIntegerField
      DisplayLabel = 'Temporada'
      FieldName = 'CONS_REFE_TEMPORADA'
      Required = True
    end
    object Tabla_VentanaCONS_TERCERO: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CONS_TERCERO'
      Required = True
    end
    object Tabla_VentanaFECH_PEDIDO: TDateTimeField
      DisplayLabel = 'Fecha pedido'
      FieldName = 'FECH_PEDIDO'
      Required = True
    end
    object Tabla_VentanaFECH_ENTREGA: TDateTimeField
      DisplayLabel = 'Fecha entrega'
      FieldName = 'FECH_ENTREGA'
      Required = True
    end
    object Tabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object Tabla_VentanaCONS_COME_VENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'CONS_COME_VENDEDOR'
      Required = True
    end
    object Tabla_VentanaCONS_COME_PRIO_PEDIDO: TIntegerField
      DisplayLabel = 'Prioridad'
      FieldName = 'CONS_COME_PRIO_PEDIDO'
      Required = True
    end
    object Tabla_VentanaCONS_DESPACHAR_A: TIntegerField
      DisplayLabel = 'Despachar a'
      FieldName = 'CONS_DESPACHAR_A'
    end
    object Tabla_VentanaCONS_FACTURAR_A: TIntegerField
      DisplayLabel = 'Facturar a'
      FieldName = 'CONS_FACTURAR_A'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  inherited padr_estilo: TdxEditStyleController
    Left = 634
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController
    Left = 602
  end
  inherited padr_esti_panel: TAdvPanelStyler
    Left = 634
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler
    Left = 602
  end
  inherited padr_pict_container: TPictureContainer
    Left = 674
  end
  object tabl_pedi_referencias: TTable
    BeforeInsert = VerificarPermisosReferenciasPedidos
    AfterInsert = tabl_pedi_referenciasAfterInsert
    BeforeEdit = VerificarPermisosReferenciasPedidos
    BeforePost = tabl_pedi_referenciasBeforePost
    AfterCancel = tabl_pedi_referenciasAfterCancel
    BeforeDelete = VerificarPermisosReferenciasPedidos
    AfterRefresh = tabl_pedi_referenciasAfterRefresh
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PEDIDO'
    MasterFields = 'CONS_PEDIDO'
    MasterSource = data_ventana
    TableName = 'PCP_PEDI_REFERENCIAS'
    Left = 18
    Top = 466
    object tabl_pedi_referenciasCONS_PEDI_REFERENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_PEDI_REFERENCIA'
      Required = True
    end
    object tabl_pedi_referenciasCONS_PEDIDO: TIntegerField
      FieldName = 'CONS_PEDIDO'
    end
    object tabl_pedi_referenciasCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Required = True
    end
    object tabl_pedi_referenciasCONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
    end
    object tabl_pedi_referenciasORDE_COMPRA: TStringField
      DisplayLabel = 'Sub-pedido'
      FieldName = 'ORDE_COMPRA'
    end
    object tabl_pedi_referenciasCONS_REFE_LAVADO: TIntegerField
      FieldName = 'CONS_REFE_LAVADO'
    end
    object tabl_pedi_referenciasTOLE_INFERIOR: TSmallintField
      FieldName = 'TOLE_INFERIOR'
    end
    object tabl_pedi_referenciasTOLE_SUPERIOR: TSmallintField
      FieldName = 'TOLE_SUPERIOR'
    end
    object tabl_pedi_referenciasFECH_SISTEMA: TIntegerField
      FieldName = 'FECH_SISTEMA'
    end
    object tabl_pedi_referenciasUSUA_SISTEMA: TIntegerField
      FieldName = 'USUA_SISTEMA'
    end
    object tabl_pedi_referenciasCODI_REFERENCIA: TStringField
      DisplayLabel = 'Referencia'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'CODI_REFERENCIA'
      LookupDataSet = quer_vis_variaciones
      LookupKeyFields = 'CONS_REFE_VARIACION'
      LookupResultField = 'CODI_REFERENCIA'
      KeyFields = 'CONS_REFE_VARIACION'
      Size = 12
      Lookup = True
    end
    object tabl_pedi_referenciasNOMB_VARIACION: TStringField
      DisplayLabel = 'Variación'
      FieldKind = fkLookup
      FieldName = 'NOMB_VARIACION'
      LookupDataSet = quer_vis_variaciones
      LookupKeyFields = 'CONS_REFE_VARIACION'
      LookupResultField = 'NOMB_REFE_TIPO_VARIACION'
      KeyFields = 'CONS_REFE_VARIACION'
      Size = 60
      Lookup = True
    end
    object tabl_pedi_referenciasCONS_REFE_GRUP_TALLAS: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CONS_REFE_GRUP_TALLAS'
      LookupDataSet = quer_vis_variaciones
      LookupKeyFields = 'CONS_REFE_VARIACION'
      LookupResultField = 'CONS_REFE_GRUP_TALLAS'
      KeyFields = 'CONS_REFE_VARIACION'
      Lookup = True
    end
  end
  object data_pedi_referencia: TDataSource
    AutoEdit = False
    DataSet = tabl_pedi_referencias
    OnStateChange = data_pedi_referenciaStateChange
    Left = 50
    Top = 466
  end
  object quer_vis_variaciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select a.cons_refe_variacion, a.codi_referencia, '
      'a.nomb_refe_tipo_variacion, b.cons_refe_grup_tallas'
      'From vis_pcp_refe_variaciones a, glo_Referencias b'
      'where b.cons_referencia = a.cons_referencia'
      'order by a.cons_refe_variacion')
    Left = 82
    Top = 466
    object quer_vis_variacionesCONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
    end
    object quer_vis_variacionesCODI_REFERENCIA: TStringField
      FieldName = 'CODI_REFERENCIA'
      Size = 12
    end
    object quer_vis_variacionesNOMB_REFE_TIPO_VARIACION: TStringField
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Size = 60
    end
    object quer_vis_variacionesCONS_REFE_GRUP_TALLAS: TIntegerField
      FieldName = 'CONS_REFE_GRUP_TALLAS'
    end
  end
  object acti_ventana: TActionList
    OnUpdate = acti_ventanaUpdate
    Left = 432
    Top = 6
    object acti_refe_cancelar: TDataSetCancel
      Category = 'Dataset_referencia'
      Caption = 'C&ancelar'
      ImageIndex = 8
      OnExecute = acti_refe_cancelarExecute
      DataSource = data_pedi_referencia
    end
    object acti_refe_eliminar: TDataSetDelete
      Category = 'Dataset_referencia'
      Caption = '&Eliminar sub-pedido'
      ImageIndex = 5
      OnExecute = acti_refe_eliminarExecute
      DataSource = data_pedi_referencia
    end
    object acti_refe_editar: TDataSetEdit
      Category = 'Dataset_referencia'
      Caption = '&Modificar sub-pedido'
      ImageIndex = 6
      DataSource = data_pedi_referencia
    end
    object acti_refe_nuevo: TDataSetInsert
      Category = 'Dataset_referencia'
      Caption = '&Nuevo sub-pedido'
      ImageIndex = 4
      DataSource = data_pedi_referencia
    end
    object acti_refe_guardar: TDataSetPost
      Category = 'Dataset_referencia'
      Caption = '&Guardar'
      ImageIndex = 7
      DataSource = data_pedi_referencia
    end
    object acti_refe_actualizar: TDataSetRefresh
      Category = 'Dataset_referencia'
      Caption = '&Actualizar'
      ImageIndex = 9
      DataSource = data_pedi_referencia
    end
    object acti_grid_movi_filas: TAction
      Category = 'Grid'
      Caption = 'Movimiento por filas'
      Hint = 'Movimiento por filas'
      OnExecute = acti_grid_movi_filasExecute
    end
    object acti_Grid_movi_columnas: TAction
      Category = 'Grid'
      Caption = 'Movimiento por columnas'
      Hint = 'Movimiento por columnas'
      OnExecute = acti_Grid_movi_columnasExecute
    end
    object acti_grid_movi_nada: TAction
      Category = 'Grid'
      Caption = 'Sin movimientos automáticos'
      Checked = True
      Hint = 'Sin movimientos automáticos'
      OnExecute = acti_grid_movi_nadaExecute
    end
  end
  object quer_temporadas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_refe_temporada, nomb_refe_temporada'
      'from GLO_REFE_TEMPORADAS'
      'Order by nomb_refe_temporada')
    Left = 800
    Top = 78
  end
  object data_temporadas: TDataSource
    DataSet = quer_temporadas
    Left = 800
    Top = 110
  end
  object quer_vendedores: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_come_vendedor, codi_come_vendedor,'
      'nomb_come_vendedor'
      'from glo_come_vendedores'
      'order by nomb_come_vendedor')
    Left = 832
    Top = 78
  end
  object data_vendedores: TDataSource
    DataSet = quer_vendedores
    Left = 832
    Top = 110
  end
  object quer_prio_pedidos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_come_prio_pedido, nomb_come_prio_pedido'
      'from glo_come_prio_pedidos'
      'order by nomb_come_prio_pedido')
    Left = 864
    Top = 78
  end
  object data_prio_pedidos: TDataSource
    DataSet = quer_prio_pedidos
    Left = 864
    Top = 110
  end
  object quer_clientes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_tercero, codi_tercero, nomb_tercero'
      'from VIS_PCP_CLIENTES'
      'Order by nomb_tercero')
    Left = 896
    Top = 78
  end
  object data_clientes: TDataSource
    DataSet = quer_clientes
    Left = 896
    Top = 110
  end
  object quer_refe_tallas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_pedi_referencia
    SQL.Strings = (
      'Select *'
      'from  glo_grup_tall_detalle'
      'where cons_grup_tallas = :cons_refe_grup_tallas'
      'order by secu_talla')
    Left = 185
    Top = 443
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_GRUP_TALLAS'
        ParamType = ptUnknown
      end>
  end
  object quer_Refe_lavados: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'select cons_refe_lavado, nomb_refe_lavado'
      'from glo_refe_lavados'
      'order by nomb_refe_lavado')
    Left = 896
    Top = 150
  end
  object data_refe_lavados: TDataSource
    DataSet = quer_Refe_lavados
    Left = 896
    Top = 182
  end
  object quer_refe_colores: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_pedi_referencia
    SQL.Strings = (
      'Select *'
      'from glo_refe_colores'
      'where cons_referencia = :cons_referencia'
      'order by secu_color')
    Left = 217
    Top = 443
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFERENCIA'
        ParamType = ptUnknown
      end>
    object quer_refe_coloresCONS_REFE_COLOR: TIntegerField
      FieldName = 'CONS_REFE_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_REFE_COLORES.CONS_REFE_COLOR'
    end
    object quer_refe_coloresCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_COLORES.CONS_REFERENCIA'
    end
    object quer_refe_coloresSECU_COLOR: TIntegerField
      FieldName = 'SECU_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_REFE_COLORES.SECU_COLOR'
    end
    object quer_refe_coloresCONS_COLOR: TIntegerField
      FieldName = 'CONS_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_REFE_COLORES.CONS_COLOR'
    end
    object quer_refe_coloresNUME_COLOR: TStringField
      FieldName = 'NUME_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_REFE_COLORES.NUME_COLOR'
      Size = 6
    end
    object quer_refe_coloresNOMB_COLOR: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMB_COLOR'
      LookupDataSet = quer_colores
      LookupKeyFields = 'CONS_COLOR'
      LookupResultField = 'NOMB_COLOR'
      KeyFields = 'CONS_COLOR'
      Size = 60
      Lookup = True
    end
  end
  object quer_colores: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_color, nomb_color'
      'from glo_colores'
      'order by cons_color')
    Left = 217
    Top = 475
  end
  object pop_grid: TTBXPopupMenu
    Images = _fMDI.imag_varias
    Left = 598
    Top = 473
    object TBXItem10: TTBXItem
      Action = acti_refe_nuevo
      DisplayMode = nbdmImageAndText
      ImageIndex = 0
      Images = _fMDI.imag_pequenas
    end
    object TBXItem11: TTBXItem
      Action = acti_refe_editar
      DisplayMode = nbdmImageAndText
      ImageIndex = 1
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem5: TTBXSeparatorItem
    end
    object TBXItem12: TTBXItem
      Action = acti_refe_eliminar
      DisplayMode = nbdmImageAndText
      ImageIndex = 2
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem6: TTBXSeparatorItem
    end
    object TBXItem13: TTBXItem
      Action = acti_refe_guardar
      DisplayMode = nbdmImageAndText
      ImageIndex = 5
      Images = _fMDI.imag_pequenas
    end
    object TBXItem14: TTBXItem
      Action = acti_refe_cancelar
      DisplayMode = nbdmImageAndText
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem7: TTBXSeparatorItem
    end
    object TBXItem15: TTBXItem
      Action = acti_refe_actualizar
      DisplayMode = nbdmImageAndText
      ImageIndex = 4
      Images = _fMDI.imag_pequenas
    end
    object TBXSeparatorItem8: TTBXSeparatorItem
    end
    object TBXItem16: TTBXItem
      Action = acti_grid_movi_nada
      GroupIndex = 1
      ImageIndex = 16
      Images = _fMDI.imag_varias
    end
    object TBXItem17: TTBXItem
      Action = acti_grid_movi_filas
      GroupIndex = 1
      ImageIndex = 15
      Images = _fMDI.imag_varias
    end
    object TBXItem18: TTBXItem
      Action = acti_Grid_movi_columnas
      GroupIndex = 1
      ImageIndex = 14
      Images = _fMDI.imag_varias
    end
  end
  object quer_unid_eliminar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_pedi_referencia
    SQL.Strings = (
      'Delete from pcp_pedi_unidades'
      'where cons_pedi_referencia = :cons_pedi_referencia')
    Left = 286
    Top = 473
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_pedi_referencia'
        ParamType = ptUnknown
      end>
  end
  object quer_unid_guardar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Insert Into PCP_PEDI_UNIDADES'
      '(cons_pedi_referencia, secu_talla, cons_grup_tall_detalle, '
      'secu_color, cons_refe_color, unidades)'
      'Values'
      '(:cons_pedi_referencia, :secu_talla, :cons_grup_tall_detalle, '
      ':secu_color, :cons_refe_color, :unidades)'
      ' ')
    Left = 318
    Top = 473
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_pedi_referencia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'secu_talla'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_grup_tall_detalle'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'secu_color'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_refe_color'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'unidades'
        ParamType = ptInput
      end>
  end
  object quer_unid_llamar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_pedi_referencia
    SQL.Strings = (
      'Select cons_grup_tall_detalle, cons_refe_color, unidades'
      'from PCP_PEDI_UNIDADES'
      'Where cons_pedi_referencia = :cons_pedi_referencia'
      'order by cons_grup_tall_detalle, cons_refe_color')
    Left = 350
    Top = 475
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PEDI_REFERENCIA'
        ParamType = ptUnknown
      end>
  end
  object data_vis_variaciones: TDataSource
    DataSet = quer_vis_variaciones
    Left = 114
    Top = 468
  end
  object tabl_historial: TTable
    BeforeInsert = tabl_historialBeforeInsert
    BeforePost = tabl_historialBeforePost
    DatabaseName = 'data_base_pcp'
    IndexFieldNames = 'CONS_PEDIDO'
    MasterFields = 'CONS_PEDIDO'
    MasterSource = data_ventana
    TableName = 'PCP_PEDI_HISTORIAL'
    Left = 762
    Top = 476
  end
  object quer_fact_a: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT B.cons_facturar_a,'
      ' b.cons_tercero,'
      ' b.codi_facturar_a,'
      ' b.iden_facturar_a, b.digi_verificacion,'
      ' b.nomb_facturar_a,'
      ' b.contacto1, b.contacto2,'
      ' b.direccion, b.cons_pais, b.cons_departamento, b.cons_ciudad,'
      ' C.nomb_pais, D.nomb_departamento, E.nomb_ciudad,'
      
        ' b.codi_postal, b.telefono1, b.telefono2, b.telefono3, b.fax1, b' +
        '.fax2,'
      ' b.celular, b.corr_electronico, '
      ' b.fech_sistema, b.usua_sistema'
      'FROM glo_terceros A, glo_terc_facturar_a B,'
      '     glo_paises C, glo_departamentos D,  glo_ciudades E'
      ' WHERE A.cons_tercero = :cons_tercero'
      ' AND B.cons_tercero = A.cons_tercero'
      ' AND C.cons_pais = B.cons_pais'
      ' AND D.cons_departamento = B.cons_departamento'
      ' AND E.cons_ciudad = B.cons_ciudad'
      'Order by cons_facturar_a')
    Left = 8
    Top = 225
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_TERCERO'
        ParamType = ptInput
      end>
    object quer_fact_aCONS_FACTURAR_A: TIntegerField
      DisplayLabel = 'Cons. Facturar A'
      FieldName = 'CONS_FACTURAR_A'
    end
    object quer_fact_aCONS_TERCERO: TIntegerField
      DisplayLabel = 'Cons. Cliente'
      FieldName = 'CONS_TERCERO'
    end
    object quer_fact_aCODI_FACTURAR_A: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_FACTURAR_A'
      Size = 12
    end
    object quer_fact_aDIGI_VERIFICACION: TStringField
      DisplayLabel = 'Dígito Verificación'
      FieldName = 'DIGI_VERIFICACION'
      Size = 1
    end
    object quer_fact_aIDEN_FACTURAR_A: TStringField
      DisplayLabel = 'Nit ó Cédula'
      FieldName = 'IDEN_FACTURAR_A'
      Size = 30
    end
    object quer_fact_aNOMB_FACTURAR_A: TStringField
      DisplayLabel = 'Facturar A'
      FieldName = 'NOMB_FACTURAR_A'
      Size = 120
    end
    object quer_fact_aCONTACTO1: TStringField
      DisplayLabel = 'Contacto 1'
      FieldName = 'CONTACTO1'
      Size = 60
    end
    object quer_fact_aCONTACTO2: TStringField
      DisplayLabel = 'Contacto 2'
      FieldName = 'CONTACTO2'
      Size = 60
    end
    object quer_fact_aDIRECCION: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 240
    end
    object quer_fact_aCONS_PAIS: TIntegerField
      DisplayLabel = 'Cons. País'
      FieldName = 'CONS_PAIS'
    end
    object quer_fact_aNOMB_PAIS: TStringField
      DisplayLabel = 'País'
      FieldName = 'NOMB_PAIS'
      Size = 60
    end
    object quer_fact_aCONS_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Cons. Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
    end
    object quer_fact_aNOMB_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Size = 60
    end
    object quer_fact_aCONS_CIUDAD: TIntegerField
      DisplayLabel = 'Cons. Ciudad'
      FieldName = 'CONS_CIUDAD'
    end
    object quer_fact_aNOMB_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'NOMB_CIUDAD'
      Size = 60
    end
    object quer_fact_aCODI_POSTAL: TStringField
      DisplayLabel = 'Cód. Postal'
      FieldName = 'CODI_POSTAL'
      Size = 15
    end
    object quer_fact_aTELEFONO1: TStringField
      DisplayLabel = 'Teléfono 1'
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object quer_fact_aTELEFONO2: TStringField
      DisplayLabel = 'Teléfono 2'
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object quer_fact_aTELEFONO3: TStringField
      DisplayLabel = 'Teléfono 3'
      FieldName = 'TELEFONO3'
      Size = 15
    end
    object quer_fact_aFAX1: TStringField
      DisplayLabel = 'Fax 1'
      FieldName = 'FAX1'
      Size = 15
    end
    object quer_fact_aFAX2: TStringField
      DisplayLabel = 'Fax 1'
      FieldName = 'FAX2'
      Size = 15
    end
    object quer_fact_aCELULAR: TStringField
      DisplayLabel = 'Móvil'
      FieldName = 'CELULAR'
      Size = 15
    end
    object quer_fact_aCORR_ELECTRONICO: TStringField
      DisplayLabel = 'Correo Electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Size = 240
    end
    object quer_fact_aFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object quer_fact_aUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object data_fact_a: TDataSource
    DataSet = quer_fact_a
    Left = 40
    Top = 225
  end
  object quer_desp_a: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT B.cons_despachar_a,'
      ' b.cons_tercero,'
      ' B.codi_despachar_a,'
      ' b.iden_despachar_a,'
      ' b.digi_verificacion,'
      ' b.nomb_despachar_a,'
      ' b.contacto1, b.contacto2,'
      ' b.direccion, b.cons_pais, b.cons_departamento, b.cons_ciudad,'
      ' C.nomb_pais, D.nomb_departamento, E.nomb_ciudad,'
      
        ' b.codi_postal, b.telefono1, b.telefono2, b.telefono3, b.fax1, b' +
        '.fax2,'
      ' b.celular, b.corr_electronico,'
      ' b.fech_sistema, b.usua_sistema'
      'FROM glo_terc_despachar_a B,'
      '     glo_paises C, glo_departamentos D,  glo_ciudades E'
      ' WHERE B.cons_tercero = :cons_tercero'
      ' AND C.cons_pais = B.cons_pais'
      ' AND D.cons_departamento = B.cons_departamento'
      ' AND E.cons_ciudad = B.cons_ciudad'
      'Order by cons_despachar_a')
    Left = 2
    Top = 345
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_TERCERO'
        ParamType = ptInput
      end>
    object quer_desp_aCONS_DESPACHAR_A: TIntegerField
      DisplayLabel = 'Cons. Despachar A'
      FieldName = 'CONS_DESPACHAR_A'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Cons. Cliente'
      FieldName = 'CONS_TERCERO'
    end
    object quer_desp_aCODI_DESPACHAR_A: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_DESPACHAR_A'
      Size = 12
    end
    object quer_desp_aNOMB_DESPACHAR_A: TStringField
      DisplayLabel = 'Despachar A'
      FieldName = 'NOMB_DESPACHAR_A'
      Size = 120
    end
    object quer_desp_aIDEN_DESPACHAR_A: TStringField
      DisplayLabel = 'Nit ó Cédula'
      FieldName = 'IDEN_DESPACHAR_A'
      Size = 30
    end
    object StringField2: TStringField
      DisplayLabel = 'Dígito Verificación'
      FieldName = 'DIGI_VERIFICACION'
      Size = 1
    end
    object StringField5: TStringField
      DisplayLabel = 'Contacto 1'
      FieldName = 'CONTACTO1'
      Size = 60
    end
    object StringField6: TStringField
      DisplayLabel = 'Contacto 2'
      FieldName = 'CONTACTO2'
      Size = 60
    end
    object StringField7: TStringField
      DisplayLabel = 'Dirección'
      FieldName = 'DIRECCION'
      Size = 240
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'Cons. País'
      FieldName = 'CONS_PAIS'
    end
    object StringField8: TStringField
      DisplayLabel = 'País'
      FieldName = 'NOMB_PAIS'
      Size = 60
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'Cons. Departamento'
      FieldName = 'CONS_DEPARTAMENTO'
    end
    object StringField9: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'NOMB_DEPARTAMENTO'
      Size = 60
    end
    object IntegerField5: TIntegerField
      DisplayLabel = 'Cons. Ciudad'
      FieldName = 'CONS_CIUDAD'
    end
    object StringField10: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'NOMB_CIUDAD'
      Size = 60
    end
    object StringField11: TStringField
      DisplayLabel = 'Cód. Postal'
      FieldName = 'CODI_POSTAL'
      Size = 15
    end
    object StringField12: TStringField
      DisplayLabel = 'Teléfono 1'
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object StringField13: TStringField
      DisplayLabel = 'Teléfono 2'
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object StringField14: TStringField
      DisplayLabel = 'Teléfono 3'
      FieldName = 'TELEFONO3'
      Size = 15
    end
    object StringField15: TStringField
      DisplayLabel = 'Fax 1'
      FieldName = 'FAX1'
      Size = 15
    end
    object StringField16: TStringField
      DisplayLabel = 'Fax 1'
      FieldName = 'FAX2'
      Size = 15
    end
    object StringField17: TStringField
      DisplayLabel = 'Móvil'
      FieldName = 'CELULAR'
      Size = 15
    end
    object StringField18: TStringField
      DisplayLabel = 'Correo Electrónico'
      FieldName = 'CORR_ELECTRONICO'
      Size = 240
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
    end
    object StringField19: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
    end
  end
  object data_desp_a: TDataSource
    DataSet = quer_desp_a
    Left = 34
    Top = 345
  end
  object quer_vinc_pedidos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_ventana
    SQL.Strings = (
      'SELECT * FROM PRO_VINC_COME_PEDIDOS(:CONS_PEDIDO)')
    Left = 845
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PEDIDO'
        ParamType = ptUnknown
      end>
  end
end

inherited fn1_pers_form_pago1: Tfn1_pers_form_pago1
  Left = 120
  Top = 74
  Width = 696
  Height = 591
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 688
  end
  inherited padr_shap_xp_down: TShape
    Top = 555
    Width = 688
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 688
  end
  inherited padr_pane_arriba: TPanel
    Width = 688
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 688
    inherited padr_sepa_new: TShape
      Width = 682
    end
  end
  inherited padr_pane_info: TPanel
    Top = 554
    Width = 688
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
    Top = 556
    Width = 688
    inherited padr_beve_abajo: TBevel
      Width = 682
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 688
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 688
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 24
      Top = 8
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
      Caption = 'Código:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 251
      Top = 8
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
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombres:'
      Transparent = True
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
    end
    object dxDBEdit1: TdxDBEdit
      Left = 126
      Top = 8
      Width = 121
      Enabled = False
      TabOrder = 0
      DataField = 'CODI_PERSONAL'
      DataSource = data_personal
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 353
      Top = 8
      Width = 305
      Enabled = False
      TabOrder = 1
      DataField = 'NOMB_COMPLETO'
      DataSource = data_personal
      StyleController = padr_estilo
    end
  end
  object page: TSCLPageControl [9]
    Left = 0
    Top = 89
    Width = 688
    Height = 465
    ActivePage = page_form_pago
    ActivePageDefault = page_form_pago
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
    TabOrder = 7
    Transparent = True
    OnChange = pageChange
    FixedDimension = 22
    object page_form_pago: TSCLTabSheet
      Color = 16578290
      ImageIndex = 102
      Caption = 'Forma de pago'
      object pane_form_pago: TPCPFrame
        Tag = 266
        Left = 0
        Top = 29
        Width = 684
        Height = 266
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
        TabOrder = 0
        Caption = 'Información de la forma de pago'
        Titulo_Color = 16244694
        Boton_Visible = False
        TipoFrame = tfNinguno
        object SCLDBLabel9: TSCLDBLabel
          Left = 24
          Top = 4
          Width = 97
          Height = 20
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_SIS_FORM_PAGO'
          Field = 'CONS_SIS_FORM_PAGO'
        end
        object SCLShape1: TSCLShape
          Left = 126
          Top = 4
          Width = 532
          Height = 255
          Brush.Style = bsClear
          Pen.Color = 14467501
        end
        object radi_form_pago: TJvDBRadioPanel
          Left = 127
          Top = 5
          Width = 530
          Height = 253
          BevelOuter = bvNone
          Color = clWindow
          Columns = 2
          DataField = 'CONS_SIS_FORM_PAGO'
          DataSource = data_ventana
          TabOrder = 1
          OnChange = radi_form_pagoChange
        end
      end
      object pane_valo_hora_produccion: TPanel
        Left = 0
        Top = 295
        Width = 684
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object SCLDBLabel5: TSCLDBLabel
          Left = -53
          Top = 0
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'VALO_HORA_PRODUCCION'
          Field = 'VALO_HORA_PRODUCCION'
        end
        object DBText2: TDBText
          Left = 196
          Top = 4
          Width = 41
          Height = 13
          AutoSize = True
          DataField = 'SIMB_MONEDA'
          DataSource = _fMDI.data_configuracion
        end
        object edit_valo_hora_produccion: TdxDBCurrencyEdit
          Left = 126
          Top = 0
          Width = 65
          TabOrder = 0
          Alignment = taRightJustify
          DataField = 'VALO_HORA_PRODUCCION'
          DataSource = data_ventana
          StyleController = padr_estilo
          DecimalPlaces = 3
          DisplayFormat = ',0.000'
          Nullable = False
          StoredValues = 1
        end
      end
      object pane_codigo: TPanel
        Left = 0
        Top = 321
        Width = 684
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object SCLDBLabel7: TSCLDBLabel
          Left = 40
          Top = 0
          Width = 84
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
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'PARA_1'
          Field = 'PARA_1'
        end
        object SCLDBLabel6: TSCLDBLabel
          Left = 251
          Top = 0
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
          FocusControl = PCPLookUpComboEdit1
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
          DataField = 'PARA_1'
          Field = 'PARA_1'
        end
        object comb_codigo: TPCPLookUpComboEdit
          Left = 126
          Top = 0
          Width = 121
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Ctl3D = True
          DataField = 'PARA_1'
          DataSource = data_ventana
          KeyField = 'codigo'
          ListField = 'codigo'
          ListSource = data_codigo
          ParentCtl3D = False
          TabOrder = 0
          DirectInput = False
        end
        object PCPLookUpComboEdit1: TPCPLookUpComboEdit
          Left = 353
          Top = 0
          Width = 305
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Ctl3D = True
          DataField = 'PARA_1'
          DataSource = data_ventana
          KeyField = 'codigo'
          ListField = 'nombre'
          ListSource = data_codigo
          ParentCtl3D = False
          TabOrder = 1
          DirectInput = False
        end
      end
      object pane_seleccion: TPanel
        Left = 0
        Top = 0
        Width = 684
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object SCLDBLabel3: TSCLDBLabel
          Left = 24
          Top = 7
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
          FocusControl = edit_fech_inicial
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fecha inicial:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'FECH_INICIAL'
          Field = 'FECH_INICIAL'
        end
        object SCLDBLabel4: TSCLDBLabel
          Left = 243
          Top = 7
          Width = 108
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
          Caption = 'Mínimo garantizado:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'VALO_HORA_MINI_GARANTIZADO'
          Field = 'VALO_HORA_MINI_GARANTIZADO'
        end
        object DBText1: TDBText
          Left = 422
          Top = 12
          Width = 41
          Height = 13
          AutoSize = True
          DataField = 'SIMB_MONEDA'
          DataSource = _fMDI.data_configuracion
        end
        object edit_fech_inicial: TdxDBDateEdit
          Left = 126
          Top = 7
          Width = 121
          TabOrder = 0
          DataField = 'FECH_INICIAL'
          DataSource = data_ventana
          StyleController = padr_estilo
          SaveTime = False
          UseEditMask = True
          StoredValues = 4
        end
        object edit_valo_hora_mini_garantizado: TdxDBCurrencyEdit
          Left = 353
          Top = 7
          Width = 65
          TabOrder = 1
          Alignment = taRightJustify
          DataField = 'VALO_HORA_MINI_GARANTIZADO'
          DataSource = data_ventana
          StyleController = padr_estilo
          DecimalPlaces = 3
          DisplayFormat = ',0.000'
          Nullable = False
          StoredValues = 1
        end
      end
    end
    object page_curv_aprendizaje: TSCLTabSheet
      Color = 16578290
      ImageIndex = 101
      Caption = 'Curva de aprendizaje'
      object pane_aprendizaje: TPanel
        Left = 0
        Top = 0
        Width = 684
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object SCLDBLabel8: TSCLDBLabel
          Left = 40
          Top = 5
          Width = 84
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
          FocusControl = comb_codi_aprendizaje
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Código curva:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_FORM_PAGO_APRENDIZAJE'
          Field = 'CONS_FORM_PAGO_APRENDIZAJE'
        end
        object SCLDBLabel10: TSCLDBLabel
          Left = 251
          Top = 5
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
          FocusControl = comb_nomb_aprendizaje
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Nombre curva:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_FORM_PAGO_APRENDIZAJE'
          Field = 'CONS_FORM_PAGO_APRENDIZAJE'
        end
        object comb_codi_aprendizaje: TPCPLookUpComboEdit
          Left = 126
          Top = 5
          Width = 121
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Ctl3D = True
          DataField = 'CONS_FORM_PAGO_APRENDIZAJE'
          DataSource = data_ventana
          KeyField = 'consecutivo'
          ListField = 'codigo'
          ListSource = data_aprendizaje
          ParentCtl3D = False
          TabOrder = 0
          OnChange = comb_codi_aprendizajeChange
          DirectInput = False
        end
        object comb_nomb_aprendizaje: TPCPLookUpComboEdit
          Left = 353
          Top = 5
          Width = 305
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Ctl3D = True
          DataField = 'CONS_FORM_PAGO_APRENDIZAJE'
          DataSource = data_ventana
          KeyField = 'consecutivo'
          ListField = 'nombre'
          ListSource = data_aprendizaje
          ParentCtl3D = False
          TabOrder = 1
          OnChange = comb_codi_aprendizajeChange
          DirectInput = False
        end
      end
      object pane_operacion: TPanel
        Left = 0
        Top = 32
        Width = 684
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object SCLDBLabel13: TSCLDBLabel
          Left = 16
          Top = 29
          Width = 108
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
          Caption = 'Código operación:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_OPER_COSTURA'
          Field = 'CONS_OPER_COSTURA'
        end
        object SCLDBLabel14: TSCLDBLabel
          Left = 251
          Top = 29
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
          FocusControl = PCPLookUpComboEdit3
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Nombre operación:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CONS_OPER_COSTURA'
          Field = 'CONS_OPER_COSTURA'
        end
        object SCLDBLabel11: TSCLDBLabel
          Left = 8
          Top = 1
          Width = 116
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
          FocusControl = edit_efic_inicial
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Eficiencia de entrada:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'EFIC_INIC_APRENDIZAJE'
          Field = 'EFIC_INIC_APRENDIZAJE'
        end
        object SCLDBLabel12: TSCLDBLabel
          Left = 251
          Top = 1
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
          FocusControl = dxDBDateEdit1
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Fecha finalización:'
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'FECH_FINA_PAGO_APRENDIZAJE'
          Field = 'FECH_FINA_PAGO_APRENDIZAJE'
        end
        object PCPLookUpComboEdit2: TPCPLookUpComboEdit
          Left = 126
          Top = 29
          Width = 121
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Ctl3D = True
          DataField = 'CONS_OPER_COSTURA'
          DataSource = data_ventana
          Enabled = False
          KeyField = 'cons_oper_costura'
          ListField = 'codi_oper_costura'
          ListSource = data_oper_codigo
          ParentCtl3D = False
          TabOrder = 3
          OnChange = comb_codi_aprendizajeChange
          DirectInput = False
        end
        object PCPLookUpComboEdit3: TPCPLookUpComboEdit
          Left = 353
          Top = 29
          Width = 305
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Ctl3D = True
          DataField = 'CONS_OPER_COSTURA'
          DataSource = data_ventana
          Enabled = False
          KeyField = 'cons_oper_costura'
          ListField = 'nomb_oper_costura'
          ListSource = data_oper_nombre
          ParentCtl3D = False
          TabOrder = 4
          OnChange = comb_codi_aprendizajeChange
          DirectInput = False
        end
        object edit_efic_inicial: TdxDBCurrencyEdit
          Left = 126
          Top = 1
          Width = 67
          Enabled = False
          TabOrder = 0
          Alignment = taRightJustify
          DataField = 'EFIC_INIC_APRENDIZAJE'
          DataSource = data_ventana
          StyleController = padr_estilo
          DisplayFormat = ',0.00 %'
          Nullable = False
          StoredValues = 1
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 353
          Top = 1
          Width = 121
          Enabled = False
          TabOrder = 1
          DataField = 'FECH_FINA_PAGO_APRENDIZAJE'
          DataSource = data_ventana
          StyleController = padr_estilo
          SaveTime = False
          UseEditMask = True
          StoredValues = 4
        end
        object TBXButtonSCL1: TTBXButtonSCL
          Left = 478
          Top = 2
          Width = 24
          Height = 20
          Hint = 'Recalcular la fecha de finalización'
          BorderSize = 2
          ButtonStyle = bsFlat
          Enabled = False
          ImageIndex = 4
          Images = _fMDI.imagenesPCP
          TabOrder = 2
          TabStop = False
          OnClick = doRecalcularFechaFinalizacion
        end
      end
    end
  end
  inherited padr_imag_tem1_colo: TImageList
    Bitmap = {
      494C010114001800040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000C000000001002000000000000080
      0100000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFF28AB11FF0B0B0BFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFCFCFCFFFCFCF
      CFFFCFCFCFFF00492BFF7CFFC4FF0B0B0BFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FF28AB11FF0049
      2BFF00492BFF00492BFF7CFFC4FF00AF67FF0B0B0BFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FF00492BFF7CFF
      C4FF7CFFC4FF7CFFC4FF16FA95FF16FA95FF00AF67FF0B0B0BFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FF00492BFF7CFF
      C4FF16FA95FF18FE8CFF16FA95FF16FA95FF28AB16FF0B0B0BFFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B0BFF0B0B
      0BFF0B0B0BFF0B0B0BFF16FA95FF28AB16FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF00492BFF28AB16FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF0B0B0BFF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFA68D7DFFA07860FF906040FF9058
      40FF905840FF834A2DFFE4E4E4FF040404FF000000FFB18669FF967865FFA070
      50FF905840FF905030FF743B1EFF000000FF000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF0B0B0BFF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF28AB11FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF28AB11FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFB09080FFFFF8FFFFE0C8C0FFD0A0
      90FFC08060FF804020FF040404FF000000FF000000FFB08060FFF0E8E0FFE0C8
      C0FFD0A890FFB07850FF804820FF000000FF000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FF0B0B0BFF28AB16FF00492BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF00492BFF7CFFC4FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF00492BFF7CFFC4FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFB09080FFFFF8FFFFE0C8C0FFD0A0
      90FFC08060FF804020FF040404FF000000FF000000FFB08060FFF0E8E0FFF0E0
      E0FFE0C0B0FFC08870FF804830FF000000FF000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B
      0BFF28AB16FF16FA95FF0B0B0BFF0B0B0BFF0B0B0BFF0B0B0BFFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF28AB11FF0049
      2BFF00492BFF00492BFF7CFFC4FF00AF67FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF28AB11FF0049
      2BFF00492BFF00492BFF7CFFC4FF00AF67FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFB09080FFFFF8FFFFE0C8C0FFD0A0
      90FFC08060FF804020FF000000FF000000FF000000FFB08060FFF0E8E0FFF0E0
      E0FFE0C0B0FFC08870FF804830FF000000FF000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B0BFF28AB
      16FF16FA95FF16FA95FF18FE8CFF16FA95FF7CFFC4FF00492BFFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF00492BFF7CFF
      C4FF7CFFC4FF7CFFC4FF16FA95FF16FA95FF00AF67FF0B0B0BFFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF00492BFF7CFF
      C4FF7CFFC4FF7CFFC4FF16FA95FF16FA95FF00AF67FF0B0B0BFFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFC09880FFFFFFFFFFF0E8E0FFE0C8
      C0FFD0A080FF804020FF000000FF000000FF000000FFB08060FFF0E8E0FFF0E0
      E0FFE0C0B0FFC08870FF804830FF000000FF000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B0BFF00AF
      67FF16FA95FF16FA95FF7CFFC4FF7CFFC4FF7CFFC4FF00492BFFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF00492BFF7CFF
      C4FF16FA95FF18FE8CFF16FA95FF16FA95FF28AB16FF0B0B0BFFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF00492BFF7CFF
      C4FF16FA95FF18FE8CFF16FA95FF16FA95FF28AB16FF0B0B0BFFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFC0A496FFB08870FFA06850FF9050
      30FF804830FF804820FF803810FF884E2DFFB08870FFA06850FF905830FF9048
      30FF804020FF703810FF905830FF000000FF000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B
      0BFF00AF67FF7CFFC4FF00492BFF00492BFF00492BFF28AB11FFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B0BFF0B0B
      0BFF0B0B0BFF0B0B0BFF16FA95FF28AB16FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B0BFF0B0B
      0BFF0B0B0BFF0B0B0BFF16FA95FF28AB16FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFC0C6C7FFB08870FFFFFFFFFFE0D0
      C0FFD0A090FFA07050FF804010FFB8BEB7FFB09070FFE0D8D0FFF0D8D0FFD0A0
      90FFB07850FF803820FFB8BEB7FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FF0B0B0BFF7CFFC4FF00492BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF00492BFF28AB16FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF00492BFF28AB16FF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFC09080FFF0F0F0FFFFF8
      F0FFF0D8C0FFB08060FF804820FF8C593CFFB09070FFFFFFFFFFFFF8F0FFF0D0
      C0FFB07850FF804820FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF0B0B0BFF28AB11FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF0B0B0BFF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF0B0B0BFF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFC09880FFB080
      60FFA06850FF905030FF905840FF966A49FFB07860FFB08870FFA07050FF8048
      30FF804820FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFC09880FFFFF8
      FFFFE0C0B0FFC09070FF804820FF000000FFC09880FFFFF8FFFFE0C8B0FFD0A0
      80FF804820FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF040404FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF040404FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF040404FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF040404FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFC0B3ABFFB090
      80FFA06850FF905030FF83513CFF000000FFC0A890FFB09080FFA06850FF9050
      30FF83513CFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF9F86
      7BFFFFF8F0FF79472DFF000000FF000000FF000000FF9F867BFFFFF8F0FF7947
      2DFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FF040404FF000000FFC0A9
      9DFFB18E78FF966A49FF000000FF000000FF000000FFC0B3ABFFB18E78FF966A
      49FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ACACACFFDCDCDCFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ACAEAFFF17272EFF999EA1FF00000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0E0E0FF8181
      81FF545454FF8A8A8AFF666666FFEBEBEBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000A8A8A8FF505A5EFF345C70FF477B95FF354C58FF00000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E1FF929292FF494949FF4545
      45FF464646FFC1C1C1FFCDCDCDFF636363FFE0E0E0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFF000000FF0000000000000000000000001522
      29FF3A6175FF49809CFF49809CFF487F9BFF354C58FF00000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A7A7A7FF727272FF545454FF494949FF494949FF3B3B
      3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFFE0E0E0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A
      4AFF000000FFCECECEFFCECECEFFCECECEFF000000FF6A6F71FF2D4F5FFF4174
      8EFF487F9BFF4F839DFF44748DFF467993FF354C58FF7F7F7FFF8D8D8DFF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0E0
      E0FF818181FF545454FF818181FF484848FF494949FF494949FF494949FF2C2C
      2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFC4C4C4FF636363FFECECECFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF4C85A1FF5487
      A1FF497B94FF4B7E98FF3B687FFF46768FFF3C505AFF0C0C0CFF050505FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E1FF929292FF4949
      49FF454545FF464646FFC1C1C1FFCDCDCDFF565656FF6B6B6BFF2E2E2EFF9A9A
      9AFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF656565FFDCDC
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF0000
      00FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF5488A2FF4072
      8CFF3E687EFF487C97FF3B687FFF46768FFF3C505AFF0C0C0CFF050505FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000D0D0D0FF616161FF545454FF494949FF4949
      49FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFF4C4C4CFFC7C7
      C7FFCFCFCFFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFC1C1C1FF6565
      65FFECECECFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF5186A1FF4072
      8CFF3C677DFF457B96FF35798EFF438299FF42535CFF0C0C0CFF050505FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000F9F9F9FFB5B5B5FF6E6E6EFF5B5B5BFF474747FF494949FF494949FF4949
      49FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFF878787FF9E9E9EFFE6E6
      E6FFE0E0E0FFD7D7D7FFCECECEFFCECECEFFCECECEFFCECECEFFCDCDCDFFCDCD
      CDFF636363FFE0E0E0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF000000FFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF4C839FFF4072
      8CFF3A647AFF3C6B83FF2397A4FF3A9EB2FF42535CFF0C0C0CFF050505FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000F9F9F9FFAAAA
      AAFF5C5C5CFF4A4A4AFF383838FF898989FFCECECEFF797979FF525252FF2E2E
      2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFC1C1C1FF535353FFE6E6E6FFE6E6
      E6FFE6E6E6FFE5E5E5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FFE2E2
      E2FF777777FFD0D0D0FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4AFF4A4A4AFF4A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF437C99FF3C6A
      81FF3F6D85FF5287A3FF3B96A9FF3E8DA3FF42535CFF0F0F0FFF060606FFB1B0
      AFFF534B3FFF8D8D8DFF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000B7B7B7FF6A6A6AFF4A4A
      4AFF4A4A4AFF484848FF313131FFCECECEFFCECECEFFCECECEFF898989FF4C4C
      4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFF9B9B9BFF8F8F8FFFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5
      E5FF606060FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF000000FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF467F9BFF507E
      96FF4D84A1FF4B7E98FF3B687FFF477790FF42535CFF121212FF090909FF786B
      56FF7E725DFF4A4339FF403A33FF171512FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFF0B0B0BFF0B0B0BFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFBFBFBFF696969FF4A4A4AFF4A4A
      4AFF4A4A4AFF292929FFA1A1A1FFCECECEFFCECECEFFCECECEFF8E8E8EFF9E9E
      9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFF4B4B4BFFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF5656
      56FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFCECECEFFCECE
      CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF5488A2FF4072
      8CFF3F697EFF4A7D97FF3B687FFF477790FF42535CFF121212FF4F4638FFA592
      75FF9B8A6FFF918269FF827560FF2E2922FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFCFCFCFFFCFCF
      CFFF0B0B0BFF28AB16FF00492BFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000E8E8E8FFBBBBBBFF5454
      54FF484848FF4E4E4EFFC2C2C2FFCECECEFFCECECEFFC0C0C0FF535353FFE6E6
      E6FFE6E6E6FFE6E6E6FFE5E5E5FF8E8E8EFFA7A7A7FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFBABABAFF8383
      83FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFF192E38FF5488A2FF4072
      8CFF3D687DFF477B96FF3B687FFF477790FF42535CFF161616FF090909FF685B
      48FF98866BFF3D352AFF3C352AFF16140FFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FF0B0B
      0BFF28AB16FF16FA95FF0B0B0BFF0B0B0BFF0B0B0BFF0B0B0BFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00005A5A5AFF929292FFCECECEFFCECECEFFCECECEFF9B9B9BFF8F8F8FFFE6E6
      E6FFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF777777FFD0D0
      D0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFCECECEFFCECECEFFCECECEFF192E38FF4C839FFF4072
      8CFF3A657BFF3F728CFF3B677EFF487A93FF42535CFF191919FF0A0A0AFF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FF0B0B0BFF28AB
      16FF16FA95FF16FA95FF18FE8CFF16FA95FF7CFFC4FF00492BFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000000000000000000000F2F2
      F2FF575757FFE3E3E3FFDEDEDEFFD1D1D1FFCECECEFF4B4B4BFFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5E5FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC9C9C9FF747474FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF192E38FF47819EFF4072
      8CFF396479FF40738DFF40738DFF5285A0FF42535CFF1C1C1CFF0B0B0BFF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FF0B0B0BFF00AF
      67FF16FA95FF16FA95FF7CFFC4FF7CFFC4FF7CFFC4FF00492BFFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000009898
      98FFACACACFFE6E6E6FFE6E6E6FFE6E6E6FF898989FFA7A7A7FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5E5FFE6E6E6FF9D9D
      9DFF989898FF909090FFE6E6E6FFE6E6E6FFE5E5E5FF727272FFE0E0E0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFF0000FFFF0000C0C0C000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF192E38FF417893FF3963
      78FF437994FF52859FFF698FA3FF637985FF313537FF242424FF0D0D0DFF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B
      0BFF00AF67FF7CFFC4FF00492BFF00492BFF00492BFF28AB11FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000F2F2F2FF6060
      60FFDBDBDBFFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FF8F8F8FFF949494FF8888
      88FF494949FF696969FF909090FFE6E6E6FFC9C9C9FF808080FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000C0C0C000FFFF0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF192E38FF427A96FF497F
      9BFF6B96ACFF65808EFF454E52FF2E2F30FF282828FF272727FF0E0E0EFF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FF0B0B0BFF7CFFC4FF00492BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000009E9E9EFFA1A1
      A1FFE5E5E5FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5E5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFA9A9A9FF8B8B8BFF8B8B8BFF535353FF4D4D
      4DFFABABABFF7A7A7AFF6F6F6FFF939393FF6C6C6CFFE0E0E0FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000FFFF0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF21333CFF638FA6FF6C85
      92FF42494DFF313131FF313131FF303030FF2F2F2FFF2E2E2EFF101010FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF0B0B0BFF28AB11FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000EEEEEEFF5B5B5BFFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5E5FFE6E6
      E6FFE6E6E6FFC9C9C9FF909090FF8D8D8DFF5C5C5CFF4A4A4AFF9E9E9EFFD3D3
      D3FFDADADAFFCACACAFF6F6F6FFF747474FF686868FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFA7AAABFF293439FF1416
      17FF101010FF101010FF101010FF101010FF101010FF101010FF050505FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000A0A0A0FFA5A5A5FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FFC5C5C5FFE6E6
      E6FFE6E6E6FFCCCCCCFF656565FF464646FF909090FFD1D1D1FFDADADAFFDADA
      DAFFDADADAFFD8D8D8FFB8B8B8FF606060FFBABABAFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFF0000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FF000000FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF0B0B0BFF0B0B0BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFF8F8F8FF595959FFDEDEDEFFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4B4FF696969FF7878
      78FFCCCCCCFF8A8A8AFF828282FFCECECEFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFC8C8C8FFACACACFF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFF0000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FF000000FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FF0B0B0BFF28AB16FF00492BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF9A9A9AFFA7A7A7FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFBBBB
      BBFF4D4D4DFF616161FFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFD7D7D7FFB7B7B7FF555555FFF4F4F4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      0000FFFF00000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFDCDCDCFF515151FF5F5F5FFF9A9A9BFF0000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B
      0BFF28AB16FF16FA95FF0B0B0BFF0B0B0BFF0B0B0BFF0B0B0BFFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF7C7C7CFFACACACFFD5D5D5FFE6E6
      E6FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC7C7
      C7FF6A6A6AFF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFDADADAFFC5C5C5FFA8A8A8FF7C7C7CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000C0C0C000FFFF0000FFFF0000FFFF
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFDBDBDBFF8E8E
      8EFF838383FFAFAFAFFFADADADFF7F7F7FFF949494FF00000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B0BFF28AB
      16FF16FA95FF16FA95FF18FE8CFF16FA95FF7CFFC4FF00492BFFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFCFCFCFF989898FF626262FF9595
      95FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF6B6B
      6BFFE0E0E0FF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDADADAFFDADADAFFDDDDDDFFE9E9E9FFB6B6B6FF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFDBDBDBFF8D8D8DFF8B8B8BFFAEAE
      AEFF9A9A9AFF969696FF929292FFA1A1A1FF7D7D7DFF909090FF000000000000
      000000000000000000000000000000000000000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B0BFF00AF
      67FF16FA95FF16FA95FF7CFFC4FF7CFFC4FF7CFFC4FF00492BFFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000F4F4F4FFACAC
      ACFF565656FFA5A5A5FFD7D7D7FFE6E6E6FFE6E6E6FFE6E6E6FFBDBDBDFF8282
      82FFFEFEFEFF6D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
      DAFFDCDCDCFFEDEDEDFFE8E8E8FFCACACAFFDCDCDCFFA3A3A3FF848484FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF888888FF8C8C8CFFB1B1B1FF9A9A9AFF8989
      89FFAFAFAFFFACACACFFAAAAAAFF9E9E9EFFA0A0A0FF7B7B7BFF898A89FF0000
      000000000000000000000000000000000000000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0B0B
      0BFF00AF67FF7CFFC4FF00492BFF00492BFF00492BFF28AB11FFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000F7F7F7FFA0A0A0FF5C5C5CFF999999FFE6E6E6FFE6E6E6FF6F6F6FFFD3D3
      D3FF000000006D6D6DFFDADADAFFDADADAFFDADADAFFDADADAFFDCDCDCFFEBEB
      EBFFE9E9E9FFCECECEFFC3C3C3FFC2C2C2FFC4C4C4FFD9D9D9FF4A4A4AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF767676FFA3A3A3FF979797FFA4A4A4FF9C9C
      9CFF979797FFACACACFFB2B2B2FF918888FF745F5FFFA3A3A3FF7C7C7CFF7E7E
      7EFF00000000000000000000000000000000000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FF0B0B0BFF7CFFC4FF00492BFFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000F9F9F9FFAAAAAAFF5A5A5AFF9E9E9EFF737373FF0000
      0000000000006D6D6DFFDADADAFFDADADAFFDBDBDBFFE8E8E8FFEAEAEAFFD2D2
      D2FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2C2FFC5C5C5FFE0E0E0FF6C6C6CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE2E2E2FF858585FF959595FFACACACFFADAD
      ADFFB7B7B7FF909090FF813737FF9E0505FFAD1E1EFF878282FFABABABFF7C7C
      7CFF6E6D6DFF000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF0B0B0BFF28AB11FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000F2F2F2FFA8A8A8FFF2F2F2FF0000
      0000000000006D6D6DFFDBDBDBFFE6E6E6FFE4E4E4FFBCBCBCFFC4C4C4FFC2C2
      C2FFC2C2C2FFC2C2C2FFC5C5C5FFD7D7D7FFB4B4B4FF696969FFE4E4E4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE2E2E2FF7D7D7DFFA2A2A2FF8989
      89FF853D3EFFC61B1BFFCC1717FFDE8B8BFFF8EAEAFFE0E0E0FF838383FF9696
      96FFAAAAAAFF000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000737373FFE7E7E7FFC2C2C2FFA3A3A3FF9E9E9EFFC2C2C2FFC2C2
      C2FFC4C4C4FFD3D3D3FFC1C1C1FF696969FFB8B8B8FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE3E3E3FF666666FF806E
      6EFFC82627FFE98989FFFDFDFDFFF4F4F4FFE3E3E3FFB5B5B5FF969697FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF040404FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7EFFC4C4C4FFB3B3B3FFA0A0A0FF9E9E9EFFC3C3C3FFD0D0
      D0FFCECECEFF6C6C6CFFA8A8A8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000FF000000008080
      80FF747474FFCACACBFFE2E3E3FFAFAFAFFF9C9C9CFF00000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000989898FF707070FFCECECEFFADADADFFDBDBDBFF7070
      70FF989898FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FFE6E6E6FFE6E6E6FF000000FF000000000000
      0000868686FF5D5D5DFF9C9C9CFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000888888FF777777FF888888FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ACACACFFDCDCDCFF00000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0E0E0FF818181FF545454FF8A8A8AFF666666FFEBEBEBFF000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E1E1FF9292
      92FF494949FF454545FF464646FFC1C1C1FFCDCDCDFF636363FFE0E0E0FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FFFFE2
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A7A7A7FF727272FF545454FF4949
      49FF494949FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B6BFFE0E0
      E0FF00000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E0FF818181FF545454FF818181FF484848FF494949FF4949
      49FF494949FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFC4C4C4FF6363
      63FFECECECFF000000000000000000000000000000FF000000FF000000FF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1E1
      E1FF929292FF494949FF454545FF464646FFC1C1C1FFCDCDCDFF565656FF6B6B
      6BFF2E2E2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFF656565FFDCDCDCFF0000000000000000000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D0D0FF616161FF5454
      54FF494949FF494949FF3B3B3BFF808080FFCDCDCDFFCDCDCDFFC4C4C4FF6B6B
      6BFF4C4C4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
      CEFFC1C1C1FF656565FFECECECFF00000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F9FFB5B5B5FF6E6E6EFF5B5B5BFF474747FF4949
      49FF494949FF494949FF2C2C2CFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFF8787
      87FF9E9E9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFFCECECEFFCECECEFFCECE
      CEFFCDCDCDFFCDCDCDFF636363FFE0E0E0FF000000FF000000FF000000FF0000
      00FF000000FF000000FFE1A471FFCB875EFF905B5FFF8A5559FF996366FF9962
      65FF996265FFBE8865FFA38D7BFFA18D7CFFB0A59BFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F9FFAAAAAAFF5C5C5CFF4A4A4AFF383838FF898989FFCECECEFF7979
      79FF525252FF2E2E2EFF9A9A9AFFCECECEFFCECECEFFCECECEFFC1C1C1FF5353
      53FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE2E2E2FFE2E2E2FF777777FFD0D0D0FF000000FF000000FF000000FF0000
      00FF000000FF000000FFF7DAC4FFE8A46DFF9D656DFF9C637AFF9F6A84FF7949
      67FF58585EFF16583FFF847936FFEBB183FFE6BA9AFF8B776CFFC0B8B1FFC6C0
      BAFFC7C2BFFFC7C3C0FFC8C7C7FF131211FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B7
      B7FF6A6A6AFF4A4A4AFF4A4A4AFF484848FF313131FFCECECEFFCECECEFFCECE
      CEFF898989FF4C4C4CFFC7C7C7FFCFCFCFFFCECECEFFCECECEFF9B9B9BFF8F8F
      8FFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE5E5E5FF606060FF00000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFFAF0E7FFA6693BFFE59B6BFFC47C64FF786E
      76FF637D85FF646A69FF147568FF385E6CFFC0866FFFF3BA97FFBB7D51FFA97A
      53FFD0A583FFD1A684FFCDA481FFCD946CFF593316FFE6DFD8FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFBFF6969
      69FF4A4A4AFF4A4A4AFF4A4A4AFF292929FFA1A1A1FFCECECEFFCECECEFFCECE
      CEFF8E8E8EFF9E9E9EFFE6E6E6FFE0E0E0FFD7D7D7FFCECECEFF4B4B4BFFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FF565656FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE2D5CAFFEB9A63FFEEA172FFA47B
      78FF1A72AEFF0089B9FF007DAEFF006792FF073155FF6E485DFFE4996CFFE39A
      70FFD29E80FFF8CAB6FFBDB78BFFEEBA9DFFF2A37DFFCE8351FFAE9B8BFFF9F7
      F4FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00AFAF
      AF007A7A7A001A242F00243A44009A9A9A00CFCFCF0004040400000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E8FFBBBBBBFF545454FF484848FF4E4E4EFFC2C2C2FFCECECEFFCECECEFFC0C0
      C0FF535353FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E5FF8E8E8EFFA7A7A7FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFBABABAFF838383FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE1DCD7FFEDAA7AFFEAAB92FFA32C
      37FFA43E43FF615CA0FF466AB1FF484E99FF584D6EFF503E77FF6F4979FFDB8F
      5DFFC25D49FFF9C8ACFFF9C8ACFFF8C1A3FFF3A582FFF4A684FFF1A880FFB17F
      5AFFD2C8BFFF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4008F8F
      8F008484840084848400848484009A9A8F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400AFAFAF005A5A5A002F44
      4F003A5A6F00447A8F005A84A4004F4F4F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5AFF929292FFCECECEFFCECECEFFCECECEFF9B9B
      9BFF8F8F8FFFE6E6E6FFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7D7FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FF777777FFD0D0D0FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFDAC7B8FFF6C39FFFD69492FF8300
      2EFF83002EFF8B0A2CFF95172BFF95172BFF95172BFF95172BFF95172BFF9517
      2BFFB04D58FFFBD7BFFFFCD7BFFFF9C6AAFFF4A683FFF4A684FFF6B599FFF8CE
      BBFFE3B592FFDBC2AEFF000000FF000000FF0000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400BABABA00C4AF9A00E4DA
      CF00EFE4E400EFE4E400EFE4E400CFCFCF00847A6F009A9A9A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400AFAFAF005A5A5A00243A44003A647A004F84
      A4004F84A400447A9A005A84A4004444440004040400FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F2FF575757FFE3E3E3FFDEDEDEFFD1D1D1FFCECECEFF4B4B
      4BFFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5E5FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFC9C9
      C9FF747474FF000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFD1B094FFF9D0B6FFE1A79FFFC16D
      77FFC16D77FFC16D77FFC16D77FFC16D77FFC16D77FFC16D77FFC16D77FFC16D
      77FFDA9996FFFBD4BDFFFBD4BDFFF7BB9DFFF4A683FFF4A684FFF6B599FFF9D0
      BEFFFCEBE3FFDDB18CFF000000FF000000FF0000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A9A00E4CFC400FAFAEF00E4E4
      E400CFBAAF00DAAFA400E4BAAF00EFDACF00FAFAEF00E4E4E40084848400CFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4000F242400447A8F004F84A400447A9A004F84
      A4003A6F8F003A647A00648FAF0004040400040404005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000989898FFACACACFFE6E6E6FFE6E6E6FFE6E6E6FF898989FFA7A7
      A7FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5E5FFE5E5
      E5FFE6E6E6FFE6E6E6FFE6E6E6FF8A8ABAFF2828D2FF8A8ABAFFE5E5E5FF7272
      72FFE0E0E0FF000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFCC9E7AFFF8C7AEFFF8C8AEFFF8C8
      AEFFF8C8AEFFF8C8AEFFF8C8AEFFF8C8AEFFF8C8AEFFF8C8AEFFF8C8AEFFF8C8
      AEFFF8C8AEFFF8C8AEFFF8C8AEFFF5AE8EFFF4A683FFF4A684FFF6B599FFF9D0
      BEFFFCECE4FFD8AB84FF000000FF000000FF0000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400DADADA00A4A4A400EFEFEF00EFEFEF00DAAF8F00C464
      3A00C4643A00DAAF8F00CF7A4F00BA642F00CF8F6F00EFE4E400EFEFEF008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400447A8F003A647A004F84
      A400446F8F003A647A00648FAF00040404000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F2FF606060FFDBDBDBFFE6E6E6FFE6E6E6FFD7D7D7FF646464FFD7D7
      D7FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF838383FFC5C5
      C5FFE6E6E6FFE6E6E6FFE6E6E6FF2828D2FF2828D2FF2828D2FFC9C9C9FF8080
      80FF00000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFCE9368FFF6B596FFF6B596FFF6B5
      96FFF6B596FFF6B596FFF6B596FFF6B596FFF6B596FFF6B596FFF6B596FFF6B5
      96FFF6B596FFF6B596FFF6B596FFF4A784FFF4A683FFF4A684FFF6B599FFF9D0
      BEFFFCECE4FFDFB28DFF000000FF000000FF0000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400BABABA00E4CFC400FAFAEF00CF8F6F00BA642F00CF64
      2F00C4846F00EFEFEF00E4BAA400BA642F00BA642F00C47A4F00EFDACF00EFE4
      E4009A9A9A000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F005A84A4003A6F8F003A647A004F84
      9A003A6F8F003A647A006F9AAF00040404000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E9E9EFFA1A1A1FFE5E5E5FFE6E6E6FFE6E6E6FFA7A7A7FF8F8F8FFFE5E5
      E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4B4FF6969
      69FF767676FFCCCCCCFFE6E6E6FF8A8ABAFF2828D2FF8A8ABAFF6C6C6CFFE0E0
      E0FF00000000000000000000000000000000000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE29253FFEFAC80FFEFAA83FFEE9D
      78FFEE9D78FFEE9D78FFEE9D78FFEE9D78FFEE9D78FFEE9D78FFEE9D78FFEDA1
      77FFF0AD81FFF0AD81FFF0AF86FFF4AA88FFF4A683FFF4A684FFF6B599FFF9D0
      BEFFFCECE4FFECB98FFF000000FF000000FF0000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400AFA49A00FAFAFA00E4AF9A00BA642F00CF642F00CF64
      2F00CF643A00DA8F6400CF6F3A00CF642F00CF642F00BA642F00CF846400FAFA
      EF009A8F8F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400446F8F003A647A00447A
      8F003A647A001AC4CF006F9AAF00040404000F0F0F005A5A5A00000000008484
      8400DADADA00000000000000000000000000000000000000000000000000EEEE
      EEFF5B5B5BFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF4E4E4EFFE5E5E5FFE5E5
      E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FF8AC6B1FF28AFBEFF8AC6B1FFE5E5
      E5FF5C5C5CFF686868FF727272FFD7D7D7FFE6E6E6FFBABABAFF7F7F7FFF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE3D5C9FFEAB589FFFCEEE7FFF0C2
      B4FFE08975FFE08874FFE08874FFE08874FFE08874FFE08874FFE08874FFE08B
      78FFF1CCC4FFFDF0EAFFFDF0EAFFFBE2D7FFF4AD8EFFF4A684FFF6B599FFF9D0
      BEFFFCEBE4FFEDB88DFF000000FF000000FF0000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BAAFAF00E4CFC400FAFAEF00CF7A4400CF642F00CF642F00CF64
      2F00CF7A4F00E4CFC400DA8F6F00CF642F00CF642F00CF642F00C4643A00EFDA
      CF00EFE4E4009A8F8F0000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A003A6F8F003A647A004F84
      A4004F849A0024A4AF006F9AAF00040404000F0F0F003A3A3A00645A5A00443A
      2F007A7A7A00AFAFAF00AFAFAF0000000000000000000000000000000000A0A0
      A0FFA5A5A5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFD3D3D3FF565656FF8383
      83FFC5C5C5FFE6E6E6FFE6E6E6FFE6E6E6FF28AFBEFF28AFBEFF28AFBEFFC9C9
      C9FF808080FFFCFCFCFFE0E0E0FF646464FF828282FF787878FFD0D0D0FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE3DBD5FFE6AB7CFFF9D4
      C2FFEBB4A8FFC66563FFC45F5FFFC45F5FFFC45F5FFFC45F5FFFC45F5FFFC45F
      5FFFC46060FFDFA29CFFFAD9CBFFFAD9CBFFF9D3C3FFF5B091FFF6B599FFF9D0
      BEFFFBE8DFFFF0C29DFF000000FF000000FF0000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFDACF00CF6F3A00CF643A00CF642F00CF64
      2F00C47A4F00EFE4E400EFC4AF00CF6F3A00CF642F00CF642F00CF642F00DAAF
      9A00EFEFEF009A8F8F0000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A004F849A00447A9A004F84
      A400446F8F003A647A006F9AAF00040404000F0F0F003A2F2400847A64006F64
      4F0044443A0044443A001A0F0F00000000000000000000000000F8F8F8FF5959
      59FFDEDEDEFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFB4B4
      B4FF696969FF787878FFCCCCCCFFE6E6E6FF8AC6B1FF28AFBEFF8AC6B1FF6C6C
      6CFFE0E0E0FF000000000000000000000000C4C4C4FFC4C4C4FF000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE3E0DFFFE5AF
      87FFF4B99AFFE8A594FFAF4251FFA63448FFA63448FFA63448FFA63448FFA634
      48FFA63448FFA63448FFC76F73FFF6BFA8FFF7C1A9FFF7BFA7FFF6B99DFFF9D0
      BEFFF8DAC6FFF5D8C0FF000000FF000000FF0000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFDACF00CF6F3A00CF6F3A00CF642F00CF64
      2F00CF642F00C48F7A00EFEFEF00EFC4AF00CF6F3A00CF642F00CF642F00E4AF
      8F00FAFAEF009A8F8F0000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F005A84A4003A6F8F003A647A004F84
      9A003A6F8F003A647A006F9AAF00040404000F0F0F006F644F00A48F7A009A8F
      6F009A8F6F008F8464002F2424000000000000000000000000009A9A9AFFA7A7
      A7FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFBBBBBBFF4D4D4DFF727272FFD7D7D7FFE6E6E6FFBABABAFF7F7F
      7FFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE5B794FFF1A47AFFE99981FFA02B44FF8D0F35FF8D0F35FF8D0F35FF8D0F
      35FF8D0F35FF8D0F35FF8D0F35FFAC4052FFF0A689FFF5AC8CFFF5AC8DFFF7C1
      A8FFF3C5A4FFFAF1E8FF000000FF000000FF000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400AFA49A00EFDACF00EFE4E400DA7A4400DA6F3A00CF642F00CF64
      2F00CF642F00CF642F00DAA48400FAFAFA00DA9A7A00CF643A00CF6F3A00EFBA
      AF00FAFAEF009A8F8F000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A400446F8F003A647A004F84
      9A00446F8F003A647A006F9AAF00040404001A1A1A00241A1A00645A4F006F64
      4F0044443A005A5A5A005A5A5A000000000000000000000000007C7C7CFFACAC
      ACFFD5D5D5FFE6E6E6FFE5E5E5FFE6E6E6FFE6E6E6FFD4D496FFBDBD31FFD3D3
      95FFE6E6E6FFC7C7C7FF6A6A6AFFE0E0E0FF646464FF828282FF787878FFD0D0
      D0FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE3CAB6FFE4B48FFFE2B799FFCB7764FFCC7A6AFFD08A85FFD087
      80FFCF837BFFCF7F76FFCE7B71FFCE776BFFD57D55FFEEA06FFFD78E57FFEFC4
      A2FFF2C7A4FF000000FF000000FF000000FF000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BAAFAF00E4CFC400FAFAFA00EFA47A00E47A4400CF846400E4CF
      C400DA9A7A00CF642F00CF845A00FAFAEF00E4BAA400DA6F3A00DA7A4400EFE4
      E400EFE4E4009A8F8F000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F004F84A4003A6F8F003A647A00446F
      8F003A647A00447A8F006F9AAF000F0F0F001A1A1A005A5A5A00CFCFCF004444
      3A00BABABA000000000000000000000000000000000000000000FCFCFCFF9898
      98FF626262FF959595FFE6E6E6FFE6E6E6FFE6E6E6FFBDBD31FFBDBD31FFBDBD
      31FFE6E6E6FF6B6B6BFFE0E0E0FF0000000000000000C4C4C4FFC4C4C4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE7B38AFFF4CBAEFFFDEFE9FFFCEA
      E2FFFBE4DAFFFBDDD0FFF9D6C6FFF8CEBBFFEAAC85FFF0BBA2FFE29F73FFFBF9
      F7FF000000FF000000FF000000FF000000FF0000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400AFA49A00FAFAEF00EFE4E400FA9A6F00E48F6400E4DA
      DA00FAFAEF00EFBAAF00EFE4E400FAFAFA00E4A48400E4844F00EFBA9A00FAFA
      FA009A8F8F000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A003A647A003A647A00447A
      9A00447A9A00648FAF00647A8F001A1A1A00242424005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F4FFACACACFF565656FFA5A5A5FFD7D7D7FFD4D496FFBDBD31FFD4D4
      96FFBDBDBDFF828282FFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE2BC9CFFF8DDCBFFF9E2D2FFFDF2
      EEFFFDEEE7FFFCE8DFFFFBE2D7FFFADBCDFFF8CEB9FFE5AB87FFF5BD9FFFE3D5
      C9FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4CFC400FAFAFA00FAEFC400FAC48F00E4AF
      8F00EFDACF00EFE4E400EFE4E400FAC4A400FA9A6400FABA9A00FAFAFA00EFE4
      E400AFAFAF000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A242F00447A9A00447A9A005A84A400648F
      AF00647A8F00444444002F2F2F0024242400242424005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F7FFA0A0A0FF5C5C5CFF999999FFE6E6E6FFE6E6
      E6FF6F6F6FFFD3D3D3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE3DBD4FFF4D1B6FFF5D4BBFFFEF8
      F6FFFDF5F1FFFDF1ECFFFCECE5FFFCE6DDFFFBDFD3FFE4AD89FFF8CCB8FFC8A1
      83FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400BABABA00E4DACF00FAFAFA00FAFAEF00FAEF
      C400FAE4AF00FADAA400FACFA400FACFA400EFDACF00FAFAFA00FAFAEF00AFAF
      A400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4001A2F2F005A84A4006F8F9A005A6F7A004444
      44002F2F2F002F2F2F002F2F2F002F2F2F002F2F2F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FFAAAAAAFF5A5A5AFF9E9E
      9EFF737373FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF040404FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE9BD99FFF5D6BEFFFEFB
      FAFFFEFAF8FFFEF7F5FFFDF4F0FFFDEFEAFFFCEAE2FFEFC3A5FFF0C9B5FFE2A8
      80FFFAF8F6FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400BABABA00E4CFC400FAFAEF00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAEF00DAC4C400BAAFAF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400646464003A444F001A1A1A000F0F0F000F0F
      0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F2FFA8A8
      A8FFF2F2F2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF5D4634FFF0C099FFF7E4
      D3FFFFFDFCFFFEFBFAFFFEF9F7FFFDF6F3FFFDF2EEFFFBEAE0FFE1A376FFEDAB
      7BFFF6E6DAFF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400BAAFAF00DAC4
      BA00EFDACF00EFDACF00EFDACF00DAC4BA00BABABA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FF040404FF000000FFF3D1
      B4FFFFFEFEFFFEFDFDFFFEFCFBFFFEFAF8FFFDF8F5FFFDF4F0FFD1AE92FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FF000000FF000000FFFCF5
      EEFFF8E8D9FFF8E8D9FFF8E8D9FFF8E8D9FFF8E8D9FFF8E8D9FFFAECE0FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F004F4F4F004F4F
      4F0004040400CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F000404
      0400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F009A8F6F009A8F
      6F00CFCFCF000404040000000000000000009A8F6F009A8F6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF004F8F4F00045A0400046F
      0400046F040004640400246F24007AAF7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F009A8F
      6F00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F0004040400040404009A8F
      6F009A8F6F00CFCFCF00040404009A8F6F0004040400040404009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF002F7A2F00046F0400049A04000FBA0F000FBA
      0F000FBA0F000FBA0F00049A0400048F0400246F240000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00644F4F005A5A5A008F8F8F00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF0004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF009A8F6F00040404000404
      04009A8F6F00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404009A9AFA0004049A000404
      04009A8F6F009A8F6F009A8F6F000404040004049A0004049A00040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF000F7A0F00049A0400049A0400048F0400049A0400049A
      040004CF040004CF040004CF040004CF0400049A040004640400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400CFCFCF00CFCF
      CF00CFCFCF00644F4F006F8F9A00A48484005A5A5A008F8F8F00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404000F4F24000F4F
      2400040404009A8F6F00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF00CFCFCF00CFCFCF00CFCFCF00040404009A9AFA000404FA000404
      9A00040404009A8F6F00040404002404C4000404FA0004049A00040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF000464040004640400247A2400649A64007AAF7A007AAF7A004F8F
      4F0004640400049A040004CF040004CF040004CF0400049A0400649A64000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040400E4E4E400E4E4E400E4E4
      E400CFCFCF0064BAEF00448FDA006F8F9A00A48484005A5A5A008F8F8F00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF009A8F6F00040404001AA44F001AA4
      4F000F4F2400040404009A8F6F00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFCFCF00CFCFCF00CFCFCF00040404009A9AFA000404
      FA0004049A00040404002404C4000404FA002404C400040404009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E4000F7A0F001A7A1A008FAF8F00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00247A2400049A040004E4040004E4040004E40400046F04000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400848FFA004FBAFA00448FDA006F8F9A00A48484005A5A5A008F8F
      8F00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404001AA44F001AA44F0004C4
      8F001AA44F000F4F2400040404009A8F6F00E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9A
      FA000404FA002404C4000404FA002404C400040404009A8F6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E4005A8F4400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400046F040004CF040004EF040004EF0400049A04000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400848FFA004FBAFA00448FDA006F8F9A00AF8484005A5A
      5A008F8F8F00E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E4009A8F6F00040404001AA44F0004C48F000404
      040004C48F001AA44F000F4F2400040404009A8F6F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      04000404FA000404FA000404FA00040404009A8F6F009A8F6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400449A
      4400046F0400049A0400049A040004CF040004EF040004EF040004CF0400049A
      0400049A0400048F04000F7A0F00000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400848FFA005ABAFA00447ACF006F8F9A00A484
      84006F6F6F006F6F6F006F6F6F006F6F6F006F6F6F008F8F8F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404001AA44F0004C48F00040404000404
      04000404040004C48F001AA44F000F4F2400040404009A8F6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404002404
      C4000404FA009A9AFA000404FA0004049A00040404009A8F6F009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E4002F9A2F00049A04000FFA0F000FFA0F000FFA0F000FFA0F000FFA0F000FFA
      0F000FE40F000F9A0F0000000000000000000000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400848FFA004FBAFA00448FDA008F8F
      8F007A7A7A00C49A8400CFAF8F00E4BAAF00DAAFA4006F6F6F006F6F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404001AA44F001AA44F0004040400E4E4
      E400E4E4E4000404040004C48F001AA44F000F4F2400040404009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404002404C4000404
      FA002404C400040404009A9AFA000404FA0004049A00040404009A8F6F009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400046404002F7A2F00E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4002F9A2F001ABA1A004FFA4F004FFA4F004FFA4F004FFA4F003AEF
      3A000F9A0F000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400848FFA00848FFA00AF84
      8400FACFA400FAEFC400FAFACF00FAFADA00FAFADA00FAFADA00A48484006F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004040400E4E4E400E4E4
      E400E4E4E400E4E4E4000404040004C48F001AA44F000F4F2400040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9AFA000404FA002404
      C40004040400E4E4E400040404009A9AFA000404FA0004049A00040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000F7A0F00049A0400048F04002F7A2F00E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E4002FA42F002FBA2F008FFA8F008FFA8F006FEF6F001AA4
      1A00000000000000000000000000000000000000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400CFAF8F00FACF
      A400FAEFBA00FAFAC400FAFADA00FAFADA00FAFAFA00FAFAFA00FAEFC4007A64
      64008F8F8F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400040404000404040004C48F001AA44F000F4F24000404
      04009A8F6F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400040404009A9AFA009A9AFA000404
      0400E4E4E400E4E4E40004040400040404009A9AFA009A9AFA00040404009A8F
      6F00000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E4000F7A0F00049A040004CF040004CF0400048F04002F7A2F00E4E4E400E4E4
      E400E4E4E400E4E4E400040404002FAF2F0044C44400A4EFA4001AA41A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAEF
      C400FAE4AF00FAFAC400FAFADA00FAFAEF00FAFAFA00FAFAFA00FAFADA00C49A
      84006F6F6F000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000404040004C48F001AA44F000F4F
      2400040404000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004040400E4E4
      E400E4E4E400E4E4E400040404000000000004040400040404009A8F6F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A
      0F000FBA0F0004CF040004CF040004CF040004CF0400048F04002F7A2F00E4E4
      E400E4E4E400E4E4E40004040400000000002FBA3A000FAF1A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400CFAF8F00FAFA
      CF00FADAAF00FAFAC400FAFADA00FAFADA00FAFAEF00FAFADA00FAFADA00CFAF
      8F006F6F6F000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400040404000000000000000000000000000404040004C48F001AA4
      4F00040404000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A0F0004CF
      040004E4040004E4040004E4040004E4040004E4040004E40400049A04002F7A
      2F00E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAEF
      C400FAE4AF00FAEFBA00FAFACF00FAFADA00FAFADA00FAFADA00FAFACF00CFAF
      8F006F6F6F000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000040404000404
      0400000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000F7A0F00048F0400048F
      0400048F040004CF040004EF040004EF04000FBA0F00048F0400048F0400046F
      04004F9A4F000404040000000000000000000000000000000000000000000000
      0000FAFAFA000000000000000000000000000000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAFA400FAFA
      CF00FAFADA00FAE4AF00FAEFBA00FAFAC400FAFAC400FAFAC400FAFAC400BA8F
      84008F8F8F00000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400049A040004EF040004EF040004E404000F7A0F00E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000002F9A
      2F0084BA8400FAFAFA000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAF9A00EFDA
      CF00FAFAFA00FAFADA00FAEFBA00FADAAF00FAE4AF00FAEFBA00FACFA4009A6F
      6F0000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400048F04001AFA1A001AFA1A001AFA1A000FBA0F002F9A2F00E4E4
      E40004040400000000000000000000000000FAFAFA009AC49A001A8F1A000F9A
      0F0000000000000000000000000000000000000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400DAAF
      A400FAEFC400FAFADA00FAFACF00FAEFBA00FAEFC400FACFA400BA8F8F000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E40064BA64002FBA2F005AFA5A005AFA5A005AFA5A003ACF3A00049A
      04004FAF4F007AC47A007AC47A005ABA5A001AA41A00049A0400048F04000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400DAAFA400DAAFA400CFAF8F00E4BAA400DAAF9A008F8F8F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E4000F9A0F005ADA5A009AFA9A009AFA9A009AFA9A009AFA
      9A007AE47A005ACF5A004FCF4F006FDA6F004FCF4F001AA41A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400CFEFCF0024AF240044C44400BAEFBA00CFEFCF00CFEF
      CF00CFEFCF00CFEFCF008FE48F002FBA2F002FAF2F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4007ACF840024BA2F0024BA2F003AC4
      4F003AC44F000FAF1A004FC45A009ADA9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E40004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040404000404040000000000000000000000
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A009A9A9A009A9A9A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9A9A009A9A9A008F8F8F008F8F8F008F8F8F009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000004F4F4F004F4F4F0004040400CFCF
      CF00CFCFCF000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A7A007A7A7A008F8F
      8F009A9A9A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A0000000000CECECE00CECECE00000000000000000000000000000000000000
      00000000000000000000202020006F6F6F00AEAEAF0000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
      4FFF040404FFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCF
      CF00848484008484840004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9A9A009A9A
      9A008F8F8F008F8F8F007A7A7A007A7A7A000404040004040400040404007A7A
      7A008F8F8F009A9A9A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A
      4A0000000000CECECE00CECECE00CECECE000000000000000000000000000000
      00007777770044444400AEAEAE00787878008D8D8D00A2A2A200000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400848484009A9A
      9A00AFAFAF00CFCFCF00CFCFCF00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A009A9A9A008F8F8F008F8F
      8F007A7A7A007A7A7A0004040400040404009A9A9A00CFCFCF00BABABA000404
      04007A7A7A008F8F8F009A9A9A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
      0000CECECE00CECECE00CECECE00CECECE00CECECE0000000000000000004141
      41006B6B6B00C3C3C300ABABAB00B0B0B000636363009F9E9F00A0A0A0000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0404
      04FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00AFAFAF00848484000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A
      7A0004040400040404009A9A9A00CFCFCF00DADADA00DADADA00CFCFCF00BABA
      BA00040404007A7A7A008F8F8F009A9A9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
      0000CECECE00CECECE00CECECE00CECECE00CECECE00CECECE003B3B3B00A0A0
      A000C6C6C60098989800999999009C9C9C00A5A5A5006A6A6A009E9E9E000000
      000000000000000000000000000000000000000000FF000000FF000000FF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000004F4F4F004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00AFAFAF008484840084848400CFCFCF0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9A9A009A9A9A008F8F8F008F8F8F007A7A7A007A7A7A00040404000404
      04009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADADA00DADADA00BABA
      BA00BABABA00040404007A7A7A008F8F8F009A9A9A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000CECE
      CE00CECECE00CECECE00CECECE00CECECE006262620060606000B1B1B100B4B4
      B4008F8F8F0094949400939393008F8F8F00A6A6A60086868600797979009797
      970000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000004F4F4F004F4F
      4F004F4F4F004F4F4F004F4F4F004F4F4F0004040400CFCFCF00C4C4C400AFAF
      AF00848484008484840084848400CFCFCF00E4E4E400E4E4E400040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009A9A
      9A008F8F8F008F8F8F007A7A7A007A7A7A0004040400040404009A9A9A00CFCF
      CF00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00CFCF
      CF00BABABA00BABABA00040404007A7A7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0000000000CECE
      CE00CECECE00CECECE00CECECE004747470084848400BDBDBD00A3A3A3008D8D
      8D00A2A2A200A8A8A800A7A7A700A2A2A2008B8B8B00AAAAAA006C6C6C008A8A
      8A0094949400000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF4F4F4FFF4F4F4FFF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00004F4F4F004F4F4F004F4F4F00040404008484840084848400848484008F8F
      8F008F8F8F00AFAFAF00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007A7A7A007A7A7A0004040400040404009A9A9A00CFCFCF00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00BABABA00BABABA00BABABA00040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A004A4A4A004A4A4A0000000000CECECE00CECE
      CE00CECECE00CECECE0047474700ADADAD00BABABA009A9A9A008E8E8E008484
      8400B9B9B900ADADAD00ADADAD00ADADAD00ADADAD0095959500A9A9A9006464
      64008D8D8D009F9F9F000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF4F4F4FFF040404FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000004F4F4F0004040400AFAFAF00AFAFAF00C4C4C400CFCF
      CF00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400040404000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040400040404009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00CFCFCF00BABABA00BABABA007A7A7A000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0000000000CECECE00CECE
      CE00CECECE00CECECE0057575700AEAEAE009C9C9C0094949400A7A7A7009696
      96008B8B8B00ACACAC00ADADAD00B6B6B6009A9A9A0072727200A1A1A1009393
      9300696969008B8B8B000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E4000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04009A9A9A00CFCFCF00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00BABABA00BABABA00BABABA000404040000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600CECECE00CECE
      CE00CECECE00CECECE00707070009494940095959500A0A0A000ACACAC00ABAB
      AB009B9B9B00ACACAC00BDBDBD008C8C8C00592424007011110096969600A4A4
      A40076767600787878008686860000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404009A9A
      9A00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00CFCFCF00BABABA00BABABA007A7A7A0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600CECECE00CECECE00CECECE005757570090909000A0A0A000ADADAD00ADAD
      AD00B4B4B400ACACAC006F5555007C090900BE040400BB13130076585800A6A6
      A600AFAFAF00606060007574750000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00BABABA00BABABA00BABABA0004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600CECECE00CECECE006969690093939300ACACAC00BCBC
      BC008D8D8D0077393A00AD131300C8090900C3303000E5A7A700DEDEDE007F80
      7F00AAAAAA009B9B9B005C5C5C0000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00CFCFCF00BABABA00BABABA007A7A7A00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6007E7E7E00A5A5A5005B5B
      5B008C252600DB1D1E00D50F1000D0555500F3D7D700FDFDFE00F4F4F400A5A5
      A500919191005C5C5C000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400BABABA008484840084848400BABABA00E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00BABABA00BABABA00BABABA00040404000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E60067676700888888006B51
      5100E21F2000E5373700E9A2A200FEFEFE00F9F9F900EBEBEB00DADADA00A8A7
      A80053535300000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400BABABA004F4F4F000404040004040400040404000404040004040400E4E4
      E400E4E4E400E4E4E40004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00CFCFCF00BABABA00BABABA007A7A7A000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6005B5B5B008D8D
      8D0076353500F6CBCB00FDFDFD00F4F5F400E5E5E500D4D4D4007B7B7B006D6D
      6D0000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400BABA
      BA004F4F4F004F4F4F00040404002F2F2F00BABABA00BABABA007A7A7A000404
      0400E4E4E4000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00BABABA00BABABA00BABABA000404
      0400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6006F6F
      6F006F6F6F00A8A8A900F0F0F000DFDFDF00CECECE0049494900000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000404
      0400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400C4C4C4006F6F
      6F004F4F4F008484840004040400E4E4E400E4E4E400BABABA00049A9A00049A
      9A00040404000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4
      E400FAFAFA00FAFAFA00DADADA00C4C4C400FAFAFA00BABABA00BABABA007A7A
      7A00040404000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6007B7B
      7B008D8D8D005E5E5E00BCBCBC00989898004444440000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400848484006F6F
      6F0084848400BABABA0004040400EFEFEF00E4E4E400049A9A0004BABA0004BA
      BA0004BABA000404040000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFA
      FA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400FAFAFA00BABABA00BABA
      BA00040404000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E6005D5D5D0097979700313030007D7D7D000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000000000000004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4006F6F6F006F6F
      6F00BABABA00E4E4E40004040400EFEFEF0044FAFA0004DADA0004DADA00049A
      9A0004BABA0004BABA0004040400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFAFA00DADADA00C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400FAFAFA00BABA
      BA007A7A7A000404040000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E6002A2A2A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000004040400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400646464008484
      8400E4E4E400E4E4E400E4E4E4000404040004DADA00AFFAFA0004DADA0004DA
      DA00046F6F00049A9A00049A9A00040404000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00DADADA00C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400FAFA
      FA00BABABA000404040000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0404
      04FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF008000FF008000FF008000FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF040404FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000004040400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E40064646400BABA
      BA00E4E4E400E4E4E400E4E4E400E4E4E4000404040004DADA00AFFAFA0004DA
      DA0004BABA00046F6F00044F2F00044F2F000404040000000000000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4
      E400FAFAFA00FAFAFA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADA
      DA00FAFAFA000404040000000000000000000000000000000000000000000000
      0000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF008000FFB0D1B0FF008000FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF04040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4007A7A7A00BABA
      BA00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004DADA0004DA
      DA00046F6F00044F2F00049A6400046F4F00046F4F0004040400000000000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFA
      FA00DADADA00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFA
      FA0004040400000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF040404FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0080
      00FF008000FF008000FF8CC48CFF078307FF008000FF008000FFE4E4E4FFE4E4
      E4FF040404FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF04040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A9A007A7A
      7A00E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4000404040004BA
      BA00044F2F0004BA7A00049A6400049A640004DA8F0004DA8F00040404000000
      000000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00DADADA00DADADA00E4E4E400FAFAFA00FAFAFA00C4C4C4009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFAFA00040404000404
      040000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0080
      00FF88BF88FF83BE83FF6FB66FFF77BA77FFA4CAA4FF008000FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E4009A9A
      9A00BABABA00E4E4E400E4E4E400E4E4E400E4E4E40004040400000000000404
      0400044F2F0004BA7A0004BA7A0004DA8F000404FA0004049A0004049A000404
      040000000000000000000000000000000000000000000000000004040400DADA
      DA00DADADA00E4E4E400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4
      C400C4C4C400DADADA00FAFAFA00FAFAFA000404040004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF0080
      00FF008000FF008000FF76B976FF138913FF008000FF008000FFE4E4E4FF0404
      04FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000404
      040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400C4C4C400C4C4C400E4E4E400E4E4E400E4E4E40004040400000000000000
      00000404040004BA7A008FFACF002424FA000404FA000404FA0004049A006F6F
      FA0004040400000000000000000000000000000000000000000004040400E4E4
      E400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADA
      DA00FAFAFA00FAFAFA0004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FFE4E4E4FFE4E4E4FFE4E4
      E4FFE4E4E4FF008000FF6DB36DFF008000FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000404040004040400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      000000000000040404008FFACF006F6FFA002424FA006F6FFA006F6FFA004444
      FA004444FA00040404000000000000000000000000000000000004040400FAFA
      FA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFA
      FA00040404000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF040404FF040404FFE4E4
      E4FFE4E4E4FF008000FF008000FF008000FFE4E4E4FFE4E4E4FF040404FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000000404040004040400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4000404040000000000000000000000
      00000000000000000000040404004444FA006F6FFA008F8FFA002424FA002424
      FA002424FA000404040000000000000000000000000000000000000000000404
      0400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A00C4C4C400C4C4C400C4C4C400DADADA00FAFAFA00FAFAFA00040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0404
      04FF040404FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000000404040004040400E4E4
      E400E4E4E400E4E4E400E4E4E400040404000000000000000000000000000000
      0000000000000000000000000000040404008F8FFA006F6FFA004444FA002424
      FA000404FA000404040000000000000000000000000000000000000000000000
      00000404040004040400FAFAFA00FAFAFA00C4C4C4009A9A9A009A9A9A009A9A
      9A00C4C4C400DADADA00FAFAFA00FAFAFA000404040004040400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E600E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF040404FF040404FFE4E4E4FFE4E4E4FF040404FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040004040400E4E4E400E4E4E400040404000000000000000000000000000000
      000000000000000000000000000000000000040404006F6FFA004444FA000404
      FA00040404000000000000000000000000000000000000000000000000000000
      000000000000000000000404040004040400FAFAFA00FAFAFA00C4C4C4009A9A
      9A00FAFAFA00FAFAFA0004040400040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF040404FF040404FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404040004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040400040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000404040004040400FAFAFA00FAFA
      FA00040404000404040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000C00000000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFFF9FFFFFFF9FFFFFFF9FFFFFFC0FFFFFFC0FFFFFFC0FFFFFFC0FFFF
      FF007FFFFF007FFFFF007FFFFF007FFFFC003FFFFC003FFFFC003FFFFC003FFF
      F0001FFFF0001FFFF0001FFFF0001FFFE0000FFFE0000FFFE0000FFFE0000FFF
      F00007FFF00007FFF00007FFF00007FFFC0003FFFC0003FFFC0003FFFC0003FF
      FF0001FFFF0001FFFF0001FFFF0001FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00007FFF00007FFF00007FFF00007FFE00003FFE00003FFE00003FFE00003F
      FE00003FFE00003FFE00003FFE00003FFC00007FFC00007FFC00007FFC00007F
      FC00007FFC00007FFC00007FFC00007FF80000FFF80000FFF80000FFF80000FF
      F80000FFF80000FFF80000FFF8000081F00001FFF00001FFF00001FFF0000181
      F00001FFF00001FFF00001FFF0000181E00003FFE00003FFE00003FFE0000381
      E00003FFE00003FFE00003FFE0000381C00007FFC00007FFC00007FFC0000001
      C00007FFC00007FFC00007FFC0000001E0000FFFE0000FFFE0000FFFE0000003
      F8000FFFF8000FFFF8000FFFF8000007FE001FFFFE001FFFFE001FFFFE000107
      FF801FFFFF801FFFFF801FFFFF800107FFE03FFFFFE03FFFFFE03FFFFFE0238F
      FFF83FFFFFF83FFFFFF83FFFFFF8238FFFFE7FFFFFFE7FFFFFFE7FFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFC7FFFFFFFFF
      FFFFC0FFFFFFFFFFFFF9F07FFFF9FFFFFFFF007FFFFFFFFFFFC0E07FFFC0FFFF
      FFFC003FFFFFFFFFFF00001FFF007FFFFFE0001FFFFFFFFFFC00001FFC003FFF
      FF80000FFFFFFFFFF000001FF0001FFFFE000007FFFFFFFFE000001FE0000FFF
      F0000003FFFFFFFFF000001FF00007FFC0000003FFFFFFFFFC000003FC0003FF
      80000007FF3FFFFFFF000000FF0001FF0000000FFF1FFFFFFF000000FF0000FF
      8000000FFF8FFFFFFF000000FF00007FF000000FFFC40FFFFE00001FFE00003F
      E000001FFFE007FFFE00001FFE00003FE000001FFFF003FFFC00001FFC00007F
      C000003FFFE001FFFC00001FFC00007FC000003FFFE001FFF800001FF80000FF
      8000007FFFE001FFF800001FF80000FF8000007FFFE001FFF00001FFF00001FF
      0000007FFFE001FFF00001FFF00001FF0000003FFFE001FFE00000FFE00003FF
      0000003FFFF003FFE000007FE00003FF0000003FFFF807FFC000003FC00007FF
      C000001FFFFC0FFFC000001FC00007FFF008001FFFFFFFFFE000000FE0000FFF
      FC18001FFFFFFFFFF8000007F8000FFFFF18001FFFFFFFFFFE000007FE001FFF
      FFF8007FFFFFFFFFFF80001FFF801FFFFFF801FFFFFFFFFFFFE0207FFFE03FFF
      FFFC07FFFFFFFFFFFFF831FFFFF83FFFFFFF1FFFFFFFFFFFFFFE7FFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFFF9FFFFFFF9FFFFFFFFFE7FFFC0FFFFFFC0FFFFFFC0FFFFFFFFF03F
      FF007FFFFF007FFFFF007FFFFFFFC01FFC002FFFFC003FFFFC003FFFFFFF000F
      F0001FFFF0001FFFF0001FFFFFF80007E0000FFFE0000FFFE0000FFFFFE00003
      F00007FFF00007FFF00007FFFF800001FC0003FFFC0003FFFC0003FFFC000000
      FC0001FFFF0001FFFF0001FFF0000000FC0000FFFF0000FFFF0000FFE0000001
      FE00003FFF00007FFF00007FC0000003FE00000FFE00003FFE00003FE0000003
      FE000007FE00003FFE00003FFC000003FC000003FC00003FFC00003FF8000007
      FC000003FC00000FFC00003FF8000007F8000003F800000FF800003FF000000F
      F8000003F8000007F800003FF000000FF0000003F0000007F0000027E000001F
      F0000003F0000003F0000001E000001FE0000003E0000003E0000001C000073F
      E0000003E0000003E0000001C0000FFFC0000003C0000003C0000001C0000FFF
      C0000007C0000003C0000007C0019FFFE000000FE0000007E000003FF001FFFF
      F800000FF8000007F800003FFC03FFFFFE00000FFE00000FFE00003FFF07FFFF
      FF800007FF80001FFF80003FFFC7FFFFFFE00007FFE0007FFFE03FFFFFFFFFFF
      FFF8201FFFF83FFFFFF83FFFFFFFFFFFFFFE601FFFFE7FFFFFFE7FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFFF9FFFFFFF9FFFFFFF9FFFFFFC0FFFFFFC0FFFFFFC0FFFFFFC0FFFF
      FF007FFFFF007FFFFF007FFFFF007FFFFC003FFFFC003FFFFC003FFFFC003FFF
      F0001FFFF0001FFFF0001FFFF0001FFFE0000FFFE0000FFFE0000FFFE0000FFF
      F00007FFF00007FFF00007FFF00007FFFC0003FFFC00033FFC0000FFFC0003FF
      FF0001FFFF00001FFF00007FFF0001FFFF0000FFFF00000FFF00003FFF0000FF
      FF00007FFF00000FFF00001FFF00007FFE00003FFE00001FFE00001FFE00003F
      FE00003FFE00003FFE00001FFE00003FFC00007FFC00003FFC000001FC00003F
      FC00003FFC00001FFC000003FC00001FF800001FF800000FF8000007F800000F
      F800000FF800000FF800000FF8000007F0000007F000000FF000001FF0000007
      F0000107F000011FF000013FF0000007E0000387E00003FFE00003FFE0000007
      E00003CFE00003FFE00003F7E0000007C00007FFC00007FFC00007E3C000000F
      C00007FFC00007FFC000070FC000001FE0000FFFE0000FFFE000001FE000003F
      F8000FFFF8000FFFF800003FF8000FFFFE001FFFFE001FFFFE00007FFE001FFF
      FF801FFFFF801FFFFF8000FFFF801FFFFFE03FFFFFE03FFFFFE000FFFFE03FFF
      FFF83FFFFFF83FFFFFF83FFFFFF83FFFFFFE7FFFFFFE7FFFFFFE7FFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFF
      FFF9FFFFFFE7FFFFFFFC0FFFFFF9FFFFFFC0FFFFFF03FFFFFFF007FFFFC0FC7F
      FF007FFFFC01FFFFFFC003FFFF00703FFC003FFFF000FFFFFF0001FFFC00201F
      F0001FFFC0007FFFFC0000FFF000001FE0000FFF80003FFFF000007FE000000F
      F00007FFC0001FFFE00000FFF0000007FC0003FFF0000FFFF00000FFFC000003
      FF0001FFFC0007FFF000007FFF000003FF0000FFFC0003FFE000007FFF000001
      FF00007FFC0001FFC000003FFF000001FE00003FF80000FFC000003FFE000001
      FE00003FF80000FFC000001FFE000003FC00007FF00001FFC000001FFC000007
      FC00007FF00001FFC000000FFC00000FF80000FFE00003FFC000000FF800003F
      F80000FFE00003FFC0000007F800007FF00001FFC00003FFC0000007F00000FF
      F00001FFC00001FFC0000003F00001FFE00003FF800000FFC0000003E00003FF
      E00003FF8000007FC0000003E00003FFC00007FF0000003FC0000007C00007FF
      C00007FF0000001FC000000FC00007FFE0000FFF8000200FC000003FE0000FFF
      F8000FFFE0003007C00000FFF8000FFFFE001FFFF8007803C00003FFFE001FFF
      FF801FFFFE007C03E0000FFFFF801FFFFFE03FFFFF80FE03F0003FFFFFE03FFF
      FFF83FFFFFE0FF07FC00FFFFFFF83FFFFFFE7FFFFFF9FF8FFF03FFFFFFFE7FFF
      FFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited Variables: TSCLPropiedadesForm
    verBotonesNavegacion = False
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_FORM_PAGO_PERSONAL'
    object Tabla_VentanaCONS_FORM_PAGO_PERSONAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_FORM_PAGO_PERSONAL'
      Required = True
    end
    object Tabla_VentanaCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Required = True
    end
    object Tabla_VentanaFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha inicial'
      FieldName = 'FECH_INICIAL'
      Required = True
    end
    object Tabla_VentanaVALO_HORA_MINI_GARANTIZADO: TFloatField
      FieldName = 'VALO_HORA_MINI_GARANTIZADO'
    end
    object Tabla_VentanaVALO_HORA_PRODUCCION: TFloatField
      FieldName = 'VALO_HORA_PRODUCCION'
    end
    object Tabla_VentanaCONS_SIS_FORM_PAGO: TIntegerField
      DisplayLabel = 'Forma de pago'
      FieldName = 'CONS_SIS_FORM_PAGO'
      Required = True
    end
    object Tabla_VentanaPARA_1: TStringField
      FieldName = 'PARA_1'
      Size = 60
    end
    object Tabla_VentanaPARA_2: TStringField
      FieldName = 'PARA_2'
      Size = 60
    end
    object Tabla_VentanaPARA_3: TStringField
      FieldName = 'PARA_3'
      Size = 60
    end
    object Tabla_VentanaCONS_FORM_PAGO_APRENDIZAJE: TIntegerField
      FieldName = 'CONS_FORM_PAGO_APRENDIZAJE'
    end
    object Tabla_VentanaFECH_FINA_PAGO_APRENDIZAJE: TDateTimeField
      FieldName = 'FECH_FINA_PAGO_APRENDIZAJE'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
    object Tabla_VentanaEFIC_INIC_APRENDIZAJE: TFloatField
      DisplayLabel = 'Eficiencia inicial:'
      FieldName = 'EFIC_INIC_APRENDIZAJE'
    end
    object Tabla_VentanaCONS_OPER_COSTURA: TIntegerField
      FieldName = 'CONS_OPER_COSTURA'
    end
  end
  object quer_personal: TQuery
    BeforeOpen = quer_personalBeforeOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PERSONAL, CODI_PERSONAL, NOMB_COMPLETO'
      'FROM GLO_PERSONAL'
      'WHERE CONS_PERSONAL = :CONS_PERSONAL')
    Left = 5
    Top = 62
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PERSONAL'
        ParamType = ptInput
      end>
  end
  object data_personal: TDataSource
    DataSet = quer_personal
    Left = 33
    Top = 62
  end
  object quer_form_pago: TQuery
    AfterOpen = quer_form_pagoAfterOpen
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT'
      'CONS_SIS_FORM_PAGO, NOMB_SIS_FORM_PAGO'
      'FROM SIS_PCP_FORM_PAGO '
      'WHERE ESTA_ACTIVA = 1'
      'AND CONS_SIS_FORM_PAGO <> 5'
      'ORDER BY CONS_SIS_FORM_PAGO')
    Left = 568
    Top = 101
  end
  object data_form_pago: TDataSource
    DataSet = quer_form_pago
    Left = 600
    Top = 101
  end
  object quer_diferencial: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_FORM_PAGO_DIFERENCIAL AS CONSECUTIVO,'
      '   CODI_FORM_PAGO_DIFERENCIAL AS CODIGO,'
      '   NOMB_FORM_PAGO_DIFERENCIAL AS NOMBRE'
      'FROM PCP_FORM_PAGO_DIFERENCIAL'
      'WHERE ESTA_ACTIVO = 1'
      'ORDER BY 2')
    Left = 568
    Top = 134
  end
  object data_codigo: TDataSource
    Left = 584
    Top = 134
  end
  object quer_dividido: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_FORM_PAGO_DIVIDIDO AS CONSECUTIVO,'
      '   CODI_FORM_PAGO_DIVIDIDO AS CODIGO,'
      '   NOMB_FORM_PAGO_DIVIDIDO AS NOMBRE'
      'FROM PCP_FORM_PAGO_DIVIDIDO'
      'WHERE ESTA_ACTIVO = 1'
      'ORDER BY 2')
    Left = 600
    Top = 134
  end
  object quer_aprendizaje: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_FORM_PAGO_APRENDIZAJE AS CONSECUTIVO,'
      'CODI_FORM_PAGO_APRENDIZAJE AS CODIGO,'
      'NOMB_FORM_PAGO_APRENDIZAJE AS NOMBRE,'
      'NUME_SEMANAS'
      ''
      'FROM PCP_FORM_PAGO_APRENDIZAJE'
      'WHERE ESTA_ACTIVO = 1'
      'ORDER BY CODI_FORM_PAGO_APRENDIZAJE')
    Left = 568
    Top = 166
  end
  object quer_parametros: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT FIRST 1 *'
      'FROM PCP_FORM_PAGO_PARAMETROS')
    Left = 600
    Top = 201
  end
  object quer_guardar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'EXECUTE PROCEDURE'
      'PRO_PCP_FORM_PAGO_PERSONAL_IU'
      ' (:CONS_PERSONAL, :FECH_INICIAL,  :VALO_HORA_MINI_GARANTIZADO, '
      ':VALO_HORA_PRODUCCION,'
      ':CONS_SIS_FORM_PAGO,'
      ':PARA_1, :PARA_2, :PARA_3)')
    Left = 600
    Top = 230
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
      end
      item
        DataType = ftString
        Name = 'PARA_2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARA_3'
        ParamType = ptInput
      end>
  end
  object data_aprendizaje: TDataSource
    DataSet = quer_aprendizaje
    Left = 601
    Top = 168
  end
  object quer_oper_codigo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_OPER_COSTURA, CODI_OPER_COSTURA'
      'FROM PCP_OPER_COSTURA'
      'ORDER BY CODI_OPER_COSTURA')
    Left = 561
    Top = 277
  end
  object data_oper_codigo: TDataSource
    DataSet = quer_oper_codigo
    Left = 593
    Top = 277
  end
  object quer_oper_nombre: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_OPER_COSTURA, NOMB_OPER_COSTURA'
      'FROM PCP_OPER_COSTURA'
      'ORDER BY NOMB_OPER_COSTURA')
    Left = 561
    Top = 309
  end
  object data_oper_nombre: TDataSource
    DataSet = quer_oper_nombre
    Left = 593
    Top = 309
  end
end

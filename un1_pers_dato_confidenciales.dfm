inherited fn1_pers_dato_confidenciales: Tfn1_pers_dato_confidenciales
  Left = -18
  Top = 4
  Width = 812
  Height = 612
  Caption = 'Modificando personal (datos confidenciales)'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 584
    Width = 804
  end
  object spli: TdfsSplitter [2]
    Left = 473
    Top = 246
    Height = 329
    Cursor = crHSplit
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_vinculos: TTBXSubmenuItem
        Images = _fMDI.imag_grandes
        LinkSubitems = _fMDI.menu_personal
        Visible = True
      end
      object TBXItem3: TTBXItem [2]
        Action = acti_movi_ejecutar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_grandes
      end
      object TBXItem4: TTBXItem [3]
        Action = acti_movi_cancelar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imag_grandes
      end
      object TBXSeparatorItem1: TTBXSeparatorItem [4]
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
    TabOrder = 2
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    TabOrder = 3
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 583
    Width = 804
    TabOrder = 4
    inherited _LFecha_Creacion: TSCLDBLabel
      Alignment = taLeftJustify
    end
    inherited _LUsuario: TSCLDBLabel
      Alignment = taLeftJustify
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 65
    end
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 65
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 575
    Width = 804
    TabOrder = 5
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
    TabOrder = 6
  end
  inline fram_list_personal: Tffra_sele_pers_lista [9]
    Top = 246
    Width = 473
    Height = 329
    Align = alLeft
    TabOrder = 7
    inherited pane_filtros: TPCPFrame
      Tag = 117
      Top = 306
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
      Tag = 307
      Top = 0
      Width = 473
      Height = 306
      inherited grid_pers_disponible: TSCLDBGrid
        Width = 459
        Height = 273
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
      end
    end
    inherited quer_pers_disponible: TQuery
      AfterScroll = fram_list_personalquer_pers_disponibleAfterScroll
    end
  end
  object fram_actualizacion: TPCPFrame [10]
    Tag = 330
    Left = 483
    Top = 246
    Width = 321
    Height = 329
    Align = alClient
    BorderWidth = 2
    Constraints.MinHeight = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    FlatBorder = True
    inline fram_nomb_operario: Tffra_mens_atencion
      Left = 3
      Top = 3
      Width = 315
      Height = 20
      TabOrder = 1
      inherited padr_shap_top: TShape
        Width = 315
      end
      inherited padr_shap_bottom: TShape
        Top = 19
        Width = 315
      end
      inherited padr_shap_right: TShape
        Left = 314
        Height = 18
      end
      inherited padr_shap_left: TShape
        Height = 18
      end
      inherited fram_label: TAdvPanel
        Width = 313
        Height = 18
        Color = 14059353
        BorderColor = clNone
        CollapsColor = clNone
        ColorTo = 9648131
        FullHeight = 15
        inherited data_label: TDBText
          Left = 5
          Width = 60
          DataField = 'NOMB_COMPLETO'
          DataSource = fram_list_personal.data_pers_disponible
          Font.Color = clWhite
          Font.Style = [fsBold]
          ParentFont = False
          Visible = True
        end
      end
    end
    object Panel1: TPanel
      Left = 3
      Top = 23
      Width = 315
      Height = 303
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object SCLDBLabel4: TSCLDBLabel
        Left = -8
        Top = 33
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
        Caption = 'Tipo de Contrato:'
        Layout = tlTop
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_PERS_TIPO_CONTRATO'
        Field = 'CONS_PERS_TIPO_CONTRATO'
      end
      object SCLDBLabel11: TSCLDBLabel
        Left = -8
        Top = 53
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
        FocusControl = DBNumero_Contrato
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'No. de Contrato:'
        Layout = tlTop
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'NUME_CONTRATO'
        Field = 'NUME_CONTRATO'
      end
      object SCLDBLabel6: TSCLDBLabel
        Left = -8
        Top = 93
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
        Caption = 'Período de Pago:'
        Layout = tlTop
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_PERI_PAGO'
        Field = 'CONS_PERI_PAGO'
      end
      object SCLDBLabel5: TSCLDBLabel
        Left = -8
        Top = 113
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
        Caption = 'Nivel Salarial:'
        Layout = tlTop
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'CONS_PERS_NIVE_SALARIAL'
        Field = 'CONS_PERS_NIVE_SALARIAL'
      end
      object SCLDBLabel8: TSCLDBLabel
        Left = -8
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
        FocusControl = DBSalario
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Salario:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'SALARIO'
        Field = 'SALARIO'
      end
      object SCLDBLabel9: TSCLDBLabel
        Left = -8
        Top = 153
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
        FocusControl = DBAux_Salarial
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Aux. Salarial:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'AUXI_SALARIAL'
        Field = 'AUXI_SALARIAL'
      end
      object SCLDBLabel10: TSCLDBLabel
        Left = -8
        Top = 173
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
        FocusControl = DBAux_Transporte
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Aux. Transporte:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'AUXI_SALARIAL'
        Field = 'AUXI_SALARIAL'
      end
      object SCLDBLabel14: TSCLDBLabel
        Left = 129
        Top = 192
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
        FocusControl = DBAviso
        Alignment = taRightJustify
        WordWrap = False
        Bevel = False
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Light = lpLeftTop
        Caption = 'Aviso Vencimiento Contrato:'
        Transparent = True
        DataSource = data_ventana
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'DIAS_VENC_CONTRATO'
        Field = 'DIAS_VENC_CONTRATO'
      end
      object SCLDBLabel15: TSCLDBLabel
        Left = 358
        Top = 192
        Width = 56
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
        Caption = 'días antes'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'NUME_CONTRATO'
        Field = 'NUME_CONTRATO'
      end
      object HTMLabel1: THTMLabel
        Left = 107
        Top = 12
        Width = 144
        Height = 17
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
          '<P align="center"><B><FONTface="Tahoma">Actuales</FONT></B></P>')
        LineWidth = 0
        ShadowColor = clGray
        ShadowOffset = 2
        Transparent = True
        URLColor = clBlue
        VAlignment = tvaTop
        Version = '1.7.1.1'
      end
      object HTMLabel2: THTMLabel
        Left = 275
        Top = 12
        Width = 144
        Height = 17
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
          '<P align="center"><FONT  face="Tahoma"><B>Nuevos</B></FONT></P>')
        LineWidth = 0
        ShadowColor = clGray
        ShadowOffset = 2
        Transparent = True
        URLColor = clBlue
        VAlignment = tvaTop
        Version = '1.7.1.1'
      end
      object JvImageSquare9: TJvImageSquare
        Left = 253
        Top = 9
        Width = 22
        Height = 21
        BorderStyle = bsNone
        HiColor = clNone
        Images = _fMDI.imagenesPCP
        ImageIndex = 105
        Text = 'JvImageSquare1'
        Enabled = False
      end
      object SCLDBLabel1: TSCLDBLabel
        Left = -14
        Top = 73
        Width = 118
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
        Caption = 'Aplica incentivo:'
        Transparent = True
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'NUME_CONTRATO'
        Field = 'NUME_CONTRATO'
      end
      object SCLDBLabel7: TSCLDBLabel
        Left = 120
        Top = 213
        Width = 151
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
        Caption = 'Incremento salarial:'
        Transparent = True
        Visible = False
        SCLPropiedades = Variables
        ColorRequerido = 12615680
        ColorNoRequerido = clWindowText
        DataField = 'NUME_CONTRATO'
        Field = 'NUME_CONTRATO'
      end
      object SCLDBLabel50: TSCLDBLabel
        Left = 356
        Top = 113
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
      object dxDBEdit2: TdxDBEdit
        Left = 107
        Top = 33
        Width = 145
        Enabled = False
        TabOrder = 0
        DataField = 'NOMB_PERS_TIPO_CONTRATO'
        DataSource = data_actual
        StyleController = padr_estilo
      end
      object PCPLookUpComboEdit3: TPCPLookUpComboEdit
        Left = 275
        Top = 33
        Width = 145
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_PERS_TIPO_CONTRATO'
        DataSource = data_ventana
        KeyField = 'CONS_PERS_TIPO_CONTRATO'
        ListField = 'NOMB_PERS_TIPO_CONTRATO'
        ListSource = DSQTipo_Contrato
        ParentCtl3D = False
        TabOrder = 1
        DirectInput = False
      end
      object DBNumero_Contrato: TdxDBEdit
        Left = 107
        Top = 53
        Width = 145
        Enabled = False
        TabOrder = 2
        AutoSize = False
        DataField = 'NUME_CONTRATO'
        DataSource = data_actual
        StyleController = padr_estilo
        Height = 21
      end
      object dxDBEdit1: TdxDBEdit
        Left = 275
        Top = 53
        Width = 145
        TabOrder = 3
        AutoSize = False
        DataField = 'NUME_CONTRATO'
        DataSource = data_ventana
        StyleController = padr_estilo
        Height = 21
      end
      object CBIncentivo: TdxDBCheckEdit
        Left = 107
        Top = 73
        Width = 145
        TabOrder = 4
        TabStop = False
        Alignment = taLeftJustify
        DataField = 'APLI_INCENTIVO'
        DataSource = data_actual
        ReadOnly = True
        StyleController = padr_estilo
        ValueChecked = '1'
        ValueGrayed = '1'
        ValueUnchecked = '-1'
        NullStyle = nsUnchecked
        StoredValues = 65
      end
      object edit_nuev_apli_incentivo: TdxDBCheckEdit
        Left = 275
        Top = 73
        Width = 145
        Color = clWhite
        ParentColor = False
        TabOrder = 5
        Alignment = taLeftJustify
        DataField = 'APLI_INCENTIVO'
        DataSource = data_ventana
        StyleController = padr_estilo
        ValueChecked = '1'
        ValueGrayed = '-1'
        ValueUnchecked = '-1'
        StoredValues = 1
      end
      object dxDBEdit3: TdxDBEdit
        Left = 107
        Top = 93
        Width = 145
        Enabled = False
        TabOrder = 6
        DataField = 'NOMB_PERI_PAGO'
        DataSource = data_actual
        StyleController = padr_estilo
      end
      object PCPLookUpComboEdit2: TPCPLookUpComboEdit
        Left = 275
        Top = 93
        Width = 145
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_PERI_PAGO'
        DataSource = data_ventana
        KeyField = 'CONS_PERI_PAGO'
        ListField = 'NOMB_PERI_PAGO'
        ListSource = DSQPeriodo_Pago
        ParentCtl3D = False
        TabOrder = 7
        DirectInput = False
      end
      object dxDBEdit4: TdxDBEdit
        Left = 107
        Top = 113
        Width = 145
        Enabled = False
        TabOrder = 8
        DataField = 'NOMB_PERS_NIVE_SALARIAL'
        DataSource = data_actual
        StyleController = padr_estilo
      end
      object PCPLookUpComboEdit1: TPCPLookUpComboEdit
        Left = 275
        Top = 113
        Width = 145
        Height = 21
        DropDownCount = 8
        Ctl3D = True
        DataField = 'CONS_PERS_NIVE_SALARIAL'
        DataSource = data_ventana
        KeyField = 'CONS_PERS_NIVE_SALARIAL'
        ListField = 'NOMB_PERS_NIVE_SALARIAL'
        ListSource = DSQNivel_Salarial
        ParentCtl3D = False
        TabOrder = 9
        DirectInput = False
      end
      object DBSalario: TdxDBCurrencyEdit
        Left = 107
        Top = 133
        Width = 118
        Enabled = False
        TabOrder = 11
        Alignment = taRightJustify
        DataField = 'VALO_SALARIO'
        DataSource = data_actual
        StyleController = padr_estilo
        DisplayFormat = '$ ,0.00'
        Nullable = False
        StoredValues = 1
      end
      object edit_salario: TdxDBCurrencyEdit
        Left = 275
        Top = 133
        Width = 118
        TabOrder = 12
        OnEnter = doCambiarColorSalario
        OnExit = doCambiarColorSalario
        Alignment = taRightJustify
        DataField = 'SALARIO'
        DataSource = data_ventana
        StyleController = padr_estilo
        DisplayFormat = '$ ,0.00'
        Nullable = False
        StoredValues = 1
      end
      object DBAux_Salarial: TdxDBCurrencyEdit
        Left = 107
        Top = 153
        Width = 118
        Enabled = False
        TabOrder = 13
        Alignment = taRightJustify
        DataField = 'AUXI_SALARIAL'
        DataSource = data_actual
        StyleController = padr_estilo
        DisplayFormat = '$ ,0.00'
        Nullable = False
        StoredValues = 1
      end
      object dxDBCurrencyEdit2: TdxDBCurrencyEdit
        Left = 275
        Top = 152
        Width = 118
        TabOrder = 14
        Alignment = taRightJustify
        DataField = 'AUXI_SALARIAL'
        DataSource = data_ventana
        StyleController = padr_estilo
        DisplayFormat = '$ ,0.00'
        Nullable = False
        StoredValues = 1
      end
      object DBAux_Transporte: TdxDBCurrencyEdit
        Left = 107
        Top = 173
        Width = 118
        Enabled = False
        TabOrder = 15
        Alignment = taRightJustify
        DataField = 'AUXI_TRANSPORTE'
        DataSource = data_actual
        StyleController = padr_estilo
        DisplayFormat = '$ ,0.00'
        Nullable = False
        StoredValues = 1
      end
      object dxDBCurrencyEdit3: TdxDBCurrencyEdit
        Left = 275
        Top = 172
        Width = 118
        TabOrder = 16
        Alignment = taRightJustify
        DataField = 'AUXI_TRANSPORTE'
        DataSource = data_ventana
        StyleController = padr_estilo
        DisplayFormat = '$ ,0.00'
        Nullable = False
        StoredValues = 1
      end
      object DBAviso: TdxDBEdit
        Left = 275
        Top = 192
        Width = 81
        TabOrder = 17
        DataField = 'DIAS_VENC_CONTRATO'
        DataSource = data_ventana
        StyleController = padr_estilo
      end
      object chec_incremento: TdxCheckEdit
        Left = 275
        Top = 212
        Width = 21
        TabOrder = 18
        Visible = False
        StyleController = padr_estilo
        OnChange = chec_incrementoChange
        NullStyle = nsUnchecked
      end
      object DBIncremento: TdxCurrencyEdit
        Left = 295
        Top = 212
        Width = 61
        Enabled = False
        TabOrder = 19
        Visible = False
        Alignment = taRightJustify
        StyleController = padr_estilo
        DisplayFormat = '0.00 %'
        StoredValues = 1
      end
      object comb_nive_sala_valores: TPCPLookUpComboEdit
        Left = 470
        Top = 113
        Width = 191
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        Ctl3D = True
        DataField = 'CONS_PERS_NIVE_SALARIAL'
        DataSource = data_ventana
        KeyField = 'cons_pers_nive_salarial'
        ListField = 'valo_minimo;valo_maximo'
        ListSource = DSQNivel_Salarial
        ParentCtl3D = False
        TabOrder = 10
        DirectInput = False
      end
    end
  end
  object PCPFrame1: TPCPFrame [11]
    Tag = 192
    Left = 0
    Top = 54
    Width = 804
    Height = 192
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
    Caption = 
      'Información del documento de actualización de datos confidencial' +
      'es'
    Titulo_Color = 16244694
    FlatBorder = True
    object SCLDBLabel40: TSCLDBLabel
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
      Left = 280
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
      Left = 112
      Top = 27
      Width = 145
      Height = 21
      Hint = 'combo tio'
      DropDownCount = 8
      Ctl3D = True
      DataField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      DataSource = data_ventana
      KeyField = 'CONS_PERS_MOVI_TIPO_DOCUMENTO'
      ListField = 'NOMB_PERS_MOVI_TIPO_DOCUMENTO'
      ListSource = DSQTipo_Documento
      ParentCtl3D = False
      TabOrder = 0
      DirectInput = False
    end
    object ENumero_Documento: TdxDBEdit
      Left = 392
      Top = 27
      Width = 145
      TabOrder = 1
      DataField = 'NUME_DOCUMENTO'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBInicial: TdxDBDateEdit
      Left = 112
      Top = 47
      Width = 145
      TabOrder = 2
      DataField = 'FECH_INICIAL'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object DBObservaciones: TdxDBMemo
      Left = 112
      Top = 115
      Width = 425
      TabOrder = 6
      DataField = 'OBSERVACIONES'
      DataSource = data_ventana
      StyleController = padr_estilo
      Height = 65
    end
    object DBFinal: TdxDBDateEdit
      Left = 392
      Top = 47
      Width = 145
      TabOrder = 3
      DataField = 'FECH_FINAL'
      DataSource = data_ventana
      StyleController = padr_estilo
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
      TabOrder = 4
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
      TabOrder = 5
      DirectInput = False
    end
  end
  inherited padr_quer_consecutivo: TQuery [12]
  end
  inherited padr_imag_tem1_colo: TImageList [13]
  end
  inherited data_ventana: TDataSource [14]
    DataSet = myTabla_Ventana
  end
  inherited padr_acciones: TActionList [15]
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
  inherited Imagenes_Botones_Pequenos: TImageList [16]
  end
  inherited Variables: TSCLPropiedadesForm [17]
  end
  inherited Tabla_Ventana: TTable [18]
  end
  inherited padr_estilo: TdxEditStyleController [19]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [20]
  end
  inherited padr_esti_panel: TAdvPanelStyler [21]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [22]
  end
  inherited imag_pequenas: TImageList [23]
  end
  object Quer_Tipo_Documento: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_MOVI_TIPO_DOCUMENTO'
      'ORDER BY NOMB_PERS_MOVI_TIPO_DOCUMENTO')
    Left = 689
    Top = 150
  end
  object DSQTipo_Documento: TDataSource
    AutoEdit = False
    DataSet = Quer_Tipo_Documento
    Left = 718
    Top = 150
  end
  object acti_Ventana: TActionList
    Images = _fMDI.imagenesPCP
    Left = 576
    Top = 156
    object acti_movi_ejecutar: TAction
      Caption = 'Ejecutar'
      ImageIndex = 7
      OnExecute = acti_movi_ejecutarExecute
      OnUpdate = acti_movi_ejecutarUpdate
    end
    object acti_movi_cancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 8
      OnExecute = acti_movi_cancelarExecute
    end
  end
  object quer_actual: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = fram_list_personal.data_pers_disponible
    SQL.Strings = (
      'Select *'
      'from CON_GLO_PERS_CONF_UNIDAD'
      '(:CONS_PERSONAL, "NOW")')
    Left = 984
    Top = 158
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end>
    object quer_actualCONS_PERS_NIVE_SALARIAL: TIntegerField
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
    end
    object quer_actualCODI_PERS_NIVE_SALARIAL: TStringField
      FieldName = 'CODI_PERS_NIVE_SALARIAL'
      Size = 12
    end
    object quer_actualNOMB_PERS_NIVE_SALARIAL: TStringField
      FieldName = 'NOMB_PERS_NIVE_SALARIAL'
      Size = 60
    end
    object quer_actualCONS_PERS_TIPO_CONTRATO: TIntegerField
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
    end
    object quer_actualCODI_PERS_TIPO_CONTRATO: TStringField
      FieldName = 'CODI_PERS_TIPO_CONTRATO'
      Size = 12
    end
    object quer_actualNOMB_PERS_TIPO_CONTRATO: TStringField
      FieldName = 'NOMB_PERS_TIPO_CONTRATO'
      Size = 60
    end
    object quer_actualNUME_CONTRATO: TStringField
      FieldName = 'NUME_CONTRATO'
    end
    object quer_actualCONS_PERI_PAGO: TIntegerField
      FieldName = 'CONS_PERI_PAGO'
    end
    object quer_actualCODI_PERI_PAGO: TStringField
      FieldName = 'CODI_PERI_PAGO'
      Size = 12
    end
    object quer_actualNOMB_PERI_PAGO: TStringField
      FieldName = 'NOMB_PERI_PAGO'
      Size = 60
    end
    object quer_actualVALO_SALARIO: TIntegerField
      FieldName = 'VALO_SALARIO'
    end
    object quer_actualAUXI_TRANSPORTE: TIntegerField
      FieldName = 'AUXI_TRANSPORTE'
    end
    object quer_actualAUXI_SALARIAL: TIntegerField
      FieldName = 'AUXI_SALARIAL'
    end
    object quer_actualAPLI_INCENTIVO: TIntegerField
      FieldName = 'APLI_INCENTIVO'
    end
    object quer_actualDURACION: TFloatField
      FieldName = 'DURACION'
    end
  end
  object data_actual: TDataSource
    DataSet = quer_actual
    Left = 1016
    Top = 158
  end
  object QTipo_Contrato: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_TIPO_CONTRATO'
      'ORDER BY NOMB_PERS_TIPO_CONTRATO')
    Left = 1016
    Top = 299
  end
  object DSQTipo_Contrato: TDataSource
    AutoEdit = False
    DataSet = QTipo_Contrato
    Left = 1048
    Top = 299
  end
  object QNivel_Salarial: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_NIVE_SALARIALES'
      'ORDER BY NOMB_PERS_NIVE_SALARIAL')
    Left = 1016
    Top = 327
    object QNivel_SalarialCONS_PERS_NIVE_SALARIAL: TIntegerField
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.CONS_PERS_NIVE_SALARIAL'
    end
    object QNivel_SalarialCODI_PERS_NIVE_SALARIAL: TStringField
      FieldName = 'CODI_PERS_NIVE_SALARIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.CODI_PERS_NIVE_SALARIAL'
      Size = 12
    end
    object QNivel_SalarialNOMB_PERS_NIVE_SALARIAL: TStringField
      FieldName = 'NOMB_PERS_NIVE_SALARIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.NOMB_PERS_NIVE_SALARIAL'
      Size = 60
    end
    object QNivel_SalarialVALO_MINIMO: TIntegerField
      FieldName = 'VALO_MINIMO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.VALO_MINIMO'
      DisplayFormat = '$ ,0.00'
    end
    object QNivel_SalarialVALO_MAXIMO: TIntegerField
      FieldName = 'VALO_MAXIMO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.VALO_MAXIMO'
      DisplayFormat = '$ ,0.00'
    end
  end
  object DSQNivel_Salarial: TDataSource
    AutoEdit = False
    DataSet = QNivel_Salarial
    Left = 1048
    Top = 327
  end
  object QPeriodo_Pago: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_PERI_PAGO'
      'ORDER BY NOMB_PERI_PAGO')
    Left = 1016
    Top = 355
  end
  object DSQPeriodo_Pago: TDataSource
    AutoEdit = False
    DataSet = QPeriodo_Pago
    Left = 1048
    Top = 355
  end
  object SPModificacion: TStoredProc
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PRO_GLO_PERS_MODI_CONFIDENCIAL'
    Left = 1017
    Top = 384
    ParamData = <
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
        Name = 'PE_CONS_PERS_TIPO_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERI_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PERS_NIVE_SALARIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_VALO_SALARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_INCR_SALARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_INCR_NIVEL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NUME_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_AUXI_TRANSPORTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_AUXI_SALARIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_DIAS_VENC_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_APLI_INCENTIVO'
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
      end>
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <>
    AfterInsert = myTabla_VentanaAfterInsert
    Left = 248
    Top = 5
    object myTabla_VentanaCONS_SOLICITA: TIntegerField
      DisplayLabel = 'Solicitado Por'
      FieldName = 'CONS_SOLICITA'
    end
    object myTabla_VentanaCONS_APROBO: TIntegerField
      DisplayLabel = 'Aprobado Por'
      FieldName = 'CONS_APROBO'
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
    end
    object myTabla_VentanaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object myTabla_VentanaCONS_PERS_CARGO: TIntegerField
      DisplayLabel = 'Cargo'
      FieldName = 'CONS_PERS_CARGO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_CARGOS.CONS_PERS_CARGO'
    end
    object myTabla_VentanaCONS_PERS_TIPO_CONTRATO: TIntegerField
      DisplayLabel = 'Tipo de Contrato'
      FieldName = 'CONS_PERS_TIPO_CONTRATO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_TIPO_CONTRATO.CONS_PERS_TIPO_CONTRATO'
    end
    object myTabla_VentanaDIAS_VENC_CONTRATO: TIntegerField
      DisplayLabel = 'Aviso Vencimiento Contrato'
      FieldName = 'DIAS_VENC_CONTRATO'
    end
    object myTabla_VentanaAPLI_INCENTIVO: TIntegerField
      DisplayLabel = 'Aplica Incentivos'
      FieldName = 'APLI_INCENTIVO'
    end
    object myTabla_VentanaCONS_PERI_PAGO: TIntegerField
      DisplayLabel = 'Período de Pago'
      FieldName = 'CONS_PERI_PAGO'
      Origin = 'DATA_BASE_PCP.SIS_PERI_PAGO.CONS_PERI_PAGO'
    end
    object myTabla_VentanaCONS_PERS_NIVE_SALARIAL: TIntegerField
      DisplayLabel = 'Nivel Salarial'
      FieldName = 'CONS_PERS_NIVE_SALARIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_NIVE_SALARIALES.CONS_PERS_NIVE_SALARIAL'
    end
    object myTabla_VentanaSALARIO: TFloatField
      DisplayLabel = 'Salario'
      FieldName = 'SALARIO'
      DisplayFormat = '$ ,0.00'
    end
    object myTabla_VentanaAUXI_SALARIAL: TFloatField
      DisplayLabel = 'Aux. Salarial'
      FieldName = 'AUXI_SALARIAL'
      DisplayFormat = '$ ,0.00'
    end
    object myTabla_VentanaAUXI_TRANSPORTE: TFloatField
      DisplayLabel = 'Aux. Transporte'
      FieldName = 'AUXI_TRANSPORTE'
      DisplayFormat = '$ ,0.00'
    end
    object myTabla_VentanaNUME_CONTRATO: TStringField
      DisplayLabel = 'Número de Contrato'
      FieldName = 'NUME_CONTRATO'
    end
  end
  object quer_pers_solicitar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_MOVI_SOLICITAR("NOW")'
      'ORDER BY NOMB_COMPLETO')
    Left = 689
    Top = 178
  end
  object data_pers_solicitar: TDataSource
    DataSet = quer_pers_solicitar
    Left = 717
    Top = 178
  end
  object quer_pers_aprobar: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_MOVI_APROBAR("NOW")'
      'ORDER BY NOMB_COMPLETO')
    Left = 689
    Top = 206
  end
  object data_pers_aprobar: TDataSource
    DataSet = quer_pers_aprobar
    Left = 717
    Top = 206
  end
end

inherited fn1_prod_plan_detallada: Tfn1_prod_plan_detallada
  Top = 86
  Height = 612
  Caption = 'Balanceo y asignación de cargas'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 584
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 163
  end
  inherited padr_pane_info: TPanel
    Top = 583
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
  end
  inherited padr_pane_principal: TPanel
    Top = 170
  end
  object Page: TSCLPageControl [8]
    Left = 0
    Top = 172
    Width = 804
    Height = 403
    ActivePage = page_balanceo
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
    Visible = False
    OnChanging = PageChanging
    FixedDimension = 22
    object page_balanceo: TSCLTabSheet
      Color = 16578290
      ImageIndex = 79
      Caption = 'Balanceo de producción'
      OnShow = page_balanceoShow
      object pane_info_destino: TPCPFrame
        Tag = 95
        Left = 0
        Top = 0
        Width = 800
        Height = 95
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
        Caption = 'Información del destino'
        Titulo_Color = 16244694
        FlatBorder = True
        object SCLDBLabel1: TSCLDBLabel
          Left = 286
          Top = 25
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
          FocusControl = comb_planta
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Planta:'
          Transparent = True
          OnDragOver = GridDragOver
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel5: TSCLDBLabel
          Left = 16
          Top = 25
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
          FocusControl = comb_empresa
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Empresa:'
          Transparent = True
          OnDragOver = GridDragOver
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel12: TSCLDBLabel
          Left = 16
          Top = 45
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
          FocusControl = comb_turno
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Turno:'
          Transparent = True
          OnDragOver = GridDragOver
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel13: TSCLDBLabel
          Left = 530
          Top = 25
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
          FocusControl = comb_linea
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Línea:'
          Transparent = True
          OnDragOver = GridDragOver
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object comb_empresa: TPCPLookUpComboEdit
          Left = 118
          Top = 25
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'cons_empresa'
          DataSource = myData_Ventana
          KeyField = 'cons_empresa'
          ListField = 'nomb_empresa'
          ListSource = data_empresas
          ParentCtl3D = False
          TabOrder = 0
          OnChange = doActualizarCambioDestino
          DirectInput = False
        end
        object comb_planta: TPCPLookUpComboEdit
          Left = 388
          Top = 25
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'cons_planta'
          DataSource = myData_Ventana
          KeyField = 'cons_planta'
          ListField = 'nomb_planta'
          ListSource = data_plantas
          ParentCtl3D = False
          TabOrder = 1
          OnChange = doActualizarCambioDestino
          DirectInput = False
        end
        object comb_turno: TPCPLookUpComboEdit
          Left = 118
          Top = 45
          Width = 120
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'cons_turno'
          DataSource = myData_Ventana
          KeyField = 'cons_turno'
          ListField = 'codi_turno'
          ListSource = data_turnos
          ParentCtl3D = False
          TabOrder = 3
          OnChange = doActualizarCambioDestino
          DirectInput = False
        end
        object comb_linea: TPCPLookUpComboEdit
          Left = 632
          Top = 25
          Width = 145
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'cons_plan_linea'
          DataSource = myData_Ventana
          KeyField = 'cons_plan_linea'
          ListField = 'nomb_linea'
          ListSource = data_plan_lineas
          ParentCtl3D = False
          TabOrder = 2
          OnChange = doActualizarCambioDestino
          DirectInput = False
        end
        object pane_sele_fechas: TPanel
          Left = 4
          Top = 66
          Width = 617
          Height = 21
          BevelOuter = bvNone
          TabOrder = 5
          object SCLDBLabel3: TSCLDBLabel
            Left = 12
            Top = -1
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
            Enabled = False
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel4: TSCLDBLabel
            Left = 282
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
            FocusControl = edit_fech_final
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Fecha final:'
            Enabled = False
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object edit_fech_inicial: TdxDateEdit
            Left = 114
            Top = -1
            Width = 120
            Enabled = False
            TabOrder = 2
            StyleController = padr_estilo
            Date = -700000
            DateOnError = deToday
            DateValidation = True
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object SCLButton1: TTBXButtonSCL
            Left = 237
            Top = 0
            Width = 22
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            Enabled = False
            ImageIndex = 4
            Images = _fMDI.imagenesPCP
            SmartFocus = False
            TabOrder = 0
            TabStop = False
            Action = acti_actu_cons_fechas
          end
          object edit_fech_final: TdxDateEdit
            Left = 384
            Top = 0
            Width = 121
            Enabled = False
            TabOrder = 3
            StyleController = padr_estilo
            Date = -700000
            DateOnError = deToday
            DateValidation = True
            SaveTime = False
            UseEditMask = True
            StoredValues = 4
          end
          object SCLButton2: TTBXButtonSCL
            Left = 507
            Top = 0
            Width = 22
            Height = 20
            AllowAllUnchecked = True
            BorderSize = 2
            ButtonStyle = bsFlat
            Enabled = False
            ImageIndex = 4
            Images = _fMDI.imagenesPCP
            SmartFocus = False
            TabOrder = 1
            TabStop = False
            Action = acti_actu_cons_fechas
          end
        end
        object boto_actu_plantas: TTBXButtonSCL
          Left = 239
          Top = 46
          Width = 22
          Height = 20
          Hint = 'Actualizar los indicadores para la selección'
          AllowAllUnchecked = True
          BorderSize = 2
          ButtonStyle = bsFlat
          ImageIndex = 4
          Images = _fMDI.imagenesPCP
          SmartFocus = False
          TabOrder = 6
          TabStop = False
          OnClick = doActualizarIndicadoresCambioDestino
        end
      end
      object pane_balanceo: TPCPFrame
        Tag = 287
        Left = 0
        Top = 95
        Width = 800
        Height = 282
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
        object pane_para_balanceo: TPCPFrame
          Tag = 194
          Left = 2
          Top = 2
          Width = 796
          Height = 194
          Align = alTop
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Caption = 'Parámetros del balanceo'
          Titulo_Color = 16244694
          BorderWidthIn = 2
          FlatBorder = True
          object Panel3: TPanel
            Left = 5
            Top = 24
            Width = 786
            Height = 165
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object pane_personal: TPanel
              Left = 0
              Top = 216
              Width = 786
              Height = 127
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 786
              Height = 216
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object SCLDBLabel22: TSCLDBLabel
                Left = 514
                Top = 23
                Width = 110
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
                FocusControl = edit_prod_dia
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Producción dia:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel23: TSCLDBLabel
                Left = 514
                Top = 43
                Width = 110
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
                FocusControl = dxDBCurrencyEdit7
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Producción hora:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel24: TSCLDBLabel
                Left = 514
                Top = 3
                Width = 110
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
                FocusControl = dxDBCurrencyEdit8
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Tiempo unidad real:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel25: TSCLDBLabel
                Left = 269
                Top = 139
                Width = 110
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
                FocusControl = dxDBCurrencyEdit9
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Tiempo medio:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel7: TSCLDBLabel
                Left = 3
                Top = 114
                Width = 110
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
                FocusControl = dxDBCurrencyEdit2
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Minutos contratados:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel15: TSCLDBLabel
                Left = 3
                Top = 134
                Width = 110
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
                FocusControl = dxDBCurrencyEdit3
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Minutos descanso:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel9: TSCLDBLabel
                Left = 3
                Top = 70
                Width = 110
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
                FocusControl = dxDBCurrencyEdit4
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Tiempo por unidad:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel10: TSCLDBLabel
                Left = 3
                Top = 90
                Width = 110
                Height = 21
                Alive = False
                ColorActive = clBtnFace
                FontActive.Charset = DEFAULT_CHARSET
                FontActive.Color = clWindowText
                FontActive.Height = -11
                FontActive.Name = 'Tahoma'
                FontActive.Style = [fsBold]
                FocusOffset = 2
                Position = wlpLeft
                FocusControl = dxDBCurrencyEdit5
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Min. requeridos:'
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
              object SCLDBLabel8: TSCLDBLabel
                Left = 3
                Top = 50
                Width = 110
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
                FocusControl = dxDBCurrencyEdit1
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Unidades del lote:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel11: TSCLDBLabel
                Left = 269
                Top = 3
                Width = 110
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
                FocusControl = edit_pers_disponible
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Personal disponible:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel2: TSCLDBLabel
                Left = 269
                Top = 31
                Width = 110
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
                FocusControl = edit_porc_presencia
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = '% Presencia:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel18: TSCLDBLabel
                Left = 269
                Top = 51
                Width = 110
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
                FocusControl = edit_porc_aprovechamiento
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = '% Aprovechamiento:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel19: TSCLDBLabel
                Left = 269
                Top = 71
                Width = 110
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
                FocusControl = edit_porc_eficiencia
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = '% Eficiencia:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel20: TSCLDBLabel
                Left = 269
                Top = 91
                Width = 110
                Height = 21
                Alive = False
                ColorActive = clBtnFace
                FontActive.Charset = DEFAULT_CHARSET
                FontActive.Color = clWindowText
                FontActive.Height = -11
                FontActive.Name = 'Tahoma'
                FontActive.Style = [fsBold]
                FocusOffset = 2
                Position = wlpLeft
                FocusControl = dxDBCurrencyEdit10
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Min. disponibles:'
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
              object SCLDBLabel21: TSCLDBLabel
                Left = 269
                Top = 119
                Width = 110
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
                FocusControl = dxDBCurrencyEdit6
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = '% Balanceo:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel16: TSCLDBLabel
                Left = 3
                Top = 2
                Width = 110
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
                FocusControl = comb_bala_tipo_agrupacion
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Tipo de agrupación:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel17: TSCLDBLabel
                Left = 3
                Top = 22
                Width = 110
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
                FocusControl = comb_bala_tipo_balanceo
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Tipo de balanceo:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel6: TSCLDBLabel
                Left = 514
                Top = 71
                Width = 110
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
                FocusControl = dxDBCurrencyEdit11
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Paquetes por puesto:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel26: TSCLDBLabel
                Left = 514
                Top = 91
                Width = 110
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
                FocusControl = dxDBCurrencyEdit12
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Tamaño paquete:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object SCLDBLabel27: TSCLDBLabel
                Left = 514
                Top = 111
                Width = 110
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
                FocusControl = dxDBCurrencyEdit13
                Alignment = taRightJustify
                WordWrap = False
                Bevel = False
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Light = lpLeftTop
                Caption = 'Puestos simultáneos:'
                Transparent = True
                SCLPropiedades = Variables
                ColorRequerido = 12615680
                ColorNoRequerido = clWindowText
              end
              object edit_prod_dia: TdxCurrencyEditPCP
                Left = 626
                Top = 23
                Width = 120
                Enabled = False
                TabOrder = 15
                OnExit = doHacerCalculosBalanceo
                Alignment = taRightJustify
                StyleController = padr_estilo
                OnChange = edit_prod_diaChange
                DecimalPlaces = 0
                DisplayFormat = ',0'
                StoredValues = 1
              end
              object dxDBCurrencyEdit7: TdxDBCurrencyEdit
                Left = 626
                Top = 43
                Width = 120
                Enabled = False
                TabOrder = 16
                Alignment = taRightJustify
                DataField = 'prod_hora'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DecimalPlaces = 0
                DisplayFormat = ',0'
                Nullable = False
                StoredValues = 1
              end
              object dxDBCurrencyEdit8: TdxDBCurrencyEdit
                Left = 626
                Top = 3
                Width = 120
                Enabled = False
                TabOrder = 17
                Alignment = taRightJustify
                DataField = 'tiem_unid_Real'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DecimalPlaces = 4
                DisplayFormat = ',0.0000'
                Nullable = False
                StoredValues = 1
              end
              object dxDBCurrencyEdit9: TdxDBCurrencyEdit
                Left = 381
                Top = 139
                Width = 120
                Enabled = False
                TabOrder = 18
                Alignment = taRightJustify
                DataField = 'tiem_medio'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DecimalPlaces = 4
                DisplayFormat = ',0.0000'
                Nullable = False
                StoredValues = 1
              end
              object dxDBCurrencyEdit2: TdxDBCurrencyEdit
                Left = 115
                Top = 114
                Width = 120
                TabOrder = 2
                Alignment = taRightJustify
                DataField = 'minu_contratados'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DecimalPlaces = 0
                DisplayFormat = ',0'
                Nullable = False
                StoredValues = 1
              end
              object dxDBCurrencyEdit3: TdxDBCurrencyEdit
                Left = 115
                Top = 134
                Width = 120
                TabOrder = 3
                Alignment = taRightJustify
                DataField = 'minu_descanso'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DecimalPlaces = 0
                DisplayFormat = ',0'
                Nullable = False
                StoredValues = 1
              end
              object dxDBCurrencyEdit4: TdxDBCurrencyEdit
                Left = 115
                Top = 70
                Width = 120
                Enabled = False
                TabOrder = 4
                Alignment = taRightJustify
                DataField = 'tiem_unidad'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DecimalPlaces = 4
                DisplayFormat = ',0.0000'
                Nullable = False
                StoredValues = 1
              end
              object dxDBCurrencyEdit5: TdxDBCurrencyEdit
                Left = 115
                Top = 90
                Width = 120
                Enabled = False
                TabOrder = 5
                Alignment = taRightJustify
                DataField = 'minu_requeridos'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DisplayFormat = ',0.00'
                Nullable = False
                StoredValues = 1
              end
              object dxDBCurrencyEdit1: TdxDBCurrencyEdit
                Left = 115
                Top = 50
                Width = 120
                Enabled = False
                TabOrder = 6
                Alignment = taRightJustify
                DataField = 'unid_lote'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DecimalPlaces = 0
                DisplayFormat = ',0'
                Nullable = False
                StoredValues = 1
              end
              object edit_pers_disponible: TdxDBCurrencyEdit
                Left = 381
                Top = 3
                Width = 120
                Color = 8421631
                TabOrder = 7
                Alignment = taRightJustify
                DataField = 'pers_disponible'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DecimalPlaces = 0
                DisplayFormat = ',0'
                Nullable = False
                StoredValues = 1
              end
              object edit_porc_presencia: TdxDBCurrencyEdit
                Left = 381
                Top = 31
                Width = 120
                Color = 8421631
                TabOrder = 8
                Alignment = taRightJustify
                DataField = 'porc_presencia'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DisplayFormat = ',0.00 %'
                Nullable = False
                StoredValues = 1
              end
              object edit_porc_aprovechamiento: TdxDBCurrencyEdit
                Left = 381
                Top = 51
                Width = 120
                Color = 8421631
                TabOrder = 9
                Alignment = taRightJustify
                DataField = 'porc_aprovechamiento'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DisplayFormat = ',0.00 %'
                Nullable = False
                StoredValues = 1
              end
              object edit_porc_eficiencia: TdxDBCurrencyEdit
                Left = 381
                Top = 71
                Width = 120
                Color = 8421631
                TabOrder = 10
                Alignment = taRightJustify
                DataField = 'porc_eficiencia'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DisplayFormat = ',0.00 %'
                Nullable = False
                StoredValues = 1
              end
              object dxDBCurrencyEdit10: TdxDBCurrencyEdit
                Left = 381
                Top = 91
                Width = 120
                Enabled = False
                TabOrder = 11
                Alignment = taRightJustify
                DataField = 'minu_disponibles'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DisplayFormat = ',0.00'
                Nullable = False
                StoredValues = 1
              end
              object boto_actu_operarios: TTBXButtonSCL
                Left = 502
                Top = 3
                Width = 22
                Height = 20
                Hint = 'Actualizar el personal disponible'
                AllowAllUnchecked = True
                BorderSize = 2
                ButtonStyle = bsFlat
                ImageIndex = 4
                Images = _fMDI.imagenesPCP
                SmartFocus = False
                TabOrder = 12
                TabStop = False
                OnClick = doActualizarPersonalDisponible
              end
              object boto_actu_indicadores: TTBXButtonSCL
                Left = 503
                Top = 32
                Width = 22
                Height = 20
                Hint = 'Actualizar los indicadores de la ubicación seleccionada'
                AllowAllUnchecked = True
                BorderSize = 2
                ButtonStyle = bsFlat
                ImageIndex = 4
                Images = _fMDI.imagenesPCP
                SmartFocus = False
                TabOrder = 13
                TabStop = False
                OnClick = doActualizarIndicadores
              end
              object dxDBCurrencyEdit6: TdxDBCurrencyEdit
                Left = 381
                Top = 119
                Width = 120
                Enabled = False
                TabOrder = 14
                Alignment = taRightJustify
                DataField = 'porc_balanceo'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DisplayFormat = ',0.00 %'
                Nullable = False
                StoredValues = 1
              end
              object comb_bala_tipo_agrupacion: TdxPickEdit
                Left = 115
                Top = 2
                Width = 151
                TabOrder = 0
                StyleController = padr_estilo
                OnChange = doIniciarEdicion
                DropDownRows = 2
                DropDownListStyle = True
                Items.Strings = (
                  'Todo el lote'
                  'Por procesos')
              end
              object comb_bala_tipo_balanceo: TdxPickEdit
                Left = 115
                Top = 22
                Width = 151
                TabOrder = 1
                StyleController = padr_estilo
                OnChange = comb_bala_tipo_balanceoChange
                DropDownRows = 2
                DropDownListStyle = True
                Items.Strings = (
                  'Capacidad instalada'
                  'Unidades requeridas')
              end
              object dxDBCurrencyEdit11: TdxDBCurrencyEdit
                Left = 626
                Top = 71
                Width = 120
                TabOrder = 19
                Alignment = taRightJustify
                DataField = 'paqu_por_puesto'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DecimalPlaces = 0
                DisplayFormat = ',0'
                Nullable = False
                StoredValues = 1
              end
              object dxDBCurrencyEdit12: TdxDBCurrencyEdit
                Left = 626
                Top = 91
                Width = 120
                TabOrder = 20
                Alignment = taRightJustify
                DataField = 'tama_paquete'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DecimalPlaces = 0
                DisplayFormat = ',0'
                Nullable = False
                StoredValues = 1
              end
              object dxDBCurrencyEdit13: TdxDBCurrencyEdit
                Left = 626
                Top = 111
                Width = 120
                TabOrder = 21
                Alignment = taRightJustify
                DataField = 'pues_simultaneos'
                DataSource = myData_Ventana
                StyleController = padr_estilo
                DecimalPlaces = 0
                DisplayFormat = ',0'
                Nullable = False
                StoredValues = 1
              end
            end
          end
        end
        object PCPFrame1: TPCPFrame
          Tag = 89
          Left = 2
          Top = 196
          Width = 796
          Height = 84
          Align = alClient
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Caption = 'Recorridos'
          Titulo_Color = 16244694
          FlatBorder = True
          object SCLDBLabel34: TSCLDBLabel
            Left = 8
            Top = 27
            Width = 110
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
            FocusControl = dxDBCurrencyEdit26
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = '1er. paquete:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel35: TSCLDBLabel
            Left = 272
            Top = 27
            Width = 110
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
            FocusControl = dxDBCurrencyEdit25
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Ult. paquete:'
            Transparent = True
            SCLPropiedades = Variables
            ColorRequerido = 12615680
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel36: TSCLDBLabel
            Left = 520
            Top = 27
            Width = 110
            Height = 21
            Alive = False
            ColorActive = clBtnFace
            FontActive.Charset = DEFAULT_CHARSET
            FontActive.Color = clWindowText
            FontActive.Height = -11
            FontActive.Name = 'Tahoma'
            FontActive.Style = [fsBold]
            FocusOffset = 2
            Position = wlpLeft
            FocusControl = dxDBCurrencyEdit22
            Alignment = taRightJustify
            WordWrap = False
            Bevel = False
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Light = lpLeftTop
            Caption = 'Recorrido total:'
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
          object Label1: TLabel
            Left = 198
            Top = 30
            Width = 37
            Height = 13
            Caption = 'minutos'
          end
          object Label2: TLabel
            Left = 199
            Top = 51
            Width = 19
            Height = 13
            Caption = 'días'
          end
          object dxDBCurrencyEdit22: TdxDBCurrencyEdit
            Left = 632
            Top = 27
            Width = 73
            Enabled = False
            TabOrder = 1
            Alignment = taRightJustify
            DataField = 'reco_tota_minutos'
            DataSource = myData_Ventana
            StyleController = padr_estilo
            DisplayFormat = ',0.00'
            Nullable = False
            StoredValues = 1
          end
          object dxDBCurrencyEdit23: TdxDBCurrencyEdit
            Left = 632
            Top = 47
            Width = 73
            Enabled = False
            TabOrder = 2
            Alignment = taRightJustify
            DataField = 'reco_tota_dias'
            DataSource = myData_Ventana
            StyleController = padr_estilo
            DisplayFormat = ',0.00'
            Nullable = False
            StoredValues = 1
          end
          object dxDBCurrencyEdit24: TdxDBCurrencyEdit
            Left = 384
            Top = 47
            Width = 73
            Enabled = False
            TabOrder = 3
            Alignment = taRightJustify
            DataField = 'reco_ulti_paqu_dias'
            DataSource = myData_Ventana
            StyleController = padr_estilo
            DisplayFormat = ',0.00'
            Nullable = False
            StoredValues = 1
          end
          object dxDBCurrencyEdit25: TdxDBCurrencyEdit
            Left = 384
            Top = 27
            Width = 73
            Enabled = False
            TabOrder = 4
            Alignment = taRightJustify
            DataField = 'reco_ulti_paqu_minutos'
            DataSource = myData_Ventana
            StyleController = padr_estilo
            DisplayFormat = ',0.00'
            Nullable = False
            StoredValues = 1
          end
          object dxDBCurrencyEdit26: TdxDBCurrencyEdit
            Left = 120
            Top = 27
            Width = 73
            Enabled = False
            TabOrder = 5
            Alignment = taRightJustify
            DataField = 'reco_prim_paqu_minutos'
            DataSource = myData_Ventana
            StyleController = padr_estilo
            DisplayFormat = ',0.00'
            Nullable = False
            StoredValues = 1
          end
          object dxDBCurrencyEdit27: TdxDBCurrencyEdit
            Left = 120
            Top = 47
            Width = 73
            Enabled = False
            TabOrder = 6
            Alignment = taRightJustify
            DataField = 'reco_prim_paqu_dias'
            DataSource = myData_Ventana
            StyleController = padr_estilo
            DisplayFormat = ',0.00'
            Nullable = False
            StoredValues = 1
          end
        end
      end
    end
    object page_todo_lote: TSCLTabSheet
      Color = 16578290
      ImageIndex = 83
      Caption = 'Todo el lote'
      OnShow = page_todo_loteShow
      object pane_info_lote: TPCPFrame
        Tag = 98
        Left = 0
        Top = 0
        Width = 1012
        Height = 98
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
        Caption = 'Información del lote'
        Titulo_Color = 16244694
        FlatBorder = True
        object SCLDBLabel28: TSCLDBLabel
          Left = 280
          Top = 27
          Width = 110
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
          FocusControl = dxDBCurrencyEdit14
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = '1er. paquete:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel29: TSCLDBLabel
          Left = 280
          Top = 47
          Width = 110
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
          FocusControl = dxDBCurrencyEdit15
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Ult. paquete:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel30: TSCLDBLabel
          Left = 280
          Top = 67
          Width = 110
          Height = 21
          Alive = False
          ColorActive = clBtnFace
          FontActive.Charset = DEFAULT_CHARSET
          FontActive.Color = clWindowText
          FontActive.Height = -11
          FontActive.Name = 'Tahoma'
          FontActive.Style = [fsBold]
          FocusOffset = 2
          Position = wlpLeft
          FocusControl = dxDBCurrencyEdit16
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Recorrido total:'
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
        object SCLDBLabel31: TSCLDBLabel
          Left = 3
          Top = 27
          Width = 110
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
          FocusControl = dxDBCurrencyEdit17
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Unidades del lote:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel32: TSCLDBLabel
          Left = 3
          Top = 47
          Width = 110
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
          FocusControl = edit_prod_dia2
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Producción dia:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel33: TSCLDBLabel
          Left = 3
          Top = 67
          Width = 110
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
          FocusControl = edit_prod_hora2
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Producción hora:'
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object dxDBCurrencyEdit14: TdxDBCurrencyEdit
          Left = 392
          Top = 27
          Width = 73
          Enabled = False
          TabOrder = 1
          Alignment = taRightJustify
          DataField = 'reco_prim_paqu_minutos'
          DataSource = myData_Ventana
          StyleController = padr_estilo
          DisplayFormat = ',0.00'
          Nullable = False
          StoredValues = 1
        end
        object dxDBCurrencyEdit15: TdxDBCurrencyEdit
          Left = 392
          Top = 47
          Width = 73
          Enabled = False
          TabOrder = 2
          Alignment = taRightJustify
          DataField = 'reco_ulti_paqu_minutos'
          DataSource = myData_Ventana
          StyleController = padr_estilo
          DisplayFormat = ',0.00'
          Nullable = False
          StoredValues = 1
        end
        object dxDBCurrencyEdit16: TdxDBCurrencyEdit
          Left = 392
          Top = 67
          Width = 73
          Enabled = False
          TabOrder = 3
          Alignment = taRightJustify
          DataField = 'reco_tota_minutos'
          DataSource = myData_Ventana
          StyleController = padr_estilo
          DisplayFormat = ',0.00'
          Nullable = False
          StoredValues = 1
        end
        object dxDBCurrencyEdit18: TdxDBCurrencyEdit
          Left = 464
          Top = 27
          Width = 47
          Enabled = False
          TabOrder = 4
          Alignment = taRightJustify
          DataField = 'reco_prim_paqu_dias'
          DataSource = myData_Ventana
          StyleController = padr_estilo
          DisplayFormat = ',0.00'
          Nullable = False
          StoredValues = 1
        end
        object dxDBCurrencyEdit19: TdxDBCurrencyEdit
          Left = 464
          Top = 47
          Width = 47
          Enabled = False
          TabOrder = 5
          Alignment = taRightJustify
          DataField = 'reco_ulti_paqu_dias'
          DataSource = myData_Ventana
          StyleController = padr_estilo
          DisplayFormat = ',0.00'
          Nullable = False
          StoredValues = 1
        end
        object dxDBCurrencyEdit20: TdxDBCurrencyEdit
          Left = 464
          Top = 67
          Width = 47
          Enabled = False
          TabOrder = 6
          Alignment = taRightJustify
          DataField = 'reco_tota_dias'
          DataSource = myData_Ventana
          StyleController = padr_estilo
          DisplayFormat = ',0.00'
          Nullable = False
          StoredValues = 1
        end
        object boto_actu_grid_operaciones: TTBXButtonSCL
          Left = 514
          Top = 67
          Width = 22
          Height = 20
          Hint = 'Actualizar los indicadores de la ubicación seleccionada'
          AllowAllUnchecked = True
          BorderSize = 2
          ButtonStyle = bsFlat
          ImageIndex = 4
          Images = _fMDI.imagenesPCP
          SmartFocus = False
          TabOrder = 7
          TabStop = False
          OnClick = doActualizarGridOperaciones
        end
        object dxDBCurrencyEdit17: TdxDBCurrencyEdit
          Left = 115
          Top = 27
          Width = 120
          Enabled = False
          TabOrder = 8
          Alignment = taRightJustify
          DataField = 'unid_lote'
          DataSource = myData_Ventana
          StyleController = padr_estilo
          DecimalPlaces = 0
          DisplayFormat = ',0'
          Nullable = False
          StoredValues = 1
        end
        object edit_prod_dia2: TdxCurrencyEditPCP
          Left = 115
          Top = 47
          Width = 120
          Enabled = False
          TabOrder = 9
          OnExit = doHacerCalculosBalanceo
          Alignment = taRightJustify
          StyleController = padr_estilo
          DecimalPlaces = 0
          DisplayFormat = ',0'
          StoredValues = 1
        end
        object edit_prod_hora2: TdxDBCurrencyEdit
          Left = 115
          Top = 67
          Width = 120
          Enabled = False
          TabOrder = 10
          Alignment = taRightJustify
          DataField = 'prod_hora'
          DataSource = myData_Ventana
          StyleController = padr_estilo
          DecimalPlaces = 0
          DisplayFormat = ',0'
          Nullable = False
          StoredValues = 1
        end
      end
      object PCPFrame7: TPCPFrame
        Tag = 284
        Left = 0
        Top = 98
        Width = 1012
        Height = 291
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
        Caption = 'Listado de operaciones'
        Titulo_Color = 16244694
        Boton_Visible = False
        BorderWidthIn = 4
        FlatBorder = True
        object grid_balanceo: TSCLColumnGrid
          Left = 7
          Top = 26
          Width = 998
          Height = 258
          Cursor = crDefault
          Align = alClient
          ColCount = 12
          Ctl3D = False
          DefaultRowHeight = 20
          FixedColor = 15582631
          RowCount = 5
          FixedRows = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goEditing]
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 1
          OnDrawCell = grid_balanceoDrawCell
          OnKeyDown = grid_balanceoKeyDown
          GridLineColor = 14467501
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'MS Sans Serif'
          ActiveCellFont.Style = [fsBold]
          VAlignment = vtaCenter
          EnhRowColMove = False
          OnGetAlignment = grid_balanceoGetAlignment
          OnIsFixedCell = grid_balanceoIsFixedCell
          ControlLook.ControlStyle = csClassic
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
          CellNode.ShowTree = False
          MouseActions.SizeFixedCol = True
          FixedColWidth = 180
          FixedRowHeight = 20
          FixedRowAlways = True
          FixedColAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          ColumnHeaders.Strings = (
            'Operación'
            'Tiempo'
            'Minutos requeridos'
            'No. de puestos'
            'Operarias reales'
            '% aprov.'
            'Tiempo medio'
            '1er. paquete'
            'Ultimo paquete'
            'Recorrido total'
            'Efic. inic.'
            'Efic. final')
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
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Operación'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'NOMB_OPERACION'
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
              Width = 180
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
              Header = 'Tiempo'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'TIEM_OPERACION'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 69
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
              Header = 'Minutos requeridos'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'MINU_REQUERIDOS'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 61
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
              Header = 'No. de puestos'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'NUME_PUESTOS'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 50
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
              Header = 'Operarias reales'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'OPER_REALES'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 53
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
              Header = '% aprov.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'PORC_APROVECHAMIENTO'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 57
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
              Header = 'Tiempo medio'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'TIEM_MEDIO'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 64
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
              Header = '1er. paquete'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'RECO_PRIM_PAQUETE'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 50
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
              Header = 'Ultimo paquete'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'RECO_ULTI_PAQUETE'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 50
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
              Header = 'Recorrido total'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'RECO_TOTAL'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 54
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
              Editor = edPositiveNumeric
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Efic. inic.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 1
              MaxSize = 0
              Name = 'EFIC_INICIAL'
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
              Width = 42
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
              Editor = edPositiveNumeric
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Efic. final'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 1
              MaxSize = 0
              Name = 'EFIC_FINAL'
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
              Width = 44
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
            180
            69
            61
            50
            53
            57
            64
            50
            50
            54
            42
            44)
        end
      end
    end
    object page_por_procesos: TSCLTabSheet
      Color = 16578290
      ImageIndex = 82
      Caption = 'Análisis por procesos'
      OnShow = page_por_procesosShow
      object dfsSplitter1: TdfsSplitter
        Left = 525
        Top = 0
        Height = 377
        Cursor = crHSplit
        Align = alLeft
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object grid_oper_procesos: TSCLColumnGrid
        Left = 0
        Top = 0
        Width = 525
        Height = 377
        Cursor = crDefault
        Align = alLeft
        ColCount = 6
        Ctl3D = False
        DefaultRowHeight = 21
        FixedColor = 15582631
        RowCount = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        GridLineColor = 14467501
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'MS Sans Serif'
        ActiveCellFont.Style = [fsBold]
        EnhRowColMove = False
        OnGetCellColor = grid_oper_procesosGetCellColor
        OnGetAlignment = gridCentrarTitulos
        ControlLook.ControlStyle = csClassic
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
        CellNode.ShowTree = False
        MouseActions.AllSelect = True
        MouseActions.CaretPositioning = True
        MouseActions.DisjunctRowSelect = True
        MouseActions.RowSelect = True
        FixedColWidth = 180
        FixedRowAlways = True
        FixedColAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
        FloatFormat = '%.2f'
        WordWrap = False
        ColumnHeaders.Strings = (
          'Operación'
          'Proceso'
          'Componente'
          'Tipo Op.'
          ''
          'Tiempo')
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
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header = 'Operación'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'NOMB_OPERACION'
            Password = False
            PrintBorders = []
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 180
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
            Header = 'Proceso'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'NOMB_PROCESO'
            Password = False
            PrintBorders = []
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 93
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
            Header = 'Componente'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'NOMB_COMPONENTE'
            Password = False
            PrintBorders = []
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 83
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
            Header = 'Tipo Op.'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'NOMB_TIPO_OPERACION'
            Password = False
            PrintBorders = []
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 91
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
            Name = 'CONS_GRUPO'
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
            Width = 50
          end
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taRightJustify
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
            Header = 'Tiempo'
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Name = 'TIEM_OPERACION'
            Password = False
            PrintBorders = []
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 56
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
          180
          93
          83
          91
          50
          56)
      end
      object pane_trabajando: TPanel
        Left = 535
        Top = 0
        Width = 265
        Height = 377
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object grid_grupos: TSCLColumnGrid
          Left = 0
          Top = 0
          Width = 477
          Height = 389
          Cursor = crDefault
          Align = alClient
          ColCount = 14
          Ctl3D = False
          DefaultRowHeight = 21
          FixedColor = 15582631
          FixedCols = 5
          RowCount = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          OnDrawCell = grid_gruposDrawCell
          GridLineColor = 14467501
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'MS Sans Serif'
          ActiveCellFont.Style = [fsBold]
          EnhRowColMove = False
          OnGetCellColor = grid_gruposGetCellColor
          OnGetAlignment = gridCentrarTitulos
          OnCanSort = grid_gruposCanSort
          OnDblClickCell = grid_gruposDblClickCell
          SortSettings.Column = 2
          SortSettings.BlankPos = blLast
          SortSettings.FixedCols = True
          SortSettings.NormalCellsOnly = True
          ControlLook.ControlStyle = csClassic
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
          CellNode.ShowTree = False
          FixedColWidth = 142
          FixedRowHeight = 40
          FixedRowAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          ColumnHeaders.Strings = (
            'Grupo'
            ''
            'MAXI_PRIM_PAQUETE'
            'Nivel'
            'Nivel'
            'Tiempo'
            'Min. requeridos'
            'No. puestos'
            'Operarias reales'
            '% aprovech.'
            'Tiempo medio'
            '1er paquete'
            'Ultimo paquete'
            'Recorrido total')
          ShowSelection = False
          HideFocusRect = True
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
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Grupo'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'NOMB_GRUPO'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 142
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
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
              Name = 'CONS_GRUPO'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 50
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
              Header = 'MAXI_PRIM_PAQUETE'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'MAXI_PRIM_PAQUETE'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
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
              Header = 'Nivel'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'MAXI_ULTI_PAQUETE'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
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
              Alignment = taRightJustify
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
              Header = 'Nivel'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'NIVEL'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssNumeric
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 30
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
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
              Header = 'Tiempo'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'TIEM_GRUPO'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 50
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
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
              Header = 'Min. requeridos'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'MINU_REQUERIDOS'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 55
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
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
              Header = 'No. puestos'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'NUME_PUESTOS'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 54
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
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
              Header = 'Operarias reales'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'OPER_REALES'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 53
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
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
              Header = '% aprovech.'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'PORC_APROVECHAMIENTO'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 61
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
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
              Header = 'Tiempo medio'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'TIEM_MEDIO'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 48
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
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
              Header = '1er paquete'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'RECO_PRIM_PAQUETE'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 50
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
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
              Header = 'Ultimo paquete'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'RECO_ULTI_PAQUETE'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 50
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
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
              Header = 'Recorrido total'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'RECO_TOTAL'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 56
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
            142
            50
            0
            0
            30
            50
            55
            54
            53
            61
            48
            50
            50
            56)
          RowHeights = (
            40
            21
            21
            21
            21)
        end
      end
    end
    object page_requerimientos: TSCLTabSheet
      Color = 16578290
      ImageIndex = 80
      Caption = 'Requerimientos'
    end
    object page_planeacion: TSCLTabSheet
      Color = 16578290
      ImageIndex = 77
      Caption = 'Planeación detallada'
      OnShow = page_planeacionShow
      object pane_trab_planeacion: TPanel
        Left = 0
        Top = 0
        Width = 1012
        Height = 389
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Grid: TAdvColumnGrid
          Left = 0
          Top = 0
          Width = 1012
          Height = 389
          Cursor = crDefault
          Align = alClient
          ColCount = 14
          Ctl3D = False
          DefaultRowHeight = 21
          DragMode = dmAutomatic
          FixedColor = 15582631
          FixedCols = 2
          RowCount = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          OnDrawCell = GridDrawCell
          GridLineColor = 14467501
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'MS Sans Serif'
          ActiveCellFont.Style = [fsBold]
          EnhRowColMove = False
          OnGetCellColor = GridGetCellColor
          ControlLook.ControlStyle = csClassic
          Flat = True
          SearchFooter.FindNextCaption = 'Find next'
          SearchFooter.FindPrevCaption = 'Find previous'
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SelectionColor = clWhite
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
          CellNode.ShowTree = False
          FixedColWidth = 80
          FixedRowHeight = 40
          FixedRowAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          ColumnHeaders.Strings = (
            'No. Orden'
            'Lote'
            'Lote'
            'Sección'
            'Sección'
            'fechejecfin'
            'fracejefin'
            'fechejefin'
            'fef'
            'recoprim'
            'recoulit'
            'C1OP')
          ShowSelection = False
          HideFocusRect = True
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
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'No. Orden'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'NUME_PROD_ORDEN'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 80
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taRightJustify
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
              Header = 'Lote'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'NUME_LOTE'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 40
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
              Header = 'Lote'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'CONS_PROG_PRODUCCION'
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
              Header = 'Sección'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'CONS_PROD_ORDEN'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
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
              Header = 'Sección'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'CONS_PROD_LOTE'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
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
              Header = 'fechejecfin'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'FECH_EJEC_INICIAL'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
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
              Header = 'fracejefin'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'FRAC_EJEC_INICIAL'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
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
              Header = 'fechejefin'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'FECH_EJEC_FINAL'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
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
              Header = 'fef'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'FRAC_EJEC_FINAL'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
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
              Header = 'recoprim'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'RECO_PRIM_PAQUETE'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
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
              Header = 'recoulit'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'RECO_ULTI_PAQUETE'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
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
              Header = 'C1OP'
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Name = 'CARG_PRIM_OPERACION'
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
              Name = 'CODI_REFERENCIA'
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
              Name = 'ZOOM'
              Password = False
              PrintBorders = []
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 0
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
          ColWidths = (
            80
            40
            0
            0
            0
            0
            0
            0
            0
            0
            0
            0
            0
            0)
          RowHeights = (
            40
            21
            21
            21
            21)
        end
      end
    end
    object page_info_lote: TSCLTabSheet
      Color = 16578290
      ImageIndex = 78
      Caption = 'Información del lote'
      object spag_info_lote: TSCLPageControl
        Left = 0
        Top = 0
        Width = 800
        Height = 377
        ActivePage = dxTabSheet3
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
        TabOrder = 0
        Transparent = True
        FixedDimension = 22
        object dxTabSheet3: TSCLTabSheet
          Color = 16578290
          ImageIndex = 75
          Caption = 'Unidades cortadas y distribución de paquetes'
          object PCPFrame3: TPCPFrame
            Tag = 351
            Left = 0
            Top = 0
            Width = 466
            Height = 351
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
            Caption = 'Unidades cortadas'
            Titulo_Color = 16244694
            Boton_Visible = False
            BorderWidthIn = 4
            FlatBorder = True
            inline fram_tota_unidades: Tffra_prod_orde_tota
              Left = 7
              Top = 26
              Width = 452
              Height = 318
              Align = alClient
              TabOrder = 1
              inherited grid: TSCLColumnGrid
                Width = 452
                Height = 318
                GridLineColor = 14467501
                ScrollWidth = 16
              end
              inherited quer_cons_unidades: TQuery
                Top = 156
              end
              inherited quer_tallas: TQuery
                Top = 195
              end
              inherited quer_colores: TQuery
                Top = 195
              end
            end
          end
          object PCPFrame4: TPCPFrame
            Tag = 351
            Left = 466
            Top = 0
            Width = 330
            Height = 351
            Align = alRight
            BorderWidth = 2
            Constraints.MinHeight = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Caption = 'Distribución de paquetes'
            Titulo_Color = 16244694
            Boton_Visible = False
            BorderWidthIn = 4
            FlatBorder = True
            inline fram_dist_paquetes: Tffra_prod_orde_dist_paquetes
              Tag = -1
              Left = 7
              Top = 26
              Width = 316
              Height = 318
              Align = alClient
              TabOrder = 1
              inherited TBXDock1: TTBXDock
                Width = 316
                inherited barr_opciones: TTBXToolbar
                  Visible = False
                end
              end
              inherited Panel4: TPanel
                Width = 316
                Height = 267
                inherited grid: TSCLColumnGrid
                  Width = 312
                  Height = 249
                  GridLineColor = 14467501
                  ScrollWidth = 16
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
                      ComboItems.Strings = ()
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edNormal
                      Filter.Strings = ()
                      FilterCaseSensitive = False
                      Fixed = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = 'No.'
                      HeaderAlignment = taLeftJustify
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -11
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = []
                      MinSize = 0
                      MaxSize = 0
                      Name = 'NUME_PAQUETE'
                      Password = False
                      PrintBorders = []
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 35
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
                      ComboItems.Strings = ()
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edNormal
                      Filter.Strings = ()
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
                      Name = 'CONS_REFE_COLOR'
                      Password = False
                      PrintBorders = []
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
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
                      ComboItems.Strings = ()
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edNormal
                      Filter.Strings = ()
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
                      Name = 'CONS_GRUP_TALL_DETALLE'
                      Password = False
                      PrintBorders = []
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
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
                      ComboItems.Strings = ()
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edComboList
                      Filter.Strings = ()
                      FilterCaseSensitive = False
                      Fixed = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = 'Color'
                      HeaderAlignment = taLeftJustify
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -11
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = []
                      MinSize = 0
                      MaxSize = 0
                      Name = 'NOMB_COLOR'
                      Password = False
                      PrintBorders = []
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 130
                    end
                    item
                      AutoMinSize = 0
                      AutoMaxSize = 0
                      Alignment = taCenter
                      Borders = []
                      BorderPen.Color = clSilver
                      CheckFalse = 'N'
                      CheckTrue = 'Y'
                      Color = clWindow
                      ColumnPopupType = cpFixedCellsRClick
                      ComboItems.Strings = ()
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edComboList
                      Filter.Strings = ()
                      FilterCaseSensitive = False
                      Fixed = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = 'Talla'
                      HeaderAlignment = taLeftJustify
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -11
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = []
                      MinSize = 0
                      MaxSize = 0
                      Name = 'TALLA'
                      Password = False
                      PrintBorders = []
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 61
                    end
                    item
                      AutoMinSize = 0
                      AutoMaxSize = 0
                      Alignment = taRightJustify
                      Borders = []
                      BorderPen.Color = clSilver
                      CheckFalse = 'N'
                      CheckTrue = 'Y'
                      Color = clWindow
                      ColumnPopupType = cpFixedCellsRClick
                      ComboItems.Strings = ()
                      DropDownCount = 8
                      EditLength = 0
                      Editor = edPositiveNumeric
                      Filter.Strings = ()
                      FilterCaseSensitive = False
                      Fixed = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Header = 'Unidades'
                      HeaderAlignment = taLeftJustify
                      HeaderFont.Charset = DEFAULT_CHARSET
                      HeaderFont.Color = clWindowText
                      HeaderFont.Height = -11
                      HeaderFont.Name = 'Tahoma'
                      HeaderFont.Style = []
                      MinSize = 0
                      MaxSize = 0
                      Name = 'CANT_UNIDADES'
                      Password = False
                      PrintBorders = []
                      PrintColor = clWhite
                      PrintFont.Charset = DEFAULT_CHARSET
                      PrintFont.Color = clWindowText
                      PrintFont.Height = -11
                      PrintFont.Name = 'Tahoma'
                      PrintFont.Style = []
                      ReadOnly = True
                      ShowBands = False
                      SortStyle = ssAutomatic
                      SpinMax = 0
                      SpinMin = 0
                      SpinStep = 1
                      Tag = 0
                      Width = 59
                    end>
                end
                inherited pane_totales: TPanel
                  Top = 251
                  Width = 312
                  inherited SCLDBLabel2: TSCLDBLabel
                    FontActive.Name = 'Tahoma'
                  end
                  inherited SCLDBLabel3: TSCLDBLabel
                    FontActive.Name = 'Tahoma'
                  end
                  inherited boto_ayuda: TTBXButtonSCL
                    Left = 285
                  end
                  inherited boto_warning: TTBXButtonSCL
                    Left = 260
                  end
                  inherited edit_tota_paquetes: TdxCurrencyEdit
                    StoredValues = 1
                  end
                  inherited edit_tota_unidades: TdxCurrencyEdit
                    StoredValues = 1
                  end
                end
              end
              inherited pane_seleccion: TPanel
                Width = 316
                inherited SCLDBLabel1: TSCLDBLabel
                  FontActive.Name = 'Tahoma'
                end
              end
              inherited acti_frame: TActionList
                OnUpdate = fram_dist_paquetesacti_frameUpdate
                inherited acti_guardar: TAction
                  Enabled = False
                end
                inherited acti_cancelar: TAction
                  Enabled = False
                end
                inherited acti_insertar: TAction
                  Enabled = False
                end
                inherited acti_adicionar: TAction
                  Enabled = False
                end
                inherited acti_eliminar: TAction
                  Enabled = False
                end
                inherited acti_move_arriba: TAction
                  Enabled = False
                end
                inherited acti_move_abajo: TAction
                  Enabled = False
                end
                inherited acti_paqu_automatico: TAction
                  Enabled = False
                end
                inherited acti_impr_tiquetes: TAction
                  Enabled = False
                end
              end
            end
          end
        end
        object dxTabSheet5: TSCLTabSheet
          Color = 16578290
          ImageIndex = 76
          Caption = 'Listado de operaciones'
          object PCPFrame5: TPCPFrame
            Tag = 190
            Left = 0
            Top = 0
            Width = 1008
            Height = 190
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
            Caption = 'Operaciones de corte'
            Titulo_Color = 16244694
            BorderWidthIn = 4
            FlatBorder = True
            object grid_oper_corte: TSCLDBGrid
              Left = 7
              Top = 26
              Width = 994
              Height = 157
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              ArrowsColor = clHighlight
              AutoSearchColor = 4227327
              AutoSearchTextColor = clBlack
              BandFont.Charset = DEFAULT_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -11
              BandFont.Name = 'MS Sans Serif'
              BandFont.Style = []
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
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'MS Sans Serif'
              PreviewFont.Style = []
            end
          end
          object PCPFrame6: TPCPFrame
            Tag = 166
            Left = 0
            Top = 190
            Width = 1008
            Height = 166
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
            Caption = 'Operaciones de costura y terminación'
            Titulo_Color = 16244694
            Boton_Visible = False
            FlatBorder = True
            object grid_oper_costura: TSCLDBGrid
              Left = 3
              Top = 22
              Width = 1002
              Height = 141
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'SECU_OPERACION'
              ShowGroupPanel = True
              ShowSummaryFooter = True
              SummaryGroups = <
                item
                  DefaultGroup = True
                  SummaryItems = <
                    item
                      ColumnName = 'grid_oper_costuraSECU_OPERACION'
                      SummaryField = 'SECU_OPERACION'
                      SummaryFormat = ',0'
                      SummaryType = cstCount
                    end
                    item
                      ColumnName = 'grid_oper_costuraTIEMPO'
                      SummaryField = 'TIEMPO'
                      SummaryFormat = ',0.00'
                      SummaryType = cstSum
                    end>
                  Name = 'grid_oper_costuraSummaryGroup1'
                end>
              SummarySeparator = ', '
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              ArrowsColor = clHighlight
              AutoSearchColor = 4227327
              AutoSearchTextColor = clBlack
              BandFont.Charset = DEFAULT_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -11
              BandFont.Name = 'MS Sans Serif'
              BandFont.Style = []
              DataSource = data_oper_costura
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
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'MS Sans Serif'
              PreviewFont.Style = []
              ShowRowFooter = True
              object grid_oper_costuraSECU_OPERACION: TdxDBGridMaskColumn
                Width = 37
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SECU_OPERACION'
                SummaryFooterType = cstCount
                SummaryFooterFormat = ',0'
              end
              object grid_oper_costuraNOMB_PROCESO: TdxDBGridMaskColumn
                Width = 105
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOMB_PROCESO'
              end
              object grid_oper_costuraNOMB_COMP_GRUPO: TdxDBGridMaskColumn
                Width = 124
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOMB_COMP_GRUPO'
              end
              object grid_oper_costuraNOMB_OPER_COST_TIPO: TdxDBGridMaskColumn
                Width = 130
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOMB_OPER_COST_TIPO'
              end
              object grid_oper_costuraCODI_OPER_COSTURA: TdxDBGridMaskColumn
                Width = 117
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CODI_OPER_COSTURA'
              end
              object grid_oper_costuraNOMB_OPER_COSTURA: TdxDBGridMaskColumn
                Width = 200
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOMB_OPER_COSTURA'
              end
              object grid_oper_costuraFRECUENCIA: TdxDBGridMaskColumn
                Width = 56
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FRECUENCIA'
              end
              object grid_oper_costuraCODI_RECU_FAMILIA: TdxDBGridMaskColumn
                Width = 86
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CODI_RECU_FAMILIA'
              end
              object grid_oper_costuraTIEMPO: TdxDBGridMaskColumn
                Width = 87
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TIEMPO'
                SummaryFooterType = cstSum
                SummaryFooterField = 'TIEMPO'
                SummaryFooterFormat = ',0.00'
              end
            end
          end
        end
        object dxTabSheet6: TSCLTabSheet
          Color = 16578290
          ImageIndex = 48
          Caption = 'Historial de anotaciones'
        end
      end
    end
  end
  inherited padr_fram_informacion: TPCPFrame
    TabOrder = 7
    inherited padr_comb_nume_lote: TPCPLookUpComboEdit
      DataField = 'cons_prod_lote'
      DataSource = myData_Ventana
      Enabled = False
      OnChange = padr_comb_nume_loteChange
    end
    inherited comb_nume_orden: TPCPLookUpComboEdit
      DataField = 'cons_prod_orden'
      DataSource = myData_Ventana
      OnChange = comb_nume_ordenChange
    end
  end
  object TBXDock1: TTBXDock [10]
    Left = 0
    Top = 137
    Width = 804
    Height = 26
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      BorderStyle = bsNone
      DockMode = dmCannotFloatOrChangeDocks
      DragHandleStyle = dhNone
      FullSize = True
      TabOrder = 0
      object TBXItem6: TTBXItem
        Action = acti_guardar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imagenesPCP
      end
      object TBXItem5: TTBXItem
        Action = acti_cancelar
        DisplayMode = nbdmImageAndText
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object TBXItem7: TTBXItem
        Action = acti_actualizar
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object TBXItem9: TTBXItem
        Action = acti_llam_oper_lote
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object TBXItem1: TTBXItem
        Action = acti_proc_pasa_uno
        Images = _fMDI.imagenesPCP
      end
      object TBXItem4: TTBXItem
        Action = acti_proc_pasa_todos
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object TBXItem3: TTBXItem
        Action = acti_proc_elim_uno
        Images = _fMDI.imagenesPCP
      end
      object TBXItem2: TTBXItem
        Action = acti_proc_elim_todos
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem5: TTBXSeparatorItem
      end
      object TBXItem8: TTBXItem
        Action = acti_programar
        Images = _fMDI.imagenesPCP
      end
      object TBXItem10: TTBXItem
        Action = acti_desprogramar
        Images = _fMDI.imagenesPCP
      end
      object TBXSeparatorItem6: TTBXSeparatorItem
      end
      object TBControlItem1: TTBControlItem
        Control = edit_cuad_por_dia
      end
      object TBXItem12: TTBXItem
        Action = acti_ampliar
        Images = _fMDI.imagenesPCP
      end
      object TBXItem11: TTBXItem
        Action = acti_reducir
        Images = _fMDI.imagenesPCP
      end
      object edit_cuad_por_dia: TdxSpinEdit
        Left = 355
        Top = 0
        Width = 41
        TabOrder = 0
        Visible = False
        Alignment = taRightJustify
        StyleController = padr_estilo
        MaxValue = 10
        MinValue = 1
        Value = 5
        StoredValues = 49
      end
    end
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
    end
    inherited acti_padr_cancelar_2: TAction
      Visible = False
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Visible = False
    end
    inherited padr_acti_duplicar: TAction
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_expo_xls: TAction
      Visible = False
    end
    inherited padr_acti_expo_HTML: TAction
      Visible = False
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      Visible = False
    end
  end
  object acci_ventana: TActionList
    Images = _fMDI.imagenesPCP
    OnUpdate = acci_ventanaUpdate
    Left = 784
    Top = 14
    object acti_actu_cons_fechas: TAction
      Hint = 'Actualizar consulta por fechas'
      OnExecute = doActualizarFechas
    end
    object acti_proc_pasa_uno: TAction
      Category = 'por_procesos'
      Caption = 'Crear un nuevo grupo con las operaciones seleccionadas'
      ImageIndex = 60
      OnExecute = doProcesosPasarUno
    end
    object acti_proc_pasa_todos: TAction
      Category = 'por_procesos'
      Caption = 'Crear los grupos por defecto (agrupando por proceso)'
      ImageIndex = 59
      OnExecute = acti_proc_pasa_todosExecute
    end
    object acti_proc_elim_uno: TAction
      Category = 'por_procesos'
      Caption = 'Borrar los grupos seleccionados'
      ImageIndex = 57
      OnExecute = doLimpiarGruposSeleccion
    end
    object acti_proc_elim_todos: TAction
      Category = 'por_procesos'
      Caption = 'Limpiar los grupos creados'
      ImageIndex = 58
      OnExecute = doLimpiarGruposCreados
    end
    object acti_cancelar: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      ImageIndex = 8
      ShortCut = 16449
      OnExecute = acti_cancelarExecute
      DataSource = myData_guardar
    end
    object acti_guardar: TDataSetPost
      Category = 'Dataset'
      Caption = 'Guardar'
      ImageIndex = 5
      ShortCut = 16455
      OnExecute = acti_guardarExecute
      DataSource = myData_guardar
    end
    object acti_actualizar: TAction
      Caption = 'Actualizar todos los indicadores'
      ImageIndex = 4
      ShortCut = 116
    end
    object acti_llam_oper_lote: TAction
      Category = 'por operaciones'
      Caption = 'Llamar las operaciones del lote'
      ImageIndex = 47
      OnExecute = acti_llam_oper_loteExecute
    end
    object acti_programar: TAction
      Category = 'pmp'
      Caption = 'Programar el lote de producción'
      ImageIndex = 84
      OnExecute = acti_programarExecute
    end
    object acti_desprogramar: TAction
      Category = 'pmp'
      Caption = 'Desprogramar el lote de producción'
      ImageIndex = 85
      OnExecute = acti_desprogramarExecute
    end
    object acti_ampliar: TAction
      Category = 'pmp'
      Caption = 'Ampliar'
      ImageIndex = 87
      OnExecute = acti_ampliarExecute
    end
    object acti_reducir: TAction
      Category = 'pmp'
      Caption = 'Reducir'
      ImageIndex = 86
      OnExecute = acti_reducirExecute
    end
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_prod_orden'
        DataType = ftInteger
      end
      item
        Name = 'cons_prod_lote'
        DataType = ftInteger
      end
      item
        Name = 'cons_empresa'
        DataType = ftInteger
      end
      item
        Name = 'cons_planta'
        DataType = ftInteger
      end
      item
        Name = 'minu_contratados'
        DataType = ftInteger
      end>
    AfterInsert = myTabla_ventanaAfterInsert
    OnCalcFields = myTabla_ventanaCalcFields
    Left = 624
    Top = 130
    object myTabla_ventanacons_prod_orden: TIntegerField
      FieldName = 'cons_prod_orden'
    end
    object myTabla_ventanacons_prod_lote: TIntegerField
      FieldName = 'cons_prod_lote'
    end
    object myTabla_ventanaesta_programado: TIntegerField
      FieldName = 'esta_programado'
    end
    object myTabla_ventanafech_programacion: TDateField
      FieldName = 'fech_programacion'
    end
    object myTabla_ventanausua_programacion: TStringField
      FieldName = 'usua_programacion'
    end
    object myTabla_ventanafech_ejec_inicial: TDateField
      FieldName = 'fech_ejec_inicial'
    end
    object myTabla_ventanafrac_ejec_inicial: TFloatField
      FieldName = 'frac_ejec_inicial'
    end
    object myTabla_ventanafech_ejec_final: TDateField
      FieldName = 'fech_ejec_final'
    end
    object myTabla_ventanaes_movil: TIntegerField
      FieldName = 'es_movil'
    end
    object myTabla_ventanacons_empresa: TIntegerField
      FieldName = 'cons_empresa'
    end
    object myTabla_ventanacons_planta: TIntegerField
      FieldName = 'cons_planta'
    end
    object myTabla_ventanacons_plan_linea: TIntegerField
      FieldName = 'cons_plan_linea'
    end
    object myTabla_ventanacons_turno: TIntegerField
      FieldName = 'cons_turno'
    end
    object myTabla_ventanaminu_contratados: TIntegerField
      FieldName = 'minu_contratados'
    end
    object myTabla_ventanaminu_descanso: TIntegerField
      FieldName = 'minu_descanso'
    end
    object myTabla_ventanaminu_requeridos: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'minu_requeridos'
      Calculated = True
    end
    object myTabla_ventanatiem_unidad: TFloatField
      FieldName = 'tiem_unidad'
    end
    object myTabla_ventanaunid_lote: TIntegerField
      FieldName = 'unid_lote'
    end
    object myTabla_ventanapers_disponible: TIntegerField
      FieldName = 'pers_disponible'
    end
    object myTabla_ventanaporc_presencia: TFloatField
      FieldName = 'porc_presencia'
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00 %'
    end
    object myTabla_ventanaporc_aprovechamiento: TFloatField
      FieldName = 'porc_aprovechamiento'
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00 %'
    end
    object myTabla_ventanaporc_eficiencia: TFloatField
      FieldName = 'porc_eficiencia'
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00 %'
    end
    object myTabla_ventanaporc_balanceo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'porc_balanceo'
      Calculated = True
    end
    object myTabla_ventanaminu_disponibles: TFloatField
      FieldKind = fkCalculated
      FieldName = 'minu_disponibles'
      Calculated = True
    end
    object myTabla_ventanatiem_medio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'tiem_medio'
      Calculated = True
    end
    object myTabla_ventanaprod_hora: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'prod_hora'
      Calculated = True
    end
    object myTabla_ventanapaqu_por_puesto: TIntegerField
      FieldName = 'paqu_por_puesto'
    end
    object myTabla_ventanatama_paquete: TIntegerField
      FieldName = 'tama_paquete'
    end
    object myTabla_ventanapues_simultaneos: TIntegerField
      FieldName = 'pues_simultaneos'
    end
    object myTabla_ventanatiem_unid_Real: TFloatField
      FieldKind = fkCalculated
      FieldName = 'tiem_unid_Real'
      Calculated = True
    end
    object myTabla_ventanareco_prim_paqu_minutos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'reco_prim_paqu_minutos'
      Calculated = True
    end
    object myTabla_ventanareco_prim_paqu_dias: TFloatField
      FieldKind = fkCalculated
      FieldName = 'reco_prim_paqu_dias'
      Calculated = True
    end
    object myTabla_ventanareco_ulti_paqu_minutos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'reco_ulti_paqu_minutos'
      Calculated = True
    end
    object myTabla_ventanareco_ulti_paqu_dias: TFloatField
      FieldKind = fkCalculated
      FieldName = 'reco_ulti_paqu_dias'
      Calculated = True
    end
    object myTabla_ventanareco_tota_dias: TFloatField
      FieldKind = fkCalculated
      FieldName = 'reco_tota_dias'
      Calculated = True
    end
    object myTabla_ventanareco_tota_minutos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'reco_tota_minutos'
      Calculated = True
    end
  end
  object quer_empresas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_empresa, nomb_empresa'
      'from GLO_EMPRESAS'
      'Order by nomb_empresa')
    Left = 904
    Top = 6
    object quer_empresasCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
    end
    object quer_empresasNOMB_EMPRESA: TStringField
      FieldName = 'NOMB_EMPRESA'
      Size = 60
    end
  end
  object quer_plantas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_empresas
    SQL.Strings = (
      'Select cons_planta, nomb_planta'
      'from GLO_PLANTAS'
      'Where cons_empresa = :cons_empresa'
      'order by nomb_planta')
    Left = 904
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_EMPRESA'
        ParamType = ptUnknown
      end>
    object quer_plantasCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
    end
    object quer_plantasNOMB_PLANTA: TStringField
      FieldName = 'NOMB_PLANTA'
      Size = 60
    end
  end
  object data_empresas: TDataSource
    DataSet = quer_empresas
    Left = 937
    Top = 7
  end
  object data_plantas: TDataSource
    DataSet = quer_plantas
    Left = 936
    Top = 40
  end
  object quer_plan_lineas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_plantas
    SQL.Strings = (
      'Select CONS_PLAN_LINEA, CONS_LINEA, CODI_LINEA, NOMB_LINEA'
      'from VIS_GLO_PLAN_LINEAS'
      'WHERE CONS_PLANTA = :CONS_PLANTA'
      'ORDER BY NOMB_LINEA')
    Left = 904
    Top = 78
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PLANTA'
        ParamType = ptUnknown
      end>
    object quer_plan_lineasCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLAN_LINEAS.CONS_PLAN_LINEA'
    end
    object quer_plan_lineasCONS_LINEA: TIntegerField
      FieldName = 'CONS_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLAN_LINEAS.CONS_LINEA'
    end
    object quer_plan_lineasCODI_LINEA: TStringField
      FieldName = 'CODI_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLAN_LINEAS.CODI_LINEA'
      Size = 12
    end
    object quer_plan_lineasNOMB_LINEA: TStringField
      FieldName = 'NOMB_LINEA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_PLAN_LINEAS.NOMB_LINEA'
      Size = 60
    end
  end
  object myData_Ventana: TDataSource
    DataSet = myTabla_ventana
    OnDataChange = myData_VentanaDataChange
    Left = 664
    Top = 128
  end
  object quer_cale_linea: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select fecha'
      'from CON_PCP_PLAN_DIAS_NO_LABO_LINE'
      '(:PE_FECH_INICIAL, :PE_FECH_FINAL, :PE_CONS_EMPRESA,'
      ':PE_CONS_PLANTA, :PE_CONS_LINEA)'
      'Order by fecha')
    Left = 1232
    Top = 70
    ParamData = <
      item
        DataType = ftDate
        Name = 'PE_FECH_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_FECH_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_PLANTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_CONS_LINEA'
        ParamType = ptInput
      end>
  end
  object quer_oper_costura: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_PCP_PROD_LIST_OPER_COSTURA'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'ORDER BY SECU_OPERACION')
    Left = 888
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptInput
      end>
    object quer_oper_costuraSECU_OPERACION: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'SECU_OPERACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.SECU_OPERACION'
    end
    object quer_oper_costuraNOMB_PROCESO: TStringField
      DisplayLabel = 'Proceso'
      DisplayWidth = 60
      FieldName = 'NOMB_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.NOMB_PROCESO'
      Size = 60
    end
    object quer_oper_costuraNOMB_COMP_GRUPO: TStringField
      DisplayLabel = 'Componente'
      FieldName = 'NOMB_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.NOMB_COMP_GRUPO'
      Size = 60
    end
    object quer_oper_costuraNOMB_OPER_COST_TIPO: TStringField
      DisplayLabel = 'Tipo operación'
      FieldName = 'NOMB_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.NOMB_OPER_COST_TIPO'
      Size = 60
    end
    object quer_oper_costuraCODI_OPER_COSTURA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.CODI_OPER_COSTURA'
      Size = 12
    end
    object quer_oper_costuraNOMB_OPER_COSTURA: TStringField
      DisplayLabel = 'Operación'
      FieldName = 'NOMB_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.NOMB_OPER_COSTURA'
      Size = 30
    end
    object quer_oper_costuraFRECUENCIA: TFloatField
      DisplayLabel = 'Frec.'
      FieldName = 'FRECUENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.FRECUENCIA'
    end
    object quer_oper_costuraCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Máquina'
      FieldName = 'CODI_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.CODI_RECU_FAMILIA'
      Size = 12
    end
    object quer_oper_costuraTIEMPO: TFloatField
      DisplayLabel = 'Tiempo'
      FieldName = 'TIEMPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.TIEMPO'
      DisplayFormat = ',0.00'
    end
  end
  object data_oper_costura: TDataSource
    DataSet = quer_oper_costura
    Left = 920
    Top = 272
  end
  object quer_bala_oper_todo: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT '
      'SECU_OPERACION, NOMB_OPER_COSTURA, TIEMPO,'
      'NOMB_PROCESO, NOMB_OPER_COST_TIPO, NOMB_COMP_GRUPO'
      'FROM VIS_PCP_PROD_LIST_OPER_COSTURA'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'ORDER BY SECU_OPERACION')
    Left = 888
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptInput
      end>
  end
  object quer_unid_lote: TQuery
    AfterOpen = quer_unid_loteAfterOpen
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Select SUM(CANT_UNIDADES) AS CANT_UNIDADES'
      'FROM PCP_PROD_LOTE_UNIDADES'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE')
    Left = 1170
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptInput
      end>
  end
  object quer_tiem_operaciones: TQuery
    AfterOpen = quer_tiem_operacionesAfterOpen
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'SELECT TIEMPO  FROM '
      'CON_PCP_PROD_TIEM_LOTE(:CONS_PROD_LOTE)')
    Left = 1198
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_LOTE'
        ParamType = ptUnknown
      end>
  end
  object quer_turnos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_empresas
    SQL.Strings = (
      'Select cons_turno, codi_turno'
      'from GLO_TURNOS'
      'Order by codi_turno')
    Left = 976
    Top = 6
  end
  object data_turnos: TDataSource
    DataSet = quer_turnos
    Left = 1008
    Top = 6
  end
  object quer_oper_disponibles: TQuery
    AfterOpen = quer_oper_disponiblesAfterOpen
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Select nume_operarios'
      'FROM CON_GLO_PERS_NUME_OPERARIOS'
      '("NOW", :CONS_EMPRESA, :CONS_PLANTA, '
      ':CONS_PLAN_LINEA,  NULL,'
      ':CONS_TURNO)')
    Left = 1138
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PLANTA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CONS_PLAN_LINEA'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_TURNO'
        ParamType = ptInput
      end>
  end
  object data_plan_lineas: TDataSource
    DataSet = quer_plan_lineas
    Left = 936
    Top = 77
  end
  object quer_sele_programacion: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Select *'
      'from VIS_PCP_PROG_PRODUCCION'
      'Where cons_prod_lote = :cons_prod_lote')
    Left = 628
    Top = 297
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end>
  end
  object quer_sele_operaciones: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_sele_programacion
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_PCP_PROG_PROD_OPERACIONES'
      'WHERE CONS_PROG_PRODUCCION = :CONS_PROG_PRODUCCION'
      'ORDER BY SECU_OPERACION')
    Left = 740
    Top = 393
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROG_PRODUCCION'
        ParamType = ptUnknown
      end>
  end
  object data_sele_programacion: TDataSource
    DataSet = quer_sele_programacion
    Left = 660
    Top = 297
  end
  object myTabla_guardar: TRxMemoryData
    FieldDefs = <
      item
        Name = 'myField'
        DataType = ftInteger
      end>
    BeforePost = myTabla_guardarBeforePost
    BeforeCancel = myTabla_guardarBeforeCancel
    Left = 21
    Top = 545
  end
  object myData_guardar: TDataSource
    DataSet = myTabla_guardar
    OnStateChange = myData_guardarStateChange
    Left = 53
    Top = 545
  end
  object quer_sele_cons_programacion: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'SELECT CONS_PROG_PRODUCCION'
      'FROM PCP_PROG_PRODUCCION'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE')
    Left = 771
    Top = 329
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_LOTE'
        ParamType = ptUnknown
      end>
  end
  object quer_inse_cons_programacion: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'INSERT INTO '
      'PCP_PROG_PRODUCCION'
      '(CONS_PROD_LOTE)'
      'VALUES'
      '(:CONS_PROD_LOTE)')
    Left = 771
    Top = 361
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_LOTE'
        ParamType = ptUnknown
      end>
  end
  object spro_upda_prog_produccion: TStoredProc
    DatabaseName = 'data_base_pcp'
    StoredProcName = 'PCP_PROG_PRODUCCION_U'
    Left = 805
    Top = 329
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROG_PRODUCCION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ESTA_PROGRAMADO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'FECH_PROGRAMACION'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUA_PROGRAMACION'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'FECH_EJEC_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FRAC_EJEC_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'FECH_EJEC_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ES_MOVIL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PLANTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PLAN_LINEA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_TURNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPO_AGRUPACION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPO_BALANCEO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIEM_UNIDAD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UNID_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MINU_CONTRATADOS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MINU_DESCANSO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PERS_DISPONIBLE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PORC_PRESENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PORC_APROVECHAMIENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PORC_EFICIENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIEM_MEDIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PROD_DIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PROD_HORA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PAQU_POR_PUESTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TAMA_PAQUETE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PUES_SIMULTANEOS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIEM_UNID_REAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECO_PRIM_PAQU_MINUTOS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECO_PRIM_PAQU_DIAS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECO_ULTI_PAQU_MINUTOS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECO_ULTI_PAQU_DIAS'
        ParamType = ptInput
      end>
  end
  object quer_elim_operaciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'DELETE FROM '
      'PCP_PROG_PROD_OPERACIONES'
      'WHERE CONS_PROG_PRODUCCION = :CONS_PROG_PRODUCCION')
    Left = 772
    Top = 389
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROG_PRODUCCION'
        ParamType = ptUnknown
      end>
  end
  object quer_inse_operaciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'INSERT INTO PCP_PROG_PROD_OPERACIONES('
      'CONS_PROG_PRODUCCION, SECU_OPERACION,'
      'NOMB_OPERACION, PORC_EFIC_FINAL,'
      'PORC_EFIC_INICIAL, SECU_GRUP_PROGRAMACION, '
      'TIEM_OPERACION)'
      'VALUES (:CONS_PROG_PRODUCCION, :SECU_OPERACION, :NOMB_OPERACION,'
      ':PORC_EFIC_FINAL, :PORC_EFIC_INICIAL,'
      ':SECU_GRUP_PROGRAMACION, '
      ':TIEM_OPERACION)')
    Left = 804
    Top = 389
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROG_PRODUCCION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SECU_OPERACION'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOMB_OPERACION'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PORC_EFIC_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PORC_EFIC_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SECU_GRUP_PROGRAMACION'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIEM_OPERACION'
        ParamType = ptInput
      end>
  end
  object quer_dele_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'DELETE FROM'
      'PCP_PROG_PROD_GRUPOS'
      'WHERE CONS_PROG_PRODUCCION = :CONS_PROG_PRODUCCION')
    Left = 772
    Top = 421
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROG_PRODUCCION'
        ParamType = ptUnknown
      end>
  end
  object quer_inse_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'INSERT INTO PCP_PROG_PROD_GRUPOS(CONS_PROG_PRODUCCION,'
      'SECU_GRUP_PROGRAMACION,'
      'NOMB_PROG_PROD_GRUPO,'
      'NIVEL, TIEM_NIVEL,'
      'NUME_PUESTOS, OPER_REALES,'
      'TIEM_MEDIO, RECO_PRIM_PAQU_DIAS,'
      'RECO_ULTI_PAQU_DIAS,RECO_TOTA_DIAS)'
      'VALUES (:CONS_PROG_PRODUCCION, :SECU_GRUP_PROGRAMACION,'
      ':NOMB_PROG_PROD_GRUPO,'
      ':NIVEL, :TIEM_NIVEL, :NUME_PUESTOS,'
      ':OPER_REALES, :TIEM_MEDIO,'
      ':RECO_PRIM_PAQU_DIAS, :RECO_ULTI_PAQU_DIAS,'
      ':RECO_TOTA_DIAS)')
    Left = 804
    Top = 419
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROG_PRODUCCION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SECU_GRUP_PROGRAMACION'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOMB_PROG_PROD_GRUPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NIVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIEM_NIVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NUME_PUESTOS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OPER_REALES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIEM_MEDIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECO_PRIM_PAQU_DIAS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECO_ULTI_PAQU_DIAS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECO_TOTA_DIAS'
        ParamType = ptInput
      end>
  end
  object quer_sele_grupos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_sele_programacion
    SQL.Strings = (
      'SELECT SECU_GRUP_PROGRAMACION, NOMB_PROG_PROD_GRUPO,'
      'NIVEL, TIEM_NIVEL, NUME_PUESTOS, OPER_REALES,'
      'TIEM_MEDIO, RECO_PRIM_PAQU_DIAS,'
      'RECO_ULTI_PAQU_DIAS, RECO_TOTA_DIAS'
      'FROM PCP_PROG_PROD_GRUPOS'
      'WHERE CONS_PROG_PRODUCCION = :CONS_PROG_PRODUCCION'
      'ORDER BY SECU_GRUP_PROGRAMACION')
    Left = 740
    Top = 425
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROG_PRODUCCION'
        ParamType = ptInput
      end>
  end
  object quer_programacion: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_PCP_PROG_PRODUCCION'
      'WHERE ESTA_PROGRAMADO = 1'
      'AND FECH_EJEC_INICIAL BETWEEN '
      ':FECH_INICIAL AND :FECH_FINAL'
      'AND CONS_EMPRESA = :CONS_EMPRESA'
      'AND CONS_PLANTA = :CONS_PLANTA'
      'AND CONS_PLAN_LINEA = :CONS_PLAN_LINEA'
      'ORDER BY FECH_EJEC_INICIAL')
    Left = 485
    Top = 529
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECH_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECH_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PLANTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_PLAN_LINEA'
        ParamType = ptInput
      end>
  end
end

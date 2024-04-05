inherited fwn1_prod_fabr_impr_tiquetes: Tfwn1_prod_fabr_impr_tiquetes
  Left = 245
  Top = 111
  HelpContext = 220500
  ActiveControl = JvWizardWelcomePage1
  Caption = 'Asistente para la impresión de tiquetes de fabricación'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_info: TPCPFrame
    Visible = False
  end
  inherited pane_wizard: TPanel
    inherited padr_wizard: TJvWizard
      ActivePage = JvWizardWelcomePage1
      OnFinishButtonClick = padr_wizardFinishButtonClick
      object JvWizardWelcomePage1: TJvWizardWelcomePage [0]
        Header.Height = 30
        Header.Title.Color = clNone
        Header.Title.Text = 'Bienvenido'
        Header.Title.Anchors = [akLeft, akTop, akRight]
        Header.Title.Font.Charset = DEFAULT_CHARSET
        Header.Title.Font.Color = clWindowText
        Header.Title.Font.Height = -16
        Header.Title.Font.Name = 'Tahoma'
        Header.Title.Font.Style = [fsBold]
        Header.Subtitle.Color = clNone
        Header.Subtitle.Visible = False
        Header.Subtitle.Text = 'Subtitle'
        Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
        Header.Subtitle.Font.Charset = DEFAULT_CHARSET
        Header.Subtitle.Font.Color = clWindowText
        Header.Subtitle.Font.Height = -11
        Header.Subtitle.Font.Name = 'Tahoma'
        Header.Subtitle.Font.Style = []
        Color = clBtnFace
        WaterMark.Visible = False
        object Label7: TLabel
          Left = 8
          Top = 40
          Width = 521
          Height = 113
          AutoSize = False
          Caption = 
            'Bienvenido al Asistente de PCP.  '#13#10#13#10'Este asistente lo guiará en' +
            ' el proceso de impresión de los tiquetes de control con ayuda de' +
            ' la aplicación de filtros y selecciones fáciles para usted.'#13#10#13#10'P' +
            'ara iniciar el asistente, pulse el botón "&Siguiente".'
          WordWrap = True
        end
      end
      object JvWizardInteriorPage1: TJvWizardInteriorPage [1]
        Header.Height = 30
        Header.Title.Color = clNone
        Header.Title.Text = 'Selección'
        Header.Title.Anchors = [akLeft, akTop, akRight]
        Header.Title.Font.Charset = DEFAULT_CHARSET
        Header.Title.Font.Color = clWindowText
        Header.Title.Font.Height = -16
        Header.Title.Font.Name = 'Tahoma'
        Header.Title.Font.Style = [fsBold]
        Header.Subtitle.Color = clNone
        Header.Subtitle.Visible = False
        Header.Subtitle.Text = 'Subtitle'
        Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
        Header.Subtitle.Font.Charset = DEFAULT_CHARSET
        Header.Subtitle.Font.Color = clWindowText
        Header.Subtitle.Font.Height = -11
        Header.Subtitle.Font.Name = 'Tahoma'
        Header.Subtitle.Font.Style = []
        object SCLDBLabel1: TSCLDBLabel
          Left = 24
          Top = 64
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Tipo de distribución:'
          Transparent = True
          ColorRequerido = clRed
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel4: TSCLDBLabel
          Left = 24
          Top = 36
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Número de orden:'
          Transparent = True
          ColorRequerido = clRed
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel5: TSCLDBLabel
          Left = 272
          Top = 36
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Lote:'
          Transparent = True
          ColorRequerido = clRed
          ColorNoRequerido = clWindowText
        end
        object chec_lote_completo: TTBXRadioButton
          Left = 140
          Top = 89
          Width = 100
          Height = 17
          Caption = 'El lote completo'
          Checked = True
          ParentColor = True
          TabOrder = 3
          OnChange = chec_seleccionarChange
        end
        object pane_seleccion: TPCPFrame
          Tag = 217
          Left = 6
          Top = 128
          Width = 531
          Height = 217
          BorderWidth = 2
          Constraints.MinHeight = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Visible = False
          Titulo_Color = 16244694
          TipoFrame = tfNinguno
          FlatBorder = True
          object chec_paquetes: TdxCheckEdit
            Left = 3
            Top = 8
            Width = 73
            Style.ButtonStyle = btsFlat
            TabOrder = 1
            Caption = 'Paquetes'
            OnChange = chec_paquetesChange
          end
          object chec_operaciones: TdxCheckEdit
            Left = 77
            Top = 8
            Width = 289
            Style.ButtonStyle = btsFlat
            TabOrder = 2
            Caption = 'Operaciones'
            OnChange = chec_operacionesChange
          end
          object chec_recursos: TdxCheckEdit
            Left = 462
            Top = 8
            Width = 67
            Style.ButtonStyle = btsFlat
            TabOrder = 3
            Caption = 'Recursos'
            OnChange = chec_recursosChange
          end
          object grid_paquetes: TdxDBGrid
            Left = 6
            Top = 31
            Width = 62
            Height = 175
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'NUME_PAQUETE'
            SummaryGroups = <>
            SummarySeparator = ', '
            Enabled = False
            TabOrder = 4
            DataSource = data_paquetes
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
            object grid_paquetesNUME_PAQUETE: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NUME_PAQUETE'
            end
            object grid_paquetesCONS_REFE_COLOR: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_REFE_COLOR'
            end
            object grid_paquetesCONS_GRUP_TALL_DETALLE: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_GRUP_TALL_DETALLE'
            end
            object grid_paquetesSECU_COLOR: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SECU_COLOR'
            end
            object grid_paquetesNOMB_COLOR: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_COLOR'
            end
            object grid_paquetesSECU_TALLA: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SECU_TALLA'
            end
            object grid_paquetesCANT_UNIDADES: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CANT_UNIDADES'
            end
            object grid_paquetesTALLA: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TALLA'
            end
          end
          object grid_operaciones: TdxDBGrid
            Left = 80
            Top = 31
            Width = 376
            Height = 175
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'SECU_OPERACION'
            SummaryGroups = <>
            SummarySeparator = ', '
            Enabled = False
            TabOrder = 5
            DataSource = data_operaciones
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
            object grid_operacionesCONS_PROD_LOTE: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 53
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_PROD_LOTE'
            end
            object grid_operacionesSECU_OPERACION: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 28
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SECU_OPERACION'
            end
            object grid_operacionesCODI_OPER_COSTURA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 43
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODI_OPER_COSTURA'
            end
            object grid_operacionesNOMB_PROCESO: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 91
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_PROCESO'
            end
            object grid_operacionesNOMB_OPER_COSTURA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Width = 227
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_OPER_COSTURA'
            end
            object grid_operacionesTIEMPO: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 35
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TIEMPO'
            end
            object grid_operacionesFRECUENCIA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 38
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FRECUENCIA'
            end
            object grid_operacionesCONS_PROCESO: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 48
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_PROCESO'
            end
            object grid_operacionesCONS_PROD_PAQU_TIPO: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 71
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_PROD_PAQU_TIPO'
            end
            object grid_operacionesCONS_RECU_FAMILIA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 61
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_RECU_FAMILIA'
            end
            object grid_operacionesCODI_RECU_FAMILIA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 61
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODI_RECU_FAMILIA'
            end
            object grid_operacionesNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 197
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_RECU_FAMILIA'
            end
          end
          object grid_recursos: TdxDBGrid
            Left = 464
            Top = 31
            Width = 63
            Height = 175
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CONS_RECU_FAMILIA'
            SummaryGroups = <>
            SummarySeparator = ', '
            Enabled = False
            TabOrder = 6
            DataSource = data_recursos
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
            object grid_recursosCONS_RECU_FAMILIA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_RECU_FAMILIA'
            end
            object grid_recursosNOMB_RECU_FAMILIA: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODI_RECU_FAMILIA'
            end
          end
        end
        object comb_paqu_tipo: TPCPLookUpComboEdit
          Left = 141
          Top = 64
          Width = 195
          Height = 21
          DropDownCount = 8
          EscapeClear = False
          Ctl3D = True
          DataField = 'cons_prod_paqu_tipo'
          DataSource = myData_ventana
          KeyField = 'cons_prod_paqu_tipo'
          ListField = 'nomb_prod_paqu_tipo'
          ListSource = data_paqu_tipos
          ParentCtl3D = False
          TabOrder = 2
          OnChange = comb_paqu_tipoChange
          DirectInput = False
        end
        object comb_prod_orden: TPCPLookUpComboEdit
          Left = 141
          Top = 36
          Width = 195
          Height = 21
          DropDownCount = 8
          EscapeClear = False
          Ctl3D = True
          DataField = 'cons_prod_orden'
          DataSource = myData_ventana
          KeyField = 'cons_prod_orden'
          ListField = 'nume_prod_orden'
          ListSource = data_prod_ordenes
          ParentCtl3D = False
          TabOrder = 0
          OnChange = comb_paqu_tipoChange
          DirectInput = False
        end
        object comb_nume_lote: TPCPLookUpComboEdit
          Left = 389
          Top = 36
          Width = 84
          Height = 21
          DropDownCount = 8
          EscapeClear = False
          Ctl3D = True
          DataField = 'cons_prod_lote'
          DataSource = myData_ventana
          KeyField = 'cons_prod_lote'
          ListField = 'nume_lote'
          ListSource = data_lotes
          ParentCtl3D = False
          TabOrder = 1
          OnChange = comb_paqu_tipoChange
          DirectInput = False
        end
        object chec_seleccionar: TTBXRadioButton
          Left = 140
          Top = 109
          Width = 100
          Height = 17
          Caption = 'Seleccionar'
          ParentColor = True
          TabOrder = 4
          TabStop = False
          OnChange = chec_seleccionarChange
        end
      end
      object JvWizardInteriorPage2: TJvWizardInteriorPage [2]
        Header.Height = 30
        Header.Title.Color = clNone
        Header.Title.Text = 'Ordenar'
        Header.Title.Anchors = [akLeft, akTop, akRight]
        Header.Title.Font.Charset = DEFAULT_CHARSET
        Header.Title.Font.Color = clWindowText
        Header.Title.Font.Height = -16
        Header.Title.Font.Name = 'Tahoma'
        Header.Title.Font.Style = [fsBold]
        Header.Subtitle.Color = clNone
        Header.Subtitle.Visible = False
        Header.Subtitle.Text = 'Subtitle'
        Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
        Header.Subtitle.Font.Charset = DEFAULT_CHARSET
        Header.Subtitle.Font.Color = clWindowText
        Header.Subtitle.Font.Height = -11
        Header.Subtitle.Font.Name = 'Tahoma'
        Header.Subtitle.Font.Style = []
        inline fram_ordenar: Tffra_ordenar
          Left = 16
          Top = 37
          Width = 513
          Height = 259
          inherited Bevel1: TBevel
            Width = 513
          end
          inherited Bevel2: TBevel
            Top = 162
            Width = 513
          end
          inherited pane1: TPCPFrame
            Width = 513
          end
          inherited pane2: TPCPFrame
            Tag = 84
            Width = 513
            Height = 84
          end
          inherited pane3: TPCPFrame
            Tag = 94
            Top = 165
            Width = 513
            Height = 94
          end
        end
      end
      object jvPageOpciones: TJvWizardInteriorPage [3]
        Header.Height = 30
        Header.Title.Color = clNone
        Header.Title.Text = 'Opciones'
        Header.Title.Anchors = [akLeft, akTop, akRight]
        Header.Title.Font.Charset = DEFAULT_CHARSET
        Header.Title.Font.Color = clWindowText
        Header.Title.Font.Height = -16
        Header.Title.Font.Name = 'Tahoma'
        Header.Title.Font.Style = [fsBold]
        Header.Subtitle.Color = clNone
        Header.Subtitle.Text = 'Subtitle'
        Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
        Header.Subtitle.Font.Charset = DEFAULT_CHARSET
        Header.Subtitle.Font.Color = clWindowText
        Header.Subtitle.Font.Height = -11
        Header.Subtitle.Font.Name = 'Tahoma'
        Header.Subtitle.Font.Style = []
        OnPage = jvPageOpcionesPage
        object PCPFrame1: TPCPFrame
          Tag = 157
          Left = 12
          Top = 40
          Width = 520
          Height = 157
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Caption = ' Opciones del tiquete '
          Titulo_Color = 16244694
          Boton_Visible = False
          FlatBorder = True
          object labe_form_personalizado: TLabel
            Left = 488
            Top = 50
            Width = 10
            Height = 13
            Caption = '-1'
            Visible = False
          end
          object SCLShape1: TSCLShape
            Left = 8
            Top = 59
            Width = 505
            Height = 1
            Brush.Style = bsClear
            Pen.Color = 14467501
          end
          object SCLDBLabel3: TSCLDBLabel
            Left = 8
            Top = 122
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
            Caption = 'Saltar cada cambio de:'
            Transparent = True
            ColorRequerido = clRed
            ColorNoRequerido = clWindowText
          end
          object chec_form_personalizado: TdxCheckEdit
            Left = 9
            Top = 28
            Width = 184
            TabOrder = 1
            Caption = 'Utilizar un formato personalizado:'
            StyleController = padr_estilo
            OnChange = chec_form_personalizadoChange
          end
          object comb_form_personalizado: TPCPLookUpComboEdit
            Left = 192
            Top = 28
            Width = 304
            Height = 21
            DropDownCount = 8
            Enabled = False
            KeyField = 'cons_usua_informe'
            ListField = 'nomb_usua_informe'
            ListSource = data_form_personalizados
            TabOrder = 2
            OnChange = comb_form_personalizadoChange
            DirectInput = False
          end
          object pane_form_estandar: TPanel
            Left = 8
            Top = 64
            Width = 505
            Height = 57
            BevelOuter = bvNone
            TabOrder = 3
            object SCLDBLabel2: TSCLDBLabel
              Left = 184
              Top = 25
              Width = 121
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
              Caption = 'Número de columnas:'
              Transparent = True
              ColorRequerido = clRed
              ColorNoRequerido = clWindowText
            end
            object chec_vist_previa: TdxCheckEdit
              Left = 0
              Top = 5
              Width = 185
              TabOrder = 0
              Caption = '&Ver tiquetes antes de imprimir'
              StyleController = padr_estilo
            end
            object chec_impr_hoja: TdxCheckEdit
              Left = 0
              Top = 25
              Width = 185
              TabOrder = 1
              Caption = 'Imprimir en una hoja completa'
              StyleController = padr_estilo
              OnChange = chec_impr_hojaChange
            end
            object edit_nume_tiquetes: TdxSpinEdit
              Left = 304
              Top = 25
              Width = 49
              TabOrder = 2
              Alignment = taRightJustify
              MaxValue = 4
              MinValue = 3
              Value = 3
              StoredValues = 49
            end
          end
          object comb_saltar: TPCPLookUpComboEdit
            Left = 192
            Top = 123
            Width = 249
            Height = 21
            DropDownCount = 8
            Ctl3D = True
            KeyField = 'nomb_campo'
            ListField = 'texto'
            ListSource = data_cortar
            ParentCtl3D = False
            TabOrder = 4
            DirectInput = False
          end
        end
        object PCPFrame2: TPCPFrame
          Tag = 152
          Left = 11
          Top = 200
          Width = 520
          Height = 152
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Caption = ' Generación de impresión '
          Titulo_Color = 16244694
          Boton_Visible = False
          FlatBorder = True
          object chec_impr_so: TTBXRadioButton
            Left = 25
            Top = 29
            Width = 257
            Height = 17
            Caption = 'Impresión por controlador del &sistema operativo'
            Checked = True
            ParentColor = True
            TabOrder = 1
            OnChange = chec_impr_soChange
          end
          object pane_impr_puerto: TPCPFrame
            Tag = 81
            Left = 16
            Top = 62
            Width = 485
            Height = 81
            BorderWidth = 2
            Constraints.MinHeight = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Titulo_Color = 16244694
            TipoFrame = tfNinguno
            FlatBorder = True
            object labe_cortar: TSCLDBLabel
              Left = 16
              Top = 23
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
              Caption = 'Cortar cada cambio de:'
              Transparent = True
              ColorRequerido = clRed
              ColorNoRequerido = clWindowText
            end
            object chec_nomb_archivo: TdxCheckEdit
              Left = 35
              Top = 51
              Width = 163
              Style.ButtonStyle = btsHotFlat
              TabOrder = 1
              Caption = 'Imprimir en un archivo plano:'
              StyleController = padr_estilo
              OnChange = chec_nomb_archivoChange
            end
            object comb_cortar: TPCPLookUpComboEdit
              Left = 200
              Top = 24
              Width = 249
              Height = 21
              DropDownCount = 8
              Ctl3D = True
              KeyField = 'nomb_campo'
              ListField = 'texto'
              ListSource = data_cortar
              ParentCtl3D = False
              TabOrder = 2
              DirectInput = False
            end
            object nomb_archivo: TFilenameEdit
              Left = 200
              Top = 50
              Width = 252
              Height = 21
              DefaultExt = 'TXT'
              Filter = 'Archivos planos (*.txt)|*.txt|All files (*.*)|*.*'
              NumGlyphs = 1
              TabOrder = 3
              Text = 'tiquetes.txt'
              Visible = False
            end
          end
          object chec_impr_puerto: TTBXRadioButton
            Left = 24
            Top = 57
            Width = 248
            Height = 17
            Caption = 'Imprimir directamente al puerto ó a un &archivo'
            ParentColor = True
            TabOrder = 2
            OnChange = chec_impr_puertoChange
          end
        end
      end
      object JvWizardInteriorPage4: TJvWizardInteriorPage [4]
        Header.Height = 30
        Header.Title.Color = clNone
        Header.Title.Text = 'Imprimir'
        Header.Title.Anchors = [akLeft, akTop, akRight]
        Header.Title.Font.Charset = DEFAULT_CHARSET
        Header.Title.Font.Color = clWindowText
        Header.Title.Font.Height = -16
        Header.Title.Font.Name = 'Tahoma'
        Header.Title.Font.Style = [fsBold]
        Header.Subtitle.Color = clNone
        Header.Subtitle.Visible = False
        Header.Subtitle.Text = 'Subtitle'
        Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
        Header.Subtitle.Font.Charset = DEFAULT_CHARSET
        Header.Subtitle.Font.Color = clWindowText
        Header.Subtitle.Font.Height = -11
        Header.Subtitle.Font.Name = 'Tahoma'
        Header.Subtitle.Font.Style = []
        VisibleButtons = [bkBack, bkNext, bkFinish, bkCancel]
        object Label43: TLabel
          Left = 8
          Top = 40
          Width = 521
          Height = 89
          AutoSize = False
          Caption = 
            'Felicitaciones, sus tiquetes estan listos.  Presione el botón Fi' +
            'nalizar, para tener una vista previa de los mismos.'
          WordWrap = True
        end
        object memo_impresion: TdxDBMemo
          Left = 24
          Top = 72
          Width = 505
          TabOrder = 0
          Visible = False
          DataField = 'tiqu_produccion'
          DataSource = myData_ventana
          ReadOnly = True
          Height = 241
          StoredValues = 64
        end
      end
    end
  end
  inline fram_reporte: Tffra_edit_reportes [2]
    Left = 7
    Top = 264
    Width = 135
    Height = 113
    TabOrder = 2
    Visible = False
    inherited TBXDock1: TTBXDock
      Width = 370
      inherited barr_edicion: TTBXToolbar
        inherited comb_dataSources: TdxPickEdit
          Left = 146
        end
      end
      inherited TBXToolbar2: TTBXToolbar
        Left = 322
      end
    end
    inherited TBXDock2: TTBXDock
      Height = 71
    end
    inherited pane_contenedor: TPCPFrame
      Tag = 10
      Width = 0
      Height = 71
      inherited ELDesignPanel1: TELDesignPanel
        Width = 79
        Height = 57
      end
    end
    inherited TBXDock3: TTBXDock
      Left = 35
      Height = 71
      inherited pane_insp_objetos: TTBXDockablePanel
        inherited page: TSCLPageControl
          Height = 51
          FixedDimension = 19
          inherited page_propiedades: TSCLTabSheet
            inherited page_prop: TSCLPageControl
              Height = 28
              FixedDimension = 19
              inherited page_labels: TSCLTabSheet
                inherited scro_box: TScrollBox
                  Height = 5
                end
              end
            end
          end
          inherited page_campos: TSCLTabSheet
            inherited grid_camp_disponibles: TSCLDBGrid
              Filter.Criteria = {00000000}
            end
          end
        end
      end
    end
  end
  object quer_paquetes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_ventana
    SQL.Strings = (
      
        'Select nume_paquete, cons_refe_color, cons_grup_tall_detalle, ta' +
        'lla,'
      'secu_color, nomb_color, secu_talla, cant_unidades'
      'from vis_pcp_prod_dist_paquetes'
      'where cons_prod_lote = :cons_prod_lote'
      'and cons_prod_paqu_tipo = :cons_prod_paqu_tipo'
      'and cons_proceso = :cons_proceso'
      'order by nume_paquete')
    Left = 10
    Top = 201
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_prod_paqu_tipo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_proceso'
        ParamType = ptInput
      end>
    object quer_paquetesNUME_PAQUETE: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'NUME_PAQUETE'
    end
    object quer_paquetesCONS_REFE_COLOR: TIntegerField
      FieldName = 'CONS_REFE_COLOR'
    end
    object quer_paquetesCONS_GRUP_TALL_DETALLE: TIntegerField
      FieldName = 'CONS_GRUP_TALL_DETALLE'
    end
    object quer_paquetesSECU_COLOR: TIntegerField
      FieldName = 'SECU_COLOR'
    end
    object quer_paquetesNOMB_COLOR: TStringField
      FieldName = 'NOMB_COLOR'
      Size = 60
    end
    object quer_paquetesSECU_TALLA: TIntegerField
      FieldName = 'SECU_TALLA'
    end
    object quer_paquetesCANT_UNIDADES: TIntegerField
      FieldName = 'CANT_UNIDADES'
    end
    object quer_paquetesTALLA: TStringField
      FieldName = 'TALLA'
      Size = 12
    end
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_prod_lote'
        DataType = ftInteger
      end
      item
        Name = 'cons_prod_paqu_tipo'
        DataType = ftInteger
      end
      item
        Name = 'cons_proceso'
        DataType = ftInteger
      end
      item
        Name = 'cons_proc_actual'
        DataType = ftInteger
      end>
    Left = 10
    Top = 169
    object myTabla_ventanacons_prod_orden: TIntegerField
      FieldName = 'cons_prod_orden'
    end
    object myTabla_ventanacons_prod_lote: TIntegerField
      FieldName = 'cons_prod_lote'
    end
    object myTabla_ventanacons_prod_paqu_tipo: TIntegerField
      FieldName = 'cons_prod_paqu_tipo'
    end
    object myTabla_ventanacons_proceso: TIntegerField
      FieldName = 'cons_proceso'
    end
    object myTabla_ventanacons_proc_actual: TIntegerField
      FieldName = 'cons_proc_actual'
    end
    object myTabla_ventanatiqu_produccion: TStringField
      FieldName = 'tiqu_produccion'
      Size = 5000
    end
  end
  object myData_ventana: TDataSource
    DataSet = myTabla_ventana
    Left = 42
    Top = 169
  end
  object data_paquetes: TDataSource
    DataSet = quer_paquetes
    Left = 42
    Top = 201
  end
  object quer_paqu_tipos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'select cons_prod_paqu_tipo, nomb_prod_paqu_tipo'
      'from pcp_prod_paqu_tipos'
      'order by cons_prod_paqu_tipo')
    Left = 10
    Top = 137
  end
  object data_paqu_tipos: TDataSource
    DataSet = quer_paqu_tipos
    Left = 42
    Top = 137
  end
  object quer_operaciones: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_ventana
    SQL.Strings = (
      'Select *'
      'from vis_pcp_prod_list_oper_costura'
      'where cons_prod_lote = :cons_prod_lote'
      'and cons_prod_paqu_tipo = :cons_prod_paqu_tipo'
      'order by secu_operacion')
    Left = 10
    Top = 233
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cons_prod_paqu_tipo'
        ParamType = ptUnknown
      end>
    object quer_operacionesCONS_PROD_LOTE: TIntegerField
      FieldName = 'CONS_PROD_LOTE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.CONS_PROD_LOTE'
      Visible = False
    end
    object quer_operacionesSECU_OPERACION: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'SECU_OPERACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.SECU_OPERACION'
    end
    object quer_operacionesCODI_OPER_COSTURA: TStringField
      FieldName = 'CODI_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.CODI_OPER_COSTURA'
      Size = 12
    end
    object quer_operacionesNOMB_OPER_COSTURA: TStringField
      DisplayLabel = 'Operación'
      FieldName = 'NOMB_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.NOMB_OPER_COSTURA'
      Size = 30
    end
    object quer_operacionesTIEMPO: TFloatField
      FieldName = 'TIEMPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.TIEMPO'
    end
    object quer_operacionesFRECUENCIA: TFloatField
      FieldName = 'FRECUENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.FRECUENCIA'
    end
    object quer_operacionesCONS_PROCESO: TIntegerField
      FieldName = 'CONS_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.CONS_PROCESO'
    end
    object quer_operacionesNOMB_PROCESO: TStringField
      DisplayLabel = 'Proceso'
      FieldName = 'NOMB_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.NOMB_PROCESO'
      Size = 60
    end
    object quer_operacionesCONS_PROD_PAQU_TIPO: TIntegerField
      FieldName = 'CONS_PROD_PAQU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.CONS_PROD_PAQU_TIPO'
    end
    object quer_operacionesCONS_RECU_FAMILIA: TIntegerField
      FieldName = 'CONS_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.CONS_RECU_FAMILIA'
    end
    object quer_operacionesCODI_RECU_FAMILIA: TStringField
      FieldName = 'CODI_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.CODI_RECU_FAMILIA'
      Size = 12
    end
    object quer_operacionesNOMB_RECU_FAMILIA: TStringField
      FieldName = 'NOMB_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.NOMB_RECU_FAMILIA'
      Size = 60
    end
  end
  object data_operaciones: TDataSource
    DataSet = quer_operaciones
    Left = 42
    Top = 233
  end
  object quer_recursos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_ventana
    SQL.Strings = (
      'Select distinct cons_recu_familia, codi_recu_familia'
      'from vis_pcp_prod_list_oper_costura'
      'where cons_prod_lote = :cons_prod_lote'
      'and cons_prod_paqu_tipo = :cons_prod_paqu_tipo'
      'order by codi_recu_familia')
    Left = 10
    Top = 265
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cons_prod_paqu_tipo'
        ParamType = ptUnknown
      end>
    object quer_recursosCONS_RECU_FAMILIA: TIntegerField
      FieldName = 'CONS_RECU_FAMILIA'
    end
    object quer_recursosCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Familia'
      FieldName = 'CODI_RECU_FAMILIA'
      Size = 12
    end
  end
  object data_recursos: TDataSource
    DataSet = quer_recursos
    Left = 42
    Top = 265
  end
  object quer_sele_impresos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_ventana
    SQL.Strings = (
      'Select fech_sistema, usua_sistema'
      'from PCP_PROD_IMPR_TIQUETES'
      'where cons_prod_lote = :cons_prod_lote'
      'and cons_prod_paqu_tipo = :cons_prod_paqu_tipo'
      'and cons_proceso = :cons_proc_actual'
      'order by fech_sistema desc')
    Left = 586
    Top = 289
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cons_prod_paqu_tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cons_proc_actual'
        ParamType = ptUnknown
      end>
  end
  object quer_info_of: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_ventana
    SQL.Strings = (
      'SELECT FIRST 1 NUME_PROD_ORDEN, NUME_LOTE,'
      'CODI_REFERENCIA'
      'FROM VIS_PCP_PROD_LOTES'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE')
    Left = 618
    Top = 289
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptInput
      end>
  end
  object tabl_tiquetes: TTable
    DatabaseName = 'PCPLocal'
    FieldDefs = <
      item
        Name = 'cons_tabla'
        DataType = ftInteger
      end
      item
        Name = 'codi_barras'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'nume_prod_orden'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'codi_referencia'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'nume_paquete'
        DataType = ftInteger
      end
      item
        Name = 'secu_talla'
        DataType = ftInteger
      end
      item
        Name = 'talla'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'secu_color'
        DataType = ftInteger
      end
      item
        Name = 'nomb_color'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'tiem_operacion'
        DataType = ftFloat
      end
      item
        Name = 'cant_unidades'
        DataType = ftInteger
      end
      item
        Name = 'tiem_paquete'
        DataType = ftFloat
      end
      item
        Name = 'codi_recu_familia'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'secu_operacion'
        DataType = ftInteger
      end
      item
        Name = 'codi_operacion'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'nomb_operacion'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'nume_lote'
        DataType = ftString
        Size = 12
      end>
    StoreDefs = True
    TableName = 'tmpTiqu_fabricacion'
    Left = 505
    Top = 289
  end
  object quer_inse_impresos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_ventana
    SQL.Strings = (
      'INSERT INTO PCP_PROD_IMPR_TIQUETES'
      '(cons_prod_lote, cons_prod_paqu_tipo, cons_proceso)'
      'Values'
      '(:cons_prod_lote, :cons_prod_paqu_tipo, :cons_proc_actual)')
    Left = 649
    Top = 289
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cons_prod_paqu_tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cons_proc_actual'
        ParamType = ptUnknown
      end>
  end
  object quer_impr_tiquetes: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      '')
    Left = 647
    Top = 365
  end
  object data_cortar: TDataSource
    DataSet = fram_ordenar.quer_ordenar
    Left = 659
    Top = 57
  end
  object quer_form_personalizados: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_USUA_INFORME, NOMB_USUA_INFORME'
      'FROM SIS_USUA_INFORMES'
      'WHERE IDEN_VENTANA = 220500'
      'ORDER BY NOMB_USUA_INFORME')
    Left = 10
    Top = 345
  end
  object data_form_personalizados: TDataSource
    DataSet = quer_form_personalizados
    Left = 42
    Top = 345
  end
  object quer_prev_fortes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT NOMB_USUA_INFORME, CONTROLES,'
      'ORDE_1, ORDE_ASCE_1, ORDE_2, ORDE_ASCE_2, ORDE_3, ORDE_ASCE_3'
      'FROM SIS_USUA_INFORMES'
      'WHERE CONS_USUA_INFORME = :CONS_USUA_INFORME')
    Left = 72
    Top = 347
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_USUA_INFORME'
        ParamType = ptInput
      end>
    object quer_prev_fortesNOMB_USUA_INFORME: TStringField
      FieldName = 'NOMB_USUA_INFORME'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.NOMB_USUA_INFORME'
      Size = 100
    end
    object quer_prev_fortesCONTROLES: TBlobField
      FieldName = 'CONTROLES'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.CONTROLES'
      BlobType = ftBlob
      Size = 80
    end
    object quer_prev_fortesORDE_1: TStringField
      FieldName = 'ORDE_1'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_1'
      Size = 60
    end
    object quer_prev_fortesORDE_ASCE_1: TIntegerField
      FieldName = 'ORDE_ASCE_1'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_ASCE_1'
    end
    object quer_prev_fortesORDE_2: TStringField
      FieldName = 'ORDE_2'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_2'
      Size = 60
    end
    object quer_prev_fortesORDE_ASCE_2: TIntegerField
      FieldName = 'ORDE_ASCE_2'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_ASCE_2'
    end
    object quer_prev_fortesORDE_3: TStringField
      FieldName = 'ORDE_3'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_3'
      Size = 60
    end
    object quer_prev_fortesORDE_ASCE_3: TIntegerField
      FieldName = 'ORDE_ASCE_3'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.ORDE_ASCE_3'
    end
  end
  object tabl_prod_ordenes: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortFields = 'nume_prod_orden'
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
    Left = 466
    Top = 23
    object tabl_prod_ordenescons_prod_orden: TIntegerField
      FieldName = 'cons_prod_orden'
    end
    object tabl_prod_ordenesnume_prod_orden: TStringField
      FieldName = 'nume_prod_orden'
      Size = 12
    end
  end
  object data_prod_ordenes: TDataSource
    DataSet = tabl_prod_ordenes
    Left = 530
    Top = 23
  end
  object quer_lotes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_prod_ordenes
    SQL.Strings = (
      'SELECT CONS_PROD_LOTE, '
      'CAST(NUME_LOTE AS VARCHAR(12)) AS NUME_LOTE'
      'FROM PCP_PROD_LOTES'
      'WHERE CONS_PROD_ORDEN = :CONS_PROD_ORDEN'
      'ORDER BY NUME_LOTE'
      ' ')
    Left = 498
    Top = 57
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptUnknown
      end>
  end
  object data_lotes: TDataSource
    DataSet = quer_lotes
    Left = 528
    Top = 56
  end
  object quer_prod_ordenes: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PROD_ORDEN, '
      'CAST(NUME_PROD_ORDEN AS VARCHAR(12)) AS NUME_PROD_ORDEN'
      'FROM PCP_PROD_ORDENES'
      'ORDER BY 2')
    Left = 498
    Top = 23
  end
end

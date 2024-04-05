inherited fwn1_prod_cort_impr_tiquetes: Tfwn1_prod_cort_impr_tiquetes
  Left = 209
  Top = 119
  ActiveControl = page1
  Caption = 'Asistente para la impresión de tiquetes de corte'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_info: TPCPFrame
    Visible = False
  end
  inherited pane_wizard: TPanel
    inherited padr_wizard: TJvWizard
      ActivePage = page1
      OnFinishButtonClick = padr_wizardFinishButtonClick
      object page1: TJvWizardWelcomePage [0]
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
        Header.ShowDivider = False
        EnabledButtons = [bkNext, bkCancel, bkHelp]
        VisibleButtons = [bkNext, bkCancel]
        Color = clBtnFace
        WaterMark.Visible = False
        object Label1: TLabel
          Left = 16
          Top = 40
          Width = 505
          Height = 49
          AutoSize = False
          Caption = 
            'Bienvenido al asistente para la impresión de tiquetes para el co' +
            'ntrol de procesos en corte.'#13#10#13#10'Presione el botón "Siguiente" par' +
            'a comenzar.'
        end
        object memo_impresion: TdxDBMemo
          Left = 24
          Top = 104
          Width = 505
          TabOrder = 0
          Visible = False
          DataField = 'tiqu_corte'
          DataSource = myData_Ventana
          ReadOnly = True
          Height = 209
          StoredValues = 64
        end
      end
      object page2: TJvWizardInteriorPage [1]
        Header.Height = 30
        Header.Title.Color = clNone
        Header.Title.Text = 'Seleccionar'
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
        object pane_seleccionar: TPCPFrame
          Tag = 266
          Left = 24
          Top = 89
          Width = 512
          Height = 266
          BorderWidth = 2
          Constraints.MinHeight = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Visible = False
          Caption = 'Selección de impresión'
          Titulo_Color = 16244694
          Boton_Visible = False
          TipoFrame = tfNinguno
          FlatBorder = True
          object Panel2: TPanel
            Left = 3
            Top = 3
            Width = 393
            Height = 260
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object chec_sele_operaciones: TdxCheckEdit
              Left = 3
              Top = 2
              Width = 195
              TabOrder = 0
              Caption = 'Operaciones'
              OnChange = chec_sele_operacionesChange
            end
            object grid_operaciones: TdxDBGrid
              Left = 7
              Top = 24
              Width = 386
              Height = 213
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'SECU_OPERACION'
              SummaryGroups = <>
              SummarySeparator = ', '
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              DataSource = data_operaciones
              Filter.Criteria = {00000000}
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoExtMultiSelect, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
              object grid_operacionesCONS_PROD_LOTE: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 59
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CONS_PROD_LOTE'
              end
              object grid_operacionesCONS_REFE_MATERIAL: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 72
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CONS_REFE_MATERIAL'
              end
              object grid_operacionesSECU_OPERACION: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Width = 33
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SECU_OPERACION'
              end
              object grid_operacionesCONS_PROCESO: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 52
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CONS_PROCESO'
              end
              object grid_operacionesCODI_PROCESO: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 68
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CODI_PROCESO'
              end
              object grid_operacionesNOMB_PROCESO: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 216
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOMB_PROCESO'
              end
              object grid_operacionesCODI_OPERACION: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 59
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CODI_OPERACION'
              end
              object grid_operacionesNOMB_OPERACION: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Width = 301
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOMB_OPERACION'
              end
              object grid_operacionesCONS_CORT_UNID_MEDIDA: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 85
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CONS_CORT_UNID_MEDIDA'
              end
              object grid_operacionesNOMB_CORT_UNID_MEDIDA: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 216
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOMB_CORT_UNID_MEDIDA'
              end
              object grid_operacionesPUESTOS: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 37
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PUESTOS'
              end
              object grid_operacionesUNID_POR_TIQUETE: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 43
                BandIndex = 0
                RowIndex = 0
                FieldName = 'UNID_POR_TIQUETE'
              end
              object grid_operacionesTIEM_OPERACION: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 58
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TIEM_OPERACION'
              end
              object grid_operacionesNUME_TIQUETES: TdxDBGridColumn
                HeaderAlignment = taCenter
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NUME_TIQUETES'
              end
              object grid_operacionesTIEM_TOTAL: TdxDBGridColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TIEM_TOTAL'
              end
            end
          end
          object Panel3: TPanel
            Left = 396
            Top = 3
            Width = 113
            Height = 260
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object chec_sele_unid_medida: TdxCheckEdit
              Left = 3
              Top = 2
              Width = 104
              TabOrder = 0
              Caption = 'Tipos de medida'
              OnChange = chec_sele_unid_medidaChange
            end
            object grid_unid_medida: TdxDBGrid
              Left = 9
              Top = 24
              Width = 98
              Height = 213
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'CONS_CORT_UNID_MEDIDA'
              SummaryGroups = <>
              SummarySeparator = ', '
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 1
              DataSource = data_cort_unid_medida
              Filter.Criteria = {00000000}
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
              object grid_unid_medidaCONS_CORT_UNID_MEDIDA: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CONS_CORT_UNID_MEDIDA'
              end
              object grid_unid_medidaNOMB_CORT_UNID_MEDIDA: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOMB_CORT_UNID_MEDIDA'
              end
            end
          end
        end
        object chec_impr_seleccion: TTBXRadioButton
          Left = 24
          Top = 58
          Width = 201
          Height = 17
          Caption = 'Seleccionar'
          Color = clBtnFace
          TabOrder = 1
          OnClick = doSeleccionar
        end
        object chec_impr_todo: TTBXRadioButton
          Left = 24
          Top = 40
          Width = 201
          Height = 17
          Caption = 'Imprimir todo el lote'
          Checked = True
          Color = clBtnFace
          TabOrder = 2
          OnClick = doSeleccionar
        end
      end
      object page3: TJvWizardInteriorPage [2]
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
          Top = 40
          Width = 513
          inherited Bevel1: TBevel
            Width = 513
          end
          inherited Bevel2: TBevel
            Width = 513
          end
          inherited pane1: TPCPFrame
            Width = 513
          end
          inherited pane2: TPCPFrame
            Width = 513
          end
          inherited pane3: TPCPFrame
            Width = 513
          end
        end
      end
      object page4: TJvWizardInteriorPage [3]
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
        Header.Subtitle.Visible = False
        Header.Subtitle.Text = 'Subtitle'
        Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
        Header.Subtitle.Font.Charset = DEFAULT_CHARSET
        Header.Subtitle.Font.Color = clWindowText
        Header.Subtitle.Font.Height = -11
        Header.Subtitle.Font.Name = 'Tahoma'
        Header.Subtitle.Font.Style = []
        EnabledButtons = [bkStart, bkLast, bkBack, bkNext, bkCancel, bkHelp]
        object PCPFrame1: TPCPFrame
          Tag = 83
          Left = 12
          Top = 40
          Width = 520
          Height = 83
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
          object SCLDBLabel2: TSCLDBLabel
            Left = 16
            Top = 52
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
            Caption = 'Paquetes por tiquete:'
            Transparent = True
            ColorRequerido = clRed
            ColorNoRequerido = clWindowText
          end
          object SCLDBLabel1: TSCLDBLabel
            Left = 8
            Top = 32
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
          object edit_paqu_por_tiquete: TdxSpinEdit
            Left = 136
            Top = 52
            Width = 49
            TabOrder = 2
            Alignment = taRightJustify
            MaxValue = 10000
            MinValue = 1
            Value = 1
            StoredValues = 49
          end
          object chec_vist_previa: TdxCheckEdit
            Left = 272
            Top = 32
            Width = 241
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsFlat
            TabOrder = 3
            Caption = '&Ver tiquetes antes de imprimir'
            State = cbsChecked
          end
          object edit_nume_tiquetes: TdxSpinEdit
            Left = 136
            Top = 32
            Width = 49
            TabOrder = 0
            Alignment = taRightJustify
            MaxValue = 4
            MinValue = 3
            Value = 3
            StoredValues = 49
          end
        end
        object PCPFrame2: TPCPFrame
          Tag = 162
          Left = 11
          Top = 136
          Width = 520
          Height = 162
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
            Left = 16
            Top = 32
            Width = 257
            Height = 17
            Caption = 'Impresión por controlador del &sistema operativo'
            Checked = True
            TabOrder = 1
          end
          object chec_impr_puerto: TTBXRadioButton
            Left = 16
            Top = 56
            Width = 257
            Height = 17
            Caption = 'Imprimir directamente al puerto ó a un &archivo'
            TabOrder = 2
          end
          object pane_impr_puerto: TPCPFrame
            Tag = 73
            Left = 40
            Top = 80
            Width = 465
            Height = 73
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
              Top = 10
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
              Left = 30
              Top = 37
              Width = 167
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsFlat
              TabOrder = 1
              Caption = 'Imprimir en un archivo plano:'
            end
            object comb_cortar: TPCPLookUpComboEdit
              Left = 200
              Top = 8
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
              Top = 36
              Width = 252
              Height = 21
              DefaultExt = 'TXT'
              Filter = 'Archivos planos (*.txt)|*.txt|All files (*.*)|*.*'
              NumGlyphs = 1
              TabOrder = 3
              Text = 'tiquetes.txt'
            end
          end
        end
      end
      object page5: TJvWizardInteriorPage [4]
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
        EnabledButtons = [bkStart, bkLast, bkBack, bkFinish, bkCancel, bkHelp]
        VisibleButtons = [bkBack, bkFinish, bkCancel]
        object Label3: TLabel
          Left = 8
          Top = 40
          Width = 521
          Height = 65
          AutoSize = False
          Caption = 
            'El proceso ha finalizado con éxito.'#13#10#13#10'De click en el botón Fina' +
            'lizar para obtener una vista previa de los tiquetes de control d' +
            'e corte.'
        end
      end
    end
  end
  object quer_operaciones: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Select * '
      'from VIS_PCP_PROD_LIST_OPER_CORT_IMP'
      'where cons_prod_lote = :cons_prod_lote'
      'and cons_refe_material = :cons_refe_material'
      'order by secu_operacion'
      '')
    Left = 26
    Top = 209
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cons_refe_material'
        ParamType = ptUnknown
      end>
    object quer_operacionesCONS_PROD_LOTE: TIntegerField
      FieldName = 'CONS_PROD_LOTE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.CONS_PROD_LOTE'
    end
    object quer_operacionesCONS_REFE_MATERIAL: TIntegerField
      FieldName = 'CONS_REFE_MATERIAL'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.CONS_REFE_MATERIAL'
    end
    object quer_operacionesSECU_OPERACION: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'SECU_OPERACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.SECU_OPERACION'
    end
    object quer_operacionesCONS_PROCESO: TIntegerField
      FieldName = 'CONS_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.CONS_PROCESO'
    end
    object quer_operacionesCODI_PROCESO: TStringField
      FieldName = 'CODI_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.CODI_PROCESO'
      Size = 12
    end
    object quer_operacionesNOMB_PROCESO: TStringField
      FieldName = 'NOMB_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.NOMB_PROCESO'
      Size = 60
    end
    object quer_operacionesCODI_OPERACION: TStringField
      FieldName = 'CODI_OPERACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.CODI_OPERACION'
      Size = 12
    end
    object quer_operacionesNOMB_OPERACION: TStringField
      DisplayLabel = 'Operación'
      FieldName = 'NOMB_OPERACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.NOMB_OPERACION'
      Size = 60
    end
    object quer_operacionesCONS_CORT_UNID_MEDIDA: TIntegerField
      FieldName = 'CONS_CORT_UNID_MEDIDA'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.CONS_CORT_UNID_MED' +
        'IDA'
    end
    object quer_operacionesNOMB_CORT_UNID_MEDIDA: TStringField
      FieldName = 'NOMB_CORT_UNID_MEDIDA'
      Origin = 
        'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.NOMB_CORT_UNID_MED' +
        'IDA'
      Size = 60
    end
    object quer_operacionesPUESTOS: TIntegerField
      FieldName = 'PUESTOS'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.PUESTOS'
    end
    object quer_operacionesUNID_POR_TIQUETE: TIntegerField
      DisplayLabel = 'Unidades'
      FieldName = 'UNID_POR_TIQUETE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.UNID_POR_TIQUETE'
    end
    object quer_operacionesNUME_TIQUETES: TIntegerField
      DisplayLabel = 'Tiquetes'
      FieldName = 'NUME_TIQUETES'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.NUME_TIQUETES'
    end
    object quer_operacionesTIEM_OPERACION: TFloatField
      FieldName = 'TIEM_OPERACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_CORT_IMP.TIEM_OPERACION'
    end
    object quer_operacionesTIEM_TOTAL: TFloatField
      FieldName = 'TIEM_TOTAL'
    end
  end
  object myTabla_ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_prod_lote'
        DataType = ftInteger
      end
      item
        Name = 'cons_refe_material'
        DataType = ftInteger
      end>
    Left = 27
    Top = 169
    object myTabla_ventanacons_prod_lote: TIntegerField
      FieldName = 'cons_prod_lote'
    end
    object myTabla_ventanacons_refe_material: TIntegerField
      FieldName = 'cons_refe_material'
    end
    object myTabla_ventanacons_prod_paqu_tipo: TIntegerField
      FieldName = 'cons_prod_paqu_tipo'
    end
    object myTabla_ventanacons_mate_referencia: TIntegerField
      FieldName = 'cons_mate_referencia'
    end
    object myTabla_ventanacons_proc_actual: TIntegerField
      FieldName = 'cons_proc_actual'
    end
    object myTabla_ventanatiqu_corte: TStringField
      FieldName = 'tiqu_corte'
      Size = 5000
    end
  end
  object myData_Ventana: TDataSource
    DataSet = myTabla_ventana
    Left = 56
    Top = 169
  end
  object data_operaciones: TDataSource
    DataSet = quer_operaciones
    Left = 58
    Top = 209
  end
  object quer_cort_unid_medida: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select cons_cort_unid_medida, nomb_cort_unid_medida'
      'from sis_cort_unid_medida'
      'order by cons_cort_unid_medida')
    Left = 26
    Top = 242
    object quer_cort_unid_medidaCONS_CORT_UNID_MEDIDA: TIntegerField
      FieldName = 'CONS_CORT_UNID_MEDIDA'
    end
    object quer_cort_unid_medidaNOMB_CORT_UNID_MEDIDA: TStringField
      DisplayLabel = 'Unidad'
      FieldName = 'NOMB_CORT_UNID_MEDIDA'
      Size = 60
    end
  end
  object data_cort_unid_medida: TDataSource
    DataSet = quer_cort_unid_medida
    Left = 58
    Top = 241
  end
  object quer_sele_impresos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
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
  object quer_inse_impresos: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
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
  object quer_info_of: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
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
        Name = 'nume_lote'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'codi_referencia'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'codi_mate_referencia'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'nomb_mate_referencia'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nomb_proceso'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nume_paquete'
        DataType = ftInteger
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
        Name = 'nomb_paquetes'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nomb_unid_medida'
        DataType = ftString
        Size = 60
      end>
    StoreDefs = True
    TableName = 'tmpTiqu_corte'
    Left = 505
    Top = 289
  end
  object quer_info_material: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'SELECT CODI_MATE_REFERENCIA, NOMB_MATE_REFERENCIA'
      'FROM PCP_MATE_REFERENCIAS'
      'WHERE CONS_MATE_REFERENCIA = :CONS_MATE_REFERENCIA')
    Left = 26
    Top = 275
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_MATE_REFERENCIA'
        ParamType = ptUnknown
      end>
  end
  object data_cortar: TDataSource
    DataSet = fram_ordenar.quer_ordenar
    Left = 518
    Top = 201
  end
  object quer_upda_adicional: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'EXECUTE PROCEDURE'
      'PRO_PCP_PROD_LOTE_CORTE_IU'
      '(:CONS_PROD_LOTE,  :CONS_REFE_MATERIAL,'
      ':AGRU_PAQUETE)')
    Left = 26
    Top = 313
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONS_REFE_MATERIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AGRU_PAQUETE'
        ParamType = ptInput
      end>
  end
  object quer_info_adicional: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'SELECT * FROM'
      'PCP_PROD_LOTE_CORTE'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE'
      'AND CONS_REFE_MATERIAL = :CONS_REFE_MATERIAL')
    Left = 58
    Top = 313
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_PROD_LOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONS_REFE_MATERIAL'
        ParamType = ptUnknown
      end>
  end
  object quer_impr_tiquetes: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      '')
    Left = 655
    Top = 365
  end
end

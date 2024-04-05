object ffra_prod_orde_bala_proceso: Tffra_prod_orde_bala_proceso
  Left = 0
  Top = 0
  Width = 832
  Height = 420
  TabOrder = 0
  object Bevel3: TBevel
    Left = 350
    Top = 0
    Width = 3
    Height = 420
    Align = alLeft
    Shape = bsSpacer
  end
  object Bevel4: TBevel
    Left = 591
    Top = 0
    Width = 3
    Height = 420
    Align = alLeft
    Shape = bsSpacer
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 350
    Height = 420
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object dfsSplitter1: TdfsSplitter
      Left = 0
      Top = 387
      Width = 350
      Height = 10
      Cursor = crVSplit
      Align = alBottom
      MinSize = 1
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object PCPFrame3: TPCPFrame
      Tag = 387
      Left = 0
      Top = 0
      Width = 350
      Height = 387
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
      Caption = 'Información de la orden'
      Titulo_Color = 16244694
      Boton_Visible = False
      FlatBorder = True
      object Label13: TLabel
        Left = 7
        Top = 56
        Width = 124
        Height = 13
        Caption = 'Total unidades requeridas'
      end
      object Label15: TLabel
        Left = 7
        Top = 104
        Width = 86
        Height = 13
        Caption = 'Tiempo referencia'
      end
      object Label16: TLabel
        Left = 7
        Top = 128
        Width = 91
        Height = 13
        Caption = 'Minutos requeridos'
      end
      object Label17: TLabel
        Left = 7
        Top = 152
        Width = 96
        Height = 13
        Caption = 'Producción por hora'
      end
      object Label4: TLabel
        Left = 6
        Top = 182
        Width = 137
        Height = 13
        Caption = 'Producción máxima estimada'
      end
      object Label11: TLabel
        Left = 7
        Top = 206
        Width = 138
        Height = 13
        Caption = 'Producción requerida (turno)'
      end
      object Bevel1: TBevel
        Left = 6
        Top = 174
        Width = 278
        Height = 2
      end
      object Label14: TLabel
        Left = 7
        Top = 80
        Width = 88
        Height = 13
        Caption = 'Producción por día'
      end
      object EditTotalLote: TdxCurrencyEditPCP
        Left = 195
        Top = 53
        Width = 90
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0'
        Height = 21
        StoredValues = 65
      end
      object EditTotaltc: TdxCurrencyEditPCP
        Left = 195
        Top = 101
        Width = 90
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0.0000'
        Height = 21
        StoredValues = 65
      end
      object EditTotalMinutos: TdxCurrencyEditPCP
        Left = 195
        Top = 125
        Width = 90
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0'
        Height = 21
        StoredValues = 65
      end
      object EditTotalPH: TdxCurrencyEditPCP
        Left = 195
        Top = 149
        Width = 90
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0'
        Height = 21
        StoredValues = 65
      end
      object EditProduccionMaxima: TdxCurrencyEditPCP
        Left = 195
        Top = 179
        Width = 91
        Enabled = False
        TabOrder = 5
        TabStop = False
        Alignment = taRightJustify
        ReadOnly = True
        DisplayFormat = ',0'
        StoredValues = 65
      end
      object EditProduccionRequerida: TdxCurrencyEditPCP
        Left = 195
        Top = 202
        Width = 90
        Enabled = False
        TabOrder = 6
        TabStop = False
        OnEnter = EditProduccionRequeridaEnter
        OnExit = doHacerCalculos
        Alignment = taRightJustify
        OnChange = doHacerCalculos
        DecimalPlaces = 0
        DisplayFormat = ',0.'
        StoredValues = 1
      end
      object EditTotalUnidades: TdxCurrencyEditPCP
        Left = 195
        Top = 77
        Width = 90
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0'
        Height = 21
        StoredValues = 65
      end
      object Panel2: TPanel
        Left = 3
        Top = 23
        Width = 344
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 8
        object chk_capacidad: TRadioButton
          Left = 7
          Top = 4
          Width = 144
          Height = 17
          Caption = 'Por &capacidad instalada'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = chk_capacidadClick
        end
        object chk_unidades: TRadioButton
          Left = 183
          Top = 4
          Width = 144
          Height = 17
          Caption = 'Por &unidades requeridas'
          TabOrder = 1
          OnClick = chk_capacidadClick
        end
      end
      object boto_aplicar: TSCLButton
        Left = 289
        Top = 203
        Width = 21
        Height = 20
        Hint = 'Aplicar a los demás procesos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        TabStop = False
        Down = False
        Images = _fMDI.imag_pequenas
        ImageIndex = 34
        Flat = True
        Color = clBtnFace
        Style = bsNew
        BackColor = clBtnFace
        ColorBordeBoton = clBtnShadow
        TipoPintadoBoton = tpbContorno
        RedondeoBoton = 4
      end
    end
    object PCPFrame1: TPCPFrame
      Tag = 195
      Left = 0
      Top = 397
      Width = 350
      Height = 23
      Align = alBottom
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Caption = 'Operaciones del proceso'
      Titulo_Color = 16244694
      Titulo_Comprimido = True
      BorderWidthIn = 4
      FlatBorder = True
      object grid_operaciones: TdxDBGrid
        Left = 7
        Top = 27
        Width = 336
        Height = 161
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'SECU_OPERACION'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        DataSource = data_list_operaciones
        Filter.Criteria = {00000000}
        OptionsBehavior = [edgoAutoCopySelectedToClipboard, edgoAutoSort, edgoDragScroll, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        object grid_operacionesSECU_OPERACION: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 46
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SECU_OPERACION'
        end
        object grid_operacionesCODI_OPER_COSTURA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 54
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODI_OPER_COSTURA'
        end
        object grid_operacionesNOMB_OPER_COSTURA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 128
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOMB_OPER_COSTURA'
        end
        object grid_operacionesTIEMPO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 48
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIEMPO'
          SummaryFooterType = cstSum
          SummaryFooterFormat = ',0.00'
          OnDrawSummaryFooter = grid_operacionesTIEMPODrawSummaryFooter
        end
        object grid_operacionesCONS_PROD_PAQU_TIPO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 137
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_PROD_PAQU_TIPO'
        end
        object grid_operacionesCODI_RECU_FAMILIA: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Width = 56
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODI_RECU_FAMILIA'
        end
      end
    end
  end
  object PCPFrame2: TPCPFrame
    Tag = 420
    Left = 353
    Top = 0
    Width = 238
    Height = 420
    Align = alLeft
    BorderWidth = 2
    Constraints.MinHeight = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Caption = 'Estadísticas'
    Titulo_Color = 16244694
    Boton_Visible = False
    FlatBorder = True
    object Label6: TLabel
      Left = 10
      Top = 76
      Width = 103
      Height = 13
      Alignment = taRightJustify
      Caption = 'Operarios Disponibles'
    end
    object Label7: TLabel
      Left = 10
      Top = 28
      Width = 100
      Height = 13
      Alignment = taRightJustify
      Caption = 'Minutos Contratados'
    end
    object Label27: TLabel
      Left = 10
      Top = 52
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'Minutos Descanso'
    end
    object Label28: TLabel
      Left = 10
      Top = 119
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = '% Presencia'
    end
    object Label9: TLabel
      Left = 10
      Top = 143
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'Minutos Presencia'
    end
    object Label8: TLabel
      Left = 10
      Top = 168
      Width = 90
      Height = 13
      Alignment = taRightJustify
      Caption = '% Eficiencia Grupo'
    end
    object ApPt: TLabel
      Left = 10
      Top = 191
      Width = 130
      Height = 13
      Alignment = taRightJustify
      Caption = '% Aprovechamiento Grupo'
    end
    object x: TLabel
      Left = 10
      Top = 215
      Width = 128
      Height = 13
      Caption = 'Minutos Reales Disponibles'
    end
    object Label10: TLabel
      Left = 10
      Top = 99
      Width = 93
      Height = 13
      Alignment = taRightJustify
      Caption = 'Minutos Disponibles'
    end
    object Label12: TLabel
      Left = 10
      Top = 246
      Width = 63
      Height = 13
      Caption = 'Factor C (%)'
    end
    object Bevel2: TBevel
      Left = 4
      Top = 237
      Width = 226
      Height = 2
    end
    object Bevel5: TBevel
      Left = 5
      Top = 266
      Width = 226
      Height = 2
    end
    object EditMinutosContratados: TdxCurrencyEditPCP
      Left = 143
      Top = 26
      Width = 89
      TabOrder = 1
      OnExit = doHacerCalculos
      Alignment = taRightJustify
      AutoSize = False
      DisplayFormat = ',0.00'
      Value = 495
      Height = 21
      StoredValues = 1
    end
    object EditMinutosDescanso: TdxCurrencyEditPCP
      Left = 143
      Top = 50
      Width = 89
      TabOrder = 2
      OnExit = doHacerCalculos
      Alignment = taRightJustify
      AutoSize = False
      DisplayFormat = ',0.00'
      Height = 21
      StoredValues = 1
    end
    object EditOperariosDisponibles: TdxCurrencyEditPCP
      Left = 143
      Top = 74
      Width = 89
      TabOrder = 3
      OnExit = doHacerCalculos
      Alignment = taRightJustify
      AutoSize = False
      DisplayFormat = ',0'
      Value = 10
      Height = 21
      StoredValues = 1
    end
    object EditMinutosDisponibles: TdxCurrencyEditPCP
      Left = 143
      Top = 97
      Width = 89
      Enabled = False
      TabOrder = 4
      Alignment = taRightJustify
      AutoSize = False
      ReadOnly = True
      DisplayFormat = ',0'
      Height = 21
      StoredValues = 65
    end
    object EditPresencia: TdxCurrencyEditPCP
      Left = 143
      Top = 120
      Width = 89
      TabOrder = 5
      OnExit = doHacerCalculos
      Alignment = taRightJustify
      AutoSize = False
      DisplayFormat = ',0.00'
      Value = 100
      Height = 21
      StoredValues = 1
    end
    object EditMinutosPresencia: TdxCurrencyEditPCP
      Left = 143
      Top = 143
      Width = 89
      Enabled = False
      TabOrder = 6
      Alignment = taRightJustify
      AutoSize = False
      ReadOnly = True
      DisplayFormat = ',0'
      Height = 21
      StoredValues = 65
    end
    object EditEficienciaGrupo: TdxCurrencyEditPCP
      Left = 143
      Top = 167
      Width = 89
      TabOrder = 7
      OnExit = doHacerCalculos
      Alignment = taRightJustify
      AutoSize = False
      DisplayFormat = ',0.00'
      Value = 100
      Height = 21
      StoredValues = 1
    end
    object EditAprovechamientoGrupo: TdxCurrencyEditPCP
      Left = 143
      Top = 190
      Width = 89
      TabOrder = 8
      OnExit = doHacerCalculos
      Alignment = taRightJustify
      AutoSize = False
      DisplayFormat = ',0.00'
      Value = 100
      Height = 21
      StoredValues = 1
    end
    object EditMinutosReales: TdxCurrencyEditPCP
      Left = 143
      Top = 213
      Width = 89
      Enabled = False
      TabOrder = 9
      Alignment = taRightJustify
      AutoSize = False
      ReadOnly = True
      DisplayFormat = ',0'
      Height = 21
      StoredValues = 65
    end
    object edi_factor_c: TdxCurrencyEditPCP
      Left = 143
      Top = 242
      Width = 89
      Enabled = False
      TabOrder = 10
      Alignment = taRightJustify
      AutoSize = False
      ReadOnly = True
      DisplayFormat = ',0.00'
      Height = 21
      StoredValues = 65
    end
    object ajus1: TTBXRadioButton
      Left = 8
      Top = 272
      Width = 217
      Height = 17
      Caption = 'Ajustar al recorrido'
      Checked = True
      TabOrder = 11
      TabStop = True
    end
    object ajus2: TTBXRadioButton
      Left = 8
      Top = 296
      Width = 225
      Height = 17
      Caption = 'Iniciar al FINAL del anterior'
      TabOrder = 12
    end
    object ajus3: TTBXRadioButton
      Left = 8
      Top = 320
      Width = 225
      Height = 17
      Caption = 'Finalizar con el anterior'
      TabOrder = 13
    end
  end
  object dxContainer6: TdxContainer
    Left = 594
    Top = 0
    Width = 238
    Height = 420
    Align = alClient
    Caption = 'dxContainer6'
    About = 'Design eXperience. © 2002 M. Hoffmann'
    object fra_diferencias: TPCPFrame
      Tag = 93
      Left = 0
      Top = 71
      Width = 238
      Height = 93
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
      Visible = False
      Caption = 'Diferencias'
      Titulo_Color = 16244694
      object Label18: TLabel
        Left = 12
        Top = 29
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Minutos'
      end
      object Label19: TLabel
        Left = 12
        Top = 52
        Width = 117
        Height = 13
        Alignment = taRightJustify
        Caption = 'Equivalencia (Operarias)'
      end
      object Label20: TLabel
        Left = 11
        Top = 73
        Width = 119
        Height = 13
        Alignment = taRightJustify
        Caption = 'Horas Extras Requeridas'
      end
      object EditDiferenciaMinutos: TdxCurrencyEditPCP
        Left = 141
        Top = 26
        Width = 89
        Enabled = False
        TabOrder = 1
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0'
        Height = 21
        StoredValues = 65
      end
      object EditEquivalenciaOperarias: TdxCurrencyEditPCP
        Left = 141
        Top = 48
        Width = 89
        Enabled = False
        TabOrder = 2
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0'
        Height = 21
        StoredValues = 65
      end
      object EditHorasExtras: TdxCurrencyEditPCP
        Left = 141
        Top = 70
        Width = 89
        Enabled = False
        TabOrder = 3
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0.00'
        Height = 21
        StoredValues = 65
      end
    end
    object PCPFrame5: TPCPFrame
      Tag = 71
      Left = 0
      Top = 0
      Width = 238
      Height = 71
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
      Caption = 'Tiempos de balanceo'
      Titulo_Color = 16244694
      object Label21: TLabel
        Left = 10
        Top = 26
        Width = 106
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tiempo concedido real'
      end
      object Label22: TLabel
        Left = 13
        Top = 49
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tiempo Medio'
      end
      object EditTiempoMedio: TdxCurrencyEditPCP
        Left = 144
        Top = 46
        Width = 89
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0.0000'
        Height = 21
        StoredValues = 65
      end
      object EditTcr: TdxCurrencyEditPCP
        Left = 144
        Top = 24
        Width = 89
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0.0000'
        Height = 21
        StoredValues = 65
      end
    end
    object PCPFrame6: TPCPFrame
      Tag = 94
      Left = 0
      Top = 164
      Width = 238
      Height = 94
      Align = alTop
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Caption = 'Información del paquete'
      Titulo_Color = 16244694
      object Label23: TLabel
        Left = 5
        Top = 27
        Width = 100
        Height = 13
        Alignment = taRightJustify
        Caption = 'Paquetes Por Puesto'
      end
      object Label24: TLabel
        Left = 6
        Top = 50
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tamaño Paquete'
      end
      object Label25: TLabel
        Left = 7
        Top = 72
        Width = 98
        Height = 13
        Alignment = taRightJustify
        Caption = 'Puestos Simultáneos'
      end
      object EditPaquetePorPuesto: TdxCurrencyEditPCP
        Left = 141
        Top = 25
        Width = 89
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = doHacerCalculos
        Alignment = taRightJustify
        AutoSize = False
        DisplayFormat = ',0'
        Value = 1
        Height = 21
        StoredValues = 1
      end
      object EditTamanoPaquete: TdxCurrencyEditPCP
        Left = 141
        Top = 47
        Width = 89
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = doHacerCalculos
        Alignment = taRightJustify
        AutoSize = False
        DisplayFormat = ',0'
        Value = 25
        Height = 21
        StoredValues = 1
      end
      object EditPuestosSimultaneos: TdxCurrencyEditPCP
        Left = 141
        Top = 69
        Width = 89
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnExit = doHacerCalculos
        Alignment = taRightJustify
        AutoSize = False
        DisplayFormat = ',0'
        Height = 21
        StoredValues = 1
      end
    end
    object PCPFrame7: TPCPFrame
      Tag = 162
      Left = 0
      Top = 258
      Width = 238
      Height = 162
      Align = alClient
      BorderWidth = 2
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Caption = 'Tiempos de recorrido'
      Titulo_Color = 16244694
      Boton_Visible = False
      FlatBorder = True
      object Label26: TLabel
        Left = 11
        Top = 29
        Width = 19
        Height = 13
        Alignment = taRightJustify
        Caption = 'R1p'
      end
      object Label29: TLabel
        Left = 10
        Top = 55
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'RUp'
      end
      object Label30: TLabel
        Left = 126
        Top = 55
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'C1Op'
      end
      object Label31: TLabel
        Left = 133
        Top = 29
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'RCp'
      end
      object Editr1p: TdxCurrencyEditPCP
        Left = 33
        Top = 27
        Width = 71
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0.00'
        Height = 21
        StoredValues = 65
      end
      object editrup: TdxCurrencyEditPCP
        Left = 33
        Top = 51
        Width = 71
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0.00'
        Height = 21
        StoredValues = 65
      end
      object editrcp: TdxCurrencyEditPCP
        Left = 156
        Top = 27
        Width = 71
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0.00'
        Height = 21
        StoredValues = 65
      end
      object editc1op: TdxCurrencyEditPCP
        Left = 156
        Top = 51
        Width = 71
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Alignment = taRightJustify
        AutoSize = False
        ReadOnly = True
        DisplayFormat = ',0.00'
        Height = 21
        StoredValues = 65
      end
    end
  end
  object myTabla_Ventana: TRxMemoryData
    FieldDefs = <
      item
        Name = 'cons_prod_lote'
        DataType = ftInteger
      end
      item
        Name = 'cons_proceso'
        DataType = ftInteger
      end
      item
        Name = 'cons_planta'
        DataType = ftInteger
      end
      item
        Name = 'cons_plan_linea'
        DataType = ftInteger
      end
      item
        Name = 'cons_line_seccion'
        DataType = ftInteger
      end>
    Left = 432
    Top = 8
    object myTabla_Ventanacons_prod_lote: TIntegerField
      FieldName = 'cons_prod_lote'
    end
    object myTabla_Ventanacons_proceso: TIntegerField
      FieldName = 'cons_proceso'
    end
    object myTabla_Ventanacons_planta: TIntegerField
      FieldName = 'cons_planta'
    end
    object myTabla_Ventanacons_plan_linea: TIntegerField
      FieldName = 'cons_plan_linea'
    end
    object myTabla_Ventanacons_line_seccion: TIntegerField
      FieldName = 'cons_line_seccion'
    end
  end
  object myData_Ventana: TDataSource
    DataSet = myTabla_Ventana
    Left = 460
    Top = 8
  end
  object quer_list_operaciones: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Select     SECU_OPERACION,'
      '    CODI_OPER_COSTURA,'
      '    NOMB_OPER_COSTURA,'
      '    TIEMPO,'
      '    CONS_PROD_PAQU_TIPO,'
      '    CODI_RECU_FAMILIA'
      'from vis_pcp_prod_list_oper_costura'
      'where cons_prod_lote = :cons_prod_lote'
      'and cons_proceso = :cons_proceso'
      'order by secu_operacion')
    Left = 432
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cons_proceso'
        ParamType = ptUnknown
      end>
    object quer_list_operacionesSECU_OPERACION: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'SECU_OPERACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.SECU_OPERACION'
    end
    object quer_list_operacionesCODI_OPER_COSTURA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.CODI_OPER_COSTURA'
      Size = 12
    end
    object quer_list_operacionesNOMB_OPER_COSTURA: TStringField
      DisplayLabel = 'Operación'
      FieldName = 'NOMB_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.NOMB_OPER_COSTURA'
      Size = 30
    end
    object quer_list_operacionesTIEMPO: TFloatField
      DisplayLabel = 'Tiempo'
      FieldName = 'TIEMPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.TIEMPO'
      DisplayFormat = ',0.00'
    end
    object quer_list_operacionesCONS_PROD_PAQU_TIPO: TIntegerField
      FieldName = 'CONS_PROD_PAQU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.CONS_PROD_PAQU_TIPO'
      Visible = False
    end
    object quer_list_operacionesCODI_RECU_FAMILIA: TStringField
      DisplayLabel = 'Maquina'
      FieldName = 'CODI_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PROD_LIST_OPER_COSTURA.CODI_RECU_FAMILIA'
      Size = 12
    end
  end
  object data_list_operaciones: TDataSource
    DataSet = quer_list_operaciones
    Left = 462
    Top = 40
  end
  object quer_unid_lote: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Select sum(cant_unidades) as cant_unidades'
      'from vis_pcp_prod_unidades'
      'where cons_prod_lote = :cons_prod_lote')
    Left = 432
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end>
  end
  object quer_pers_disponible: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = myData_Ventana
    SQL.Strings = (
      'Select count(*) as nume_operarios From'
      'Con_Glo_Pers_Info_General'
      'where cons_planta = :cons_planta'
      'and cons_plan_linea = :cons_plan_linea'
      'and cons_line_seccion = :cons_line_seccion')
    Left = 430
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_planta'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cons_plan_linea'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cons_line_seccion'
        ParamType = ptUnknown
      end>
    object quer_pers_disponibleNUME_OPERARIOS: TIntegerField
      FieldName = 'NUME_OPERARIOS'
    end
  end
end

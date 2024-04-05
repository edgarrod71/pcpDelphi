inherited FN1_Pers_Prestaciones1: TFN1_Pers_Prestaciones1
  Left = 268
  Top = 181
  Width = 560
  Height = 487
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 552
  end
  inherited padr_shap_xp_down: TShape
    Top = 450
    Width = 552
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 552
  end
  inherited padr_pane_arriba: TPanel
    Width = 552
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 552
    inherited padr_beve_1: TBevel
      Width = 566
    end
    inherited padr_sepa_new: TShape
      Width = 546
    end
  end
  inherited padr_pane_info: TPanel
    Top = 459
    Width = 552
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
  inherited padr_titu_ventana: TPanel
    Width = 552
    inherited padr_pane_titulo: TPanel
      Width = 511
      Caption = 'Prestaciones Personal'
    end
    inherited padr_pane_2: TPanel
      Left = 513
    end
    inherited padr_pane_cerrar: TPanel
      Left = 531
    end
  end
  object dxPageControl1: TSCLPageControl [7]
    Left = 0
    Top = 77
    Width = 552
    Height = 373
    ActivePage = dxTabSheet1
    Align = alClient
    BoldCurrentTab = True
    Color = 16578290
    FlatColor = 10435335
    Margin = 5
    ParentColor = False
    TabColors.Shadow = 15582631
    TabColors.Unselected = 16578290
    TabIndex = 0
    TabOrder = 7
    Transparent = True
    FixedDimension = 19
    object dxTabSheet1: TSCLTabSheet
      Color = 16578290
      Caption = 'Datos Generales'
      object PCPFrame1: TPCPFrame
        Tag = 209
        Left = 16
        Top = 8
        Width = 185
        Height = 209
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Caption = 'Prestaciones'
        Titulo_Color = 16244694
        Boton_Visible = False
        FlatBorder = True
        object SCLDBLabel5: TSCLDBLabel
          Left = 33
          Top = 31
          Width = 75
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
          FocusControl = DBPrima
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Prima:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'PRIMA'
          Field = 'PRIMA'
        end
        object SCLDBLabel6: TSCLDBLabel
          Left = 33
          Top = 51
          Width = 75
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
          FocusControl = DBPrima_Extra
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Prima Extra:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'PRIM_EXTRA'
          Field = 'PRIM_EXTRA'
        end
        object SCLDBLabel7: TSCLDBLabel
          Left = 33
          Top = 71
          Width = 75
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
          FocusControl = DBVacaciones
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Vacaciones:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'VACACIONES'
          Field = 'VACACIONES'
        end
        object SCLDBLabel8: TSCLDBLabel
          Left = 12
          Top = 175
          Width = 96
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
          FocusControl = DBTotal_Prestaciones
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Total:'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel9: TSCLDBLabel
          Left = 33
          Top = 91
          Width = 75
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
          FocusControl = DBCesantias
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Cesantías:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CESANTIAS'
          Field = 'CESANTIAS'
        end
        object SCLDBLabel10: TSCLDBLabel
          Left = 24
          Top = 111
          Width = 84
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
          FocusControl = DBInteres_Cesantias
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Int. Cesantías:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'INTE_CESANTIAS'
          Field = 'INTE_CESANTIAS'
        end
        object SCLDBLabel11: TSCLDBLabel
          Left = 33
          Top = 131
          Width = 75
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
          FocusControl = DBOtros
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Otros:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'OTROS'
          Field = 'OTROS'
        end
        object DBPrima: TdxDBEdit
          Left = 110
          Top = 31
          Width = 54
          TabOrder = 1
          OnExit = DBPrimaExit
          DataField = 'PRIMA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBPrima_Extra: TdxDBEdit
          Left = 110
          Top = 51
          Width = 54
          TabOrder = 2
          OnExit = DBPrimaExit
          DataField = 'PRIM_EXTRA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBVacaciones: TdxDBEdit
          Left = 110
          Top = 71
          Width = 54
          TabOrder = 3
          OnExit = DBPrimaExit
          DataField = 'VACACIONES'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBTotal_Prestaciones: TdxDBEdit
          Left = 110
          Top = 175
          Width = 54
          Enabled = False
          TabOrder = 4
          TabStop = False
          DataField = 'TOTA_PRESTACIONES'
          DataSource = data_ventana
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object DBCesantias: TdxDBEdit
          Left = 110
          Top = 91
          Width = 54
          TabOrder = 5
          OnExit = DBPrimaExit
          DataField = 'CESANTIAS'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBInteres_Cesantias: TdxDBEdit
          Left = 110
          Top = 111
          Width = 54
          TabOrder = 6
          OnExit = DBPrimaExit
          DataField = 'INTE_CESANTIAS'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBOtros: TdxDBEdit
          Left = 110
          Top = 131
          Width = 54
          TabOrder = 7
          OnExit = DBPrimaExit
          DataField = 'OTROS'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
      end
      object PCPFrame2: TPCPFrame
        Tag = 209
        Left = 208
        Top = 8
        Width = 321
        Height = 209
        BorderWidth = 2
        Constraints.MinHeight = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Caption = 'Aportes parafiscales'
        Titulo_Color = 16244694
        Boton_Visible = False
        FlatBorder = True
        object SCLDBLabel1: TSCLDBLabel
          Left = 12
          Top = 47
          Width = 101
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
          Caption = 'Salud:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'SALU_EMPRESA'
          Field = 'SALU_EMPRESA'
        end
        object SCLDBLabel2: TSCLDBLabel
          Left = 12
          Top = 67
          Width = 101
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
          Caption = 'Pensión:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'PENS_EMPRESA'
          Field = 'PENS_EMPRESA'
        end
        object SCLDBLabel3: TSCLDBLabel
          Left = 8
          Top = 87
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
          Alignment = taRightJustify
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Caja Compensación:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'CAJA_EMPRESA'
          Field = 'CAJA_EMPRESA'
        end
        object SCLDBLabel12: TSCLDBLabel
          Left = 12
          Top = 127
          Width = 101
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
          Caption = 'SENA:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'SENA_EMPRESA'
          Field = 'SENA_EMPRESA'
        end
        object SCLDBLabel13: TSCLDBLabel
          Left = 12
          Top = 145
          Width = 101
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
          Caption = 'ARP:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ARP_EMPRESA'
          Field = 'ARP_EMPRESA'
        end
        object SCLDBLabel14: TSCLDBLabel
          Left = 12
          Top = 107
          Width = 101
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
          Caption = 'ICBF:'
          Layout = tlTop
          Transparent = True
          DataSource = data_ventana
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
          DataField = 'ICBF_EMPRESA'
          Field = 'ICBF_EMPRESA'
        end
        object SCLDBLabel15: TSCLDBLabel
          Left = 126
          Top = 25
          Width = 54
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
          Alignment = taCenter
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Empresa'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel16: TSCLDBLabel
          Left = 190
          Top = 25
          Width = 54
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
          Alignment = taCenter
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Empleado'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel17: TSCLDBLabel
          Left = 254
          Top = 25
          Width = 54
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
          Alignment = taCenter
          WordWrap = False
          Bevel = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Light = lpLeftTop
          Caption = 'Total'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object SCLDBLabel4: TSCLDBLabel
          Left = 12
          Top = 177
          Width = 101
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
          Caption = 'Totales:'
          Layout = tlTop
          Transparent = True
          SCLPropiedades = Variables
          ColorRequerido = 12615680
          ColorNoRequerido = clWindowText
        end
        object DBSalud_Empresa: TdxDBEdit
          Left = 126
          Top = 47
          Width = 54
          TabOrder = 1
          DataField = 'SALU_EMPRESA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBPension_Empresa: TdxDBEdit
          Left = 126
          Top = 67
          Width = 54
          TabOrder = 2
          DataField = 'PENS_EMPRESA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBCaja_Compensacion: TdxDBEdit
          Left = 126
          Top = 87
          Width = 54
          TabOrder = 3
          DataField = 'CAJA_EMPRESA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBICBF: TdxDBEdit
          Left = 126
          Top = 107
          Width = 54
          TabOrder = 4
          DataField = 'ICBF_EMPRESA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBSena: TdxDBEdit
          Left = 126
          Top = 127
          Width = 54
          TabOrder = 5
          DataField = 'SENA_EMPRESA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBArp: TdxDBEdit
          Left = 126
          Top = 147
          Width = 54
          TabOrder = 6
          DataField = 'ARP_EMPRESA'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBSalud_Empleado: TdxDBEdit
          Left = 190
          Top = 47
          Width = 54
          TabOrder = 7
          DataField = 'SALU_EMPLEADO'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBPension_Empleado: TdxDBEdit
          Left = 190
          Top = 67
          Width = 54
          TabOrder = 8
          DataField = 'PENS_EMPLEADO'
          DataSource = data_ventana
          StyleController = padr_estilo
        end
        object DBTotal_Salud: TdxDBEdit
          Left = 254
          Top = 47
          Width = 54
          Enabled = False
          TabOrder = 9
          TabStop = False
          DataField = 'TOTA_SALUD'
          DataSource = data_ventana
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object DBTotal_Pension: TdxDBEdit
          Left = 254
          Top = 67
          Width = 54
          Enabled = False
          TabOrder = 10
          TabStop = False
          DataField = 'TOTA_PENSION'
          DataSource = data_ventana
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object DBTotal_Caja: TdxDBEdit
          Left = 254
          Top = 87
          Width = 54
          Enabled = False
          TabOrder = 11
          TabStop = False
          DataField = 'TOTA_CAJA'
          DataSource = data_ventana
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object DBTotalICBF: TdxDBEdit
          Left = 254
          Top = 107
          Width = 54
          Enabled = False
          TabOrder = 12
          TabStop = False
          DataField = 'TOTA_ICBF'
          DataSource = data_ventana
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object DBTotal_Sena: TdxDBEdit
          Left = 254
          Top = 127
          Width = 54
          Enabled = False
          TabOrder = 13
          TabStop = False
          DataField = 'TOTA_SENA'
          DataSource = data_ventana
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object DBTotal_Arp: TdxDBEdit
          Left = 254
          Top = 147
          Width = 54
          Enabled = False
          TabOrder = 14
          TabStop = False
          DataField = 'TOTA_ARP'
          DataSource = data_ventana
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object DBTotal_Empresa: TdxDBEdit
          Left = 126
          Top = 177
          Width = 54
          Enabled = False
          TabOrder = 15
          TabStop = False
          DataField = 'TOTA_EMPRESA'
          DataSource = data_ventana
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object DBTotal_Empleado: TdxDBEdit
          Left = 190
          Top = 177
          Width = 54
          Enabled = False
          TabOrder = 16
          TabStop = False
          DataField = 'TOTA_EMPLEADO'
          DataSource = data_ventana
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
        object DBTotal_Parafiscales: TdxDBEdit
          Left = 254
          Top = 177
          Width = 54
          Enabled = False
          TabOrder = 17
          TabStop = False
          DataField = 'TOTA_PARAFISCALES'
          DataSource = data_ventana
          ReadOnly = True
          StyleController = padr_estilo
          StoredValues = 64
        end
      end
    end
    object dxTabSheet2: TSCLTabSheet
      Color = 16578290
      Caption = 'Historial'
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 0
        Width = 546
        Height = 340
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CONS_PERS_PRES_HISTORIAL'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        DataSource = DSQPrestaciones
        Filter.Criteria = {00000000}
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        object dxDBGrid1FECH_SISTEMA: TdxDBGridDateColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FECH_SISTEMA'
        end
        object dxDBGrid1USUA_SISTEMA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'USUA_SISTEMA'
        end
        object dxDBGrid1CONS_PERS_PRES_HISTORIAL: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONS_PERS_PRES_HISTORIAL'
        end
        object dxDBGrid1SALU_EMPRESA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SALU_EMPRESA'
        end
        object dxDBGrid1SALU_EMPLEADO: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SALU_EMPLEADO'
        end
        object dxDBGrid1PENS_EMPRESA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PENS_EMPRESA'
        end
        object dxDBGrid1PENS_EMPLEADO: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PENS_EMPLEADO'
        end
        object dxDBGrid1CAJA_EMPRESA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CAJA_EMPRESA'
        end
        object dxDBGrid1TOTA_PARAFISCALES: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TOTA_PARAFISCALES'
        end
        object dxDBGrid1PRIMA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRIMA'
        end
        object dxDBGrid1PRIM_EXTRA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRIM_EXTRA'
        end
        object dxDBGrid1VACACIONES: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VACACIONES'
        end
        object dxDBGrid1CESANTIAS: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CESANTIAS'
        end
        object dxDBGrid1INTE_CESANTIAS: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'INTE_CESANTIAS'
        end
        object dxDBGrid1OTROS: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'OTROS'
        end
        object dxDBGrid1TOTA_PRESTACIONES: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TOTA_PRESTACIONES'
        end
        object dxDBGrid1SENA_EMPRESA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SENA_EMPRESA'
        end
        object dxDBGrid1ARP_EMPRESA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ARP_EMPRESA'
        end
        object dxDBGrid1ICBF_EMPRESA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ICBF_EMPRESA'
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 451
    Width = 552
    inherited padr_beve_abajo: TBevel
      Width = 546
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 552
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_imprimir: TAction
      Visible = True
    end
    inherited padr_acti_ayuda: TAction
      Visible = True
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = True
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = True
    end
    inherited padr_acti_modificar: TDataSetEdit
      Enabled = True
      Visible = True
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = True
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = True
      Visible = True
    end
  end
  inherited Tabla_Ventana: TTable
    OnCalcFields = Tabla_VentanaCalcFields
    TableName = 'GLO_PERS_PRESTACIONES'
    object Tabla_VentanaSALU_EMPRESA: TFloatField
      DisplayLabel = 'Salud Empresa'
      FieldName = 'SALU_EMPRESA'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaSALU_EMPLEADO: TFloatField
      DisplayLabel = 'Salud Empleado'
      FieldName = 'SALU_EMPLEADO'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaPENS_EMPLEADO: TFloatField
      DisplayLabel = 'Pensión Empresa'
      FieldName = 'PENS_EMPLEADO'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaPENS_EMPRESA: TFloatField
      DisplayLabel = 'Pensión Empleado'
      FieldName = 'PENS_EMPRESA'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaCAJA_EMPRESA: TFloatField
      DisplayLabel = 'Caja Compensación'
      FieldName = 'CAJA_EMPRESA'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaTOTA_PARAFISCALES: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total Parafiscales'
      FieldName = 'TOTA_PARAFISCALES'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaPRIMA: TFloatField
      DisplayLabel = 'Prima'
      FieldName = 'PRIMA'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaPRIM_EXTRA: TFloatField
      DisplayLabel = 'Prima Extra'
      FieldName = 'PRIM_EXTRA'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaVACACIONES: TFloatField
      DisplayLabel = 'Vacaciones'
      FieldName = 'VACACIONES'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaCESANTIAS: TFloatField
      DisplayLabel = 'Cesantías'
      FieldName = 'CESANTIAS'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaINTE_CESANTIAS: TFloatField
      DisplayLabel = 'Int. Cesantías'
      FieldName = 'INTE_CESANTIAS'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaOTROS: TFloatField
      DisplayLabel = 'Otros'
      FieldName = 'OTROS'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaTOTA_PRESTACIONES: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total Prestaciones'
      FieldName = 'TOTA_PRESTACIONES'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaSENA_EMPRESA: TFloatField
      DisplayLabel = 'SENA'
      FieldName = 'SENA_EMPRESA'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaARP_EMPRESA: TFloatField
      DisplayLabel = 'ARP'
      FieldName = 'ARP_EMPRESA'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaICBF_EMPRESA: TFloatField
      DisplayLabel = 'ICBF'
      FieldName = 'ICBF_EMPRESA'
      Required = True
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
    end
    object Tabla_VentanaFECH_SISTEMA: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Required = True
    end
    object Tabla_VentanaUSUA_SISTEMA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Required = True
    end
    object Tabla_VentanaTOTA_SALUD: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTA_SALUD'
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
      Calculated = True
    end
    object Tabla_VentanaTOTA_PENSION: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTA_PENSION'
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
      Calculated = True
    end
    object Tabla_VentanaTOTA_CAJA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTA_CAJA'
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
      Calculated = True
    end
    object Tabla_VentanaTOTA_ICBF: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTA_ICBF'
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
      Calculated = True
    end
    object Tabla_VentanaTOTA_SENA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTA_SENA'
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
      Calculated = True
    end
    object Tabla_VentanaTOTA_ARP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTA_ARP'
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
      Calculated = True
    end
    object Tabla_VentanaTOTA_EMPRESA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTA_EMPRESA'
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
      Calculated = True
    end
    object Tabla_VentanaTOTA_EMPLEADO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTA_EMPLEADO'
      DisplayFormat = ',0.00 %'
      EditFormat = ',0.00'
      Calculated = True
    end
  end
  inherited padr_quer_consecutivo: TQuery
    SQL.Strings = (
      '.')
  end
  object QPrestaciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_PRES_HISTORIAL'
      'ORDER BY CONS_PERS_PRES_HISTORIAL')
    Left = 216
    Top = 332
    object QPrestacionesCONS_PERS_PRES_HISTORIAL: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_PRES_HISTORIAL'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.CONS_PERS_PRES_HISTORIAL'
    end
    object QPrestacionesSALU_EMPRESA: TFloatField
      DisplayLabel = 'Salud Empresa'
      FieldName = 'SALU_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.SALU_EMPRESA'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesSALU_EMPLEADO: TFloatField
      DisplayLabel = 'Salud Empleado'
      FieldName = 'SALU_EMPLEADO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.SALU_EMPLEADO'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesPENS_EMPRESA: TFloatField
      DisplayLabel = 'Pensión Empresa'
      FieldName = 'PENS_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.PENS_EMPRESA'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesPENS_EMPLEADO: TFloatField
      DisplayLabel = 'Pensión Empleado'
      FieldName = 'PENS_EMPLEADO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.PENS_EMPLEADO'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesCAJA_EMPRESA: TFloatField
      DisplayLabel = 'Caja Compensación Empresa'
      FieldName = 'CAJA_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.CAJA_EMPRESA'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesTOTA_PARAFISCALES: TFloatField
      DisplayLabel = 'Toral PArafiscales'
      FieldName = 'TOTA_PARAFISCALES'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.TOTA_PARAFISCALES'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesPRIMA: TFloatField
      DisplayLabel = 'Prima'
      FieldName = 'PRIMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.PRIMA'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesPRIM_EXTRA: TFloatField
      DisplayLabel = 'Prima Extra'
      FieldName = 'PRIM_EXTRA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.PRIM_EXTRA'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesVACACIONES: TFloatField
      DisplayLabel = 'Vacaciones'
      FieldName = 'VACACIONES'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.VACACIONES'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesCESANTIAS: TFloatField
      DisplayLabel = 'Cesantías'
      FieldName = 'CESANTIAS'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.CESANTIAS'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesINTE_CESANTIAS: TFloatField
      DisplayLabel = 'Int. Cesantías'
      FieldName = 'INTE_CESANTIAS'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.INTE_CESANTIAS'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesOTROS: TFloatField
      DisplayLabel = 'Otros'
      FieldName = 'OTROS'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.OTROS'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesTOTA_PRESTACIONES: TFloatField
      DisplayLabel = 'Total Prestaciones'
      FieldName = 'TOTA_PRESTACIONES'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.TOTA_PRESTACIONES'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesSENA_EMPRESA: TFloatField
      DisplayLabel = 'SENA'
      FieldName = 'SENA_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.SENA_EMPRESA'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesARP_EMPRESA: TFloatField
      DisplayLabel = 'ARP'
      FieldName = 'ARP_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.ARP_EMPRESA'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesICBF_EMPRESA: TFloatField
      DisplayLabel = 'ICBF'
      FieldName = 'ICBF_EMPRESA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.ICBF_EMPRESA'
      DisplayFormat = ',0.00 %'
    end
    object QPrestacionesFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.FECH_SISTEMA'
    end
    object QPrestacionesUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_PRES_HISTORIAL.USUA_SISTEMA'
    end
  end
  object DSQPrestaciones: TDataSource
    AutoEdit = False
    DataSet = QPrestaciones
    Left = 248
    Top = 332
  end
end

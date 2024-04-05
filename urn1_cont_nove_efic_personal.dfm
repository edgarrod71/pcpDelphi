inherited rn1_cont_nove_efic_personal: Trn1_cont_nove_efic_personal
  Width = 895
  Caption = 'rn1_cont_nove_efic_personal'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Reporte: TRLReport
    Margins.LeftMargin = 15
    Title = 'Reporte eficiencia diaria operario'
    inherited padr_band_titulo: TRLBand
      Height = 126
      AutoSize = True
      object pane_filtro: TRLPanel
        Left = 0
        Top = 41
        Width = 721
        Height = 20
        Align = faTop
        Alignment = taJustify
        BeforePrint = pane_filtroBeforePrint
        object RLLabel1: TRLLabel
          Left = 8
          Top = 4
          Width = 35
          Height = 14
          Caption = 'Planta:'
        end
        object RLLabel2: TRLLabel
          Left = 257
          Top = 4
          Width = 32
          Height = 14
          Caption = 'Línea:'
        end
        object RLLabel4: TRLLabel
          Left = 492
          Top = 4
          Width = 45
          Height = 14
          Caption = 'Sección:'
        end
        object labe_planta: TRLLabel
          Left = 63
          Top = 2
          Width = 180
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = ' '
        end
        object labe_linea: TRLLabel
          Left = 293
          Top = 1
          Width = 180
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = ' '
        end
        object labe_seccion: TRLLabel
          Left = 540
          Top = 2
          Width = 180
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Caption = ' '
        end
      end
      object pane_periodo: TRLPanel
        Left = 0
        Top = 61
        Width = 721
        Height = 27
        Align = faTop
        BeforePrint = SoloImprimirPrimera
        object RLLabel6: TRLLabel
          Left = 478
          Top = 4
          Width = 59
          Height = 14
          Caption = 'Período del:'
        end
        object labe_fech_inicial: TRLLabel
          Left = 540
          Top = 2
          Width = 78
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
        end
        object labe_fech_Final: TRLLabel
          Left = 636
          Top = 2
          Width = 84
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
        end
        object RLLabel8: TRLLabel
          Left = 621
          Top = 4
          Width = 14
          Height = 14
          Caption = 'al:'
        end
        object pane_operarios: TRLPanel
          Left = 0
          Top = 0
          Width = 313
          Height = 21
          object RLLabel5: TRLLabel
            Left = 7
            Top = 4
            Width = 54
            Height = 14
            Caption = 'Operarios:'
          end
          object labe_cuenta: TRLLabel
            Left = 63
            Top = 2
            Width = 41
            Height = 18
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
          end
        end
      end
      object pane_titulos: TRLPanel
        Left = 0
        Top = 88
        Width = 721
        Height = 38
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLLabel10: TRLLabel
          Left = 98
          Top = 4
          Width = 33
          Height = 14
          Caption = 'Fecha'
        end
        object RLMemo1: TRLMemo
          Left = 208
          Top = 4
          Width = 57
          Height = 30
          AutoSize = False
          Lines.Strings = (
            'En '
            'estándar')
        end
        object RLMemo2: TRLMemo
          Left = 272
          Top = 4
          Width = 57
          Height = 30
          AutoSize = False
          Lines.Strings = (
            'Ajuste al mínimo')
        end
        object RLMemo3: TRLMemo
          Left = 336
          Top = 4
          Width = 57
          Height = 30
          AutoSize = False
          Lines.Strings = (
            'NO'
            'estándar')
        end
        object RLMemo4: TRLMemo
          Left = 400
          Top = 4
          Width = 57
          Height = 30
          AutoSize = False
          Lines.Strings = (
            'Ajuste al mínimo')
        end
        object RLMemo5: TRLMemo
          Left = 464
          Top = 4
          Width = 57
          Height = 30
          AutoSize = False
          Lines.Strings = (
            'Horas extras')
        end
        object RLMemo6: TRLMemo
          Left = 528
          Top = 4
          Width = 57
          Height = 30
          AutoSize = False
          Lines.Strings = (
            'Bono H/Extras')
        end
        object RLMemo7: TRLMemo
          Left = 592
          Top = 4
          Width = 57
          Height = 30
          AutoSize = False
          Lines.Strings = (
            'Promedio eficiencia')
        end
        object RLMemo8: TRLMemo
          Left = 656
          Top = 4
          Width = 57
          Height = 30
          AutoSize = False
          Lines.Strings = (
            'Ajuste al mínimo')
        end
      end
    end
    inherited padr_band_pie: TRLBand
      Top = 256
    end
    object RLGroup1: TRLGroup
      Left = 57
      Top = 164
      Width = 721
      Height = 69
      DataFields = 'CONS_PERSONAL'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 721
        Height = 20
        BandType = btHeader
        Color = 14408667
        ParentColor = False
        Transparent = False
        object RLDBText1: TRLDBText
          Left = 5
          Top = 4
          Width = 81
          Height = 14
          AutoSize = False
          DataField = 'CODI_PERSONAL'
          DataSource = data_reporte
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 96
          Top = 4
          Width = 220
          Height = 14
          AutoSize = False
          DataField = 'NOMB_COMPLETO'
          DataSource = data_reporte
          Transparent = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 20
        Width = 721
        Height = 19
        object RLDBText3: TRLDBText
          Left = 97
          Top = 3
          Width = 96
          Height = 14
          AutoSize = False
          DataField = 'FECHA'
          DataSource = data_reporte
          DisplayMask = 'dd/mm/yyyy'
        end
        object RLDBText4: TRLDBText
          Left = 209
          Top = 3
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'EFIC_ESTANDAR'
          DataSource = data_reporte
          DisplayMask = ',0.00 %'
        end
        object RLDBText5: TRLDBText
          Left = 273
          Top = 3
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALO_AJUS_MINI_ESTANDAR'
          DataSource = data_reporte
          DisplayMask = ',0.00'
        end
        object RLDBText6: TRLDBText
          Left = 337
          Top = 3
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'EFIC_NO_ESTANDAR'
          DataSource = data_reporte
          DisplayMask = ',0.00 %'
        end
        object RLDBText7: TRLDBText
          Left = 401
          Top = 3
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALO_AJUS_MINI_NO_ESTANDA'
          DataSource = data_reporte
          DisplayMask = ',0.00'
        end
        object RLDBText8: TRLDBText
          Left = 465
          Top = 3
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TIEM_EXTR_TOTAL'
          DataSource = data_reporte
          DisplayMask = ',0.00'
        end
        object RLDBText9: TRLDBText
          Left = 529
          Top = 3
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALO_BONO_EXTR_TOTAL'
          DataSource = data_reporte
          DisplayMask = ',0.00'
        end
        object RLDBText10: TRLDBText
          Left = 593
          Top = 3
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'EFIC_TOTAL'
          DataSource = data_reporte
          DisplayMask = ',0.00 %'
        end
        object RLDBText11: TRLDBText
          Left = 657
          Top = 3
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALO_AJUS_MINI_TOTAL'
          DataSource = data_reporte
          DisplayMask = ',0.00'
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 39
        Width = 721
        Height = 23
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 209
          Top = 5
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'EFIC_ESTANDAR'
          DataSource = data_reporte
          DisplayMask = ',0.00 %'
          Info = riAverage
        end
        object RLDraw1: TRLDraw
          Left = 207
          Top = 0
          Width = 512
          Height = 6
          DrawKind = dkLine
        end
        object RLDBResult2: TRLDBResult
          Left = 273
          Top = 5
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALO_AJUS_MINI_ESTANDAR'
          DataSource = data_reporte
          DisplayMask = ',0.00'
          Info = riSum
        end
        object RLDBResult3: TRLDBResult
          Left = 337
          Top = 5
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'EFIC_NO_ESTANDAR'
          DataSource = data_reporte
          DisplayMask = ',0.00 %'
          Info = riAverage
        end
        object RLDBResult4: TRLDBResult
          Left = 401
          Top = 5
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALO_AJUS_MINI_NO_ESTANDA'
          DataSource = data_reporte
          DisplayMask = ',0.00'
          Info = riSum
        end
        object RLDBResult5: TRLDBResult
          Left = 465
          Top = 5
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TIEM_EXTR_TOTAL'
          DataSource = data_reporte
          DisplayMask = ',0.00'
          Info = riSum
        end
        object RLDBResult6: TRLDBResult
          Left = 529
          Top = 5
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALO_BONO_EXTR_TOTAL'
          DataSource = data_reporte
          DisplayMask = ',0.00'
          Info = riSum
        end
        object RLDBResult7: TRLDBResult
          Left = 593
          Top = 5
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'EFIC_TOTAL'
          DataSource = data_reporte
          DisplayMask = ',0.00 %'
          Info = riAverage
        end
        object RLDBResult8: TRLDBResult
          Left = 657
          Top = 5
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALO_AJUS_MINI_TOTAL'
          DataSource = data_reporte
          DisplayMask = ',0.00'
          Info = riAverage
        end
      end
    end
    object RLBand4: TRLBand
      Left = 57
      Top = 233
      Width = 721
      Height = 23
      BandType = btSummary
      object RLDBResult9: TRLDBResult
        Left = 209
        Top = 5
        Width = 56
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'EFIC_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00 %'
        Info = riAverage
      end
      object RLDraw2: TRLDraw
        Left = 207
        Top = 0
        Width = 512
        Height = 6
        DrawKind = dkLine
      end
      object RLDBResult10: TRLDBResult
        Left = 273
        Top = 5
        Width = 56
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_AJUS_MINI_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult11: TRLDBResult
        Left = 337
        Top = 5
        Width = 56
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'EFIC_NO_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00 %'
        Info = riAverage
      end
      object RLDBResult12: TRLDBResult
        Left = 401
        Top = 5
        Width = 56
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_AJUS_MINI_NO_ESTANDA'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult13: TRLDBResult
        Left = 465
        Top = 5
        Width = 56
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_EXTR_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult14: TRLDBResult
        Left = 529
        Top = 5
        Width = 56
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_EXTR_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult15: TRLDBResult
        Left = 593
        Top = 5
        Width = 56
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'EFIC_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00 %'
        Info = riAverage
      end
      object RLDBResult16: TRLDBResult
        Left = 657
        Top = 5
        Width = 56
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_AJUS_MINI_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riAverage
      end
      object RLLabel11: TRLLabel
        Left = 96
        Top = 4
        Width = 33
        Height = 14
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited data_reporte: TDataSource
    DataSet = myTabla_Reporte
  end
  object myTabla_Reporte: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
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
    Left = 536
    Top = 16
    object myTabla_ReporteFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".FECHA'
    end
    object myTabla_ReporteCONS_PERSONAL: TIntegerField
      FieldName = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PERSONAL'
    end
    object myTabla_ReporteCODI_PERSONAL: TStringField
      FieldName = 'CODI_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CODI_PERSONAL'
      Size = 12
    end
    object myTabla_ReporteNOMB_COMPLETO: TStringField
      FieldName = 'NOMB_COMPLETO'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_COMPLETO'
      Size = 102
    end
    object myTabla_ReporteCONS_EMPRESA: TIntegerField
      FieldName = 'CONS_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_EMPRESA'
    end
    object myTabla_ReporteNOMB_EMPRESA: TStringField
      FieldName = 'NOMB_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_EMPRESA'
      Size = 60
    end
    object myTabla_ReporteCONS_PLANTA: TIntegerField
      FieldName = 'CONS_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PLANTA'
    end
    object myTabla_ReporteNOMB_PLANTA: TStringField
      FieldName = 'NOMB_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_PLANTA'
      Size = 60
    end
    object myTabla_ReporteCONS_PLAN_LINEA: TIntegerField
      FieldName = 'CONS_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_PLAN_LINEA'
    end
    object myTabla_ReporteNOMB_PLAN_LINEA: TStringField
      FieldName = 'NOMB_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_PLAN_LINEA'
      Size = 60
    end
    object myTabla_ReporteCONS_LINE_SECCION: TIntegerField
      FieldName = 'CONS_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".CONS_LINE_SECCION'
    end
    object myTabla_ReporteNOMB_LINE_SECCION: TStringField
      FieldName = 'NOMB_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".NOMB_LINE_SECCION'
      Size = 60
    end
    object myTabla_ReporteREPORTA: TIntegerField
      FieldName = 'REPORTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".REPORTA'
    end
    object myTabla_ReporteTIEM_TRAB_ESTANDAR: TFloatField
      FieldName = 'TIEM_TRAB_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_TRAB_NO_ESTANDAR: TFloatField
      FieldName = 'TIEM_TRAB_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_TRAB_TOTAL: TFloatField
      FieldName = 'TIEM_TRAB_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_TRAB_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_PROD_ESTANDAR: TFloatField
      FieldName = 'TIEM_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_PROD_NO_ESTANDAR: TFloatField
      FieldName = 'TIEM_PROD_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_PROD_TOTAL: TFloatField
      FieldName = 'TIEM_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_PROD_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteEFIC_NO_ESTANDAR: TFloatField
      FieldName = 'EFIC_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".EFIC_NO_ESTANDAR'
      DisplayFormat = ',0.00 %'
    end
    object myTabla_ReporteEFIC_ESTANDAR: TFloatField
      FieldName = 'EFIC_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".EFIC_ESTANDAR'
      DisplayFormat = ',0.00 %'
    end
    object myTabla_ReporteEFIC_TOTAL: TFloatField
      FieldName = 'EFIC_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".EFIC_TOTAL'
      DisplayFormat = ',0.00 %'
    end
    object myTabla_ReporteVALO_GANA_PROD_ESTANDAR: TFloatField
      FieldName = 'VALO_GANA_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_GANA_PROD_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_GANA_PROD_NO_ESTANDA: TFloatField
      FieldName = 'VALO_GANA_PROD_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_GANA_PROD_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_GANA_PROD_TOTAL: TFloatField
      FieldName = 'VALO_GANA_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_GANA_PROD_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_AJUS_MINI_ESTANDAR: TFloatField
      FieldName = 'VALO_AJUS_MINI_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_AJUS_MINI_NO_ESTANDA: TFloatField
      FieldName = 'VALO_AJUS_MINI_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_AJUS_MINI_TOTAL: TFloatField
      FieldName = 'VALO_AJUS_MINI_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_AJUS_MINI_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_PROD_ESTANDAR: TFloatField
      FieldName = 'VALO_BONO_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_PROD_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_PROD_NO_ESTANDA: TFloatField
      FieldName = 'VALO_BONO_PROD_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_PROD_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_PROD_TOTAL: TFloatField
      FieldName = 'VALO_BONO_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_PROD_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_EXTR_ESTANDAR: TFloatField
      FieldName = 'TIEM_EXTR_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_EXTR_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_EXTR_NO_ESTANDAR: TFloatField
      FieldName = 'TIEM_EXTR_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_EXTR_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_EXTR_TOTAL: TFloatField
      FieldName = 'TIEM_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".TIEM_EXTR_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_EXTR_ESTANDAR: TFloatField
      FieldName = 'VALO_BONO_EXTR_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_EXTR_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_EXTR_NO_ESTANDA: TFloatField
      FieldName = 'VALO_BONO_EXTR_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_EXTR_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_EXTR_TOTAL: TFloatField
      FieldName = 'VALO_BONO_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_BONO_EXTR_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_DEVE_ESTANDAR: TFloatField
      FieldName = 'VALO_DEVE_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_DEVE_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_DEVE_NO_ESTANDAR: TFloatField
      FieldName = 'VALO_DEVE_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_DEVE_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_DEVE_TOTAL: TFloatField
      FieldName = 'VALO_DEVE_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_efic_diarias.DB".VALO_DEVE_TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object quer_Cuenta: TQuery
    DatabaseName = 'PCPLOCAL'
    SQL.Strings = (
      'select count(distinct cons_personal) as cuantos'
      'from tmpRpt_cont_efic_diarias')
    Left = 600
    Top = 16
  end
end

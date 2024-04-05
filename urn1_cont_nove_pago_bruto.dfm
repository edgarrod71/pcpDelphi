inherited rn1_cont_nove_pago_bruto: Trn1_cont_nove_pago_bruto
  Left = 26
  Top = 138
  Width = 774
  HorzScrollBar.Position = 314
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Reporte: TRLReport
    Left = -306
    Width = 1056
    Height = 816
    Margins.LeftMargin = 15
    PageSetup.Orientation = poLandscape
    Title = 'Reporte de pago bruto'
    inherited padr_band_titulo: TRLBand
      Width = 961
      Height = 133
      AutoSize = True
      inherited padr_pane_titulo: TRLPanel
        Width = 961
        Height = 50
        inherited padr_labe_nomb_reporte: TRLSystemInfo
          Left = 915
        end
        inherited padr_repo_pane_info_top: TRLPanel
          Left = 242
          Top = 29
          inherited padr_pane_rl_fech_pagina: TRLPanel
            inherited adr_repo_labe_fech_sistema: TRLLabel
              Left = 553
            end
            inherited padr_repo_edit_fech_sistema: TRLSystemInfo
              Left = 592
            end
          end
        end
      end
      object pane_filtro: TRLPanel
        Left = 0
        Top = 50
        Width = 961
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
          Left = 369
          Top = 4
          Width = 32
          Height = 14
          Caption = 'Línea:'
        end
        object RLLabel4: TRLLabel
          Left = 688
          Top = 4
          Width = 45
          Height = 14
          Caption = 'Sección:'
        end
        object labe_planta: TRLLabel
          Left = 63
          Top = 2
          Width = 225
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
          Left = 405
          Top = 1
          Width = 225
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
          Left = 736
          Top = 2
          Width = 225
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
        Top = 70
        Width = 961
        Height = 27
        Align = faTop
        object RLLabel6: TRLLabel
          Left = 674
          Top = 4
          Width = 59
          Height = 14
          Caption = 'Período del:'
        end
        object labe_fech_inicial: TRLLabel
          Left = 736
          Top = 2
          Width = 89
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
        end
        object labe_fech_Final: TRLLabel
          Left = 866
          Top = 2
          Width = 95
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
        end
        object RLLabel8: TRLLabel
          Left = 848
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
          BeforePrint = SoloImprimirPrimera
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
        Top = 97
        Width = 961
        Height = 36
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLMemo1: TRLMemo
          Left = 4
          Top = 5
          Width = 56
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Código empleado ')
        end
        object RLMemo2: TRLMemo
          Left = 68
          Top = 5
          Width = 189
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Nombre empleado')
        end
        object RLMemo3: TRLMemo
          Left = 276
          Top = 5
          Width = 109
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Tipo horas')
        end
        object RLMemo4: TRLMemo
          Left = 388
          Top = 5
          Width = 61
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Horas trabajadas'
            ' ')
        end
        object RLMemo5: TRLMemo
          Left = 452
          Top = 5
          Width = 61
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Horas producidas')
        end
        object RLMemo6: TRLMemo
          Left = 516
          Top = 5
          Width = 61
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Eficiencia obtenida')
        end
        object RLMemo7: TRLMemo
          Left = 580
          Top = 5
          Width = 61
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Ganado producción')
        end
        object RLMemo8: TRLMemo
          Left = 644
          Top = 5
          Width = 61
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Ajuste al mínimo')
        end
        object RLMemo9: TRLMemo
          Left = 708
          Top = 5
          Width = 61
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Horas '
            'extra')
        end
        object RLMemo10: TRLMemo
          Left = 772
          Top = 5
          Width = 61
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Bono '
            'extras')
        end
        object RLMemo11: TRLMemo
          Left = 836
          Top = 5
          Width = 61
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Bono producción')
        end
        object RLMemo12: TRLMemo
          Left = 900
          Top = 5
          Width = 61
          Height = 28
          AutoSize = False
          Lines.Strings = (
            'Total devengado')
        end
      end
    end
    inherited padr_band_pie: TRLBand
      Top = 281
      Width = 961
      inherited padr_labe_pcp: TRLLabel
        Left = 898
      end
    end
    object RLBand1: TRLBand
      Left = 57
      Top = 171
      Width = 961
      Height = 58
      object RLDraw1: TRLDraw
        Left = 278
        Top = 25
        Width = 683
        Height = 14
        Brush.Style = bsClear
        DrawKind = dkLine
      end
      object RLDBMemo1: TRLDBMemo
        Left = 69
        Top = 5
        Width = 190
        Height = 26
        AutoSize = False
        DataField = 'NOMB_COMPLETO'
        DataSource = data_reporte
      end
      object RLDBText1: TRLDBText
        Left = 3
        Top = 5
        Width = 62
        Height = 14
        AutoSize = False
        DataField = 'CODI_PERSONAL'
        DataSource = data_reporte
      end
      object RLLabel10: TRLLabel
        Left = 280
        Top = 0
        Width = 61
        Height = 14
        Caption = 'En estándar'
      end
      object RLLabel11: TRLLabel
        Left = 280
        Top = 16
        Width = 64
        Height = 14
        Caption = 'NO Estándar'
      end
      object RLLabel12: TRLLabel
        Left = 280
        Top = 32
        Width = 26
        Height = 14
        Caption = 'Total'
      end
      object RLDBText2: TRLDBText
        Left = 391
        Top = 2
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_TRAB_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText3: TRLDBText
        Left = 391
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_TRAB_NO_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText4: TRLDBText
        Left = 391
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_TRAB_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText5: TRLDBText
        Left = 455
        Top = 2
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_PROD_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText6: TRLDBText
        Left = 455
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_PROD_NO_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText7: TRLDBText
        Left = 455
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_PROD_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText8: TRLDBText
        Left = 519
        Top = 2
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'EFIC_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText9: TRLDBText
        Left = 519
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'EFIC_NO_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText10: TRLDBText
        Left = 519
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'EFIC_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText11: TRLDBText
        Left = 583
        Top = 2
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_GANA_PROD_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText12: TRLDBText
        Left = 583
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_GANA_PROD_NO_ESTANDA'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText13: TRLDBText
        Left = 583
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_GANA_PROD_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText14: TRLDBText
        Left = 647
        Top = 2
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_AJUS_MINI_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText15: TRLDBText
        Left = 647
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_AJUS_MINI_NO_ESTANDA'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText16: TRLDBText
        Left = 647
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_AJUS_MINI_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText17: TRLDBText
        Left = 711
        Top = 2
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_EXTR_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText18: TRLDBText
        Left = 711
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_EXTR_NO_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText19: TRLDBText
        Left = 711
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_EXTR_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText20: TRLDBText
        Left = 775
        Top = 2
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_EXTR_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText21: TRLDBText
        Left = 775
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_EXTR_NO_ESTANDA'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText22: TRLDBText
        Left = 775
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_EXTR_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText23: TRLDBText
        Left = 839
        Top = 2
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_PROD_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText24: TRLDBText
        Left = 839
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_PROD_NO_ESTANDA'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText25: TRLDBText
        Left = 839
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_PROD_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText26: TRLDBText
        Left = 902
        Top = 2
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_DEVE_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText27: TRLDBText
        Left = 902
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_DEVE_NO_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
      object RLDBText28: TRLDBText
        Left = 902
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_DEVE_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
      end
    end
    object RLBand2: TRLBand
      Left = 57
      Top = 229
      Width = 961
      Height = 52
      BandType = btSummary
      object RLDraw2: TRLDraw
        Left = 278
        Top = 25
        Width = 683
        Height = 14
        Brush.Style = bsClear
        DrawKind = dkLine
      end
      object RLMemo13: TRLMemo
        Left = 68
        Top = 5
        Width = 189
        Height = 28
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Totales')
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 280
        Top = 0
        Width = 61
        Height = 14
        Caption = 'En estándar'
      end
      object RLLabel14: TRLLabel
        Left = 280
        Top = 16
        Width = 64
        Height = 14
        Caption = 'NO Estándar'
      end
      object RLLabel15: TRLLabel
        Left = 280
        Top = 32
        Width = 26
        Height = 14
        Caption = 'Total'
      end
      object RLDBResult1: TRLDBResult
        Left = 391
        Top = 0
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_TRAB_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult2: TRLDBResult
        Left = 391
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_TRAB_NO_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult3: TRLDBResult
        Left = 391
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_TRAB_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult4: TRLDBResult
        Left = 455
        Top = 0
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_PROD_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult5: TRLDBResult
        Left = 455
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_PROD_NO_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult6: TRLDBResult
        Left = 455
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_PROD_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult8: TRLDBResult
        Left = 519
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'EFIC_NO_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00 %'
        Info = riAverage
      end
      object RLDBResult9: TRLDBResult
        Left = 519
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'EFIC_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00 %'
        Info = riAverage
      end
      object RLDBResult10: TRLDBResult
        Left = 583
        Top = 0
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_GANA_PROD_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult11: TRLDBResult
        Left = 583
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_GANA_PROD_NO_ESTANDA'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult12: TRLDBResult
        Left = 583
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_GANA_PROD_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult13: TRLDBResult
        Left = 647
        Top = 0
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_AJUS_MINI_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult14: TRLDBResult
        Left = 647
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_AJUS_MINI_NO_ESTANDA'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult15: TRLDBResult
        Left = 647
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_AJUS_MINI_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult16: TRLDBResult
        Left = 711
        Top = 0
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_EXTR_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult17: TRLDBResult
        Left = 711
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_EXTR_NO_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult18: TRLDBResult
        Left = 711
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TIEM_EXTR_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult19: TRLDBResult
        Left = 775
        Top = 0
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_EXTR_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult20: TRLDBResult
        Left = 775
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_EXTR_NO_ESTANDA'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult21: TRLDBResult
        Left = 775
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_EXTR_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult22: TRLDBResult
        Left = 839
        Top = 0
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_PROD_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult23: TRLDBResult
        Left = 839
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_PROD_NO_ESTANDA'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult24: TRLDBResult
        Left = 839
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_BONO_PROD_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult25: TRLDBResult
        Left = 903
        Top = 0
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_DEVE_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult26: TRLDBResult
        Left = 903
        Top = 16
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_DEVE_NO_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult27: TRLDBResult
        Left = 903
        Top = 32
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALO_DEVE_TOTAL'
        DataSource = data_reporte
        DisplayMask = ',0.00'
        Info = riSum
      end
      object RLDBResult7: TRLDBResult
        Left = 519
        Top = 0
        Width = 57
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'EFIC_ESTANDAR'
        DataSource = data_reporte
        DisplayMask = ',0.00 %'
        Info = riAverage
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
    object myTabla_ReporteCONS_PERSONAL: TIntegerField
      DisplayLabel = 'Cons. personal'
      FieldName = 'CONS_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CONS_PERSONAL'
    end
    object myTabla_ReporteCODI_PERSONAL: TStringField
      DisplayLabel = 'Cod. personal'
      FieldName = 'CODI_PERSONAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CODI_PERSONAL'
      Size = 12
    end
    object myTabla_ReporteNOMB_COMPLETO: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'NOMB_COMPLETO'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".NOMB_COMPLETO'
      Size = 102
    end
    object myTabla_ReporteCONS_EMPRESA: TIntegerField
      DisplayLabel = 'Cons. empresa'
      FieldName = 'CONS_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CONS_EMPRESA'
    end
    object myTabla_ReporteNOMB_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NOMB_EMPRESA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".NOMB_EMPRESA'
      Size = 60
    end
    object myTabla_ReporteCONS_PLANTA: TIntegerField
      DisplayLabel = 'Cons. planta'
      FieldName = 'CONS_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CONS_PLANTA'
    end
    object myTabla_ReporteNOMB_PLANTA: TStringField
      DisplayLabel = 'Planta'
      FieldName = 'NOMB_PLANTA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".NOMB_PLANTA'
      Size = 60
    end
    object myTabla_ReporteCONS_PLAN_LINEA: TIntegerField
      DisplayLabel = 'Cons. línea'
      FieldName = 'CONS_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CONS_PLAN_LINEA'
    end
    object myTabla_ReporteNOMB_PLAN_LINEA: TStringField
      DisplayLabel = 'Línea'
      FieldName = 'NOMB_PLAN_LINEA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".NOMB_PLAN_LINEA'
      Size = 60
    end
    object myTabla_ReporteCONS_LINE_SECCION: TIntegerField
      DisplayLabel = 'Cons. sección'
      FieldName = 'CONS_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".CONS_LINE_SECCION'
    end
    object myTabla_ReporteNOMB_LINE_SECCION: TStringField
      DisplayLabel = 'Sección'
      FieldName = 'NOMB_LINE_SECCION'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".NOMB_LINE_SECCION'
      Size = 60
    end
    object myTabla_ReporteTIEM_TRAB_ESTANDAR: TFloatField
      DisplayLabel = 'H/Trabajadas estándar'
      FieldName = 'TIEM_TRAB_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_TRAB_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_TRAB_NO_ESTANDAR: TFloatField
      DisplayLabel = 'H/Trabajadas NO estándar'
      FieldName = 'TIEM_TRAB_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_TRAB_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_TRAB_TOTAL: TFloatField
      DisplayLabel = 'H/Trabajadas Total'
      FieldName = 'TIEM_TRAB_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_TRAB_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_PROD_ESTANDAR: TFloatField
      DisplayLabel = 'H/Producidas Estándar'
      FieldName = 'TIEM_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_PROD_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_PROD_NO_ESTANDAR: TFloatField
      DisplayLabel = 'H/Producidas NO estándar'
      FieldName = 'TIEM_PROD_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_PROD_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_PROD_TOTAL: TFloatField
      DisplayLabel = 'H/Producidas Total'
      FieldName = 'TIEM_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_PROD_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteEFIC_ESTANDAR: TFloatField
      DisplayLabel = 'Eficiencia Estándar'
      FieldKind = fkCalculated
      FieldName = 'EFIC_ESTANDAR'
      DisplayFormat = ',0.00 %'
      Calculated = True
    end
    object myTabla_ReporteEFIC_NO_ESTANDAR: TFloatField
      DisplayLabel = 'Eficiencia NO Estándar'
      FieldKind = fkCalculated
      FieldName = 'EFIC_NO_ESTANDAR'
      DisplayFormat = ',0.00 %'
      Calculated = True
    end
    object myTabla_ReporteEFIC_TOTAL: TFloatField
      DisplayLabel = 'Eficiencia Total'
      FieldKind = fkCalculated
      FieldName = 'EFIC_TOTAL'
      DisplayFormat = ',0.00 %'
      Calculated = True
    end
    object myTabla_ReporteVALO_GANA_PROD_ESTANDAR: TFloatField
      DisplayLabel = 'Ganado producción Estándar'
      FieldName = 'VALO_GANA_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_GANA_PROD_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_GANA_PROD_NO_ESTANDA: TFloatField
      DisplayLabel = 'Ganado producción NO Estándar'
      FieldName = 'VALO_GANA_PROD_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_GANA_PROD_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_GANA_PROD_TOTAL: TFloatField
      DisplayLabel = 'Ganado producción Total'
      FieldName = 'VALO_GANA_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_GANA_PROD_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_AJUS_MINI_ESTANDAR: TFloatField
      DisplayLabel = 'Ajuste al mínimo Estándar'
      FieldName = 'VALO_AJUS_MINI_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_AJUS_MINI_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_AJUS_MINI_NO_ESTANDA: TFloatField
      DisplayLabel = 'Ajuste al mínimo NO Estándar'
      FieldName = 'VALO_AJUS_MINI_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_AJUS_MINI_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_AJUS_MINI_TOTAL: TFloatField
      DisplayLabel = 'Ajuste al mínimo Total'
      FieldName = 'VALO_AJUS_MINI_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_AJUS_MINI_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_PROD_ESTANDAR: TFloatField
      DisplayLabel = 'Bono producción Estándar'
      FieldName = 'VALO_BONO_PROD_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_PROD_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_PROD_NO_ESTANDA: TFloatField
      DisplayLabel = 'Bono producción NO Estándar'
      FieldName = 'VALO_BONO_PROD_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_PROD_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_PROD_TOTAL: TFloatField
      DisplayLabel = 'Bono producción Total'
      FieldName = 'VALO_BONO_PROD_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_PROD_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_EXTR_ESTANDAR: TFloatField
      DisplayLabel = 'Hora Extras Estándar'
      FieldName = 'TIEM_EXTR_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_EXTR_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_EXTR_NO_ESTANDAR: TFloatField
      DisplayLabel = 'Hora Extras NO Estándar'
      FieldName = 'TIEM_EXTR_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_EXTR_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteTIEM_EXTR_TOTAL: TFloatField
      DisplayLabel = 'Hora Extras Total'
      FieldName = 'TIEM_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".TIEM_EXTR_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_EXTR_ESTANDAR: TFloatField
      DisplayLabel = 'Bono extra Estándar'
      FieldName = 'VALO_BONO_EXTR_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_EXTR_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_EXTR_NO_ESTANDA: TFloatField
      DisplayLabel = 'Bono extra NO Estándar'
      FieldName = 'VALO_BONO_EXTR_NO_ESTANDA'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_EXTR_NO_ESTANDA'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_BONO_EXTR_TOTAL: TFloatField
      DisplayLabel = 'Bono extra Total'
      FieldName = 'VALO_BONO_EXTR_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_BONO_EXTR_TOTAL'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_DEVE_ESTANDAR: TFloatField
      DisplayLabel = 'Total devengado Estándar'
      FieldName = 'VALO_DEVE_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_DEVE_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_DEVE_NO_ESTANDAR: TFloatField
      DisplayLabel = 'Total devengado NO Estándar'
      FieldName = 'VALO_DEVE_NO_ESTANDAR'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_DEVE_NO_ESTANDAR'
      DisplayFormat = ',0.00'
    end
    object myTabla_ReporteVALO_DEVE_TOTAL: TFloatField
      DisplayLabel = 'Total devengado'
      FieldName = 'VALO_DEVE_TOTAL'
      Origin = 'PCPLOCAL."tmpRpt_cont_pago_bruto.DB".VALO_DEVE_TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object quer_Cuenta: TQuery
    DatabaseName = 'PCPLOCAL'
    SQL.Strings = (
      'select count(distinct cons_personal) as cuantos'
      'from "tmpRpt_cont_pago_bruto.DB"')
    Left = 600
    Top = 16
  end
end

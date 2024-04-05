object _fInformesPCP: T_fInformesPCP
  Left = 90
  Top = 141
  Width = 1036
  Height = 518
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Reporte: TRLReport
    Left = 8
    Top = 8
    Width = 816
    Height = 1056
    AdjustableMargins = True
    DataSource = data_reporte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 15
    PageSetup.PaperSize = fpLetter
    PreviewOptions.Defaults = pdIgnoreDefaults
    ExpressionParser = padr_RLExpressionParser1
    object padr_band_titulo: TRLBand
      Left = 57
      Top = 38
      Width = 721
      Height = 67
      BandType = btTitle
      object padr_pane_titulo: TRLPanel
        Left = 0
        Top = 0
        Width = 721
        Height = 41
        Align = faTop
        object padr_labe_nomb_reporte: TRLSystemInfo
          Left = 675
          Top = 0
          Width = 46
          Height = 19
          Align = faRightTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = itTitle
          ParentFont = False
        end
        object padr_repo_pane_info_top: TRLPanel
          Left = 2
          Top = 20
          Width = 719
          Height = 21
          Align = faRightBottom
          object padr_pane_rl_fech_pagina: TRLPanel
            Left = 468
            Top = 0
            Width = 251
            Height = 21
            Align = faRight
            object adr_repo_labe_fech_sistema: TRLLabel
              Left = 3
              Top = 3
              Width = 36
              Height = 14
              Caption = 'Fecha:'
            end
            object padr_repo_labe_pagina: TRLLabel
              Left = 148
              Top = 3
              Width = 38
              Height = 14
              Caption = 'Página:'
            end
            object padr_repo_edit_fech_sistema: TRLSystemInfo
              Left = 44
              Top = 1
              Width = 89
              Height = 18
              AutoSize = False
              Borders.Sides = sdAll
              Borders.Color = clGray
            end
            object padr_repo_edit_pagi_actual: TRLSystemInfo
              Left = 189
              Top = 1
              Width = 29
              Height = 18
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = True
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Info = itPageNumber
            end
            object padr_repo_edit_page_hasta: TRLSystemInfo
              Left = 222
              Top = 1
              Width = 29
              Height = 18
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = True
              Borders.Color = clGray
              Info = itLastPageNumber
            end
            object padr_repo_labe_page_separador: TRLLabel
              Left = 217
              Top = 1
              Width = 6
              Height = 18
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Borders.Color = clGray
              Borders.FixedTop = True
              Borders.FixedBottom = True
              Caption = '/'
            end
          end
        end
      end
    end
    object padr_band_pie: TRLBand
      Left = 57
      Top = 105
      Width = 721
      Height = 18
      AlignToBottom = True
      BandType = btFooter
      object padr_labe_pcp: TRLLabel
        Left = 658
        Top = 0
        Width = 63
        Height = 12
        Align = faRightTop
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object padr_RLExpressionParser1: TRLExpressionParser
    Left = 704
    Top = 16
  end
  object data_reporte: TDataSource
    Left = 568
    Top = 16
  end
  object padr_acciones: TActionList
    Left = 504
    Top = 16
  end
end

inherited rn1_prod_base_informe: Trn1_prod_base_informe
  Left = 78
  Top = 118
  Width = 865
  Height = 558
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Reporte: TRLReport
    Margins.LeftMargin = 15
    Title = 'Distribución de paquetes'
    OnPageStarting = ReportePageStarting
    inherited padr_band_titulo: TRLBand
      Height = 63
      AutoSize = True
      BandType = btHeader
      Borders.Sides = sdCustom
      inherited padr_pane_titulo: TRLPanel
        Height = 40
        AutoSize = True
        BeforePrint = padr_pane_tituloBeforePrint
        inherited padr_repo_pane_info_top: TRLPanel
          Top = 19
        end
      end
      object padr_pane_info_header: TRLPanel
        Left = 0
        Top = 40
        Width = 721
        Height = 23
        Align = faTop
        BeforePrint = padr_pane_info_headerBeforePrint
        object RLLabel1: TRLLabel
          Left = 457
          Top = 4
          Width = 55
          Height = 14
          Caption = 'No. Orden:'
        end
        object RLDBText4: TRLDBText
          Left = 514
          Top = 2
          Width = 89
          Height = 17
          AutoSize = False
          Borders.Sides = sdAll
          Borders.Color = clGray
          DataField = 'NUME_PROD_ORDEN'
          DataSource = data_info_of
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 632
          Top = 4
          Width = 27
          Height = 14
          Caption = 'Lote:'
        end
        object text_lote2: TRLLabel
          Left = 660
          Top = 2
          Width = 60
          Height = 17
          AutoSize = False
          Borders.Sides = sdAll
          Borders.Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    inherited padr_band_pie: TRLBand
      Top = 220
    end
    object padr_band_deta_titulo: TRLBand
      Left = 57
      Top = 101
      Width = 721
      Height = 119
      BandType = btTitle
      object padr_pane_info_title: TRLPanel
        Left = 0
        Top = 0
        Width = 721
        Height = 110
        Align = faTop
        object padr_draw_12: TRLDraw
          Left = 477
          Top = 69
          Width = 241
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_draw_11: TRLDraw
          Left = 239
          Top = 69
          Width = 239
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_labe_9: TRLLabel
          Left = 244
          Top = 71
          Width = 31
          Height = 14
          Caption = 'Estilo:'
        end
        object padr_draw_10: TRLDraw
          Left = 1
          Top = 69
          Width = 239
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_draw_4: TRLDraw
          Left = 477
          Top = 21
          Width = 241
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_draw_3: TRLDraw
          Left = 239
          Top = 21
          Width = 239
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_draw_1: TRLDraw
          Left = 1
          Top = 5
          Width = 717
          Height = 17
          Borders.Color = clGray
          Brush.Color = clSilver
          Pen.Color = clGray
        end
        object labe_info_Referencia: TRLLabel
          Left = 5
          Top = 6
          Width = 216
          Height = 14
          Caption = 'Información de la orden de producción'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object padr_draw_2: TRLDraw
          Left = 1
          Top = 21
          Width = 239
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_labe_1: TRLLabel
          Left = 4
          Top = 23
          Width = 55
          Height = 14
          Caption = 'No. Orden:'
        end
        object padr_labe_2: TRLLabel
          Left = 244
          Top = 23
          Width = 27
          Height = 14
          Caption = 'Lote:'
        end
        object padr_labe_3: TRLLabel
          Left = 481
          Top = 23
          Width = 51
          Height = 14
          Caption = 'Unidades:'
          Visible = False
        end
        object padr_draw_5: TRLDraw
          Left = 1
          Top = 37
          Width = 477
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_labe_4: TRLLabel
          Left = 4
          Top = 39
          Width = 38
          Height = 14
          Caption = 'Cliente:'
        end
        object padr_labe_10: TRLLabel
          Left = 481
          Top = 71
          Width = 60
          Height = 14
          Caption = 'Temporada:'
        end
        object padr_draw_7: TRLDraw
          Left = 1
          Top = 53
          Width = 239
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_draw_8: TRLDraw
          Left = 239
          Top = 53
          Width = 479
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_labe_7: TRLLabel
          Left = 244
          Top = 55
          Width = 66
          Height = 14
          Caption = 'Nombre Ref.:'
        end
        object padr_labe_8: TRLLabel
          Left = 4
          Top = 71
          Width = 34
          Height = 14
          Caption = 'Molde:'
        end
        object padr_draw_13: TRLDraw
          Left = 1
          Top = 85
          Width = 240
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_labe_11: TRLLabel
          Left = 4
          Top = 87
          Width = 36
          Height = 14
          Caption = 'Marca:'
        end
        object padr_draw_14: TRLDraw
          Left = 477
          Top = 85
          Width = 241
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_labe_13: TRLLabel
          Left = 481
          Top = 87
          Width = 30
          Height = 14
          Caption = 'Edad:'
        end
        object RLDBText3: TRLDBText
          Left = 72
          Top = 23
          Width = 161
          Height = 14
          AutoSize = False
          DataField = 'NUME_PROD_ORDEN'
          DataSource = data_info_of
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 568
          Top = 23
          Width = 145
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'UNIDADES'
          DataSource = data_info_of
          DisplayMask = ',0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object RLDBText6: TRLDBText
          Left = 72
          Top = 39
          Width = 399
          Height = 14
          AutoSize = False
          DataField = 'NOMB_CLIENTE'
          DataSource = data_info_of
        end
        object RLDBText8: TRLDBText
          Left = 568
          Top = 71
          Width = 145
          Height = 14
          AutoSize = False
          DataField = 'NOMB_REFE_TEMPORADA'
          DataSource = data_info_of
        end
        object RLDBText7: TRLDBText
          Left = 72
          Top = 55
          Width = 161
          Height = 14
          AutoSize = False
          DataField = 'CODI_INTE_REFERENCIA'
          DataSource = data_info_of
        end
        object RLDBText9: TRLDBText
          Left = 312
          Top = 55
          Width = 401
          Height = 14
          AutoSize = False
          DataField = 'NOMB_REFERENCIA'
          DataSource = data_info_of
        end
        object RLDBText11: TRLDBText
          Left = 72
          Top = 71
          Width = 161
          Height = 14
          AutoSize = False
          DataField = 'MOLDE'
          DataSource = data_info_of
        end
        object RLDBText12: TRLDBText
          Left = 312
          Top = 71
          Width = 161
          Height = 14
          AutoSize = False
          DataField = 'NOMB_REFE_ESTILO'
          DataSource = data_info_of
        end
        object RLDBText14: TRLDBText
          Left = 72
          Top = 87
          Width = 161
          Height = 14
          AutoSize = False
          DataField = 'NOMB_REFE_MARCA'
          DataSource = data_info_of
        end
        object RLDBText16: TRLDBText
          Left = 568
          Top = 87
          Width = 145
          Height = 14
          AutoSize = False
          DataField = 'NOMB_REFE_EDAD'
          DataSource = data_info_of
        end
        object padr_labe_6: TRLLabel
          Left = 4
          Top = 55
          Width = 31
          Height = 14
          Caption = 'C.I.R.:'
        end
        object padr_draw_9: TRLDraw
          Left = 239
          Top = 85
          Width = 239
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object padr_labe_12: TRLLabel
          Left = 244
          Top = 87
          Width = 36
          Height = 14
          Caption = 'Grupo:'
        end
        object RLDBText1: TRLDBText
          Left = 312
          Top = 87
          Width = 161
          Height = 14
          AutoSize = False
          DataField = 'NOMB_REFE_GRUPO'
          DataSource = data_info_of
        end
        object padr_draw_6: TRLDraw
          Left = 477
          Top = 37
          Width = 241
          Height = 17
          Borders.Color = clGray
          Pen.Color = clGray
        end
        object RLDBText2: TRLDBText
          Left = 568
          Top = 39
          Width = 145
          Height = 14
          AutoSize = False
          DataField = 'CODI_REFERENCIA'
          DataSource = data_info_of
        end
        object padr_labe_5: TRLLabel
          Left = 481
          Top = 39
          Width = 81
          Height = 14
          Caption = 'Cod. referencia:'
        end
        object text_lote: TRLLabel
          Left = 313
          Top = 23
          Width = 157
          Height = 13
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object quer_prod_orden: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT * FROM'
      'CON_PCP_PROD_ORDE_ENCABEZADO(:CONS_PROD_ORDEN, -1)')
    Left = 10
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptInput
      end>
  end
  object data_info_of: TDataSource
    DataSet = quer_prod_orden
    Left = 40
    Top = 24
  end
  object quer_prod_lote: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT * FROM'
      'CON_PCP_PROD_LOTE_ENCABEZADO(:CONS_PROD_LOTE)')
    Left = 10
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptInput
      end>
  end
  object quer_nume_lote: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT NUME_LOTE'
      'FROM PCP_PROD_LOTES'
      'WHERE CONS_PROD_LOTE = :CONS_PROD_LOTE')
    Left = 8
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_LOTE'
        ParamType = ptInput
      end>
  end
end

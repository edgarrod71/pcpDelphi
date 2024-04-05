inherited fcn1_prod_orde_tiqu_corte: Tfcn1_prod_orde_tiqu_corte
  Left = 77
  Top = 22
  Width = 1036
  Height = 639
  HorzScrollBar.Position = 11
  Caption = 'fcn1_prod_orde_tiqu_corte'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited QR: TQuickRep
    Left = 4
    Top = 13
    Width = 1208
    Height = 284
    Frame.Width = 0
    DataSet = quer_tiquetes
    Description.Strings = (
      'Impresion Tiquetes de Control')
    Font.Height = -8
    Font.Name = 'Tahoma'
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Columns = 3
    Page.PaperSize = Custom
    Page.Values = (
      0
      250.5
      0
      1065
      2
      0
      20)
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.OutputBin = First
    ReportTitle = 'Tiquetes de Control'
    Zoom = 300
    object QRBand2: TQRBand
      Left = 2
      Top = 0
      Width = 386
      Height = 270
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        238.1
        340.430555555556)
      BandType = rbDetail
      object QRShape3: TQRShape
        Left = 19
        Top = 186
        Width = 328
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          24.6944444444444
          16.7569444444444
          164.041666666667
          289.277777777778)
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 19
        Top = 160
        Width = 328
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          16.7569444444444
          141.111111111111
          289.277777777778)
        Shape = qrsRectangle
      end
      object DataBarras: TQRDuckBarcode
        Left = 19
        Top = 67
        Width = 313
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          73.2013888888889
          16.7569444444444
          59.0902777777778
          276.048611111111)
        Alignment = taLeftJustify
        Style = bsCode25Interleaved
        Rotation = br0
        HeightMM = 16
        ColorBar = clBlack
        ColorBK = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -5
        Font.Name = 'Arial'
        Font.Style = []
        BarWidthMM = 0.05
        Options = [boShowText]
        Color = clWhite
        DataField = 'CODI_BARRAS'
        DataSet = quer_tiquetes
      end
      object DataReferencia: TQRDBText
        Left = 68
        Top = 186
        Width = 276
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          27.3402777777778
          59.9722222222222
          164.041666666667
          243.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'codi_referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 6
      end
      object DataOperacion: TQRDBText
        Left = 22
        Top = 133
        Width = 321
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.9861111111111
          19.4027777777778
          117.298611111111
          283.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nomb_operacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 6
      end
      object DataCorte: TQRDBText
        Left = 24
        Top = 9
        Width = 328
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          21.1666666666667
          7.9375
          289.277777777778)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nomb_mate_referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 7
      end
      object LabelReferencia: TQRLabel
        Left = 20
        Top = 186
        Width = 48
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          27.3402777777778
          17.6388888888889
          164.041666666667
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ref:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object DataColor: TQRDBText
        Left = 85
        Top = 158
        Width = 151
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          27.3402777777778
          74.9652777777778
          139.347222222222
          133.173611111111)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nomb_unid_medida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 6
      end
      object QRLabel1: TQRLabel
        Left = 23
        Top = 31
        Width = 57
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          20.2847222222222
          27.3402777777778
          50.2708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Corte'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object qrTie_paq3: TQRDBText
        Left = 246
        Top = 158
        Width = 99
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          27.3402777777778
          216.958333333333
          139.347222222222
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'tiem_paquete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        Mask = ',0.000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 6
      end
      object QRShape4: TQRShape
        Left = 240
        Top = 161
        Width = 1
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.9305555555556
          211.666666666667
          141.993055555556
          0.881944444444444)
        Shape = qrsRectangle
      end
      object QRDBText2: TQRDBText
        Left = 24
        Top = 50
        Width = 129
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          21.1666666666667
          44.0972222222222
          113.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nume_prod_orden'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 6
      end
      object QRLabel3: TQRLabel
        Left = 159
        Top = 31
        Width = 45
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          140.229166666667
          27.3402777777778
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lote'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRDBText5: TQRDBText
        Left = 160
        Top = 50
        Width = 73
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          141.111111111111
          44.0972222222222
          64.3819444444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nume_lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Mask = '0000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 6
      end
      object QRLabel11: TQRLabel
        Left = 239
        Top = 31
        Width = 51
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          210.784722222222
          27.3402777777778
          44.9791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fase'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRDBText11: TQRDBText
        Left = 240
        Top = 50
        Width = 73
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          211.666666666667
          44.0972222222222
          64.3819444444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'secu_operacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Mask = '0000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 6
      end
      object QRDBText12: TQRDBText
        Left = 24
        Top = 158
        Width = 57
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          27.3402777777778
          21.1666666666667
          139.347222222222
          50.2708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'cant_unidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 6
      end
      object QRShape5: TQRShape
        Left = 19
        Top = 213
        Width = 328
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          24.6944444444444
          16.7569444444444
          187.854166666667
          289.277777777778)
        Shape = qrsRectangle
      end
      object QRDBText13: TQRDBText
        Left = 23
        Top = 211
        Width = 320
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          27.3402777777778
          20.2847222222222
          186.090277777778
          282.222222222222)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nomb_paquetes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 6
      end
      object QRShape11: TQRShape
        Left = 80
        Top = 161
        Width = 1
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.9305555555556
          70.5555555555556
          141.993055555556
          0.881944444444444)
        Shape = qrsRectangle
      end
    end
  end
  object QR4: TQuickRep
    Left = 4
    Top = 307
    Width = 1208
    Height = 261
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Frame.Width = 0
    DataSet = quer_tiquetes
    Description.Strings = (
      'Impresion Tiquetes de Control')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Tahoma'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 4
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      0
      230.2
      0
      1065
      2
      0
      6)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 5
    PrinterSettings.OutputBin = First
    PrintIfEmpty = True
    ReportTitle = 'Tiquetes de Control'
    SnapToGrid = True
    Units = MM
    Zoom = 300
    object QRBand1: TQRBand
      Left = 2
      Top = 0
      Width = 296
      Height = 231
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'Tahoma'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        203.729166666667
        261.055555555556)
      BandType = rbDetail
      object QRDBText14: TQRDBText
        Left = 21
        Top = 9
        Width = 243
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          18.5208333333333
          7.9375
          214.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nomb_mate_referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 5
      end
      object QRDuckBarcode1: TQRDuckBarcode
        Left = 11
        Top = 57
        Width = 240
        Height = 91
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          80.2569444444444
          9.70138888888889
          50.2708333333333
          211.666666666667)
        Alignment = taLeftJustify
        Style = bsCode25Interleaved
        Rotation = br0
        HeightMM = 16
        ColorBar = clBlack
        ColorBK = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -5
        Font.Name = 'Arial'
        Font.Style = []
        BarWidthMM = 0.05
        Options = [boShowText]
        Color = clWhite
        DataField = 'CODI_BARRAS'
        DataSet = quer_tiquetes
      end
      object QRShape6: TQRShape
        Left = 11
        Top = 179
        Width = 255
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          9.70138888888889
          157.868055555556
          224.895833333333)
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 11
        Top = 154
        Width = 255
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.9305555555556
          9.70138888888889
          135.819444444444
          224.895833333333)
        Shape = qrsRectangle
      end
      object QRShape8: TQRShape
        Left = 11
        Top = 203
        Width = 255
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          20.2847222222222
          9.70138888888889
          179.034722222222
          224.895833333333)
        Shape = qrsRectangle
      end
      object QRDBText1: TQRDBText
        Left = 14
        Top = 128
        Width = 240
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          12.3472222222222
          112.888888888889
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nomb_operacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 5
      end
      object QRLabel5: TQRLabel
        Left = 22
        Top = 27
        Width = 48
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          19.4027777777778
          23.8125
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Corte'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 5
      end
      object QRDBText4: TQRDBText
        Left = 49
        Top = 154
        Width = 125
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          43.2152777777778
          135.819444444444
          110.243055555556)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nomb_unid_medida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 5
      end
      object qrTie_paq4: TQRDBText
        Left = 181
        Top = 154
        Width = 81
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          159.631944444444
          135.819444444444
          71.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'tiem_paquete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Tahoma'
        Font.Style = []
        Mask = ',0.000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 5
      end
      object QRShape9: TQRShape
        Left = 178
        Top = 154
        Width = 1
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.9305555555556
          156.986111111111
          135.819444444444
          0.881944444444444)
        Shape = qrsRectangle
      end
      object QRLabel8: TQRLabel
        Left = 186
        Top = 26
        Width = 42
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          164.041666666667
          22.9305555555556
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fase'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 5
      end
      object QRLabel9: TQRLabel
        Left = 128
        Top = 26
        Width = 42
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          112.888888888889
          22.9305555555556
          37.0416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lote'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 5
      end
      object QRDBText7: TQRDBText
        Left = 21
        Top = 45
        Width = 113
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          18.5208333333333
          39.6875
          99.6597222222222)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nume_prod_orden'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 5
      end
      object QRDBText8: TQRDBText
        Left = 127
        Top = 45
        Width = 54
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          112.006944444444
          39.6875
          47.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nume_lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Mask = '0000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 5
      end
      object QRDBText10: TQRDBText
        Left = 14
        Top = 179
        Width = 248
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          12.3472222222222
          157.868055555556
          218.722222222222)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'codi_referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 5
      end
      object QRShape1: TQRShape
        Left = 46
        Top = 154
        Width = 1
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.9305555555556
          40.5694444444444
          135.819444444444
          0.881944444444444)
        Shape = qrsRectangle
      end
      object QRDBText3: TQRDBText
        Left = 14
        Top = 154
        Width = 30
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          12.3472222222222
          135.819444444444
          26.4583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'cant_unidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 5
      end
      object QRDBText6: TQRDBText
        Left = 14
        Top = 202
        Width = 248
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          12.3472222222222
          178.152777777778
          218.722222222222)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nomb_paquetes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 5
      end
      object QRDBText9: TQRDBText
        Left = 187
        Top = 45
        Width = 54
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          164.923611111111
          39.6875
          47.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'secu_operacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Mask = '000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 5
      end
    end
  end
  object quer_tiquetes: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      'Select *'
      'from tmpTiqu_corte')
    Left = 391
    Top = 21
  end
end

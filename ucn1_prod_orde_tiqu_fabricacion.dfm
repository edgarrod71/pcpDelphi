inherited fcn1_prod_orde_tiqu_fabricacion: Tfcn1_prod_orde_tiqu_fabricacion
  Left = 45
  Top = -7
  Width = 1036
  Height = 639
  Caption = 'fcn1_prod_orde_tiqu_fabricacion'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited QR: TQuickRep
    Left = 23
    Top = 5
    Width = 1134
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
      1000
      0
      0
      20)
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.OutputBin = First
    ReportTitle = 'Tiquetes de Control'
    Zoom = 300
  end
  object QR4: TQuickRep
    Left = 23
    Top = 307
    Width = 1338
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
      1180
      0
      90
      40)
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
      Left = 0
      Top = 0
      Width = 275
      Height = 260
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = EvaluarSaltosDespues
      AlignToBottom = False
      BeforePrint = EvaluarSaltosAntes
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
        229.305555555556
        242.534722222222)
      BandType = rbDetail
      object QRDBText9: TQRDBText
        Left = 198
        Top = 34
        Width = 54
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          174.625
          29.9861111111111
          47.625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nume_paquete'
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
      object QRDuckBarcode1: TQRDuckBarcode
        Left = 12
        Top = 50
        Width = 235
        Height = 98
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          86.4305555555556
          10.5833333333333
          44.0972222222222
          207.256944444444)
        Alignment = taLeftJustify
        Style = bsCode25Interleaved
        Rotation = br0
        HeightMM = 16
        ColorBar = clBlack
        ColorBK = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        BarWidthMM = 0.05
        Options = [boShowText]
        Color = clWhite
        DataField = 'CODI_BARRAS'
        DataSet = quer_tiquetes
      end
      object QRShape6: TQRShape
        Left = 12
        Top = 189
        Width = 245
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.4583333333333
          10.5833333333333
          166.6875
          216.076388888889)
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 12
        Top = 159
        Width = 245
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          27.3402777777778
          10.5833333333333
          140.229166666667
          216.076388888889)
        Shape = qrsRectangle
      end
      object QRShape8: TQRShape
        Left = 12
        Top = 132
        Width = 245
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          24.6944444444444
          10.5833333333333
          116.416666666667
          216.076388888889)
        Shape = qrsRectangle
      end
      object QRDBText1: TQRDBText
        Left = 15
        Top = 133
        Width = 240
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          13.2291666666667
          117.298611111111
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
      object QRDBText3: TQRDBText
        Left = 213
        Top = 162
        Width = 42
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          187.854166666667
          142.875
          37.0416666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'talla'
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
      object QRLabel4: TQRLabel
        Left = 190
        Top = 162
        Width = 21
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          167.569444444444
          142.875
          18.5208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'T.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 5
      end
      object QRLabel5: TQRLabel
        Left = 23
        Top = 9
        Width = 39
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          20.2847222222222
          7.9375
          34.3958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'O.F.'
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
      object QRLabel6: TQRLabel
        Left = 16
        Top = 162
        Width = 39
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          14.1111111111111
          142.875
          34.3958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Col.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 5
      end
      object QRDBText4: TQRDBText
        Left = 50
        Top = 162
        Width = 134
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          44.0972222222222
          142.875
          118.180555555556)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nomb_color'
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
        Left = 179
        Top = 191
        Width = 74
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.9305555555556
          157.868055555556
          168.451388888889
          65.2638888888889)
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
      object QRLabel7: TQRLabel
        Left = 224
        Top = 57
        Width = 57
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          197.555555555556
          50.2708333333333
          50.2708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TMaq.'
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
      object QRShape9: TQRShape
        Left = 187
        Top = 159
        Width = 1
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          27.3402777777778
          164.923611111111
          140.229166666667
          0.881944444444444)
        Shape = qrsRectangle
      end
      object QRShape10: TQRShape
        Left = 176
        Top = 190
        Width = 1
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          24.6944444444444
          155.222222222222
          167.569444444444
          0.881944444444444)
        Shape = qrsRectangle
      end
      object QRDBText6: TQRDBText
        Left = 209
        Top = 77
        Width = 60
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          184.326388888889
          67.9097222222222
          52.9166666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'codi_recu_familia'
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
      object QRLabel8: TQRLabel
        Left = 205
        Top = 14
        Width = 54
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          180.798611111111
          12.3472222222222
          47.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NPaq.'
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
        Left = 137
        Top = 14
        Width = 45
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          120.826388888889
          12.3472222222222
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Und.'
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
        Left = 22
        Top = 34
        Width = 113
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          19.4027777777778
          29.9861111111111
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
        Left = 111
        Top = 34
        Width = 63
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          97.8958333333333
          29.9861111111111
          55.5625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'cant_unidades'
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
      object QRLabel10: TQRLabel
        Left = 16
        Top = 192
        Width = 21
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          14.1111111111111
          169.333333333333
          18.5208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 5
      end
      object QRDBText10: TQRDBText
        Left = 33
        Top = 191
        Width = 141
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          22.0486111111111
          29.1041666666667
          168.451388888889
          124.354166666667)
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
    end
  end
  object QR0: TQuickRep
    Left = 19
    Top = 573
    Width = 3168
    Height = 2448
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
    Page.Columns = 7
    Page.Orientation = poLandscape
    Page.PaperSize = Letter
    Page.Values = (
      100
      2159
      100
      2794
      100
      100
      20)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.OutputBin = First
    PrintIfEmpty = True
    ReportTitle = 'Tiquetes de Control'
    SnapToGrid = True
    Units = MM
    Zoom = 300
    object QRBand3: TQRBand
      Left = 113
      Top = 113
      Width = 400
      Height = 270
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Style = psDot
      AfterPrint = EvaluarSaltosDespues
      AlignToBottom = False
      BeforePrint = EvaluarSaltosAntes
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        238.125
        352.777777777778)
      BandType = rbDetail
      object QRShape11: TQRShape
        Left = 29
        Top = 229
        Width = 328
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          25.5763888888889
          201.965277777778
          289.277777777778)
        Shape = qrsRectangle
      end
      object QRShape12: TQRShape
        Left = 29
        Top = 195
        Width = 328
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          30.8680555555556
          25.5763888888889
          171.979166666667
          289.277777777778)
        Shape = qrsRectangle
      end
      object QRShape13: TQRShape
        Left = 29
        Top = 162
        Width = 328
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          30.8680555555556
          25.5763888888889
          142.875
          289.277777777778)
        Shape = qrsRectangle
      end
      object QRDuckBarcode2: TQRDuckBarcode
        Left = 37
        Top = 70
        Width = 313
        Height = 101
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          89.0763888888889
          32.6319444444444
          61.7361111111111
          276.048611111111)
        Alignment = taLeftJustify
        Style = bsCode25Interleaved
        Rotation = br0
        HeightMM = 16
        ColorBar = clBlack
        ColorBK = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        BarWidthMM = 0.05
        Options = [boShowText]
        Color = clWhite
        DataField = 'CODI_BARRAS'
        DataSet = quer_tiquetes
      end
      object QRDBText11: TQRDBText
        Left = 244
        Top = 39
        Width = 57
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          215.194444444444
          34.3958333333333
          50.2708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nume_paquete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Mask = '000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 7
      end
      object QRDBText12: TQRDBText
        Left = 75
        Top = 231
        Width = 141
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          66.1458333333333
          203.729166666667
          124.354166666667)
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
      object QRDBText13: TQRDBText
        Left = 32
        Top = 163
        Width = 321
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.9861111111111
          28.2222222222222
          143.756944444444
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
      object QRDBText14: TQRDBText
        Left = 279
        Top = 197
        Width = 76
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          246.0625
          173.743055555556
          67.0277777777778)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'talla'
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
      object QRDBText15: TQRDBText
        Left = 306
        Top = 38
        Width = 53
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          269.875
          33.5138888888889
          46.7430555555556)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'cant_unidades'
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
      object QRDBText16: TQRDBText
        Left = 34
        Top = 39
        Width = 129
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          29.9861111111111
          34.3958333333333
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
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 7
      end
      object QRLabel12: TQRLabel
        Left = 30
        Top = 231
        Width = 48
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          28.2222222222222
          26.4583333333333
          203.729166666667
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
      object QRLabel13: TQRLabel
        Left = 236
        Top = 197
        Width = 45
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          28.2222222222222
          208.138888888889
          173.743055555556
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tal:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRLabel14: TQRLabel
        Left = 250
        Top = 8
        Width = 51
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          220.486111111111
          7.05555555555556
          44.9791666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Paq.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel15: TQRLabel
        Left = 35
        Top = 8
        Width = 48
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          30.8680555555556
          7.05555555555556
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'O.F.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel16: TQRLabel
        Left = 31
        Top = 197
        Width = 45
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          28.2222222222222
          27.3402777777778
          173.743055555556
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Col:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRDBText17: TQRDBText
        Left = 73
        Top = 197
        Width = 154
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          28.2222222222222
          64.3819444444444
          173.743055555556
          135.819444444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nomb_color'
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
      object QRLabel17: TQRLabel
        Left = 305
        Top = 8
        Width = 54
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          268.993055555556
          7.05555555555556
          47.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Und.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel18: TQRLabel
        Left = 220
        Top = 231
        Width = 45
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          28.2222222222222
          194.027777777778
          203.729166666667
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'T.C.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRDBText18: TQRDBText
        Left = 263
        Top = 231
        Width = 92
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          231.951388888889
          203.729166666667
          81.1388888888889)
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
      object QRLabel19: TQRLabel
        Left = 290
        Top = 105
        Width = 69
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          255.763888888889
          92.6041666666667
          60.8541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TMaq.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText19: TQRDBText
        Left = 297
        Top = 133
        Width = 60
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          261.9375
          117.298611111111
          52.9166666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'codi_recu_familia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Mask = '000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 7
      end
      object QRShape14: TQRShape
        Left = 233
        Top = 196
        Width = 1
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.9861111111111
          205.493055555556
          172.861111111111
          0.881944444444444)
        Shape = qrsRectangle
      end
      object QRShape15: TQRShape
        Left = 218
        Top = 229
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          192.263888888889
          201.965277777778
          0.881944444444444)
        Shape = qrsRectangle
      end
      object QRLabel20: TQRLabel
        Left = 193
        Top = 8
        Width = 51
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          170.215277777778
          7.05555555555556
          44.9791666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lote'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText20: TQRDBText
        Left = 182
        Top = 39
        Width = 60
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          160.513888888889
          34.3958333333333
          52.9166666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nume_lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Mask = '0000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 7
      end
    end
  end
  object QR3: TQuickRep
    Left = 26
    Top = 5
    Width = 1134
    Height = 284
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
    Page.Columns = 3
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      0
      250.5
      0
      1000
      0
      0
      20)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.OutputBin = First
    PrintIfEmpty = True
    ReportTitle = 'Tiquetes de Control'
    SnapToGrid = True
    Units = MM
    Zoom = 300
    object QRBand4: TQRBand
      Left = 0
      Top = 0
      Width = 362
      Height = 270
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = EvaluarSaltosDespues
      AlignToBottom = False
      BeforePrint = EvaluarSaltosAntes
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        238.125
        319.263888888889)
      BandType = rbDetail
      object QRShape16: TQRShape
        Left = 19
        Top = 224
        Width = 328
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          16.7569444444444
          197.555555555556
          289.277777777778)
        Shape = qrsRectangle
      end
      object QRShape17: TQRShape
        Left = 19
        Top = 190
        Width = 328
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          30.8680555555556
          16.7569444444444
          167.569444444444
          289.277777777778)
        Shape = qrsRectangle
      end
      object QRShape18: TQRShape
        Left = 19
        Top = 157
        Width = 328
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          30.8680555555556
          16.7569444444444
          138.465277777778
          289.277777777778)
        Shape = qrsRectangle
      end
      object QRDuckBarcode3: TQRDuckBarcode
        Left = 27
        Top = 65
        Width = 313
        Height = 101
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          89.0763888888889
          23.8125
          57.3263888888889
          276.048611111111)
        Alignment = taLeftJustify
        Style = bsCode25Interleaved
        Rotation = br0
        HeightMM = 16
        ColorBar = clBlack
        ColorBK = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        BarWidthMM = 0.05
        Options = [boShowText]
        Color = clWhite
        DataField = 'CODI_BARRAS'
        DataSet = quer_tiquetes
      end
      object QRDBText21: TQRDBText
        Left = 234
        Top = 34
        Width = 57
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          206.375
          29.9861111111111
          50.2708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nume_paquete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Mask = '000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 7
      end
      object QRDBText22: TQRDBText
        Left = 65
        Top = 226
        Width = 141
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          57.3263888888889
          199.319444444444
          124.354166666667)
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
      object QRDBText23: TQRDBText
        Left = 22
        Top = 158
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
          139.347222222222
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
      object QRDBText24: TQRDBText
        Left = 269
        Top = 192
        Width = 76
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          237.243055555556
          169.333333333333
          67.0277777777778)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'talla'
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
      object QRDBText25: TQRDBText
        Left = 296
        Top = 33
        Width = 53
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          261.055555555556
          29.1041666666667
          46.7430555555556)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'cant_unidades'
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
      object QRDBText26: TQRDBText
        Left = 24
        Top = 34
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
          29.9861111111111
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
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Left = 20
        Top = 226
        Width = 48
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          28.2222222222222
          17.6388888888889
          199.319444444444
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
      object QRLabel22: TQRLabel
        Left = 226
        Top = 192
        Width = 45
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          28.2222222222222
          199.319444444444
          169.333333333333
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tal:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRLabel23: TQRLabel
        Left = 240
        Top = 3
        Width = 51
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          211.666666666667
          2.64583333333333
          44.9791666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Paq.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel24: TQRLabel
        Left = 25
        Top = 3
        Width = 48
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          22.0486111111111
          2.64583333333333
          42.3333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'O.F.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel25: TQRLabel
        Left = 21
        Top = 192
        Width = 45
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          28.2222222222222
          18.5208333333333
          169.333333333333
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Col:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRDBText27: TQRDBText
        Left = 63
        Top = 192
        Width = 154
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          28.2222222222222
          55.5625
          169.333333333333
          135.819444444444)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nomb_color'
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
      object QRLabel26: TQRLabel
        Left = 295
        Top = 3
        Width = 54
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          260.173611111111
          2.64583333333333
          47.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Und.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel27: TQRLabel
        Left = 210
        Top = 226
        Width = 45
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          28.2222222222222
          185.208333333333
          199.319444444444
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'T.C.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRDBText28: TQRDBText
        Left = 253
        Top = 226
        Width = 92
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.1041666666667
          223.131944444444
          199.319444444444
          81.1388888888889)
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
      object QRLabel28: TQRLabel
        Left = 280
        Top = 100
        Width = 69
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          246.944444444444
          88.1944444444445
          60.8541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TMaq.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText29: TQRDBText
        Left = 287
        Top = 128
        Width = 60
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          253.118055555556
          112.888888888889
          52.9166666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'codi_recu_familia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Mask = '000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 7
      end
      object QRShape19: TQRShape
        Left = 223
        Top = 191
        Width = 1
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.9861111111111
          196.673611111111
          168.451388888889
          0.881944444444445)
        Shape = qrsRectangle
      end
      object QRShape20: TQRShape
        Left = 208
        Top = 224
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.75
          183.444444444444
          197.555555555556
          0.881944444444445)
        Shape = qrsRectangle
      end
      object QRLabel29: TQRLabel
        Left = 183
        Top = 3
        Width = 51
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          161.395833333333
          2.64583333333333
          44.9791666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lote'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText30: TQRDBText
        Left = 172
        Top = 34
        Width = 60
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          35.2777777777778
          151.694444444444
          29.9861111111111
          52.9166666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = quer_tiquetes
        DataField = 'nume_lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Mask = '0000'
        ParentFont = False
        Transparent = True
        WordWrap = False
        FontSize = 7
      end
    end
  end
  object quer_tiquetes: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      'Select *'
      'from tmpTiqu_Fabricacion')
    Left = 391
    Top = 21
  end
end

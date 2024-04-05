inherited rn1_meto_elem_cst: Trn1_meto_elem_cst
  Left = 18
  Top = 122
  Height = 531
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    Left = 36
    Width = 992
    Height = 478
    inherited _QRPadre: TPCPQuickReport
      Left = 12
      Functions.DATA = (
        '0'
        '0'
        #39#39
        #39#39)
      Page.Values = (
        100
        2794
        100
        2159
        100
        100
        0)
      inherited _QRBanda_Page_Header: TPCPQRBand
        Height = 171
        Size.Values = (
          452.4375
          1957.91666666667)
        inherited _QRFecha: TQRSysData
          Left = 611
          Width = 129
          Size.Values = (
            44.9791666666667
            1616.60416666667
            129.645833333333
            341.3125)
          Font.Height = -13
          ParentFont = False
          FontSize = 10
        end
        inherited _QREmpresa: tPCPQrLabel
          Size.Values = (
            63.5
            351.895833333333
            71.4375
            1595.4375)
          FontSize = 14
        end
        inherited _QRLogo: TPCPQrImage
          Size.Values = (
            211.666666666667
            21.1666666666667
            7.9375
            317.5)
        end
        inherited _QRInforme: tPCPQrLabel
          Size.Values = (
            52.9166666666667
            362.479166666667
            10.5833333333333
            1595.4375)
          Caption = 'Listado de gestos (Elementos CST)'
          FontSize = 12
        end
        inherited _QRPagina: TQRSysData
          Top = 66
          Height = 16
          Size.Values = (
            42.3333333333333
            1746.25
            174.625
            211.666666666667)
          FontSize = 8
        end
        inherited _QRPrioridad: tPCPQrLabel
          Size.Values = (
            63.5
            555.625
            156.104166666667
            679.979166666667)
          FontSize = 14
        end
        inherited _QRLPrioridad: tPCPQrLabel
          Left = 139
          Size.Values = (
            44.9791666666667
            367.770833333333
            169.333333333333
            169.333333333333)
          FontSize = 10
        end
        inherited _QRFiltro: tPCPQrLabel
          Top = 89
          Size.Values = (
            44.9791666666667
            26.4583333333333
            235.479166666667
            494.770833333333)
          FontSize = 10
        end
        inherited _QRLine_Titulo: TPCPQrForma
          Size.Values = (
            1.88988095238095
            -3.7797619047619
            277.8125
            1957.91666666667)
        end
        object padr_cuad_1: TPCPQrForma
          Left = 8
          Top = 86
          Width = 721
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            21.1666666666667
            227.541666666667
            1907.64583333333)
          Brush.Color = clSilver
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma1: TPCPQrForma
          Left = 8
          Top = 105
          Width = 249
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            21.1666666666667
            277.8125
            658.8125)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object qrla_info_referencia: tPCPQrLabel
          Left = 14
          Top = 88
          Width = 210
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            37.0416666666667
            232.833333333333
            555.625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Información del elemento CST'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object padr_cir: tPCPQrLabel
          Left = 14
          Top = 106
          Width = 38
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            37.0416666666667
            280.458333333333
            100.541666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Código:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object padr_cir_db: TPCPQRDBText
          Left = 96
          Top = 107
          Width = 156
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            254
            283.104166666667
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_encabezado
          DataField = 'CODI_ELEM_CST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQrForma2: TPCPQrForma
          Left = 256
          Top = 105
          Width = 473
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            677.333333333333
            277.8125
            1251.47916666667)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel1: tPCPQrLabel
          Left = 261
          Top = 106
          Width = 83
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            690.5625
            280.458333333333
            219.604166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nombre elmento:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText1: TPCPQRDBText
          Left = 360
          Top = 107
          Width = 361
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            952.5
            283.104166666667
            955.145833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_encabezado
          DataField = 'NOMB_ELEM_CST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQrForma3: TPCPQrForma
          Left = 8
          Top = 124
          Width = 249
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            21.1666666666667
            328.083333333333
            658.8125)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel2: tPCPQrLabel
          Left = 14
          Top = 126
          Width = 80
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            37.0416666666667
            333.375
            211.666666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Grado dificultad:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText2: TPCPQRDBText
          Left = 96
          Top = 126
          Width = 156
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            254
            333.375
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_encabezado
          DataField = 'NOMB_CST_DIFICULTAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQrForma4: TPCPQrForma
          Left = 256
          Top = 124
          Width = 249
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            677.333333333333
            328.083333333333
            658.8125)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma5: TPCPQrForma
          Left = 504
          Top = 124
          Width = 224
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1334.25595238095
            328.839285714286
            593.422619047619)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel3: tPCPQrLabel
          Left = 261
          Top = 126
          Width = 81
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            690.5625
            333.375
            214.3125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Posicionamiento:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText3: TPCPQRDBText
          Left = 360
          Top = 126
          Width = 137
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            952.5
            333.375
            362.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_encabezado
          DataField = 'NOMB_CST_POSICIONAMIENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel4: tPCPQrLabel
          Left = 509
          Top = 126
          Width = 48
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            1346.72916666667
            333.375
            127)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Distancia:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText4: TPCPQRDBText
          Left = 600
          Top = 126
          Width = 121
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1587.5
            333.375
            320.145833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_encabezado
          DataField = 'NOMB_CST_DISTANCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQrForma6: TPCPQrForma
          Left = 8
          Top = 143
          Width = 249
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            21.1666666666667
            378.354166666667
            658.8125)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel5: tPCPQrLabel
          Left = 14
          Top = 145
          Width = 83
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            37.0416666666667
            383.645833333333
            219.604166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Ult. modificación:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText5: TPCPQRDBText
          Left = 96
          Top = 145
          Width = 156
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            254
            383.645833333333
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_encabezado
          DataField = 'FECH_MODIFICACION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQrForma7: TPCPQrForma
          Left = 256
          Top = 143
          Width = 473
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            677.333333333333
            378.354166666667
            1251.47916666667)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel6: tPCPQrLabel
          Left = 261
          Top = 145
          Width = 43
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            690.5625
            383.645833333333
            113.770833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Analista:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText6: TPCPQRDBText
          Left = 360
          Top = 145
          Width = 361
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            952.5
            383.645833333333
            955.145833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_encabezado
          DataField = 'NOMB_ANALISTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
      end
      inherited _QRBanda_Eslogan: TPCPQRBand
        Top = 350
        Size.Values = (
          92.6041666666667
          1957.91666666667)
        inherited _QREslogan: TQRMemo
          Height = 34
          Size.Values = (
            89.9583333333333
            0
            0
            1484.3125)
          FontSize = 8
        end
        inherited _QRSistema: tPCPQrLabel
          Height = 31
          Size.Values = (
            82.0208333333333
            1510.77083333333
            13.2291666666667
            447.145833333333)
          FontSize = 10
        end
        inherited _QRLine_Eslogan: TPCPQrForma
          Size.Values = (
            2.64583333333333
            13.2291666666667
            13.2291666666667
            1957.91666666667)
        end
      end
      inherited _QRBanda_Firmas: TPCPQRBand
        Top = 274
        Height = 76
        Size.Values = (
          201.083333333333
          1957.91666666667)
        inherited _QRS1: TPCPQrForma
          Size.Values = (
            171.979166666667
            23.8125
            23.8125
            320.145833333333)
        end
        inherited _QRS2: TPCPQrForma
          Size.Values = (
            171.979166666667
            341.3125
            23.8125
            320.145833333333)
        end
        inherited _QRS3: TPCPQrForma
          Size.Values = (
            171.979166666667
            658.8125
            23.8125
            320.145833333333)
        end
        inherited _QRS4: TPCPQrForma
          Size.Values = (
            171.979166666667
            976.3125
            23.8125
            320.145833333333)
        end
        inherited _QRS5: TPCPQrForma
          Size.Values = (
            171.979166666667
            1293.8125
            23.8125
            320.145833333333)
        end
        inherited _QRS6: TPCPQrForma
          Size.Values = (
            171.979166666667
            1611.3125
            23.8125
            320.145833333333)
        end
        inherited _QRFirma1: tPCPQrLabel
          Size.Values = (
            42.3333333333333
            37.0416666666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
        inherited _QRFirma2: tPCPQrLabel
          Size.Values = (
            42.3333333333333
            354.541666666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
        inherited _QRFirma3: tPCPQrLabel
          Size.Values = (
            42.3333333333333
            672.041666666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
        inherited _QRFirma4: tPCPQrLabel
          Size.Values = (
            42.3333333333333
            989.541666666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
        inherited _QRFirma5: tPCPQrLabel
          Size.Values = (
            42.3333333333333
            1307.04166666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
        inherited _QRFirma6: tPCPQrLabel
          Size.Values = (
            42.3333333333333
            1624.54166666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
      end
      inherited _QRBanda_Maestra: TPCPQRBand
        Top = 274
        Height = 0
        Size.Values = (
          0
          1957.91666666667)
      end
      object grup_detalle: TQRGroup
        Left = 38
        Top = 209
        Width = 740
        Height = 26
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
          68.7916666666667
          1957.91666666667)
        Master = _QRPadre
        ReprintOnNewPage = False
        object PCPQrForma10: TPCPQrForma
          Left = 8
          Top = 6
          Width = 720
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            21.1666666666667
            15.875
            1905)
          Brush.Color = clSilver
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel11: tPCPQrLabel
          Left = 13
          Top = 7
          Width = 18
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.6875
            34.3958333333333
            18.5208333333333
            47.625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'No.'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel7: tPCPQrLabel
          Left = 34
          Top = 7
          Width = 147
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.6875
            89.9583333333333
            18.5208333333333
            388.9375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Movimiento MANO IZQUIERDA'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel8: tPCPQrLabel
          Left = 248
          Top = 7
          Width = 57
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.6875
            656.166666666667
            18.5208333333333
            150.8125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Código M.I.'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel9: tPCPQrLabel
          Left = 312
          Top = 7
          Width = 67
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.6875
            825.5
            18.5208333333333
            177.270833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tiempo (TMU)'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel10: tPCPQrLabel
          Left = 384
          Top = 7
          Width = 60
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.6875
            1016
            18.5208333333333
            158.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Código M.D.'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel12: tPCPQrLabel
          Left = 449
          Top = 7
          Width = 138
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.6875
            1187.97916666667
            18.5208333333333
            365.125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Movimiento MANO DERECHA'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object qrla_tiempo2: tPCPQrLabel
          Left = 661
          Top = 7
          Width = 62
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.6875
            1748.89583333333
            18.5208333333333
            164.041666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tiempo (Min)'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
      end
      object dato_detalle: TQRSubDetail
        Left = 38
        Top = 235
        Width = 740
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ForceNewColumn = False
        ForceNewPage = False
        LinkBand = grup_detalle
        ParentFont = False
        Size.Values = (
          39.6875
          1957.91666666667)
        Master = _QRPadre
        DataSet = quer_detalle
        FooterBand = foot_detalle
        HeaderBand = grup_detalle
        PrintBefore = True
        PrintIfEmpty = True
        object PCPQRDBText7: TPCPQRDBText
          Left = 3
          Top = 1
          Width = 28
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            7.55952380952381
            1.88988095238095
            73.7053571428571)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalle
          DataField = 'SECU_MOVIMIENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText8: TPCPQRDBText
          Left = 34
          Top = 1
          Width = 195
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            90.7142857142857
            1.88988095238095
            515.9375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalle
          DataField = 'NOMB_MANO_IZQUIERDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText9: TPCPQRDBText
          Left = 247
          Top = 1
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            653.89880952381
            1.88988095238095
            154.970238095238)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalle
          DataField = 'CODI_MANO_IZQUIERDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText10: TPCPQRDBText
          Left = 314
          Top = 1
          Width = 67
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            829.657738095238
            1.88988095238095
            177.64880952381)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalle
          DataField = 'TIEM_MOVIMIENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText11: TPCPQRDBText
          Left = 384
          Top = 1
          Width = 60
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1016.75595238095
            1.88988095238095
            158.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalle
          DataField = 'CODI_MANO_DERECHA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText12: TPCPQRDBText
          Left = 449
          Top = 1
          Width = 203
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1188.73511904762
            1.88988095238095
            536.72619047619)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalle
          DataField = 'NOMB_MANO_DERECHA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText13: TPCPQRDBText
          Left = 655
          Top = 1
          Width = 67
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1733.02083333333
            1.88988095238095
            177.64880952381)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalle
          DataField = 'TIEM_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
      end
      object foot_detalle: TQRBand
        Left = 38
        Top = 250
        Width = 740
        Height = 24
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
          63.5
          1957.91666666667)
        BandType = rbGroupFooter
        object PCPQrForma9: TPCPQrForma
          Left = 640
          Top = 3
          Width = 87
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1693.33333333333
            7.55952380952381
            230.565476190476)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma8: TPCPQrForma
          Left = 297
          Top = 3
          Width = 88
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            786.190476190476
            7.55952380952381
            232.455357142857)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object qrex_tiem_movimiento: TQRExpr
          Left = 301
          Top = 3
          Width = 79
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            795.639880952381
            7.55952380952381
            209.776785714286)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Color = clWhite
          Master = dato_detalle
          ParentFont = False
          ResetAfterPrint = True
          Transparent = True
          WordWrap = True
          Expression = 'SUM(quer_detalle.TIEM_MOVIMIENTO)'
          FontSize = 8
        end
        object qrex_sum_tiem_2: TQRExpr
          Left = 644
          Top = 3
          Width = 79
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1702.78273809524
            7.55952380952381
            209.776785714286)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Color = clWhite
          Master = dato_detalle
          ParentFont = False
          ResetAfterPrint = True
          Transparent = True
          WordWrap = True
          Expression = 'SUM(quer_detalle.TIEM_2)'
          FontSize = 8
        end
        object QRLabel1: TQRLabel
          Left = 257
          Top = 4
          Width = 33
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            679.979166666667
            10.5833333333333
            87.3125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Total:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
      end
      object QRBand1: TQRBand
        Left = 38
        Top = 385
        Width = 740
        Height = 101
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
          266.473214285714
          1957.91666666667)
        BandType = rbSummary
        object QRLabel2: TQRLabel
          Left = 9
          Top = 5
          Width = 99
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            23.8125
            13.2291666666667
            261.9375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Descripción y gestos'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRShape1: TQRShape
          Left = 8
          Top = 20
          Width = 718
          Height = 76
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            200.327380952381
            20.7886904761905
            52.9166666666667
            1899.33035714286)
          Shape = qrsRectangle
        end
        object QRDBText1: TQRDBText
          Left = 11
          Top = 23
          Width = 710
          Height = 69
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            183.318452380952
            30.2380952380952
            60.4761904761905
            1878.54166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_encabezado
          DataField = 'DESCRIPCION'
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
      end
    end
  end
  inherited padr_barr_dock: TTBXDock
    inherited padr_barr_titulo: TTBXToolbar
      inherited BGuardar: TTBXItem
        Enabled = False
      end
      inherited BGuardar_Como: TTBXItem
        Enabled = False
      end
    end
  end
  inherited TBXDock1: TTBXDock
    Width = 36
    Height = 478
    inherited DBPropiedades_Informes: TTBXDockablePanel
      DockedWidth = 32
      inherited shap_xp: TShape
        Width = 32
      end
      inherited Panel1: TPanel
        Width = 32
        Height = 456
        inherited dfsSplitter1: TdfsSplitter
          Width = 32
        end
        inherited FPropiedades: TPCPFrame
          Width = 32
          inherited Panel2: TPanel
            Width = 28
          end
          inherited dxPageControl1: TSCLPageControl
            Width = 28
            FixedDimension = 19
            inherited dxTabSheet1: TSCLTabSheet
              inherited Propiedades_Componente: TZPropList
                Width = 24
                Middle = 32
              end
            end
          end
        end
        inherited FEstructura_Informes: TPCPFrame
          Tag = 185
          Width = 32
          Height = 185
          inherited DBInformes: TdxDBGrid
            Width = 28
            Height = 162
            Filter.Criteria = {00000000}
          end
        end
      end
      inherited JvGradientHeaderPanel3: TJvGradientHeaderPanel
        Width = 32
      end
    end
  end
  inherited padr_info_acciones: TActionList
    inherited Acti_propiedades: TAction
      Enabled = False
    end
    inherited Acti_guar_estructura: TAction
      Enabled = False
    end
    inherited Acti_leer_estructura: TAction
      Enabled = False
    end
    inherited Acti_Guar_Como_Estructura: TAction
      Enabled = False
    end
    inherited Acti_Elim_Informe: TAction
      Enabled = False
    end
  end
  object quer_encabezado: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select '
      'codi_elem_cst, nomb_elem_cst, nomb_cst_dificultad,'
      'nomb_cst_distancia, nomb_cst_posicionamiento, tiem_cst,'
      'nomb_analista, fech_modificacion, descripcion'
      'From'
      'VIS_PCP_ELEM_CST'
      'Where codi_elem_cst = :codi_elem_cst')
    Left = 902
    Top = 52
    ParamData = <
      item
        DataType = ftString
        Name = 'codi_elem_cst'
        ParamType = ptInput
        Value = 'PRUEBA'
      end>
    object quer_encabezadoCODI_ELEM_CST: TStringField
      FieldName = 'CODI_ELEM_CST'
      Size = 12
    end
    object quer_encabezadoNOMB_ELEM_CST: TStringField
      FieldName = 'NOMB_ELEM_CST'
      Size = 60
    end
    object quer_encabezadoNOMB_CST_DIFICULTAD: TStringField
      FieldName = 'NOMB_CST_DIFICULTAD'
      Size = 60
    end
    object quer_encabezadoNOMB_CST_DISTANCIA: TStringField
      FieldName = 'NOMB_CST_DISTANCIA'
      Size = 60
    end
    object quer_encabezadoNOMB_CST_POSICIONAMIENTO: TStringField
      FieldName = 'NOMB_CST_POSICIONAMIENTO'
      Size = 60
    end
    object quer_encabezadoTIEM_CST: TFloatField
      FieldName = 'TIEM_CST'
    end
    object quer_encabezadoNOMB_ANALISTA: TStringField
      FieldName = 'NOMB_ANALISTA'
      Size = 60
    end
    object quer_encabezadoFECH_MODIFICACION: TDateTimeField
      FieldName = 'FECH_MODIFICACION'
    end
    object quer_encabezadoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 240
    end
  end
  object quer_detalle: TQuery
    OnCalcFields = quer_detalleCalcFields
    DatabaseName = 'data_base_pcp'
    DataSource = data_encabezado
    SQL.Strings = (
      'Select secu_movimiento, codi_mano_derecha, nomb_mano_derecha,'
      'codi_mano_izquierda, nomb_mano_izquierda, tiem_movimiento'
      'from pcp_elem_cst_gestos'
      'where codi_elem_cst = :codi_elem_cst'
      'order by secu_movimiento')
    Left = 902
    Top = 92
    ParamData = <
      item
        DataType = ftString
        Name = 'CODI_ELEM_CST'
        ParamType = ptInput
      end>
    object quer_detalleSECU_MOVIMIENTO: TIntegerField
      FieldName = 'SECU_MOVIMIENTO'
    end
    object quer_detalleCODI_MANO_DERECHA: TStringField
      FieldName = 'CODI_MANO_DERECHA'
      Size = 12
    end
    object quer_detalleNOMB_MANO_DERECHA: TStringField
      FieldName = 'NOMB_MANO_DERECHA'
      Size = 60
    end
    object quer_detalleCODI_MANO_IZQUIERDA: TStringField
      FieldName = 'CODI_MANO_IZQUIERDA'
      Size = 12
    end
    object quer_detalleNOMB_MANO_IZQUIERDA: TStringField
      FieldName = 'NOMB_MANO_IZQUIERDA'
      Size = 60
    end
    object quer_detalleTIEM_MOVIMIENTO: TFloatField
      FieldName = 'TIEM_MOVIMIENTO'
    end
    object quer_detalleTIEM_2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TIEM_2'
      Calculated = True
    end
  end
  object data_encabezado: TDataSource
    DataSet = quer_encabezado
    Left = 936
    Top = 54
  end
end

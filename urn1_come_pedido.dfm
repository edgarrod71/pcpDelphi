inherited rn1_come_pedido: Trn1_come_pedido
  Tag = 0
  Left = 23
  Top = 89
  Height = 559
  Caption = 'rn1_come_pedido'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    Left = 36
    Width = 992
    Height = 506
    HorzScrollBar.Position = 604
    VertScrollBar.Position = 614
    inherited _QRPadre: TPCPQuickReport
      Left = -600
      Top = -626
      Width = 1795
      Height = 2323
      DataSet = quer_pedi_Referencias
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
      ReportTitle = 'Pedido de producción'
      Zoom = 220
      inherited _QRBanda_Page_Header: TPCPQRBand
        Left = 83
        Top = 83
        Width = 1629
        Height = 372
        Size.Values = (
          447.386363636364
          1959.11931818182)
        inherited _QRFecha: TQRSysData
          Left = 1366
          Top = 110
          Width = 240
          Height = 35
          Size.Values = (
            42.092803030303
            1642.82196969697
            132.291666666667
            288.636363636364)
          AlignToBand = False
          FontSize = 8
        end
        inherited _QREmpresa: tPCPQrLabel
          Left = 293
          Top = 59
          Width = 1327
          Height = 53
          Size.Values = (
            63.5
            351.895833333333
            71.4375
            1595.4375)
          FontSize = 14
        end
        inherited _QRLogo: TPCPQrImage
          Left = 18
          Top = 7
          Width = 264
          Height = 176
          Size.Values = (
            211.666666666667
            21.1666666666667
            7.9375
            317.5)
        end
        inherited _QRInforme: tPCPQrLabel
          Left = 302
          Top = 9
          Width = 1327
          Height = 44
          Size.Values = (
            52.9166666666667
            363.200757575758
            10.8238636363636
            1595.91856060606)
          FontSize = 12
        end
        inherited _QRPagina: TQRSysData
          Left = 1430
          Top = 145
          Width = 176
          Height = 35
          Size.Values = (
            42.092803030303
            1719.79166666667
            174.38446969697
            211.666666666667)
          AlignToBand = False
          FontSize = 8
        end
        inherited _QRPrioridad: tPCPQrLabel
          Left = 462
          Top = 132
          Width = 565
          Height = 55
          Size.Values = (
            66.1458333333333
            555.625
            158.75
            679.498106060606)
          FontSize = 14
        end
        inherited _QRLPrioridad: tPCPQrLabel
          Left = 306
          Top = 143
          Width = 141
          Height = 37
          Size.Values = (
            44.4981060606061
            368.011363636364
            171.979166666667
            169.573863636364)
          FontSize = 10
        end
        inherited _QRFiltro: tPCPQrLabel
          Left = 11
          Top = 18
          Width = 11
          Height = 37
          Size.Values = (
            44.4981060606061
            13.2291666666667
            21.6477272727273
            13.2291666666667)
          Caption = ' '
          FontSize = 10
        end
        inherited _QRLine_Titulo: TPCPQrForma
          Left = -3
          Top = 231
          Width = 1628
          Height = 2
          Size.Values = (
            1.88988095238095
            -3.7797619047619
            277.8125
            1957.91666666667)
        end
        object tPCPQrLabel1: tPCPQrLabel
          Left = 22
          Top = 196
          Width = 411
          Height = 37
          Hint = 'Detalle del filtro del Informe:'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.4981060606061
            26.4583333333333
            235.719696969697
            494.289772727273)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Detalle del filtro del Informe:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          PopUpMenu = PMComponentes
          Seleccionado = False
          FontSize = 10
        end
        object padr_cuad_1: TPCPQrForma
          Left = 18
          Top = 189
          Width = 1586
          Height = 44
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
          Left = 18
          Top = 231
          Width = 548
          Height = 44
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
          Shape = qrsRectangle
          Seleccionado = False
        end
        object qrla_info_referencia: tPCPQrLabel
          Left = 31
          Top = 194
          Width = 475
          Height = 37
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            37.0416666666667
            232.833333333333
            571.5)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Información del pedido'
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
          Left = 31
          Top = 233
          Width = 125
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            37.282196969697
            280.217803030303
            150.331439393939)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'No. pedido:'
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
          Left = 211
          Top = 235
          Width = 343
          Height = 37
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
          DataSet = quer_pedido
          DataField = 'NUME_PEDIDO'
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
          Left = 563
          Top = 231
          Width = 1041
          Height = 44
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
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel2: tPCPQrLabel
          Left = 572
          Top = 233
          Width = 84
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            687.916666666667
            280.217803030303
            101.022727272727)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cliente:'
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
          Left = 792
          Top = 236
          Width = 794
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            952.5
            283.482142857143
            954.389880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedido
          DataField = 'NOMB_TERCERO'
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
          Left = 18
          Top = 273
          Width = 548
          Height = 44
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
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel3: tPCPQrLabel
          Left = 31
          Top = 275
          Width = 130
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            37.282196969697
            330.729166666667
            156.344696969697)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Temporada:'
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
          Left = 211
          Top = 277
          Width = 343
          Height = 37
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
          DataSet = quer_pedido
          DataField = 'NOMB_REFE_TEMPORADA'
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
          Left = 563
          Top = 273
          Width = 548
          Height = 44
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
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma5: TPCPQrForma
          Left = 1109
          Top = 273
          Width = 495
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1333.74053030303
            328.323863636364
            595.3125)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel4: tPCPQrLabel
          Left = 572
          Top = 275
          Width = 152
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            687.916666666667
            330.729166666667
            182.80303030303)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fecha pedido:'
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
          Left = 792
          Top = 277
          Width = 301
          Height = 37
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
          DataSet = quer_pedido
          DataField = 'FECH_PEDIDO'
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
        object tPCPQrLabel5: tPCPQrLabel
          Left = 1122
          Top = 275
          Width = 165
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            1349.375
            330.729166666667
            198.4375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fecha entrega:'
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
          Left = 1320
          Top = 277
          Width = 266
          Height = 37
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
          DataSet = quer_pedido
          DataField = 'FECH_ENTREGA'
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
        object PCPQrForma6: TPCPQrForma
          Left = 18
          Top = 315
          Width = 548
          Height = 44
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
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel6: tPCPQrLabel
          Left = 31
          Top = 319
          Width = 103
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            37.282196969697
            383.645833333333
            123.873106060606)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Prioridad:'
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
          Left = 211
          Top = 319
          Width = 343
          Height = 37
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
          DataSet = quer_pedido
          DataField = 'NOMB_COME_PRIO_PEDIDO'
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
          Left = 563
          Top = 315
          Width = 1041
          Height = 44
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
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel7: tPCPQrLabel
          Left = 572
          Top = 319
          Width = 112
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            687.916666666667
            383.645833333333
            134.69696969697)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Vendedor:'
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
          Left = 792
          Top = 319
          Width = 794
          Height = 37
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
          DataSet = quer_pedido
          DataField = 'NOMB_COME_VENDEDOR'
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
        Left = 83
        Top = 1053
        Width = 1629
        Height = 77
        Size.Values = (
          92.6041666666667
          1959.11931818182)
        inherited _QREslogan: TQRMemo
          Width = 1232
          Height = 75
          Size.Values = (
            90.1988636363636
            0
            0
            1481.66666666667)
          FontSize = 8
        end
        inherited _QRSistema: tPCPQrLabel
          Left = 1255
          Top = 11
          Width = 374
          Height = 68
          Size.Values = (
            81.780303030303
            1509.32765151515
            13.2291666666667
            449.791666666667)
          FontSize = 10
        end
        inherited _QRLine_Eslogan: TPCPQrForma
          Left = 11
          Top = 11
          Width = 1628
          Height = 2
          Size.Values = (
            2.64583333333333
            13.2291666666667
            13.2291666666667
            1957.91666666667)
        end
      end
      inherited _QRBanda_Firmas: TPCPQRBand
        Left = 83
        Top = 907
        Width = 1629
        Height = 146
        Size.Values = (
          175.587121212121
          1959.11931818182)
        inherited _QRS1: TPCPQrForma
          Left = 20
          Top = 20
          Width = 266
          Height = 143
          Size.Values = (
            171.979166666667
            23.8125
            23.8125
            320.145833333333)
        end
        inherited _QRS2: TPCPQrForma
          Left = 284
          Top = 20
          Width = 266
          Height = 143
          Size.Values = (
            171.979166666667
            341.3125
            23.8125
            320.145833333333)
        end
        inherited _QRS3: TPCPQrForma
          Left = 548
          Top = 20
          Width = 266
          Height = 143
          Size.Values = (
            171.979166666667
            658.8125
            23.8125
            320.145833333333)
        end
        inherited _QRS4: TPCPQrForma
          Left = 812
          Top = 20
          Width = 266
          Height = 143
          Size.Values = (
            171.979166666667
            976.3125
            23.8125
            320.145833333333)
        end
        inherited _QRS5: TPCPQrForma
          Left = 1076
          Top = 20
          Width = 266
          Height = 143
          Size.Values = (
            171.979166666667
            1293.8125
            23.8125
            320.145833333333)
        end
        inherited _QRS6: TPCPQrForma
          Left = 1340
          Top = 20
          Width = 266
          Height = 143
          Size.Values = (
            171.979166666667
            1611.3125
            23.8125
            320.145833333333)
        end
        inherited _QRFirma1: tPCPQrLabel
          Left = 31
          Top = 29
          Width = 244
          Height = 35
          Size.Values = (
            42.3333333333333
            37.0416666666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
        inherited _QRFirma2: tPCPQrLabel
          Left = 295
          Top = 29
          Width = 244
          Height = 35
          Size.Values = (
            42.3333333333333
            354.541666666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
        inherited _QRFirma3: tPCPQrLabel
          Left = 559
          Top = 29
          Width = 244
          Height = 35
          Size.Values = (
            42.3333333333333
            672.041666666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
        inherited _QRFirma4: tPCPQrLabel
          Left = 823
          Top = 29
          Width = 244
          Height = 35
          Size.Values = (
            42.3333333333333
            989.541666666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
        inherited _QRFirma5: tPCPQrLabel
          Left = 1087
          Top = 29
          Width = 244
          Height = 35
          Size.Values = (
            42.3333333333333
            1307.04166666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
        inherited _QRFirma6: tPCPQrLabel
          Left = 1351
          Top = 29
          Width = 244
          Height = 35
          Size.Values = (
            42.3333333333333
            1624.54166666667
            34.3958333333333
            293.6875)
          FontSize = 9
        end
      end
      inherited _QRBanda_Maestra: TPCPQRBand
        Left = 83
        Top = 695
        Width = 1629
        Height = 183
        BeforePrint = _QRBanda_MaestraBeforePrint
        Size.Values = (
          220.085227272727
          1959.11931818182)
        BandType = rbGroupHeader
        object PCPQrForma25: TPCPQrForma
          Left = 266
          Top = 150
          Width = 1337
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            319.905303030303
            180.397727272727
            1607.94507575758)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma15: TPCPQrForma
          Left = 17
          Top = 25
          Width = 1586
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            20.7886904761905
            30.2380952380952
            1906.88988095238)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma18: TPCPQrForma
          Left = 17
          Top = 25
          Width = 548
          Height = 43
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            51.7140151515152
            20.4450757575758
            30.0662878787879
            659.05303030303)
          Brush.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel18: tPCPQrLabel
          Left = 31
          Top = 31
          Width = 161
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            37.282196969697
            37.282196969697
            193.626893939394)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Orden compra:'
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
        object PCPQRDBText15: TPCPQRDBText
          Left = 211
          Top = 30
          Width = 343
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            253.244047619048
            35.9077380952381
            411.994047619048)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedi_Referencias
          DataField = 'ORDE_COMPRA'
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
        object PCPQrForma19: TPCPQrForma
          Left = 563
          Top = 25
          Width = 548
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            676.577380952381
            30.2380952380952
            659.568452380952)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel19: tPCPQrLabel
          Left = 572
          Top = 31
          Width = 125
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            687.916666666667
            37.282196969697
            150.331439393939)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Referencia:'
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
        object PCPQRDBText16: TPCPQRDBText
          Left = 792
          Top = 28
          Width = 302
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            952.5
            34.0178571428571
            362.857142857143)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedi_Referencias
          DataField = 'CODI_REFERENCIA'
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
        object PCPQrForma20: TPCPQrForma
          Left = 1109
          Top = 25
          Width = 494
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1333.74053030303
            30.0662878787879
            594.109848484848)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel20: tPCPQrLabel
          Left = 1122
          Top = 31
          Width = 106
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            1349.375
            37.282196969697
            127.481060606061)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Variación:'
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
        object PCPQRDBText17: TPCPQRDBText
          Left = 1320
          Top = 28
          Width = 266
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1587.5
            34.0178571428571
            319.389880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedi_Referencias
          DataField = 'NOMB_REFE_TIPO_VARIACION'
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
        object PCPQrForma21: TPCPQrForma
          Left = 17
          Top = 67
          Width = 548
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            20.4450757575758
            80.5776515151515
            659.05303030303)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel21: tPCPQrLabel
          Left = 29
          Top = 70
          Width = 77
          Height = 37
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.4981060606061
            34.8768939393939
            84.1856060606061
            92.6041666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'C.I.R.:'
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
        object PCPQRDBText18: TPCPQRDBText
          Left = 211
          Top = 71
          Width = 343
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            253.244047619048
            85.0446428571429
            411.994047619048)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedi_Referencias
          DataField = 'CODI_INTE_REFERENCIA'
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
        object PCPQrForma22: TPCPQrForma
          Left = 563
          Top = 67
          Width = 1040
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            677.092803030303
            80.5776515151515
            1250.75757575758)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel22: tPCPQrLabel
          Left = 572
          Top = 70
          Width = 207
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            687.916666666667
            84.1856060606061
            248.948863636364)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nombre referencia:'
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
        object PCPQRDBText19: TPCPQRDBText
          Left = 792
          Top = 71
          Width = 794
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            952.5
            85.0446428571429
            954.389880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedi_Referencias
          DataField = 'NOMB_REFERENCIA'
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
        object tPCPQrLabel26: tPCPQrLabel
          Left = 273
          Top = 152
          Width = 1313
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            328.083333333333
            182.5625
            1579.5625)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'TALLAS'
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
        object PCPQrForma45: TPCPQrForma
          Left = 17
          Top = 107
          Width = 548
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            20.7886904761905
            128.511904761905
            659.568452380952)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel27: tPCPQrLabel
          Left = 29
          Top = 110
          Width = 132
          Height = 37
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.4981060606061
            34.8768939393939
            132.291666666667
            158.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo lavado:'
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
        object PCPQRDBText41: TPCPQRDBText
          Left = 211
          Top = 110
          Width = 343
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            253.244047619048
            132.291666666667
            411.994047619048)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedi_Referencias
          DataField = 'NOMB_REFE_LAVADO'
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
        object PCPQrForma46: TPCPQrForma
          Left = 563
          Top = 107
          Width = 548
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            676.577380952381
            128.511904761905
            659.568452380952)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel28: tPCPQrLabel
          Left = 572
          Top = 110
          Width = 154
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            687.916666666667
            132.291666666667
            185.208333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '% Tol inferior:'
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
        object PCPQRDBText42: TPCPQRDBText
          Left = 792
          Top = 110
          Width = 302
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            952.5
            132.291666666667
            362.857142857143)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedi_Referencias
          DataField = 'TOLE_INFERIOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Mask = ',0.00 %'
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQrForma48: TPCPQrForma
          Left = 1109
          Top = 107
          Width = 494
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1333.74053030303
            128.683712121212
            594.109848484848)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel29: tPCPQrLabel
          Left = 1122
          Top = 110
          Width = 174
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            1349.375
            132.291666666667
            209.261363636364)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '% Tol. superior:'
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
        object PCPQRDBText43: TPCPQRDBText
          Left = 1320
          Top = 110
          Width = 266
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1587.5
            132.291666666667
            319.389880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedi_Referencias
          DataField = 'TOLE_SUPERIOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Mask = ',0.00 %'
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQrForma23: TPCPQrForma
          Left = 17
          Top = 150
          Width = 1
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            20.4450757575758
            180.397727272727
            1.20265151515152)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object labe_con_entrepierna: tPCPQrLabel
          Left = 33
          Top = 152
          Width = 227
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            39.6875
            182.80303030303
            273.001893939394)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'XXXXXXXXXXXXXXXXX'
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
      object band_info_cliente: TQRChildBand
        Left = 83
        Top = 455
        Width = 1629
        Height = 240
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        BeforePrint = band_info_clienteBeforePrint
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          288.636363636364
          1959.11931818182)
        ParentBand = _QRBanda_Page_Header
        object PCPQrForma16: TPCPQrForma
          Left = 17
          Top = 181
          Width = 1586
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            20.7886904761905
            217.33630952381
            1906.88988095238)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma17: TPCPQrForma
          Left = 1109
          Top = 180
          Width = 494
          Height = 45
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            54.1193181818182
            1333.74053030303
            216.477272727273
            594.109848484848)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel8: tPCPQrLabel
          Left = 22
          Top = 20
          Width = 411
          Height = 37
          Hint = 'Detalle del filtro del Informe:'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.4981060606061
            26.4583333333333
            24.0530303030303
            494.289772727273)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Detalle del filtro del Informe:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          PopUpMenu = PMComponentes
          Seleccionado = False
          FontSize = 10
        end
        object PCPQrForma8: TPCPQrForma
          Left = 17
          Top = 13
          Width = 1586
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            20.7886904761905
            15.1190476190476
            1906.88988095238)
          Brush.Color = clSilver
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma9: TPCPQrForma
          Left = 17
          Top = 55
          Width = 548
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            20.7886904761905
            66.1458333333333
            659.568452380952)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel9: tPCPQrLabel
          Left = 31
          Top = 18
          Width = 475
          Height = 37
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            37.0416666666667
            21.1666666666667
            571.5)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Información del cliente'
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
        object tPCPQrLabel10: tPCPQrLabel
          Left = 31
          Top = 57
          Width = 84
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            37.282196969697
            68.5511363636364
            101.022727272727)
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
        object PCPQRDBText7: TPCPQRDBText
          Left = 211
          Top = 60
          Width = 343
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            253.244047619048
            71.8154761904762
            411.994047619048)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedido
          DataField = 'NUME_PEDIDO'
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
        object PCPQrForma10: TPCPQrForma
          Left = 563
          Top = 55
          Width = 1040
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            676.577380952381
            66.1458333333333
            1251.10119047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel11: tPCPQrLabel
          Left = 572
          Top = 57
          Width = 147
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            687.916666666667
            68.5511363636364
            176.789772727273)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cédula o NIT:'
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
        object PCPQRDBText8: TPCPQRDBText
          Left = 792
          Top = 60
          Width = 794
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            952.5
            71.8154761904762
            954.389880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedido
          DataField = 'NOMB_TERCERO'
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
        object PCPQrForma11: TPCPQrForma
          Left = 17
          Top = 97
          Width = 548
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            20.7886904761905
            117.172619047619
            659.568452380952)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel12: tPCPQrLabel
          Left = 31
          Top = 99
          Width = 53
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            37.282196969697
            119.0625
            63.7405303030303)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'País:'
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
        object PCPQRDBText9: TPCPQRDBText
          Left = 211
          Top = 101
          Width = 343
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            253.244047619048
            120.952380952381
            411.994047619048)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedido
          DataField = 'NOMB_REFE_TEMPORADA'
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
        object PCPQrForma12: TPCPQrForma
          Left = 563
          Top = 97
          Width = 548
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            676.577380952381
            117.172619047619
            659.568452380952)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma13: TPCPQrForma
          Left = 1109
          Top = 97
          Width = 494
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1333.74053030303
            116.657196969697
            594.109848484848)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel13: tPCPQrLabel
          Left = 572
          Top = 99
          Width = 163
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            687.916666666667
            119.0625
            196.032196969697)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Departamento:'
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
        object PCPQRDBText10: TPCPQRDBText
          Left = 792
          Top = 101
          Width = 302
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            952.5
            120.952380952381
            362.857142857143)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedido
          DataField = 'FECH_PEDIDO'
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
        object tPCPQrLabel14: tPCPQrLabel
          Left = 1122
          Top = 99
          Width = 84
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            1349.375
            119.0625
            101.022727272727)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Ciudad:'
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
        object PCPQRDBText11: TPCPQRDBText
          Left = 1320
          Top = 101
          Width = 266
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1587.5
            120.952380952381
            319.389880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedido
          DataField = 'FECH_ENTREGA'
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
        object PCPQrForma14: TPCPQrForma
          Left = 17
          Top = 138
          Width = 1586
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            20.4450757575758
            165.965909090909
            1907.4053030303)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel15: tPCPQrLabel
          Left = 31
          Top = 143
          Width = 106
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            37.282196969697
            171.979166666667
            127.481060606061)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Dirección:'
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
        object PCPQRDBText12: TPCPQRDBText
          Left = 211
          Top = 143
          Width = 1375
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            253.244047619048
            171.979166666667
            1653.64583333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedido
          DataField = 'NOMB_COME_PRIO_PEDIDO'
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
        object tPCPQrLabel16: tPCPQrLabel
          Left = 1113
          Top = 187
          Width = 103
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            1338.55113636364
            224.895833333333
            123.873106060606)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Teléfono:'
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
        object PCPQRDBText13: TPCPQRDBText
          Left = 1320
          Top = 185
          Width = 266
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1587.5
            223.005952380952
            319.389880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedido
          DataField = 'NOMB_COME_VENDEDOR'
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
        object tPCPQrLabel17: tPCPQrLabel
          Left = 31
          Top = 187
          Width = 108
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.092803030303
            37.282196969697
            224.895833333333
            129.886363636364)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Contacto:'
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
        object PCPQRDBText14: TPCPQRDBText
          Left = 211
          Top = 185
          Width = 885
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            253.244047619048
            223.005952380952
            1064.00297619048)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_pedido
          DataField = 'NOMB_COME_PRIO_PEDIDO'
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
      object QRSubDetail1: TQRSubDetail
        Left = 83
        Top = 878
        Width = 1629
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        LinkBand = _QRBanda_Maestra
        Size.Values = (
          34.8768939393939
          1959.11931818182)
        Master = _QRPadre
        DataSet = quer_unidades
        HeaderBand = _QRBanda_Maestra
        PrintBefore = False
        PrintIfEmpty = True
        object form_total: TPCPQrForma
          Left = 17
          Top = -2
          Width = 1586
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37
            20.4450757575758
            -2
            1907.4053030303)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object form_total2: TPCPQrForma
          Left = 1481
          Top = -2
          Width = 122
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            1781.12689393939
            -2.40530303030303
            146.723484848485)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQRDBText21: TPCPQRDBText
          Left = 33
          Top = 0
          Width = 220
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            39.6875
            0
            264.583333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'NOMB_COLOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQrForma27: TPCPQrForma
          Left = 266
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            319.905303030303
            -2.40530303030303
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma28: TPCPQrForma
          Left = 333
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            400.482954545455
            -2.40530303030303
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma29: TPCPQrForma
          Left = 401
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            482.263257575758
            -2.40530303030303
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma30: TPCPQrForma
          Left = 468
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            562.840909090909
            -2.40530303030303
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma31: TPCPQrForma
          Left = 739
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            888.75946969697
            -2.40530303030303
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma32: TPCPQrForma
          Left = 671
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            806.979166666667
            -2.40530303030303
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma33: TPCPQrForma
          Left = 603
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            725.198863636364
            -2.40530303030303
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma34: TPCPQrForma
          Left = 536
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            644.621212121212
            -2.40530303030303
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma35: TPCPQrForma
          Left = 806
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            969.337121212121
            -2.40530303030303
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma36: TPCPQrForma
          Left = 874
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.282196969697
            1051.11742424242
            -2.40530303030303
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma37: TPCPQrForma
          Left = 941
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37
            1131.69507575758
            -2
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma38: TPCPQrForma
          Left = 1009
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37
            1213.47537878788
            -2
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma39: TPCPQrForma
          Left = 1279
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37
            1538.3630952381
            -2
            83.1547619047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma40: TPCPQrForma
          Left = 1212
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37
            1457.09821428571
            -2
            83.1547619047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma41: TPCPQrForma
          Left = 1144
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37
            1375.83333333333
            -2
            83.1547619047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma42: TPCPQrForma
          Left = 1076
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37
            1294.05303030303
            -2
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma43: TPCPQrForma
          Left = 1347
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37
            1619.62797619048
            -2
            83.1547619047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma47: TPCPQrForma
          Left = 1414
          Top = -2
          Width = 69
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37
            1700.54924242424
            -2
            82.9829545454545)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQRDBText22: TPCPQRDBText
          Left = 268
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            322.791666666667
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText23: TPCPQRDBText
          Left = 338
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.2689393939394
            406.496212121212
            0
            74.5643939393939)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText24: TPCPQRDBText
          Left = 405
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            486.833333333333
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText25: TPCPQRDBText
          Left = 473
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            568.854166666667
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText26: TPCPQRDBText
          Left = 541
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            650.875
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText27: TPCPQRDBText
          Left = 607
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            730.25
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText28: TPCPQRDBText
          Left = 673
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            809.625
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText29: TPCPQRDBText
          Left = 739
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            889
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText30: TPCPQRDBText
          Left = 1280
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            1539.875
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText31: TPCPQRDBText
          Left = 1214
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            1460.5
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText32: TPCPQRDBText
          Left = 1146
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            1378.47916666667
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText33: TPCPQRDBText
          Left = 1080
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            1299.10416666667
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL13'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText34: TPCPQRDBText
          Left = 1014
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            1219.72916666667
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText35: TPCPQRDBText
          Left = 946
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            1137.70833333333
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL11'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText36: TPCPQRDBText
          Left = 878
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            1055.6875
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText37: TPCPQRDBText
          Left = 810
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            973.666666666667
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText38: TPCPQRDBText
          Left = 1486
          Top = 0
          Width = 112
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.2689393939394
            1787.14015151515
            0
            134.69696969697)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText39: TPCPQRDBText
          Left = 1417
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            1703.91666666667
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
        object PCPQRDBText40: TPCPQRDBText
          Left = 1349
          Top = 0
          Width = 62
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.75
            1621.89583333333
            0
            74.0833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_unidades
          DataField = 'TALL17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 7
        end
      end
    end
    object grid: TSCLColumnGrid
      Left = 220
      Top = -494
      Width = 369
      Height = 212
      Cursor = crDefault
      ColCount = 3
      Ctl3D = False
      DefaultColWidth = 45
      DefaultRowHeight = 19
      DefaultDrawing = False
      FixedColor = 15582631
      FixedCols = 1
      RowCount = 5
      FixedRows = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GridLineWidth = 1
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Visible = False
      GridLineColor = clSilver
      ActiveCellShow = True
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'MS Sans Serif'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = clGray
      Bands.PrimaryColor = clInfoBk
      Bands.PrimaryLength = 1
      Bands.SecondaryColor = clWindow
      Bands.SecondaryLength = 1
      Bands.Print = False
      AutoNumAlign = False
      AutoSize = False
      VAlignment = vtaTop
      EnhTextSize = False
      EnhRowColMove = False
      SizeWithForm = False
      Multilinecells = False
      DragDropSettings.OleAcceptFiles = True
      DragDropSettings.OleAcceptText = True
      SortSettings.AutoColumnMerge = False
      SortSettings.Column = 0
      SortSettings.Show = False
      SortSettings.IndexShow = False
      SortSettings.Full = True
      SortSettings.SingleColumn = False
      SortSettings.IgnoreBlanks = False
      SortSettings.BlankPos = blFirst
      SortSettings.AutoFormat = True
      SortSettings.Direction = sdAscending
      SortSettings.FixedCols = False
      SortSettings.NormalCellsOnly = False
      SortSettings.Row = 0
      FloatingFooter.Color = clBtnFace
      FloatingFooter.Column = 0
      FloatingFooter.FooterStyle = fsFixedLastRow
      FloatingFooter.Visible = False
      ControlLook.Color = clBlack
      ControlLook.CheckSize = 15
      ControlLook.RadioSize = 10
      ControlLook.ControlStyle = csClassic
      ControlLook.FlatButton = False
      EnableBlink = False
      EnableHTML = False
      EnableWheel = True
      Flat = True
      HintColor = clInfoBk
      SelectionColor = clHighlight
      SelectionTextColor = clHighlightText
      SelectionRectangle = False
      SelectionResizer = False
      SelectionRTFKeep = False
      HintShowCells = False
      HintShowLargeText = False
      HintShowSizing = False
      PrintSettings.FooterSize = 0
      PrintSettings.HeaderSize = 0
      PrintSettings.Time = ppNone
      PrintSettings.Date = ppNone
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.PageNr = ppNone
      PrintSettings.Title = ppNone
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.Borders = pbNoborder
      PrintSettings.BorderStyle = psSolid
      PrintSettings.Centered = False
      PrintSettings.RepeatFixedRows = False
      PrintSettings.RepeatFixedCols = False
      PrintSettings.LeftSize = 0
      PrintSettings.RightSize = 0
      PrintSettings.ColumnSpacing = 0
      PrintSettings.RowSpacing = 0
      PrintSettings.TitleSpacing = 0
      PrintSettings.Orientation = poPortrait
      PrintSettings.PageNumberOffset = 0
      PrintSettings.MaxPagesOffset = 0
      PrintSettings.FixedWidth = 0
      PrintSettings.FixedHeight = 0
      PrintSettings.UseFixedHeight = False
      PrintSettings.UseFixedWidth = False
      PrintSettings.FitToPage = fpNever
      PrintSettings.PageNumSep = '/'
      PrintSettings.NoAutoSize = False
      PrintSettings.NoAutoSizeRow = False
      PrintSettings.PrintGraphics = False
      HTMLSettings.Width = 100
      HTMLSettings.XHTML = False
      Navigation.AdvanceOnEnter = True
      Navigation.AdvanceDirection = adLeftRight
      Navigation.AllowClipboardRowGrow = True
      Navigation.AllowClipboardColGrow = True
      Navigation.InsertPosition = pInsertBefore
      Navigation.CopyHTMLTagsToClipboard = True
      Navigation.HomeEndKey = heFirstLastColumn
      ColumnSize.Location = clRegistry
      CellNode.Color = clSilver
      CellNode.NodeColor = clBlack
      CellNode.ShowTree = False
      MaxEditLength = 0
      IntelliPan = ipVertical
      URLColor = clBlue
      URLShow = False
      URLFull = False
      URLEdit = False
      ScrollType = ssNormal
      ScrollColor = clNone
      ScrollWidth = 17
      ScrollSynch = False
      ScrollProportional = False
      ScrollHints = shNone
      OemConvert = False
      FixedFooters = 0
      FixedRightCols = 0
      FixedColWidth = 100
      FixedRowHeight = 19
      FixedRowAlways = True
      FixedColAlways = True
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      FixedAsButtons = False
      FloatFormat = '%.2f'
      IntegralHeight = False
      WordWrap = False
      Lookup = False
      LookupCaseSensitive = False
      LookupHistory = False
      BackGround.Top = 0
      BackGround.Left = 0
      BackGround.Display = bdTile
      BackGround.Cells = bcNormal
      Filter = <>
      Columns = <
        item
          AutoMinSize = 0
          AutoMaxSize = 0
          Alignment = taLeftJustify
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          ColumnPopupType = cpFixedCellsRClick
          EditLength = 0
          Editor = edNormal
          FilterCaseSensitive = False
          Fixed = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridNOMB_COLOR'
          Password = False
          PrintBorders = []
          PrintColor = clWhite
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          ReadOnly = False
          ShowBands = False
          SortStyle = ssAutomatic
          SpinMax = 0
          SpinMin = 0
          SpinStep = 1
          Tag = 0
          Width = 100
        end
        item
          AutoMinSize = 0
          AutoMaxSize = 0
          Alignment = taLeftJustify
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          ColumnPopupType = cpFixedCellsRClick
          EditLength = 0
          Editor = edNormal
          FilterCaseSensitive = False
          Fixed = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MinSize = 0
          MaxSize = 0
          Name = 'gridCONS_REFE_COLOR'
          Password = False
          PrintBorders = []
          PrintColor = clWhite
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          ReadOnly = False
          ShowBands = False
          SortStyle = ssAutomatic
          SpinMax = 0
          SpinMin = 0
          SpinStep = 1
          Tag = 0
          Width = 0
        end
        item
          AutoMinSize = 0
          AutoMaxSize = 0
          Alignment = taLeftJustify
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          ColumnPopupType = cpFixedCellsRClick
          EditLength = 0
          Editor = edNormal
          FilterCaseSensitive = False
          Fixed = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MinSize = 0
          MaxSize = 0
          Password = False
          PrintBorders = []
          PrintColor = clWhite
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          ReadOnly = False
          ShowBands = False
          SortStyle = ssAutomatic
          SpinMax = 0
          SpinMin = 0
          SpinStep = 1
          Tag = 0
          Width = 45
        end>
      FilterDropDown.Color = clWindow
      FilterDropDown.ColumnWidth = False
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'MS Sans Serif'
      FilterDropDown.Font.Style = []
      FilterDropDown.Height = 200
      FilterDropDown.Width = 200
      ColWidths = (
        100
        0
        45)
      RowHeights = (
        19
        19
        19
        19
        19)
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
    Height = 506
    inherited DBPropiedades_Informes: TTBXDockablePanel
      DockedWidth = 32
      inherited shap_xp: TShape
        Width = 32
      end
      inherited Panel1: TPanel
        Width = 32
        Height = 484
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
          Tag = 213
          Width = 32
          Height = 213
          inherited DBInformes: TdxDBGrid
            Width = 28
            Height = 190
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
  inherited QInformes: TQuery
    Left = 34
  end
  inherited DSQInformes: TDataSource
    Left = 58
  end
  inherited PCPQRControl1: TPCPQRControl
    Left = 48
    Top = 352
  end
  inherited PMInforme: TTBXPopupMenu
    Left = 32
    Top = 376
  end
  object quer_pedido: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select *'
      'from vis_pcp_pedidos'
      'where cons_pedido = :cons_pedido')
    Left = 1146
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_pedido'
        ParamType = ptInput
      end>
    object quer_pedidoCONS_PEDIDO: TIntegerField
      FieldName = 'CONS_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_PEDIDO'
    end
    object quer_pedidoNUME_PEDIDO: TStringField
      FieldName = 'NUME_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NUME_PEDIDO'
    end
    object quer_pedidoNOMB_REFE_TEMPORADA: TStringField
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object quer_pedidoNOMB_TERCERO: TStringField
      FieldName = 'NOMB_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_TERCERO'
      Size = 120
    end
    object quer_pedidoFECH_PEDIDO: TDateTimeField
      FieldName = 'FECH_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.FECH_PEDIDO'
    end
    object quer_pedidoFECH_ENTREGA: TDateTimeField
      FieldName = 'FECH_ENTREGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.FECH_ENTREGA'
    end
    object quer_pedidoNOMB_COME_VENDEDOR: TStringField
      FieldName = 'NOMB_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_COME_VENDEDOR'
      Size = 60
    end
    object quer_pedidoNOMB_COME_PRIO_PEDIDO: TStringField
      FieldName = 'NOMB_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_COME_PRIO_PEDIDO'
      Size = 60
    end
    object quer_pedidoCONS_DESPACHAR_A: TIntegerField
      FieldName = 'CONS_DESPACHAR_A'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_DESPACHAR_A'
    end
    object quer_pedidoCONS_FACTURAR_A: TIntegerField
      FieldName = 'CONS_FACTURAR_A'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_FACTURAR_A'
    end
    object quer_pedidoFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.FECH_SISTEMA'
    end
  end
  object quer_pedi_Referencias: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_pedido
    SQL.Strings = (
      'Select *'
      'from vis_pcp_pedi_referencias'
      'where cons_pedido = :cons_pedido'
      'order by cons_pedi_Referencia')
    Left = 1146
    Top = 60
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PEDIDO'
        ParamType = ptUnknown
      end>
    object quer_pedi_ReferenciasCONS_PEDI_REFERENCIA: TIntegerField
      FieldName = 'CONS_PEDI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_REFERENCIAS.CONS_PEDI_REFERENCIA'
    end
    object quer_pedi_ReferenciasNUME_PEDIDO: TStringField
      FieldName = 'NUME_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_REFERENCIAS.NUME_PEDIDO'
    end
    object quer_pedi_ReferenciasCONS_REFERENCIA: TIntegerField
      FieldName = 'CONS_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_REFERENCIAS.CONS_REFERENCIA'
    end
    object quer_pedi_ReferenciasCODI_REFERENCIA: TStringField
      FieldName = 'CODI_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_REFERENCIAS.CODI_REFERENCIA'
      Size = 12
    end
    object quer_pedi_ReferenciasCODI_INTE_REFERENCIA: TStringField
      FieldName = 'CODI_INTE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_REFERENCIAS.CODI_INTE_REFERENCIA'
      Size = 12
    end
    object quer_pedi_ReferenciasNOMB_REFERENCIA: TStringField
      FieldName = 'NOMB_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_REFERENCIAS.NOMB_REFERENCIA'
      Size = 60
    end
    object quer_pedi_ReferenciasNOMB_REFE_TIPO_VARIACION: TStringField
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_REFERENCIAS.NOMB_REFE_TIPO_VARIACION'
      Size = 60
    end
    object quer_pedi_ReferenciasORDE_COMPRA: TStringField
      FieldName = 'ORDE_COMPRA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_REFERENCIAS.ORDE_COMPRA'
    end
    object quer_pedi_ReferenciasNOMB_REFE_LAVADO: TStringField
      FieldName = 'NOMB_REFE_LAVADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_REFERENCIAS.NOMB_REFE_LAVADO'
      Size = 60
    end
    object quer_pedi_ReferenciasTOLE_INFERIOR: TSmallintField
      FieldName = 'TOLE_INFERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_REFERENCIAS.TOLE_INFERIOR'
    end
    object quer_pedi_ReferenciasTOLE_SUPERIOR: TSmallintField
      FieldName = 'TOLE_SUPERIOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDI_REFERENCIAS.TOLE_SUPERIOR'
    end
  end
  object data_pedido: TDataSource
    DataSet = quer_pedido
    Left = 1174
    Top = 32
  end
  object data_pedi_Referencias: TDataSource
    DataSet = quer_pedi_Referencias
    Left = 1174
    Top = 60
  end
  object quer_info_Referencia: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_pedi_Referencias
    SQL.Strings = (
      'Select con_entrepiernas, cons_refe_grup_tallas'
      'from glo_Referencias'
      'where cons_referencia = :cons_Referencia')
    Left = 1205
    Top = 60
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFERENCIA'
        ParamType = ptUnknown
      end>
    object quer_info_ReferenciaCON_ENTREPIERNAS: TIntegerField
      FieldName = 'CON_ENTREPIERNAS'
    end
    object quer_info_ReferenciaCONS_REFE_GRUP_TALLAS: TIntegerField
      FieldName = 'CONS_REFE_GRUP_TALLAS'
    end
  end
  object tabl_informe: TTable
    DatabaseName = 'PCPLocal'
    TableName = 'tmp_come_pedido'
    Left = 886
    Top = 52
    object tabl_informeCONS_PEDI_REFERENCIA: TIntegerField
      FieldName = 'CONS_PEDI_REFERENCIA'
    end
    object tabl_informeCONS_REGISTRO: TIntegerField
      FieldName = 'CONS_REGISTRO'
    end
    object tabl_informeNOMB_COLOR: TStringField
      FieldName = 'NOMB_COLOR'
      Size = 60
    end
    object tabl_informeTALL1: TStringField
      DisplayWidth = 20
      FieldName = 'TALL1'
      Size = 10
    end
    object tabl_informeTALL2: TStringField
      FieldName = 'TALL2'
    end
    object tabl_informeTALL3: TStringField
      FieldName = 'TALL3'
    end
    object tabl_informeTALL4: TStringField
      FieldName = 'TALL4'
    end
    object tabl_informeTALL5: TStringField
      FieldName = 'TALL5'
    end
    object tabl_informeTALL6: TStringField
      FieldName = 'TALL6'
    end
    object tabl_informeTALL7: TStringField
      FieldName = 'TALL7'
    end
    object tabl_informeTALL8: TStringField
      FieldName = 'TALL8'
    end
    object tabl_informeTALL9: TStringField
      FieldName = 'TALL9'
    end
    object tabl_informeTALL10: TStringField
      FieldName = 'TALL10'
    end
    object tabl_informeTALL11: TStringField
      FieldName = 'TALL11'
    end
    object tabl_informeTALL12: TStringField
      FieldName = 'TALL12'
    end
    object tabl_informeTALL13: TStringField
      FieldName = 'TALL13'
    end
    object tabl_informeTALL14: TStringField
      FieldName = 'TALL14'
    end
    object tabl_informeTALL15: TStringField
      FieldName = 'TALL15'
    end
    object tabl_informeTALL16: TStringField
      FieldName = 'TALL16'
    end
    object tabl_informeTALL17: TStringField
      FieldName = 'TALL17'
      Size = 10
    end
    object tabl_informeTALL18: TStringField
      FieldName = 'TALL18'
    end
    object tabl_informeTOTAL: TStringField
      FieldName = 'TOTAL'
    end
  end
  object quer_unidades: TQuery
    DatabaseName = 'PCPLocal'
    DataSource = data_pedi_Referencias
    SQL.Strings = (
      'Select * from'
      'tmp_come_pedido '
      'where cons_pedi_referencia = :cons_pedi_Referencia'
      'order by cons_Registro')
    Left = 1142
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_pedi_Referencia'
        ParamType = ptUnknown
      end>
  end
  object quer_unid_llamar: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_pedi_Referencias
    SQL.Strings = (
      'Select cons_grup_tall_detalle, cons_refe_color, unidades'
      'from PCP_PEDI_UNIDADES'
      'Where cons_pedi_referencia = :cons_pedi_referencia'
      'order by cons_grup_tall_detalle, cons_refe_color')
    Left = 963
    Top = 203
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PEDI_REFERENCIA'
        ParamType = ptUnknown
      end>
  end
  object quer_refe_tallas: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_pedi_Referencias
    SQL.Strings = (
      'Select cons_grup_tall_detalle, talla'
      'from  vis_pcp_pedi_refe_tallas'
      'where cons_pedi_Referencia = :cons_pedi_referencia'
      'order by secu_talla')
    Left = 962
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_pedi_referencia'
        ParamType = ptUnknown
      end>
  end
  object quer_refe_colores: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_pedi_Referencias
    SQL.Strings = (
      'Select cons_refe_color, nomb_color'
      'from  vis_pcp_pedi_refe_colores'
      'where cons_pedi_Referencia = :cons_pedi_referencia'
      'order by secu_color')
    Left = 863
    Top = 187
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_pedi_referencia'
        ParamType = ptUnknown
      end>
  end
end

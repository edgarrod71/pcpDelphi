inherited rn1_meto_list_operaciones: Trn1_meto_list_operaciones
  Left = 3
  Caption = 'rn1_meto_list_operaciones'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    Left = 36
    Width = 992
    inherited _QRPadre: TPCPQuickReport
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
        Height = 166
        Size.Values = (
          439.208333333333
          1957.91666666667)
        inherited _QRFecha: TQRSysData
          Size.Values = (
            44.9791666666667
            1669.52083333333
            129.645833333333
            288.395833333333)
          FontSize = 8
        end
        inherited _QREmpresa: tPCPQrLabel
          Size.Values = (
            62.3660714285714
            351.517857142857
            71.8154761904762
            1595.05952380952)
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
          Caption = 'Listado de operaciones'
          OnPrint = _QRInformePrint
          FontSize = 12
        end
        inherited _QRPagina: TQRSysData
          Size.Values = (
            44.9791666666667
            1746.25
            177.270833333333
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
          Size.Values = (
            44.9791666666667
            365.125
            169.333333333333
            169.333333333333)
          FontSize = 10
        end
        inherited _QRFiltro: tPCPQrLabel
          Width = 5
          Size.Values = (
            44.9791666666667
            26.4583333333333
            232.833333333333
            13.2291666666667)
          Caption = ' '
          FontSize = 10
        end
        inherited _QRLine_Titulo: TPCPQrForma
          Left = 33
          Width = 690
          Size.Values = (
            1.88988095238095
            86.9345238095238
            277.8125
            1825.625)
        end
        object tPCPQrLabel1: tPCPQrLabel
          Left = 8
          Top = 88
          Width = 90
          Height = 17
          Hint = 'Detalle del filtro del Informe:'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            21.1666666666667
            232.833333333333
            238.125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'tPCPQrLabel1'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          PopUpMenu = PMComponentes
          Seleccionado = False
          FontSize = 10
        end
        object PCPQrForma3: TPCPQrForma
          Left = 249
          Top = 105
          Width = 240
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            658.8125
            277.8125
            635)
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma2: TPCPQrForma
          Left = 8
          Top = 105
          Width = 242
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
            640.291666666667)
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel2: tPCPQrLabel
          Left = 13
          Top = 106
          Width = 38
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            34.3958333333333
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
        object tPCPQrLabel3: tPCPQrLabel
          Left = 253
          Top = 106
          Width = 35
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            669.395833333333
            280.458333333333
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
        object PCPQrForma4: TPCPQrForma
          Left = 488
          Top = 105
          Width = 240
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1291.16666666667
            277.8125
            635)
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel4: tPCPQrLabel
          Left = 493
          Top = 106
          Width = 48
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1304.39583333333
            280.458333333333
            127)
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
        object PCPQrForma5: TPCPQrForma
          Left = 8
          Top = 124
          Width = 481
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.2708333333333
            21.1666666666667
            328.083333333333
            1272.64583333333)
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma6: TPCPQrForma
          Left = 488
          Top = 124
          Width = 240
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.2708333333333
            1291.16666666667
            328.083333333333
            635)
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel5: tPCPQrLabel
          Left = 13
          Top = 125
          Width = 42
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            34.3958333333333
            330.729166666667
            111.125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nombre:'
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
        object tPCPQrLabel6: tPCPQrLabel
          Left = 493
          Top = 125
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1304.39583333333
            330.729166666667
            156.104166666667)
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
        object PCPQrForma7: TPCPQrForma
          Left = 8
          Top = 142
          Width = 242
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.2708333333333
            21.1666666666667
            375.708333333333
            640.291666666667)
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma8: TPCPQrForma
          Left = 249
          Top = 142
          Width = 240
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.2708333333333
            658.8125
            375.708333333333
            635)
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma9: TPCPQrForma
          Left = 488
          Top = 142
          Width = 240
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.2708333333333
            1291.16666666667
            375.708333333333
            635)
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel7: tPCPQrLabel
          Left = 13
          Top = 143
          Width = 34
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            34.3958333333333
            378.354166666667
            89.9583333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Marca:'
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
          Left = 253
          Top = 143
          Width = 30
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            669.395833333333
            378.354166666667
            79.375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Línea:'
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
          Left = 493
          Top = 143
          Width = 30
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1304.39583333333
            378.354166666667
            79.375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Estilo:'
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
          Left = 88
          Top = 106
          Width = 156
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            232.833333333333
            280.458333333333
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencias
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
        object PCPQRDBText2: TPCPQRDBText
          Left = 328
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
            867.833333333333
            283.104166666667
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencias
          DataField = 'CODI_INTE_REFERENCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText3: TPCPQRDBText
          Left = 568
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
            1502.83333333333
            283.104166666667
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_refe_variaciones
          DataField = 'NOMB_REFE_TIPO_VARIACION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText4: TPCPQRDBText
          Left = 88
          Top = 125
          Width = 395
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            232.833333333333
            330.729166666667
            1045.10416666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencias
          DataField = 'NOMB_REFERENCIA'
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
        object PCPQRDBText5: TPCPQRDBText
          Left = 568
          Top = 125
          Width = 156
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1502.83333333333
            330.729166666667
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencias
          DataField = 'NOMB_REFE_TEMPORADA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText6: TPCPQRDBText
          Left = 88
          Top = 143
          Width = 156
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            232.833333333333
            378.354166666667
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencias
          DataField = 'NOMB_REFE_MARCA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText7: TPCPQRDBText
          Left = 328
          Top = 143
          Width = 156
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            867.833333333333
            378.354166666667
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencias
          DataField = 'NOMB_REFE_LINEA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText8: TPCPQRDBText
          Left = 568
          Top = 143
          Width = 156
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1502.83333333333
            378.354166666667
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencias
          DataField = 'NOMB_REFE_ESTILO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQrForma1: TPCPQrForma
          Left = 8
          Top = 86
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
            227.541666666667
            1905)
          Brush.Color = clSilver
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object qrla_info_referencia: tPCPQrLabel
          Left = 13
          Top = 87
          Width = 182
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            34.3958333333333
            230.1875
            481.541666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Información de la referencia'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          OnPrint = qrla_info_referenciaPrint
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
      end
      inherited _QRBanda_Eslogan: TPCPQRBand
        Top = 358
        Size.Values = (
          92.6041666666667
          1957.91666666667)
        inherited _QREslogan: TQRMemo
          Size.Values = (
            87.3125
            0
            0
            1484.3125)
          FontSize = 8
        end
        inherited _QRSistema: tPCPQrLabel
          Size.Values = (
            84.6666666666667
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
        Top = 281
        Size.Values = (
          203.729166666667
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
        Top = 230
        Height = 5
        Size.Values = (
          13.2291666666667
          1957.91666666667)
      end
      object grup_listado: TQRGroup
        Left = 38
        Top = 204
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
        object tPCPQrLabel10: tPCPQrLabel
          Left = 13
          Top = 8
          Width = 18
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            34.3958333333333
            21.1666666666667
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
        object tPCPQrLabel11: tPCPQrLabel
          Left = 37
          Top = 8
          Width = 14
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            97.8958333333333
            21.1666666666667
            37.0416666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'PR'
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
          Left = 69
          Top = 8
          Width = 16
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            182.5625
            21.1666666666667
            42.3333333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'CO'
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
        object tPCPQrLabel13: tPCPQrLabel
          Left = 101
          Top = 8
          Width = 15
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            267.229166666667
            21.1666666666667
            39.6875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'OP'
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
        object tPCPQrLabel14: tPCPQrLabel
          Left = 141
          Top = 8
          Width = 34
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            373.0625
            21.1666666666667
            89.9583333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Código'
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
        object tPCPQrLabel15: tPCPQrLabel
          Left = 232
          Top = 8
          Width = 50
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            613.833333333333
            21.1666666666667
            132.291666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Operación'
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
        object tPCPQrLabel16: tPCPQrLabel
          Left = 469
          Top = 8
          Width = 26
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1240.89583333333
            21.1666666666667
            68.7916666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Frec.'
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
        object tPCPQrLabel17: tPCPQrLabel
          Left = 509
          Top = 8
          Width = 41
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1346.72916666667
            21.1666666666667
            108.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Máquina'
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
        object tPCPQrLabel18: tPCPQrLabel
          Left = 629
          Top = 8
          Width = 35
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1664.22916666667
            21.1666666666667
            92.6041666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tiempo'
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
        object tPCPQrLabel19: tPCPQrLabel
          Left = 672
          Top = 8
          Width = 49
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1778
            21.1666666666667
            129.645833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Prod/hora'
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
        object tPCPQrLabel20: tPCPQrLabel
          Left = 560
          Top = 8
          Width = 32
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1481.66666666667
            21.1666666666667
            84.6666666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Ajuste'
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
      object subd_listado: TQRSubDetail
        Left = 38
        Top = 235
        Width = 740
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        BeforePrint = subd_listadoBeforePrint
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        LinkBand = grup_listado
        Size.Values = (
          47.625
          1957.91666666667)
        Master = _QRPadre
        DataSet = quer_listado
        FooterBand = foot_listado
        HeaderBand = grup_listado
        PrintBefore = False
        PrintIfEmpty = True
        object fond_titulo: TPCPQrForma
          Left = 8
          Top = 0
          Width = 720
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            21.1666666666667
            0
            1905)
          Pen.Color = clWhite
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQRDBText9: TPCPQRDBText
          Left = 11
          Top = 2
          Width = 22
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            29.1041666666667
            5.29166666666667
            58.2083333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_listado
          DataField = 'numero'
          Mask = '0'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText10: TPCPQRDBText
          Left = 38
          Top = 2
          Width = 26
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            100.541666666667
            5.29166666666667
            68.7916666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_listado
          DataField = 'proceso'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText11: TPCPQRDBText
          Left = 70
          Top = 2
          Width = 26
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            185.208333333333
            5.29166666666667
            68.7916666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_listado
          DataField = 'componente'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText12: TPCPQRDBText
          Left = 102
          Top = 2
          Width = 26
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            269.875
            5.29166666666667
            68.7916666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_listado
          DataField = 'operacion'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText13: TPCPQRDBText
          Left = 142
          Top = 2
          Width = 75
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            375.708333333333
            5.29166666666667
            198.4375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_listado
          DataField = 'codigo'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText14: TPCPQRDBText
          Left = 230
          Top = 2
          Width = 234
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.797619047619
            608.541666666667
            5.66964285714286
            617.991071428571)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_listado
          DataField = 'nomb_operacion'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText15: TPCPQRDBText
          Left = 470
          Top = 2
          Width = 34
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.797619047619
            1243.54166666667
            5.66964285714286
            88.8244047619048)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_listado
          DataField = 'frecuencia'
          Mask = ',0.000'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText16: TPCPQRDBText
          Left = 509
          Top = 2
          Width = 47
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.797619047619
            1347.48511904762
            5.66964285714286
            124.732142857143)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_listado
          DataField = 'tipo_maquina'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText17: TPCPQRDBText
          Left = 611
          Top = 2
          Width = 54
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.797619047619
            1617.7380952381
            5.66964285714286
            141.741071428571)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_listado
          DataField = 'tiempo'
          Mask = ',0.000'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText18: TPCPQRDBText
          Left = 672
          Top = 2
          Width = 49
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1778
            5.29166666666667
            129.645833333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_listado
          DataField = 'ph'
          Mask = ',0'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText20: TPCPQRDBText
          Left = 561
          Top = 2
          Width = 47
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.797619047619
            1483.55654761905
            5.66964285714286
            124.732142857143)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_listado
          DataField = 'ajuste'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
      end
      object foot_listado: TPCPQRBand
        Left = 38
        Top = 253
        Width = 740
        Height = 28
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
          74.0833333333333
          1957.91666666667)
        BandType = rbGroupFooter
        object PCPQrForma11: TPCPQrForma
          Left = 8
          Top = 5
          Width = 721
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2
            21.1666666666667
            13.2291666666667
            1907.64583333333)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object QRLabel1: TQRLabel
          Left = 510
          Top = 10
          Width = 76
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1349.375
            26.4583333333333
            201.083333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tiempo total:'
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
        object QRLabel2: TQRLabel
          Left = 10
          Top = 10
          Width = 74
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            26.4583333333333
            26.4583333333333
            195.791666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Operaciones:'
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
        object QRDBText1: TQRDBText
          Left = 88
          Top = 10
          Width = 70
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            232.833333333333
            26.4583333333333
            185.208333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = quer_nume_operaciones
          DataField = 'operaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Mask = ',0'
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object PCPQRDBText19: TPCPQRDBText
          Left = 600
          Top = 9
          Width = 65
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.797619047619
            1587.5
            24.5684523809524
            171.979166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_suma_tiempo
          DataField = 'tiempo'
          Mask = ',0.000'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
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
    inherited DBPropiedades_Informes: TTBXDockablePanel
      DockedWidth = 32
      inherited shap_xp: TShape
        Width = 32
      end
      inherited Panel1: TPanel
        Width = 32
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
          Width = 32
          inherited DBInformes: TdxDBGrid
            Width = 28
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
  object quer_refe_variaciones: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'select cons_refe_variacion, cons_refe_tipo_variacion, '
      'nomb_refe_tipo_variacion'
      'from vis_pcp_refe_variaciones'
      'where cons_refe_variacion = :cons_refe_variacion')
    Left = 872
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end>
    object quer_refe_variacionesCONS_REFE_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_VARIACION'
    end
    object quer_refe_variacionesCONS_REFE_TIPO_VARIACION: TIntegerField
      FieldName = 'CONS_REFE_TIPO_VARIACION'
    end
    object quer_refe_variacionesNOMB_REFE_TIPO_VARIACION: TStringField
      FieldName = 'NOMB_REFE_TIPO_VARIACION'
      Size = 60
    end
  end
  object quer_referencias: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select *'
      'from VIS_GLO_REFERENCIAS'
      'where cons_referencia = :cons_referencia')
    Left = 901
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_referencia'
        ParamType = ptInput
      end>
  end
  object data_Refe_variaciones: TDataSource
    DataSet = quer_refe_variaciones
    Left = 934
    Top = 32
  end
  object quer_listado: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      'Select * from'
      'tmp_repo_list_operaciones'
      'order by numero')
    Left = 870
    Top = 68
    object quer_listadonumero: TIntegerField
      FieldName = 'numero'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".numero'
    end
    object quer_listadoes_titulo: TBooleanField
      FieldName = 'es_titulo'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".es_titulo'
    end
    object quer_listadoproceso: TStringField
      FieldName = 'proceso'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".proceso'
      Size = 12
    end
    object quer_listadocomponente: TStringField
      FieldName = 'componente'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".componente'
      Size = 12
    end
    object quer_listadooperacion: TStringField
      FieldName = 'operacion'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".operacion'
      Size = 12
    end
    object quer_listadocodigo: TStringField
      FieldName = 'codigo'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".codigo'
      Size = 12
    end
    object quer_listadonomb_operacion: TStringField
      FieldName = 'nomb_operacion'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".nomb_operacion'
      Size = 30
    end
    object quer_listadofrecuencia: TFloatField
      FieldName = 'frecuencia'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".frecuencia'
    end
    object quer_listadotipo_maquina: TStringField
      FieldName = 'tipo_maquina'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".tipo_maquina'
      Size = 6
    end
    object quer_listadoajuste: TStringField
      FieldName = 'ajuste'
      Size = 12
    end
    object quer_listadoppc: TFloatField
      FieldName = 'ppc'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".ppc'
    end
    object quer_listadorpm: TFloatField
      FieldName = 'rpm'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".rpm'
    end
    object quer_listadotiempo: TFloatField
      FieldName = 'tiempo'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".tiempo'
    end
    object quer_listadoph: TIntegerField
      FieldName = 'ph'
      Origin = 'PCPLOCAL."tmp_repo_list_operaciones.DB".ph'
    end
  end
  object quer_nume_operaciones: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      'Select count(*) as operaciones'
      'from tmp_repo_list_operaciones'
      'where es_titulo = false')
    Left = 902
    Top = 68
    object quer_nume_operacionesoperaciones: TIntegerField
      FieldName = 'operaciones'
    end
  end
  object quer_suma_tiempo: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      'Select SUM(Tiempo) as Tiempo'
      'from tmp_repo_list_operaciones'
      'where es_titulo = false')
    Left = 943
    Top = 72
  end
end

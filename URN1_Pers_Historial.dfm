inherited RN1_Pers_Historial: TRN1_Pers_Historial
  Top = 152
  Width = 1015
  Caption = 'Informe Personal (Historial)'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    Width = 797
    HorzScrollBar.Position = 24
    inherited _QRPadre: TPCPQuickReport
      Left = -20
      DataSet = QPersonal
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
        Size.Values = (
          283.104166666667
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
          Caption = 'Información Personal (Historial)'
          FontSize = 12
        end
        inherited _QRPagina: TQRSysData
          Left = 645
          Width = 95
          Size.Values = (
            44.9791666666667
            1706.5625
            177.270833333333
            251.354166666667)
          Font.Height = -13
          ParentFont = False
          FontSize = 10
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
          Size.Values = (
            1.88988095238095
            -3.7797619047619
            277.8125
            1957.91666666667)
        end
      end
      inherited _QRBanda_Eslogan: TPCPQRBand
        Top = 464
        Size.Values = (
          92.6041666666667
          1957.91666666667)
        inherited _QREslogan: TQRMemo
          Size.Values = (
            87.3125
            0
            0
            1484.3125)
          Font.Height = -13
          FontSize = 10
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
        Top = 387
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
        Height = 224
        ForceNewPage = True
        Size.Values = (
          592.666666666667
          1957.91666666667)
        object tPCPQrLabel1: tPCPQrLabel
          Left = 4
          Top = 5
          Width = 114
          Height = 17
          Hint = 'Datos Personales'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            10.5833333333333
            13.2291666666667
            301.625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Datos Personales:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel2: tPCPQrLabel
          Left = 67
          Top = 28
          Width = 51
          Height = 17
          Hint = 'Nombre'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            177.270833333333
            74.0833333333333
            134.9375)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nombre:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText1: TPCPQRDBText
          Left = 120
          Top = 28
          Width = 200
          Height = 17
          Hint = 'Dato Nombre'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            317.5
            74.0833333333333
            529.166666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'NOMBRES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel3: tPCPQrLabel
          Left = 344
          Top = 28
          Width = 57
          Height = 17
          Hint = 'Apellidos'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            910.166666666667
            74.0833333333333
            150.8125)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Apellidos:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText2: TPCPQRDBText
          Left = 407
          Top = 28
          Width = 200
          Height = 17
          Hint = 'Dato Apellidos'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1076.85416666667
            74.0833333333333
            529.166666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'APELLIDOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel4: tPCPQrLabel
          Left = 31
          Top = 49
          Width = 87
          Height = 17
          Hint = 'Fecha Ingreso'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            82.0208333333333
            129.645833333333
            230.1875)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fecha Ingreso:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText3: TPCPQRDBText
          Left = 120
          Top = 49
          Width = 118
          Height = 17
          Hint = 'Dato Fecha Ingreso'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            317.5
            129.645833333333
            312.208333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'FECH_INGRESO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText4: TPCPQRDBText
          Left = 343
          Top = 49
          Width = 48
          Height = 17
          Hint = 'Dato Antiguedad'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            907.520833333333
            129.645833333333
            127)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'ANTIGUEDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel5: tPCPQrLabel
          Left = 270
          Top = 49
          Width = 70
          Height = 17
          Hint = 'Antiguedad'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            714.375
            129.645833333333
            185.208333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Antiguedad:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText5: TPCPQRDBText
          Left = 515
          Top = 49
          Width = 92
          Height = 17
          Hint = 'Dato Ultimo Salario'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1362.60416666667
            129.645833333333
            243.416666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'ULTI_SALARIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Mask = '$ ,0'
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel6: tPCPQrLabel
          Left = 426
          Top = 49
          Width = 86
          Height = 17
          Hint = 'Ultimo Salario'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1127.125
            129.645833333333
            227.541666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Ultimo Salario:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel7: tPCPQrLabel
          Left = 34
          Top = 70
          Width = 84
          Height = 17
          Hint = 'Tipo Contrato'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            89.9583333333333
            185.208333333333
            222.25)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo Contrato:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText6: TPCPQRDBText
          Left = 120
          Top = 70
          Width = 118
          Height = 17
          Hint = 'Dato Tipo Contrato'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            317.5
            185.208333333333
            312.208333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'NOMB_PERS_TIPO_CONTRATO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText7: TPCPQRDBText
          Left = 343
          Top = 70
          Width = 48
          Height = 17
          Hint = 'Dato Tiempo (Meses)'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            907.520833333333
            185.208333333333
            127)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'DURACION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel8: tPCPQrLabel
          Left = 241
          Top = 70
          Width = 99
          Height = 17
          Hint = 'Tiempo (Meses)'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            637.645833333333
            185.208333333333
            261.9375)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tiempo (Meses):'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText8: TPCPQRDBText
          Left = 515
          Top = 70
          Width = 92
          Height = 17
          Hint = 'Dato Fecha Vencimiento'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1362.60416666667
            185.208333333333
            243.416666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'FECH_VENCIMIENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel9: tPCPQrLabel
          Left = 398
          Top = 70
          Width = 114
          Height = 17
          Hint = 'Fecha Vencimiento'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1053.04166666667
            185.208333333333
            301.625)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fecha Vencimiento:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBImage1: TPCPQRDBImage
          Left = 620
          Top = 27
          Width = 113
          Height = 142
          Hint = 'Dato Imagen'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            375.708333333333
            1640.41666666667
            71.4375
            298.979166666667)
          DataField = 'IMAGEN'
          DataSet = QPersonal
        end
        object tPCPQrLabel10: tPCPQrLabel
          Left = 4
          Top = 95
          Width = 68
          Height = 17
          Hint = 'Ubicación'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            10.5833333333333
            251.354166666667
            179.916666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Ubicación:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel11: tPCPQrLabel
          Left = 77
          Top = 115
          Width = 41
          Height = 17
          Hint = 'Planta'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            203.729166666667
            304.270833333333
            108.479166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Planta:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText9: TPCPQRDBText
          Left = 120
          Top = 115
          Width = 200
          Height = 17
          Hint = 'Dato Planta'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            317.5
            304.270833333333
            529.166666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'NOMB_PLANTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel12: tPCPQrLabel
          Left = 351
          Top = 115
          Width = 50
          Height = 17
          Hint = 'Sección'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            928.6875
            304.270833333333
            132.291666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Sección:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText10: TPCPQRDBText
          Left = 407
          Top = 115
          Width = 200
          Height = 17
          Hint = 'Dato Sección'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1076.85416666667
            304.270833333333
            529.166666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'NOMB_SECCION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel13: tPCPQrLabel
          Left = 85
          Top = 134
          Width = 33
          Height = 17
          Hint = 'Area'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            224.895833333333
            354.541666666667
            87.3125)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Area:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText11: TPCPQRDBText
          Left = 120
          Top = 134
          Width = 200
          Height = 17
          Hint = 'Dato Area'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            317.5
            354.541666666667
            529.166666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'NOMB_AREA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel14: tPCPQrLabel
          Left = 354
          Top = 134
          Width = 48
          Height = 17
          Hint = 'Bodega'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            936.625
            354.541666666667
            127)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Bodega:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText12: TPCPQRDBText
          Left = 407
          Top = 134
          Width = 200
          Height = 17
          Hint = 'Dato Bodega'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1076.85416666667
            354.541666666667
            529.166666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'NOMB_BODEGA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel15: tPCPQrLabel
          Left = 79
          Top = 153
          Width = 40
          Height = 17
          Hint = 'Cargo'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            209.020833333333
            404.8125
            105.833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cargo:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText13: TPCPQRDBText
          Left = 120
          Top = 153
          Width = 200
          Height = 17
          Hint = 'Dato Cargo'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            317.5
            404.8125
            529.166666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'NOMB_PERS_CARGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel16: tPCPQrLabel
          Left = 356
          Top = 153
          Width = 45
          Height = 17
          Hint = 'Código'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            941.916666666667
            404.8125
            119.0625)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Código:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText14: TPCPQRDBText
          Left = 407
          Top = 153
          Width = 200
          Height = 17
          Hint = 'Dato Código'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1076.85416666667
            404.8125
            529.166666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QPersonal
          DataField = 'CODI_PERSONAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = PCPQRDBText1Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQrForma1: TPCPQrForma
          Left = 5
          Top = 5
          Width = 606
          Height = 1
          Hint = 'Línea Separador Datos Personales'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.64583333333333
            13.2291666666667
            13.2291666666667
            1603.375)
          Shape = qrsHorLine
          Seleccionado = False
        end
        object PCPQrForma2: TPCPQrForma
          Left = 5
          Top = 91
          Width = 606
          Height = 1
          Hint = 'Línea Separador Ubicación'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.64583333333333
            13.2291666666667
            240.770833333333
            1603.375)
          Shape = qrsHorLine
          Seleccionado = False
        end
        object tPCPQrLabel17: tPCPQrLabel
          Left = 620
          Top = 5
          Width = 53
          Height = 17
          Hint = 'Imagen'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1640.41666666667
            13.2291666666667
            140.229166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Imagen:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQrForma3: TPCPQrForma
          Left = 5
          Top = 177
          Width = 606
          Height = 1
          Hint = 'Línea Separador de Historial'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.64583333333333
            13.2291666666667
            468.3125
            1603.375)
          Shape = qrsHorLine
          Seleccionado = False
        end
        object tPCPQrLabel18: tPCPQrLabel
          Left = 4
          Top = 183
          Width = 57
          Height = 17
          Hint = 'Historial'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            10.5833333333333
            484.1875
            150.8125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Historial:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel19: tPCPQrLabel
          Left = 79
          Top = 201
          Width = 44
          Height = 17
          Hint = 'Fecha'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            209.020833333333
            531.8125
            116.416666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fecha:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel20: tPCPQrLabel
          Left = 361
          Top = 201
          Width = 40
          Height = 17
          Hint = 'Notas'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            955.145833333334
            531.8125
            105.833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Notas:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
      end
      object QRSubDetail1: TQRSubDetail
        Left = 38
        Top = 369
        Width = 740
        Height = 18
        Hint = 'Banda Historial'
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
          47.625
          1957.91666666667)
        Master = _QRPadre
        DataSet = QHistorial
        PrintBefore = False
        PrintIfEmpty = True
        object PCPQRDBText15: TPCPQRDBText
          Left = 78
          Top = 5
          Width = 147
          Height = 17
          Hint = 'Dato Fecha'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            206.375
            13.2291666666667
            388.9375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QHistorial
          DataField = 'FECH_SISTEMA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBText16: TPCPQRDBText
          Left = 230
          Top = 5
          Width = 504
          Height = 17
          Hint = 'Dato Notas'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            608.541666666667
            13.2291666666667
            1333.5)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QHistorial
          DataField = 'TEXT_ANOTACION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
      end
    end
  end
  inherited padr_barr_dock: TTBXDock
    Width = 1007
  end
  inherited TBXDock1: TTBXDock
    inherited DBPropiedades_Informes: TTBXDockablePanel
      inherited Panel1: TPanel
        inherited FPropiedades: TPCPFrame
          inherited dxPageControl1: TSCLPageControl
            FixedDimension = 19
          end
        end
        inherited FEstructura_Informes: TPCPFrame
          inherited DBInformes: TdxDBGrid
            Filter.Criteria = {00000000}
          end
        end
      end
    end
  end
  inherited PCPQRControl1: TPCPQRControl
    Left = 16
    Top = 408
  end
  inherited PMInforme: TTBXPopupMenu
    Left = 16
  end
  object QPersonal: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_PERS_INFO_HISTORIAL')
    Left = 248
    Top = 40
  end
  object DSQPersonal: TDataSource
    AutoEdit = False
    DataSet = QPersonal
    Left = 280
    Top = 40
  end
  object QHistorial: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQPersonal
    SQL.Strings = (
      'SELECT TEXT_ANOTACION, FECH_SISTEMA, USUA_SISTEMA'
      'FROM GLO_PERS_HISTORIAL'
      'WHERE CONS_PERSONAL = :CONS_PERSONAL'
      'ORDER BY FECH_SISTEMA')
    Left = 286
    Top = 70
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PERSONAL'
        ParamType = ptUnknown
      end>
    object QHistorialTEXT_ANOTACION: TStringField
      FieldName = 'TEXT_ANOTACION'
      Origin = 'DATA_BASE_PCP.GLO_PERS_HISTORIAL.TEXT_ANOTACION'
      Size = 240
    end
    object QHistorialFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_HISTORIAL.FECH_SISTEMA'
    end
    object QHistorialUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_HISTORIAL.USUA_SISTEMA'
    end
  end
end

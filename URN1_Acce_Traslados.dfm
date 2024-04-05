inherited RN1_Acce_Traslados: TRN1_Acce_Traslados
  Left = 5
  Top = 145
  Width = 1012
  Caption = 'Informe Movimiento de Accesorios (Traslados)'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    Width = 794
    inherited _QRPadre: TPCPQuickReport
      Width = 1056
      Height = 816
      DataSet = QAccesorios
      Functions.DATA = (
        '0'
        '0'
        #39#39
        #39#39)
      Page.Orientation = poLandscape
      Page.Values = (
        100
        2159
        100
        2794
        100
        100
        0)
      inherited _QRBanda_Page_Header: TPCPQRBand
        Width = 980
        Height = 126
        Size.Values = (
          333.375
          2592.91666666667)
        inherited _QRFecha: TQRSysData
          Left = 851
          Width = 129
          Size.Values = (
            44.9791666666667
            2251.60416666667
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
          Left = 377
          Size.Values = (
            52.9166666666667
            997.479166666667
            10.5833333333333
            1595.4375)
          Caption = 'Movimiento de Accesorios (Traslados)'
          FontSize = 12
        end
        inherited _QRPagina: TQRSysData
          Left = 885
          Width = 95
          Size.Values = (
            44.9791666666667
            2341.5625
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
          Size.Values = (
            44.9791666666667
            26.4583333333333
            232.833333333333
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
        object tPCPQrLabel1: tPCPQrLabel
          Left = 475
          Top = 107
          Width = 29
          Height = 17
          Hint = 'Tipo'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1256.77083333333
            283.104166666667
            76.7291666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo'
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
          Left = 158
          Top = 107
          Width = 89
          Height = 17
          Hint = 'Número Serie'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            418.041666666667
            283.104166666667
            235.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Número Serie'
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
        object tPCPQrLabel3: tPCPQrLabel
          Left = 9
          Top = 107
          Width = 119
          Height = 17
          Hint = 'Número Inventario'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            23.8125
            283.104166666667
            314.854166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Número Inventario'
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
        object tPCPQrLabel4: tPCPQrLabel
          Left = 633
          Top = 107
          Width = 40
          Height = 17
          Hint = 'Marca'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1674.8125
            283.104166666667
            105.833333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Marca'
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
        object tPCPQrLabel8: tPCPQrLabel
          Left = 305
          Top = 107
          Width = 40
          Height = 17
          Hint = 'Grupo'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            806.979166666667
            283.104166666667
            105.833333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Grupo'
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
      inherited _QRBanda_Eslogan: TPCPQRBand
        Top = 300
        Width = 980
        Size.Values = (
          92.6041666666667
          2592.91666666667)
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
          Left = 811
          Size.Values = (
            84.6666666666667
            2145.77083333333
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
        Top = 223
        Width = 980
        Size.Values = (
          203.729166666667
          2592.91666666667)
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
        Top = 164
        Width = 980
        Height = 41
        Size.Values = (
          108.479166666667
          2592.91666666667)
        object PCPQrForma1: TPCPQrForma
          Left = 5
          Top = 19
          Width = 980
          Height = 21
          Hint = 'Recuadro Título Ubicación'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.5625
            13.2291666666667
            50.2708333333333
            2592.91666666667)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQRDBText1: TPCPQRDBText
          Left = 305
          Top = 0
          Width = 162
          Height = 17
          Hint = 'Dato Grupo'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            806.979166666667
            0
            428.625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QAccesorios
          DataField = 'NOMB_ACCE_GRUPO'
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
          Left = 158
          Top = 0
          Width = 139
          Height = 17
          Hint = 'Dato Número Serie'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            418.041666666667
            0
            367.770833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QAccesorios
          DataField = 'NUME_SERIE'
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
          Left = 9
          Top = 0
          Width = 143
          Height = 17
          Hint = 'Dato Número Inventario'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            23.8125
            0
            378.354166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QAccesorios
          DataField = 'NUME_INVE_ACCESORIO'
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
        object PCPQRDBText4: TPCPQRDBText
          Left = 632
          Top = 0
          Width = 148
          Height = 17
          Hint = 'Dato Marca'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1672.16666666667
            0
            391.583333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QAccesorios
          DataField = 'NOMB_RECU_MARCA'
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
        object tPCPQrLabel25: tPCPQrLabel
          Left = 232
          Top = 21
          Width = 56
          Height = 17
          Hint = 'Empresa'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            613.833333333333
            55.5625
            148.166666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Empresa'
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
        object tPCPQrLabel26: tPCPQrLabel
          Left = 345
          Top = 21
          Width = 31
          Height = 17
          Hint = 'Area'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            912.8125
            55.5625
            82.0208333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Area'
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
        object tPCPQrLabel27: tPCPQrLabel
          Left = 440
          Top = 21
          Width = 42
          Height = 17
          Hint = 'Planta'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1164.16666666667
            55.5625
            111.125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Planta'
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
        object tPCPQrLabel28: tPCPQrLabel
          Left = 535
          Top = 21
          Width = 37
          Height = 17
          Hint = 'Línea'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1415.52083333333
            55.5625
            97.8958333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Línea'
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
        object tPCPQrLabel29: tPCPQrLabel
          Left = 629
          Top = 21
          Width = 52
          Height = 17
          Hint = 'Sección'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1664.22916666667
            55.5625
            137.583333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Sección'
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
        object tPCPQrLabel30: tPCPQrLabel
          Left = 723
          Top = 21
          Width = 50
          Height = 17
          Hint = 'Bodega'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1912.9375
            55.5625
            132.291666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Bodega'
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
        object tPCPQrLabel32: tPCPQrLabel
          Left = 126
          Top = 21
          Width = 78
          Height = 17
          Hint = 'Fecha Mvto.'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            333.375
            55.5625
            206.375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fecha Mvto.'
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
        object tPCPQrLabel33: tPCPQrLabel
          Left = 6
          Top = 21
          Width = 107
          Height = 17
          Hint = 'Tipo Movimiento'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            15.875
            55.5625
            283.104166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo Movimiento'
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
        object PCPQRDBText8: TPCPQRDBText
          Left = 475
          Top = 0
          Width = 148
          Height = 17
          Hint = 'Dato Tipo'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1256.77083333333
            0
            391.583333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QAccesorios
          DataField = 'NOMB_ACCE_TIPO'
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
        object tPCPQrLabel31: tPCPQrLabel
          Left = 817
          Top = 21
          Width = 95
          Height = 17
          Hint = 'Otra Ubicación'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            2161.64583333333
            55.5625
            251.354166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Otra Ubicación'
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
        Top = 205
        Width = 980
        Height = 18
        Hint = 'Banda Ubicación'
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
          2592.91666666667)
        Master = _QRPadre
        DataSet = QTraslados
        PrintBefore = False
        PrintIfEmpty = True
        object PCPQRDBText15: TPCPQRDBText
          Left = 232
          Top = 0
          Width = 107
          Height = 17
          Hint = 'Dato Empresa'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            613.833333333333
            0
            283.104166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTraslados
          DataField = 'NOMB_EMPRESA'
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
          Left = 345
          Top = 0
          Width = 89
          Height = 17
          Hint = 'Dato Area'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            912.8125
            0
            235.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTraslados
          DataField = 'NOMB_AREA'
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
        object PCPQRDBText17: TPCPQRDBText
          Left = 440
          Top = 0
          Width = 89
          Height = 17
          Hint = 'Dato Planta'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1164.16666666667
            0
            235.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTraslados
          DataField = 'NOMB_PLANTA'
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
        object PCPQRDBText18: TPCPQRDBText
          Left = 535
          Top = 0
          Width = 89
          Height = 17
          Hint = 'Dato Línea'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1415.52083333333
            0
            235.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTraslados
          DataField = 'NOMB_LINEA'
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
        object PCPQRDBText19: TPCPQRDBText
          Left = 629
          Top = 0
          Width = 89
          Height = 17
          Hint = 'Dato Sección'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1664.22916666667
            0
            235.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTraslados
          DataField = 'NOMB_SECCION'
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
        object PCPQRDBText20: TPCPQRDBText
          Left = 723
          Top = 0
          Width = 89
          Height = 17
          Hint = 'Dato Bodega'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1912.9375
            0
            235.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTraslados
          DataField = 'NOMB_BODEGA'
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
        object PCPQRDBText21: TPCPQRDBText
          Left = 817
          Top = 0
          Width = 156
          Height = 17
          Hint = 'Dato Otra Ubicación'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            2161.64583333333
            0
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTraslados
          DataField = 'OTRA_UBICACION'
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
        object PCPQRDBText22: TPCPQRDBText
          Left = 126
          Top = 0
          Width = 102
          Height = 17
          Hint = 'Dato Ubicación a la Fecha'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            333.375
            0
            269.875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTraslados
          DataField = 'FECH_INICIAL'
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
        object PCPQRDBText23: TPCPQRDBText
          Left = 6
          Top = 0
          Width = 114
          Height = 17
          Hint = 'Dato Tipo Movimiento'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            15.875
            0
            301.625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTraslados
          DataField = 'NOMB_ACCE_TIPO_MOVIMIENTO'
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
    Width = 1004
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
  object QAccesorios: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_ACCE_INFO_TRASLADOS')
    Left = 248
    Top = 40
  end
  object DSQAccesorios: TDataSource
    AutoEdit = False
    DataSet = QAccesorios
    Left = 280
    Top = 40
  end
  object QTraslados: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQAccesorios
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_ACCE_INFO_TRAS_UBIC(:CONS_ACCESORIO)')
    Left = 286
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_ACCESORIO'
        ParamType = ptUnknown
      end>
  end
end

inherited rn1_meto_list_oper_corte: Trn1_meto_list_oper_corte
  Width = 1008
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    Width = 964
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
        Height = 187
        Size.Values = (
          494.770833333333
          1957.91666666667)
        object PCPQrForma2: TPCPQrForma [0]
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
          Caption = 'Listado de operaciones de corte'
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
          Size.Values = (
            44.9791666666667
            26.4583333333333
            232.833333333333
            13.2291666666667)
          FontSize = 10
        end
        inherited _QRLine_Titulo: TPCPQrForma
          Size.Values = (
            1.88988095238095
            -3.7797619047619
            277.8125
            1957.91666666667)
        end
        inherited tPCPQrLabel1: tPCPQrLabel
          Size.Values = (
            44.9791666666667
            26.4583333333333
            232.833333333333
            13.2291666666667)
          FontSize = 10
        end
        inherited padr_cuad_3: TPCPQrForma
          Size.Values = (
            52.9166666666667
            658.8125
            277.8125
            635)
        end
        inherited padr_cuad_2: TPCPQrForma
          Size.Values = (
            52.9166666666667
            21.1666666666667
            277.8125
            640.291666666667)
        end
        inherited padr_codigo: tPCPQrLabel
          Size.Values = (
            44.9791666666667
            34.3958333333333
            280.458333333333
            100.541666666667)
          FontSize = 8
        end
        inherited padr_cir: tPCPQrLabel
          Size.Values = (
            44.9791666666667
            669.395833333333
            280.458333333333
            92.6041666666667)
          FontSize = 8
        end
        inherited padr_padr_5: TPCPQrForma
          Size.Values = (
            52.9166666666667
            1291.16666666667
            277.8125
            635)
        end
        inherited padr_variacion: tPCPQrLabel
          Size.Values = (
            44.9791666666667
            1304.39583333333
            280.458333333333
            127)
          FontSize = 8
        end
        inherited padr_padr_7: TPCPQrForma
          Top = 142
          Size.Values = (
            50.2708333333333
            21.1666666666667
            375.708333333333
            1272.64583333333)
        end
        inherited padr_padr_6: TPCPQrForma
          Top = 142
          Size.Values = (
            50.2708333333333
            1291.16666666667
            375.708333333333
            635)
        end
        inherited padr_nombre: tPCPQrLabel
          Top = 143
          Size.Values = (
            44.9791666666667
            34.3958333333333
            378.354166666667
            111.125)
          FontSize = 8
        end
        inherited padr_temporada: tPCPQrLabel
          Top = 143
          Size.Values = (
            44.9791666666667
            1304.39583333333
            378.354166666667
            156.104166666667)
          FontSize = 8
        end
        inherited padr_padr_8: TPCPQrForma
          Top = 160
          Size.Values = (
            50.2708333333333
            21.1666666666667
            423.333333333333
            640.291666666667)
        end
        inherited padr_padr_9: TPCPQrForma
          Top = 160
          Size.Values = (
            50.2708333333333
            658.8125
            423.333333333333
            635)
        end
        inherited padr_padr_10: TPCPQrForma
          Top = 160
          Size.Values = (
            50.2708333333333
            1291.16666666667
            423.333333333333
            635)
        end
        inherited padr_marca: tPCPQrLabel
          Top = 161
          Size.Values = (
            44.9791666666667
            34.3958333333333
            425.979166666667
            89.9583333333333)
          FontSize = 8
        end
        inherited padr_linea: tPCPQrLabel
          Top = 161
          Size.Values = (
            44.9791666666667
            669.395833333333
            425.979166666667
            79.375)
          FontSize = 8
        end
        inherited padr_estilo: tPCPQrLabel
          Top = 161
          Size.Values = (
            44.9791666666667
            1304.39583333333
            425.979166666667
            79.375)
          FontSize = 8
        end
        inherited padr_codigo_db: TPCPQRDBText
          Size.Values = (
            44.9791666666667
            232.833333333333
            280.458333333333
            412.75)
          FontSize = 8
        end
        inherited padr_cir_db: TPCPQRDBText
          Size.Values = (
            44.9791666666667
            867.833333333333
            283.104166666667
            412.75)
          FontSize = 8
        end
        inherited padr_variacion_db: TPCPQRDBText
          Size.Values = (
            44.9791666666667
            1502.83333333333
            283.104166666667
            412.75)
          FontSize = 8
        end
        inherited padr_nombre_db: TPCPQRDBText
          Top = 143
          Size.Values = (
            44.9791666666667
            232.833333333333
            378.354166666667
            1045.10416666667)
          FontSize = 8
        end
        inherited padr_temporada_db: TPCPQRDBText
          Top = 143
          Size.Values = (
            44.9791666666667
            1502.83333333333
            378.354166666667
            412.75)
          FontSize = 8
        end
        inherited padr_marca_db: TPCPQRDBText
          Top = 161
          Size.Values = (
            44.9791666666667
            232.833333333333
            425.979166666667
            412.75)
          FontSize = 8
        end
        inherited padr_linea_db: TPCPQRDBText
          Top = 161
          Size.Values = (
            44.9791666666667
            867.833333333333
            425.979166666667
            412.75)
          FontSize = 8
        end
        inherited padr_estilo_db: TPCPQRDBText
          Top = 161
          Size.Values = (
            44.9791666666667
            1502.83333333333
            425.979166666667
            412.75)
          FontSize = 8
        end
        inherited padr_cuad_1: TPCPQrForma
          Size.Values = (
            52.9166666666667
            21.1666666666667
            227.541666666667
            1905)
        end
        inherited qrla_info_referencia: tPCPQrLabel
          Size.Values = (
            44.9791666666667
            34.3958333333333
            230.1875
            481.541666666667)
          FontSize = 10
        end
        object PCPQrForma3: TPCPQrForma
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
        object tPCPQrLabel8: tPCPQrLabel
          Left = 493
          Top = 125
          Width = 69
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
            182.5625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cód. material:'
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
          Left = 13
          Top = 125
          Width = 43
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
            113.770833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Material:'
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
        object qrla_nomb_material: tPCPQrLabel
          Left = 89
          Top = 125
          Width = 396
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            235.479166666667
            330.729166666667
            1047.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
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
        object qrla_codi_material: tPCPQrLabel
          Left = 568
          Top = 125
          Width = 155
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
            410.104166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
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
      inherited _QRBanda_Eslogan: TPCPQRBand
        Top = 374
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
        Top = 297
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
        Top = 252
        Height = 1
        Size.Values = (
          2.64583333333333
          1957.91666666667)
      end
      object grup_detalle: TQRGroup
        Left = 38
        Top = 225
        Width = 740
        Height = 27
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
          71.4375
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
          Left = 19
          Top = 9
          Width = 18
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            50.2708333333333
            23.8125
            47.625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'No.'
          Color = clWhite
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel2: tPCPQrLabel
          Left = 51
          Top = 9
          Width = 39
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            134.9375
            23.8125
            103.1875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Proceso'
          Color = clWhite
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel3: tPCPQrLabel
          Left = 155
          Top = 9
          Width = 34
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            410.104166666667
            23.8125
            89.9583333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Código'
          Color = clWhite
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel4: tPCPQrLabel
          Left = 251
          Top = 9
          Width = 50
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            664.104166666667
            23.8125
            132.291666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Operación'
          Color = clWhite
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel5: tPCPQrLabel
          Left = 507
          Top = 9
          Width = 19
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1341.4375
            23.8125
            50.2708333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'u/m'
          Color = clWhite
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel6: tPCPQrLabel
          Left = 699
          Top = 9
          Width = 22
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1849.4375
            23.8125
            58.2083333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'P.H.'
          Color = clWhite
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel7: tPCPQrLabel
          Left = 635
          Top = 9
          Width = 35
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1680.10416666667
            23.8125
            92.6041666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tiempo'
          Color = clWhite
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
      end
      object subd_detalle: TQRSubDetail
        Left = 38
        Top = 253
        Width = 740
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        LinkBand = grup_detalle
        Size.Values = (
          42.3333333333333
          1957.91666666667)
        Master = _QRPadre
        DataSet = quer_operaciones
        FooterBand = foot_detalle
        HeaderBand = grup_detalle
        PrintBefore = False
        PrintIfEmpty = True
        object PCPQRDBText1: TPCPQRDBText
          Left = 9
          Top = 1
          Width = 27
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            23.8125
            2.64583333333333
            71.4375)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_operaciones
          DataField = 'numero'
          Mask = ',0'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText2: TPCPQRDBText
          Left = 51
          Top = 1
          Width = 97
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            134.9375
            2.64583333333333
            256.645833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_operaciones
          DataField = 'proceso'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText3: TPCPQRDBText
          Left = 155
          Top = 1
          Width = 86
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            410.104166666667
            2.64583333333333
            227.541666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_operaciones
          DataField = 'codigo'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText4: TPCPQRDBText
          Left = 251
          Top = 1
          Width = 246
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            664.104166666667
            2.64583333333333
            650.875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_operaciones
          DataField = 'nomb_operacion'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText5: TPCPQRDBText
          Left = 507
          Top = 1
          Width = 86
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1341.4375
            2.64583333333333
            227.541666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_operaciones
          DataField = 'unid_medida'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText6: TPCPQRDBText
          Left = 600
          Top = 1
          Width = 73
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1587.5
            2.64583333333333
            193.145833333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_operaciones
          DataField = 'tiempo'
          Mask = ',0.000'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText7: TPCPQRDBText
          Left = 689
          Top = 1
          Width = 33
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1822.97916666667
            2.64583333333333
            87.3125)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_operaciones
          DataField = 'ph'
          Mask = ',0'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
      end
      object foot_detalle: TQRBand
        Left = 38
        Top = 269
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
        object PCPQrForma1: TPCPQrForma
          Left = 8
          Top = 6
          Width = 720
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2
            21.1666666666667
            15.875
            1905)
          Brush.Color = clSilver
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object QRLabel1: TQRLabel
          Left = 9
          Top = 9
          Width = 74
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            23.8125
            23.8125
            195.791666666667)
          Alignment = taRightJustify
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
        object QRLabel2: TQRLabel
          Left = 516
          Top = 9
          Width = 76
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1365.25
            23.8125
            201.083333333333)
          Alignment = taRightJustify
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
        object QRExpr1: TQRExpr
          Left = 88
          Top = 9
          Width = 185
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            232.833333333333
            23.8125
            489.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Color = clWhite
          Master = subd_detalle
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'MAX(quer_operaciones.numero)'
          Mask = ',0'
          FontSize = 8
        end
        object QRExpr2: TQRExpr
          Left = 600
          Top = 9
          Width = 74
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1587.5
            23.8125
            195.791666666667)
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
          Master = subd_detalle
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'SUM(quer_operaciones.tiempo)'
          Mask = ',0.000'
          FontSize = 8
        end
      end
    end
  end
  inherited padr_barr_dock: TTBXDock
    Width = 1000
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
  object quer_operaciones: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      'Select *'
      'from tmp_repo_list_oper_corte'
      'order by numero '
      ' ')
    Left = 878
    Top = 68
    object quer_operacionesnumero: TIntegerField
      FieldName = 'numero'
      Origin = 'PCPLOCAL."tmp_repo_list_oper_corte.DB".numero'
    end
    object quer_operacionesproceso: TStringField
      FieldName = 'proceso'
      Origin = 'PCPLOCAL."tmp_repo_list_oper_corte.DB".proceso'
      Size = 12
    end
    object quer_operacionescodigo: TStringField
      FieldName = 'codigo'
      Origin = 'PCPLOCAL."tmp_repo_list_oper_corte.DB".codigo'
      Size = 12
    end
    object quer_operacionesnomb_operacion: TStringField
      FieldName = 'nomb_operacion'
      Origin = 'PCPLOCAL."tmp_repo_list_oper_corte.DB".nomb_operacion'
      Size = 30
    end
    object quer_operacionesunid_medida: TStringField
      FieldName = 'unid_medida'
      Origin = 'PCPLOCAL."tmp_repo_list_oper_corte.DB".unid_medida'
    end
    object quer_operacionestiempo: TFloatField
      FieldName = 'tiempo'
      Origin = 'PCPLOCAL."tmp_repo_list_oper_corte.DB".tiempo'
    end
    object quer_operacionesph: TIntegerField
      FieldName = 'ph'
      Origin = 'PCPLOCAL."tmp_repo_list_oper_corte.DB".ph'
    end
  end
end

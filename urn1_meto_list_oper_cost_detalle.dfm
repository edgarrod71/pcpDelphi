inherited rn1_meto_list_oper_cost_detalle: Trn1_meto_list_oper_cost_detalle
  Width = 999
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    Width = 955
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
          Caption = 'Detalle por procesos de corte'
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
        object PCPQrForma2: TPCPQrForma
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
        Top = 400
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
        Top = 323
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
        Top = 259
        Size.Values = (
          47.625
          1957.91666666667)
      end
      object grup_detalles: TQRGroup
        Left = 38
        Top = 225
        Width = 740
        Height = 34
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
          89.9583333333333
          1957.91666666667)
        Master = _QRPadre
        ReprintOnNewPage = False
        object PCPQrForma1: TPCPQrForma
          Left = 8
          Top = 12
          Width = 641
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            21.1666666666667
            31.75
            1695.97916666667)
          Brush.Color = clSilver
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel2: tPCPQrLabel
          Left = 13
          Top = 14
          Width = 65
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            34.3958333333333
            37.0416666666667
            171.979166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cód. proceso'
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
          Left = 125
          Top = 14
          Width = 39
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            330.729166666667
            37.0416666666667
            103.1875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Proceso'
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
        object tPCPQrLabel4: tPCPQrLabel
          Left = 381
          Top = 14
          Width = 35
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1008.0625
            37.0416666666667
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
        object tPCPQrLabel5: tPCPQrLabel
          Left = 485
          Top = 14
          Width = 42
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1283.22916666667
            37.0416666666667
            111.125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '$ minuto'
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
          Left = 605
          Top = 14
          Width = 34
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1600.72916666667
            37.0416666666667
            89.9583333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '$ Total'
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
      object deta_detalles: TQRSubDetail
        Left = 38
        Top = 277
        Width = 740
        Height = 18
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
        DataSet = quer_detalles
        FooterBand = foot_detalles
        HeaderBand = grup_detalles
        PrintBefore = False
        PrintIfEmpty = True
        object PCPQRDBText1: TPCPQRDBText
          Left = 12
          Top = 2
          Width = 101
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            31.75
            5.29166666666667
            267.229166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalles
          DataField = 'CODI_PROCESO'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText2: TPCPQRDBText
          Left = 124
          Top = 2
          Width = 181
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            328.083333333333
            5.29166666666667
            478.895833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalles
          DataField = 'NOMB_PROCESO'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText3: TPCPQRDBText
          Left = 316
          Top = 2
          Width = 101
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            836.083333333333
            5.29166666666667
            267.229166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalles
          DataField = 'TIEM_PROCESO'
          Mask = ',0.0000'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText4: TPCPQRDBText
          Left = 428
          Top = 2
          Width = 101
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1132.41666666667
            5.29166666666667
            267.229166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalles
          DataField = 'COST_MINUTO'
          Mask = '$ ,0.00'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object PCPQRDBText5: TPCPQRDBText
          Left = 540
          Top = 2
          Width = 101
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1428.75
            5.29166666666667
            267.229166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_detalles
          DataField = 'COST_PROCESO'
          Mask = '$ ,0.00'
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
      end
      object foot_detalles: TPCPQRBand
        Left = 38
        Top = 295
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
        object QRExpr1: TQRExpr
          Left = 317
          Top = 8
          Width = 99
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            838.729166666667
            21.1666666666667
            261.9375)
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
          Master = deta_detalles
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'SUM(quer_detalles.TIEM_PROCESO)'
          Mask = ',0.0000'
          FontSize = 8
        end
        object QRLabel1: TQRLabel
          Left = 256
          Top = 8
          Width = 46
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            677.333333333333
            21.1666666666667
            121.708333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Totales:'
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
        object PCPQrForma4: TPCPQrForma
          Left = 8
          Top = 3
          Width = 641
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.64583333333333
            21.1666666666667
            7.9375
            1695.97916666667)
          Brush.Color = clSilver
          Pen.Color = clGray
          Shape = qrsRectangle
          Seleccionado = False
        end
        object QRExpr2: TQRExpr
          Left = 542
          Top = 8
          Width = 99
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            1434.04166666667
            21.1666666666667
            261.9375)
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
          Master = deta_detalles
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'SUM(quer_detalles.COST_PROCESO)'
          Mask = '$ ,0.00'
          FontSize = 8
        end
      end
    end
  end
  inherited padr_barr_dock: TTBXDock
    Width = 991
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
  object quer_detalles: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select *'
      'from CON_PCP_METO_LIST_OPER_CORT_R'
      '(:cons_refe_variacion, :cons_refe_material)')
    Left = 874
    Top = 68
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_refe_variacion'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cons_refe_material'
        ParamType = ptInput
      end>
    object quer_detallesCONS_PROCESO: TIntegerField
      FieldName = 'CONS_PROCESO'
    end
    object quer_detallesCODI_PROCESO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PROCESO'
      Size = 12
    end
    object quer_detallesNOMB_PROCESO: TStringField
      DisplayLabel = 'Proceso'
      FieldName = 'NOMB_PROCESO'
      Size = 60
    end
    object quer_detallesTIEM_PROCESO: TFloatField
      DisplayLabel = 'Tiempo'
      FieldName = 'TIEM_PROCESO'
      DisplayFormat = ',0.0000'
    end
    object quer_detallesCOST_MINUTO: TFloatField
      DisplayLabel = '$ minuto'
      FieldName = 'COST_MINUTO'
      DisplayFormat = '$ ,0.00'
    end
    object quer_detallesCOST_PROCESO: TFloatField
      DisplayLabel = '$ total'
      FieldName = 'COST_PROCESO'
      DisplayFormat = '$ ,0.00'
    end
  end
end

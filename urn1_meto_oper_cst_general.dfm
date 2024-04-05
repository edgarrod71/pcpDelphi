inherited rn1_meto_oper_cst_general: Trn1_meto_oper_cst_general
  Left = 15
  Top = 116
  Height = 615
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    Left = 36
    Width = 992
    Height = 562
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
        BeforePrint = _QRBanda_Page_HeaderBeforePrint
        Size.Values = (
          494.770833333333
          1957.91666666667)
        inherited _QRFecha: TQRSysData
          Top = 50
          Height = 16
          Size.Values = (
            42.3333333333333
            1669.52083333333
            132.291666666667
            288.395833333333)
          FontSize = 8
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
          Caption = 'Métodos estándar de costura C.S.T.'
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
          Top = 60
          Size.Values = (
            63.5
            555.625
            158.75
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
          Pen.Color = clWhite
        end
        object tPCPQrLabel1: tPCPQrLabel
          Left = 10
          Top = 89
          Width = 187
          Height = 17
          Hint = 'Detalle del filtro del Informe:'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            26.4583333333333
            235.479166666667
            494.770833333333)
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
          Caption = 'Información de la operación'
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
          DataSet = quer_maestro
          DataField = 'CODI_OPER_COSTURA'
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
        object tPCPQrLabel2: tPCPQrLabel
          Left = 260
          Top = 106
          Width = 92
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            687.916666666667
            280.458333333333
            243.416666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nombre operación:'
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
          DataSet = quer_maestro
          DataField = 'NOMB_OPER_COSTURA'
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
        object tPCPQrLabel3: tPCPQrLabel
          Left = 14
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
            37.0416666666667
            383.645833333333
            113.770833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Proceso:'
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
          DataSet = quer_maestro
          DataField = 'NOMB_PROCESO'
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
            677.333333333333
            378.354166666667
            658.8125)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma5: TPCPQrForma
          Left = 504
          Top = 143
          Width = 225
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1333.5
            378.354166666667
            595.3125)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel4: tPCPQrLabel
          Left = 260
          Top = 145
          Width = 90
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            687.916666666667
            383.645833333333
            238.125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo de operación:'
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
          Top = 145
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
            383.645833333333
            362.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_maestro
          DataField = 'NOMB_OPER_COST_TIPO'
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
          Left = 509
          Top = 145
          Width = 66
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            1346.72916666667
            383.645833333333
            174.625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Componente:'
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
          Top = 145
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
            383.645833333333
            320.145833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_maestro
          DataField = 'NOMB_COMP_GRUPO'
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
          Top = 162
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
            428.625
            658.8125)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel6: tPCPQrLabel
          Left = 14
          Top = 163
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
            431.270833333333
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
          Top = 163
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
            431.270833333333
            412.75)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_maestro
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
          Top = 162
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
            428.625
            1251.47916666667)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel7: tPCPQrLabel
          Left = 260
          Top = 163
          Width = 43
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            687.916666666667
            431.270833333333
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
          Top = 163
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
            431.270833333333
            955.145833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_maestro
          DataField = 'USUA_MODIFICACION'
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
            21.4973958333333
            329.075520833333
            659.8046875)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel14: tPCPQrLabel
          Left = 14
          Top = 125
          Width = 62
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            37.0416666666667
            330.729166666667
            164.041666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cronómetro:'
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
        object PCPQrForma15: TPCPQrForma
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
            677.994791666667
            329.075520833333
            658.151041666667)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma16: TPCPQrForma
          Left = 504
          Top = 124
          Width = 225
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1333.5
            329.40625
            595.3125)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel15: tPCPQrLabel
          Left = 260
          Top = 125
          Width = 71
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            687.916666666667
            330.729166666667
            187.854166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tiempo (TMU):'
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
            44.6484375
            952.5
            332.3828125
            362.1484375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_maestro
          DataField = 'TIEM_ASIGNADO'
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
        object qrla_tiem_2: tPCPQrLabel
          Left = 509
          Top = 125
          Width = 39
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            1346.72916666667
            330.729166666667
            103.1875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tiempo:'
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
            44.6484375
            1587.5
            332.3828125
            319.153645833333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_maestro
          DataField = 'TIEM_2'
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
        object qrch_tiem_cronometro: TQRCheckBox
          Left = 96
          Top = 129
          Width = 10
          Height = 10
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            26.4583333333333
            253.0078125
            342.3046875
            26.4583333333333)
          TickStyle = tsCross
          Checked = True
        end
      end
      inherited _QRBanda_Eslogan: TPCPQRBand
        Top = 301
        Size.Values = (
          92.6041666666667
          1957.91666666667)
        inherited _QREslogan: TQRMemo
          Width = 560
          Height = 34
          Size.Values = (
            89.9583333333333
            0
            0
            1481.66666666667)
          FontSize = 8
        end
        inherited _QRSistema: tPCPQrLabel
          Left = 570
          Width = 170
          Size.Values = (
            84.6666666666667
            1508.125
            13.2291666666667
            449.791666666667)
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
        Top = 225
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
        Top = 225
        Height = 0
        Size.Values = (
          0
          1957.91666666667)
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
    Height = 562
    inherited DBPropiedades_Informes: TTBXDockablePanel
      DockedWidth = 32
      inherited shap_xp: TShape
        Width = 32
      end
      inherited Panel1: TPanel
        Width = 32
        Height = 540
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
          Tag = 269
          Width = 32
          Height = 269
          inherited DBInformes: TdxDBGrid
            Width = 28
            Height = 246
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
  object quer_maestro: TQuery
    OnCalcFields = quer_maestroCalcFields
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'Select '
      '* from'
      'VIS_PCP_OPER_COSTURA'
      'where cons_oper_costura = :cons_oper_costura')
    Left = 1190
    Top = 52
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cons_oper_costura'
        ParamType = ptInput
      end>
    object quer_maestroCONS_OPER_COSTURA: TIntegerField
      FieldName = 'CONS_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_OPER_COSTURA'
    end
    object quer_maestroCODI_OPER_COSTURA: TStringField
      FieldName = 'CODI_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_OPER_COSTURA'
      Size = 12
    end
    object quer_maestroNOMB_OPER_COSTURA: TStringField
      FieldName = 'NOMB_OPER_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_OPER_COSTURA'
      Size = 30
    end
    object quer_maestroCONS_PROCESO: TIntegerField
      FieldName = 'CONS_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_PROCESO'
    end
    object quer_maestroCODI_PROCESO: TStringField
      FieldName = 'CODI_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_PROCESO'
      Size = 12
    end
    object quer_maestroNOMB_PROCESO: TStringField
      FieldName = 'NOMB_PROCESO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_PROCESO'
      Size = 60
    end
    object quer_maestroCONS_OPER_COST_TIPO: TIntegerField
      FieldName = 'CONS_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_OPER_COST_TIPO'
    end
    object quer_maestroCODI_OPER_COST_TIPO: TStringField
      FieldName = 'CODI_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_OPER_COST_TIPO'
      Size = 12
    end
    object quer_maestroNOMB_OPER_COST_TIPO: TStringField
      FieldName = 'NOMB_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_OPER_COST_TIPO'
      Size = 60
    end
    object quer_maestroCONS_COMP_GRUPO: TIntegerField
      FieldName = 'CONS_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_COMP_GRUPO'
    end
    object quer_maestroCODI_COMP_GRUPO: TStringField
      FieldName = 'CODI_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_COMP_GRUPO'
      Size = 12
    end
    object quer_maestroNOMB_COMP_GRUPO: TStringField
      FieldName = 'NOMB_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_COMP_GRUPO'
      Size = 60
    end
    object quer_maestroFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.FECH_SISTEMA'
    end
    object quer_maestroUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.USUA_SISTEMA'
    end
    object quer_maestroSUPL_CONSTANTE: TSmallintField
      FieldName = 'SUPL_CONSTANTE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SUPL_CONSTANTE'
    end
    object quer_maestroSUPL_VARIABLE: TSmallintField
      FieldName = 'SUPL_VARIABLE'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SUPL_VARIABLE'
    end
    object quer_maestroCOMP_LARG_COSTURA: TStringField
      FieldName = 'COMP_LARG_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.COMP_LARG_COSTURA'
      Size = 60
    end
    object quer_maestroCONS_RECU_FAMILIA: TIntegerField
      FieldName = 'CONS_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_RECU_FAMILIA'
    end
    object quer_maestroCODI_RECU_FAMILIA: TStringField
      FieldName = 'CODI_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_RECU_FAMILIA'
      Size = 12
    end
    object quer_maestroNOMB_RECU_FAMILIA: TStringField
      FieldName = 'NOMB_RECU_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_RECU_FAMILIA'
      Size = 60
    end
    object quer_maestroCONS_RECU_GRUPO: TIntegerField
      FieldName = 'CONS_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.REVO_POR_MINUTO'
    end
    object quer_maestroCODI_RECU_GRUPO: TStringField
      FieldName = 'CODI_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SUPL_MAQUINA'
      Size = 12
    end
    object quer_maestroNOMB_RECU_GRUPO: TStringField
      FieldName = 'NOMB_RECU_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_ACCE_FAMILIA'
      Size = 60
    end
    object quer_maestroCONS_RECU_TIPO: TIntegerField
      FieldName = 'CONS_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.IMAG_PUES_TRABAJO'
    end
    object quer_maestroCODI_RECU_TIPO: TStringField
      FieldName = 'CODI_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.AJUS_IMAG_PUES_TRABAJO'
      Size = 12
    end
    object quer_maestroCONS_RECU_MARCA: TIntegerField
      FieldName = 'CONS_RECU_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.MODI_PUES_TRABAJO'
    end
    object quer_maestroCODI_RECU_MARCA: TStringField
      FieldName = 'CODI_RECU_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.IMAG_DIST_PUES_TRABAJO'
      Size = 12
    end
    object quer_maestroNOMB_RECU_MARCA: TStringField
      FieldName = 'NOMB_RECU_MARCA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.AJUS_IMAG_DIST_PUES_TRABAJO'
      Size = 60
    end
    object quer_maestroCLAS_RECURSO: TStringField
      FieldName = 'CLAS_RECURSO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SECU_MOVIMIENTOS'
      Size = 60
    end
    object quer_maestroCODI_RECU_TIPO_PUNTADA: TStringField
      FieldName = 'CODI_RECU_TIPO_PUNTADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.TIEM_CRONOMETRO'
      Size = 12
    end
    object quer_maestroCONS_RECU_TIPO_PUNTADA: TIntegerField
      FieldName = 'CONS_RECU_TIPO_PUNTADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.TIEM_ASIGNADO'
    end
    object quer_maestroNOMB_RECU_TIPO: TStringField
      FieldName = 'NOMB_RECU_TIPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_RECU_GRUPO'
      Size = 60
    end
    object quer_maestroREVO_POR_MINUTO: TIntegerField
      FieldName = 'REVO_POR_MINUTO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_RECU_GRUPO'
    end
    object quer_maestroSUPL_MAQUINA: TSmallintField
      FieldName = 'SUPL_MAQUINA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_RECU_GRUPO'
    end
    object quer_maestroCONS_ACCE_FAMILIA: TIntegerField
      FieldName = 'CONS_ACCE_FAMILIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_RECU_TIPO'
    end
    object quer_maestroIMAG_PUES_TRABAJO: TBlobField
      FieldName = 'IMAG_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CONS_RECU_GRUPO1'
      BlobType = ftBlob
      Size = 1
    end
    object quer_maestroAJUS_IMAG_PUES_TRABAJO: TIntegerField
      FieldName = 'AJUS_IMAG_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_RECU_TIPO'
    end
    object quer_maestroIMAG_DIST_PUES_TRABAJO: TBlobField
      FieldName = 'IMAG_DIST_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_RECU_MARCA'
      BlobType = ftBlob
      Size = 1
    end
    object quer_maestroAJUS_IMAG_DIST_PUES_TRABAJO: TIntegerField
      FieldName = 'AJUS_IMAG_DIST_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.NOMB_RECU_MARCA'
    end
    object quer_maestroTIEM_CRONOMETRO: TIntegerField
      FieldName = 'TIEM_CRONOMETRO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_RECU_TIPO_PUNTADA'
    end
    object quer_maestroTIEM_ASIGNADO: TFloatField
      FieldName = 'TIEM_ASIGNADO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.CODI_RECU_TIPO_PUNTADA'
    end
    object quer_maestroTIEM_2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TIEM_2'
      Calculated = True
    end
    object quer_maestroFECH_MODIFICACION: TDateTimeField
      FieldName = 'FECH_MODIFICACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.FECH_MODIFICACION'
    end
    object quer_maestroUSUA_MODIFICACION: TStringField
      FieldName = 'USUA_MODIFICACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.USUA_MODIFICACION'
    end
    object quer_maestroPUNT_POR_CENTIMETRO: TFloatField
      FieldName = 'PUNT_POR_CENTIMETRO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.PUNT_POR_CENTIMETRO'
    end
    object quer_maestroLARG_COSTURA: TFloatField
      FieldName = 'LARG_COSTURA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.LARG_COSTURA'
    end
    object quer_maestroDESCRIPCION: TMemoField
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.DESCRIPCION'
      BlobType = ftMemo
      Size = 5000
    end
    object quer_maestroMODI_PUES_TRABAJO: TMemoField
      FieldName = 'MODI_PUES_TRABAJO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.MODI_PUES_TRABAJO'
      BlobType = ftMemo
      Size = 5000
    end
    object quer_maestroSECU_MOVIMIENTOS: TMemoField
      FieldName = 'SECU_MOVIMIENTOS'
      Origin = 'DATA_BASE_PCP.VIS_PCP_OPER_COSTURA.SECU_MOVIMIENTOS'
      BlobType = ftMemo
      Size = 5000
    end
  end
  object data_maestro: TDataSource
    DataSet = quer_maestro
    Left = 1222
    Top = 52
  end
end

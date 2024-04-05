inherited rn1_prod_orde_Traz_espigas: Trn1_prod_orde_Traz_espigas
  Left = -1
  Top = 133
  Height = 568
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    Left = 36
    Width = 992
    Height = 515
    VertScrollBar.Position = 159
    inherited _QRPadre: TPCPQuickReport
      Top = -171
      DataSet = quer_repo_espigas
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
      ReportTitle = 'Orden de corte (espigas)'
      inherited _QRBanda_Page_Header: TPCPQRBand
        Height = 226
        Size.Values = (
          597.958333333333
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
            64.2559523809524
            555.625
            156.860119047619
            680.357142857143)
          FontSize = 14
        end
        inherited _QRLPrioridad: tPCPQrLabel
          Size.Values = (
            45.3571428571429
            364.747023809524
            170.089285714286
            170.089285714286)
          FontSize = 10
        end
        inherited _QRFiltro: tPCPQrLabel
          Top = 2
          Width = 5
          Size.Values = (
            45.3571428571429
            26.4583333333333
            5.66964285714286
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
            45.3571428571429
            26.4583333333333
            236.235119047619
            495.14880952381)
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
        object qrla_info_referencia: tPCPQrLabel
          Left = 14
          Top = 88
          Width = 306
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            37.797619047619
            232.455357142857
            810.758928571429)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Información de la orden de producción'
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
          Shape = qrsRectangle
          Seleccionado = False
        end
        object padr_cir: tPCPQrLabel
          Left = 14
          Top = 106
          Width = 53
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            41.577380952381
            37.797619047619
            279.702380952381
            139.85119047619)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'No. orden:'
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
          DataSet = quer_prod_orden
          DataField = 'NUME_PROD_ORDEN'
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
            676.577380952381
            277.8125
            1251.10119047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel2: tPCPQrLabel
          Left = 260
          Top = 106
          Width = 38
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            41.577380952381
            687.916666666667
            279.702380952381
            100.16369047619)
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
            45.3571428571429
            952.5
            283.482142857143
            954.389880952381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_prod_orden
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
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel3: tPCPQrLabel
          Left = 14
          Top = 125
          Width = 75
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
            198.4375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Total unidades:'
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
          DataSet = quer_unidades
          DataField = 'CANT_UNIDADES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Mask = ',0'
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
            676.577380952381
            328.839285714286
            659.568452380952)
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
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel4: tPCPQrLabel
          Left = 260
          Top = 125
          Width = 77
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
            203.729166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fecha creación:'
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
          DataSet = quer_prod_orden
          DataField = 'FECH_SISTEMA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Mask = 'dd/mm/yyyy'
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
        object tPCPQrLabel5: tPCPQrLabel
          Left = 510
          Top = 125
          Width = 80
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            1349.375
            330.729166666667
            211.666666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cód. referencia:'
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
          Left = 594
          Top = 126
          Width = 126
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1572.38095238095
            332.619047619048
            334.508928571429)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencia
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
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel6: tPCPQrLabel
          Left = 14
          Top = 145
          Width = 35
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
          DataSet = quer_referencia
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
            676.577380952381
            377.97619047619
            1251.10119047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel7: tPCPQrLabel
          Left = 260
          Top = 145
          Width = 94
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
            248.708333333333)
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
          DataSet = quer_referencia
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
        object PCPQrForma10: TPCPQrForma
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
            20.7886904761905
            429.002976190476
            659.568452380952)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQRDBText9: TPCPQRDBText
          Left = 96
          Top = 164
          Width = 156
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            253.244047619048
            434.672619047619
            411.994047619048)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencia
          DataField = 'MOLDE'
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
            676.577380952381
            429.002976190476
            1251.10119047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel11: tPCPQrLabel
          Left = 260
          Top = 164
          Width = 30
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            687.916666666667
            433.916666666667
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
        object PCPQRDBText10: TPCPQRDBText
          Left = 360
          Top = 164
          Width = 144
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            952.5
            434.672619047619
            379.866071428571)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencia
          DataField = 'NOMB_REFE_ESTILO'
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
          Left = 504
          Top = 162
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
            429.002976190476
            593.422619047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel12: tPCPQrLabel
          Left = 510
          Top = 164
          Width = 30
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            1349.375
            433.916666666667
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
        object PCPQRDBText11: TPCPQRDBText
          Left = 594
          Top = 164
          Width = 126
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1572.38095238095
            432.782738095238
            334.508928571429)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencia
          DataField = 'NOMB_REFE_LINEA'
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
          Left = 14
          Top = 164
          Width = 33
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            37.0416666666667
            433.916666666667
            87.3125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Molde:'
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
        object PCPQrForma13: TPCPQrForma
          Left = 8
          Top = 181
          Width = 249
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            20.7886904761905
            478.139880952381
            659.568452380952)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel13: tPCPQrLabel
          Left = 14
          Top = 183
          Width = 34
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            37.0416666666667
            484.1875
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
        object PCPQRDBText12: TPCPQRDBText
          Left = 96
          Top = 183
          Width = 156
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            253.244047619048
            483.809523809524
            411.994047619048)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencia
          DataField = 'NOMB_REFE_MARCA'
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
          Left = 256
          Top = 181
          Width = 473
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            676.577380952381
            478.139880952381
            1251.10119047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel14: tPCPQrLabel
          Left = 260
          Top = 183
          Width = 34
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            687.916666666667
            484.1875
            89.9583333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Grupo:'
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
          Top = 183
          Width = 144
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            952.5
            483.809523809524
            379.866071428571)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencia
          DataField = 'NOMB_REFE_GRUPO'
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
          Left = 504
          Top = 181
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
            478.139880952381
            593.422619047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQRDBText14: TPCPQRDBText
          Left = 594
          Top = 182
          Width = 126
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1572.38095238095
            481.919642857143
            334.508928571429)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_referencia
          DataField = 'NOMB_REFE_EDAD'
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
        object PCPQrForma9: TPCPQrForma
          Left = 8
          Top = 199
          Width = 249
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            20.7886904761905
            525.386904761905
            657.678571428571)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel10: tPCPQrLabel
          Left = 510
          Top = 183
          Width = 29
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            1349.375
            484.1875
            76.7291666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Edad:'
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
          Left = 95
          Top = 201
          Width = 124
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            251.354166666667
            531.056547619048
            326.949404761905)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_material
          DataField = 'CODI_MATE_REFERENCIA'
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
          Left = 14
          Top = 201
          Width = 69
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            37.0416666666667
            531.8125
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
        object PCPQrForma8: TPCPQrForma
          Left = 256
          Top = 199
          Width = 473
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            676.577380952381
            525.386904761905
            1251.10119047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQrForma17: TPCPQrForma
          Left = 571
          Top = 199
          Width = 157
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            1511.90476190476
            525.386904761905
            415.77380952381)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQRDBText7: TPCPQRDBText
          Left = 360
          Top = 200
          Width = 206
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            952.5
            529.166666666667
            546.175595238095)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_material
          DataField = 'NOMB_MATE_REFERENCIA'
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
          Left = 260
          Top = 201
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
            531.8125
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
        object tPCPQrLabel16: tPCPQrLabel
          Left = 575
          Top = 200
          Width = 49
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            1521.35416666667
            529.166666666667
            129.645833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Consumo:'
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
          Left = 629
          Top = 199
          Width = 92
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            1663.09523809524
            527.276785714286
            243.794642857143)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_material
          DataField = 'CONSUMO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Mask = ',0.00000'
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 8
        end
      end
      inherited _QRBanda_Eslogan: TPCPQRBand
        Top = 390
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
        Top = 313
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
        Top = 264
        Height = 35
        BeforePrint = band_espigaBeforePrint
        Size.Values = (
          92.6041666666667
          1957.91666666667)
        BandType = rbGroupHeader
        object PCPQrForma18: TPCPQrForma
          Left = 8
          Top = 4
          Width = 249
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            20.7886904761905
            9.44940476190476
            659.568452380952)
          Brush.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQRDBText17: TPCPQRDBText
          Left = 11
          Top = 4
          Width = 235
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.797619047619
            30.2380952380952
            11.3392857142857
            621.770833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_repo_espigas
          DataField = 'NOMB_PROD_LOTE'
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
        object titu1: TPCPQrForma
          Left = 8
          Top = 19
          Width = 114
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            41.577380952381
            20.7886904761905
            51.0267857142857
            300.491071428571)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object labe_con_entrepierna: tPCPQrLabel
          Left = 11
          Top = 20
          Width = 103
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.0416666666667
            29.1041666666667
            52.9166666666667
            272.520833333333)
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
        object titu_espiga: TPCPQrForma
          Left = 256
          Top = 4
          Width = 247
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            43.4672619047619
            678.467261904762
            9.44940476190476
            653.89880952381)
          Brush.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object PCPQRDBText15: TPCPQRDBText
          Left = 260
          Top = 4
          Width = 240
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.797619047619
            687.916666666667
            11.3392857142857
            635)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = quer_repo_espigas
          DataField = 'NOMB_PROD_ESPIGA'
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
        object titu2: TPCPQrForma
          Left = 121
          Top = 19
          Width = 608
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            41.577380952381
            319.389880952381
            51.0267857142857
            1608.28869047619)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel26: tPCPQrLabel
          Left = 126
          Top = 21
          Width = 596
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            35.9077380952381
            334.508928571429
            54.8065476190476
            1578.0505952381)
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
      end
      object band_unidades: TQRSubDetail
        Left = 38
        Top = 299
        Width = 740
        Height = 14
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
          37.0416666666667
          1957.91666666667)
        Master = _QRPadre
        DataSet = quer_repo_detalle
        HeaderBand = _QRBanda_Maestra
        PrintBefore = False
        PrintIfEmpty = True
        object form_total: TPCPQrForma
          Left = 8
          Top = -1
          Width = 721
          Height = 14
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
          Left = 673
          Top = -1
          Width = 55
          Height = 14
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
          Left = 15
          Top = 0
          Width = 100
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 121
          Top = -1
          Width = 31
          Height = 14
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
          Left = 151
          Top = -1
          Width = 31
          Height = 14
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
          Left = 182
          Top = -1
          Width = 31
          Height = 14
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
          Left = 213
          Top = -1
          Width = 31
          Height = 14
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
          Left = 336
          Top = -1
          Width = 31
          Height = 14
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
          Left = 305
          Top = -1
          Width = 31
          Height = 14
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
          Left = 274
          Top = -1
          Width = 31
          Height = 14
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
          Left = 244
          Top = -1
          Width = 31
          Height = 14
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
          Left = 366
          Top = -1
          Width = 31
          Height = 14
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
          Left = 397
          Top = -1
          Width = 31
          Height = 14
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
          Left = 428
          Top = -1
          Width = 31
          Height = 14
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
          Left = 459
          Top = -1
          Width = 31
          Height = 14
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
          Left = 581
          Top = -1
          Width = 31
          Height = 14
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
          Left = 551
          Top = -1
          Width = 31
          Height = 14
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
          Left = 520
          Top = -1
          Width = 31
          Height = 14
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
          Left = 489
          Top = -1
          Width = 31
          Height = 14
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
          Left = 612
          Top = -1
          Width = 31
          Height = 14
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
          Left = 643
          Top = -1
          Width = 31
          Height = 14
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
          Left = 122
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 154
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 184
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 215
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 246
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 276
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 306
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 336
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 582
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 552
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 521
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 491
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 461
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 430
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 399
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 368
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 675
          Top = 0
          Width = 51
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 644
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
          Left = 613
          Top = 0
          Width = 28
          Height = 12
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
          DataSet = quer_repo_detalle
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
    Height = 515
    inherited DBPropiedades_Informes: TTBXDockablePanel
      DockedWidth = 32
      inherited shap_xp: TShape
        Width = 32
      end
      inherited Panel1: TPanel
        Width = 32
        Height = 493
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
          Tag = 222
          Width = 32
          Height = 222
          inherited DBInformes: TdxDBGrid
            Width = 28
            Height = 199
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
    Top = 524
  end
  inherited DSQInformes: TDataSource
    Top = 524
  end
  inherited PCPQRControl1: TPCPQRControl
    Top = 488
  end
  inherited PMInforme: TTBXPopupMenu
    Top = 488
  end
  object quer_prod_orden: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT * FROM PCP_PROD_ORDENES'
      'WHERE CONS_PROD_ORDEN = :CONS_PROD_ORDEN')
    Left = 1138
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptInput
      end>
  end
  object quer_unidades: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT SUM(CANT_UNIDADES) AS CANT_UNIDADES'
      'FROM VIS_PCP_PROD_ESPI_UNIDADES'
      'WHERE CONS_PROD_ORDEN = :CONS_PROD_ORDEN'
      'AND CONS_REFE_MATERIAL = :CONS_REFE_MATERIAL')
    Left = 1138
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CONS_REFE_MATERIAL'
        ParamType = ptUnknown
      end>
  end
  object quer_referencia: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CODI_REFERENCIA, MOLDE, CODI_INTE_REFERENCIA,'
      '    NOMB_REFERENCIA, NOMB_REFE_MARCA, NOMB_REFE_LINEA,'
      '    NOMB_REFE_EDAD, NOMB_REFE_ESTILO, NOMB_REFE_GRUPO, '
      '   CON_ENTREPIERNAS'
      'FROM VIS_GLO_REFERENCIAS'
      'WHERE CONS_REFERENCIA = :CONS_REFERENCIA')
    Left = 1170
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFERENCIA'
        ParamType = ptInput
      end>
  end
  object quer_material: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CODI_MATE_REFERENCIA, NOMB_MATE_REFERENCIA, CONSUMO'
      'FROM VIS_PCP_REFE_MATERIALES'
      'WHERE CONS_REFE_MATERIAL = :CONS_REFE_MATERIAL')
    Left = 1138
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_REFE_MATERIAL'
        ParamType = ptInput
      end>
  end
  object quer_repo_detalle: TQuery
    DatabaseName = 'PCPLocal'
    DataSource = data_espigas
    SQL.Strings = (
      'Select * from'
      'tmp_prod_orde_traz_detalle'
      'where cons_prod_lote = :cons_prod_lote'
      'and cons_prod_espiga = :cons_prod_espiga'
      'order by cons_registro')
    Left = 1138
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cons_prod_lote'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cons_prod_espiga'
        ParamType = ptUnknown
      end>
  end
  object quer_repo_espigas: TQuery
    DatabaseName = 'PCPLocal'
    SQL.Strings = (
      'Select * from'
      'tmp_prod_orde_traz_espigas'
      'order by cons_prod_lote, cons_prod_espiga')
    Left = 1138
    Top = 194
  end
  object data_espigas: TDataSource
    DataSet = quer_repo_espigas
    Left = 1170
    Top = 194
  end
end

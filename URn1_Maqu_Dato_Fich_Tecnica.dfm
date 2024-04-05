inherited Rn1_Maqu_Dato_Fich_Tecnica: TRn1_Maqu_Dato_Fich_Tecnica
  Left = 0
  Top = 118
  Width = 1019
  Height = 622
  Caption = 'Rn1_Maqu_Dato_Fich_Tecnica'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    Width = 801
    Height = 569
    HorzScrollBar.Position = 22
    inherited _QRPadre: TPCPQuickReport
      Left = -18
      DataSet = QRecursos
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
        Height = 681
        Size.Values = (
          1801.8125
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
          Caption = 'Ficha Técnica Recurso'
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
          Left = 40
          Top = 138
          Width = 77
          Height = 17
          Hint = 'Cód. Grupo'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            105.833333333333
            365.125
            203.729166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cód. Grupo:'
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
          Left = 417
          Top = 138
          Width = 44
          Height = 17
          Hint = 'Grupo'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1103.3125
            365.125
            116.416666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Grupo:'
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
        object DBCodigo_Grupo: TPCPQRDBText
          Left = 123
          Top = 138
          Width = 237
          Height = 17
          Hint = 'Dato Cód. Grupo'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            325.4375
            365.125
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QRecursos
          DataField = 'CODI_RECU_GRUPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object DBGrupo: TPCPQRDBText
          Left = 467
          Top = 138
          Width = 237
          Height = 17
          Hint = 'Dato Grupo'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1235.60416666667
            365.125
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QRecursos
          DataField = 'NOMB_RECU_GRUPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel5: tPCPQrLabel
          Left = 396
          Top = 120
          Width = 65
          Height = 17
          Hint = 'No. Ficha'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1047.75
            317.5
            171.979166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'No. Ficha;'
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
        object tPCPQrLabel6: tPCPQrLabel
          Tag = 1
          Left = 467
          Top = 120
          Width = 237
          Height = 17
          Hint = 'Dato No. Ficha'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1235.60416666667
            317.5
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel7: tPCPQrLabel
          Left = 51
          Top = 156
          Width = 66
          Height = 17
          Hint = 'Cód. Tipo'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            134.9375
            412.75
            174.625)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cód. Tipo:'
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
          Left = 428
          Top = 156
          Width = 33
          Height = 17
          Hint = 'Tipo'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1132.41666666667
            412.75
            87.3125)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo:'
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
        object DBCodigo_Tipo: TPCPQRDBText
          Left = 123
          Top = 156
          Width = 237
          Height = 17
          Hint = 'Dato Cód. Tipo'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            325.4375
            412.75
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QRecursos
          DataField = 'CODI_RECU_TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object DBTipo: TPCPQRDBText
          Left = 467
          Top = 156
          Width = 237
          Height = 17
          Hint = 'Dato Tipo'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1235.60416666667
            412.75
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QRecursos
          DataField = 'NOMB_RECU_TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel11: tPCPQrLabel
          Left = 19
          Top = 174
          Width = 98
          Height = 17
          Hint = 'Características'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            50.2708333333333
            460.375
            259.291666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Características:'
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
        object tPCPQrLabel12: tPCPQrLabel
          Tag = 2
          Left = 123
          Top = 174
          Width = 581
          Height = 17
          Hint = 'Dato Características'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            325.4375
            460.375
            1537.22916666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel13: tPCPQrLabel
          Left = 13
          Top = 192
          Width = 104
          Height = 17
          Hint = 'Cód. Proveedor'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            34.3958333333333
            508
            275.166666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cód. Proveedor:'
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
        object tPCPQrLabel14: tPCPQrLabel
          Left = 390
          Top = 192
          Width = 71
          Height = 17
          Hint = 'Proveedor'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1031.875
            508
            187.854166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Proveedor:'
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
        object tPCPQrLabel15: tPCPQrLabel
          Tag = 3
          Left = 123
          Top = 192
          Width = 237
          Height = 17
          Hint = 'Dato Cód. Proveedor'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            325.4375
            508
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel16: tPCPQrLabel
          Tag = 4
          Left = 467
          Top = 192
          Width = 237
          Height = 17
          Hint = 'Dato Proveedor'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1235.60416666667
            508
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel17: tPCPQrLabel
          Left = 73
          Top = 210
          Width = 44
          Height = 17
          Hint = 'Marca'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            193.145833333333
            555.625
            116.416666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Marca:'
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
        object tPCPQrLabel18: tPCPQrLabel
          Left = 378
          Top = 210
          Width = 83
          Height = 17
          Hint = 'Cód. Interno'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1000.125
            555.625
            219.604166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cód. Interno:'
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
        object DBMarca: TPCPQRDBText
          Left = 123
          Top = 210
          Width = 237
          Height = 17
          Hint = 'Dato Marca'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            325.4375
            555.625
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QRecursos
          DataField = 'NOMB_RECU_MARCA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object DBCodigo_Interno: TPCPQRDBText
          Left = 467
          Top = 210
          Width = 237
          Height = 17
          Hint = 'Dato Cód. Interno'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1235.60416666667
            555.625
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QRecursos
          DataField = 'CODI_INTE_RECURSO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel21: tPCPQrLabel
          Left = 24
          Top = 228
          Width = 93
          Height = 17
          Hint = 'Cód. Maquina'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            63.5
            603.25
            246.0625)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cód. Maquina:'
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
        object tPCPQrLabel22: tPCPQrLabel
          Left = 421
          Top = 228
          Width = 40
          Height = 17
          Hint = 'Clase'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1113.89583333333
            603.25
            105.833333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Clase:'
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
        object DBCodigo: TPCPQRDBText
          Left = 123
          Top = 228
          Width = 237
          Height = 17
          Hint = 'Dato Cód. Maquina'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            325.4375
            603.25
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QRecursos
          DataField = 'CODI_RECURSO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object DBClase: TPCPQRDBText
          Left = 467
          Top = 228
          Width = 237
          Height = 17
          Hint = 'Dato Clase'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1235.60416666667
            603.25
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QRecursos
          DataField = 'CLASE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel25: tPCPQrLabel
          Left = 24
          Top = 246
          Width = 93
          Height = 17
          Hint = 'Número Serie'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            63.5
            650.875
            246.0625)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Número Serie:'
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
          Left = 371
          Top = 246
          Width = 90
          Height = 17
          Hint = 'No. Cabezote'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            981.604166666667
            650.875
            238.125)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'No. Cabezote:'
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
        object DBNumero_Serie: TPCPQRDBText
          Left = 123
          Top = 246
          Width = 237
          Height = 17
          Hint = 'Dato Número Serie'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            325.4375
            650.875
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QRecursos
          DataField = 'NUME_SERIE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel28: tPCPQrLabel
          Tag = 5
          Left = 467
          Top = 246
          Width = 237
          Height = 17
          Hint = 'Dato No. Cabezote'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1235.60416666667
            650.875
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel29: tPCPQrLabel
          Left = 12
          Top = 264
          Width = 105
          Height = 17
          Hint = 'Tipo Transporte'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            31.75
            698.5
            277.8125)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo Transporte:'
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
          Left = 406
          Top = 264
          Width = 55
          Height = 17
          Hint = 'Arrastre'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1074.20833333333
            698.5
            145.520833333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Arrastre:'
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
        object tPCPQrLabel31: tPCPQrLabel
          Tag = 6
          Left = 123
          Top = 264
          Width = 237
          Height = 17
          Hint = 'Dato Tipo Transporte'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            325.4375
            698.5
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel32: tPCPQrLabel
          Tag = 7
          Left = 467
          Top = 264
          Width = 237
          Height = 17
          Hint = 'Dato Arrastre'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1235.60416666667
            698.5
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel33: tPCPQrLabel
          Left = 65
          Top = 282
          Width = 52
          Height = 17
          Hint = 'Dientes'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            171.979166666667
            746.125
            137.583333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Dientes:'
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
        object tPCPQrLabel34: tPCPQrLabel
          Left = 435
          Top = 282
          Width = 26
          Height = 17
          Hint = 'Pié'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1150.9375
            746.125
            68.7916666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Pié:'
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
        object tPCPQrLabel35: tPCPQrLabel
          Tag = 8
          Left = 123
          Top = 282
          Width = 237
          Height = 17
          Hint = 'Dato Dientes'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            325.4375
            746.125
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel36: tPCPQrLabel
          Tag = 9
          Left = 467
          Top = 282
          Width = 237
          Height = 17
          Hint = 'Dato Pié'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1235.60416666667
            746.125
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel37: tPCPQrLabel
          Left = 76
          Top = 300
          Width = 41
          Height = 17
          Hint = 'Motor'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            201.083333333333
            793.75
            108.479166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Motor:'
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
        object tPCPQrLabel38: tPCPQrLabel
          Left = 395
          Top = 300
          Width = 66
          Height = 17
          Hint = 'No. Motor'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1045.10416666667
            793.75
            174.625)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'No. Motor:'
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
        object tPCPQrLabel39: tPCPQrLabel
          Tag = 10
          Left = 123
          Top = 300
          Width = 237
          Height = 17
          Hint = 'Dato Motor'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            325.4375
            793.75
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel40: tPCPQrLabel
          Tag = 11
          Left = 467
          Top = 300
          Width = 237
          Height = 17
          Hint = 'Dato No. Motor'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1235.60416666667
            793.75
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel41: tPCPQrLabel
          Left = 71
          Top = 318
          Width = 46
          Height = 17
          Hint = 'R.P.M.'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            187.854166666667
            841.375
            121.708333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'R.P.M.:'
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
        object tPCPQrLabel42: tPCPQrLabel
          Left = 394
          Top = 318
          Width = 67
          Height = 17
          Hint = 'Tipo Fase'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1042.45833333333
            841.375
            177.270833333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo Fase:'
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
        object DBRPM: TPCPQRDBText
          Left = 123
          Top = 318
          Width = 237
          Height = 17
          Hint = 'Dato R.P.M.'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            325.4375
            841.375
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QRecursos
          DataField = 'RPM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel44: tPCPQrLabel
          Tag = 12
          Left = 467
          Top = 318
          Width = 237
          Height = 17
          Hint = 'Dato Tipo Fase'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1235.60416666667
            841.375
            627.0625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel45: tPCPQrLabel
          Left = 17
          Top = 336
          Width = 100
          Height = 17
          Hint = 'Modificaciones'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            44.9791666666667
            889
            264.583333333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Modificaciones:'
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
        object tPCPQrLabel46: tPCPQrLabel
          Tag = 13
          Left = 123
          Top = 336
          Width = 581
          Height = 55
          Hint = 'Dato Modificaciones'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            145.520833333333
            325.4375
            889
            1537.22916666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQrForma1: TPCPQrForma
          Left = 16
          Top = 394
          Width = 325
          Height = 281
          Hint = 'Recuadro Recurso'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            743.479166666667
            42.3333333333333
            1042.45833333333
            859.895833333333)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel47: tPCPQrLabel
          Left = 24
          Top = 396
          Width = 52
          Height = 17
          Hint = 'Recurso'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            63.5
            1047.75
            137.583333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Recurso'
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
        object PCPQrForma2: TPCPQrForma
          Left = 359
          Top = 394
          Width = 345
          Height = 190
          Hint = 'Recuadro Detalle Recurso'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            502.708333333333
            949.854166666667
            1042.45833333333
            912.8125)
          Pen.Color = clSilver
          Shape = qrsRectangle
          Seleccionado = False
        end
        object tPCPQrLabel48: tPCPQrLabel
          Left = 367
          Top = 396
          Width = 101
          Height = 17
          Hint = 'Detalle Recurso'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            971.020833333333
            1047.75
            267.229166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Detalle Recurso'
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
        object tPCPQrLabel49: tPCPQrLabel
          Left = 570
          Top = 528
          Width = 42
          Height = 17
          Hint = 'Largo'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1508.125
            1397
            111.125)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Largo:'
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
        object tPCPQrLabel50: tPCPQrLabel
          Tag = 14
          Left = 618
          Top = 528
          Width = 78
          Height = 17
          Hint = 'Dato Largo'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1635.125
            1397
            206.375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel51: tPCPQrLabel
          Left = 567
          Top = 546
          Width = 45
          Height = 17
          Hint = 'Ancho'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1500.1875
            1444.625
            119.0625)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Ancho:'
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
        object tPCPQrLabel52: tPCPQrLabel
          Tag = 15
          Left = 618
          Top = 546
          Width = 78
          Height = 17
          Hint = 'Dato Ancho'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1635.125
            1444.625
            206.375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel53: tPCPQrLabel
          Left = 509
          Top = 564
          Width = 103
          Height = 17
          Hint = 'Altura Bancada'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1346.72916666667
            1492.25
            272.520833333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Altura Bancada:'
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
        object tPCPQrLabel54: tPCPQrLabel
          Tag = 16
          Left = 618
          Top = 564
          Width = 78
          Height = 17
          Hint = 'Dato Altura Bancada'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1635.125
            1492.25
            206.375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel55: tPCPQrLabel
          Left = 397
          Top = 587
          Width = 48
          Height = 17
          Hint = 'Agujas'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1050.39583333333
            1553.10416666667
            127)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Agujas:'
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
        object tPCPQrLabel56: tPCPQrLabel
          Tag = 17
          Left = 451
          Top = 587
          Width = 246
          Height = 17
          Hint = 'Dato Agujas'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1193.27083333333
            1553.10416666667
            650.875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel59: tPCPQrLabel
          Tag = 18
          Left = 451
          Top = 605
          Width = 78
          Height = 17
          Hint = 'Dato Marca Ppal'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1193.27083333333
            1600.72916666667
            206.375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel60: tPCPQrLabel
          Left = 368
          Top = 605
          Width = 77
          Height = 17
          Hint = 'Marca Ppal'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            973.666666666667
            1600.72916666667
            203.729166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Marca Ppal:'
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
        object tPCPQrLabel61: tPCPQrLabel
          Left = 557
          Top = 605
          Width = 56
          Height = 17
          Hint = 'Sistema'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1473.72916666667
            1600.72916666667
            148.166666666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Sistema:'
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
        object tPCPQrLabel62: tPCPQrLabel
          Tag = 19
          Left = 619
          Top = 605
          Width = 78
          Height = 17
          Hint = 'Dato Sistema'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1637.77083333333
            1600.72916666667
            206.375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel63: tPCPQrLabel
          Left = 352
          Top = 623
          Width = 93
          Height = 17
          Hint = 'Equivalencias'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            931.333333333333
            1648.35416666667
            246.0625)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Equivalencias:'
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
        object tPCPQrLabel64: tPCPQrLabel
          Tag = 20
          Left = 451
          Top = 623
          Width = 246
          Height = 17
          Hint = 'Dato Equivalencias'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1193.27083333333
            1648.35416666667
            650.875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel65: tPCPQrLabel
          Left = 388
          Top = 659
          Width = 57
          Height = 17
          Hint = 'Material'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1026.58333333333
            1743.60416666667
            150.8125)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Material:'
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
        object tPCPQrLabel66: tPCPQrLabel
          Tag = 23
          Left = 451
          Top = 659
          Width = 246
          Height = 17
          Hint = 'Dato Material'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1193.27083333333
            1743.60416666667
            650.875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel67: tPCPQrLabel
          Tag = 21
          Left = 451
          Top = 641
          Width = 78
          Height = 17
          Hint = 'Dato Hilo Aguja'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1193.27083333333
            1695.97916666667
            206.375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object tPCPQrLabel68: tPCPQrLabel
          Left = 374
          Top = 641
          Width = 71
          Height = 17
          Hint = 'Hilo Aguja'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            989.541666666667
            1695.97916666667
            187.854166666667)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Hilo Aguja:'
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
        object tPCPQrLabel69: tPCPQrLabel
          Left = 534
          Top = 641
          Width = 79
          Height = 17
          Hint = 'Hilo Bobina'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1412.875
            1695.97916666667
            209.020833333333)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Hilo Bobina:'
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
        object tPCPQrLabel70: tPCPQrLabel
          Tag = 22
          Left = 619
          Top = 641
          Width = 78
          Height = 17
          Hint = 'Dato Hilo Bobina'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            1637.77083333333
            1695.97916666667
            206.375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          OnPrint = tPCPQrLabel6Print
          ParentFont = False
          Transparent = True
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 10
        end
        object PCPQRDBImage1: TPCPQRDBImage
          Left = 24
          Top = 414
          Width = 309
          Height = 251
          Hint = 'Dato Recurso'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            664.104166666667
            63.5
            1095.375
            817.5625)
          DataField = 'IMAGEN'
          DataSet = QRecursos
        end
        object PCPQRDBImage2: TPCPQRDBImage
          Left = 367
          Top = 414
          Width = 329
          Height = 109
          Hint = 'Dato Detalle Recurso'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            288.395833333333
            971.020833333333
            1095.375
            870.479166666667)
          DataField = 'DETA_IMAGEN'
          DataSet = QRecursos
        end
      end
      inherited _QRBanda_Eslogan: TPCPQRBand
        Top = 814
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
        Top = 737
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
        Top = 719
        Size.Values = (
          47.625
          1957.91666666667)
        object PCPQRDBText1: TPCPQRDBText
          Left = 16
          Top = 5
          Width = 38
          Height = 17
          Hint = ' : 0,0'
          Enabled = False
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            45.3571428571429
            41.577380952381
            13.2291666666667
            100.16369047619)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QRecursos
          DataField = 'CLASE'
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
    Width = 1011
  end
  inherited TBXDock1: TTBXDock
    Height = 569
    inherited DBPropiedades_Informes: TTBXDockablePanel
      inherited Panel1: TPanel
        Height = 547
        inherited FPropiedades: TPCPFrame
          inherited dxPageControl1: TSCLPageControl
            FixedDimension = 19
          end
        end
        inherited FEstructura_Informes: TPCPFrame
          Tag = 276
          Height = 276
          inherited DBInformes: TdxDBGrid
            Height = 253
            Filter.Criteria = {00000000}
          end
        end
      end
    end
  end
  object QRecursos: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT R.CODI_RECURSO, R.CODI_INTE_RECURSO,'
      ' G.CODI_RECU_GRUPO, G.NOMB_RECU_GRUPO, '
      ' T.CODI_RECU_TIPO, T.NOMB_RECU_TIPO,'
      ' M.NOMB_RECU_MARCA, R.NUME_SERIE, R.CLASE,'
      ' R.RPM, R.IMAGEN, R.DETA_IMAGEN'
      'FROM GLO_RECURSOS R, GLO_RECU_GRUPOS G, GLO_RECU_TIPOS T,'
      ' GLO_RECU_MARCAS M'
      'WHERE R.CONS_RECU_GRUPO = G.CONS_RECU_GRUPO'
      ' AND R.CONS_RECU_TIPO = T.CONS_RECU_TIPO'
      ' AND R.CONS_RECU_MARCA = M.CONS_RECU_MARCA'
      ' AND R.CONS_RECURSO = :CONS_RECURSO')
    Left = 274
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_RECURSO'
        ParamType = ptInput
      end>
  end
end

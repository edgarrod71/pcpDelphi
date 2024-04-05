object FInformes: TFInformes
  Tag = -5
  Left = -34
  Top = 15
  Width = 812
  Height = 612
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  WindowState = wsMinimized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Tag = -5
    Left = 210
    Top = 26
    Width = 594
    Height = 559
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object _QRPadre: TPCPQuickReport
      Left = 4
      Top = -12
      Width = 816
      Height = 1056
      Hint = 'Informe Maestro'
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      BeforePrint = _QRPadreBeforePrint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE'
        'QRSTRINGSBAND1')
      Functions.DATA = (
        '0'
        '0'
        #39#39
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = Letter
      Page.Values = (
        100
        2794
        100
        2159
        100
        100
        0)
      PrinterSettings.Copies = 1
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.OutputBin = Auto
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      object _QRBanda_Page_Header: TPCPQRBand
        Left = 38
        Top = 38
        Width = 740
        Height = 107
        Hint = 'Encabezado de Página'
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
          283.104166666667
          1957.91666666667)
        BandType = rbPageHeader
        object _QRFecha: TQRSysData
          Left = 631
          Top = 49
          Width = 109
          Height = 17
          Hint = 'Fecha de Impresión del Informe'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1669.52083333333
            129.645833333333
            288.395833333333)
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          Color = clWhite
          Data = qrsDate
          Text = 'Fecha Informe: '
          Transparent = False
          FontSize = 8
        end
        object _QREmpresa: tPCPQrLabel
          Left = 133
          Top = 27
          Width = 603
          Height = 24
          Hint = 'Nombre de la Empresa'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.5
            351.895833333333
            71.4375
            1595.4375)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Nombre de la Empresa'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          PopUpMenu = PMComponentes
          Seleccionado = False
          FontSize = 14
        end
        object _QRLogo: TPCPQrImage
          Left = 8
          Top = 3
          Width = 120
          Height = 80
          Hint = 'Logotipo de la Empresa'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            211.666666666667
            21.1666666666667
            7.9375
            317.5)
          Stretch = True
          PopUpMenu = PMComponentes
        end
        object _QRInforme: tPCPQrLabel
          Left = 137
          Top = 4
          Width = 603
          Height = 20
          Hint = 'Descripción del Informe'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.9166666666667
            362.479166666667
            10.5833333333333
            1595.4375)
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = False
          AutoStretch = False
          Caption = 'Descripción del Informe'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          PopUpMenu = PMComponentes
          Seleccionado = False
          FontSize = 12
        end
        object _QRPagina: TQRSysData
          Left = 660
          Top = 67
          Width = 80
          Height = 17
          Hint = 'Número de Página del Informe'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            1746.25
            177.270833333333
            211.666666666667)
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          Color = clWhite
          Data = qrsPageNumber
          Text = 'Página: '
          Transparent = False
          FontSize = 8
        end
        object _QRPrioridad: tPCPQrLabel
          Left = 210
          Top = 59
          Width = 257
          Height = 24
          Hint = 'Descripción de la Prioridad'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.5
            555.625
            156.104166666667
            679.979166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Descripción de la Prioridad'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          PopUpMenu = PMComponentes
          Seleccionado = False
          FontSize = 14
        end
        object _QRLPrioridad: tPCPQrLabel
          Left = 138
          Top = 64
          Width = 64
          Height = 17
          Hint = 'Título de la Prioridad'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            365.125
            169.333333333333
            169.333333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Prioridad:'
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
        object _QRFiltro: tPCPQrLabel
          Left = 10
          Top = 88
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
            232.833333333333
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
        object _QRLine_Titulo: TPCPQrForma
          Tag = -5
          Left = -1
          Top = 105
          Width = 740
          Height = 1
          Hint = 'Líne Separadora Pie de Página'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            1.88988095238095
            -3.7797619047619
            277.8125
            1957.91666666667)
          Shape = qrsHorLine
          Seleccionado = False
        end
      end
      object _QRBanda_Eslogan: TPCPQRBand
        Left = 38
        Top = 240
        Width = 740
        Height = 35
        Hint = 'Pie de Página'
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = True
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          92.6041666666667
          1957.91666666667)
        BandType = rbPageFooter
        object _QREslogan: TQRMemo
          Left = 0
          Top = 0
          Width = 561
          Height = 33
          Hint = 'Descripción del Eslogan de la Empresa'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            87.3125
            0
            0
            1484.3125)
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            'Descripción del Eslogan de la Empresa')
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object _QRSistema: tPCPQrLabel
          Left = 571
          Top = 5
          Width = 169
          Height = 32
          Hint = 'Descripción del Sistema'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            84.6666666666667
            1510.77083333333
            13.2291666666667
            447.145833333333)
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = False
          AutoStretch = False
          Caption = 'Planeación y Control de la Producción P.C.P.'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          Seleccionado = False
          FontSize = 10
        end
        object _QRLine_Eslogan: TPCPQrForma
          Left = 5
          Top = 5
          Width = 740
          Height = 1
          Hint = 'Líne Separadora Pie de Página'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            2.64583333333333
            13.2291666666667
            13.2291666666667
            1957.91666666667)
          Shape = qrsHorLine
          Seleccionado = False
        end
      end
      object _QRBanda_Firmas: TPCPQRBand
        Left = 38
        Top = 163
        Width = 740
        Height = 77
        Hint = 'Banda Firmas'
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
          203.729166666667
          1957.91666666667)
        BandType = rbSummary
        object _QRS1: TPCPQrForma
          Left = 9
          Top = 9
          Width = 121
          Hint = 'Recuadro de la Primera Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            171.979166666667
            23.8125
            23.8125
            320.145833333333)
          Shape = qrsRectangle
          PopUpMenu = PMComponentes
          Seleccionado = False
        end
        object _QRS2: TPCPQrForma
          Left = 129
          Top = 9
          Width = 121
          Hint = 'Recuadro de la Segunda Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            171.979166666667
            341.3125
            23.8125
            320.145833333333)
          Shape = qrsRectangle
          PopUpMenu = PMComponentes
          Seleccionado = False
        end
        object _QRS3: TPCPQrForma
          Left = 249
          Top = 9
          Width = 121
          Hint = 'Recuadro de la Tercera Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            171.979166666667
            658.8125
            23.8125
            320.145833333333)
          Shape = qrsRectangle
          PopUpMenu = PMComponentes
          Seleccionado = False
        end
        object _QRS4: TPCPQrForma
          Left = 369
          Top = 9
          Width = 121
          Hint = 'Recuadro de la Cuarta Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            171.979166666667
            976.3125
            23.8125
            320.145833333333)
          Shape = qrsRectangle
          PopUpMenu = PMComponentes
          Seleccionado = False
        end
        object _QRS5: TPCPQrForma
          Left = 489
          Top = 9
          Width = 121
          Hint = 'Recuadro de la Quinta Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            171.979166666667
            1293.8125
            23.8125
            320.145833333333)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object _QRS6: TPCPQrForma
          Left = 609
          Top = 9
          Width = 121
          Hint = 'Recuadro de la Sexta Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            171.979166666667
            1611.3125
            23.8125
            320.145833333333)
          Shape = qrsRectangle
          Seleccionado = False
        end
        object _QRFirma1: tPCPQrLabel
          Left = 14
          Top = 13
          Width = 111
          Height = 16
          Hint = 'Descripción de la Primera Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            37.0416666666667
            34.3958333333333
            293.6875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Firma 1'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          PopUpMenu = PMComponentes
          Seleccionado = False
          FontSize = 9
        end
        object _QRFirma2: tPCPQrLabel
          Left = 134
          Top = 13
          Width = 111
          Height = 16
          Hint = 'Descripción de la Segunda Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            354.541666666667
            34.3958333333333
            293.6875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Firma 2'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          PopUpMenu = PMComponentes
          Seleccionado = False
          FontSize = 9
        end
        object _QRFirma3: tPCPQrLabel
          Left = 254
          Top = 13
          Width = 111
          Height = 16
          Hint = 'Descripción de la Tercera Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            672.041666666667
            34.3958333333333
            293.6875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Firma 3'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          PopUpMenu = PMComponentes
          Seleccionado = False
          FontSize = 9
        end
        object _QRFirma4: tPCPQrLabel
          Left = 374
          Top = 13
          Width = 111
          Height = 16
          Hint = 'Descripción de la Cuarta Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            989.541666666667
            34.3958333333333
            293.6875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Firma 4'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          PopUpMenu = PMComponentes
          Seleccionado = False
          FontSize = 9
        end
        object _QRFirma5: tPCPQrLabel
          Left = 494
          Top = 13
          Width = 111
          Height = 16
          Hint = 'Descripción de la Quinta Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            1307.04166666667
            34.3958333333333
            293.6875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Firma 5'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 9
        end
        object _QRFirma6: tPCPQrLabel
          Left = 614
          Top = 13
          Width = 111
          Height = 16
          Hint = 'Descripción de la Sexta Firma'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.3333333333333
            1624.54166666667
            34.3958333333333
            293.6875)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Firma 6'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          PCPQRControl = PCPQRControl1
          Seleccionado = False
          FontSize = 9
        end
      end
      object _QRBanda_Maestra: TPCPQRBand
        Left = 38
        Top = 145
        Width = 740
        Height = 18
        Hint = 'Banda Detalle'
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
        BandType = rbDetail
      end
    end
  end
  object padr_barr_dock: TTBXDock
    Left = 0
    Top = 0
    Width = 804
    Height = 26
    Color = clWhite
    object padr_barr_titulo: TTBXToolbar
      Tag = -5
      Left = 0
      Top = 0
      BorderStyle = bsNone
      Caption = 'padr_barr_titulo'
      FullSize = True
      Images = _fMDI.imagenesPCP
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Color = clWhite
      object BInforme: TTBXItem
        Tag = -5
        Action = Acti_informe
        Images = _fMDI.imagenesPCP
        InheritOptions = False
        Options = [tboDefault]
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
        Tag = -5
      end
      object BPropiedades: TTBXItem
        Tag = -5
        Action = Acti_propiedades
        Images = _fMDI.imagenesPCP
        InheritOptions = False
        Options = [tboDefault]
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
        Tag = -5
      end
      object BLeer: TTBXItem
        Tag = -5
        Action = Acti_leer_estructura
        Images = _fMDI.imagenesPCP
        InheritOptions = False
        Options = [tboDefault]
      end
      object BGuardar: TTBXItem
        Tag = -5
        Caption = 'Guardar Estructura'
        Hint = 'Guardar estructura'
        ImageIndex = 5
        Images = _fMDI.imagenesPCP
        InheritOptions = False
        Options = [tboDefault]
        OnClick = BGuardarClick
      end
      object BGuardar_Como: TTBXItem
        Tag = -5
        Caption = 'Acti_Guar_Como_Estructura'
        Hint = 'Guardar estructura como..'
        ImageIndex = 6
        Images = _fMDI.imagenesPCP
        OnClick = BGuardar_ComoClick
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
        Tag = -5
      end
      object BSalir: TTBXItem
        Tag = -5
        Action = Acti_salir
        Images = _fMDI.imagenesPCP
        InheritOptions = False
        Options = [tboDefault]
      end
    end
  end
  object TBXDock1: TTBXDock
    Left = 0
    Top = 26
    Width = 210
    Height = 559
    Position = dpLeft
    object DBPropiedades_Informes: TTBXDockablePanel
      Tag = -5
      Left = 0
      Top = 0
      Color = clBtnFace
      DockedWidth = 206
      ShowCaption = False
      ShowCaptionWhenDocked = False
      SupportedDocks = [dkStandardDock, dkMultiDock]
      TabOrder = 0
      Visible = False
      object shap_xp: TShape
        Left = 0
        Top = 17
        Width = 206
        Height = 1
        Align = alTop
        Brush.Style = bsClear
        Pen.Color = 278641
      end
      object Panel1: TPanel
        Tag = -5
        Left = 0
        Top = 18
        Width = 206
        Height = 537
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object dfsSplitter1: TdfsSplitter
          Tag = -5
          Left = 0
          Top = 261
          Width = 206
          Height = 10
          Cursor = crVSplit
          Align = alTop
          MinSize = 17
          Maximized = False
          Minimized = False
          ButtonCursor = crDefault
          ButtonWidth = 50
        end
        object FPropiedades: TPCPFrame
          Tag = 261
          Left = 0
          Top = 0
          Width = 206
          Height = 261
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 2
          Color = clWhite
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Caption = 'Opciones componentes'
          Titulo_Color = 16244694
          object Panel2: TPanel
            Tag = -5
            Left = 2
            Top = 21
            Width = 202
            Height = 44
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            object Label1: TLabel
              Tag = -5
              Left = 7
              Top = 4
              Width = 66
              Height = 13
              Caption = 'Componentes'
            end
            object CBComponentes: TsohoComboBox
              Tag = -5
              Left = 8
              Top = 19
              Width = 190
              Height = 21
              Style = csDropDownList
              Color = clInfoBk
              ItemHeight = 13
              ParentShowHint = False
              ShowHint = True
              Sorted = True
              TabOrder = 0
              OnChange = CBComponentesChange
            end
          end
          object dxPageControl1: TSCLPageControl
            Tag = -5
            Left = 2
            Top = 65
            Width = 202
            Height = 194
            ActivePage = dxTabSheet1
            Align = alClient
            BoldCurrentTab = True
            Color = 16578290
            FlatColor = 10435335
            Margin = 5
            ParentColor = False
            TabColors.Shadow = 15582631
            TabColors.Unselected = 16578290
            TabIndex = 0
            TabOrder = 2
            Transparent = True
            FixedDimension = 19
            object dxTabSheet1: TSCLTabSheet
              Color = 16578290
              Caption = 'Propiedades'
              object Propiedades_Componente: TZPropList
                Tag = -5
                Left = 0
                Top = 0
                Width = 198
                Height = 171
                Hint = 'Propiedades del componente'
                Align = alClient
                TabOrder = 0
              end
            end
          end
        end
        object FEstructura_Informes: TPCPFrame
          Tag = 266
          Left = 0
          Top = 271
          Width = 206
          Height = 266
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 2
          Constraints.MinHeight = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Caption = 'Estructura de Informes'
          Titulo_Color = 16244694
          object DBInformes: TdxDBGrid
            Tag = -5
            Left = 2
            Top = 21
            Width = 202
            Height = 243
            Hint = 'Doble click para asignar la estructura del informe'
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CONS_USUA_INFORME'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            ParentShowHint = False
            PopupMenu = PMInforme
            ShowHint = True
            TabOrder = 1
            OnDblClick = DBInformesDblClick
            DataSource = DSQInformes
            Filter.Criteria = {00000000}
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            object DBInformesCONS_USUA_INFORME: TdxDBGridMaskColumn
              Visible = False
              Width = 35
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONS_USUA_INFORME'
            end
            object DBInformesNOMB_USUA_INFORME: TdxDBGridMaskColumn
              Width = 143
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOMB_USUA_INFORME'
            end
            object DBInformesUSUARIO: TdxDBGridMaskColumn
              Width = 73
              BandIndex = 0
              RowIndex = 0
              FieldName = 'USUARIO'
            end
            object DBInformesFECH_SISTEMA: TdxDBGridDateColumn
              Width = 112
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FECH_SISTEMA'
            end
            object DBInformesUSUA_SISTEMA: TdxDBGridMaskColumn
              Width = 124
              BandIndex = 0
              RowIndex = 0
              FieldName = 'USUA_SISTEMA'
            end
          end
        end
      end
      object JvGradientHeaderPanel3: TJvGradientHeaderPanel
        Left = 0
        Top = 0
        Width = 206
        Height = 17
        GradientStartColor = 8182519
        GradientEndColor = 754408
        GradientStyle = grVertical
        LabelTop = 2
        LabelCaption = 'Propiedades e informes'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clBlack
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        LabelAlignment = taLeftJustify
        Align = alTop
        DoubleBuffered = False
        TabOrder = 1
      end
    end
  end
  object QRTextFilter1: TQRTextFilter
    Tag = -5
    Left = 120
    Top = 408
  end
  object QRCSVFilter1: TQRCSVFilter
    Tag = -5
    Separator = ','
    Left = 120
    Top = 440
  end
  object editar: TdxfDesigner
    Tag = -5
    StepToGrid = 1
    Active = False
    Left = 42
    Top = 46
  end
  object TOpciones: TTable
    Tag = -5
    DatabaseName = 'data_base_pcp'
    TableName = 'GLO_OPCIONES'
    Left = 14
    Top = 45
  end
  object TInformes: TTable
    Tag = -5
    AfterInsert = TInformesBeforePost
    BeforePost = TInformesBeforePost
    DatabaseName = 'data_base_pcp'
    TableName = 'SIS_USUA_INFORMES'
    Left = 14
    Top = 77
    object TInformesCONS_USUA_INFORME: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONS_USUA_INFORME'
      Required = True
    end
    object TInformesCONS_USUA_MODULO: TIntegerField
      FieldName = 'CONS_USUA_MODULO'
      Required = True
    end
    object TInformesNOMB_USUA_INFORME: TStringField
      FieldName = 'NOMB_USUA_INFORME'
      Required = True
      Size = 100
    end
    object TInformesCONTROLES: TMemoField
      FieldName = 'CONTROLES'
      Required = True
      BlobType = ftMemo
      Size = 1
    end
    object TInformesFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
    end
    object TInformesUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
    end
  end
  object QExiste_Informe: TQuery
    Tag = -5
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_USUA_INFORME, NOMB_USUA_INFORME'
      'FROM SIS_USUA_INFORMES'
      'WHERE CONS_USUA_MODULO = :CONS_USUA_MODULO'
      ' AND UPPER(NOMB_USUA_INFORME) = UPPER(:NOMB_USUA_INFORME)'
      'ORDER BY CONS_USUA_INFORME')
    Left = 14
    Top = 109
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_USUA_MODULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMB_USUA_INFORME'
        ParamType = ptUnknown
      end>
  end
  object QEliminar_Informe: TQuery
    Tag = -5
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'DELETE FROM SIS_USUA_INFORMES'
      'WHERE CONS_USUA_INFORME = :CONS_USUA_INFORME')
    Left = 14
    Top = 141
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONS_USUA_INFORME'
        ParamType = ptUnknown
      end>
  end
  object padr_info_acciones: TActionList
    Tag = -5
    Images = _fMDI.imag_pequenas
    Left = 86
    Top = 45
    object Acti_informe: TAction
      Tag = -5
      Caption = 'Ver el Informe'
      Hint = 'Ver el informe'
      ImageIndex = 10
      OnExecute = Acti_informeExecute
    end
    object Acti_propiedades: TAction
      Tag = -5
      Caption = 'Ver Propiedades'
      Hint = 'Ver propiedades'
      ImageIndex = 20
      OnExecute = Acti_propiedadesExecute
    end
    object Acti_guar_estructura: TAction
      Tag = -5
      Caption = 'Guardar Estructura'
      Hint = 'Guardar estructura'
      ImageIndex = 5
      OnExecute = Acti_guar_estructuraExecute
    end
    object Acti_leer_estructura: TAction
      Tag = -5
      Caption = 'Leer Estructura'
      Hint = 'Leer estructura'
      ImageIndex = 24
      OnExecute = Acti_leer_estructuraExecute
    end
    object Acti_salir: TAction
      Tag = -5
      Caption = 'Salir'
      Hint = 'Salir'
      ImageIndex = 15
      OnExecute = Acti_salirExecute
    end
    object Acti_Guar_Como_Estructura: TAction
      Tag = -5
      Caption = 'Acti_Guar_Como_Estructura'
      Hint = 'Guardar estructura como..'
      ImageIndex = 6
      OnExecute = Acti_guar_estructuraExecute
    end
    object Acti_Elim_Informe: TAction
      Tag = -5
      Caption = 'Eliminar Informe'
      ImageIndex = 2
      OnExecute = Acti_Elim_InformeExecute
    end
  end
  object QInformes: TQuery
    Tag = -5
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT U.USUARIO, I.CONS_USUA_INFORME, '
      ' I.NOMB_USUA_INFORME, I.FECH_SISTEMA, '
      ' I.USUA_SISTEMA'
      'FROM SIS_USUA_MODULOS U, SIS_USUA_INFORMES I '
      'WHERE U.CONS_USUA_MODULO = I.CONS_USUA_MODULO'
      ' AND UPPER(U.MODULO) = :MODULO'
      'ORDER BY I.NOMB_USUA_INFORME')
    Left = 50
    Top = 404
    ParamData = <
      item
        DataType = ftString
        Name = 'MODULO'
        ParamType = ptInput
      end>
    object QInformesUSUARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUARIO'
      Origin = 'DATA_BASE_PCP.SIS_USUA_MODULOS.USUARIO'
    end
    object QInformesCONS_USUA_INFORME: TIntegerField
      DisplayLabel = 'Cons. Informe'
      FieldName = 'CONS_USUA_INFORME'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.CONS_USUA_INFORME'
    end
    object QInformesNOMB_USUA_INFORME: TStringField
      DisplayLabel = 'Informe'
      FieldName = 'NOMB_USUA_INFORME'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.NOMB_USUA_INFORME'
      Size = 100
    end
    object QInformesFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.FECH_SISTEMA'
    end
    object QInformesUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_USUA_INFORMES.USUA_SISTEMA'
    end
  end
  object DSQInformes: TDataSource
    Tag = -5
    AutoEdit = False
    DataSet = QInformes
    Left = 82
    Top = 404
  end
  object PCPQRControl1: TPCPQRControl
    Tag = -5
    ColorSeleccion = 4227327
    Left = 80
    Top = 368
  end
  object PMComponentes: TTBXPopupMenu
    Tag = -5
    Left = 120
    Top = 368
    object TBXItem1: TTBXItem
      Caption = 'Propiedades'
      OnClick = TBXItem1Click
    end
  end
  object PMInforme: TTBXPopupMenu
    Tag = -5
    Left = 48
    Top = 368
    object TBXItem2: TTBXItem
      Action = Acti_Elim_Informe
      Images = _fMDI.imag_pequenas
    end
  end
end

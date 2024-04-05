inherited RN1_Maqu_Cons_Plantas: TRN1_Maqu_Cons_Plantas
  Left = 6
  Top = 142
  Width = 1015
  Caption = 'Informe Recursos por Plantas y Secciones'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox1: TScrollBox
    Width = 797
    HorzScrollBar.Position = 16
    inherited _QRPadre: TPCPQuickReport
      Left = -12
      DataSet = QPlantas
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
        Height = 131
        Size.Values = (
          346.604166666667
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
          Caption = 'Recursos por Plantas y Secciones'
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
          Left = 1
          Width = 5
          Size.Values = (
            44.9791666666667
            2.64583333333333
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
        object LFamilias: tPCPQrLabel
          Left = 6
          Top = 107
          Width = 136
          Height = 17
          Hint = 'Familias de Recursos'
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            15.875
            283.104166666667
            359.833333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Familias de Recursos'
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
        Top = 282
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
        Top = 205
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
        Top = 169
        Height = 17
        Frame.Color = clSilver
        Frame.DrawBottom = True
        Frame.Style = psDot
        BeforePrint = _QRBanda_MaestraBeforePrint
        Size.Values = (
          44.9791666666667
          1957.91666666667)
        object LPLanta: TQRAngledLabel
          Left = 4
          Top = 2
          Width = 15
          Height = 46
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            121.708333333333
            10.5833333333333
            5.29166666666667
            39.6875)
          AnchorStyle = asNone
          Angle = 90
          Caption = 'Plantas'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          OnPrint = LPLantaPrint
          ParentFont = False
          Transparent = True
          TrueTypeAlert = ttaAbort
        end
        object MSecciones: TQRMemo
          Left = 24
          Top = 1
          Width = 144
          Height = 15
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            39.6875
            63.5
            2.64583333333333
            381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
      end
      object BTotales: TQRChildBand
        Left = 38
        Top = 186
        Width = 740
        Height = 19
        Hint = 'Banda Totales'
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        BeforePrint = BTotalesBeforePrint
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          50.2708333333333
          1957.91666666667)
        ParentBand = _QRBanda_Maestra
        object LTotales: tPCPQrLabel
          Left = 24
          Top = 1
          Width = 144
          Height = 17
          Hint = 'Totales'
          Frame.Color = clSilver
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          Size.Values = (
            44.9791666666667
            63.5
            2.64583333333333
            381)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = '  Totales'
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
            inherited dxTabSheet1: TSCLTabSheet
              inherited Propiedades_Componente: TZPropList
                Middle = 69
              end
            end
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
  object QPlantas: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT CONS_PLANTA, CODI_PLANTA, NOMB_PLANTA'
      'FROM GLO_PLANTAS'
      'ORDER BY NOMB_PLANTA')
    Left = 272
    Top = 48
  end
  object DSQPlantas: TDataSource
    AutoEdit = False
    DataSet = QPlantas
    Left = 304
    Top = 48
  end
  object QSecciones: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = DSQPlantas
    SQL.Strings = (
      'SELECT CONS_SECCION, CODI_SECCION, NOMB_SECCION'
      'FROM GLO_SECCIONES'
      'WHERE CONS_SECCION IN('
      ' SELECT SL.CONS_SECCION'
      ' FROM GLO_LINE_SECCIONES SL, GLO_PLAN_LINEAS PL'
      ' WHERE SL.CONS_PLAN_LINEA = PL.CONS_PLAN_LINEA'
      '  AND PL.CONS_PLANTA = :CONS_PLANTA)'
      'ORDER BY NOMB_SECCION')
    Left = 272
    Top = 78
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PLANTA'
        ParamType = ptUnknown
      end>
  end
  object QCantidad: TQuery
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_GLO_RECU_INFO_PLANTAS')
    Left = 344
    Top = 48
  end
end

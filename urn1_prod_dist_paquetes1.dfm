inherited rn1_prod_dist_paquetes1: Trn1_prod_dist_paquetes1
  Left = 126
  Top = 49
  Width = 868
  Height = 592
  PixelsPerInch = 96
  TextHeight = 13
  inherited Reporte: TRLReport
    Left = 32
    Top = 32
    Margins.LeftMargin = 15
    BeforePrint = ReporteBeforePrint
    inherited padr_band_titulo: TRLBand
      inherited padr_pane_info_header: TRLPanel
        inherited RLLabel2: TRLLabel
          Left = 631
        end
      end
    end
    inherited padr_band_pie: TRLBand
      Top = 301
    end
    object grupo_lote: TRLGroup
      Left = 57
      Top = 220
      Width = 721
      Height = 81
      DataFields = 'NUME_LOTE;CONS_PROD_PAQU_TIPO'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 721
        Height = 41
        BandType = btHeader
        Borders.Color = clGray
        Color = clWhite
        ParentColor = False
        Transparent = False
        AfterPrint = RLBand1AfterPrint
        BeforePrint = RLBand1BeforePrint
        object RLDraw2: TRLDraw
          Left = 360
          Top = 21
          Width = 359
          Height = 17
          Borders.Color = clGray
          Brush.Color = clSilver
          Pen.Color = clGray
          Transparent = False
        end
        object RLDraw1: TRLDraw
          Left = 1
          Top = 21
          Width = 360
          Height = 17
          Borders.Color = clGray
          Brush.Color = clSilver
          Pen.Color = clGray
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 10
          Top = 22
          Width = 19
          Height = 14
          Caption = 'No.'
        end
        object RLLabel4: TRLLabel
          Left = 37
          Top = 22
          Width = 25
          Height = 14
          Caption = 'Talla'
        end
        object RLLabel5: TRLLabel
          Left = 95
          Top = 22
          Width = 28
          Height = 14
          Caption = 'Color'
        end
        object RLLabel6: TRLLabel
          Left = 225
          Top = 22
          Width = 45
          Height = 14
          Caption = 'Cantidad'
        end
        object RLLabel7: TRLLabel
          Left = 282
          Top = 22
          Width = 63
          Height = 14
          Caption = 'Consecutivo'
        end
        object RLDraw3: TRLDraw
          Left = 1
          Top = 2
          Width = 718
          Height = 20
          Borders.Color = clGray
          Brush.Color = clSilver
          Pen.Color = clGray
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 378
          Top = 22
          Width = 19
          Height = 14
          Caption = 'No.'
        end
        object RLLabel10: TRLLabel
          Left = 405
          Top = 22
          Width = 25
          Height = 14
          Caption = 'Talla'
        end
        object RLLabel11: TRLLabel
          Left = 463
          Top = 22
          Width = 28
          Height = 14
          Caption = 'Color'
        end
        object RLLabel12: TRLLabel
          Left = 593
          Top = 22
          Width = 45
          Height = 14
          Caption = 'Cantidad'
        end
        object RLLabel13: TRLLabel
          Left = 650
          Top = 22
          Width = 63
          Height = 14
          Caption = 'Consecutivo'
        end
        object RLLabel16: TRLLabel
          Left = 9
          Top = 5
          Width = 31
          Height = 14
          Caption = 'Lote:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 43
          Top = 5
          Width = 70
          Height = 14
          AutoSize = False
          Borders.Color = clGray
          DataField = 'NUME_LOTE'
          DataSource = data_reporte
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 491
          Top = 5
          Width = 223
          Height = 14
          Alignment = taRightJustify
          Borders.Color = clGray
          DataField = 'NOMB_PROD_PAQU_TIPO'
          DataSource = data_tipo_Dist_paquetes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Distribución de '
        end
      end
      object band_detalle: TRLDetailGrid
        Left = 0
        Top = 41
        Width = 721
        Height = 15
        AutoSize = True
        ColCount = 2
        Color = clWhite
        ColSpacing = 5
        ParentColor = False
        Transparent = False
        AfterPrint = band_detalleAfterPrint
        BeforePrint = band_detalleBeforePrint
        object RLDBText13: TRLDBText
          Left = 6
          Top = 1
          Width = 26
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'NUME_PAQUETE'
          DataSource = data_reporte
          Transparent = False
        end
        object RLDBText15: TRLDBText
          Left = 38
          Top = 1
          Width = 51
          Height = 14
          AutoSize = False
          DataField = 'TALLA'
          DataSource = data_reporte
          Transparent = False
        end
        object RLDBText17: TRLDBText
          Left = 94
          Top = 1
          Width = 131
          Height = 14
          AutoSize = False
          DataField = 'NOMB_COLOR'
          DataSource = data_reporte
          Transparent = False
        end
        object RLDBText18: TRLDBText
          Left = 230
          Top = 1
          Width = 40
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'CANT_UNIDADES'
          DataSource = data_reporte
          DisplayMask = ',0'
          Transparent = False
        end
        object RLDBText19: TRLDBText
          Left = 278
          Top = 1
          Width = 31
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DESDE'
          DataSource = data_reporte
          DisplayMask = ',0'
          Transparent = False
        end
        object RLDBText20: TRLDBText
          Left = 315
          Top = 1
          Width = 32
          Height = 14
          AutoSize = False
          DataField = 'HASTA'
          DataSource = data_reporte
          DisplayMask = ',0'
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 308
          Top = 1
          Width = 7
          Height = 14
          Caption = '-'
          Transparent = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 56
        Width = 721
        Height = 20
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.Color = clGray
        InsideMargins.LeftMargin = 4
        object RLLabel14: TRLLabel
          Left = 7
          Top = 1
          Width = 82
          Height = 14
          AutoSize = False
          Caption = 'Totales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 93
          Top = -1
          Width = 131
          Height = 17
          AutoSize = False
          Borders.Sides = sdAll
          Borders.Color = clGray
          DataField = 'NUME_PAQUETE'
          DataSource = data_reporte
          DisplayMask = ',0 paquetes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riMax
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult1: TRLDBResult
          Left = 223
          Top = -1
          Width = 128
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdAll
          Borders.Color = clGray
          DataField = 'CANT_UNIDADES'
          DataSource = data_reporte
          DisplayMask = ',0 unidades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
      end
    end
  end
  inherited data_reporte: TDataSource
    DataSet = quer_dist_paquetes
  end
  inherited quer_prod_orden: TQuery
    OnCalcFields = quer_prod_ordenCalcFields
    object quer_prod_ordenNUME_LOTE: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUME_LOTE'
      Size = 12
      Calculated = True
    end
    object quer_prod_ordenNUME_PROD_ORDEN: TStringField
      FieldName = 'NUME_PROD_ORDEN'
      Size = 12
    end
    object quer_prod_ordenUNIDADES: TIntegerField
      FieldName = 'UNIDADES'
    end
    object quer_prod_ordenNOMB_CLIENTE: TStringField
      FieldName = 'NOMB_CLIENTE'
      Size = 60
    end
    object quer_prod_ordenCODI_REFERENCIA: TStringField
      FieldName = 'CODI_REFERENCIA'
      Size = 12
    end
    object quer_prod_ordenCODI_INTE_REFERENCIA: TStringField
      FieldName = 'CODI_INTE_REFERENCIA'
      Size = 12
    end
    object quer_prod_ordenNOMB_REFERENCIA: TStringField
      FieldName = 'NOMB_REFERENCIA'
      Size = 60
    end
    object quer_prod_ordenMOLDE: TStringField
      FieldName = 'MOLDE'
      Size = 12
    end
    object quer_prod_ordenNOMB_REFE_ESTILO: TStringField
      FieldName = 'NOMB_REFE_ESTILO'
      Size = 60
    end
    object quer_prod_ordenNOMB_REFE_TEMPORADA: TStringField
      FieldName = 'NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object quer_prod_ordenNOMB_REFE_MARCA: TStringField
      FieldName = 'NOMB_REFE_MARCA'
      Size = 60
    end
    object quer_prod_ordenNOMB_REFE_GRUPO: TStringField
      FieldName = 'NOMB_REFE_GRUPO'
      Size = 60
    end
    object quer_prod_ordenNOMB_REFE_EDAD: TStringField
      FieldName = 'NOMB_REFE_EDAD'
      Size = 60
    end
    object quer_prod_ordenPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 100
    end
  end
  inherited quer_prod_lote: TQuery
    object quer_prod_loteNUME_LOTE: TIntegerField
      FieldName = 'NUME_LOTE'
    end
    object quer_prod_loteNUME_PROD_ORDEN: TStringField
      FieldName = 'NUME_PROD_ORDEN'
      Size = 12
    end
    object quer_prod_loteUNIDADES: TIntegerField
      FieldName = 'UNIDADES'
    end
    object quer_prod_loteNOMB_CLIENTE: TStringField
      FieldName = 'NOMB_CLIENTE'
      Size = 60
    end
    object quer_prod_loteCODI_REFERENCIA: TStringField
      FieldName = 'CODI_REFERENCIA'
      Size = 12
    end
    object quer_prod_loteCODI_INTE_REFERENCIA: TStringField
      FieldName = 'CODI_INTE_REFERENCIA'
      Size = 12
    end
    object quer_prod_loteNOMB_REFERENCIA: TStringField
      FieldName = 'NOMB_REFERENCIA'
      Size = 60
    end
    object quer_prod_loteMOLDE: TStringField
      FieldName = 'MOLDE'
      Size = 12
    end
    object quer_prod_loteNOMB_REFE_ESTILO: TStringField
      FieldName = 'NOMB_REFE_ESTILO'
      Size = 60
    end
    object quer_prod_loteNOMB_REFE_TEMPORADA: TStringField
      FieldName = 'NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object quer_prod_loteNOMB_REFE_MARCA: TStringField
      FieldName = 'NOMB_REFE_MARCA'
      Size = 60
    end
    object quer_prod_loteNOMB_REFE_GRUPO: TStringField
      FieldName = 'NOMB_REFE_GRUPO'
      Size = 60
    end
    object quer_prod_loteNOMB_REFE_EDAD: TStringField
      FieldName = 'NOMB_REFE_EDAD'
      Size = 60
    end
    object quer_prod_lotePEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 100
    end
  end
  object quer_dist_paquetes: TQuery [7]
    DatabaseName = 'data_base_pcp'
    SQL.Strings = (
      'SELECT *'
      'FROM CON_PCP_PROD_ORDE_DIST_PAQUETES'
      '(:CONS_PROD_ORDEN)'
      '')
    Left = 538
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_ORDEN'
        ParamType = ptInput
      end>
    object quer_dist_paquetesNUME_LOTE: TIntegerField
      FieldName = 'NUME_LOTE'
    end
    object quer_dist_paquetesCONS_PROD_PAQU_TIPO: TIntegerField
      FieldName = 'CONS_PROD_PAQU_TIPO'
    end
    object quer_dist_paquetesNUME_PAQUETE: TIntegerField
      FieldName = 'NUME_PAQUETE'
    end
    object quer_dist_paquetesTALLA: TStringField
      FieldName = 'TALLA'
      Size = 12
    end
    object quer_dist_paquetesNOMB_COLOR: TStringField
      FieldName = 'NOMB_COLOR'
      Size = 60
    end
    object quer_dist_paquetesNUME_COLOR: TStringField
      FieldName = 'NUME_COLOR'
      Size = 12
    end
    object quer_dist_paquetesCANT_UNIDADES: TIntegerField
      FieldName = 'CANT_UNIDADES'
    end
    object quer_dist_paquetesDESDE: TIntegerField
      FieldName = 'DESDE'
    end
    object quer_dist_paquetesHASTA: TIntegerField
      FieldName = 'HASTA'
    end
    object quer_dist_paquetesCONSECUTIVO: TStringField
      FieldName = 'CONSECUTIVO'
      Size = 15
    end
  end
  object quer_tipo_dist_paquetes: TQuery
    DatabaseName = 'data_base_pcp'
    DataSource = data_reporte
    SQL.Strings = (
      'SELECT NOMB_PROD_PAQU_TIPO'
      'FROM PCP_PROD_PAQU_TIPOS'
      'WHERE CONS_PROD_PAQU_TIPO = :CONS_PROD_PAQU_TIPO')
    Left = 8
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONS_PROD_PAQU_TIPO'
        ParamType = ptUnknown
      end>
  end
  object data_tipo_Dist_paquetes: TDataSource
    DataSet = quer_tipo_dist_paquetes
    Left = 8
    Top = 152
  end
end

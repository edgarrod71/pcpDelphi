inherited fn1_refe_lineas: Tfn1_refe_lineas
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_grid: TdxDBGrid
      KeyField = 'CODI_REFE_LINEA'
      Filter.Criteria = {00000000}
      object padr_gridCODI_REFE_LINEA: TdxDBGridMaskColumn
        Caption = 'Código línea'
        HeaderAlignment = taCenter
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_REFE_LINEA'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '0'
      end
      object padr_gridNOMB_REFE_LINEA: TdxDBGridMaskColumn
        Caption = 'Línea'
        HeaderAlignment = taCenter
        Width = 176
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_REFE_LINEA'
      end
      object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
        Caption = 'Fecha creación'
        HeaderAlignment = taCenter
        Width = 167
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_SISTEMA'
      end
      object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
        Caption = 'Usuario'
        HeaderAlignment = taCenter
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUA_SISTEMA'
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPanel
      Caption = 'Líneas de producto'
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select * from'
      'GLO_REFE_LINEAS'
      'Order by CODI_REFE_LINEA')
    object consultaCODI_REFE_LINEA: TStringField
      FieldName = 'CODI_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.CODI_REFE_LINEA'
      Size = 12
    end
    object consultaNOMB_REFE_LINEA: TStringField
      FieldName = 'NOMB_REFE_LINEA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.NOMB_REFE_LINEA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_LINEAS.USUA_SISTEMA'
    end
  end
end

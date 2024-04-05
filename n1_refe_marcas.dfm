inherited fn1_refe_marcas: Tfn1_refe_marcas
  Left = 216
  Top = 174
  Caption = 'Marcas de productos'
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_grid: TdxDBGrid
      KeyField = 'CODI_REFE_MARCA'
      Filter.Criteria = {00000000}
      object padr_gridCODI_REFE_MARCA: TdxDBGridMaskColumn
        Caption = 'Código marca'
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_REFE_MARCA'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '0'
      end
      object padr_gridNOMB_REFE_MARCA: TdxDBGridMaskColumn
        Caption = 'Nombre marca'
        Width = 170
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_REFE_MARCA'
      end
      object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
        Caption = 'Fecha de creación'
        Width = 112
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECH_SISTEMA'
      end
      object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
        Caption = 'Usuario'
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'USUA_SISTEMA'
      end
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT * FROM'
      'GLO_REFE_MARCAS'
      'ORDER BY CODI_REFE_MARCA')
    object consultaCODI_REFE_MARCA: TStringField
      FieldName = 'CODI_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.CODI_REFE_MARCA'
      Size = 12
    end
    object consultaNOMB_REFE_MARCA: TStringField
      FieldName = 'NOMB_REFE_MARCA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.NOMB_REFE_MARCA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_MARCAS.USUA_SISTEMA'
    end
  end
end

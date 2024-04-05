inherited FN1_Para_Paises: TFN1_Para_Paises
  Left = 236
  Top = 166
  Caption = 'Codificación de Paises'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_grid: TdxDBGrid
      KeyField = 'CODI_PAIS'
      Filter.Criteria = {00000000}
      object padr_gridCODI_PAIS: TdxDBGridMaskColumn
        Caption = 'Código País'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODI_PAIS'
      end
      object padr_gridNOMB_PAIS: TdxDBGridMaskColumn
        Caption = 'País'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMB_PAIS'
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPanel
      Caption = 'Paises'
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PAISES')
    object consultaCODI_PAIS: TStringField
      FieldName = 'CODI_PAIS'
      Origin = 'DATA_BASE_PCP.GLO_PAISES.CODI_PAIS'
      Size = 12
    end
    object consultaNOMB_PAIS: TStringField
      FieldName = 'NOMB_PAIS'
      Origin = 'DATA_BASE_PCP.GLO_PAISES.NOMB_PAIS'
      Size = 60
    end
  end
end

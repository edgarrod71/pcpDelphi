inherited FN1_Para_Peri_Pago: TFN1_Para_Peri_Pago
  Caption = 'FN1_Para_Peri_Pago'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TdxDBGrid
          KeyField = 'CONS_PERI_PAGO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PERI_PAGO: TdxDBGridMaskColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERI_PAGO'
          end
          object padr_gridCODI_PERI_PAGO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERI_PAGO'
          end
          object padr_gridNOMB_PERI_PAGO: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERI_PAGO'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPanel
      Caption = 'Períodos de Pago'
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM SIS_PERI_PAGO'
      'ORDER BY CODI_PERI_PAGO')
    object consultaCONS_PERI_PAGO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERI_PAGO'
      Origin = 'DATA_BASE_PCP.SIS_PERI_PAGO.CONS_PERI_PAGO'
    end
    object consultaCODI_PERI_PAGO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERI_PAGO'
      Origin = 'DATA_BASE_PCP.SIS_PERI_PAGO.CODI_PERI_PAGO'
      Size = 12
    end
    object consultaNOMB_PERI_PAGO: TStringField
      DisplayLabel = 'Período de Pago'
      FieldName = 'NOMB_PERI_PAGO'
      Origin = 'DATA_BASE_PCP.SIS_PERI_PAGO.NOMB_PERI_PAGO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_PERI_PAGO.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.SIS_PERI_PAGO.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_PERI_PAGO'
    NombreAMostrar = 'Período de Pago'
    CamposDeBusqueda = 'CONS_PERI_PAGO'
    TipoGenero = geEl
    TablaMaestra = 'SIS_PERI_PAGO'
  end
end

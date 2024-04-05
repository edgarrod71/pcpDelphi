inherited FN1_Para_Cent_Costos: TFN1_Para_Cent_Costos
  Left = 245
  Top = 142
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_PERS_CENT_COSTO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_PERS_CENT_COSTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 73
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PERS_CENT_COSTO'
          end
          object padr_gridCODI_PERS_CENT_COSTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PERS_CENT_COSTO'
          end
          object padr_gridNOMB_PERS_CENT_COSTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 207
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PERS_CENT_COSTO'
          end
          object padr_gridOBSERVACIONES: TdxDBGridBlobColumn
            Caption = 'Obs.'
            HeaderAlignment = taCenter
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
            BlobKind = bkMemo
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
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
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Centro de Costos (Personal)'
      Caption = 'Centro de Costos (Personal)'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    inherited padr_page_ocul_reporte: TdxTabSheet
      inherited padr_repo_fortes: Tffra_edit_reportes
        inherited TBXDock3: TTBXDock
          inherited pane_insp_objetos: TTBXDockablePanel
            inherited page: TSCLPageControl
              FixedDimension = 19
              inherited page_propiedades: TSCLTabSheet
                inherited page_prop: TSCLPageControl
                  FixedDimension = 19
                end
              end
              inherited page_campos: TSCLTabSheet
                inherited grid_camp_disponibles: TSCLDBGrid
                  Filter.Criteria = {00000000}
                end
              end
            end
          end
        end
      end
    end
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM GLO_PERS_CENT_COSTOS '
      'WHERE CONS_PERS_CENT_COSTO <> 0'
      'ORDER BY NOMB_PERS_CENT_COSTO')
    object consultaCONS_PERS_CENT_COSTO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_PERS_CENT_COSTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_CENT_COSTOS.CONS_PERS_CENT_COSTO'
    end
    object consultaCODI_PERS_CENT_COSTO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PERS_CENT_COSTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_CENT_COSTOS.CODI_PERS_CENT_COSTO'
      Size = 12
    end
    object consultaNOMB_PERS_CENT_COSTO: TStringField
      DisplayLabel = 'Centro de Costo'
      FieldName = 'NOMB_PERS_CENT_COSTO'
      Origin = 'DATA_BASE_PCP.GLO_PERS_CENT_COSTOS.NOMB_PERS_CENT_COSTO'
      Size = 60
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.GLO_PERS_CENT_COSTOS.OBSERVACIONES'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_CENT_COSTOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_PERS_CENT_COSTOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_PERS_CENT_COSTO'
    NombreAMostrar = 'Centro de Costo'
    CamposDeBusqueda = 'CONS_PERS_CENT_COSTO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_PERS_CENT_COSTOS'
  end
end

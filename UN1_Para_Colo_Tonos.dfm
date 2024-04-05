inherited FN1_Para_Colo_Tonos: TFN1_Para_Colo_Tonos
  Left = 202
  Top = 152
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_COLO_TONO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_COLO_TONO: TdxDBGridMaskColumn
            Visible = False
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COLO_TONO'
          end
          object padr_gridCODI_COLO_TONO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLO_TONO'
          end
          object padr_gridNOMB_COLO_TONO: TdxDBGridMaskColumn
            Width = 210
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLO_TONO'
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
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Tonos de colores'
      Caption = 'Tonos de colores'
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
      'FROM GLO_COLO_TONOS'
      'WHERE CONS_COLO_TONO > 0'
      'ORDER BY CODI_COLO_TONO')
    object consultaCONS_COLO_TONO: TIntegerField
      DisplayLabel = 'Cons. Tono de Color'
      FieldName = 'CONS_COLO_TONO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_TONOS.CONS_COLO_TONO'
    end
    object consultaCODI_COLO_TONO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COLO_TONO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_TONOS.CODI_COLO_TONO'
      Size = 12
    end
    object consultaNOMB_COLO_TONO: TStringField
      DisplayLabel = 'Tono de Color'
      FieldName = 'NOMB_COLO_TONO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_TONOS.NOMB_COLO_TONO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COLO_TONOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COLO_TONOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_COLO_TONO'
    NombreAMostrar = 'Tono de Color'
    CamposDeBusqueda = 'CONS_COLO_TONO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_COLO_TONOS'
  end
end

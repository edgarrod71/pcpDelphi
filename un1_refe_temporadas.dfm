inherited fn1_refe_temporadas: Tfn1_refe_temporadas
  Left = 28
  Top = 121
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_REFE_TEMPORADA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_REFE_TEMPORADA: TdxDBGridMaskColumn
            Visible = False
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_TEMPORADA'
          end
          object padr_gridCODI_REFE_TEMPORADA: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_TEMPORADA'
          end
          object padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn
            Width = 145
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TEMPORADA'
          end
          object padr_gridFECH_INICIAL: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_INICIAL'
          end
          object padr_gridFECH_FINAL: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_FINAL'
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
      LabelCaption = 'Colecciones y temporadas'
      Caption = 'Colecciones y temporadas'
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
      'FROM GLO_REFE_TEMPORADAS'
      'where cons_refe_temporada>0'
      'ORDER BY CODI_REFE_TEMPORADA')
    object consultaCONS_REFE_TEMPORADA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_TEMPORADAS.CONS_REFE_TEMPORADA'
    end
    object consultaCODI_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_TEMPORADAS.CODI_REFE_TEMPORADA'
      Size = 12
    end
    object consultaNOMB_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Colección/Temporada'
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_TEMPORADAS.NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_TEMPORADAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_TEMPORADAS.USUA_SISTEMA'
    end
    object consultaFECH_INICIAL: TDateTimeField
      DisplayLabel = 'Fecha inicial'
      FieldName = 'FECH_INICIAL'
      Origin = 'DATA_BASE_PCP.GLO_REFE_TEMPORADAS.FECH_INICIAL'
    end
    object consultaFECH_FINAL: TDateTimeField
      DisplayLabel = 'Fecha final'
      FieldName = 'FECH_FINAL'
      Origin = 'DATA_BASE_PCP.GLO_REFE_TEMPORADAS.FECH_FINAL'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_REFE_TEMPORADA'
    NombreAMostrar = 'Colecciones y temporadas'
    CamposDeBusqueda = 'CONS_REFE_TEMPORADA'
    TipoGenero = geLa
    TablaMaestra = 'GLO_REFE_TEMPORADAS'
  end
end

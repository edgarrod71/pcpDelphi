inherited FN1_Para_Colo_Grupos: TFN1_Para_Colo_Grupos
  Left = 203
  Top = 147
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_COLO_GRUPO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_COLO_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COLO_GRUPO'
          end
          object padr_gridCODI_COLO_GRUPO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLO_GRUPO'
          end
          object padr_gridNOMB_COLO_GRUPO: TdxDBGridMaskColumn
            Width = 210
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLO_GRUPO'
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
      LabelCaption = 'Grupos de colores'
      Caption = 'Grupos de colores'
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
      'FROM GLO_COLO_GRUPOS'
      'WHERE CONS_COLO_GRUPO > 0'
      'ORDER BY CODI_COLO_GRUPO')
    object consultaCONS_COLO_GRUPO: TIntegerField
      DisplayLabel = 'Cons. Grupo de Color'
      FieldName = 'CONS_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.CONS_COLO_GRUPO'
    end
    object consultaCODI_COLO_GRUPO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.CODI_COLO_GRUPO'
      Size = 12
    end
    object consultaNOMB_COLO_GRUPO: TStringField
      DisplayLabel = 'Grupo de Color'
      FieldName = 'NOMB_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.NOMB_COLO_GRUPO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_COLO_GRUPO'
    NombreAMostrar = 'Grupo de Color'
    CamposDeBusqueda = 'CONS_COLO_GRUPO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_COLO_GRUPOS'
  end
end

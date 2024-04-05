inherited fn1_refe_grupos: Tfn1_refe_grupos
  Left = 29
  Top = 65
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_REFE_GRUPO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_REFE_GRUPO: TdxDBGridMaskColumn
            Visible = False
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_GRUPO'
          end
          object padr_gridCODI_REFE_GRUPO: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_REFE_GRUPO'
          end
          object padr_gridNOMB_REFE_GRUPO: TdxDBGridMaskColumn
            Width = 214
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_GRUPO'
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
      LabelCaption = 'Grupos de productos'
      Caption = 'Grupos de productos'
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
      'FROM GLO_REFE_GRUPOS'
      'where cons_refe_grupo>0'
      'ORDER BY CODI_REFE_GRUPO')
    object consultaCONS_REFE_GRUPO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.CONS_REFE_GRUPO'
    end
    object consultaCODI_REFE_GRUPO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.CODI_REFE_GRUPO'
      Size = 12
    end
    object consultaNOMB_REFE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_REFE_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.NOMB_REFE_GRUPO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_REFE_GRUPOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_REFE_GRUPO'
    NombreAMostrar = 'Grupo de productos'
    CamposDeBusqueda = 'CONS_REFE_GRUPO'
    TipoGenero = geEl
    TablaMaestra = 'GLO_REFE_GRUPOS'
  end
end

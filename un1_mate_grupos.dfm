inherited fn1_mate_grupos: Tfn1_mate_grupos
  Left = 87
  Top = 70
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_MATE_GRUPO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_MATE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_GRUPO'
          end
          object padr_gridCODI_MATE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_GRUPO'
          end
          object padr_gridNOMB_MATE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 146
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_GRUPO'
          end
          object padr_gridOBSERVACIONES: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 225
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
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
      LabelCaption = 'Grupos de materiales'
      Caption = 'Grupos de materiales'
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
      'Select * from'
      'PCP_MATE_GRUPOS'
      'where cons_mate_grupo<>0'
      'order by cons_mate_grupo')
    object consultaCONS_MATE_GRUPO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_MATE_GRUPO'
      Origin = 'DATA_BASE_PCP.PCP_MATE_GRUPOS.CONS_MATE_GRUPO'
    end
    object consultaCODI_MATE_GRUPO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_MATE_GRUPO'
      Origin = 'DATA_BASE_PCP.PCP_MATE_GRUPOS.CODI_MATE_GRUPO'
      Size = 12
    end
    object consultaNOMB_MATE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_MATE_GRUPO'
      Origin = 'DATA_BASE_PCP.PCP_MATE_GRUPOS.NOMB_MATE_GRUPO'
      Size = 60
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.PCP_MATE_GRUPOS.OBSERVACIONES'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_MATE_GRUPOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_MATE_GRUPOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_mate_grupo'
    NombreAMostrar = 'Grupo de materiales'
    CamposDeBusqueda = 'cons_mate_grupo'
    TipoGenero = geEl
    TablaMaestra = 'PCP_MATE_GRUPOS'
  end
end

inherited FN1_Para_Tipo_Caracteristicas: TFN1_Para_Tipo_Caracteristicas
  Left = 313
  Top = 119
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_TIPO_CARACTERISTICA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
            Visible = False
            Width = 47
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TIPO_CARACTERISTICA'
          end
          object padr_gridCODI_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TIPO_CARACTERISTICA'
          end
          object padr_gridNOMB_TIPO_CARACTERISTICA: TdxDBGridMaskColumn
            Width = 203
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_CARACTERISTICA'
          end
          object padr_gridOBSERVACIONES: TdxDBGridBlobColumn
            Caption = 'Observaciones'
            Width = 84
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
            BlobKind = bkMemo
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
      LabelCaption = 'Tipo de Características de Recursos'
      Caption = 'Tipo de Características de Recursos'
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
      'FROM GLO_TIPO_CARACTERISTICAS'
      'ORDER BY CODI_TIPO_CARACTERISTICA')
    object consultaCONS_TIPO_CARACTERISTICA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_TIPO_CARACTERISTICA'
      Origin = 'DATA_BASE_PCP.GLO_TIPO_CARACTERISTICAS.CONS_TIPO_CARACTERISTICA'
    end
    object consultaCODI_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_TIPO_CARACTERISTICA'
      Origin = 'DATA_BASE_PCP.GLO_TIPO_CARACTERISTICAS.CODI_TIPO_CARACTERISTICA'
      Size = 12
    end
    object consultaNOMB_TIPO_CARACTERISTICA: TStringField
      DisplayLabel = 'Tipo de Característica'
      FieldName = 'NOMB_TIPO_CARACTERISTICA'
      Origin = 'DATA_BASE_PCP.GLO_TIPO_CARACTERISTICAS.NOMB_TIPO_CARACTERISTICA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_TIPO_CARACTERISTICAS.CONS_TIPO_CARACTERISTICA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_TIPO_CARACTERISTICAS.CONS_TIPO_CARACTERISTICA'
    end
    object consultaOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.GLO_TIPO_CARACTERISTICAS.OBSERVACIONES'
      BlobType = ftMemo
      Size = 5000
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_TIPO_CARACTERISTICA'
    NombreAMostrar = 'Tipo de Característica'
    CamposDeBusqueda = 'CONS_TIPO_CARACTERISTICA'
    TablaMaestra = 'GLO_TIPO_CARACTERISTICAS'
  end
end

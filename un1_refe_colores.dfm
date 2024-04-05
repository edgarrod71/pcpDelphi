inherited fn1_refe_colores: Tfn1_refe_colores
  Left = 20
  Top = 52
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_COLOR'
          Filter.Criteria = {00000000}
          object padr_gridMUES_COLOR: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 61
            BandIndex = 0
            RowIndex = 0
            OnCustomDrawCell = padr_gridMUES_COLORCustomDrawCell
            FieldName = 'MUES_COLOR'
            DisableFilter = True
          end
          object padr_gridCONS_COLOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COLOR'
          end
          object padr_gridCODI_COLOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLOR'
          end
          object padr_gridNOMB_COLOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 176
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLOR'
          end
          object padr_gridCONS_COLO_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COLO_GRUPO'
          end
          object padr_gridCODI_COLO_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLO_GRUPO'
          end
          object padr_gridNOMB_COLO_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 176
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLO_GRUPO'
          end
          object padr_gridCONS_COLO_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COLO_SUBGRUPO'
          end
          object padr_gridCODI_COLO_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLO_SUBGRUPO'
          end
          object padr_gridNOMB_COLO_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 176
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLO_SUBGRUPO'
          end
          object padr_gridCONS_COLO_TONO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 57
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COLO_TONO'
          end
          object padr_gridCODI_COLO_TONO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 68
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COLO_TONO'
          end
          object padr_gridNOMB_COLO_TONO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 176
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COLO_TONO'
          end
          object padr_gridROJO: TdxDBGridMaskColumn
            Tag = 1
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ROJO'
            DisableFilter = True
          end
          object padr_gridVERDE: TdxDBGridMaskColumn
            Tag = 1
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VERDE'
            DisableFilter = True
          end
          object padr_gridAZUL: TdxDBGridMaskColumn
            Tag = 1
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AZUL'
            DisableFilter = True
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
      LabelCaption = 'Maestro de colores'
      Caption = 'Maestro de colores'
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
      'SELECT C.*, G.CODI_COLO_GRUPO, G.NOMB_COLO_GRUPO,'
      ' S.CODI_COLO_SUBGRUPO, S.NOMB_COLO_SUBGRUPO,'
      ' T.CODI_COLO_TONO, T.NOMB_COLO_TONO'
      'FROM GLO_COLORES C, GLO_COLO_GRUPOS G,'
      ' GLO_COLO_SUBGRUPOS S, GLO_COLO_TONOS T'
      'WHERE C.CONS_COLOR > 0'
      ' AND C.ES_ENTREPIERNA = -1'
      ' AND C.CONS_COLO_GRUPO = G.CONS_COLO_GRUPO'
      ' AND C.CONS_COLO_SUBGRUPO = S.CONS_COLO_SUBGRUPO'
      ' AND C.CONS_COLO_TONO = T.CONS_COLO_TONO'
      'ORDER BY C.CONS_COLOR')
    object consultaCONS_COLOR: TIntegerField
      DisplayLabel = 'Cons. Color'
      FieldName = 'CONS_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.CONS_COLOR'
    end
    object consultaCODI_COLOR: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.CODI_COLOR'
      Size = 12
    end
    object consultaNOMB_COLOR: TStringField
      DisplayLabel = 'Color'
      FieldName = 'NOMB_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.NOMB_COLOR'
      Size = 60
    end
    object consultaCONS_COLO_GRUPO: TIntegerField
      DisplayLabel = 'Cons. Grupo de Color'
      FieldName = 'CONS_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.CONS_COLO_GRUPO'
    end
    object consultaCODI_COLO_GRUPO: TStringField
      DisplayLabel = 'Cód. Grupo'
      FieldName = 'CODI_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.CODI_COLO_GRUPO'
      Size = 12
    end
    object consultaNOMB_COLO_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_COLO_GRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_GRUPOS.NOMB_COLO_GRUPO'
      Size = 60
    end
    object consultaCONS_COLO_SUBGRUPO: TIntegerField
      DisplayLabel = 'Cons. Subgrupo de Color'
      FieldName = 'CONS_COLO_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.CONS_COLO_SUBGRUPO'
    end
    object consultaCODI_COLO_SUBGRUPO: TStringField
      DisplayLabel = 'Cód. Subgrupo'
      FieldName = 'CODI_COLO_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_SUBGRUPOS.CODI_COLO_SUBGRUPO'
      Size = 12
    end
    object consultaNOMB_COLO_SUBGRUPO: TStringField
      DisplayLabel = 'Subgrupo'
      FieldName = 'NOMB_COLO_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_SUBGRUPOS.NOMB_COLO_SUBGRUPO'
      Size = 60
    end
    object consultaCONS_COLO_TONO: TIntegerField
      DisplayLabel = 'Cons. Tono de Color'
      FieldName = 'CONS_COLO_TONO'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.CONS_COLO_TONO'
    end
    object consultaCODI_COLO_TONO: TStringField
      DisplayLabel = 'Cód Tono'
      FieldName = 'CODI_COLO_TONO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_TONOS.CODI_COLO_TONO'
      Size = 12
    end
    object consultaNOMB_COLO_TONO: TStringField
      DisplayLabel = 'Tono'
      FieldName = 'NOMB_COLO_TONO'
      Origin = 'DATA_BASE_PCP.GLO_COLO_TONOS.NOMB_COLO_TONO'
      Size = 60
    end
    object consultaROJO: TIntegerField
      DisplayLabel = 'R'
      FieldName = 'ROJO'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.ROJO'
    end
    object consultaVERDE: TIntegerField
      DisplayLabel = 'G'
      FieldName = 'VERDE'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.VERDE'
    end
    object consultaAZUL: TIntegerField
      DisplayLabel = 'B'
      FieldName = 'AZUL'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.AZUL'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha Creación'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario Creación'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.USUA_SISTEMA'
    end
    object consultaMUES_COLOR: TIntegerField
      DisplayLabel = 'Muestra'
      FieldName = 'MUES_COLOR'
      Origin = 'DATA_BASE_PCP.GLO_COLORES.MUES_COLOR'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'NOMB_COLOR'
    NombreAMostrar = 'Color'
    CamposDeBusqueda = 'CONS_COLOR'
    TipoGenero = geEl
    TablaMaestra = 'GLO_COLORES'
  end
end

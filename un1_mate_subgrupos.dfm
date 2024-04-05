inherited fn1_mate_subgrupos: Tfn1_mate_subgrupos
  Left = 54
  Top = 58
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_MATE_SUBGRUPO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_MATE_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_SUBGRUPO'
          end
          object padr_gridCODI_MATE_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_SUBGRUPO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridNOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 147
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_SUBGRUPO'
          end
          object padr_gridCODI_MATE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_GRUPO'
          end
          object padr_gridCONS_MATE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_GRUPO'
          end
          object padr_gridNOMB_MATE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 149
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_GRUPO'
          end
          object padr_gridOBSERVACIONES: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 296
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
      LabelCaption = 'Subgrupos de materiales'
      Caption = 'Subgrupos de materiales'
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
      'Select * '
      'from VIS_PCP_MATE_SUBGRUPOS'
      'where cons_mate_subgrupo<>0'
      'order by cons_mate_subgrupo')
    object consultaCONS_MATE_SUBGRUPO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_MATE_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_MATE_SUBGRUPOS.CONS_MATE_SUBGRUPO'
    end
    object consultaCONS_MATE_GRUPO: TIntegerField
      DisplayLabel = 'No. grupo'
      FieldName = 'CONS_MATE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_MATE_SUBGRUPOS.CONS_MATE_GRUPO'
    end
    object consultaCODI_MATE_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo'
      FieldName = 'CODI_MATE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_MATE_SUBGRUPOS.CODI_MATE_GRUPO'
      Size = 12
    end
    object consultaNOMB_MATE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_MATE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_MATE_SUBGRUPOS.NOMB_MATE_GRUPO'
      Size = 60
    end
    object consultaCODI_MATE_SUBGRUPO: TStringField
      DisplayLabel = 'Cód. subgrupo'
      FieldName = 'CODI_MATE_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_MATE_SUBGRUPOS.CODI_MATE_SUBGRUPO'
      Size = 12
    end
    object consultaNOMB_MATE_SUBGRUPO: TStringField
      DisplayLabel = 'Subgrupo'
      FieldName = 'NOMB_MATE_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.VIS_GLO_MATE_SUBGRUPOS.NOMB_MATE_SUBGRUPO'
      Size = 60
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.VIS_GLO_MATE_SUBGRUPOS.OBSERVACIONES'
      Size = 240
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_MATE_SUBGRUPOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_GLO_MATE_SUBGRUPOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_mate_subgrupo'
    NombreAMostrar = 'Subgrupo de materiales'
    CamposDeBusqueda = 'cons_mate_subgrupo'
    TipoGenero = geEl
    TablaMaestra = 'PCP_MATE_SUBGRUPOS'
  end
end

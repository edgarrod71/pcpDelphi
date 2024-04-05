inherited fn1_mate_unid_medida: Tfn1_mate_unid_medida
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_UNID_MEDIDA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_UNID_MEDIDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_UNID_MEDIDA'
          end
          object padr_gridCODI_UNID_MEDIDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 97
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_UNID_MEDIDA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridNOMB_UNID_MEDIDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 192
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_UNID_MEDIDA'
          end
          object padr_gridCONS_TIPO_UNID_MEDIDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TIPO_UNID_MEDIDA'
          end
          object padr_gridCODI_TIPO_UNID_MEDIDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_TIPO_UNID_MEDIDA'
          end
          object padr_gridNOMB_TIPO_UNID_MEDIDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 174
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TIPO_UNID_MEDIDA'
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
      LabelCaption = 'Unidades de medida de materiales'
      Caption = 'Unidades de medida de materiales'
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
      'Select * from vis_pcp_inve_unid_medida'
      'where cons_unid_medida<>0'
      'order by cons_unid_medida')
    object consultaCONS_UNID_MEDIDA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INVE_UNID_MEDIDA.CONS_UNID_MEDIDA'
    end
    object consultaCONS_TIPO_UNID_MEDIDA: TIntegerField
      DisplayLabel = 'No. tipo unidad'
      FieldName = 'CONS_TIPO_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INVE_UNID_MEDIDA.CONS_TIPO_UNID_MEDIDA'
    end
    object consultaCODI_TIPO_UNID_MEDIDA: TStringField
      DisplayLabel = 'Cód. tipo unidad'
      FieldName = 'CODI_TIPO_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INVE_UNID_MEDIDA.CODI_TIPO_UNID_MEDIDA'
      Size = 12
    end
    object consultaNOMB_TIPO_UNID_MEDIDA: TStringField
      DisplayLabel = 'Tipo de unidad'
      FieldName = 'NOMB_TIPO_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INVE_UNID_MEDIDA.NOMB_TIPO_UNID_MEDIDA'
      Size = 60
    end
    object consultaCODI_UNID_MEDIDA: TStringField
      DisplayLabel = 'Cód. unidad'
      FieldName = 'CODI_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INVE_UNID_MEDIDA.CODI_UNID_MEDIDA'
      Size = 12
    end
    object consultaNOMB_UNID_MEDIDA: TStringField
      DisplayLabel = 'Unidad de medida'
      FieldName = 'NOMB_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INVE_UNID_MEDIDA.NOMB_UNID_MEDIDA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INVE_UNID_MEDIDA.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_INVE_UNID_MEDIDA.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_unid_medida'
    NombreAMostrar = 'Unidad de medida'
    CamposDeBusqueda = 'cons_unid_medida'
    TipoGenero = geLa
    TablaMaestra = 'GLO_INVE_UNIDADES'
  end
end

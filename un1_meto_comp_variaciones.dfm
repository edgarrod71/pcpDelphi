inherited fn1_meto_comp_variaciones: Tfn1_meto_comp_variaciones
  Left = 55
  Top = 92
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_COMP_VARIACION'
          Filter.Criteria = {00000000}
          object padr_gridCONS_COMP_VARIACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COMP_VARIACION'
          end
          object padr_gridCODI_COMP_VARIACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COMP_VARIACION'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridNOMB_COMP_VARIACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 193
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMP_VARIACION'
          end
          object padr_gridCONS_COMP_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COMP_GRUPO'
          end
          object padr_gridCODI_COMP_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 134
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COMP_GRUPO'
          end
          object padr_gridNOMB_COMP_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 174
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMP_GRUPO'
          end
          object padr_gridDESCRIPCION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 291
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
          end
          object padr_gridIMAGEN: TdxDBGridBlobColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 112
            BandIndex = 0
            RowIndex = 0
            HeaderMaxLineCount = 0
            FieldName = 'IMAGEN'
            BlobKind = bkPict
          end
          object padr_gridAJUS_IMAGEN: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 176
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AJUS_IMAGEN'
            ValueChecked = '1'
            ValueUnchecked = '-1'
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
      LabelCaption = 'Variaciones de componentes'
      Caption = 'Variaciones de componentes'
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
      'Select * from VIS_PCP_COMP_VARIACIONES'
      'Where cons_comp_variacion > 0')
    object consultaCONS_COMP_VARIACION: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_COMP_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_COMP_VARIACIONES.CONS_COMP_VARIACION'
    end
    object consultaCODI_COMP_VARIACION: TStringField
      DisplayLabel = 'Cód. variación'
      FieldName = 'CODI_COMP_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_COMP_VARIACIONES.CODI_COMP_VARIACION'
      Size = 12
    end
    object consultaNOMB_COMP_VARIACION: TStringField
      DisplayLabel = 'Nombre variación'
      FieldName = 'NOMB_COMP_VARIACION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_COMP_VARIACIONES.NOMB_COMP_VARIACION'
      Size = 60
    end
    object consultaCONS_COMP_GRUPO: TIntegerField
      DisplayLabel = 'No. grupo'
      FieldName = 'CONS_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_COMP_VARIACIONES.CONS_COMP_GRUPO'
    end
    object consultaCODI_COMP_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo'
      FieldName = 'CODI_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_COMP_VARIACIONES.CODI_COMP_GRUPO'
      Size = 12
    end
    object consultaNOMB_COMP_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_COMP_VARIACIONES.NOMB_COMP_GRUPO'
      Size = 60
    end
    object consultaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Origin = 'DATA_BASE_PCP.VIS_PCP_COMP_VARIACIONES.DESCRIPCION'
      FixedChar = True
      Size = 250
    end
    object consultaIMAGEN: TBlobField
      DisplayLabel = 'Imágen'
      FieldName = 'IMAGEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_COMP_VARIACIONES.IMAGEN'
      BlobType = ftBlob
      Size = 1
    end
    object consultaAJUS_IMAGEN: TIntegerField
      DisplayLabel = 'Ajustar imágen'
      FieldName = 'AJUS_IMAGEN'
      Origin = 'DATA_BASE_PCP.VIS_PCP_COMP_VARIACIONES.AJUS_IMAGEN'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_COMP_VARIACIONES.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_COMP_VARIACIONES.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_comp_variacion'
    NombreAMostrar = 'Variación de componente'
    CamposDeBusqueda = 'cons_comp_variacion'
    TipoGenero = geLa
    TablaMaestra = 'PCP_COMP_VARIACIONES'
  end
end

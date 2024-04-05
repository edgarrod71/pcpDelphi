inherited fn1_mate_referencias: Tfn1_mate_referencias
  Left = 85
  Top = 64
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_MATE_REFERENCIA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_MATE_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 99
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_REFERENCIA'
          end
          object padr_gridCODI_MATE_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_REFERENCIA'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridNOMB_MATE_REFERENCIA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 156
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_REFERENCIA'
          end
          object padr_gridCONS_MATE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 99
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_GRUPO'
          end
          object padr_gridCODI_MATE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 123
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_GRUPO'
          end
          object padr_gridNOMB_MATE_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 118
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_GRUPO'
          end
          object padr_gridCONS_MATE_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MATE_SUBGRUPO'
          end
          object padr_gridCODI_MATE_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 123
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_MATE_SUBGRUPO'
          end
          object padr_gridNOMB_MATE_SUBGRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 119
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MATE_SUBGRUPO'
          end
          object padr_gridCONS_UNID_MEDIDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 137
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_UNID_MEDIDA'
          end
          object padr_gridCODI_UNID_MEDIDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 145
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_UNID_MEDIDA'
          end
          object padr_gridNOMB_UNID_MEDIDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 115
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_UNID_MEDIDA'
          end
          object padr_gridOBSERVACIONES: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 362
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
      LabelCaption = 'Referencias de materiales'
      Caption = 'Referencias de materiales'
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
      'Select *'
      'from VIS_PCP_MATE_REFERENCIAS'
      'where cons_mate_referencia<>0'
      'Order by cons_mate_referencia')
    object consultaCONS_MATE_REFERENCIA: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_MATE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.CONS_MATE_REFERENCIA'
    end
    object consultaCONS_MATE_GRUPO: TIntegerField
      DisplayLabel = 'No. grupo'
      FieldName = 'CONS_MATE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.CONS_MATE_GRUPO'
    end
    object consultaCODI_MATE_GRUPO: TStringField
      DisplayLabel = 'Cód. grupo'
      FieldName = 'CODI_MATE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.CODI_MATE_GRUPO'
      Size = 12
    end
    object consultaNOMB_MATE_GRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOMB_MATE_GRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.NOMB_MATE_GRUPO'
      Size = 60
    end
    object consultaCONS_MATE_SUBGRUPO: TIntegerField
      DisplayLabel = 'No. subgrupo'
      FieldName = 'CONS_MATE_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.CONS_MATE_SUBGRUPO'
    end
    object consultaCODI_MATE_SUBGRUPO: TStringField
      DisplayLabel = 'Cód. subgrupo'
      FieldName = 'CODI_MATE_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.CODI_MATE_SUBGRUPO'
      Size = 12
    end
    object consultaNOMB_MATE_SUBGRUPO: TStringField
      DisplayLabel = 'Subgrupo'
      FieldName = 'NOMB_MATE_SUBGRUPO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.NOMB_MATE_SUBGRUPO'
      Size = 60
    end
    object consultaCODI_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Cód. referencia'
      FieldName = 'CODI_MATE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.CODI_MATE_REFERENCIA'
      Size = 12
    end
    object consultaNOMB_MATE_REFERENCIA: TStringField
      DisplayLabel = 'Referencia del material'
      FieldName = 'NOMB_MATE_REFERENCIA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.NOMB_MATE_REFERENCIA'
      Size = 60
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.OBSERVACIONES'
      Size = 240
    end
    object consultaCONS_UNID_MEDIDA: TIntegerField
      DisplayLabel = 'No. unid. consumo'
      FieldName = 'CONS_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.CONS_UNID_MEDIDA'
    end
    object consultaCODI_UNID_MEDIDA: TStringField
      DisplayLabel = 'Cód. unid. consumo'
      FieldName = 'CODI_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.CODI_UNID_MEDIDA'
      Size = 12
    end
    object consultaNOMB_UNID_MEDIDA: TStringField
      DisplayLabel = 'Unidad de consumo'
      FieldName = 'NOMB_UNID_MEDIDA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.NOMB_UNID_MEDIDA'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_MATE_REFERENCIAS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_mate_referencia'
    NombreAMostrar = 'Referencia de material'
    CamposDeBusqueda = 'cons_mate_referencia'
    TipoGenero = geLa
    TablaMaestra = 'PCP_MATE_REFERENCIAS'
  end
end

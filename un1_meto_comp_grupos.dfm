inherited fn1_meto_comp_grupos: Tfn1_meto_comp_grupos
  Left = -72
  Top = 30
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_COMP_GRUPO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_COMP_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COMP_GRUPO'
          end
          object padr_gridCODI_COMP_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COMP_GRUPO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridNOMB_COMP_GRUPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 182
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COMP_GRUPO'
          end
          object padr_gridALTO: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ALTO'
          end
          object padr_gridANCHO: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ANCHO'
          end
          object padr_gridOBSERVACIONES: TdxDBGridBlobColumn
            Caption = 'Observaciones'
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBSERVACIONES'
            BlobKind = bkMemo
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
      LabelCaption = 'Componentes'
      Caption = 'Componentes'
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
  inherited data_ventana: TDataSource
    Left = 24
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select * from pcp_comp_grupos'
      'where cons_comp_grupo > 0  ')
    object consultaCONS_COMP_GRUPO: TIntegerField
      DisplayLabel = 'No.'
      FieldName = 'CONS_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.PCP_COMP_GRUPOS.CONS_COMP_GRUPO'
    end
    object consultaCODI_COMP_GRUPO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.PCP_COMP_GRUPOS.CODI_COMP_GRUPO'
      Size = 12
    end
    object consultaNOMB_COMP_GRUPO: TStringField
      DisplayLabel = 'Grupo de componentes'
      FieldName = 'NOMB_COMP_GRUPO'
      Origin = 'DATA_BASE_PCP.PCP_COMP_GRUPOS.NOMB_COMP_GRUPO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_COMP_GRUPOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_COMP_GRUPOS.USUA_SISTEMA'
    end
    object consultaOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.PCP_COMP_GRUPOS.OBSERVACIONES'
      BlobType = ftMemo
      Size = 5000
    end
    object consultaALTO: TIntegerField
      DisplayLabel = 'Alto'
      FieldName = 'ALTO'
      Origin = 'DATA_BASE_PCP.PCP_COMP_GRUPOS.ALTO'
    end
    object consultaANCHO: TIntegerField
      DisplayLabel = 'Ancho'
      FieldName = 'ANCHO'
      Origin = 'DATA_BASE_PCP.PCP_COMP_GRUPOS.ANCHO'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_comp_grupo'
    NombreAMostrar = 'Componente'
    CamposDeBusqueda = 'cons_comp_grupo'
    TipoGenero = geEl
    TablaMaestra = 'PCP_COMP_GRUPOS'
  end
end

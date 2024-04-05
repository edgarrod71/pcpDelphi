inherited fn1_meto_oper_cost_tipos: Tfn1_meto_oper_cost_tipos
  Left = 29
  Top = 42
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_OPER_COST_TIPO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_OPER_COST_TIPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 114
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_OPER_COST_TIPO'
          end
          object padr_gridCODI_OPER_COST_TIPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_OPER_COST_TIPO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridNOMB_OPER_COST_TIPO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 243
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_OPER_COST_TIPO'
          end
          object padr_gridDESCRIPCION: TdxDBGridColumn
            HeaderAlignment = taCenter
            Width = 304
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCRIPCION'
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
      LabelCaption = 'Tipos de operaciones (costura)'
      Caption = 'Tipos de operaciones (costura)'
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
      'Select * from pcp_oper_cost_tipos'
      'where cons_oper_cost_tipo > 0')
    Left = 40
    Top = 42
    object consultaCONS_OPER_COST_TIPO: TIntegerField
      DisplayLabel = 'No.'
      DisplayWidth = 10
      FieldName = 'CONS_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.PCP_OPER_COST_TIPOS.CONS_OPER_COST_TIPO'
    end
    object consultaCODI_OPER_COST_TIPO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.PCP_OPER_COST_TIPOS.CODI_OPER_COST_TIPO'
      Size = 12
    end
    object consultaNOMB_OPER_COST_TIPO: TStringField
      DisplayLabel = 'Tipo de operación'
      FieldName = 'NOMB_OPER_COST_TIPO'
      Origin = 'DATA_BASE_PCP.PCP_OPER_COST_TIPOS.NOMB_OPER_COST_TIPO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_OPER_COST_TIPOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_OPER_COST_TIPOS.USUA_SISTEMA'
    end
    object consultaDESCRIPCION: TStringField
      DisplayLabel = 'Descripción'
      FieldName = 'DESCRIPCION'
      Size = 240
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_oper_cost_tipo'
    NombreAMostrar = 'Tipo de operación'
    CamposDeBusqueda = 'cons_oper_cost_tipo'
    TipoGenero = geEl
    TablaMaestra = 'PCP_OPER_COST_TIPOS'
  end
end

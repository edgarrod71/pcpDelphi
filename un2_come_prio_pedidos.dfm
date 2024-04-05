inherited fn2_come_prio_pedidos: Tfn2_come_prio_pedidos
  Left = 94
  Top = 43
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_COME_PRIO_PEDIDO'
          Filter.Criteria = {00000000}
          object padr_gridCONS_COME_PRIO_PEDIDO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COME_PRIO_PEDIDO'
          end
          object padr_gridCODI_COME_PRIO_PEDIDO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_COME_PRIO_PEDIDO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridNOMB_COME_PRIO_PEDIDO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 175
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COME_PRIO_PEDIDO'
          end
          object padr_gridCOLOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            OnCustomDrawCell = padr_gridCOLORCustomDrawCell
            FieldName = 'COLOR'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 172
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
      LabelCaption = 'Prioridades de pedidos'
      Caption = 'Prioridades de pedidos'
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
      'glo_come_prio_pedidos'
      'where cons_come_prio_pedido>0'
      'order by cons_come_prio_pedido')
    object consultaCONS_COME_PRIO_PEDIDO: TIntegerField
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.GLO_COME_PRIO_PEDIDOS.CONS_COME_PRIO_PEDIDO'
    end
    object consultaCODI_COME_PRIO_PEDIDO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.GLO_COME_PRIO_PEDIDOS.CODI_COME_PRIO_PEDIDO'
      Size = 12
    end
    object consultaNOMB_COME_PRIO_PEDIDO: TStringField
      DisplayLabel = 'Prioridad'
      FieldName = 'NOMB_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.GLO_COME_PRIO_PEDIDOS.NOMB_COME_PRIO_PEDIDO'
      Size = 60
    end
    object consultaCOLOR: TIntegerField
      DisplayLabel = 'Color'
      FieldName = 'COLOR'
      Origin = 'DATA_BASE_PCP.GLO_COME_PRIO_PEDIDOS.COLOR'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COME_PRIO_PEDIDOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_COME_PRIO_PEDIDOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_come_prio_pedido'
    NombreAMostrar = 'Prioridad de pedido'
    CamposDeBusqueda = 'cons_come_prio_pedido'
    TipoGenero = geLa
    TablaMaestra = 'GLO_COME_PRIO_PEDIDOS'
  end
end

inherited fn2_come_pedidos: Tfn2_come_pedidos
  Left = 94
  Top = 75
  Caption = 'fn2_come_pedidos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_PEDIDO'
          SummaryGroups = <
            item
              DefaultGroup = False
              SummaryItems = <>
              Name = 'padr_summary_grid'
            end
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  ColumnName = 'padr_gridNUME_PEDIDO'
                  SummaryFormat = '0'
                  SummaryType = cstCount
                end>
              Name = 'padr_gridSummaryGroup2'
            end>
          Filter.Criteria = {00000000}
          object padr_gridCONS_PEDIDO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 106
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PEDIDO'
          end
          object padr_gridNUME_PEDIDO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUME_PEDIDO'
            SummaryFooterType = cstCount
            SummaryFooterFormat = '0'
          end
          object padr_gridCONS_REFE_TEMPORADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 140
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_REFE_TEMPORADA'
          end
          object padr_gridNOMB_REFE_TEMPORADA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_REFE_TEMPORADA'
          end
          object padr_gridCONS_TERCERO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 110
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_TERCERO'
          end
          object padr_gridNOMB_TERCERO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 151
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_TERCERO'
          end
          object padr_gridFECH_PEDIDO: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 137
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_PEDIDO'
          end
          object padr_gridFECH_ENTREGA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 112
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_ENTREGA'
          end
          object padr_gridCONS_COME_VENDEDOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 132
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COME_VENDEDOR'
          end
          object padr_gridNOMB_COME_VENDEDOR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 244
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COME_VENDEDOR'
          end
          object padr_gridCONS_COME_PRIO_PEDIDO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_COME_PRIO_PEDIDO'
          end
          object padr_gridNOMB_COME_PRIO_PEDIDO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_COME_PRIO_PEDIDO'
          end
          object padr_gridOBSERVACIONES: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 330
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
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_vinculos: TTBXSubmenuItem
              LinkSubitems = _fMDI.menu_comercial
              Visible = True
            end
            inherited BImprimir: TTBXSubmenuItem
              Action = acti_impr_pedido
              object TBXItem1: TTBXItem [0]
                Action = acti_impr_pedido
                ImageIndex = 5
                MaskOptions = [tboDefault]
                Options = [tboDefault]
              end
            end
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Captura de pedidos'
      Caption = 'Captura de pedidos'
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
      'Select * from '
      'VIS_PCP_PEDIDOS'
      'Order by nume_pedido')
    object consultaCONS_PEDIDO: TIntegerField
      DisplayLabel = 'Cons.'
      FieldName = 'CONS_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_PEDIDO'
    end
    object consultaNUME_PEDIDO: TStringField
      DisplayLabel = 'No. pedido'
      FieldName = 'NUME_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NUME_PEDIDO'
    end
    object consultaCONS_REFE_TEMPORADA: TIntegerField
      DisplayLabel = 'Cons. temporada'
      FieldName = 'CONS_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_REFE_TEMPORADA'
    end
    object consultaNOMB_REFE_TEMPORADA: TStringField
      DisplayLabel = 'Temporada'
      FieldName = 'NOMB_REFE_TEMPORADA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_REFE_TEMPORADA'
      Size = 60
    end
    object consultaCONS_TERCERO: TIntegerField
      DisplayLabel = 'Cons. cliente'
      FieldName = 'CONS_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_TERCERO'
    end
    object consultaNOMB_TERCERO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOMB_TERCERO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_TERCERO'
      Size = 120
    end
    object consultaFECH_PEDIDO: TDateTimeField
      DisplayLabel = 'Fecha pedido'
      FieldName = 'FECH_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.FECH_PEDIDO'
    end
    object consultaFECH_ENTREGA: TDateTimeField
      DisplayLabel = 'Fecha entrega'
      FieldName = 'FECH_ENTREGA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.FECH_ENTREGA'
    end
    object consultaOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.OBSERVACIONES'
      Size = 240
    end
    object consultaCONS_COME_VENDEDOR: TIntegerField
      DisplayLabel = 'Cons. vendedor'
      FieldName = 'CONS_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_COME_VENDEDOR'
    end
    object consultaNOMB_COME_VENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMB_COME_VENDEDOR'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.NOMB_COME_VENDEDOR'
      Size = 60
    end
    object consultaCONS_COME_PRIO_PEDIDO: TIntegerField
      DisplayLabel = 'Cons. prioridad'
      FieldName = 'CONS_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CODI_TERCERO'
    end
    object consultaNOMB_COME_PRIO_PEDIDO: TStringField
      DisplayLabel = 'Prioridad'
      DisplayWidth = 60
      FieldName = 'NOMB_COME_PRIO_PEDIDO'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_TERCERO1'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_REFE_TEMPORADA1'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.VIS_PCP_PEDIDOS.CONS_COME_VENDEDOR1'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nume_pedido'
    NombreAMostrar = 'pedido'
    CamposDeBusqueda = 'cons_pedido'
    TipoGenero = geEl
    TablaMaestra = 'PCP_PEDIDOS'
  end
  object acti_Ventana: TActionList
    Left = 534
    Top = 213
    object acti_impr_pedido: TAction
      Caption = 'Imprimir pedido'
      ShortCut = 16464
      OnExecute = acti_impr_pedidoExecute
      OnUpdate = acti_impr_pedidoUpdate
    end
  end
end

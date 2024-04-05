inherited fn2_prod_orde_estados: Tfn2_prod_orde_estados
  Left = 21
  Width = 812
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Width = 804
  end
  inherited padr_pane_1: TPanel
    Width = 578
    inherited padr_pagina: TdxPageControl
      Width = 568
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 178
          KeyField = 'CONS_PROD_ESTADO'
          ShowSummaryFooter = False
          Filter.Criteria = {00000000}
          object padr_gridCONS_PROD_ESTADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_PROD_ESTADO'
          end
          object padr_gridCODI_PROD_ESTADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Sorted = csUp
            Width = 89
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODI_PROD_ESTADO'
          end
          object padr_gridNOMB_PROD_ESTADO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 187
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_PROD_ESTADO'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 147
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
          Width = 568
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 568
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 568
          inherited padr_beve_sepa: TBevel
            Width = 863
          end
          inherited padr_sepa_new: TShape
            Width = 562
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 373
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 804
    inherited padr_pane_2: TPanel
      Left = 733
    end
    inherited padr_pane_cerrar: TPanel
      Left = 751
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 733
      LabelCaption = 'Estados órdenes de producción'
      Caption = 'Estados órdenes de producción'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 596
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
  inherited padr_dock_top: TTBXDock
    Width = 804
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 804
  end
  inherited padr_dock_right: TTBXDock
    Left = 587
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'Select *'
      'from pcp_prod_estados'
      'order by codi_prod_estado')
    object consultaCONS_PROD_ESTADO: TIntegerField
      DisplayLabel = 'Cons. estado'
      FieldName = 'CONS_PROD_ESTADO'
      Origin = 'DATA_BASE_PCP.PCP_PROD_ESTADOS.CONS_PROD_ESTADO'
    end
    object consultaCODI_PROD_ESTADO: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CODI_PROD_ESTADO'
      Origin = 'DATA_BASE_PCP.PCP_PROD_ESTADOS.CODI_PROD_ESTADO'
      Size = 12
    end
    object consultaNOMB_PROD_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'NOMB_PROD_ESTADO'
      Origin = 'DATA_BASE_PCP.PCP_PROD_ESTADOS.NOMB_PROD_ESTADO'
      Size = 60
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_PROD_ESTADOS.FECH_SISTEMA'
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.PCP_PROD_ESTADOS.USUA_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_prod_estado'
    NombreAMostrar = 'estado de la orden de producción'
    CamposDeBusqueda = 'cons_prod_estado'
    TipoGenero = geEl
    TablaMaestra = 'PCP_PROD_ESTADOS'
  end
end

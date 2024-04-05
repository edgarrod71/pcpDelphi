inherited fn1_para_monedas: Tfn1_para_monedas
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          KeyField = 'CONS_MONEDA'
          Filter.Criteria = {00000000}
          object padr_gridCONS_MONEDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            Width = 55
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONS_MONEDA'
          end
          object padr_gridSIMB_MONEDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SIMB_MONEDA'
          end
          object padr_gridNOMB_MONEDA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 178
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOMB_MONEDA'
          end
          object padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'USUA_SISTEMA'
          end
          object padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            Width = 134
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FECH_SISTEMA'
          end
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Tipos de monedas'
      Caption = 'Tipos de monedas'
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
      'from GLO_MONEDAS'
      'Order by cons_moneda')
    object consultaCONS_MONEDA: TIntegerField
      DisplayLabel = 'Cons. moneda'
      FieldName = 'CONS_MONEDA'
      Origin = 'DATA_BASE_PCP.GLO_MONEDAS.CONS_MONEDA'
    end
    object consultaSIMB_MONEDA: TStringField
      DisplayLabel = 'Símbolo'
      FieldName = 'SIMB_MONEDA'
      Origin = 'DATA_BASE_PCP.GLO_MONEDAS.SIMB_MONEDA'
      Size = 12
    end
    object consultaNOMB_MONEDA: TStringField
      DisplayLabel = 'Nombre moneda'
      FieldName = 'NOMB_MONEDA'
      Origin = 'DATA_BASE_PCP.GLO_MONEDAS.NOMB_MONEDA'
      Size = 60
    end
    object consultaUSUA_SISTEMA: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUA_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_MONEDAS.USUA_SISTEMA'
    end
    object consultaFECH_SISTEMA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECH_SISTEMA'
      Origin = 'DATA_BASE_PCP.GLO_MONEDAS.FECH_SISTEMA'
    end
  end
  inherited Variables: TSCLPropiedadesForm
    CampoAMostrar = 'nomb_moneda'
    NombreAMostrar = 'Moneda'
    CamposDeBusqueda = 'cons_moneda'
    TablaMaestra = 'GLO_MONEDAS'
  end
end

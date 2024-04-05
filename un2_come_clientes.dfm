inherited fn2_come_clientes: Tfn2_come_clientes
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Filter.Criteria = {00000000}
          inherited padr_gridCONS_TERCERO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_ORIGEN: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridCODI_TERCERO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridIDEN_TERC_DIGI_VERIFICACION: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridNOMB_TERCERO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridDIRE_TERCERO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridNOMB_CIUDAD: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridNOMB_DEPARTAMENTO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridCONS_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridNOMB_PAIS: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridCORR_ELECTRONICO: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridCODI_POSTAL: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridTELEFONO1: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridTELEFONO2: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridTELEFONO3: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridFAX1: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridFAX2: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridCELULAR: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridFECH_SISTEMA: TdxDBGridDateColumn
            HeaderAlignment = taCenter
          end
          inherited padr_gridUSUA_SISTEMA: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
          end
        end
      end
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
      'SELECT *'
      'FROM vis_glo_terceros'
      'WHERE cons_tercero > 0'
      ' AND cons_tercero  IN '
      '(SELECT pcp_terceros.CONS_TERCERO'
      'FROM pcp_terceros '
      'WHERE pcp_terceros.cons_tipo_tercero =0)'
      'ORDER BY cons_TERCERO')
  end
end

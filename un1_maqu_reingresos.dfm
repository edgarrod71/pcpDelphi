inherited fn1_maqu_reingresos: Tfn1_maqu_reingresos
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Filter.Criteria = {00000000}
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Reingreso de recursos'
      Caption = 'Reingreso de recursos'
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
      'VIS_PCP_MAQU_REINGRESOS'
      'ORDER BY SECU_MOVIMIENTO')
  end
  inherited quer_glo_empresas: TQuery
    Active = True
  end
  inherited quer_glo_areas: TQuery
    Active = True
  end
  inherited quer_glo_plantas: TQuery
    Active = True
  end
  inherited quer_glo_secciones: TQuery
    Active = True
  end
  inherited quer_glo_bodegas: TQuery
    Active = True
  end
end

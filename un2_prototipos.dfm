inherited fn2_prototipos: Tfn2_prototipos
  Tag = -1
  Width = 712
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 704
  end
  inherited padr_shap_xp_down: TShape
    Width = 704
  end
  inherited padr_pane_1: TPanel
    Width = 478
    inherited padr_pagina: TdxPageControl
      Width = 468
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Width = 78
          Filter.Criteria = {00000000}
        end
        inherited padr_dock_arriba: TTBXDock
          Width = 468
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_vinculos: TTBXSubmenuItem
              LinkSubitems = _fMDI.menu_prototipos
            end
          end
        end
        inherited padr_pane_sepa_2: TPanel
          Width = 468
        end
        inherited padr_pane_sepa_1: TPanel
          Width = 468
          inherited padr_beve_sepa: TBevel
            Width = 679
          end
          inherited padr_sepa_new: TShape
            Width = 462
          end
        end
        inherited padr_dock_impresion: TTBXDock
          Left = 273
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    Width = 704
    inherited padr_pane_2: TPanel
      Left = 633
    end
    inherited padr_pane_cerrar: TPanel
      Left = 651
    end
    inherited padr_pane_titulo: TPCPTituloGradiente
      Width = 633
      LabelCaption = 'Prototipos de productos'
      Caption = 'Prototipos de productos'
    end
  end
  inherited padr_page_oculto: TdxPageControl
    Left = 496
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
    Width = 704
  end
  inherited padr_dock_bottom: TTBXDock
    Width = 704
  end
  inherited padr_dock_right: TTBXDock
    Left = 487
  end
  inherited consulta: TQuery
    SQL.Strings = (
      'SELECT *'
      'FROM VIS_GLO_PROTOTIPOS'
      'Where cons_referencia>0'
      'ORDER BY CODI_REFERENCIA')
  end
  inherited Variables: TSCLPropiedadesForm
    NombreAMostrar = 'Prototipo de producto'
  end
  inherited acti_ventana: TActionList
    inherited acti_estados_ir: TAction
      Caption = 'Cambiar estado del prototipo'
    end
  end
end

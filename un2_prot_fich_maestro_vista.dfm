inherited fn2_prot_fich_maestro_vista: Tfn2_prot_fich_maestro_vista
  Left = 51
  Top = 131
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        inherited padr_grid: TSCLDBGrid
          Filter.Criteria = {00000000}
          inherited padr_gridCODI_REFERENCIA: TdxDBGridMaskColumn
            Caption = 'Cód. prototipo'
          end
          inherited padr_gridNOMB_REFERENCIA: TdxDBGridMaskColumn
            Caption = 'Nombre prototipo'
          end
        end
        inherited padr_dock_arriba: TTBXDock
          inherited padr_barra: TTBXToolbar
            inherited padr_boto_vinculos: TTBXSubmenuItem
              LinkSubitems = _fMDI.menu_prototipos
            end
          end
        end
        inherited pane_filtros: TPCPFrame
          inherited padr_labe_referencia: TSCLDBLabel
            Caption = 'Prototipo:'
          end
          inherited pane_fechas: TPanel
            inherited comb_crea_desde: TdxDateEdit
              StoredValues = 4
            end
            inherited comb_crea_hasta: TdxDateEdit
              StoredValues = 4
            end
            inherited comb_modi_desde: TdxDateEdit
              StoredValues = 4
            end
            inherited comb_modi_hasta: TdxDateEdit
              StoredValues = 4
            end
          end
        end
        inherited padr_page_seleccion: TSCLPageControl
          FixedDimension = 17
        end
        inherited pane_imagenes: TPCPFrame
          Top = 256
        end
      end
    end
  end
  inherited padr_titu_ventana: TPanel
    inherited padr_pane_titulo: TPCPTituloGradiente
      LabelCaption = 'Maestro de fichas técnicas (prototipos)'
      Caption = 'Maestro de fichas técnicas (prototipos)'
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
      'FROM VIS_GLO_PROTOTIPOS'
      'Where cons_referencia>0'
      'ORDER BY CODI_REFERENCIA')
  end
end

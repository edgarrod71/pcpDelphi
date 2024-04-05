inherited bPersonal: TbPersonal
  Caption = 'bPersonal'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_1: TPanel
    inherited padr_pagina: TdxPageControl
      inherited fram_pagi_lista: TdxTabSheet
        object pane_trabajando: TPanel [1]
          Left = 205
          Top = 192
          Width = 156
          Height = 281
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 7
        end
        inherited padr_grid: TSCLDBGrid
          Visible = False
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoResetColumnFocus, edgoSmartRefresh, edgoSmartReload, edgoUseBookmarks]
          inherited padr_gridCODI_PERSONAL: TdxDBGridMaskColumn
            Sorted = csNone
          end
        end
        inherited PCPFrame1: TPCPFrame
          Visible = False
          inherited Panel1: TPanel
            inherited fram_filtro: Tffra_maqu_ubicacion
              inherited pane_ubic_otra: TPanel
                inherited edit_ubic_otra_ubicacion: TdxDBEdit
                  StyleController = padr_estilo
                end
              end
            end
            inherited Panel2: TPanel
              inherited edit_fecha: TdxDateEdit
                StoredValues = 4
              end
            end
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
  inherited data_ventana: TDataSource
    DataSet = nil
  end
end

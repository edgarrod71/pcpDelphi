inherited fn2_prototipos1: Tfn2_prototipos1
  Left = 108
  Top = 33
  PixelsPerInch = 96
  TextHeight = 13
  inherited pane_beve_abajo: TPanel
    TabOrder = 3
  end
  inherited padr_pane_sepa_1: TPanel
    TabOrder = 1
  end
  inherited padr_pane_arriba: TPanel
    TabOrder = 0
  end
  inherited pagina: TSCLPageControl
    FixedDimension = 22
    inherited page_dato_basicos: TSCLTabSheet
      inherited ffra_fotografiaDB1: Tffra_fotografiaDB
        inherited fram_pane_atras: TPanel
          inherited fram_fotografia: TEDBImage
            DataSource = data_ventana
          end
          inherited fram_pane_stretch: TPanel
            inherited fram_chec_ajustar: TdxDBCheckEdit
              DataSource = data_ventana
            end
          end
        end
      end
      inherited dxDBCheckEdit1: TdxDBCheckEdit
        Width = 161
      end
    end
    inherited page_asig_colores: TSCLTabSheet
      inherited pane_colo_existentes: TPCPFrame
        inherited grid_colo_existentes: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited Panel2: TPanel
        inherited pane_colo_asignados: TPCPFrame
          inherited grid_colo_asignados: TdxDBGrid
            Filter.Criteria = {00000000}
          end
        end
        inherited fram_depe_colores: Tffra_dependencias
          inherited fram_quer_dependencias: TQuery
            DataSource = data_refe_colores
          end
        end
      end
    end
    inherited page_asig_variaciones: TSCLTabSheet
      inherited PCPFrame2: TPCPFrame
        inherited grid_vari_existentes: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited Panel4: TPanel
        inherited PCPFrame1: TPCPFrame
          inherited grid_vari_asignadas: TdxDBGrid
            Filter.Criteria = {00000000}
          end
        end
        inherited fram_depe_variaciones: Tffra_dependencias
          inherited fram_quer_dependencias: TQuery
            DataSource = data_refe_variaciones
          end
        end
      end
    end
    inherited page_observaciones: TSCLTabSheet
      inherited Panel3: TPanel
        inherited dxDBMemo1: TdxDBMemo
          Height = 366
        end
      end
    end
    inherited page_historial: TSCLTabSheet
      inherited ffra_historialDB1: Tffra_historialDB
        inherited fram_pane: TPanel
          inherited fram_grid_historial: TdxDBGrid
            Filter.Criteria = {00000000}
          end
        end
        inherited data_historial: TDataSource
          DataSet = tabl_refe_historial
        end
      end
    end
  end
  inherited padr_pane_info: TPanel
    TabOrder = 2
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited padr_dock_arriba: TTBXDock
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_vinculos: TTBXSubmenuItem
        LinkSubitems = _fMDI.menu_prototipos
      end
    end
  end
  inherited padr_pane_principal: TPanel
    TabOrder = 4
  end
  inherited pane_info_Estado: TAdvPanel
    FullHeight = 0
  end
end

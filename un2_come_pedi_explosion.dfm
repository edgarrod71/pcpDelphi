inherited fn2_come_pedi_explosion: Tfn2_come_pedi_explosion
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_pane_info: TPanel
    inherited _DBFecha_Creacion: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited padr_fram_filtro: TPCPFrame
    inherited fram_filtros: TScrollBox
      inherited pane_filt_variaciones: TPCPFrame
        inherited grid_variaciones: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited pane_filt_referencias: TPCPFrame
        inherited grid_referencias: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited pane_filt_Clientes: TPCPFrame
        inherited grid_clientes: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited pane_filt_vendedores: TPCPFrame
        inherited grid_vendedores: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited pane_filt_prioridades: TPCPFrame
        inherited grid_prioridades: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
      inherited pane_filt_pedi_pendientes: TPCPFrame
        inherited grid_pedi_pendientes: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
    end
  end
end

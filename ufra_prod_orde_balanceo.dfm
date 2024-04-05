object ffra_prod_orde_balanceo: Tffra_prod_orde_balanceo
  Left = 0
  Top = 0
  Width = 713
  Height = 509
  TabOrder = 0
  inline fram_produccion: Tffra_prod_maestro
    Width = 713
    Height = 51
    Align = alTop
    inherited pane_seleccion: TPanel
      Width = 713
      inherited fram_lote: Tffra_prod_sele_lote
        inherited comb_nume_lote: TPCPLookUpComboEdit
          DataSource = fram_produccion.myData_Ventana
        end
        inherited quer_lotes: TQuery
          DataSource = fram_produccion.data_prod_ordenes
        end
      end
      inherited fram_refe_material: Tffra_refe_material
        inherited fram_comb_codi_material: TPCPLookUpComboEdit
          DataSource = fram_produccion.myData_Ventana
        end
        inherited fram_comb_nomb_material: TPCPLookUpComboEdit
          DataSource = fram_produccion.myData_Ventana
        end
      end
    end
    inherited fram_avance: Tffra_prod_resp_lote_proceso
      Width = 713
      Height = 26
      inherited pane_arriba: TPanel
        Width = 696
      end
      inherited pane_observaciones: TPanel
        Width = 696
        Height = 0
        inherited dxDBMemo1: TdxDBMemo
          Width = 688
          Height = 190
        end
      end
      inherited TBXDock1: TTBXDock
        Width = 696
      end
      inherited pane_seleccion: TPanel
        Width = 696
        inherited fram_lote: Tffra_prod_sele_lote
          Width = 696
        end
      end
    end
  end
end

object ffra_prod_orde_unid_lote: Tffra_prod_orde_unid_lote
  Left = 0
  Top = 0
  Width = 420
  Height = 240
  TabOrder = 0
  inline fram_unidades: Tffra_prod_orde_unidades
    Width = 420
    Height = 240
    Align = alClient
    OnResize = fram_unidadesResize
    inherited fram_dock: TTBXDock
      Width = 420
    end
    inherited grid: TSCLColumnGrid
      Width = 420
      Height = 214
      HideFocusRect = True
    end
    inherited quer_cons_unidades: TQuery
      SQL.Strings = (
        'Select  cons_Refe_color,'
        'nomb_color, nume_color, cons_grup_tall_detalle,talla,'
        ' sum(cant_unidades) as unidades'
        'from vis_pcp_prod_unid_completo'
        'where cons_prod_lote = :cons_prod_lote'
        'and cons_refe_material = :cons_refe_material'
        'and cons_proceso = :cons_proceso'
        'group by  cons_refe_color, nomb_color,'
        'nume_color, cons_grup_tall_detalle, talla')
      ParamData = <
        item
          DataType = ftInteger
          Name = 'cons_prod_lote'
          ParamType = ptInput
        end
        item
          DataType = ftInteger
          Name = 'cons_refe_material'
          ParamType = ptInput
        end
        item
          DataType = ftInteger
          Name = 'cons_proceso'
          ParamType = ptInput
        end>
    end
  end
end

inherited fn2_prot_list_mate_copiar: Tfn2_prot_list_mate_copiar
  ActiveControl = fram_sele_referencia.comb_codi_referencia
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
  inherited fram_sele_referencia: Tffra_sele_refe_variacion
    inherited fram_pane_sele_referencia: TPCPFrame
      Caption = 'Prototipo de orígen'
      inherited fram_pane_referencia: TPanel
        inherited SCLDBLabel1: TSCLDBLabel
          Caption = 'Prototipo:'
          DataSource = data_ventana
        end
        inherited SCLDBLabel3: TSCLDBLabel
          DataSource = data_ventana
        end
        inherited comb_codi_referencia: TPCPLookUpComboEdit
          DataSource = data_ventana
        end
        inherited comb_variacion: TPCPLookUpComboEdit
          DataSource = data_ventana
        end
      end
      inherited fram_pane_informacion: TPCPFrame
        inherited dxDBEdit4: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit6: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit7: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit8: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit5: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit1: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit2: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
        inherited dxDBEdit3: TdxDBEdit
          StyleController = padr_estilo
          StoredValues = 64
        end
      end
    end
    inherited quer_referencias: TQuery
      SQL.Strings = (
        'Select *'
        'from VIS_GLO_PROTOTIPOS'
        'order by codi_referencia')
    end
    inherited quer_refe_variaciones: TQuery
      SQL.Strings = (
        'select cons_refe_variacion, cons_refe_tipo_variacion, '
        'nomb_refe_tipo_variacion'
        'from vis_pcp_prot_variaciones'
        'where cons_referencia = :cons_referencia'
        'order by nomb_refe_tipo_variacion')
    end
  end
  inherited PCPFrame1: TPCPFrame
    Caption = 'Prototipo de destino'
    inherited SCLDBLabel1: TSCLDBLabel
      Caption = 'Prototipo:'
    end
  end
end

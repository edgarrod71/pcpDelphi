inherited fn1_refe_camb_estado1: Tfn1_refe_camb_estado1
  Caption = 'fn1_refe_camb_estado1'
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
  end
  inherited page: TdxPageControl
    inherited dxTabSheet1: TdxTabSheet
      inherited PCPFrame1: TPCPFrame
        inherited comb_codi_referencia: TPCPLookUpComboEdit
          ListSource = fram_lista.data_consulta
        end
        inherited PCPLookUpComboEdit2: TPCPLookUpComboEdit
          ListSource = fram_lista.data_consulta
        end
        inherited dxDBEdit1: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited dxDBEdit4: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited dxDBEdit5: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited dxDBEdit6: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited dxDBEdit7: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited dxDBEdit8: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
      end
      inherited PCPFrame2: TPCPFrame
        inherited dxDBMemo1: TdxDBMemo
          Height = 97
        end
      end
    end
    inherited page_lista: TdxTabSheet
      inherited fram_lista: Tffra_list_referencias
        inherited padr_grid: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
    end
    inherited dxTabSheet3: TdxTabSheet
      inherited dxDBGrid1: TdxDBGrid
        Filter.Criteria = {00000000}
      end
      inherited PCPFrame3: TPCPFrame
        inherited SCLDBLabel6: TSCLDBLabel
          DataSource = fram_lista.data_consulta
        end
        inherited SCLDBLabel7: TSCLDBLabel
          DataSource = fram_lista.data_consulta
        end
        inherited dxDBEdit2: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
        inherited dxDBEdit3: TdxDBEdit
          DataSource = fram_lista.data_consulta
          StoredValues = 64
        end
      end
    end
  end
  inherited quer_historial: TQuery
    DataSource = fram_lista.data_consulta
  end
end

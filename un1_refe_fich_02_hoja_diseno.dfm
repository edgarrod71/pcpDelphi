inherited fn1_refe_fich_02_hoja_diseno1: Tfn1_refe_fich_02_hoja_diseno1
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
  inherited fram_seleccion: Tffra_sele_refe_variacion
    inherited fram_pane_sele_referencia: TPCPFrame
      inherited fram_pane_referencia: TPanel
        inherited SCLDBLabel1: TSCLDBLabel
          DataSource = data_ventana
          SCLPropiedades = Variables
        end
        inherited SCLDBLabel3: TSCLDBLabel
          DataSource = data_ventana
          SCLPropiedades = Variables
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
          StoredValues = 64
        end
        inherited dxDBEdit6: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit7: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit8: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit5: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit1: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit2: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit3: TdxDBEdit
          StoredValues = 64
        end
      end
    end
  end
  inherited padr_page: TSCLPageControl
    FixedDimension = 19
    inherited page_info_Referencia: TSCLTabSheet
      inherited padr_pane_info_referencia: TPanel
        inherited SCLDBLabel1: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit4
          DataSource = fram_seleccion.data_referencias
        end
        inherited SCLDBLabel2: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit5
          DataSource = fram_seleccion.data_referencias
        end
        inherited SCLDBLabel9: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit6
          DataSource = fram_seleccion.data_referencias
        end
        inherited SCLDBLabel4: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit1
          DataSource = fram_seleccion.data_referencias
        end
        inherited SCLDBLabel5: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit2
          DataSource = fram_seleccion.data_referencias
        end
        inherited SCLDBLabel11: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit7
          DataSource = fram_seleccion.data_referencias
        end
        inherited SCLDBLabel6: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit3
          DataSource = fram_seleccion.data_referencias
        end
        inherited SCLDBLabel12: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit8
          DataSource = fram_seleccion.data_referencias
        end
        inherited SCLDBLabel3: TSCLDBLabel
          FocusControl = fram_seleccion.dxDBEdit1
          DataSource = fram_seleccion.data_referencias
        end
        inherited dxDBEdit1: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited dxDBEdit2: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited dxDBEdit6: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited dxDBEdit3: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited dxDBEdit7: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited dxDBEdit8: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited dxDBEdit9: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited dxDBEdit10: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
        inherited dxDBEdit4: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit5: TdxDBEdit
          StoredValues = 64
        end
        inherited dxDBEdit11: TdxDBEdit
          DataSource = fram_seleccion.data_referencias
          StoredValues = 64
        end
      end
      inherited padr_pane_descripcion: TPCPFrame
        inherited dxDBMemo1: TdxDBMemo
          Height = 124
        end
      end
    end
  end
  inherited quer_tallas: TQuery
    DataSource = fram_seleccion.data_referencias
  end
end

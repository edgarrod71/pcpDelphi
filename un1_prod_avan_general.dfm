inherited fn1_prod_avan_general: Tfn1_prod_avan_general
  Left = 104
  Top = 191
  Height = 508
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 480
  end
  inherited padr_pane_sepa_1: TPanel
    Top = 158
  end
  inherited padr_pane_info: TPanel
    Top = 479
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
  inherited pane_beve_abajo: TPanel
    Top = 471
  end
  inherited padr_pane_principal: TPanel
    Top = 165
  end
  inherited padr_fram_informacion: TPCPFrame
    inherited padr_comb_nume_lote: TPCPLookUpComboEdit
      OnChange = doCambiarOrden
    end
    inherited comb_nume_orden: TPCPLookUpComboEdit
      OnChange = doCambiarOrden
    end
    object edit_proc_actual: TdxSpinEdit
      Left = 920
      Top = 40
      Width = 57
      Enabled = False
      TabOrder = 12
      Visible = False
    end
  end
  inline fram_avance: Tffra_prod_resp_lote_proceso [9]
    Top = 167
    Width = 804
    Height = 304
    TabOrder = 7
    Visible = False
    inherited pane_arriba: TPanel
      Width = 804
      inherited SCLDBLabel1: TSCLDBLabel
        FontActive.Name = 'Tahoma'
      end
      inherited SCLDBLabel2: TSCLDBLabel
        FontActive.Name = 'Tahoma'
      end
      inherited SCLDBLabel3: TSCLDBLabel
        FontActive.Name = 'Tahoma'
      end
      inherited SCLDBLabel4: TSCLDBLabel
        FontActive.Name = 'Tahoma'
      end
      inherited SCLDBLabel5: TSCLDBLabel
        FontActive.Name = 'Tahoma'
      end
      inherited edit_avance: TJvTracker
        Width = 388
      end
      inherited pane_finalizacion: TPanel
        inherited SCLDBLabel6: TSCLDBLabel
          FontActive.Name = 'Tahoma'
        end
      end
    end
    inherited pane_observaciones: TPanel
      Width = 804
      Height = 158
      inherited PCPFrame1: TPCPFrame
        Width = 804
        Height = 158
        inherited dxDBMemo1: TdxDBMemo
          Width = 790
          Height = 125
        end
      end
    end
    inherited TBXDock1: TTBXDock
      Width = 804
    end
    inherited pane_seleccion: TPanel
      Width = 804
      inherited fram_lote: Tffra_prod_sele_lote
        Width = 804
        inherited padr_labe_nume_lote: TSCLDBLabel
          FontActive.Name = 'Tahoma'
        end
      end
    end
    inherited data_ventana: TDataSource
      OnStateChange = fram_avancedata_ventanaStateChange
    end
  end
  inline fram_mensaje: Tffra_mens_atencion [10]
    Top = 137
    Width = 804
    Height = 21
    TabOrder = 8
    inherited padr_shap_top: TShape
      Width = 804
    end
    inherited padr_shap_bottom: TShape
      Top = 20
      Width = 804
    end
    inherited padr_shap_right: TShape
      Left = 803
      Height = 19
    end
    inherited padr_shap_left: TShape
      Height = 19
    end
    inherited fram_label: TAdvPanel
      Width = 802
      Height = 19
      Text = '<IMG src="3"> Debe seleccionar una orden de producción y un lote'
      FullHeight = 18
    end
  end
  inherited padr_imag_tem1_colo: TImageList [20]
  end
  inherited padr_quer_consecutivo: TQuery [21]
  end
  inherited padr_pict_container: TPictureContainer [22]
  end
  inherited padr_quer_ordenes: TQuery [23]
  end
  inherited padr_quer_prod_referencias: TQuery [24]
  end
  inherited padr_data_prod_referencias: TDataSource [25]
  end
  inherited data_ventana: TDataSource [26]
  end
end

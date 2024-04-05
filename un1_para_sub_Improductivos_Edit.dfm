inherited fun1_para_sub_Improductivos_Edit: Tfun1_para_sub_Improductivos_Edit
  Left = 243
  Top = 222
  Width = 494
  Caption = 'Subimproductivos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 486
  end
  inherited padr_shap_xp_down: TShape
    Width = 486
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 486
  end
  inherited padr_pane_arriba: TPanel
    Width = 486
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 486
    inherited padr_sepa_new: TShape
      Width = 480
    end
  end
  inherited padr_pane_info: TPanel
    Width = 486
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
    Width = 486
    inherited padr_beve_abajo: TBevel
      Width = 480
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 486
  end
  inherited DBDescripcion: TdxDBMemo
    Height = 81
  end
  inherited dxDBCurrencyEdit1: TdxDBCurrencyEdit
    StoredValues = 1
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited Variables: TSCLPropiedadesForm
    verBotonesNavegacion = False
  end
end

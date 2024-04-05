inherited fn1_prod_proc_paqu_tipos1: Tfn1_prod_proc_paqu_tipos1
  Height = 579
  ActiveControl = nil
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_down: TShape
    Top = 551
  end
  inherited padr_pane_info: TPanel
    Top = 550
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
  inherited Panel1: TPanel
    Height = 227
    inherited SCLDBLabel3: TSCLDBLabel
      Top = 80
    end
    inherited dxDBEdit1: TdxDBEdit
      Enabled = False
      StoredValues = 2
    end
    inherited dxDBEdit2: TdxDBEdit
      Enabled = False
    end
    inherited dxDBMemo1: TdxDBMemo
      Top = 80
      Enabled = False
      Height = 73
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 542
  end
  inherited fram_info_general: TPCPFrame
    Top = 281
    inherited edit_dura_estimada: TdxDBCurrencyEdit
      StoredValues = 1
    end
  end
  inherited fram_plan_detallada: TPCPFrame
    Top = 363
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
    end
  end
end

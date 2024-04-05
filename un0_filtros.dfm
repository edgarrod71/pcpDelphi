inherited fn0_filtros: Tfn0_filtros
  Left = 279
  Top = 267
  VertScrollBar.Range = 0
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Aplicar filtros'
  ClientHeight = 131
  ClientWidth = 313
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 313
  end
  inherited padr_shap_xp_down: TShape
    Top = 122
    Width = 313
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 313
  end
  inherited padr_pane_arriba: TPanel
    Width = 313
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 313
    inherited padr_beve_1: TBevel
      Width = 307
    end
    inherited padr_sepa_new: TShape
      Width = 307
    end
  end
  inherited padr_pane_info: TPanel
    Top = 121
    Width = 313
    inherited _LFecha_Creacion: TSCLDBLabel
      Left = 18
      Top = 72
      Visible = False
    end
    inherited _LUsuario: TSCLDBLabel
      Left = 18
      Top = 94
      Visible = False
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Left = 120
      Top = 72
      Visible = False
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Left = 120
      Top = 94
      Visible = False
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 123
    Width = 313
    inherited padr_beve_abajo: TBevel
      Width = 307
    end
  end
  inline ffra_sele_rang_fechas: Tffra_sele_rang_fechas [7]
    Top = 52
    Width = 313
    Align = alTop
    TabOrder = 6
  end
  inherited padr_pane_principal: TPanel [8]
    Top = 93
    Width = 313
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_imprimir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_ayuda: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_salir: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Enabled = True
    end
    inherited padr_acti_aceptar: TAction
      Visible = True
    end
    inherited padr_acti_duplicar: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_elim_todos: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_guar_cerrar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_actualizar: TDataSetRefresh
      Enabled = False
      Visible = False
    end
  end
  inherited padr_imag_tem1_colo: TImageList [16]
  end
  inherited imag_pequenas: TImageList [17]
  end
  inherited padr_esti_panel: TAdvPanelStyler [18]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [20]
  end
end

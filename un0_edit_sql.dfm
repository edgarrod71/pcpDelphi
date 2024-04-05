inherited fn0_edit_sql: Tfn0_edit_sql
  Left = -4
  Top = -4
  Width = 812
  Height = 612
  Caption = 'Diseño de la consulta (SQL)'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 804
  end
  inherited padr_shap_xp_down: TShape
    Top = 576
    Width = 804
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 804
    inherited padr_barra: TTBXToolbar
      inherited padr_boto_cancelar: TTBXItem
        Action = acti_padr_cancelar_2
      end
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 804
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 804
    inherited padr_sepa_new: TShape
      Width = 798
    end
  end
  inherited padr_pane_info: TPanel
    Top = 575
    Width = 804
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
    Top = 577
    Width = 804
    inherited padr_beve_abajo: TBevel
      Width = 798
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 804
  end
  inline fram_edit_SQL: Tffra_edit_sql [8]
    Top = 54
    Width = 804
    Height = 521
    Align = alClient
    TabOrder = 6
    inherited TBXDock1: TTBXDock
      Width = 804
    end
    inherited MemoSQL: TJvWideHLEditor
      Width = 804
      Height = 495
    end
  end
  inherited padr_acciones: TActionList [9]
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
    inherited acti_padr_cancelar_2: TAction
      OnExecute = acti_padr_cancelar_2Execute
    end
    inherited padr_acti_nuevo: TDataSetInsert
      Enabled = False
      Visible = False
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
    inherited padr_acti_expo_xls: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_HTML: TAction
      Enabled = False
      Visible = False
    end
    inherited padr_acti_expo_arch_sepa_comas: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited Imagenes_Botones_Pequenos: TImageList [10]
  end
  inherited Variables: TSCLPropiedadesForm [11]
  end
  inherited Tabla_Ventana: TTable [12]
  end
  inherited padr_estilo: TdxEditStyleController [13]
  end
  inherited padr_estilo_chec: TdxCheckEditStyleController [14]
  end
  inherited padr_esti_panel: TAdvPanelStyler [15]
  end
  inherited padr_esti_sugerencias: TAdvPanelStyler [16]
  end
  inherited imag_pequenas: TImageList [17]
  end
  inherited padr_imag_tem1_colo: TImageList [18]
  end
  inherited data_ventana: TDataSource [20]
    DataSet = nil
  end
end

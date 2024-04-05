inherited fn1_prod_orde_traz_total: Tfn1_prod_orde_traz_total
  Left = 247
  Top = 200
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Totales del lote'
  ClientHeight = 286
  ClientWidth = 463
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 463
  end
  inherited padr_shap_xp_down: TShape
    Top = 284
    Width = 463
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 463
  end
  inherited padr_pane_arriba: TPanel
    Width = 463
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 463
    inherited padr_beve_1: TBevel
      Width = 457
    end
    inherited padr_sepa_new: TShape
      Width = 457
    end
  end
  inherited padr_pane_info: TPanel
    Top = 285
    Width = 463
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
  object Panel1: TPanel [6]
    Left = 0
    Top = 54
    Width = 463
    Height = 222
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 6
    inline fram_unid_lote: Tffra_prod_orde_unid_lote
      Left = 4
      Top = 4
      Width = 455
      Height = 214
      Align = alClient
      inherited fram_unidades: Tffra_prod_orde_unidades
        Width = 455
        Height = 214
        inherited fram_dock: TTBXDock
          Width = 455
        end
        inherited grid: TSCLColumnGrid
          Width = 455
          Height = 188
        end
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 276
    Width = 463
    inherited padr_beve_abajo: TBevel
      Width = 457
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 463
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited padr_acciones: TActionList
    inherited padr_acti_buscar: TAction
      Enabled = False
    end
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Visible = False
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
    end
    inherited acti_padr_cancelar_2: TAction
      Enabled = False
      Visible = False
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
  end
end

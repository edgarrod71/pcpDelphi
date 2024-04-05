inherited fn0_video: Tfn0_video
  Left = 540
  Top = 194
  Width = 437
  Height = 474
  BorderStyle = bsSizeToolWin
  Caption = 'Video'
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 429
  end
  inherited padr_shap_xp_down: TShape
    Top = 438
    Width = 429
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 429
    Visible = False
    inherited padr_barra: TTBXToolbar
      Visible = False
    end
  end
  inherited padr_pane_arriba: TPanel
    Width = 429
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 429
    inherited padr_sepa_new: TShape
      Width = 423
    end
  end
  inherited padr_pane_info: TPanel
    Top = 437
    Width = 429
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
    Top = 439
    Width = 429
    inherited padr_beve_abajo: TBevel
      Width = 423
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 429
  end
  object PCPFrame1: TPCPFrame [8]
    Tag = 392
    Left = 0
    Top = 54
    Width = 429
    Height = 383
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Constraints.MinHeight = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Titulo_Color = 16244694
    TipoFrame = tfNinguno
    BorderWidthIn = 4
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
end

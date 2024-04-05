inherited fDecisionCube: TfDecisionCube
  Left = -70
  Top = 180
  BorderWidth = 2
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 553
  end
  inherited padr_shap_xp_down: TShape
    Top = 199
    Width = 553
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 553
  end
  inherited padr_pane_arriba: TPanel
    Width = 553
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 553
    inherited padr_beve_1: TBevel
      Width = 605
    end
    inherited padr_sepa_new: TShape
      Width = 547
    end
  end
  inherited padr_pane_info: TPanel
    Top = 198
    Width = 553
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
  object padr_pane_grid: TPCPFrame [6]
    Tag = 157
    Left = 0
    Top = 81
    Width = 553
    Height = 109
    Align = alClient
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
    FlatBorder = True
  end
  object padr_pane_pivote: TPanel [7]
    Left = 0
    Top = 54
    Width = 553
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 7
    object padr_sepa_pivote: TBevel
      Left = 82
      Top = 1
      Width = 2
      Height = 25
      Align = alLeft
    end
    object padr_pane_totales: TPanel
      Left = 1
      Top = 1
      Width = 81
      Height = 25
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      object padr_chec_totales: TdxCheckEdit
        Left = 0
        Top = 3
        Width = 79
        TabOrder = 0
        TabStop = False
        Caption = 'Ver &totales'
        StyleController = padr_estilo_chec
        OnChange = padr_chec_totalesChange
      end
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 190
    Width = 553
    inherited padr_beve_abajo: TBevel
      Width = 547
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 553
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
  end
  object Consulta: TQuery
    DatabaseName = 'data_base_pcp'
    Left = 276
    Top = 83
  end
end

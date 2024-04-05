inherited fn0_anotacion: Tfn0_anotacion
  Left = 244
  Top = 183
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  ClientHeight = 266
  ClientWidth = 385
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 385
  end
  inherited padr_shap_xp_down: TShape
    Top = 265
    Width = 385
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 385
  end
  inherited padr_pane_arriba: TPanel
    Width = 385
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 385
    inherited padr_beve_1: TBevel
      Width = 289
    end
    inherited padr_sepa_new: TShape
      Width = 379
    end
  end
  object edit_usua_creacion: TdxEdit [5]
    Left = 296
    Top = 56
    Width = 121
    Enabled = False
    TabOrder = 6
    Visible = False
    StyleController = padr_estilo
  end
  object edit_fech_creacion: TdxDateEdit [6]
    Left = 12
    Top = 55
    Width = 169
    Enabled = False
    Style.ButtonStyle = btsDefault
    Style.ButtonTransparence = ebtHideInactive
    TabOrder = 8
    Visible = False
    StyleController = padr_estilo
    Date = -700000
    SaveTime = False
  end
  object Panel1: TPanel [7]
    Left = 0
    Top = 54
    Width = 385
    Height = 202
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 7
    object AdvPanel1: TPCPFrame
      Tag = 179
      Left = 0
      Top = 0
      Width = 385
      Height = 202
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 3
      Constraints.MinHeight = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Caption = 'Texto de la anotación'
      Titulo_Color = 16244694
      Boton_Visible = False
      BorderWidthIn = 4
      object memo_anotacion: TdxDBMemo
        Left = 7
        Top = 26
        Width = 371
        Align = alClient
        TabOrder = 0
        DataSource = data_ventana
        StyleController = padr_estilo
        Height = 169
      end
    end
  end
  inherited padr_pane_info: TPanel
    Top = 264
    Width = 385
    inherited _LFecha_Creacion: TSCLDBLabel
      Left = 24
      Top = 60
      Width = 42
      FocusControl = edit_fech_creacion
      Caption = 'Fecha:'
    end
    inherited _LUsuario: TSCLDBLabel
      Left = 248
      Top = 60
      Visible = False
    end
    inherited _DBFecha_Creacion: TdxDBEdit
      Left = 60
      Top = 60
      Visible = False
      Height = 18
      StoredValues = 64
    end
    inherited _DBUsuario: TdxDBEdit
      Left = 350
      Top = 60
      Visible = False
      Height = 18
      StoredValues = 64
    end
    inherited PCPProceso1: TPCPProceso
      PopupMenu = PCPProceso1.pop_proceso
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 256
    Width = 385
    inherited padr_beve_abajo: TBevel
      Width = 379
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 385
  end
  inherited data_ventana: TDataSource
    DataSet = nil
  end
  inherited padr_acciones: TActionList
    Top = 20
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
    inherited padr_acti_guardar: TDataSetPost
      Enabled = True
    end
    inherited padr_acti_cancelar: TDataSetCancel
      Enabled = True
    end
    inherited padr_acti_aceptar: TAction
      Enabled = False
    end
    inherited acti_padr_cancelar_2: TAction
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

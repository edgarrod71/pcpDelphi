inherited fn2_come_zonas_detalle: Tfn2_come_zonas_detalle
  Left = 171
  Top = 185
  VertScrollBar.Range = 0
  ActiveControl = dxDBEdit1
  BorderStyle = bsDialog
  Caption = 'Subzonas comerciales'
  ClientHeight = 133
  ClientWidth = 384
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 384
  end
  inherited padr_shap_xp_down: TShape
    Top = 132
    Width = 384
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 384
  end
  inherited padr_pane_arriba: TPanel
    Width = 384
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 384
    inherited padr_beve_1: TBevel
      Width = 378
    end
    inherited padr_sepa_new: TShape
      Width = 378
    end
  end
  inherited padr_pane_info: TPanel
    Top = 131
    Width = 384
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
    Width = 384
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 10
      Top = 8
      Width = 100
      Height = 21
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Código:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'CODI_COME_ZONA_DETALLE'
      Field = 'CODI_COME_ZONA_DETALLE'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 10
      Top = 28
      Width = 100
      Height = 21
      Alive = False
      ColorActive = clBtnFace
      FontActive.Charset = DEFAULT_CHARSET
      FontActive.Color = clWindowText
      FontActive.Height = -11
      FontActive.Name = 'Tahoma'
      FontActive.Style = []
      FocusOffset = 2
      Position = wlpLeft
      FocusControl = dxDBEdit2
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Nombre subzona:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_COME_ZONA_DETALLE'
      Field = 'NOMB_COME_ZONA_DETALLE'
    end
    object dxDBEdit1: TdxDBEdit
      Left = 112
      Top = 8
      Width = 130
      TabOrder = 0
      CharCase = ecUpperCase
      DataField = 'CODI_COME_ZONA_DETALLE'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBEdit2: TdxDBEdit
      Left = 112
      Top = 28
      Width = 260
      TabOrder = 1
      DataField = 'NOMB_COME_ZONA_DETALLE'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
  end
  inherited pane_beve_abajo: TPanel
    Top = 123
    Width = 384
    inherited padr_beve_abajo: TBevel
      Width = 378
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 384
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
    inherited padr_acti_guardar: TDataSetPost
      Visible = False
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
      Enabled = True
    end
  end
end

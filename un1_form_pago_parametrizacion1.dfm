inherited fn1_form_pago_parametrizacion1: Tfn1_form_pago_parametrizacion1
  Left = 388
  Top = 234
  Width = 401
  Height = 158
  BorderIcons = [biSystemMenu]
  Caption = 'Valores hora producción definidos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited padr_shap_xp_up: TShape
    Width = 393
  end
  inherited padr_shap_xp_down: TShape
    Top = 122
    Width = 393
  end
  inherited padr_dock_arriba: TTBXDock
    Width = 393
  end
  inherited padr_pane_arriba: TPanel
    Width = 393
  end
  inherited padr_pane_sepa_1: TPanel
    Width = 393
    inherited padr_sepa_new: TShape
      Width = 387
    end
  end
  inherited padr_pane_info: TPanel
    Top = 121
    Width = 393
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
    Top = 123
    Width = 393
    inherited padr_beve_abajo: TBevel
      Width = 387
    end
  end
  inherited padr_pane_principal: TPanel
    Width = 393
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 54
    Width = 393
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object SCLDBLabel1: TSCLDBLabel
      Left = 8
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
      Caption = 'Nombre valor hora:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'NOMB_FORM_PAGO_VALO_HORA'
      Field = 'NOMB_FORM_PAGO_VALO_HORA'
    end
    object SCLDBLabel2: TSCLDBLabel
      Left = 8
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
      FocusControl = dxDBCurrencyEdit1
      Alignment = taRightJustify
      WordWrap = False
      Bevel = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Light = lpLeftTop
      Caption = 'Valor:'
      Transparent = True
      DataSource = data_ventana
      SCLPropiedades = Variables
      ColorRequerido = 12615680
      ColorNoRequerido = clWindowText
      DataField = 'VALO_HORA_PRODUCCION'
      Field = 'VALO_HORA_PRODUCCION'
    end
    object DBText1: TDBText
      Left = 205
      Top = 32
      Width = 65
      Height = 17
      DataField = 'SIMB_MONEDA'
      DataSource = _fMDI.data_configuracion
    end
    object dxDBEdit1: TdxDBEdit
      Left = 110
      Top = 8
      Width = 273
      TabOrder = 0
      DataField = 'NOMB_FORM_PAGO_VALO_HORA'
      DataSource = data_ventana
      StyleController = padr_estilo
    end
    object dxDBCurrencyEdit1: TdxDBCurrencyEdit
      Left = 110
      Top = 28
      Width = 91
      TabOrder = 1
      Alignment = taRightJustify
      DataField = 'VALO_HORA_PRODUCCION'
      DataSource = data_ventana
      StyleController = padr_estilo
      DecimalPlaces = 3
      DisplayFormat = '$ ,0.000;-$ ,0.000'
      Nullable = False
      StoredValues = 1
    end
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
    inherited padr_acti_Data_primero: TDataSetFirst
      Enabled = False
      Visible = False
    end
    inherited padr_acti_Data_anterior: TDataSetPrior
      Enabled = False
      Visible = False
    end
    inherited padr_acti_Data_siguiente: TDataSetNext
      Enabled = False
      Visible = False
    end
    inherited padr_acti_Data_ultimo: TDataSetLast
      Enabled = False
      Visible = False
    end
    inherited padr_acti_busc_lista: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited Tabla_Ventana: TTable
    TableName = 'PCP_FORM_PAGO_VALO_HORA'
  end
end
